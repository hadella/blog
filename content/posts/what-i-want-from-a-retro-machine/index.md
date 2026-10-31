---
title: "What I Want From a Retro Machine"
date: 2026-10-27
tags: ["retro-computing", "6502", "x16", "ben-eater", "mega65", "c64u", "basic"]
---

My problem is that I'm hardly picky. So I tried to narrow it down: Mega Drive-class graphics, no
line numbers, and hardware I can actually PEEK and POKE. Here's how the X16, MEGA65, C64U, and 
Agon stack up, and why I'm probably starting with a 6502 on a breadboard anyway.

<!--more-->

My last post was about the arguments: purity, playback machines versus new platforms, and who's
supposedly killing the hobby. This one's personal.

I'd happily play almost anything on almost anything, and for the machines I have no nostalgia
for, a playback box with extras is great. The MEGA65 can even load other cores and become other
machines.

So if I'm going to build or program something, what do I actually want?

## What I'm Looking For {.text-primary}

- **Graphics With Flair**  
  My baseline tolerance for old graphics is the NES. Even the Atari and C64 look really dated to 
  me now, and anything without scrolling, like the TMS9918, is a no. The Mega Drive is about where
  I'd set the bar for retro graphics. I like that the X16 and MEGA65 try to do better than the 
  machines that inspired them.
- **Instant On, With A Readable Language**  
  The appeal of flipping a switch and landing at a prompt is real. But most old BASIC is hard to
  read. I'd take a more modern approach like QuickBASIC or MMBasic over line numbers any day. 
  Commodore's BASIC was more basic than it should have been.
- **Assembly And A Monitor**  
  For an 8-bit machine, assembly and something like Wozmon are a must. Otherwise, why not just 
  write C with raylib on a PC?
- **Hardware I Can Reach**  
  People forget how narrow interfacing got on PCs and Macs compared to the old Commodore and Apple
  machines. I want to PEEK and POKE, and control external hardware. Whether the CPU is "real" 
  matters less; put it in a case and who could tell?

## The Candidates {.text-accent-2}

- **Commander X16:**  
  VERA clears my graphics bar, there's a built-in monitor, and expansion slots for hardware. The
  stock BASIC is line-numbered Commodore BASIC V2 with extensions, but BASLOAD helps: you write
  BASIC in a text file with labels instead of line numbers, and it adds the numbers when it loads.
  Underneath it's still line-numbered BASIC, but you don't have to look at it. Of everything here,
  the builder kit has the most appeal.
- **OtterX:**  
  Another X16, and the designer claims some improvements. But it loses the Apple II feel the 
  original has.
- **MEGA65:**  
  Cool, with strong graphics, extra cores, and a better BASIC than the C64 had, though still 
  line-numbered. At around $840 it's a hefty price. And I question the built-in disk drive. It
  reminds me of the TI-99/4A cup-warmer look, and a 3.5" drive feels odd on a Commodore, even
  if the C65 planned one.
- **C64U:**  
  Legit, and relatively affordable. You get a virtual disk drive but can hook up physical ones
  too, and I'm sure it can do more than games. I'm not aware of any true enhancements, though
  dual SID would be cool, and the stock C64 couldn't do that.
- **Agon Light 2:**  
  Small and cheap, and the hardware is fine. But growing up in the US, I'd never heard of BBC
  BASIC or the BBC Micro until recently, so there's no nostalgia there. The serial-link video
  was pitched as a take on the Atari's approach, but it's a weird division of labor. And the 
  Z80's appeal was a long-lived through-hole DIP part, which is gone now; the Agon's eZ80 is
  surface mount anyway. For me, Z80 machines like the Coleco, Spectrum, SMS, and MSX are all
  from an alternate universe. If I wanted to go that way, plenty of RC2014 projects appeal to
  me more than the Agon.

## Where I'm Headed {.text-accent-1}

The X16 appeals because it's the logical next step from Ben Eater's kit: same W65C02, same W65C22,
same kind of glue logic, plus some special sauce, and it boots real Commodore BASIC V2. BASLOAD
and Prog8 are both on my list to try.

But if the X16 is Ben Eater's kit grown up, I'd rather start closer to the metal. I've been 
6502-curious since I read the KIM-1 manual years ago, and it's the chip behind the Atari, the C64,
the Apple II, and the NES. Any finished system, the X16 included, ties you to its ecosystem, and
some of its design choices get abstracted away. Building up from the chip, I make those choices
myself.

I might combine the two. If I build Ben's 6502, VERA is sold as a standalone module, and adapter
boards already exist to put it on a 65C02 bus. The catch is address decoding. Ben's design decodes
coarsely with one 74HC00, so carving out a window for VERA's registers takes some rework. That's
a good exercise in its own right.

So the plan is Ben Eater's kit first, then VERA on top of it. The one worry is the X16 itself.
In some recent 8-Bit Guy videos, David Murray has started showing Stage-2 prototypes and has
previously griped about sourcing some parts, so the original developer kit may get harder to 
find. If I want the original design, I shouldn't dick around too long.
