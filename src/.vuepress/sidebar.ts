import { sidebar } from "vuepress-theme-hope";

export default sidebar([
  "/",
  "/about",
  // "/posts/": "structure",
  // "/guides/": "structure",
  {
    icon: "creative",
    text: "Guide",
    prefix: "/docs/",
    link: "/docs/",
    children: "structure",
  },
  // "/public-celtic-encyclopedia/": "structure",
]);