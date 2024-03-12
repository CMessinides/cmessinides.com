---
title: Sadie
---

Sadie is a programming language I've been working on this year. I've long wanted a little <abbr title="domain-specific language">DSL</abbr> that makes it easy and fun to write random text generators. Inspired by tabletop <abbr title="role-playing games">RPGs</abbr>, I imagined a language with first-class support for dice and tables.[^1] A built-in system for grammars and generating text, something like [Tracery](https://tracery.io/) at the language level, also seemed appealing.

[^1]: Jeremy Valentine's [dice-roller plugin](https://github.com/javalent/dice-roller) for Obsidian planted the seed for this idea several years ago. I loved how easy it was to add an interactive dice roller to a document, and not just for numbers--you could roll on tables, lists, paragraphs, and all sorts of text objects. I eventually moved away from Obsidian (Electron was too slow for my old ThinkPad), but Jeremy's plugin is still a guiding example for Sadie.

I started out thinking of Sadie as _a Lisp for interactive documents_. Over time, I switched to _a shell for procedural generation_. I think the design goals have moved somewhere in between the two of those. I want the homoiconicity and interactivity of Lisps,[^2] along with the [batteries-included, vectorized, point-free convenience](http://www.oilshell.org/blog/2017/01/15.html) of shell scripting.

[^2]: I say Lisps, but Sadie now draws more heavily from a different branch of homoiconic languages: the [Rebol](https://www.rebol.com/), [Red](https://www.red-lang.org/), and [Rye](https://ryelang.org/) side of the family tree.

Non-goals include:

- **General-purpose programming**: I could see Sadie growing into other domains, like interactive notebooks or 2D graphics, but for now the focus is narrowly on procedural text generation.
- **Macros and meta-programming**: Homoiconicity paves the way for advanced features like these, and I want to leave that door open, but more than that I want Sadie to be beginner-friendly, and macros are a big bucket of complexity.
- **Flexible output formats**: Sadie will target the web, and just the web, for now. The ideal Sadie output is a web component you can stick on a page or share via some hosted URL.
- **JavaScript interop**: I had big plans for flexible JS interop, but again, that invites an `npmjs.com`-sized ball of complexity that I'd rather not deal with. Maybe someday.
- **Module system and package management**: I'm also leaving these aside. A robust standard library _is_ a goal, and hopefully addresses 80% of the need for third-party packages for now.
