---
date: "2022-08-21"
color: "#99ff77"
title: "Dirtywatts"
description: "Track the cleanliness of your energy consumption with Dirtywatts – the electricity usage app that helps you go green."
author: gpt3
involved: [nathan, jasper, taine, jacob, ara, ashley, grayson] 
thumbnail: "/project-assets/dirtywatts/thumbnail_o.png"
layout: default
type: project
---

#### Links
 - Project Github: [Questionable-Research-Labs/DirtyWatts](https://github.com/Questionable-Research-Labs/DirtyWatts)
 - Govhack Page: [DirtyWatts](https://hackerspace.govhack.org/projects/dirty_watts)
 - Deployed App: [dirtywatts.nz](https://dirtywatts.nz)
 - Video: [DirtyWatts - Govhack 2021](https://www.youtube.com/watch?v=wvJlPGGfMgM)

## Introducing Dirtywatts: The Electricity Usage App That Helps You Go Green

Are you concerned about the environmental impact of your electricity usage? Do you want to know when you are using green power to charge your devices or run your household appliances? If so, meet Dirtywatts – the electricity usage app that helps you track the cleanliness of your energy consumption.

## How Dirtywatts Works

Dirtywatts is a simple yet effective tool that lets you know whether you are using green or non-green energy. By using a color-coded lamp, you can easily see the type of energy you are using at a glance. When the lamp is green, it means that most of New Zealand's electricity is coming from renewable sources. If the lamp turns into a more muddy green-yellow, it indicates that more gas is being burned for power. And once the lamp turns orange or red, it means that coal or diesel is being used for electricity – that's when you know it's time to conserve power.

But Dirtywatts doesn't just provide information – it also helps you take action. With the use of a smart socket, you can automatically turn off devices that don't have to be on all the time, based on the real-time data coming from the grid. This means you can save energy without having to manually intervene or set up timers.

In addition to the lamp and smart socket, Dirtywatts also offers a dashboard where you can see detailed information about your energy consumption. The dashboard shows the percentage of clean energy you are using, the types of power plants generating electricity, and the available capacity of each power plant.

![Graph showing history of power consumption broken down into power types](\project-assets\dirtywatts\PowerGraph_o.png)

It also displays a map of the network connection points and how much energy they are drawing or putting back into the grid.
![Map showing grid connection points](\project-assets\dirtywatts\MapScreenshot_o.png)


## Dirtywatts as an Educational Experience

But Dirtywatts is more than just an app – it's also an educational experience. The team behind Dirtywatts has created a public API that makes it easy to access both live and historical data, as well as a wiki with guides on how to build your own light monitoring system and automatic switches. This means that anyone can learn about the cleanliness of their electricity usage and take steps to reduce their environmental impact.

![Circuit board with a indicator light attached](\project-assets\dirtywatts\WallMountedVersion_o.jpg)

## Try Dirtywatts Today

We are proud to have developed Dirtywatts and we believe that it can make a real difference in the fight against climate change. If you want to know more about the cleanliness of your electricity usage and take action to reduce your environmental impact, try Dirtywatts today and see the difference it can make.

{% include image.html url="https://dirtywatts.nz" file="\project-assets\dirtywatts\Logo_o.png" max-width="150" caption="Go to the Dirtywatts Site" %}

## The Tech Stack Behind Dirtywatts

Dirtywatts is a monorepo made up of multiple parts, each with its own technology stack. The frontend dashboard is written in HTML, SCSS, Typescript, and Svelte, while the backend API is written in Rust and uses PostgresSQL as the database.

The frontend dashboard provides the web interface for viewing the information provided by the backend API. It is designed to be user-friendly and easy to navigate, with clear visualizations of the data and the ability to drill down into specific details.

The backend API is responsible for providing the data to be displayed on the dashboard. It connects to the grid and collects information about the cleanliness of the electricity being generated, as well as the power plant types and their available capacity. The API then makes this data available to the frontend dashboard through a set of RESTful endpoints.

By using these different technologies, the team behind Dirtywatts has been able to create a robust and scalable solution for tracking the cleanliness of electricity usage. The combination of a powerful backend API and a user-friendly frontend dashboard allows anyone to quickly and easily see the impact of their energy consumption on the environment.

![Writing on the whiteboard](\project-assets\dirtywatts\Whiteboard_o.jpg)