-- fib2.hs
-- stack --resolver lts-11.10 script --optimize
import Criterion.Main

main = defaultMain [
   bgroup "fib" [ bench "1"   $ whnf fib 1
                , bench "20"  $ whnf fib 20
                , bench "25"  $ whnf fib 25
                , bench "30"  $ whnf fib 30
                , bench "35"  $ whnf fib 35
                ]
   ]

fib :: Integer -> Integer
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
