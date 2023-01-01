# KubeCon 2022

**Date:** 2022-12-31

**Categories:**
`k8s, kubernetes, kubecon, conference, notes`

## About

KubeCon 2022 was from October 24, 2022 – October 28, 2022 in Detroit.

Event site:
[https://events.linuxfoundation.org/kubecon-cloudnativecon-north-america/](https://events.linuxfoundation.org/kubecon-cloudnativecon-north-america/)

Today as I am writing this, it is New Year's Eve, and I am reflecting on 
2022 and thinking ahead to 2023. It seems like a perfect time to collect my
notes from this past KubeCon into a succinct post with a particular focus on 
what topics I think will be important in 2023.

This was my first ever KubeCon, and it was a fantastic experience. I learned a
lot about a wide variety of topics. This quick post certainly will not even 
attempt to capture the entire experience. If you haven't been, and you get an
opportunity to attend, either in-person or virtually, I highly recommend it.

This year, I attended virtually. I wrote some thoughts about virtual vs in-person
attendance in [my post on AWS re:Invent 2022](https://wlieberz.github.io/aws-reinvent-2022/).
While the specifics differ between the two conferences, the broad strokes should remain
relevant, so if you are interested in that topic, I'd suggest giving that post a look.

## Top 3 Topics in 2023

Time to make predictions! It will be fun to look back in a year's time
to see if any of these predictions were even close to being accurate.

Without further ado, I believe these will be the top three most important or 
influential trends or topics in 2023 in the Kubernetes space:

1. WebAssembly (WASM) native containers
2. User Namespaces in K8s
3. Gateway API

For each of these topics I am including one or two presentations and some 
supporting links for further reading.

### WebAssembly (WASM) native containers

Docker has [announced beta support for WASM Containers](https://docs.docker.com/desktop/wasm/).
I feel that this will lower the barrier to entry significantly and allow many developers to 
experiment and see if this technology can help their technology and business goals.

There are two WASM-related presentations from KubeCon which I caught which I think
are worth a look.

#### Cloud-Native WebAssembly: Containerization On the Edge

I think the presentation offers a decent overview of WebAssembly.

Specifically, the [WasmEdge](https://github.com/WasmEdge/WasmEdge) runtime is presented.

[Presentation](https://www.youtube.com/watch?v=Kg5z5A5wH0A)

[Demo repo](https://github.com/second-state/microservice-rust-mysql)

#### WebAssembly for a Reactive Internet of Things

This presentation approaches WASM from a very different angle, which I found very
intriguing: distributing code updates as a configuration change. More specifically, 
using WebAssembly to distribute a single function as a WASM binary which is 
imported into the main firmware, e.g. for an IoT Edge device which is otherwise
difficult to update.

[Presentation](https://www.youtube.com/watch?v=f-iWOwx6wkc)

### User Namespaces in K8s

#### Run As “Root”, Not Root: User Namespaces In K8s

This is a great talk. Quick and to the point, it explains what works currently, 
what doesn't, and goes into some of the details of the challenges of implementing
support for User Namespaces in K8s - [KEP-127](https://github.com/kubernetes/enhancements/blob/master/keps/sig-node/127-user-namespaces/README.md). 

To help convince you that this will be an important topic in 2023, take note of 
the demo in the presentation, which shows a container-escape-to-root exploit
which is mitigated by this new feature, even as the underlying host remains 
unpatched against the CVE used in the demo.

There are currently some limitations, e.g.: no stateful pods, but these are
likely to be addressed soon. Requires K8s v1.25.0+

[Presentation](https://www.youtube.com/watch?v=uRp0YltujVE)

[man 7 user_namespaces](https://man7.org/linux/man-pages/man7/user_namespaces.7.html)

### Gateway API

#### One API To Rule Them All? What the Gateway API Means For Service Meshes

In short, Gateway API seeks to create a unified API spec for both ingresses 
and service-meshes across various implementations.

I am excited about this since it should hopefully create greater cohesion and
maturity in two related areas where Kubernetes seems to be more fragmented
and confusing than it needs to be.

[Presentation](https://www.youtube.com/watch?v=vYGP5XdP2TA)