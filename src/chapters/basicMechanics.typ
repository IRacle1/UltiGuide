== Power

Power is a non negative integer, which initially is setted to 100999, displayed power percentage is an integer division of power by 1000(so it basically thousands of power value, 70123 $->$ 70%, 6709 $->$ 6%). Power decrease fully based on the power usage.
Power usage is also a non negative integer, and its in-game variable completely matches with the intuitive meaning of it. 1 closed door and no active tools is equal to 1 usage, 2 closed doors and GMB are 3 usage and so on.

=== Power drain

Below is power decreasing pseudocode @power:drain:fig taken directly from decompiled UCN : Recode.

#figure(
  image("../images/powercalc.png"),
  caption : [Clickteam expression for calculating power drain]
) <power:drain:fig>

Where: 
- `Alterable Value C("#Values")` - Power value.
- `Alterable Value E("#Values")` - Power usage.
- `Global Value A` - Kinda deltatime, for simplification in expressions we'll assume that the game is consistently running at 60 fps, for 60 fps that deltatime will always return ~1.
- `Global Value I` - Hard mode flag, $1$ if hard more enabled, $0$ if not. Power drain actually nerfed by 5% in hard mode.

We can write down the expression more clearly (see Eq. @power:drain1:eq).

$ p_(n e w) = p_(o l d) - 4.1u(1 - h m * 0.05) $ <power:drain1:eq>

But to properly work with power drains, it will be easier to extract from expression only 'removing' part, and use it define a function $p(u)$ - the amount of power drained for 1 second with $u$ usage. Clickteam expression performs every frame, and power is also not in percentage units, so we need to converts units (multiply by 60 for seconds, divide by 1000 for power percentage). Also we can separete normal and hard mores power drains.

With all of that we got (see Eq. @power:drain:nm:eq, @power:drain:hm:eq).

$ p_(h m)(u) = -4.1u * (0.95 * 60) / 1000 = -0.2337u $ <power:drain:nm:eq>
$ p_(n m)(u) =- 4.1u * 60 / 1000 = -0.246u $ <power:drain:hm:eq>

For example for 1 usage for 1 second in hard more we will drain $p_(h m)(1) = 0.2337 approx 0.25%$ power, with is pretty accurate.

=== Power generator

Except power drain, your power can be changed using `Power Generator`(first tool).

In valilla UCN power generator just subtracts 1 from your usage, but in Recode it will be actually generate power.

Below is power generator pseudocode @power:gen:fig taken directly from decompiled UCN : Recode

#figure(
  image("../images/powergen.png"),
  caption : [Clickteam expression for power change for power generator]
) <power:gen:fig>

Where variables means the same.

We can write down the expression more clearly (see Eq. @powen:gen1:eq).

$ p_(n e w) = p_(o l d) + 4.5 / 5 $ <powen:gen1:eq>

And the same way converting units, we will get amount or energy power gen will generate for 1 second (see Eq. @powen:gen2:eq).

$ p g = 4.5 / 5 * 60 / 1000 = 0.054 $ <powen:gen2:eq>

Pretty low, $approx 4.5$ times lower than power drain with 1 usage. We use a single value instead of function because power generator is not depends on anything at all.

=== Overall

#let powertab = {
  table(
  columns: 5,
  table.header(
    [*0 usage*],
    [*1 usage*],
    [*PG*],
    [*1 usage + PG (HM)*],
    [*2 usage*],
  ),
  [$p_(n m)(0)$], [$p_(n m)(1)$], [$p g$], [$p g + p_(h m)(1)$], [$p_(n m)(2)$],
  [$0%$], [$-0.246%$], [$0.054%$], [$0.054 - 0.2337 = -0.1797%$], [$-0.492%$],
)
}

#figure(
    powertab,
    kind: table,
    caption : [Power drain in different scenarios]
) <tab:power>

== Noice/Music Man

`Noice` is also important mechanic. Noice value is a non negative integer, There are couple scenarios when you can gain noice value:
- Tools (2 noice for power generator, 1 noice for AC/fan/heater)
- Phantom Mangle jumpscare (1 noice)
- Phone guy missed call (1 noice)
- Helpy jumpscare (5+ noice)
- Lolbit ($0->6$ noice)

Noice itself doent do anything, it works only in combnination with `Music Man`. Music Man has progress from 0 to 100, he kill instantly kills you as soon as he reach $ >=100$ progress. So here is how it works:

if you have 0 noice, his progress will decrease, if you have $ >0$ noice, his progress will increase linearly with respect to noice. And if you have `Silent ventilation` tool active, his progress additionally will be decreased(but active silent ventilation wont stop his noice progression).

=== Noice Progression

So here his progress gain pseudocode @mm:gain:fig taken directly from decompiled UCN : Recode

#figure(
  image("../images/mmincrease.png"),
  caption : [Clickteam expression for mm progress gain]
) <mm:gain:fig>

where:
- `Alterable Value E("Music Man")` - Music Man progression value.
- `Alterable Value F("#Values")` - Noice value.
- `Alterable Value A("Music Man")` - Music Man AI value.

In expression form (Eq. @mm:gain1:eq).

$ m_1 = m_0 + 0.015n * (A I)/20 $ <mm:gain1:eq>

Using that we can define function $m^(+)(n, a)$ - Music Man progression gain on $a$ ai value, from 1 second of $n, (n>0)$ noice value(Eq. @mm:gain2:eq):

$ m^(+)(n, a) = 0.015 * 60 * n * a/20 = 0.9n * a/20 $ <mm:gain2:eq>

There is no difference bettween normal and hard modes for Music Man progression. 

Now about decreasing his progress. Here his progress decrease pseudocodes, generic @mm:decrease:nm:fig and hard mode additional @mm:decrease:hm:fig taken directly from decompiled UCN : Recode.

#figure(
  image("../images/mmdecreasenm.png"),
  caption : [Clickteam expression for mm progress decrease on normal mode]
) <mm:decrease:nm:fig>

#figure(
  image("../images/mmdecreasehm.png"),
  caption : [Clickteam expression for additional mm progress decrease on hard mode]
) <mm:decrease:hm:fig>

On hard mode Music Man has progress decrease nerf, so in hard mode code it additionally adds some value.

We are gonna to define constants $m^(-)_(n m)$ and $m^(-)_(h m)$, the amount of Music Man progress decrease (with 0 noice) for 1 seconds on normal and hard modes respectively(Eq. @mm:decrease:eq).

$ m^(-)_(n m) = -60 * 0.03 = -1.8 \ m^(-)_(h m) = m^(-)_(n m) + 60 * 0.025 = -1.8 + 1.5 = -0.3 $ <mm:decrease:eq>

And we can make generic functions $m(n, a)$ - Music Man with $a$ AI progression change for 1 second with $n$ noice for normal and hard modes(Eq. @mm:progress:eq).

$
  m_(n m)(n, a) = cases(
    -1.8"," n = 0,
    0.9n * a/20"," n > 0
    ) \
  m_(h m)(n, a) = cases(
    -0.3"," n = 0,
    0.9n * a/20"," n > 0
    ) 
$ <mm:progress:eq>

=== Silent ventilation

For silent ventilation we have different behavior for normal and hard modes. On hard mode silent ventilation is buffed, it decrease Music Man progress by a additional value. And again silent ventilation dont prevent basic Music Man progress. Here his silent ventilation progress decrease pseudocodes, generic @mm:sv:nm:fig and hard mode additional @mm:sv:hm:fig taken directly from decompiled UCN : Recode.

#figure(
  image("../images/mmsvnm.png"),
  caption : [Clickteam expression for silent ventilation mm progress decrease on hard mode]
) <mm:sv:nm:fig>

#figure(
  image("../images/mmsvhm.png"),
  caption : [Clickteam expression for additional silent ventilation mm progress decrease on hard mode]
) <mm:sv:hm:fig>

We are gonna to define constants $m^(s v)_(n m)$ and $m^(s v)_(h m)$, the amount of Music Man progress decrease with silent ventilation for 1 seconds on normal and hard modes respectively(Eq. @mm:sv:eq).

$ m^(s v)_(n m) = -60 * 0.015 = -0.9 \ m^(s v)_(h m) = m^(s v)_(n m) - 60 * 0.1 = -0.9 - 6 = -6.9 $ <mm:sv:eq>

As we can see, silent ventilation affects REALLY more on hard mode.

=== Overall

#let noicetab = {
  table(
  columns: 4,
  table.header(
    [*0 noice (NM)*],
    [*0 noice (HM)*],
    [*1 noice (HM)*],
    [*2 noice + SV (HM)*],
  ),
  [$m_(n m)(0, 20)$], [$m_(h m)(0, 20)$], [$m_(n m)(1, 20)$], [$m_(h m)(2, 20) + m^(s v)_(h m)$],
  [$-1.8$], [$-0.3$], [$0.9$], [$1.8 - 6.9 = -5.1$],
)
}

#figure(
    noicetab,
    kind: table,
    caption : [Music Man progression in different scenarios(Music Man is on 20 AI)]
) <tab:power>

== Temperature

Temperature is a decimal number capped in range of $[60; 120]$, game puhsiches you for high temperature value (manly that does Jack-O-Chica), so you should constantly decrease your temperature using AC/Fan.

=== Idle temperature

Below is idle temperature increase pseudocode @temp:gain:fig taken directly from decompiled UCN : Recode.

#figure(
  image("../images/tempincreace.png"),
  caption : [Clickteam expression for calculating idle temp gain]
) <temp:gain:fig>

`Alterable Value G` is a temperature value itself. However, this expression has a condition: if AC or/and fan is active, it will not be applied.

So after converting units and defining only 'delta' part, we obtain the temperature change in 1 second. (Eq. @temp:gain:eq).

$ t_(i d l e) = 0.0167 * 60 approx 1 $ <temp:gain:eq>

UCN : Recode idle temperature gain is the same as in valilla UCN, 1$degree$ per second.

=== AC/fan

In normal mode, both AC and fan work with 1 usage and 1 noice. However in hard mode, AC power drain buffed by additional 0.5 usage(1.5 usage in total).

Below is fan @temp:fan:fig and AC @temp:ac:fig temperature decrease pseudocode taken directly from decompiled UCN : Recode.

#figure(
  image("../images/fantemp.png"),
  caption : [Clickteam expression for calculating fan temp decrease]
) <temp:fan:fig>

#figure(
  image("../images/actemp.png"),
  caption : [Clickteam expression for calculating AC temp decrease]
) <temp:ac:fig>

In converted expressions(Eq @temp:tools:eq):

$ t_(f a n) = - 0.03 * 60 = -1.8 \ t_(A C) = - 0.04 * 60 = -2.4 $ <temp:tools:eq>

In normal mode AC is way better than fan. AC has the same power usage, but it cold temperature $approx 33%$ faster. However in hard more AC has 1.5 power drain, and fan becomes more effective power-wise.

=== Heater

`Heater` is another temperature tool, 1 usage, 1 noice, makes your temperature rise faster.

Below is heater @temp:heater:fig temperature increase pseudocode taken directly from decompiled UCN : Recode.

#figure(
  image("../images/heatertemp.png"),
  caption : [Clickteam expression for calculating AC temp decrease]
) <temp:heater:fig>

In converted expressions(Eq @temp:heater:eq):

$ t_(h e a t) = 0.02 * 60 = 1.2 $ <temp:heater:eq>

You also should know that unlike AC/Fan, idle temperature gain works with heater, so you get combined gain.

=== Overall

#let temptab = {
  table(
  columns: 4,
  table.header(
    [*Nothing*],
    [*Fan*],
    [*AC*],
    [*Heater*],
  ),
  [$t_(i d l e)$], [$t_(f a n)$], [$t_(a c)$], [$t_(h e a t) + t_(i d l e)$],
  [$1 degree$], [$-1.8 degree$], [$-2.4 degree$], [$1.2 + 1 = 2.2 degree$],
)
}

#figure(
    temptab,
    kind: table,
    caption : [Temperature changes in different scenarios(per seconds)]
) <tab:temp>


=== Jack-O-Chica

`Jack-O-Chica` is the main temperature controller, she will progress on high temperature values($ >=90$ on normal mode, $ >=80$ on hard more). Her progress start with 0, and each frame you have high temperature, some value will be subtract from her progress. We will jumpscare you as soon as she reach $<= -40$ progress.

Below is progression subtract pseudocode for Jack-O-Chica @temp:joc:fig taken directly from decompiled UCN : Recode.


#figure(
  image("../images/jackochica.png"),
  caption : [Clickteam expression for calculating Jack-O-Chica progress]
) <temp:joc:fig>

Where `Alterable Value A` - Jack-O-Chica AI value, and `Alterable Value I` is a some temperature coefficient @temp:joc:coef:fig, which is equal to $(t - 59)/60 + 1$.

#figure(
  image("../images/tempcoef.png"),
  caption : [Clickteam expression for calculating temperature coefficient]
) <temp:joc:coef:fig>

There wont be such a point in outputting the progress function, Ill just tell you how long it takes for Jack-O-Chick to fully progress, for normal mode, starting with $90 degree$ and dont use any cooling tool, you can survive for $approx 12$ seconds, for hard mode starting from $80 degree$ you can survive $approx 13$ seconds. So in any case you let Jack-O-Chica progress for 10 seconds.

For hard mode you can dont use any cooling device if you are $60 degree$ on 5:30, or $70 degree$ on 5:40, for normal mode $60 degree$ on 5:20 and so on.

== Lefty/GMB