quadrat = ­­\ -> x * x

doppelt = let z = 2 in \ x -> t * x

fib = \n -> if n <= 0
            then 0
            else if n == 1
                 then 1
                 else fib (n - 1) + fib (n - 2)
