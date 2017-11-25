---
layout: post
title: "The state of front end development"
date:  2017-11-25 00:00:00 +0000
tags: [development,frontend,javascript,web]
image:
  feature: posts/2017-11-25.jpg
  credit: Burst
  creditlink: https://burst.shopify.com/
published: true
---
Have you read
[Every JavaScript framework tutorial written more than 5 minutes ago](https://medium.freecodecamp.org/every-javascript-framework-tutorial-written-more-than-5-minutes-ago-f96642d4f05)
?
You really should if you have anything to do with today's Javascript development.
Some way from 'blink' and 'marquee' HTML tags. And DHTML!  Remember that? HTML
that's dynamic. Whatever next.

So the world has landed on
[React](https://reactjs.org),
[VueJS](https://vuejs.org)
and
[Angular 2](https://angular.io)
for front end development. Along with an ever-changing bestiary of
tools that pretty much require a Docker image to run inside. Welcome to the world's
biggest build tool an entire operating system stack dedicated to dependency management,
transpiling, munging, concatenating and otherwise mutating your source code into...
well, into more source code actually.

The best way to keep up with what's happening in this world is to
build stuff. So I've started to throw together a tool to help browse the
AWS product catalogue/price catalogue. (It's the time of the year to make
reservations for AWS kit!) I proudly present the first
pre-release version of [Cloud Price Explorer](http://thinkingitby.meyfroidt.com/product_explorer/).

It's incomplete now but I need it to work, so it'll get better.

And apart from it being useful (well, I mean it *will* be useful one day), I built it
to learn a React stack. (Vue is nicer but there are fewer shiny third-party things to use in its
ecosystem. Angular is, well, too enterprisey for this project!)

So this is
[React Boilerplate](https://www.reactboilerplate.com) which gives you a production-ready
setup that runs happily in a simple node docker container, and includes all the
cool stuff (redux, reselect, redux-saga, etc) along with example implementations to
steal from. Ahem. To learn from. It also has a complete test setup using jest and enzyme, and
a webpack config that just works out of the box for development, test and production builds.
Very nice and very simple to get working.

The only speedbump so far was the need to manually `npm install -g lodash cross-env`
in my Docker container for setup to work.
See [the github issue](https://github.com/react-boilerplate/react-boilerplate/issues/1836) for more discussion.
