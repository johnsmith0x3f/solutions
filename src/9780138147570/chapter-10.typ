#import "@local/skeleton:0.1.0": *

// TODO: write a plot-zero function

= 10.7

#solution[
  The poles of the $z$-transform are

  $
    z_1 = 1/2 j, wide z_2 = -1/2 j, wide z_3 = 3/4, wide z_4 = -1/2.
  $

  Based on these poles, the ROC can be

  $
    0 < norm(z) < 1/2, wide 1/2 < norm(z) < 3/4, wide "or" 3/4 < norm(z).
  $
]

= 10.16

Note that, for a stable discrete-time LTI system with rational system function $H(z)$, the condition (a) for causality is equivalent to "the outermost pole is inside the unit circle".

== (a)

#solution[
  The given $z$-transform has a pole at infinity. Therefore, it is not causal.
]

== (b)

#solution[
  The poles of the $z$-transforklkjm are at $z = 1/4$ and $z = -3/4$. Therefore, it is causal.
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

== (a)

#solution[
  Taking the $z$-transform of the equation and simplifying, we get

  $
    H(z) = Y(z)/X(z) = 1/(1 - 1/2 z^(-1) + 1/4 z^(-2)).
  $
]

== (b)

#solution[
  If $x[n] = (1/2)^n u[n]$, then

  $
    X(z) = 1/(1 - 1/2 z^(-1)), wide norm(z) > 1/2.
  $

  Hence

  $
    Y(z) = H(z) X(z) = 1/(1 - 1/2 z^(-1)) + (1/2 z^(-1))/(1 - 1/2 z^(-1) + 1/4 z^(-2)).
  $

  Using table 10.2, we get

  $
    y[n] = (1/2)^n u[n] + 2/sqrt(3) (1/2)^n sin(pi/3 n) u[n].
  $
]

= 10.37

== (a)

#solution[
  Let $w[n]$ denote the signal represented by the top-middle node. Then from the diagram we know that

  $
    x[n] = w[n] + 1/3 w[n - 1] - 2/9 w[n - 2], \
    y[n] = w[n] - 9/8 w[n - 1].
  $

  Hence

  $
    H(z) = Y(z)/X(z) = (Y(z)/W(z))/(X(z)/W(z)) = (1 - 9/8 z^(-1))/(1 + 1/3 z^(-1) - 2/9 z^(-2)).
  $

  Taking the inverse $z$-transform, we obtain

  $
    y[n] + 1/3 y[n - 1] - 2/9 y[n - 2] = x[n] - 9/8 x[n - 1].
  $
]

== (b)

#solution[
  The poles of the $z$-transform are at $z = 1/3$ and $z = -2/3$. Therefore, the system is stable.
]

= 10.42

== (b)

#solution[
  Applying the unilateral $z$-transform, we obtain

  $
    cal(Y)(z) - 1/2 z^(-1) cal(Y)(z) - 1/2 y[-1] = cal(X)(z) - 1/2 z^(-1) cal(X)(z).
  $

  For the zero-input response, setting $cal(X)(z) = 0$, we get $cal(Y)(z) = 0$. Then by applying the inverse unilateral $z$-transform, we obtain $y_("zi")[n] = 0$.

  For the zero-state response, setting $y[-1] = 0$, we get $cal(Y)(z) = cal(X)(z) = 1/(1 - z^(-1))$. Then by applying the inverse unilateral $z$-transform, we obtain $y_("zs")[n] = u[n]$.
]

= 10.59

== (a)

#solution[
  Let $w[n]$ denote the signal represented by the top-middle node. Then from the diagram we know that

  $
    x[n] = w[n] + k/3 w[n - 1], \
    y[n] = w[n] - k/4 w[n - 1].
  $

  Hence

  $
    H(z) = Y(z)/X(z) = (Y(z)/W(z))/(X(z)/W(z)) = (1 - k/4 z^(-1))/(1 + k/3 z^(-1)).
  $

  Since $H(z)$ correspond to a causal filter, the ROC is $norm(k)/3 < norm(z)$, as shown in the figure below.

  #figure("TODO")
]

== (b)

#solution[
  For the system to be stable, there must be $norm(k)/3 < 1$, that is, $norm(k) < 3$.
]

== (c)

#solution[
  Since $x[n] = (2/3)^n$, we have

  $
    y[n] = H(2/3) x[n] = (1 - 1/4 (2/3)^(-1))/(1 + 1/3 (2/3)^(-1)) (2/3)^n = 5/12 (2/3)^n.
  $
]
