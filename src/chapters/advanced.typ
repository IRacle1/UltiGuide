== Linear power drain

The more interesting property of power drain function, that is fully linear with respect to usage(it have form $p(u)= k * u$) this implies some properties you probably should know.

Imagine situation, you have 2 active threads. You should close left door for 1 second, and right door also for 1 second($x$ amount of closed doors is $x$ usage, same as in UCN : Recode). What the best method to optimive power drain in that situation?
- Close the doors together.
- Close the doors separately (close left $->$ open left $->$ close right $->$ open right).
- Something more complex, combining first 2 methods (close left $->$ after $x$ time close right $->$ close left $->$ close right).

For now we can breakdown all those methods.

If we chose close doors together, we will have 2 usage for 1 second, our total power drain will be (Eq. @eqpowermethod1).

$ p(1 + 1) = p(2) $ <eqpowermethod1>

If we chose close doors separately, we will have 1 usage for 2 seconds(first second we have left door closed, last second we have right door closed) (Eq. @eqpowermethod2).

$ p(1) + p(1) = 2p(1) $ <eqpowermethod2>

Third method is actually a generalization of first two methods. Suppose $x, 0<=x<=1$, we will close the right door in $x$ seconds after closing the left door. If $x = 0$, we get first case, closing doors together. If $x = 1$, we get second case, closing doors separately. So now our task is to find optimal value $x$ where power drain will be lowest.

#figure(
  image("../images/powermethod3.png"),
  caption : [accurate and professional illustration of the door closing process depending on $x$]
) <powermethod3fig>

As you can se in picture @powermethod3fig, we have 2 sections with 1 usage for $x$ seconds, and 1 section with 2 usage for $1-2x$ seconds (Eq. @eqpowermethod3):

$ x p(1) + (1-x)p(2) + x p(1) = 2x p(1) + (1-x)p(2) $ <eqpowermethod3>

The result now depends only on the nature of the function’s operation. To solve the problem in the general case, we would need to find the minimum of the expression using its derivative by x, but in our case it is sufficient to simply substitute the expression $p(u)=k u$, using fact that our function is `linear` with respect to usage (Eq. @eqpowermethod31).

$ 2x p(1) + (1-x)p(2) = 2x k + (1-x)2k = 2x k + 2k - 2x k = 2k $ <eqpowermethod31>

We simplyfy the expresison, and got an answer independent of $x$, using only fact that our power drain function is linear. That means whatever $x$ value will be, or whatever door stratery we will use, our power drain always be the same. This property follows from the fact that energy drain is energy usage multiplied by a constant; therefore, $p(x) = x p(1)$. For comparison, in the original UCN the power drain is quadratic $p(u) = a u^2$. in the same way, it can be shown that in valilla the most efficent way is close doors separately, so you should minimize power usage.

So overall in Recode we shouldn't care about high usage at all, problem with energy will be if you bad with opening doors timings or overusing tools (using gmb when lefty has 0 progress, AC/fan when temp is 60)

== Power generator is useless

== Music Man abuse (Power generator is NOT useless)

== 5 AM power optimizations

