# AWS re:Invent 2022

**Date:** 2022-12-19

**Categories:**
`aws, conference, notes`

## About

This year, AWS re:Invent was from November 28, 2022 – December 2, 2022
in Las Vegas.

I just thought I'd share some of my notes regarding sessions which I found
interesting in case it is helpful for anyone. 

I had been hoping to get this post out much closer to the end of the event, 
but life got busy as it often does. At least the post is making it out within
the same month! 

This was actually my first re:Invent, so I can't make any comparisons to 
previous re:Invents. Also, I attended the event virtually since there were 
various reasons I was unable to travel this year. I can offer some thoughts on
attending virtually, but cannot compare it directly to attending in-person.

## Thoughts on Virtual Attendance

Unless I was doing something wrong (I very much doubt it, but it is certainly
possible), the only sessions which were available live via the virtual 
attendee portal were keynotes and leadership sessions. Then, after some time,
the other sessions were posted to an official [AWS Events YouTube channel](https://www.youtube.com/@AWSEventsChannel). On that channel, the breakout sessions are helpfully 
organized into playlists by topic.

I don't recall exactly how long it would take before a breakout session would 
become available on YouTube, but I feel it was anywhere from 2 hours to the 
next day.

The virtual attendance experience is very different from in-person. Of course,
both have their pros and cons. 

I got some sense of the difference since many of my co-workers attended in-person
and there was a Slack channel dedicated to re:Invent. Via the Slack channel I 
got to see photos of many co-workers meeting for the first time - either due to
remote-work or from being on geographically dispersed teams. I certainly regret
that I was unable to attend in-person this year to take part in those experiences.
Chalk this up to the "cons" column.

On the other hand, folks who attended in-person had to carefully plan their
day to get into the sessions which most interested them. If they happened to have
interests which span multiple tracks, they might have found themselves needing
to take a shuttle from one hotel to another and to factor in this travel-time.
With virtual attendance, I was able to avoid all travel-time, and watch any 
break-out from any track as soon as it became available on YouTube. 

I also saw some reports of sessions becoming fully booked - not a problem for
virtual attendees.

Watching the sessions on YouTube also afforded the opportunity to pause to 
study diagrams and read slides, and of course to rewind if needed. Another 
great benefit is the ability to increase the playback speed for slow speakers.

I also attended KubeCon this year, virtually. I had felt certain that AWS
would have more resources and would therefore have a far greater selection of 
sessions being streamed live. I was initially very disappointed to find that
KubeCon actually had a greater selection of sessions available live, or at least
same-day.

Whatever shortcomings and trade-offs I experienced by attending virtually, I'm
still grateful to have been able to learn and participate.

I think probably the best approach would be to attend in-person and to plan
to catch-up on the talks which were full or that you couldn't make it to via
the YouTube channel later.

## Interesting announcements

Just a small subset of announcements that I personally thought were interesting.

[Finch](https://aws.amazon.com/blogs/opensource/introducing-finch-an-open-source-client-for-container-development/)

[Opensearch Serverless Preview](https://aws.amazon.com/opensearch-service/features/serverless/)

[Amazon CloudWatch Internet Monitor Preview](https://aws.amazon.com/about-aws/whats-new/2022/11/amazon-cloudwatch-internet-monitor-preview/)

## Top Breakout Sessions

Just a small subset of sessions which I personally thought were interesting and worth recommending.

### Get started building your first serverless, event-driven application (SVS209)

Really excellent talk especially for those who are newer to AWS Serverless. It does a great job of modeling organic growth of an application from [MVP](https://en.wikipedia.org/wiki/Minimum_viable_product) to an app with over 100 active subscribers and how the app can be extended with new features with minimal refactoring, while still starting small and simple.

[Link](https://www.youtube.com/watch?v=-WYBOuP1Y6E&list=PL2yQDdvlhXf8Erryfslfo3E42QtcX-aiD&index=3)

### Sustainability in the cloud with Rust and AWS Graviton (DOP315)

Very interesting talk where they did a deep and nuanced comparison between Rust and Java across multiple dimensions (memory consumption, latency, throughput, energy consumption, cost). 

There were some expected results, but many of the findings were a bit surprising. 
Number 5 will shock you! :-)

For example, when they iterated on the Java app to use GraalVM, and the Rust app was using Tokio async/await, the Java app actually out-performed the Rust app in terms of execution speed. Then they refactored the Rust app to use a thread-pool instead of Tokio async/await and surpassed the Java performance.

If you find this topic interesting and like to get in the weeds, you will enjoy this talk.

[Link](https://www.youtube.com/watch?v=HKAl4tSCp7o&list=PL2yQDdvlhXf_fADfZTuoxJyPh2jXSScuR&index=7)

[https://www.graalvm.org/](https://www.graalvm.org/)

[https://github.com/aws-samples/serverless-rust-demo](https://github.com/aws-samples/serverless-rust-demo)

[https://github.com/aws-samples/serverless-graalvm-demo](https://github.com/aws-samples/serverless-graalvm-demo)

### Keynote with Dr. Werner Vogels

Starts with a Matrix skit, which is worth watching on its own. The skit shows 
what a fully synchronous world would look like, versus the async world we 
actually live in. Async is used as the connective tissue which binds the keynote together.

[Link](https://www.youtube.com/watch?v=RfvL_423a-I&list=PL2yQDdvlhXf_hIzmfHCdbcXj2hS52oP9r)

### Building Containers for AWS

Good overview/review of some basic container concepts. 

Covers Finch.

Container building tips / tricks at the end. Good for any teams getting started with containers.

[Link](https://www.youtube.com/watch?v=S7JwFFZ-7_Q&list=PL2yQDdvlhXf-I_sgsmmp8NiGGo-QKUL0f&index=1)


## Misc. Notes

I didn't take notes for all the sessions I watched, but if I did have any notes
I'm dropping them here.

### Multi-Region design patterns and best practices (ARC306)

Very clear session on multi-region design patterns.

[Link](https://www.youtube.com/watch?v=ilgpzlE7Hds&list=PL2yQDdvlhXf861VuvlIvmHRQX965qnt1z&index=10)

### Building a multi-Region serverless application with AWS AppSync (FWM310)

GraphQL pub/sub. Good, clear explanation of the topic and nice comprehensive demo.

[Link](https://www.youtube.com/watch?v=bUvTxaqWXXs&list=PL2yQDdvlhXf_fADfZTuoxJyPh2jXSScuR&index=9)

### What’s new with Amazon ECS (CON323)

Details and demo of a new feature: "Amazon ECS Service Connect".

[Link](https://www.youtube.com/watch?v=1_YUmq3MpYQ&list=PL2yQDdvlhXf8Erryfslfo3E42QtcX-aiD&index=8)

### Optimizing Amazon EKS for performance and cost on AWS (CON324)

If you are intersted in the [Karpenter project](https://github.com/aws/karpenter), 
but not familiar with it this is a good overview of what Karpenter does and 
how it works.

[Link](https://www.youtube.com/watch?v=5B4-s_ivn1o&list=PL2yQDdvlhXf-I_sgsmmp8NiGGo-QKUL0f&index=3)