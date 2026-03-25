#import "@preview/elsearticle:2.0.0": *

== Strategies

I assume `strategy` is a unique way to play, which does not provide a clear challenge. Also those strategies will affect only power and tool managment, because gameplay-wise Ultimatum doesnt have any strategy.

There is currently 3 different strategies for Ultimatum.

=== Old strategy

=== Idea

Old strategy is the first strategy for Ultimatum. Main idea of that strategy is to cycle tools like `[PG + Fan > SV > GMB]`, but this cycle is not entirely formal and it can be interrupted by various situations. You make a lot of noice by using `PG + Fan`, therefore you forced to do SV for Music Man after every `PG + Fan`. For Music Man special attack you stall him and use PG in that time. And at the night start you use PG always until first Music Man special attack.

That strategy is objectively the worst because of ineffective use of PG. In the last section using PG not in Music Man special attack was proved to give power disadvantage. (This does not apply to the use of PG at the beginning of the night). Other things in strategy are not so bad actually. You can play Ultimatum like that and it wont be a lot difficult.

#link("https://www.youtube.com/watch?v=JIN3X9j1qsw")[
  Strat demonstration (by serdnALof)
]

=== Easy (NPG) strategy

Easiest or NPG strat is in my opinion the most easier way to play Ultimatum(and to get first win).

Core idea is to not use PG at all after beginning of the night. That makes gameplay a little easier since Music Man is no more an active thread. You can stall him but that doesnt important. And you can manage tools in your own way(like GMB + Fan combo which i mainly use).

The only disadvantage for that strategy is power. I breakdown difficulties in details later.

#link("https://google.com")[
  Strat demonstration (by )
]

=== Greenrun strategy

Mathimatically the best strategy for making greenruns. It just fixes main old strategy problem and uses PG in most efficent way.

You still use PG at the start and while first Music Man special attack. But later you use PG *only* for Music Man abuse during his attack(and maybe before night end, if you have good Music Man pace). Tool management overall is not so important.

#link("https://youtu.be/_oJzSz9PodE")[
  Strat demonstration (by me😼)
]

== Self imposeds

I assume `self imposed` is a such way to play which provide a clear challenge.

There is currently 2 beaten self imposeds for Ultimatum.

=== No Fan (NPG)

That self imposed doesnt let you use Fan for cooling, so you forced to cool with AC, wasting more power. Gameplay wise that challenge slightly easier that regular Ultimatum, because you make less noice and auto counter Rockstar Freddy and Nighmare Chica.

To know how much is Ultimatum No Fan is harder than regular Ultimatum, we need to calculate the difference between AC and Fan cooling powerwise.

Lets define a 'temp cycle', A time for a temperature to up from 60 to 80, and from 80 to 60 by specific cooling device in seconds(Eq. @nofan:fancycle, @nofan:accycle)

$ c_(f a n) = 20 + 20/(t_(f a n)) approx 31.1 $ <nofan:fancycle>
$ c_(a c) = 20 + 20/(t_(a c)) approx 28.3  $ <nofan:accycle>

After that we can found amount of 'temp cycles' in night(Eq. @nofan:fanamount, @nofan:acamount)

$ a_(f a n) = 360 / c_(f a n) = 360 / 31.1 approx 11.57 $ <nofan:fanamount>
$ a_(a c) = 360 / c_(a c) = 360 / 28.3 approx 12.7  $ <nofan:acamount>

We can floor those values, assuming that we can let temperature go up in night end(in last 'temp cycle') _Plus, it doent rly affect the answer_

$ a_(f a n) = 11 $ <nofan:fanamount:round>
$ a_(a c) = 12 $ <nofan:acamount:round>

And then we can found a whole working time of a cooling device, by multiplying amount of cycles by working time in cycle(Eq. @nofan:fanamount, @nofan:acamount)

$ s_(f a n) = 11 dot 20/t_(f a n) approx 122.2 $ <nofan:fantime>
$ s_(a c) = 12 dot 20/t_(a c) approx 100 $ <nofan:actime>

and finally we can calculate power drain(in hard mode ofc), Fan takes 1 power drain, AC takes 1.5

$ p_(f a n) = p_(h m)(s_(f a n)) approx -28.57 $ <nofan:fananswer>
$ p_(a c) = 1.5 dot p_(h m)(s_(a c)) approx -35 $ <nofan:acanswer>

We get difference is about 8%. Actially Ultimatum No Fan is around 7-8% Ultimatum greenrun.

Also Power Generator is kinda useless in that self imposed. The most efficent way to use PG it combine it with Fan, and you cant do that in No Fan. You can use PG only at the start.

=== Phone Guy All Night (NPG)



== Difficulties

=== Greenrun

I will defile `ulti x`, as *greenrun-wise* difficulty to beat Ultimatum with x percent greenrun using greenrun strategy. Greenrun difficulty $eq.not$ overall difficulty.

So there: 
- `ulti 0`
- `ulti old strat (= ulti 1)`
- `ulti npg (= ulti 2-3)`
- `ulti baseline (= ulti 4)` - _average Ultimatum gameplay without mistakes._
- `ulti nf (= ulti 7-8)`
- `ulti nf npg (= ulti 8-9)`
- `ulti pgan (= ulti 11-12)`
- `ulti pgan npg (= ulti 13-14)`

=== Overall

Defenitions:
- $approx$ - Basically the same difficulty.
- $lt.tilde$ - Slightly harder.
- $lt$ - Significatly harder.
- $lt.double$ - Way harder. 

And overall difficulties:

`ulti npg` $lt.tilde$ `ulti baseline` $lt$ `ulti nf` $approx$ `ulti nf npg` $approx$ `ulti 8` $lt.double$ `ulti 12` $lt.double$ `ulti pgan` $lt.tilde$ `ulti 14` $lt.tilde$ `ulti pgan npg` 