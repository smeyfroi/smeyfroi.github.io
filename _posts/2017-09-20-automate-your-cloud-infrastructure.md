---
layout: post
title: "5 Tips to Automate Your Cloud Infrastructure"
date:  2017-09-20 00:00:00 +0000
tags: [cloud, infrastructure, automation, aws]
image:
  feature: posts/2017-09-20.jpg
  credit: stocksnap.io
  creditlink: https://stocksnap.io/license
published: true
---
This is the one about how "moving to the cloud" isn't
the same as moving your infrastructure into someone
else's data-centre.

Managing physical infrastructure is difficult.
All that buying and installing tons of physical
kit and making sure it all continues to work.
Inventory management, replacement cycles,
engineers on call, physical security... and on
it goes.

Hard work. And frankly, if your business is *not*
in the business of managing physical hardware
then the finance folk should make it very difficult
to keep this commodity activity in-house rather than
outsourcing it: what's the ROI on managing physical kit?
Your business is probably best focussed
on whatever its unique domain is, as the resource-strapped
startups running cloud-based workloads know very well.

But after landing on a public cloud, it's easy to fall into
the trap. The trap of sitting in front of the AWS Console
and provisioning kit by clicking around a plethora of web pages.
Create a server here, bring up a load balancer there, configure
the SSL, upload a certificate, set up the ports and proxy rules,
type in some domain names to hook it all together. SSH in
and install the required dependencies. `git pull` the code down. Done?

Then the same thing for the next project a couple of weeks
later. And again and again. But all the instances are
slightly different and the naming conventions evolve over time.
Until two years down the line there's a big old muddle of
resources that no one really understands.

So when Amazon sends you the email that says one of your servers has
been retired you're stuck trying to recreate the custom
snowflake instance that evolved over time. Good luck. Or maybe
you saved a machine image along the way, so some of the platform is
still intact without having to remember how this one was built.

Just say no.

Because the real win that the public cloud platforms bring is the tooling
to break the cycle of manual configuration management. Projects can be
deployable by running one script that creates and provisions
a solution via the cloud provider's API to create infrastructure
in the same way every time, provisioning the platform
using a configuration management tool and pulling down
a tagged version of the software. Quick, repeatable and safely
under version control.

Let's summarise with five summary tips that follow from adopting the public cloud:
1. automate your infrastructure (automation is good, do things once centrally).
See [Chef](https://chef.io/), [Puppet](https://puppet.com), [Ansible](https://www.ansible.com/), [Cloudformation](https://aws.amazon.com/cloudformation/)
1. put your infrastructure under version control (software without version control is unthinkable; same for the infrastructure supporting the software solutions)
1. make deployments repeatable (painless temporary environments)
1. make deployments rapid and frictionless (keep delivery teams moving)
1. automate compliance testing (banish 'snowflake' systems; more on this later)
