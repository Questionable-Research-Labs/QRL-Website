---
title: Fast Sites
author: Questionable Research Labs
date: July 31, 2018
color: "#ffeb3b"
image: "/img/project-03o2.jpg"
order: 3
layout: default
description: The making of this site, and how it uses Jekyll to deliver blazing fast loading speeds.
---

When designing the new homepage for Questionable Research Labs (QRL), we wanted to try and create a place for the ideas behind us to shine through. Built using Jekyll, this site runs on Github Pages and makes full use of modern browser performance.

![Homepage mockup](/img/project-03bo2.jpg)

## Github Pages + Jekyll

**30%** of the internet these days runs on the popular content management system Wordpress - with good reason. Wordpress is easy to use, has good support, and has extensive libraries of ready-to-use plugins and themes. However, with the new QRL site, we decided to make use of Jekyll. Instead of using PHP to generate the various site pages when someone visits them dynamically, Jekyll runs ahead of time and creates a static site. This has the advantage of decreasing server load as well as the time for users to begin loading pages.

The second advantage is that it means we have much higher control over the final output. With Wordpress, it is not uncommon for sites to be bogged down but dozens of stylesheets and scripts that don't do that much to make the site "nicer". This is because each addon and theme runs independently to both each other and the user content, leading to the possibility for redundancy. With Jekyll, site templates are made from scratch (or modified from simple existing templates) to match exactly the desired output.

## JavaScript & Jquery

While 30% of websites on the internet use Wordpress, almost every single site uses JavaScript - and with good reason. JavaScript enables highly dynamic and exciting web pages and is the only language supported by most web browsers (Excluding WebAssembly)

However, JavaScript can be both a blessing and a curse. Making animations or mouse-based interactions using it can be highly resource-intensive. So, like many other websites aiming for high performance, QRL uses no JavaScript.

Kind of.


In actuality, this site uses Javascript for three key things:

 1: Google Analytics
 2: Internet Explorer Compatibility
 3: look-ahead caching

While we did our best to become IE compatible, we included an if statement that runs a script if you use Internet Explorer. We also added another script that automatically gets the next page when you're about to click on it.

## Animations & Images
As viewers on Chrome and Firefox (perhaps others) will notice, many of the homepage elements feature a random gradient & changing colours effect. Initially, a concept for this was mocked up in Photoshop with the idea to pan around it using CSS:

![Initial gradient effect](/img/gradient-random.jpg)

This looked cool, but wasn't quite as 'random' as we were hoping to achieve. So, using After Effects and some compression a gif version was made:

![Gif gradient effect](/img/gradient-random.gif)

Zoomed in and added to the homepage, this also looked good. However, Gifs feature a number of weaknesses, one of the key being that they have a restricted colour palette. You can see that above with the sharp bands across the gif. Another weakness of this method is that gifs are terrible at compression when there are limited or no static parts, or when the colours are constantly changing. Because both are happening above, the only way to get it down to a small(ish) file size was to shrink it down to 128x72. Even then, it was still one of the largest images on the homepage at 282KB.

Finally, each frame of the [video](https://streamable.com/mqcs9) was exported as PNGs and batch compiled using a 7,542 character console command (thanks webpmux) into a single animated WebP. This final output still had a variety of compression artefacts, but was "good enough" at 135kb@320x180:

![Final gradient effect](/img/gradient-random.webp)

The rest of the images on the homepage were then scaled down and converted to greyscale JPGs. The background (also greyscale) was one of the hardest to optimize, as it has a very high detail. This means that any signifigant resizing or JPG compression ruined the look. We eventually settled for a somewhat compressed WebP at 276KB