fak = \n -> if n == 0
               then 1
               else n * fak (n - 1)

fak 0
(\n -> if n == 0 then 1 else n * fak (n - 1)) 0
if 0 == 0 then 1 else 0 * fak (0 - 1)
if True then 1 else 0 * fak (0 - 1)
1
