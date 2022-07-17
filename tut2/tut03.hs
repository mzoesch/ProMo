-- 20220713 - #04
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# HLINT ignore "Use even" #-}
import Data.List hiding (sum)
import Prelude hiding (sum)
-- lists

-- [1,2,3,4,5]
-- 1 : 2 : 3 : 4 : 5 : []

-- gen a list

-- asc == ascending
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
asc :: Int -> Int -> [Int]
asc n m
    | m < n         = []
    | m == n        = [m] -- or: ... = m : []
    | m > n         = n : asc (n + 1) m

-- asc 1 3
-- => [1,2,3]


-- func on lists

-- head :: [a] -> a
-- head [1,2,3,4,5]
--    => 1

-- tail :: [a] -> [a]
-- tail [1,2,3,4,5]
--     => [2,3,4,5]

-- length :: [a] -> Int
-- length [1,2,3,4,5]
--      => 5

-- init :: [a] -> [a]
-- init [1,2,3,4,5]
--      => [1,2,3,4]


-- null :: [a] -> Bool
-- null []
--      => True
-- null [1,2,3,4,5]
--      => False

-- list comprehensions

-- one list
-- [2*x | x <- [1,2,3] ] => [2,4,6]
-- [2*x | x <- [1,2,3], x > 1] => [4,6]

-- two lists
-- [ (x,y) | x <- [1,2,3], y <- ['a','b']] => [(1,'a'),(1,'a'),(2,'a'), ...]


-- list patterns

sum :: [Int] -> Int
sum []      = 0
sum (x:xs)  = x + sum xs

evens :: [Int] -> [Int]
evens []    = []
evens (x : xs)
    | mod x 2 == 0      = x : evens xs
    | otherwise         = evens xs

addTupels :: [(Int, Int)] -> [Int]
addTupels xs = [x + y | (x,y) <- xs]

-- addTupels [(1,2), (4,6), (70,25)]
--      => [3,10,95]
