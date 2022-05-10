-- WARING terminiert nicht

u1 0 = 1
u1 n = n * u1(n + 1)

u2 n = u2 n

c 1 = 1
c x = if x `mod` 2 == 0 then c (x `div` 2) else c (1 + 3 * x)
