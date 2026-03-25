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
)

#show math.equation: set text(size: {1.1em})

= Introduction

This guide, written more for fun, breaks down all the information needed to understand the optimal strategies for the Ultimatum and additional challenges. I wrote this guide in a pseudo-scientific style because I thought it would be funnier that way. And my native language is not English, so in some places that I deliberately wrote without a translator, the text can be 🥀.

While understanding the strategies in this guide doesnt require any special knowledge, understanding proofs for some strats may require some basic math skills(But you can just ignore the proofs and take my word for it that everything in this guide is true).

the first chapter will include basic game breakdown, how everything works at a numerical level. The second chapter will use the material from the first chapter to derive and substantiate the key hypotheses needed for the strategies itself, if youre not interested in formulas, conclusions and proofs, you can skip straight to that chapter. And the third chapter includes the strategies themselves.

= Basic mechanics

#include "chapters/basicMechanics.typ"

= Advanced conclusions

#include "chapters/advanced.typ"

= Gameplay

#include "chapters/strategies.typ"