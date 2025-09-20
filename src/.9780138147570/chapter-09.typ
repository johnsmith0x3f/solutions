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
    e^(4 t) u(t) &<-->^cal(L) 1/(s + 4), wide cal(R e){s} > -4, \
    e^(-(5 - 5 j)t) u(t) &<-->^cal(L) 1/(s - 5 + 5 j), wide cal(R e){s} > -5, \
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
  Let $w(t)$ denote the signal represented by the bottom-middle node. Then the diagram shows that

  $
    (dif^2 w(t))/(dif t^2) + 2 (dif w(t))/(dif t) + w(t) = x(t), \
    (dif^2 w(t))/(dif t^2) - (dif w(t))/(dif t) - 6 w(t) = y(t).
  $

  Hence

  $
    H(s) = Y(s)/X(s) = (Y(s)/W(s))/(X(s)/W(s)) = (s^2 - s - 6)/(s^2 + 2 s + 1).
  $

  Taking the inverse Laplace transform, we obtain

  $
    (dif^2 y(t))/(dif t^2) + 2 (dif y(t))/(dif t) + y(t) = (dif^2 x(t))/(dif t^2) - (dif x(t))/(dif t) - 6 x(t).
  $
]

== (b)

#solution[
  From the previous result, the two poles of the system are at $-1$. Since the system is causal, the ROC is $-1 < cal(R e){s}$ and hence includes the $j omega$-axis. Therefore, the system is stable.
]

= 9.40

Taking the unilateral Laplace transform of the equation, we obtain

$
  s^3 cal(Y)(s) - s^2 y(0^-) - s y'(0^-) - y''(0^-) + \
  6 s^2 cal(Y)(s) - 6 s y(0^-) - 6 y'(0^-) + 11 s cal(Y)(s) - 11 y(0^-) + 6 cal(Y)(s) = cal(X)(s).
$

== (a)

#solution[
  For the zero-state response, we have

  $
    s^3 cal(Y)(s) + 6 s^2 cal(Y)(s) + 11 s cal(Y)(s) + 6 cal(Y)(s) = cal(X)(s) = 1/(s + 4).
  $

  Therefore,

  $
    cal(Y)(s) = 1/((s + 4)(s^3 + 6 s^2 + 11 s + 6)) = 1/(2 (s + 2)) - 1/(2 (s + 3)) - 1/(6 (s + 1)) + 1/(6 (s + 4)).
  $

  Taking the inverse unilateral Laplace transform, we obtain

  $
    y(t) = 1/2 e^(-2 t) u(t) - 1/2 e^(-3 t) u(t) - 1/6 e^(-t) u(t) + 1/6 e^(-4 t) u(t).
  $
]

== (b)

#solution[
  For the zero-input response, with the given initial condition, we can obtain

  $
    cal(Y)(s) = (s^2 + 5 s + 6)/(s^3 + 6 s^2 + 11 s + 6) = 1/(s + 1).
  $

  Taking the inverse unilateral Laplace transform, we obtain

  $
    y(t) = e^(-t) u(t).
  $
]

== (c)

#solution[
  The total response is the sum of the zero-state and zero-input responses. Therefore,

  $
    y(t) = (1/2 e^(-2 t) - 1/2 e^(-3 t) + 5/6 e^(-t) + 1/6 e^(-4 t)) u(t).
  $
]
