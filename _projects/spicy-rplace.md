---
date: "2022-05-17"
color: "#fd3d00"
title: "spicy r/place"
description: "Why manually place tiles, when you can automate it?"
author: nathan
involved: [jasper, nathan, taine] 
thumbnail: "/project-assets/spicy-rplace/thumbnail_o.png"
layout: default
type: project
---

This year, on April Fools, reddit unleashed r/place 2 (electric boogaloo). This presented an opportunity for us at QRL to step in and have a crack at printing our mark
on the canvas.

# What is r/place
For those of you have no clue what a r/place or even a reddit is, let me fill in the details. [Reddit](https://reddit.com) is a social networking site, and much like all other social networkings sites, is a complete cesspool. r/place was a *social experiment* devised by the Reddit, in which each user on the platform could place a single tile every five minutes on a canvas, like a Million Dollar Homepage rip-off.
The first iteration took place on April fools 2017, and then, for some unknown reason, Reddit decided to resurrect this mess of an experiment in 2022, but now on a *much larger* scale.

In this madness, we saw an opportunity for **botting**.

# The stack
Our project had three main parts:
 - loader/processor for downloading and scaling images into their pixel-art forms
 - pallet matcher to align colors in a image to the possible tile colors in reddit's
 - web scrapper that used Selenium to automatically login and place pixels
 
The language that we decided to use to construct our *incredible* code was, of course, rust, the *best* systems programming language to grace the open source community. 

This is a bit of a favourite language for us... we aren't biased for new things at all. Shut.

After a bit of midnight hacking, we got it going and placing pixels on our dev machine.

There is a couple problems here:
 - everything is still connected to our IP's
 - it had to run on a system with a *GUI*, and servers disagree with those.
 - didn't include nearly enough hype words

# Infinite Scale
Obviously, having only a couple bots running on each of our dev machines was *highly inefficient*, and we don't like inefficiencies (unless it involves our programming choices). 

To solve this problem and make our plane *truly* scalable, we came up with a completely 100% defiantly done anywhere else, original solution, chuck it in a docker container.

Now I know what your thinking, chucking it into a docker container isn't original at all, however that's where you wrong, we chucked it into a docker container, and used a browser with built in *tor*. 

I know, *truly groundbreaking*.

The browser we decided to go with is called brave browser, and has integrated incognito tor windows, it also has the added ~~downside~~ benefit of being *gamer* browser, for extra jank.

Why did we do this you ask. 

Well, it creates/solves several problems:
- We can play with the -headless flags, allowing us to ignore the GUI requirement, just like we ignore air-resistance in physics
- It gives each bot a unique IP so we don't look *sus*, increases the bots to pc ratios
- It gives us a reason to add extra hype-words like *deep web*, *tor*, *onion routing*, *docker*, *containerisation*, and *distributed systems*. Incredible.
- It also involves a lot more headaches with trying to configure the containers, lucky we solved this by instead of reading a json file, when just read a json string from an environment variable instead. We learnt that trick from our good old friend, *caffeine*.
- We made one of our dev server's hate us

![Server dying - it was doing its best](/project-assets/spicy-rplace/server-dying_o.png)

All in all, when it was containerised, it was even *almost* stable.

![Bots crashing left and right](/project-assets/spicy-rplace/bots-failing_o.png)

# Ethics
Now, the r/place experiment is designed around communities coming together to form something great, and arguably botting overrides those communities, diluting the power that real users have in the event.

That is why, from the beginning, we decided to never distribute or deploy any significant bot networks. It was more of fun challenge to make this scaleable bot platform, so we didn't intend to ruin that fun for others. That is why throughout the event, we where using personal accounts to place pixels while we developed the bots, and why we didn't expand past 25 active bot accounts. This way, even though we were using bots, we weren't restricting peoples ability to create genuine art pieces, while still leaving our mark in QRL's usual nerdy fashion.