#import "@preview/elsearticle:2.0.0": *

== Strategies

I assume `strategy` is a unique way to play, which does not provide a clear challenge. Also those strategies will affect only power and tool managment, because gameplay-wise Ultimatum doesnt have any strategy.

There is currently 3 different strategies for Ultimatum.

=== Old strategy

Old strategy is the first strategy for Ultimatum. Main idea of that strategy is to cycle tools like `[PG + Fan > SV > GMB]`, but this cycle is not entirely formal and it can be interrupted by various situations. You make a lot of noice by using `PG + Fan`, therefore you forced to do SV for Music Man after every `PG + Fan`. For Music Man special attack you stall him and use PG in that time. And at the night start you use PG always until first Music Man special attack.

That strategy is objectively the worst because of ineffective use of PG. In the last section using PG not in Music Man special attack was proved to give power disadvantage. (This does not apply to the use of PG at the beginning of the night). Other things in strategy are not so bad actually. You can play Ultimatum like that and it wont be a lot difficult.

#link("https://youtu.be/JIN3X9j1qsw")[
  Strat demonstration (by serdnALof)
]

=== Easy (NPG) strategy

Easiest or NPG strat is in my opinion the most easier way to play Ultimatum(and to get first win).

Core idea is to not use PG at all after beginning of the night. That makes gameplay a little easier since Music Man is no more an active thread. You can stall him but that doesnt important. And you can manage tools in your own way(like GMB + Fan combo which i mainly use).

The only disadvantage for that strategy is power. I breakdown difficulties in details later.

#link("https://youtu.be/_OS2U78fbsA")[
  Strat demonstration (by me😼)
]

=== Greenrun strategy

Mathimatically the best strategy for greenruns. It just fixes main old strategy problem and uses PG in most efficent way.

You still use PG at the start and while first Music Man special attack. But later you use PG *only* for Music Man abuse during his attack(and maybe before night end, if you have good Music Man pace). After you finish Music Man attack, he starts the next attack on average after 40 seconds. In those 40 seconds his progress will get closer but wont go over 80 so his next attack will start as soon as possible(there are will be rare scenarios when Music Man somehow got more than 80 progress, so his attack got stalled, and you will have to use SV). Tool management overall is not so important.

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

We get difference is about 7.5%. You can get an accurate value by making the temperature cycle time approach zero, and the remainder will become less significant. So Ultimatum No Fan is around 6-7% Ultimatum greenrun.

Also Power Generator is kinda useless in that self imposed. The most efficent way to use PG it combine it with Fan, and you cant do that in No Fan. You can use PG only at the start.

In general i dont like that challenge, because it affects only greenruning, but No Fan can be a build up for a bigger fish.

#link("https://youtu.be/yLxxLwFyaOw")[
  NF NPG demonstration (by serdnALof)
]

=== Phone Guy All Night (NPG)

The formal hardest single self imposed Ultimatum challenge. I dont recommend you to try it if you have $lt 12%$ greenrun PB. 

So core part of that challenge is to dont mute Phone Guy call, which makes you get passive +1 noise value and annoying Phone Guy sound for entire night. That moves Music Man from C tier to a SS+, making him a hardest animatronic. Core of tool cycle doesnt change, but you forced to deal with Music Man like he is the second Lefty. And overall tools become extremly tight. There is two main ways to calm Music Man: Using Fan mainly with SV, or mainly with GMB. You can chose your own way to deal with Music Man, but for me it is better to use `[Fan + SV]`, because with 2 noise value Music Man can kill you pretty fast. However combining Fan with tools doesnt make Ultimatum PGAN tool management free like in regular Ultimatum. Most of situations will require you to think and analyze Lefty/Music Man/Temperature pace and use whatever you need. I highly recommend you to keep Lefty at stage 2-3 most of the time, because there will be tight situations with Music Man special attack and other gameplay.

And there are specific thing about Music Man abusing. Firstly, you are forced to do abuses due to impossible power, so you cant just use SV for 10 second once per hour. And second, in PGAN Music Man special attack doent just happends like in Ultimatum greenruns. Most of time time Music Man progress will be $80+$, and it will stall his attack. You cant keep Music Man at lower progress values, in that case abuse dont give you any power profit. You should have mental timer to know if Music Man can start his attack, counter any tool threads like Lefty, heater ducts, Rockstar Freddy and others, and start his attack by lowering his progress below 80. In that moment dont overuse SV too much, or you counter Music Man instantly.

At the beginning of the night you should use PG for 2-3 seconds(skipping first MM abuse because it gives disadvantage in PGAN). Phone Guy should spawn in $22-42$ second, forcing first Music Man special attack after. During that attack you can use PG a little. After that, there will be a filler part that plays exactly like a base Ultimatum, until MM reaches 80 progress. This is where the difficulty begins, and what I described below. Its better to catch each MM abuse as quickly as possible and use PG to the maximum during that time. This is basically all you need to know about strategy.

#link("https://youtu.be/cmuSKUMm8p8")[
  PGAN demonstration (by me😈😈)
]

PGAN NPG gameplay wise is the same, buffing only greenrun part. Do the same thing as you do in regular PGAN but without PG xd. Anyway you should do Music Man abuses as well because they like frezee his progresson. PGAN NPG actually not so difficult comparing to PGAN.

#link("https://youtu.be/9Im5Mu9zmeA")[
  PGAN NPG demonstration (by me😈😈)
]

== Difficulties

I will define `ulti x`, as Ultimatum with $x%$ greenrun using greenrun strategy.

Greenrun difficulty $eq.not$ overall difficulty.

=== Greenrun

Objectively calculated strats/self imposeds greenrun based on Ultimatum greenrun stategy.

So there(from easiest to hardest): 
- `ulti 0`
- `ulti old strat (= ulti 1)`
- `ulti npg (= ulti 3-4)`
- `ulti nf (= ulti 6)`
- `ulti nf npg (= ulti 9)`
- `ulti pgan (= ulti 11-12)`
- `ulti pgan npg (= ulti 13)`

=== Overall

Human-like comparing strategies/self imposeds difficulties.

Defenitions:
- $approx$ - Basically the same difficulty.
- $lt.tilde$ - Slightly harder.
- $lt$ - Significatly harder.
- $lt.double$ - Way harder. 

And overall difficulties from easiest to hardest:

`ulti npg` $approx$ `ulti old strat` $lt.tilde$ `ulti 4` $lt.tilde$ `ulti nf` $approx$ `ulti 5` $lt$ `ulti nf npg` $approx$ `ulti 8` $lt.double$ \ $lt.double$ `ulti 12` $lt.double$ `ulti 14` $lt.tilde$ `ulti pgan` $lt.tilde$ `ulti pgan npg`