# Rust Learning Resources

**Date:** 2022-10-05

**Categories:**
`rust, learning`

## About

The intention of this blog post is to serve as a quick cheatsheet for those
who may be interested in learning Rust, whether for the first time or to 
take existing skills to the next level.

I am by no means a Rust expert, but I've found these resources helpful and I
hope some of them will help you too!

As I come across new resources, I'll be sure to update this page.

## The Rust Book (official)

The first place you should start is the official docs - they are fantastic!

Particularly, I think the [The Rust Book](https://doc.rust-lang.org/book/) 
should be everybody's first stop. 

It is official, and it is entirely free. 
I've read it cover-to-cover and re-read certain sections. I love that the 
example programs in the book are simple enough to easily understand, but still
complex enough to seem like they are modeling a real-world problem that is 
worth solving.

## Rust By Example (official)

If you come from another compiled language or you enjoy more to-the-point 
and terse examples, you may enjoy 
[Rust By Example](https://doc.rust-lang.org/stable/rust-by-example/).

It is also an excellent resource after you have read *The Rust Book* and just
need a quick review of a specific topic.

*The Rust Book* and *Rust By Example* are not the only official Rust learning 
resources. More can be found here: 
[https://www.rust-lang.org/learn](https://www.rust-lang.org/learn).

## No Boilerplate (youtube)

The [No Boilerplate](https://www.youtube.com/c/NoBoilerplate/videos) YouTube
channel has some interesting lightning talks about various Rust topics.

You won't be learning any topics in-depth in the seven to twelve minute videos,
but they often offer an interesting angle on a topic. Additionally, the videos
might serve as a nice bit of motivation to continue your Rust studies, as you
get glimpses of things that are possible in Rust, and some of Rust's unique
value propositions.

If you only watch one video, watch:
[Rust: Your code can be PERFECT](https://youtu.be/Q3AhzHq8ogs)

Sure, the title has a strong whiff of clickbait and the video has more than a 
strong taste of Rust Kool-Aid, but, in my mind, the point is still valid:
with Rust, once your code compiles, you'll likely spend more time implementing
new features and fixing logical bugs, than fixing bugs arising from safety 
issues or stability issues.

## Cliffle (blog)

There are some really excellent Rust posts on [https://cliffle.com/blog](https://cliffle.com/blog).

**Some posts of note:**

- [The Typestate Pattern in Rust](https://cliffle.com/blog/rust-typestate/)

  Highly recommended reading. The Typestate Pattern is not unique to Rust, but
  Rust's language design lends itself very well to this powerful pattern.

- [Why Rust mutexes look like they do](https://cliffle.com/blog/rust-mutexes/)

  I love this type of article. It is in the format where a common complaint is 
  explored and, in good faith, the author attempts to address the complaint. 
  In this case, the author explores an alternate mutex implementation in Rust 
  with the goal of it being more like a C/C++ mutex. As we go on this journey 
  with the author, we find several major problems. In order to solve those 
  problems, we find that the only viable solution ends up looking almost 
  exactly like the Rust standard library mutex implementation.

  A great reason to read this article is that you might learn something about C
  and C++, mutexes, and software engineering in general.

- [Prefer Rust to C/C++ for new code](https://cliffle.com/blog/prefer-rust/)

  If you are looking for an article to help convince your boss (or yourself) to
  take the plunge and invest the time and effort to switch to Rust, this article
  might be for you. As an added bonus, this article is extremely pragmatic and
  does not blindly recommend Rust - it includes an excellent 
  "When to not use Rust" section as well.

## Faster Than Lime (blog)

Amos, over at [https://fasterthanli.me/](https://fasterthanli.me/) writes 
intensely technical, excellent, and almost-always Rust-centric posts.

The blog features Cool Bear, a cartoon bear who pops into the margins to ask
insightful questions and sometimes poke and prod Amos into re-writing a 
solution in a more elegant way. Cool Bear is very cool.

**Some posts of note:**

- [I want off Mr. Golang's Wild Ride](https://fasterthanli.me/articles/i-want-off-mr-golangs-wild-ride)

An infamous post, with an appeal to choose Rust over Go. Although it may have
started flame-wars, the post is very sincere and his argument is very carefully 
laid out. Very strongly recommended reading.

- [Lies we tell ourselves to keep using Golang](https://fasterthanli.me/articles/lies-we-tell-ourselves-to-keep-using-golang)

A sequel to *I want off Mr. Golang's Wild Ride*. If you made it 
through the original, you will definitely want to read this one.

- [Advent of Code 2020](https://fasterthanli.me/series/advent-of-code-2020)

All the posts in the Advent of Code series offer some great insights into 
solving various problems with Rust. It is interesting to see which crates 
he selected for the various problems. I recommend starting at Day 1 and working
your way forward.

## Learn Rust With Entirely Too Many Linked Lists (unofficial)

[Learn Rust With Entirely Too Many Linked Lists](https://rust-unofficial.github.io/too-many-lists/)

I've not read through the entire book, but it seems promising. I would probably 
not recommend this as your first foray into Rust-land - The Rust Book is a much
kinder, gentler, and probably more useful introduction.

One of the common arguments against using Rust goes something like: 
"It is impossible to implement a linked list in (safe) Rust, so you shouldn't 
use Rust". The book offers a very thorough exploration of this topic.

As advertised, it definitely involves too many linked lists. 
