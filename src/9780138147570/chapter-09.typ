#import "@local/skeleton:0.1.0": *

= 9.21

== (b)

#solution[
  Using Euler's relation, we can write

  $
    x(t) = (e^(-4 t) - j/2 e^(-(5 - 5 j)t) + j/2 e^(-(5 + 5 j)t)) u(t).
  $

  Then the Laplace transform of $x(t)$ can be expressed as

  $
    X(s) = integral_(-oo)^oo e^(- 4 t) u(t) dif t
           - j/2 integral_(-oo)^oo e^(-(5 - 5 j)t) u(t) dif t
           + j/2 integral_(-oo)^oo e^(-(5 + 5 j)t) u(t) dif t.
  $

  Each of these integrals represents a Laplace transform of the type encountered in Example 9.1. It follows that

  $
    e^(4 t) u(t) &<-->^cal(L) 1/(s + 4), quad cal(R e){s} > -4,\
    e^(-(5 - 5 j)t) u(t) &<-->^cal(L) 1/(s - 5 + 5 j), quad cal(R e){s} > -5,\
    e^(-(5 + 5 j)t) u(t) &<-->^cal(L) 1/(s - 5 - 5 j), quad cal(R e){s} > -5.
  $

  For all three Laplace transforms to converge simultaneously, we must have $cal(R e){s} > -4$. Consequently, the Laplace transform of $x(t)$ is

  $
    X(s) = 1/(s + 4) - j/(2(s - 5 + 5 j)) + j/(2(s - 5 - 5 j)), quad cal(R e){s} > -4.
  $
]

== (i)

#solution[
  $
    x(t) = delta(t) + u(t) <-->^cal(L) X(s) = 1 + 1/s, quad cal(R e){s} > 0.
  $
]

== (j)

#solution[
  Note that $delta(3 t) + u(3 t) = delta(t) + u(t)$. Therefore, the Laplace transform is the same as the result of the previous part.
]

= 9.22

== (e)

= 9.23

== (1)

= 9.25

== (c)

= 9.26

= 9.31

= 9.35

= 9.40
