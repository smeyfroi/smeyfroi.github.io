---
layout: post
title: "AWS does Container Deployment Automation"
date:  2017-11-30 00:00:00 +0000
tags: [cloud, docker, container, aws]
image:
  feature: posts/2017-11-30.jpg
  credit: Burst
  creditlink: https://burst.shopify.com/
published: true
---
I talked about some adventures in the land of
[Docker](https://www.docker.com/)
a few weeks ago, in
[Docker is an Immature Technology on AWS ECS]({{ site.baseurl }}{% post_url 2017-09-24-docker-immature-on-aws-ecs %})
but it looks like that's all wrong now with the
[announcement of AWS Fargate](https://aws.amazon.com/about-aws/whats-new/2017/11/introducing-aws-fargate-a-technology-to-run-containers-without-managing-infrastructure/)
, which promises an end to managing the infrastructure underlying your
container deployments.

More to come on this, but it feels like this will push containers even
further into the mainstream, making full-stack deployment similar to
serverless deployment, with the underlying hardware abstracted away.

As application developers we're concerned with delivering applications.
We're really not too fussed about being experts in hardware, networking,
scaling out, and the other myriad details that will hopefully be simplified
with Fargate.

Early days, but I'm excited about this further step towards commoditising
our infrastructure.
