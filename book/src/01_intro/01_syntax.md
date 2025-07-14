# Syntax

<div class="warning">

Don't jump ahead!\
 \
আগের section এর exercise complete করার পরে এই section টি শুরু করা উচিত (for every chapter) ।
Exercise টি পাবেন [course GitHub's repository](https://github.com/thearyanahmed/100-exercises-to-learn-rust) repository'র exercise directory তে (`exercises/01_intro/00_welcome`)।
Exercise এর solution গুলো complete করে [`wr`](00_welcome.md#workshop-runner-wr) দিয়ে verify করতে পারেন ।

</div>

আগের task টি exercise হিসাবে গোনা উচিত না, তবে এটি আপনাকে বেশ কিছু Rust **syntax** এর সাথে পরিচিত করেছে।
আমরা গত exercise এ use করা rust syntax every single detail (এখনি) explain করবো না । Instead, আমরা _just enough_ over করবো, যাতে আমরা সামনে আগাতে পারি (without getting stuck in the details) ।\

One step at a time!

## Comments

`//` দিয়ে code এ single-line comment করতে পারেন ।
```rust
// This is a single-line comment
// Followed by another single-line comment
```

## Functions

Rust এ `fn` keyword দিয়ে function define করা হয়, তারপরে function এর name, function টির input parameters, আর তার return type. আর function এর body curly braces বা বাংলায় যেটাকে ২য় (second) bracket বলে সেটা দিয়ে enclose করে দেয়া হয় ।

আগের exercise এ আপনারা `greeting` function এর example দেখেছিলেন,

```rust
// `fn` <function_name> ( <input params> ) -> <return_type> { <body> }
fn greeting() -> &'static str {
    // TODO: fix me 👇
    "I'm ready to __!"
}
```

`greeting` এর কোনো input parameter নেই আর এটি একটা string slice (`&'s static str`) এর reference return করছে । **যদি এগুলো বুঝতে অসুবিধা হয়, be patient**.

### Return type

একটা function যদি কিছু return না করে তাহলে function define করার সময় return type omit করা যায় । তবে rust এর প্রতিটি function কিছু না কিছু return করে । যদি একটি function specific ভাবে কিছু return না করে, সেক্ষেত্রে এটা আসলে unit type `()` return করে ।
আর `test_welcome` function এ এটাই হয়েছে ।

```rust
fn test_welcome() {
    assert_eq!(greeting(), "I'm ready to learn Rust!");
}
```

উপরের function টি এই নিচের function টির equivalent:

```rust
// Spelling out the unit return type explicitly
//                   👇
fn test_welcome() -> () {
    assert_eq!(greeting(), "I'm ready to learn Rust!");
}
```

### Returning values

একটি function-এর শেষ expression হলো implicite ভাবে (বা নির্দিষ্ট ভাবে) return করার data type

```rust
fn greeting() -> &'static str {
    // This is the last expression in the function
    // Therefore its value is returned by `greeting`
    "I'm ready to learn Rust!"
}
```

আবার চাইলে ‌`return` keyword দিয়ে early value return করা যেতে পারে ।

```rust
fn greeting() -> &'static str {
    // Notice the semicolon at the end of the line!
    return "I'm ready to learn Rust!";
}
```

Idiomatic rust হলো যখন `return` omit করা possible, তখন omit করা ।

### Input parameters

Input parameters are declared inside the parentheses `()` that follow the function's name.\
Each parameter is declared with its name, followed by a colon `:`, followed by its type.

For example, the `greet` function below takes a `name` parameter of type `&str` (a "string slice"):

```rust
// An input parameter
//        👇
fn greet(name: &str) -> String {
    format!("Hello, {}!", name)
}
```

If there are multiple input parameters, they must be separated with commas.

### Type annotations

Since we've been mentioned "types" a few times, let's state it clearly: Rust is a **statically typed language**.\
Every single value in Rust has a type and that type must be known to the compiler at compile-time.

Types are a form of **static analysis**.\
You can think of a type as a **tag** that the compiler attaches to every value in your program. Depending on the
tag, the compiler can enforce different rules—e.g. you can't add a string to a number, but you can add two numbers
together.
If leveraged correctly, types can prevent whole classes of runtime bugs.
