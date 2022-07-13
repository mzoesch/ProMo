-- 20220713 - #02

inRange :: Ord a => a -> a -> a -> Bool
inRange min max x =
    x >= min && x <= max

-- inRange 0 5 3
--    => True

-- inRange 4 5 3
--    => False



-- Types

x :: Integer
x = 1

y :: Bool
y = True

z :: Float
z = 3.1415


inRange2 :: Integer -> Integer -> Integer -> Bool
inRange2 min max x =
    x >= min && x <= max

-- inRange2 0.5 1.5 1   <- Type Error
-- inRange2 0 5 3       <- Correct

-- let

inRange3 :: Integer -> Integer -> Integer -> Bool
inRange3 min max x =
    let inLowerBound = min <= x
        inUpperBound = max >= x
    in
    inLowerBound && inUpperBound

-- where

inRange4 :: Integer -> Integer -> Integer -> Bool
inRange4 min max x = inLowerBound && inUpperBound
    where
        inLowerBound = min <= x
        inUpperBound = max >= x


-- if

inRange5 :: Integer -> Integer -> Integer -> Bool
inRange5 min max x =
    if inLowerBound then inUpperBound else False -- inLowerBound && inUpperBound
    where
        inLowerBound = min <= x
        inUpperBound = max >= x

-- infix

-- add a b = a + b
-- add 10 20    ->
-- 10 `add` 20  -> Equivalent
