# Introduction

This is a simple Tetris clone, with some help of [GDScript Dude](https://www.youtube.com/watch?v=9vnC5778gIY&list=PLFTE4-k_Qh3tfkbsapJdRBmU0Y8gze_dl)
This project is meant as an example of using [GDNim](https://github.com/geekrelief/gdnim) and [Godot](https://godotengine.org/).
Using GDNim we get a lot more goodies that Nim has to offer, at the cost of it being bleeding edge.

# Getting Started

For building and playing around, you will need to have the following installed:
- Godot Engine (3.3)
- Nim 1.4.6

# GDNim Structure

```
.
├── build.ini
├── app
│   ├── assets
│   ├── _dlls
│   ├── _gdnlib
│   ├── scripts
│   └── scenes
├── components
├── deps
└── gdnim

```
- `build.ini` contains all the GDNim specific settings. You will need to change the settings under the `[Godot]` header to match your own configuration. Besides this you can take a look and see what's going on.
- `app` houses the actual Godot project, so scenes and assets will be put here. Also generated scripts by GDNative also are put here.
- `src`, here all my Nim code will reside.
- `deps`, dependencies of `GDNim`, you can safely ignore this if you just want to use `GDNim`.
- `gdnim` contains all the `GDNim` specific code. For _actually_ making a game you also can ignore this.

