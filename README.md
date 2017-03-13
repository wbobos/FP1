# VLC Library

William Bobos

#Introduction
My background spans many areas, primarily the art side.
I worked in 2D/3D animation, web design, game development, and many other
industries.

I'm also a big fan of movies, music, and home theater.
I decided to try out the VLC library, since I use that across all my PCs.

#Installation
Well installation was supposedly straightforward. To use the VLC library,
a simple line of code was needed:

```racket
#lang racket

(require vlc)
```

The `(require vlc)` is all that's needed to utilize the library.

Unfortunately, this didn't work at all. It may be outdated.
After tireless eons of searching, I found a solution.

```(require (planet neil/vlc:1:0))```

Once the above line was substituted, I was able to interface with VLC.

#Experimentation
I started with simple goals:

* import VLC
* load VLC
* play a video

Once these goals were accomplished, I'd attempt to incorporate more VLC
features into my code.

### Import VLC
Fortunately, I accomplished the importation of the library.

```(require (planet neil/vlc:1:0))```

The original code ```(require vlc)``` may be deprecated,
and not function properly.


### Load VLC
I wanted to start out by externally launching VLC.

There are numerous parameters that may be used to launch VLC.
I chose the most cleanest code possible:

```
(start-vlc)
```

This code will launch the VLC application cleanly (ie.: no auto-playing).


### Play a video
I decided to utilize remote streaming to play a video.
On my personal website, I have several videos of robots I created for
the Robotics I class. This code allows you to import, and play remote video.

```
(start-vlc
  "http://billbobos.com/video/wall-traversing-3-state-3.3gp")
```
My initial goals complete, I decided to use additional commands to try
and import all of my videos.


# Implementation
I decided on an implementation where VLC was utilized to play all
of the robotics videos on my site.
This required code that handled the following tasks:

* Import video files
* Create VLC Playlist
* Launch VLC
* Play video


# Final Results
The results were fantastic:

![test image](/racket-vlc.png?raw=true "VLC")


