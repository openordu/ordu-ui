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

I have been having issues with volume. It was taking 11 hours to build the static site using `nodejs` with the PCE files added. I was trying to make the sidebar contain all the pce elements thinking that'd make one tree for the app to traverse. Instead of that, what happens is the sidebar object is regenerated per page so when I told it to have 3000 elements on 3000 pages it took 11 hours. It was fixed by switching to alphabetical indexes in the sidebar instead of every item. The build went down to 30 minutes, went down by 10.5 hours.

I was able to run `yarn docs:dev` or `vuepress dev src` just fine and load pages, so the problem wasn't obvious until deployment. I switched to vuepress2 a la vuepress-theme-hope2 because during previous builds webpack used more memory than I have, while the new version uses vite to render pages letting go of memory as it goes. Woops. The browser tools tabs `performance`, `networking`, and `lighthouse` perform better now and within tolerable limits.