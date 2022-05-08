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
fib n = fst (hfib n [(1, 1), (0, 0)])
           where
              hfib :: Integer -> [(Integer, Integer)]-> (Integer, [(Integer, Integer)])
              hfib n memo | n <= fst (head memo) = (lookup n memo, memo)
                  where lookup n ((m, fibn) : memo) = if n == m
                                                          then fibn
                                                          else lookup n memo
              hfib n memo = let (fibn1, memo1) = hfib (n-1) memo
                                (fibn2, memo2) = hfib (n-2) memo1
                                fibn  = fibn1 + fibn2
                                in (fibn, (n, fibn) : memo2)
