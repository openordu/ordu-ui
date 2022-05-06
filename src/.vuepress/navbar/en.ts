import { defineNavbarConfig } from "vuepress-theme-hope";

export const en = defineNavbarConfig([
  "/",
  "/about.md",
  // { text: "Guides", icon: "creative", link: "/guides/" },
  { text: "Blog", icon: "edit", link: "/posts/" },
  {
    text: "Project Docs",
    icon: "note",
    link: "/docs/",
  },
]);
