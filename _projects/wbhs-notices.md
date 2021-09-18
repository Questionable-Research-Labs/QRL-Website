---
date: "2021-01-28"
color: "#c7bdde"
title: WBHS Notices
description: "Displaying the school notices digital at my school, with an automatic refresh and less paper waste"
thumbnail: "project-assets/wbhs-notices/thumbnail_o.png"
layout: default
type: project
author: "<a target='_blank' href='https://laspruca.nz'>Nathan Hare</a>"

---
[Github Repo](https://github.com/laspruca/wbhs_notices)

# Why

A while ago, one of my teachers suggested that I make a way of displaying the school notices around school, without
having to print the out all the time. He had been printing out the notices and sticking them on his door daily, this
lead to lots of paper. Not only would having a way of showing the notices digital be more convenient, but it would also
be more resourceful, creating less waste.

# Development

My first attempt at making the project was, well, something, to say the least. My web design skill left a lot to be
desired and because of some of the requirements with the schools' portal api, I could not make the application with my
programming experience at the time. This lead to the project being left in limbo for a fairly long time.

## The Problems

The biggest problem for me was that schools API does not allow all User-Agents, it only allows a few. At the time I had
been using angular to develop the project, and because it was all rendered on the client, I was unable to set the
User-Agent header, leading to me not going anywhere with the project, leading to its abandonment.

## Today

I recently decided to pick it up again, being much better versed in web design and coding, I decided to use SSR for the
application, using my currently favourite framework, sapper. I had to make two parts, a server side json route to fetch
the notices, and a client side route to show the notices. On the client side, I also had to make it so that the device
could be left alone and still update. After some experimenting, I have this version to show:

[![Preview Video](/projects/wbhs_notices/demo.webp)](https://drive.google.com/file/d/1MlaPtpZPDbG9GDfQl8oWR-fwscvHPqvo/view)
