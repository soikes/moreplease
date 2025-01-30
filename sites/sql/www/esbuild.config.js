const esbuild = require("esbuild");

esbuild.build({
  entryPoints: ["./src/styles/app.css"],
  external: ["*.ttf", "*.svg"],
  outfile: "../assets/app.css",
  bundle: true,
  minify: true,
  platform: "browser",
  loader: {
    ".css": "css",
  },
});

esbuild.build({
  entryPoints: ["./src/app.ts"],
  external: ["fs", "path"],
  outfile: "../assets/app.js",
  bundle: true,
  minify: true,
  platform: "browser",
  sourcemap: false,
});
