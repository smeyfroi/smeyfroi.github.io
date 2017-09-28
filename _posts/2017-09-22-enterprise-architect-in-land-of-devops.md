---
layout: post
title: "Making Enterprise Architecture Relevant in the Land of Devops"
date:  2017-09-22 00:00:00 +0000
tags: [cloud, automation, enterprise architecture, compliance]
image:
  feature: posts/2017-09-22.jpg
  credit: stocksnap.io
  creditlink: https://stocksnap.io/license
published: true
---
In [5 Tips to Automate Your Cloud Infrastructure]({{ site.baseurl }}{% post_url 2017-09-20-automate-your-cloud-infrastructure %})
I mentioned automated compliance testing. This is the idea that once your
entire solution (both infrastructure and software) is defined
using artefacts under version control, then the way is open to
checking those artefacts for compliance against an enterprise-wide
set of rules... in an automated workflow... not in meetings with
an "enterprise architecture team" who wield the fiery blame hammer
to punish teams ignorant of the latest Powerpoint edict from on high.

That's a bit of a harsh characterisation. Harsh, but unfortunately true for
some of the large businesses I've worked with over the years,
where it seems that the traditional enterprise architecture role has managed to
avoid the magnetic pull towards automation that drives efficient solution delivery.
Things are sometimes so toxic that EA is seen as an optional extra,
or worse, an impediment for delivery teams.

And so there may be an unhealthy tension between delivery teams
who see themselves as "actually doing stuff" and the EA team,
which is often far removed from the concerns of project teams
working with specific business units to automate their processes.

But there is a useful role for a central authority that understands a wide landscape and its history.
This is the context in which the totality of IT solutions supports the business as efficiently as possible
right now, with a view to the need to support a likely path of flight for the future.

The EA role can be a helpful force for project teams when
it becomes integrated into the automated workflows that modern
delivery uses. When it sits outside the automation of infrastructure
build and deployment then it becomes a cumbersome obstacle, but
what if compliance against the enterprise architecture was simply
a part of the automated testing? A build that failed the EA tests
would instantly make visible an issue that could be addressed immediately.
The alternative of non-compliance going unnoticed until the next
'architecture review board' months in the future looks barbaric and
not very helpful at all.

Of course this approach depends entirely on automation of the
entire project delivery from infrastructure through build and deployment,
which only a "cloud" approach (i.e. API-driven infrastructure) can bring.

How can compliance be automated? By building and maintaining common "recipes" (to use a
[Chef](https://chef.io/) term) that projects use, which are regularly audited
and tweaked by the EA function. By attaching metadata to project repositories
that bespoke tools can scrape and analyse. By running tools such as
[Amazon Inspector](https://aws.amazon.com/documentation/inspector/?icmpid=docs_menu_internal)
and any one of the myriad third-party tools. By using
[AWS Config](https://aws.amazon.com/config/) to ensure that
infrastructure changes are compliant. And on it goes. We'll return to
this topic in the future.

This is a brave new world in which EA is a helpful enabler not a grumpy librarian.
A world in which EA is intimitely bound to the project teams and their processes.
An aid for projects, able to bring relief to stretched teams by identifying potential for reuse
of existing solutions (infrastructure recipes, micro-services, APIs, components, COTS). And
a source of compliance to ensure that teams are building value within the growing IT estate.
