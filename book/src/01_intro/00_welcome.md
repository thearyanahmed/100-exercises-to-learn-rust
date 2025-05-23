# Welcome, and hello

Welcome to **"100 Exercises To Learn Rust"**!

এই course টা আমাদের Rust এর core concept গুলো শেখাবে, one exercise at a time.\
এখানে আমরা Rust এর syntax, এটার (strong) type system, standard library আর এর ecosystem নিয়ে শিখবো ইনশাআল্লাহ।

এই course follow করতে হলে rust এর prior knowledge এর দরকার নেই । তবে, অন্য যে কোনো একটা programming language এর prior experience থাকা লাগবে ।
একি সাথে আমরা expect করছি না যে systems programming বা memory management (related) topic গুলো নিয়ে reader এর expereince আছে । সেগুলো এই বই এ cover করবে ।

In other words, we'll be starting <u>from scratch</u>!

Reader ছোট ছোট manageable step এ Rust এর knowledge build up করবে ।
এই বই (টা পড়া শেষে) আমরা প্রায় ১০০ এর মত exercise solve করবো, যেটা ছোট থেকে medium-size Rust project এ কাজ করার জন্য যথেষ্ট হবে (hopefully) .

## Methodology

এই বই টা "learn by doing" principle follow করে , আর design করা হয়েছে interactive আর hands-on হতে ।

<div class="warning">
    এই বই টি 100 Exercises To Learn Rust এর বাংলা অনুবাদ । আপনি যদি english এ পড়তে আগ্রহী হন, তাহলে <a href="https://rust-exercises.com/100-exercises/" target="_blank">এখান থেকে</a> পড়তে পারবেন ।
</div>

## লেখক এবং অনুবাদকারী সম্পর্কে

এই course টা Luca Palmieri তৈরি করেছেন। উনি বর্তমানে Principal Engineering Consultant হিসাবে Mainmatter এ আছেন .
এই বইটি অনুবাদ করেছে <a href="https://thearyanahmed.com/whoami/" target="_blank">Aryan</a>, বর্তমানে DigitalOcean এ Software Engineer হিসাবে কাজ করছি । আমার সাথে যোগাযোগ করতে হলে [linkedin.com/in/thearyanahmed/](https://www.linkedin.com/in/thearyanahmed/) এ reach out করতে পারেন ।


## Mainmatter

[Mainmatter](https://mainmatter.com/rust-consulting/) developed this course
to be delivered in a classroom setting, over 4 days: each attendee advances
through the lessons at their own pace, with an experienced instructor providing
guidance, answering questions and diving deeper into the topics as needed.\
You can sign up for the next tutored session on [our website](https://ti.to/mainmatter/rust-from-scratch-jan-2025).
If you'd like to organise a private session for your company, please [get in touch](https://mainmatter.com/contact/).

You can also take the courses on your own, but we recommend you find a friend or
a mentor to help you along the way should you get stuck. You can
find solutions for all exercises in the
[`solutions` branch of the GitHub repository](https://github.com/thearyanahmed/100-exercises-to-learn-rust/tree/solutions).

## Formats

You can go through the course material [in the browser](https://rust-exercises.com/100-exercises/) or [download it as a PDF file](https://rust-exercises.com/100-exercises-to-learn-rust.pdf), for offline reading.\
If you prefer to have the course material printed out, [buy a paperback copy on Amazon](https://www.amazon.com/dp/B0DJ14KQQG/).

## বই-Structure

Screen এর বামপাশে বইটি বিভিন্ন section-এ ভাগ করা হয়েছে। প্রতিটি section নতুন concept বা feature তৈরি করে । আপনি ঠিক মত বুঝতে পারছেন কিনা সেটা যাচাই করার জন্য প্রতিটি section এর সাথে exercise paired থাকছে ।

You can find the exercises in the
[companion GitHub repository](https://github.com/thearyanahmed/100-exercises-to-learn-rust).\
বই টা শুরু করার আগে, make sure to clone the repository. And I recommend, যদি কয়েকজন মিলে শিখতে পারেন । তাহলে অনেক কিছু নওজে

```bash
# If you have an SSH key set up with GitHub
git clone git@github.com:thearyanahmed/100-exercises-to-learn-rust.git
# Otherwise, use the HTTPS URL:
#   https://github.com/thearyanahmed/100-exercises-to-learn-rust.git
```

We also recommend you work on a branch, so you can easily track your progress and pull
in updates from the main repository, if needed:

```bash
cd 100-exercises-to-learn-rust
git checkout -b my-solutions
```

All exercises are located in the `exercises` folder.
Each exercise is structured as a Rust package.
The package contains the exercise itself, instructions on what to do (in `src/lib.rs`), and a test suite to
automatically verify your solution.

### Tools

To work through this course, you'll need:

- [**Rust**](https://www.rust-lang.org/tools/install).
  If `rustup` is already installed on your system, run `rustup update` (or another appropriate command depending on how you installed Rust on your system) to ensure you're running on the latest stable version.
- _(Optional but recommended)_ An IDE with Rust autocompletion support.
  We recommend one of the following:
  - [RustRover](https://www.jetbrains.com/rust/);
  - [Visual Studio Code](https://code.visualstudio.com) with the [`rust-analyzer`](https://marketplace.visualstudio.com/items?itemName=matklad.rust-analyzer) extension.

### Workshop runner, `wr`

To verify your solutions, we've also provided a tool to guide you through the course: the `wr` CLI, short for "workshop runner".
Install `wr` by following the instructions on [its website](https://mainmatter.github.io/rust-workshop-runner/).

Once you have `wr` installed, open a new terminal and navigate to the top-level folder of the repository.
Run the `wr` command to start the course:


```bash
wr
```

`wr` will verify the solution to the current exercise.\
Don't move on to the next section until you've solved the exercise for the current one.

> We recommend committing your solutions to Git as you progress through the course,
> so you can easily track your progress and "restart" from a known point if needed.

Enjoy the course!

## Author

This course was written by [Luca Palmieri](https://www.lpalmieri.com/), Principal Engineering
Consultant at [Mainmatter](https://mainmatter.com/rust-consulting/).\
Luca has been working with Rust since 2018, initially at TrueLayer and then at AWS.\
Luca is the author of ["Zero to Production in Rust"](https://zero2prod.com),
the go-to resource for learning how to build backend applications in Rust.\
He is also the author and maintainer of a variety of open-source Rust projects, including
[`cargo-chef`](https://github.com/LukeMathWalker/cargo-chef),
[Pavex](https://pavex.dev) and [`wiremock`](https://github.com/LukeMathWalker/wiremock-rs).
