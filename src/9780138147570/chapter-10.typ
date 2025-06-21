#import "@local/skeleton:0.1.0": *

// TODO: write a plot-zero function

= 10.7

#solution[
  The poles of the $z$-transform are

  $
    z_1 = j/2, wide z_2 = -j/2, wide z_3 = 3/4, wide z_4 = -1/2.
  $

  Based on these poles, we may choose from the following ROCs:

  + $0 < norm(z) < 1/2$,

  + $1/2 < norm(z) < 3/4$,

  + $3/4 < norm(z)$.
]

= 10.16

Note that, for a stable discrete-time LTI system with rational system function $H(z)$, the condition (a) for causality is equivalent to "the outermost pole is inside the unit circle".

== (a)

#solution[
  The given $z$-transform has a pole at infinity. Therefore, it is not causal.
]

== (b)

#solution[
  The poles of the $z$-transform are at $z = 1/4$ and $z = -3/4$. Therefore, it is causal.
]

== (c)

#solution[
  The given $z$-transform has a pole at $z = 4/3$. Therefore, it is not causal.
]

= 10.21

== (a)

#solution[
  For $x[n] = delta[n + 5]$,

  $
    X(z) = z^5, wide "All" z,
  $

  as shown in the figure below.

  #figure("TODO")
]

== (g)

#solution[
  For $x[n] = 2^n u[-n] + 1/4^n u[n - 1]$, by table 10.1 and 10.2,

  $
    X(z) = 2/(2 - z) + 1/(4 z - 1), wide 1/4 < norm(z) < 2,
  $

  as shown in the figure below. 

  #figure("TODO")
]

= 10.24

== (a)

#solution[
  We have

  $
    X(z) = (1 - 2 z^(-1))/((1 + 1/2 z^(-1)) (1 + 2 z^(-1))) = 8/(3 (1 + 2 z^(-1))) - 5/(3 (1 + 1/2 z^(-1))).
  $

  Since $x[n]$ is absolutely summable, the ROC is $1/2 < norm(z) < 2$. It follows that

  $
    x[n] = 8/3 (-1/2)^n u[n] - 5/3 (-2)^n u[n].
  $
]

== (b)

#solution[
  We have

  $
    X(z) = 1 - z^(-1) + 1/2 z^(-2) - 1/4 z^(-3) + dots.c = 1 - sum_(n = 1)^oo (-1/2)^(n - 1) z^(-n).
  $

  Using the analysis equation, we get

  $
    x[n] = delta[n] - (-1/2)^(n - 1) u[n - 1].
  $
]

= 10.33

= 10.37

= 10.42

== (b)

= 10.59
