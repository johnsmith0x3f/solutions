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
  Let $alpha$ and $beta$ denote the pole and zero of $X(s)$, respectively. Then

  $
    norm(X(j omega)) = M sqrt((omega^2 + beta^2)/(omega^2 + alpha^2)),
  $

  as shown in the figure below.

  #figure(
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      plot.plot(
        size: (8, 2),
        axis-style: "school-book",
        x-label: $omega$,
        y-label: $X(j omega)$,
        y-min: 0,
        x-tick-step: none,
        y-tick-step: none,
        {
          plot.add(domain: (-4, 4), x => 1 - 3/(x * x + 4))
        },
      )
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

== (a)

#solution[
  By taking the Laplace transform and simplifying, we obtain

  $
    H(s) = 1/(s^2 - s - 2).
  $

  The pole-zero plot of $H(s)$ is shown in the figure below.

  #figure(
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      set-style(
        content: (
          padding: 0.2
        )
      )

      line((-3, 0), (3, 0), name: "x-axis")
      content("x-axis.end", $cal(R e)$, anchor: "north-west")

      line((0, -2), (0, 2), name: "y-axis")
      content("y-axis.end", $cal(I m)$, anchor: "south-west")

      let cross(x, y) = {
        line((x - 0.1, y - 0.1), (x + 0.1, y + 0.1))
        line((x - 0.1, y + 0.1), (x + 0.1, y - 0.1))
      }

      cross(-1, 0)
      content((-1, 0), $-1$, anchor: "north")

      cross(2, 0)
      content((2, 0), $2$, anchor: "north")
    }),
  )
]

== (b)

#solution[
  The partial fraction expansion of $H(s)$ is

  $
    H(s) = 1/(3 (s - 2)) - 1/(3 (s + 1)).
  $

  + If the system is stable, then the ROC has to be $-1 < cal(R e){s} < 2$. Therefore,

    $
      h(t) = -1/3 e^(2 t) u(-t) - 1/3 e^(-t) u(t).
    $

  + If the system is causal, then the ROC has to be $2 < cal(R e){s}$. Therefore,

    $
      h(t) = 1/3 e^(2 t) u(t) - 1/3 e^(-t) u(t).
    $

  + If the system is neither stable nor causal, then the ROC has to be $cal(R e){s} < -1$. Therefore,

    $
      h(t) = -1/3 e^(2 t) u(-t) + 1/3 e^(-t) u(-t).
    $
]

= 9.35

== (a)

#solution[
  Let $w(t)$ denote the center node. Then we have

  $
    W(s) = 1/s (X(s) + W(s) - 2 + W(s)/s - 1),\
    Y(s) = s dot W(s) + W(s) - 1 + W(s)/s - 6,
  $

  which simplifies to

  $
    Y(s) = (s^2 - s - 1)/(s^2 + s + 1) (X(s) - 3) - 7.
  $
]

= 9.40
