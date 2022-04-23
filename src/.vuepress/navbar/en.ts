import { defineNavbarConfig } from "vuepress-theme-hope";

export const en = defineNavbarConfig([
  "/",
  "/home",
  { text: "Guides", icon: "creative", link: "/guides/" },
  {
    text: "Posts",
    icon: "edit",
    prefix: "/posts/",
  },
  {
    text: "Theme Docs",
    icon: "note",
    link: "https://vuepress-theme-hope.github.io/v2/",
  },
]);
