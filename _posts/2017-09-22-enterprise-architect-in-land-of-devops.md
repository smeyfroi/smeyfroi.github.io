---
layout: default
title: "Making Enterprise Architecture Relevant in the Land of Devops"
date:  2017-09-22 00:00:00 +0000
tags: cloud automation enterprisearchitecture compliance
published: false
---
In [5 Tips to Automate Your Cloud Infrastructure]({{ site.baseurl }}{% post_url 2017-09-20-automate-your-cloud-infrastructure %})
I mentioned automated compliance testing. This is the idea that once your
entire solution (both infrastructure and software) is defined
using artefacts under version control, then the way is open to
checking those artefacts for compliance against an enterprise-wide
set of rules... in an automated workflow, not in meetings with
an "enterprise architecture team" who wield the fiery blame hammer
to punish teams ignorant of the latest Powerpoint edict from on high.

That's a bit of a harsh characterisation. Harsh, but unfortunately true for
some of the large businesses I've worked with over the years,
where it seems that the traditional enterprise architecture role has managed to
avoid the magnetic pull towards automation that drives efficient solution delivery.
Things are sometimes so toxic that EA is sometimes
seen as an optional extra, or worse, an impediment for delivery teams.

And so there may be an unhealthy tension between delivery teams
who actually "do stuff" and the EA team, which is often far removed
from project teams that are implementing solutions for the business.

However, I do believe that here is a useful role for a central
role that understands a wide landscape, in which the totality
of IT solutions supports the business as efficiently as possible
right now, with a view to future needs to support
a likely path of flight for the business.





Automation of compliance against centrally agreed rules. Depends on
APIs and version controlled artefacts that fully define a solution.

For example, with infrastructure and software accessible in a version
controlled repo, it's easy enough to check compliance by examining
artefacts that define third-party dependencies (is a team using the
library we're trying to deprecate?), or the deployment definition
(is this team building its solution on an out-of-support version of
ubuntu?), etc.





EA as enabler not librarian. An aid for project teams, able to bring
relief to stretched plans with reuse and identification of existing
solutions (micro-services, APIs, components, COTS).



Need for EA to understand the underlying technical landscape; Powerpoint out,
code in.


