import { sidebar } from "vuepress-theme-hope";

export default sidebar([
  "/",
  "/about",
  // "/posts/": "structure",
  // "/guides/": "structure",
  {
    icon: "creative",
    text: "Docs",
    prefix: "/docs/",
    link: "/docs/",
    children: "structure",
  },
  // "/public-celtic-encyclopedia/": "structure",
]);