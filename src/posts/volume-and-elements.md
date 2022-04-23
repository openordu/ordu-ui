---
author: Chris Godwin
category: Interface
title: Site url volume and static site generators
tag: architecture
time: 2022-04-23
copyright:
  minLength: 1
---
# Ignored
## Troubles

I can run `yarn docs:dev` or `vuepress dev src` just fine, except when I add 3000 or so pages from topics. Webpack uses more memory than I have. Especially when I put all 3000 of those pages as links in a collapsible sidebar. Woops. I reduced my woes by switching to vuepress 2, vuepress-theme-hope2, and only having the volume titles(e.g. A, B, C, etc) in the sidebar. The browser tools performance, networking, and lighthouse tabs perform better now and within tolerable limits.