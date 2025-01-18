package main

import (
	"archive/zip"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
)

// createDummyPkg creates a dummy deployment .zip package to supply to the initial creation of the AWS Lambda function.
// Lambdas cannot be created without code to run but our infrastructure and deploy steps are separate.
func createDummyPkg() (string, error) {
	packagePath := "soikke.li/moreplease/ops/infra/data/lambda_dummy"
	binaryName := "bootstrap"

	cmd := exec.Command("env", "GOOS=linux", "GOARCH=arm64", "go", "build", "-o", binaryName, packagePath)
	if err := cmd.Run(); err != nil {
		fmt.Printf("Failed to build binary: %v\n", err)
		return "", err
	}

	outputZip := "lambda_dummy.zip"
	zipFile, err := os.Create(outputZip)
	if err != nil {
		fmt.Printf("Failed to create zip file: %v\n", err)
		return "", err
	}
	defer zipFile.Close()

	zipWriter := zip.NewWriter(zipFile)
	defer zipWriter.Close()

	binary, err := os.Open(binaryName)
	if err != nil {
		fmt.Printf("Failed to open binary: %v\n", err)
		return "", err
	}
	defer binary.Close()

	binaryInfo, err := binary.Stat()
	if err != nil {
		fmt.Printf("Failed to get binary file info: %v\n", err)
		return "", err
	}

	header, err := zip.FileInfoHeader(binaryInfo)
	if err != nil {
		fmt.Printf("Failed to create zip header: %v\n", err)
		return "", err
	}
	header.Name = binaryName
	header.Method = zip.Deflate

	writer, err := zipWriter.CreateHeader(header)
	if err != nil {
		fmt.Printf("Failed to create zip file entry: %v\n", err)
		return "", err
	}

	if _, err := io.Copy(writer, binary); err != nil {
		fmt.Printf("Failed to write binary to zip: %v\n", err)
		return "", err
	}

	if err := os.Remove(binaryName); err != nil {
		fmt.Printf("Failed to remove original binary: %v\n", err)
		return "", err
	}

	absPath, err := filepath.Abs(outputZip)
	if err != nil {
		fmt.Printf("Failed to get absolute path: %v\n", err)
		return "", err
	}

	return absPath, nil
}
