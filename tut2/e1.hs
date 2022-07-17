{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
import Prelude hiding (elem)
-- 20220717 - #05

-- Exercise #1
-- Create a function elem that returns True if an element
-- is in a given list and returns False otherwise


elem :: (Eq a) => a -> [a] -> Bool

-- elem a [] = False
-- elem a l
--     | a == head l   = True
--     | otherwise     = elem a tail(l)

elem _ [] = False
elem e (x:xs) = (e == x) || elem e xs


-- Exercise #2
-- Create a function nub that removes all duplicates from a given list


nub :: (Eq a) => [a] -> [a]

nub [] = []
nub (x:xs)
    | x `elem` xs   = nub xs
    | otherwise     = x : nub xs


-- Exercise #3
-- Create a function isAsc that returns True
-- if the list given to it is a list of ascending order

isAsc :: [Int] -> Bool

isAsc [] = True
isAsc (x:y:xs)
    | x <= y     = isAsc (y : xs)
    | otherwise = False
isAsc(x:xs)
     = True

isAsc2 :: [Int] -> Bool

isAsc2 [] = True
isAsc2 [x] = True
isAsc2 (x:y:xs) =
    (x <= y) && isAsc2 (y:xs)


-- Exercise #4
-- Create a function hasPath that determines if a path from one node
-- to another exists within a diirected graph

hasPath :: [(Int, Int)] -> Int -> Int -> Bool

hasPath [] x y = x == y
hasPath xs x y
    | x == y        = True
    | otherwise     =
        let xs' = [(n,m) | (n,m) <- xs, n /= x] in
        or [ hasPath xs' m y | (n,m) <- xs, n == x]
