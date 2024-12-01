require("esbuild").build({
  entryPoints: ["./src/app.ts"],
  external: ["fs", "path"],
  outfile: "../assets/app.js",
  bundle: true,
  minify: true,
  platform: "browser",
  sourcemap: true,
});
