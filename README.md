# 2d-games-in-dart

A sort of "living" repository for learning about 2D game development in Dart.

[![Style guide][sty_img]][sty_url]

[sty_url]: https://pub.dev/packages/neodart
[sty_img]: https://img.shields.io/badge/style-neodart-9cf.svg

## Background

I wanted to start developing some medium-complexity 2D games in my limited free
time, and at the same time I wanted to learn about how 2D games are _made_, not
just how to write code for a specific 2D gaming framework.

As a result, most off-the-shelf frameworks were off the table; I would learn
some general knowledge, but not the underlying details - and if I wanted to
change platforms in the future I'd be often learning a whole new framework.

Enter, this repository. As I learn things and techniques, I'll be documenting
the tools, APIs, and techniques I use to develop 2D games in Dart. I'll be
using [Flutter][] as a _low-level embedder and graphics engine_ (closer to the
role of something like [SDL][]), but otherwise writing everything else as plain
Dart code.

> NOTE: I _could_ have used something like Unity or even the [Flame][] engine
> for Flutter, and managed to capture nearly every major platform (Desktop, Web,
> Mobile).
>
> However, I want to be able to more easily try a new language in the future,
> and I was worried about not learning enough about the underyling technology
> and patterns used in 2D game development.
>
> So, for more information, see [`dart:ui`][dart_ui].

[flutter]: https://flutter.dev
[sdl]: https://www.libsdl.org/
[flame]: https://pub.dev/packages/flame
[dart_ui]: https://api.flutter.dev/flutter/dart-ui/dart-ui-library.html

### Acknowledgements

Special thnaks to [github.com/jonahwilliams](https://github.com/jonahwilliams).

## Getting Started

Download and install [Flutter][]. I won't go much more into the details, and
will make assumptions you have familarity running and developing at least basic
Dart and Flutter programs.

[flutter]: https://docs.flutter.dev/get-started/install

While 2D development could work on any platform, for now I am focusing on just
the Mac OS Desktop platform, because (a) that's what I'm developing on and (b)
it's trivial to add other platforms in the future (i.e. web) once I want them.

```sh
flutter create <name>  \
  --platforms macos \
  --org dev.lurey
```
