---
layout: post
title: "Notable AWS Announcements 2017/10/06"
date:  2017-10-06 00:00:00 +0000
tags: [aws]
published: true
---
The AWS "new features" email continues to grow longer and longer with the passing weeks!
Here are some recent announcements that caught my eye.

Chime
-----

Amazon noticed the success of Slack and the interest in Skype: online collaboration
is the next battleground for integration technologies as these products are pressed
into service as a human-oriented "Enterprise Service Bus". Not to mention that
the clunky old-school VOIP solutions are hopelessly outclassed by these ad-hoc
solutions that expose APIs for app developers to hook into.

[Chime](https://chime.aws/)
is clearly receiving some attention within AWS as it matures nicely, see
[Amazon Chime Now Allows You to Log Console Actions Using AWS CloudTrail](https://aws.amazon.com/about-aws/whats-new/2017/09/amazon-chime-now-allows-you-to-log-console-actions-using-aws-cloudtrail/)
and
[Amazon Chime Now Supports Quick Actions on iPhone, iPad, and Apple Watch](https://aws.amazon.com/about-aws/whats-new/2017/09/amazon-chime-now-supports-quick-actions-on-iphone-ipad-and-apple-watch/)
.

Cloudfront TLS Policies
-----

Recent security breaches and the continuing exploitation of SSL weaknesses
puts the spotlight on the aging protocols that terminate our "secure"
web infrastructures. AWS does a great job of keeping up to date with
the latest and greatest in SSL/TLS protocol suites at the Load Balancer
layer. With
[Amazon CloudFront now lets you select a security policy with minimum TLS v1.1, v1.2, and security ciphers for viewer connections!](https://aws.amazon.com/about-aws/whats-new/2017/09/amazon-cloudfront-now-lets-you-select-a-security-policy-with-minimum-tls-v1_1-1_2-and-security-ciphers-for-viewer-connections/)
we have some welcome parity at the Cloudfront layer.

Network Load Balancer on Elastic Beanstalk
-----

And then there were three varieties of
[Elastic Load Balancer](https://aws.amazon.com/elasticloadbalancing/)
on the AWS platform!
The original (and now pretty much deprecated)
[Classic Load Balancer](https://aws.amazon.com/elasticloadbalancing/details/#details)
has been joined by the Layer 7 focussed
[Application Load Balancer](https://aws.amazon.com/elasticloadbalancing/details/#details)
for flexible
routing, and the Layer 4 focussed
[Network Load Balancer](https://aws.amazon.com/elasticloadbalancing/details/#details)
for high-performance network balancing.

Now all three can be deployed using
[Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/)
as described in
[the recent announcement](https://aws.amazon.com/about-aws/whats-new/2017/09/aws-elastic-beanstalk-now-supports-network-load-balancer/).
