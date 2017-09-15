---
layout: default
title: "5 Tips to Automate Your Cloud Infrastructure"
date:  2017-09-16 12:00:00 +0000
categories: cloud automation aws
published: false
---
This is the one about how "moving to the cloud" isn't
the same as moving your infrastructure into someone
else's data-centre.

Managing infrastructure yourself is difficult.
All that buying and installing tons of physical
kit and making sure it all continues to work.
Inventory management, replacement cycles,
engineers on call, physical access control.

Been there. Driving across the country in the middle
of the night to go tend a neurotic UPS.

Not fun. And frankly, if your business is *not*
in managing physical hardware then the finance folk
should make it difficult
to keep this commodity activity in-house rather than
outsourcing it. Your business is probably best focussed
on whatever its unique "thing" is, not on this.

It's the no-brainer default position for startups to avoid all this
busywork and make a beeline for AWS or Azure. Startups don't
have spare resources to waste on nursing hardware.

And after landing on a public cloud, it's easy to fall into
the trap. The trap of sitting in front of the AWS Console
and provisioning kit by clicking around a plethora of web pages.
Create a server here, bring up a load balancer there, configure
the SSL, upload a certificate, set up the ports and proxy rules,
type in some domain names to hook it all together. SSH in
and install the required dependencies. `git pull` the code down. Done!

Then you do the same thing for the next project a couple of weeks
later. And again. But all the instances are
slightly different and the naming conventions evolve over time.
Until two years down the line you have a big old muddle of
resources that no one really understands.

So when Amazon sends you the email that says one of your servers has
been retired you're stuck trying to recreate the custom
snowflake platform that evolved over time. Good luck. Or maybe
you saved an AMI along the way, so some of the platform is
still intact without having to remember how you built this one.

Breaking the cycle of manual configuration is the real win
that the public cloud platforms bring. Your project should be
deployable by running one script that creates and provisions
the solution by accessing the cloud provider's API to create
resources in the same way every time, then provisioning a platform
using a configuration management tool and pulling down
a tagged version of the software.

Once you're in this position, the underlying cloud resources
become the commodity that they should be, and your entire
solution is safely managed under version control. Deployment
is over in a matter of minutes not days. You're making the
most of the public cloud and saving money hand over fist.

I'll do a follow on to walk through some of the enablers
for automation.
