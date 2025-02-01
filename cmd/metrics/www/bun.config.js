await Bun.build({
  entrypoints: ["src/app.ts"],
  outdir: "../assets",
  target: "browser",
  minify: true,
});

await Bun.build({
  entrypoints: ["src/styles/app.css"],
  external: ["*.ttf", "*.svg"],
  outdir: "../assets",
  minify: true,
  experimentalCss: true,
});
