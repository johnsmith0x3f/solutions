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

#solution[
  #set enum(numbering: "(a)")

  + $"average delay" = 1 / N (0 + L / R + ... + (N - 1) L / R) = ((N - 1) L) / (2 R) "seconds"$.

  + It takes exactly $N L / R$ seconds to transmit a batch of $N$ packets. Hence the buffer is empty when each batch arrive. Therefore, the average queuing delay across all batches is the same as the average queuing delay for a single batch, whcih is $((N - 1) L) / (2 R)$ seconds.
]

== P20

#solution[
  $"throughput" = min{R_s, R_c, R / M}$.
]

== P25

#solution[
  #set enum(numbering: "a.")

  + $R dot d_"prop" = 5 "Mbps" dot (20000 "km") / (2.5 dot 10^8 "meters/sec") = 400000 "bits"$.

  + Same as above.

  + The bandwidth-delay product of a link is the maximum number of bits that can be in the link.

  + $"width" = (20000 "km") / (400000 "bits") = 50 "meters/bit"$.

  + $"width" = m / (R dot d_"prop") = s / R$.
]

== P27

== P31
