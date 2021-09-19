---
title: TCPlugin
date: "2021-01-04"
color: "#87dcc1"
description: "A plugin to help with the admin of the Technocraft Survival Server, 
  with features to meet our administrative and entertainment needs."
author: "<a target='_blank' href='https://laspruca.nz'>Nathan Hare</a>"
thumbnail: "/project-assets/tc-plugin/thumbnail_o.png"
layout: default
type: project
---
[Github Repo](https://github.com/questionable-research-labs/tcplugin)


This was a plugin I have made to use on the techocraft server (`mc.qrl.nz` if you are interested). I made it because we
had some random, fun, and some utility functions for us to use on the server

# What it does
It has three main functions

## Logging blocks placed, broken, and inventories interacted with
This was the initial use of the plugin, we wanted to make a system which would allow us to see what our player were 
doing on the server.

## Fun commands
This was just some fun that we wanted to have. Three main commands exist:

1. `/bee`: show the text: According to all known laws of aviation, there is no way that a bee should be able to fly.
2. `/givebaton`: gives a user a knockback sick with large knockback.
3. `/discord`: Prints information about the discord server, the code is [5DUfCw2](https://discord.gg/5DUfCw2) if you are
   interested
   
## Discord Integration
I added some discord integration to allow us to see information and control from discord. From discord, pseudo
hardcore mode can be enabled, or disabled as well as the giveabton command. You can also see what players are online.
The plugin will also send a message if server is shutting down or stating up.

## Pseudo hardcore mode
For one server that we run, if a player dies, then they are banned for 12 hrs before the can join again. Part of the 
plugin automates this, so that if a server is in hardcore mode, it will ban players who die for 12 hrs.
