-- 20220713 - #03

fac :: (Ord p, Num p) => p -> p
fac n =
    if n <= 1 then
        1
    else
        n * fac (n - 1)


-- guards

fac2 :: (Ord p, Num p) => p -> p
fac2 n
    | n <= 1    = 1
    | otherwise = n * fac2 (n -1) -- otherweise is a constand that is always true


-- pattern matching

isZero :: (Eq a, Num a) => a -> Bool
isZero 0 = True
isZero _ = False


-- accumulators

fac3 :: (Ord t, Num t) => t -> t
fac3 n = aux n 1
    where
        aux n acc
            | n <= 1    = acc
            | otherwise = aux (n - 1) (n * acc)
