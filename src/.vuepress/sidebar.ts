import { sidebar } from "vuepress-theme-hope";

export default sidebar([
  "/",
  "/about",
  // {
  //   icon: "creative",
  //   text: "Guides",
  //   prefix: "/guides/",
  //   link: "/guides/",
  //   children: "structure",
  // },
  {
    icon: "read",
    text: "Docs",
    prefix: "/docs/",
    link: "/docs/",
    children: "structure",
  },
  // "/public-celtic-encyclopedia/": "structure",
]);