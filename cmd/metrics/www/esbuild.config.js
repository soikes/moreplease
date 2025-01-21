require("esbuild").build({
  entryPoints: ["./src/app.ts"],
  external: ["fs", "path"],
  outfile: "../assets/app.min.js",
  bundle: true,
  minify: true,
  platform: "browser",
  sourcemap: false,
});
