#import "@preview/lilaq:0.3.0" as lq
// #show: lq.theme.schoolbook // use "schoolbook" themed diagrams

#import "skeleton.typ": *

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

// = 2.28
//
// == (c)
//
// = 2.29
//
// == (g)
//
// = 2.33
//
// = 2.39
//
// == (b)
//
// = 2.47
//
// == (b)
//
// == (d)
//
// == (f)
