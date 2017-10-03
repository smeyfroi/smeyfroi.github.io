---
layout: default
title: "Care Needed When Navigating the Chef Ecosystem"
date:  2017-10-03 00:00:00 +0000
tags: [chef, deployment, configuration_management]
image:
  feature: posts/2017-10-03.jpg
  credit: New Old Stock
  creditlink: http://nos.twnsnd.co/rights-and-usage
published: true
---
[Chef](https://chef.io/) is a config management tool that allows you
to put the build of a server under version
control as a text (ruby) description of the steps needed to bring it to the
correct state. It is one of several tools that allow you to automate server builds which is essential for
reliable deployment of solutions. Similar tools include Puppet and ansible,
but my most recent experience is specific to Chef on MacOS and Linux,
the basis for this discussion.

As is the norm these days, a Chef stack is built on a towering pile of
open source dependencies that decay and expire with the changing seasons,
leaving behind a trail of failed builds and much swearing.

Chef itself, with its dependency manager
[Berkshelf](https://docs.chef.io/berkshelf.html), is installed as a bundled
'Chef DK' that even includes the underlying ruby runtime (such is the fragility
of these tech stacks). So installing the tool itself is now fairly fool-proof.
But there's trouble brewing of you plan to use the tool to actually do some
work!

You drive Chef with 'cookbooks' that contain 'recipes' holding the instructions
to deploy the components of a platform. Cookbooks are written in ruby and can have
dependencies between them that you resolve using the Berkshelf tool, similar to
ruby's native 'bundler' or node's 'npm' (that'll be 'yarn' these days).

This tends to be one source of pain when a cookbook depends on a third party
cookbook... which gets updated in such a way as to become incompatible. I'm not
sure why this is a major problem, given that semantic versioning should be
standard, but it is. Versioning is just a hard problem.

The other important source of incompatibility is between cookbooks and Chef
itself. Chef has been growing and changing for years now, and it seems quite
common to come across cookbooks that only work with v11 of chef and not v12, or
vice versa.

I suspect part of the problem is that deployments tend to fail only when you
actively update cookbooks, which is less important to do compared with keeping libraries
updated for security reasons; cookbooks themselves rarely need updating on the
basis of security. And so a deployment that worked last year and hasn't changed
since then, can suddenly break when a cookbook needs to be updated for some
reason (perhaps to install an updated version of some package when the version
is hard-coded into a recipe... more common than you might hope).

The take-away message is that a Chef deployment can easily decay unnoticed over
time, so taking regular time out for maintenance is essential to avoid
panic when an emergency deployment of a fix turns into a traumatic
chef-cookbook-dependency-tracking-down-why-doesn't-it-work-athon.

Not that that ever happens in real life.
