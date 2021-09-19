---
color: "#c8d0e6"
date: "2021-08-05"
title: "Mass Rickroll"
author: "<a target='_none' href='https://jmw.nz'>Jasper M-W</a>"
description: "A group rickroll experience like no other."
thumbnail: "/project-assets/mass-rickroll/thumbnail_o.png"
layout: default
type: project
---

This is a system where via multiple methods, a [client connects](https://mass-rickroll.host.qrl.nz/active) to a remote server where [anyone can trigger an event](http://mass-rickroll.host.qrl.nz/rick) to rickroll everyone connected simultaneously.

## Links
 - Github: [HC-API-Tools](https://github.com/Fallstop/mass-rickroll)
 - Script to infect computer: [Script.ps1](https://github.com/Fallstop/mass-rickroll/blob/main/Script.ps1)
 - Activate Rick Roll: [API Endpoint](https://mass-rickroll.host.qrl.nz/rick)
 - List Active Clients: [API Endpoint](https://mass-rickroll.host.qrl.nz/active)


## The Core Infrastructure

A script runs on the computer, and connects to a websocket running on the server, and just waits in the background for the rick event, where it opens a browser to the [classic rick roll](https://www.youtube.com/watch?v=dQw4w9WgXcQ). It stays in the background, continuing to serve events until the computer shutdown or the program is manually quit. It was decided against to include persistance, as that could easily make a messy situation.

## The Carriers

There was multiple methods of getting the script downloaded and run, but most of the time it was done by two different forms of a bad usb.

### Beetle Arduino (Budget Bad USB)
This is just a normal arduino, except most of the board area is the male USB A connector, and it can emulate keyboards very well. This means it connects, installs its drivers, then opens the run prompt and downloads the script like any other Bad USB.

### An Actual Bad USB
We also got it working on an actual Bad USB which runs ducky script. This one doesn't need to install drivers, making it a lot more powerful and discrete.
