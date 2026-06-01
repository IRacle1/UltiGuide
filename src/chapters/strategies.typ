#import "@preview/elsearticle:2.0.0": *

== Strategies

I assume `strategy` is a unique way to play, which does not provide a clear challenge. Also those strategies will affect only power and tool managment, because gameplay-wise Ultimatum doesnt have any strategy.

There is currently 3 different strategies for Ultimatum.

=== Old strategy

Old strategy is the first strategy for Ultimatum. Main idea of that strategy is to cycle tools like `[PG + Fan > SV > GMB]`, but this cycle is not entirely formal and it can be interrupted by various situations. You make a lot of noise by using `PG + Fan`, therefore you forced to do SV for Music Man after every `PG + Fan`. For Music Man special attack you stall him and use PG in that time. And at the night start you use PG always until first Music Man special attack.

That strategy is objectively the worst because of ineffective use of PG. In the last section using PG not in Music Man special attack was proved to give power disadvantage. (This does not apply to the use of PG at the beginning of the night). Other things in strategy are not so bad actually. You can play Ultimatum like that and it wont be a lot difficult.

#link("https://youtu.be/JIN3X9j1qsw")[
  Strat demonstration (by serdnALof)
]

=== Easy (NPG) strategy

Easiest or npg strat is in my opinion the most easier way to play Ultimatum(and to get first win).

Core idea is to not use PG at all after beginning of the night. That makes gameplay a little easier since Music Man is no more an active thread. You can stall his special attack but that doesnt important. And you can manage tools in your own way(like `[ GMB + Fan]` at the same time which i mainly use).

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

I assume `self imposed challenge`(or sic) is a such way to play which provide a clear challenge.

There is currently 3 unique self imposeds for Ultimatum.

=== No Fan

That self imposed doesnt let you use Fan for cooling, so you forced to cool with AC, wasting more power. Gameplay wise that challenge slightly easier that regular Ultimatum, because you make less noise and auto counter Rockstar Freddy and Nighmare Chica.

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

And then we can found a whole working time of a cooling device, by multiplying amount of cycles by working time in cycle(Eq. @nofan:fantime, @nofan:actime)

$ s_(f a n) = 11 dot 20/t_(f a n) approx 122.2 $ <nofan:fantime>
$ s_(a c) = 12 dot 20/t_(a c) approx 100 $ <nofan:actime>

and finally we can calculate power drain(in hard mode ofc), Fan takes 1 power drain, AC takes 1.5

$ p_(f a n) = p_(h m)(s_(f a n)) approx -28.57 $ <nofan:fananswer>
$ p_(a c) = 1.5 dot p_(h m)(s_(a c)) approx -35 $ <nofan:acanswer>

We get difference is about 7.5%. You can get an accurate value by making the temperature cycle time approach zero, and the remainder will become less significant. So Ultimatum No Fan is around 6-7% Ultimatum greenrun.

Also Power Generator is kinda useless in that self imposed. The most efficent way to use PG it combine it with Fan, and you cant do that in No Fan. You can use PG only at the start.

In general i dont like that challenge because it affects only greenruning, but No Fan can be a build up for a bigger fish.

#link("https://youtu.be/yLxxLwFyaOw")[
  NF NPG demonstration (by serdnALof)
]

=== Phone Guy All Night

The formal hardest single self imposed Ultimatum challenge. I dont recommend you to try it if you have $lt 12%$ greenrun PB. 

So core part of that challenge is to dont mute Phone Guy call, which makes you get passive +1 noise value and annoying Phone Guy sound for entire night. That moves Music Man from C tier to a SS+, making him a hardest animatronic. Core of tool cycle doesnt change, but you forced to deal with Music Man like he is the second Lefty. And overall tools become extremly tight. There is two main ways to calm Music Man: Using Fan mainly with SV, or mainly with GMB. You can chose your own way to deal with Music Man, but for me it is better to use `[Fan + SV]`, because with 2 noise value Music Man can kill you pretty fast. However combining Fan with tools doesnt make Ultimatum pgan tool management free like in regular Ultimatum. Most of situations will require you to think and analyze Lefty/Music Man/Temperature pace and use whatever you need. I highly recommend you to keep Lefty at stage 2-3 most of the time, because there will be tight situations with Music Man special attack and other gameplay.

And there are specific thing about Music Man abusing. Firstly, you are forced to do abuses due to impossible power, so you cant just use SV for 10 second once per hour. And second, in pgan Music Man special attack doent just happends like in Ultimatum greenruns. Most of time time Music Man progress will be $80+$, and it will stall his attack. You cant keep Music Man at lower progress values, in that case abuse dont give you any power profit. You should have mental timer to know if Music Man can start his attack, counter any tool threads like Lefty, heater ducts, Rockstar Freddy and others, and start his attack by lowering his progress below 80. In that moment dont overuse SV too much, or you counter Music Man instantly.

At the beginning of the night you should use PG for 2-3 seconds(skipping first MM abuse because it gives disadvantage in pgan). Phone Guy should spawn in $22-42$ second, forcing first Music Man special attack after. During that attack you can use PG a little. After that, there will be a filler part that plays exactly like a base Ultimatum, until MM reaches 80 progress. This is where the difficulty begins, and what I described below. Its better to catch each MM abuse as quickly as possible and use PG to the maximum during that time. This is basically all you need to know about strategy.

#link("https://youtu.be/cmuSKUMm8p8")[
  PGAN demonstration (by me😈😈)
]

=== No Clicking Helpy

Analog for pgan, due to not clicking on Helpy you forced to take every his jumpscare. Helpy generates $8$ noise for $4$ seconds, so from Helpy jumpscare Music Man on 20 AI will gain $4 dot m_{h m}(8, 20) = 4 dot 8 dot 0.9 = 32 dot 0.9 = 28.8$, also difficult part is Helpy jumpscare itself, during that you cant see everyting and it forces you to slow down and wait.

The general stragery is to allign and force Music Man special attacks to Helpy jumpscares. Stall Music Man attack by keeping him $80+$ progress, Helpy gives you $10$ seconds to click him, so after around $5-7$ seconds you see him you will use SV and force Music Man attack, so Helpy jumpscare wont affect Music Man progress. Beacuse of Music Man attack cooldown is around $40$ seconds, and Helpy spawn time after jumpscare is around $10$ seconds, you can counter one in every $2-4$ times Helpy spawns.

I got about 3:30 on pace in 30 minutes, and it _seems_ to be easier than pgan. Im not gonna finish it and beat it, so go on if you want top 15 verification.

== Self-Imposeds Combinations

=== Combinations with NPG

For most of self-imposeds removing Power Generator doent do anyting gameplay-wise. 
- For nf npg it makes power harder by $1%$. That is barely harder than nf.
- For pgan npg power becomes $2%$ harder. Do the same thing as you do in regular pgan but without PG. Anyway you should do Music Man abuses as well because they still frezee his progresson. pgan npg actually not so difficult comparing to pgan.
- nch npg is actually different, by removing PG you remove variety to manage Music Man progress as you want.

#link("https://youtu.be/yLxxLwFyaOw")[
  NF NPG demonstration (by serdnALof)
]

#link("https://youtu.be/9Im5Mu9zmeA")[
  PGAN NPG demonstration (by me😈😈)
]

=== PGAN NF (NPG)

The hardest combination that is surely possible. Gameplay really differs from pgan. Because you cant use fan, you cant cool office while doing GMB/SV(`[Fan + SV/GMB]` combo). You forced to keep Lefty on early stages and cool with AC if you had no other priorities. Ofc you still should abuse Music Man. If you lost your Lefty/Music Man/temperature focus it will be very hard to recover.

I would say greenrun wise difference between base ulti and pgan is the same as between pgan and pgan nf npg. In base ulti nf makes power like $6%$ greenrun, but pgan nf has $4-5%$ harder power than pgan, due to overall less noise from AC than from Fan, so you use SV slightly less often.

Npg adds the same difficulty as in pgan npg, so power becomes additionaly becomes $1-2%$ harder.

In my experience, greenrun level required for pgan nf npg is at least $17.5%$💀☠️🎃.

#link("https://youtu.be/zjdi9I3Bsf4")[
  PGAN NF NPG demonstration (by me😈😈)
]

=== PGAN NCH

No. Maybe? Idk.

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
- `ulti nf npg (= ulti 8)`
- `ulti pgan (= ulti 11-12)`
- `ulti pgan npg (= ulti 13)`
- `ulti pgan nf (= ulti 15-16)`
- `ulti pgan nf npg (= ulti 17.5)`

=== Overall

Human-like comparing strategies/self imposeds difficulties.

Defenitions:
- $approx$ - Basically the same difficulty.
- $lt.tilde$ - Slightly harder.
- $lt$ - Significatly harder.
- $lt.double$ - Way harder. 
- $lt.triple$ - 💀☠️💀. 

And overall difficulties from easiest to hardest:

`npg` $approx$ `greenrun strat` $lt.tilde$ `old strat` $lt$ `nf` $lt.tilde$ `nf npg` $lt.triple$ `pgan` $lt.tilde$ `pgan npg` $lt.double$ `pgan nf` $lt$ `pgan nf npg`