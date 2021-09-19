---
date: "2021-06-04"
color: "#8eb2f5"
title: "True Random"
description: "Simple to use API Gateway to access the mess of Huanui Collage Public data with ease."
author: "<a target='_none' href='https://jmw.nz'>Jasper M-W</a>"
thumbnail: "/project-assets/true-random/thumbnail_o.png"
layout: default
type: project
---

*The most powerful and secure random number tool you could ever want.*

#### Produced for the [Terrible Ideas Hackathon](https://terriblehack.nz/)


#### **TEAM (Subset of [QRL's](https://qrl.nz/) group)**: [Jasper M-W](https://jmw.nz), [Nathan](https://www.laspruca.nz/), [Jacob](https://jacobtread.github.io/), and Taine

#### **Website**: [TrueRandom.ml](https://truerandom.ml/), [Backup Website](https://tr.host.qrl.nz)


Today's random number algorithms are too boring and fast. That's why we used a massive robotic arm that uses ODrive controllers to precisely roll a dice and read the result.

## The robot in action

[Twitch Stream](https://www.twitch.tv/truerandomqrl)

We also set up a twitch stream for a more interactive random number generation experience, the channel is [True Random QRL](https://twitch.tv/truerandomqrl) and should be running 24/7. Just run `!roll` in chat to see your random number being generated and read in realtime (+stream delay).
<style>
    #twitchStreamWrapper {
        display: flex;
        flex-direction: row;
        align-content: stretch;

    }

    @media (max-width: 700px) {
        #twitchStreamWrapper {
            flex-direction: column;
        }
        #twitchStreamChat {
            height:400px;
            width:100%
        }
    }

    #twitchStreamVideo {
        position: relative;
        width: 100%;
        padding-bottom: 56.25%;
    }
</style>

<div id="twitchStreamWrapper">
    <div id=twitchStreamVideo>
        <iframe src="https://player.twitch.tv/?channel=truerandomqrl&parent=localhost&parent=jmw.nz&muted=true" frameborder="0" allowfullscreen="true" scrolling="no" width="100%" height="100%" style="position: absolute"></iframe>
    </div>
    <iframe id="twitchStreamChat" src="https://www.twitch.tv/embed/truerandomqrl/chat?parent=localhost&parent=jmw.nz" width="350"></iframe>
</div>

\* We plan of keeping the stream up until roughly 2021-07-22 or later, because we can't just dedicate resources for it forever, so if the stream is down by the time you get here that is why.

**Update:** We just left it up, it is now permanently temporary.

## The robot's design

The robotic arm is an old design from a prototype engineer that had ambitions to use ODrive, the controller, to make a much cheaper and more powerful robotic arm. The design has 3 Axes, all of which are powered by drone motors (running 12v, <30A each) with relative encoder with an index pulse. The motors are controlled using the aforementioned dual ODrive controllers that use the encoders to calculate the exact positions of the motors, and fights to keep it at the goal position in a closed loop control system.

The abstraction of the ODrive is abstracted again by the code running on the dedicated server jankly placed underneath the arm.

## The Web Server

The website ([truerandom.ml](https://truerandom.ml/)) is vaguely inspired by the legendary [is even api](https://isevenapi.xyz/), it is dockerized and is self hosted on [QRL's](https://qrl.nz) servers.

### User facing API

The user facing api is just a simple express server serving from a buffer of random numbers.

### Connection to the robot arm

Because this was developed at a hackathon, we had to do it in reverse, the robot arm server creates a websocket connection to the webserver, which then allows the webserver to send orders to the robot arm server that it can fulfill.