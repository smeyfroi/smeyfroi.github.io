---
layout: post
title: "Docker is an Immature Technology on AWS ECS"
date:  2017-09-24 00:00:00 +0000
tags: cloud docker container aws
image:
  feature: posts/2017-09-24.jpg
  credit: New Old Stock
  creditlink: http://nos.twnsnd.co/rights-and-usage
published: true
---
I've been working on converting some backend API
development environments from a vagrant VM-based platform
onto docker containers, provisioned using a [Chef](https://chef.io/)
configuration that also builds the EC2 instances
that production services are deployed onto.

Originally, I intended to move containerised production
deployments onto [Amazon's Elastic Container Service (ECS)](https://aws.amazon.com/ecs/)
but backed out when I realised how immature the technology is.
I'm sure it won't stay that way with the velocity that AWS
is moving at, but right now ECS is under-developed.

I'd expected ECS to be similar to the Lambda
platform, which allows functions to be pushed onto AWS for
deployment in a hidden pool of compute resource that can scale
on demand. I imagined we'd be pushing docker containers into a similar
pool of essentially infinite resource for which we'd pay a
simple usage fee.

Unfortunately that's not how it is. On ECS you define and
manage a pool of EC2 resource that containers are deployed
onto.

For some use-cases this is probably not an impediment, but
when you're dealing with a large number of projects that rarely
require more than a handful of servers, the requirement to
manage both the container layer and the underlying compute
resource layer is an overhead that surprised me.

I can't wait for deployment of containers on the AWS platform
to remove the need to manage compute resource beyond the
simple specification of operating characteristics to service an
expected workload.
