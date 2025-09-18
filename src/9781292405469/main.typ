#let solution(body) = block(width: 100%, inset: 8pt)[
  *_Solution._* #body
]

= Chapter 1

#line(length: 100%, stroke: 0.5pt + gray)

== P6

#solution[
  #set enum(numbering: "a.")

  + $d_"prop" = m / s "seconds"$.

  + $d_"trans" = L / R "seconds"$.

  + $d_"end-to-end" = d_"prop" + d_"trans" = (m / s + L / R) "seconds"$.

  + The last bit is at Host A, just about to enter the link.

  + The first bit is still in the link, and has not yet arrived at Host B.

  + The first bit has already arrived at Host B.

  + $m = L / R s = (1500 "bytes") / (10 "Mbps") times 2.5 dot 10^8 "m" = 300 "km"$.
]

== P8

#solution[
  #set enum(numbering: "a.")

  + $"number of users" = (10 "Mbps") / (200 "kbps") = 50$.

  + $p = 10% = 0.1$.

  + $P("exactly" n "users") = binom(120, n) p^n (1 - p)^(120 - n)$.

  + By the Central Limit Theorem, $P("51 or more users") approx 1 - P(Z <= 2.74) approx 0.003$.
]

== P9

#solution[
  #set enum(numbering: "a.")

  + $N = (1 "Gbps") / (100 "kbps") = 10000$.

  + $P(n_"users" > N) = sum_(k = N + 1)^M binom(M, k) p^k (1 - p)^(M - k)$.
]

== P13

== P20

== P25

== P27

== P31
