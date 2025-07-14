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

Input parameter গুলো decleare করা হয় function এর নামের পরের parenthesis (বা বাংলায় যেটাকে ১ম / প্রথম bracket বলে) `()`. আর প্রতিটি parameter এর নিজের একটি নাম থাকে, followed by a color `:` । আর colon এর পরে থাকে এর (data) type.

For example, এই `green` function `name‌` নামের একটি `&str` type এর input parameter নেয় । `&str` হলো string slice.

```rust
// An input parameter
//        👇
fn greet(name: &str) -> String {
    format!("Hello, {}!", name)
}
```

যদি একাধিক input parameter থাকে, তাহলে সেগুলো comma দিয়ে separate করা হয় ।

### Type annotations

যেহেতু আমরা "types" কয়েকবার mention করেছি, সেহেতু clearly বলে নেই, Rust একটা **statically typed language** । Rust এর প্রতিটি value'র একটি type থাকে, আর compile time এ ঐ type **অবশ্যই** জানা থাকতে হবে (compiler এর) ।

Type এর মাধ্যমে আমরা একধরণের **static analysis** এর way . ধরতে পারেন type গুলো একধরণের **tag** যেটা compiler প্রতিটি value'র সাথে add করে । আর এই tag এর উপর depend করে compiler আলাদা আলাদা rules enforce করতে পারে । যেমন আপনি একটা string আর number mathematically যোগ করতে পারবে না । কিন্তু ২ টা number কে পারবেন ।
ঠিকমত স্বদ-ব্যবহার করতে পারলে অনেক ধরণের runtime bugs prevent করতে পারে এই type system ।

এটা in general, শুধু rust এর ক্ষেত্রে না । তবে rust খুব সুন্দর করে implement (and enforce) করে ।

