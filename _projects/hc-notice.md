---
date: "2021-04-22"
color: "#8eb2f5"
title: "HC Notice"
description: "Unofficial Huanui College daily notices reader, because your eyes matter."
author: "<a target='_none' href='https://jmw.nz'>Jasper M-W</a>"
thumbnail: "project-assets/hc-notices/thumbnail_o.jpg"
layout: default
type: project
---

### Unofficial Huanui College daily notices reader, because your eyes matter.

<br/>

#### [Github: https://github.com/Fallstop/HCNoticeReader](https://github.com/Fallstop/HCNoticeReader)

#### [Website: https://hcnotices.jmw.nz/](https://hcnotices.jmw.nz/)

<br/>

## Framework

This static "webapp" is built in [Svelte](https://svelte.dev/), and leans of my previous [HC Api Gateway](/projects/hc-tools). This is my first time using Svelte, and it has been great, like most of my other sites, it exports directly to static to be hosted on Cloudflare's CDN for free.

## Why
My school, Huanui College has a really bad habit of putting everything into google calendars. Which means that every student needs to read the notices everyday in an experience roughly resembling this:
![Tiny Box with a lot of text inside](/project-assets/hc-notices/CalenderScreenshot_o.png)

When it could be this:

![New Design](/project-assets/hc-notices/HCNoticesScreenshot_o.png)

The other inspiration of this site is that I wanted to learn Svelte, and this was exactly the *tool for the job*

## Design

The design was focused on maximizing comfortable reading on all devices, environments and preferences. This meant focusing on a simple layout that could respond well to mobile users. This is also my first time experimenting with Neumorphism I also added a toggleable dark mode, which defaulted to the users device settings.