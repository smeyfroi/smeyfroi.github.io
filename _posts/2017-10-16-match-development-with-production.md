---
layout: post
title: "But it works on my machine!"
date:  2017-10-16 00:00:00 +0000
tags: [development,deployment,environments]
image:
  feature: posts/2017-10-16.jpg
  credit: Burst
  creditlink: https://burst.shopify.com/
published: true
---
Don't let "it works on my machine" be a thing!

It's convenient to just git pull a project, install some dependencies
and get on with development. But that doesn't work well enough, even with runtime
version managers like ruby's
[RVM](https://rvm.io)
and python's
[virtualenv](https://virtualenv.pypa.io/en/stable/)
, to be
reliable. You may be able to control the runtime environment but
what about all the binary dependencies?

And so technologies like
[vagrant](https://www.vagrantup.com)
with
[virtualbox](http://www.virtualbox.org)
and now
[docker](https://www.docker.com)
, have transformed
one-off snowflakey development environments into virtualised
sandboxes that can be brought up and down as
we hop from project to project without
dependency versioning tripping anyone up.

But then you have to consider the differences between development
and production environments.

Docker allows container images to be (almost) identical between
development and production, which is the ideal. But a vagrant+virtualbox
workflow, which we use at my workplace due to
[limitations with Amazon's ECS]({{ site.baseurl }}{% post_url 2017-09-24-docker-immature-on-aws-ecs %})
is dangerous without a means of keeping development in sync
with production. The solution is to base vagrant and
EC2 images on the same version of linux and then to
provision both types of environment using the same
definition, for example using chef cookbooks.

Of course a development environment will probably contain
'extra' stuff, for example database servers that are externalised
on the production platform (e.g. by using RDS), in which case
keeping the versions consistent becomes an easily-solved issue
within the cookbooks. Again, docker provides a more elegant solution
with its support (especially via docker-compose) for multi-container
deployments.

How can you share your chef configuration between vagrant and
AWS EC2? It used to be difficult/a hack, but the
[vagrant-aws](https://github.com/mitchellh/vagrant-aws)
plugin makes life easier. It's not perfect since the EC2 instances
created by one developer end up being private to him and not able to
be managed by other developers, but bringing up new instances
instead of updating existing ones is a best practice anyway so
that's not a real blocker.

But the Hashicorp folks, who own Vagrant, are rolling out
a reallt interesting and rather complete suite of tools
that appear to wrap up all these concerns and
much more. The part of the jigsaw that solves the problem of sharing
development and production platform builds is the concern of their
[Packer](https://www.packer.io/)
product. While the end-to-end solution includes
[Terraform](https://www.terraform.io/)
to build AWS infrastructures, as well as more tools
to deal with secrets management, service orchestration and
scheduling that I'm very interested to look at for the future.

Finally, to reiterate... don't let 'required' tools or dependencies creep onto developers'
laptops outside of your virtualised and controlled development environments.
Because then you're back to "it works on my machine".
If there are tools required that are shared between projects
or that are difficult to install inside project environments then
make a sandbox (container or VM) specifically for the tool.

Don't be satisfied with "OK let's make sure everyone does
`brew install foo`" because you'll
end up in a world of "it doesn't work anywhere except my machine".
