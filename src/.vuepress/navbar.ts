import { navbar } from "vuepress-theme-hope";

export default navbar([
  "/",
  "/about",
  { text: "Blog", icon: "edit", link: "/posts/" },
  { text: "PCE", icon: "stack", link: "/public-celtic-encyclopedia/" },
  {
    text: "Project Docs",
    icon: "read",
    link: "/docs/",
  },
]);
