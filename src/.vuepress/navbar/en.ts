import { defineNavbarConfig } from "vuepress-theme-hope";

export const en = defineNavbarConfig([
  "/",
  "/about.md",
  { text: "Guide", icon: "creative", link: "/guide/" },
  { text: "Posts", icon: "edit", link: "/blog.md" },
  {
    text: "Theme Docs",
    icon: "note",
    link: "https://vuepress-theme-hope.github.io/v2/",
  },
]);
