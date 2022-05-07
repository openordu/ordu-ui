import { navbar } from "vuepress-theme-hope";

export default navbar([
  "/",
  "/about",
  // { text: "Guides", icon: "creative", link: "/guides/" },
  { text: "Blog", icon: "edit", link: "/posts/" },
  {
    text: "Project Docs",
    icon: "note",
    link: "/docs/",
  },
]);
