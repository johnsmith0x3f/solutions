#import "@local/skeleton:0.1.0": *

#import "@preview/cetz:0.4.0"
#import "@preview/cetz-plot:0.1.2"

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
    e^(4 t) u(t) &<-->^cal(L) 1/(s + 4), wide cal(R e){s} > -4,\
    e^(-(5 - 5 j)t) u(t) &<-->^cal(L) 1/(s - 5 + 5 j), wide cal(R e){s} > -5,\
    e^(-(5 + 5 j)t) u(t) &<-->^cal(L) 1/(s - 5 - 5 j), wide cal(R e){s} > -5.
  $

  For all three Laplace transforms to converge simultaneously, we must have $cal(R e){s} > -4$. Consequently, the Laplace transform of $x(t)$ is

  $
    X(s) = 1/(s + 4) - j/(2(s - 5 + 5 j)) + j/(2(s - 5 - 5 j)), wide cal(R e){s} > -4.
  $
]

== (i)

#solution[
  $
    x(t) = delta(t) + u(t) <-->^cal(L) X(s) = 1 + 1/s, wide cal(R e){s} > 0.
  $
]

== (j)

#solution[
  Note that $delta(3 t) + u(3 t) = delta(t) + u(t)$. Therefore, the Laplace transform is the same as the result of the previous part.
]

= 9.22

== (e)

#solution[
  Let

  $
    X(s) = (s + 1)/(s^2 + 5 s + 6) = 2/(s + 3) - 1/(s + 2).
  $

  From the given ROC, we know that $x(t)$ must be a two-sided signal. Therefore,

  $
    x(t) = 2 e^(-3 t) u(t) + e^(-2 t) u(-t), wide cal(R e){s} > -2.
  $
]

= 9.23

The four pole-zero plots shown may have the following possible ROCs:

- Plot 1: $cal(R e){s} < -2$ or $-2 < cal(R e){s} < 2$ or $2 < cal(R e){s}$.

- Plot 2: $cal(R e){s} < -2$ or $-2 < cal(R e){s}$.

- Plot 3: $cal(R e){s} < 2$ or $2 < cal(R e){s}$.

- Plot 4: The entire $s$-plane.

Let $R$ denote the ROC of the Laplace transform $X(s)$ of the signal $x(t)$.

== (1)

#solution[
  From table 9.1, we know that

  $
    x(t) e^(-3 t) <-->^cal(L) X(s + 3).
  $

  The ROC $R_1$ of this new Laplace transform is $R$ shifted to the left by 3. Since $x(t) e^(-3 t)$ is absolutely integrable, $R_1$ must contain the $j omega$ axis.

  - For plot 1, this is possible only if $R$ was $2 < cal(R e){s}$.

  - For plot 2, this is possible only if $R$ was $-2 < cal(R e){s}$.

  - For plot 3, this is possible only if $R$ was $2 < cal(R e){s}$.

  - For plot 4, $R$ is the entire $s$-plane.
]

= 9.25

== (c)

#solution[
  Let $sigma$ denote the pole of $X(s)$. Then

  $
    norm(X(j omega))^2 = 1/(omega^2 + sigma^2),
  $

  as shown in the figure below.

  // TODO
  #figure(
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      // let plot.plot = plot.plot.with(axis-style: "school-book")

      plot.plot(size: (2,2), x-tick-step: none, y-tick-step: none, {
        plot.add(((0,0), (1,1), (2,.5), (4,3)))
      })
    }),
  )
]

= 9.26

#solution[
  From table 9.1, we know that

  $
    Y(s) = e^(-2 s) X_1(s) dot e^(-3 s) X_2(-s) = e^(-5 s)/(6 + s - s^2).
  $
]

= 9.31

#solution[
]

= 9.35

= 9.40
