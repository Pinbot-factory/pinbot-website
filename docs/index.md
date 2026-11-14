---
title: "Pinbot: design electronics test jigs"
description: Pinbot is a platform that makes it easy to design and deploy test jigs for electronics
hide: toc
---

# Pinbot

Pinbot is an open-source platform for quickly building test jigs for electronics QA. The platform is made up of [mechanical fixture](https://github.com/Pinbot-factory/pinbot-mechanical), [control electronics](https://github.com/Pinbot-factory/pinbot-electronics), [cradle generator](cradle-generator/get-started.md) tools, jig-level software and backend to store all test results.

<iframe src="https://www.youtube-nocookie.com/embed/MzEMr3A7bvY" title="YouTube video" style="width: 100%; aspect-ratio: 16 / 9; border: 0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Mechanical chassis

:fontawesome-brands-github: [Pinbot-mechanical](https://github.com/Pinbot-factory/pinbot-mechanical) repository contains the mechanical design files for the Pinbot test jig along with minimal assembly documentation. The complete jig consists of two assemblies: chassis and cradle.

![Pinbot test jig](Pinbot-probes.jpg)

## Control electronics

:fontawesome-brands-github: [Pinbot-electronics](https://github.com/Pinbot-factory/pinbot-electronics) repo is dedicated for electronics of a typical Pinbot jig and it's software examples. At a moment it is a compact carrier board for Raspberry Pi Zero 2. The board also can be used with regular size RPis thru HAT connector.

![Pinbot carrier board](pinbot-carrier-r02.jpg)

## Tools

Pinbot [cradle generator](cradle-generator/get-started.md) runs in the browser and makes the cradle of a Pinbot-180 test jig for your PCBA: the plate the board lies in while spring-loaded test probes (needles) touch its test points from below.

![Pinbot generator UI](cradle-generator/images/get-started/pinbot-generator-ui.jpg)