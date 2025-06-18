#import "@local/skeleton:0.1.0": *

#import "@preview/fletcher:0.5.8" as fl
#import "@preview/lilaq:0.3.0" as lq

= 2.20

== (a)

#solution[
  $
    integral_(-oo)^oo u_0(t) cos(t) dif t = cos 0 = 1.
  $
]

== (b)

#solution[
  $
    integral_0^5 sin(2 pi t) delta(t + 3) dif t = 0.
  $
]

== (c)

#solution[
  $
    integral_(-5)^5 u_1(1 - tau) cos(2 pi tau) dif tau = integral_(-5)^1 cos(2 pi tau) dif tau = 0.
  $
]

= 2.21

== (a)

#solution[
  $
    y[n] = sum_(k = -oo)^oo x[n] h[n] = sum_(k = 0)^n alpha^k beta^(n - k) = (alpha^(n + 1) - beta^(n + 1))/(alpha - beta).
  $
]

= 2.22

== (c)

#solution[
  The desired convolution is

  $
    y(t) = integral_(-oo)^oo x(tau) h(t - tau) dif tau = integral_0^2 sin(pi tau) h(t - tau) dif tau.
  $

  This gives us

  $
    y(t) = cases(
      0\, quad & t < 1,
      2\/pi (1 - cos(pi (t - 1)))\, quad & 1 < t < 3,
      2\/pi (cos(pi (t - 3)) - 1)\, quad & 3 < t < 5,
      0\, quad & t > 5
    )
  $

  as shown in the figure below.

  #figure(
    lq.diagram({
      let xs = lq.linspace(1, 5)

      lq.plot(
        xs,
        xs.map(t => {
          if t < 3 {
            2/calc.pi * (1 - calc.cos(calc.pi * (t - 1)))
          } else {
            2/calc.pi * (calc.cos(calc.pi * (t - 3)) - 1)
          }
        }),
        mark: none,
      )
    }),
  )
]

= 2.28

== (c)

#solution[
  Not causal because $h[n] = 2^n > 0$ for $n < 0$. Unstable because

  $
    sum_(n = -oo)^oo h[n] = sum_(n = 0)^oo 2^n = oo.
  $
]

= 2.29

== (g)

#solution[
  Causal because $h(t) = 0$ for $t < 0$. Unstable because

  $
    integral_(-oo)^oo |h(tau)| dif tau >= integral_(100)^oo (e^(x/100 - 1) - 1) dif tau = oo.
  $
]

= 2.33

= 2.39

== (b)

#solution[
  The block diagram is as shown in the figure below.

  #figure(
    fl.diagram({
      let (A, B, C, D, E, F, G) = ((0, 0), (1, 0), (2, 0), (3, 0), (4, 0), (3, 1), (2, 1))

      fl.node(A, $x(t)$)
      fl.edge(A, B, "->")
      fl.node(B, $integral$, stroke: black, shape: rect)
      fl.edge(B, C, "->")
      fl.node(C, $+$, stroke: black)
      fl.edge(C, D)
      fl.edge(D, E)
      fl.node(E, $y(t)$)
      fl.edge(D, F, "->")
      fl.node(F, $integral$, stroke: black, shape: rect)
      fl.edge(F, G, label: $-3$)
      fl.edge(G, C, "->")
    }),
  )
]

= 2.47

== (b)

== (d)

== (f)
