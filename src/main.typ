#import "@preview/elsearticle:2.0.0": *

#let abstractText = read("abstract.txt")

#show: elsearticle.with(
  title: "Ultimative Ultimatum guide",
  authors: (
    (
      name: "IRacle",
      institutions: ("🤯",)
    ),
  ),
  journal: "UwU",
  abstract: abstractText,
  format: "3p",
  numcol: 1,
  // line-numbering: true,
)

#show math.equation: set text(size: {1.1em})

= Introduction

This guide, written more for fun, breaks down all the information needed to understand the optimal strategies for the Ultimatum and additional challenges(whole UCN Recode in general btw). I wrote this guide in a pseudo-scientific style not because it was necessary, but because I thought it would be funnier that way, and my native language is not English, so in some places that I deliberately wrote without a translator, the text will be terrible.

While understanding the strategies in this guide doesnt require any special knowledge, understanding proofs for some strats may require some basic math skills(But you can just ignore the proofs and take my word for it that everything in this guide is true).

the first chapter will include basic game breakdown, how everything works at a numerical level. The second chapter will use the material from the first chapter to derive and substantiate the key hypotheses needed for the strategies itself. And the third chapter includes the strategies themselves. If youre not interested in formulas, conclusions, and proofs, you can skip straight to that chapter(but know that Ill be sad 😭😭😭).

= Basic Mechanics

#include "chapters/basicMechanics.typ"

= Section 1

#lorem(50)

== Subsection 1

#lorem(10) (see Eq. @eq1).

$
y = alpha x + beta tau integral_0^x d x
$ <eq1>
where ...

$
  x = integral_0^x d x #<eqa>\
  (u v)' = u' v + v' u #<eqb>
$ <eq2>

Eq. @eqa is a simple integral, while Eq. @eqb is the derivative of a product of two functions. These equations are grouped in Eq. @eq2.

== Features

=== Table

Below is Table @tab:tab1.

#let tab1 = {
  table(
  columns: 3,
  table.header(
    [*Header 1*],
    [*Header 2*],
    [*Header 3*],
  ),
  [Row 1], [12.0], [92.1],
  [Row 2], [16.6], [104],
)
}

#figure(
    tab1,
    kind: table,
    caption : [Example]
) <tab:tab1>

=== Figures

Below is Fig. @fig:logo.

#figure(
  image("images/typst-logo.svg", width: 50%),
  caption : [Typst logo - Credit: \@fenjalien]
) <fig:logo>

=== Subfigures

Below are Figs. @figa and @figb, which are part of Fig. @fig:typst.

#subfigure(
figure(image("images/typst-logo.svg"), caption: []), <figa>,
figure(image("images/typst-logo.svg"), caption: []), <figb>,
columns: (1fr, 1fr),
caption: [(a) Left image and (b) Right image],
label: <fig:typst>,
)

#show: appendix

= Appendix A

== Figures

In @fig:app

#figure(
  image("images/typst-logo.svg", width: 50%),
  caption : [Books cover]
) <fig:app>

== Subfigures

Below are @figa-app and @figb-app, which are part of @fig:typst-app.

#subfigure(
figure(image("images/typst-logo.svg"), caption: []), <figa-app>,
figure(image("images/typst-logo.svg"), caption: []), <figb-app>,
figure(image("images/typst-logo.svg"), caption: []), <figc-app>,
figure(image("images/typst-logo.svg"), caption: []), <figd-app>,
columns: (1fr, 1fr, 1fr),
caption: [(a) Left image and (b) Right image],
label: <fig:typst-app>,
)

== Tables

In @tab:app

#figure(
    tab1,
    kind: table,
    caption : [Example]
) <tab:app>

== Equations

In @eq

$
y = f(x)
$ <eq>

#nonumeq[$
    y = g(x)
    $
]

$
y = f(x) \
y = g(x)
$
