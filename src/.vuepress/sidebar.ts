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
  {
    icon: "stack",
    text: "PCE",
    prefix: "/public-celtic-encyclopedia/",
    link: "/public-celtic-encyclopedia/",
    children: "structure",
  },
]);