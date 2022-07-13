-- Comment
{-
    Multi Comment
-}

import Data.List ()
import System.IO ()

-- Int -2^63 2^63
maxInteger :: Int
maxInteger = maxBound :: Int
minInteger :: Int
minInteger = minBound :: Int

-- Integer as big as possible

-- Double
maxFloat :: Double
maxFloat = 3.99999999999 + 0.00000000005

-- Floats
-- Bool True || False
-- Char '
-- Tuple

sumOFNums :: Integer
sumOFNums = sum [1..1000]

modEx1 :: Integer
modEx1 = mod 5 4
modEx2 :: Integer
modEx2 = 5 `mod` 4
negNumEx :: Integer
negNumEx = 5 + (-4)

primeNumbers :: [Integer]
primeNumbers = [3,5,7,11]
morePrimes :: [Integer]
morePrimes = primeNumbers ++ [13,17,19,23,29]

favNums :: [Integer]
favNums = 2 : 7 : 21 : 66 : []
multList :: [[Integer]]
multList = [[3,5,7],[11,13,17]]

morePrimes2 :: [Integer]
morePrimes2 = 2 : morePrimes

lenPrime :: Int
lenPrime = length morePrimes2

revPrime :: [Integer]
revPrime = reverse morePrimes2

isListEmpty :: Bool
isListEmpty = null morePrimes2

-- Get specific index
secondPrime :: Integer
secondPrime = morePrimes2 !! 1

-- First and Last
firstPrime :: Integer
firstPrime = head morePrimes2
lastPrime :: Integer
lastPrime = last morePrimes2

-- Everything except last index
primeInit :: [Integer]
primeInit = init morePrimes2

first3Primes :: [Integer]
first3Primes = take 3 morePrimes2
removedPrimes :: [Integer]
removedPrimes = drop 3 morePrimes2

is7InList :: Bool
is7InList = 7 `elem` morePrimes2
maxPrime :: Integer
maxPrime = maximum morePrimes2
minPrime :: Integer
minPrime = minimum morePrimes2

newList :: [Integer]
newList = [2..5]
evenList :: [Integer]
evenList = [2,4..20]
letterList :: [Char]
letterList = ['A','C'..'Q']



