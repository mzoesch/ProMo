-- fib7.hs
import Criterion.Main

main = defaultMain [
   bgroup "fibendrekursiv" [
                       bench "1"  $ whnf fib 1
                     , bench "20"  $ whnf fib 20
                     , bench "25"  $ whnf fib 25
                     , bench "30" $ whnf fib 30
                     , bench "35" $ whnf fib 35
                     ]
   ]

fib :: Integer -> Integer
fib n = hfib n 0 1
        where hfib 0 akk1 _ = akk1
              hfib n akk1 akk2 = hfib (n-1) akk2 (akk1+akk2)
