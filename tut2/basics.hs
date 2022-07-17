-- Comment
{-
    Multi Comment
-}

import Data.List
import System.IO

-- Int -2^63 2^63
maxInteger = maxBound :: Int
minInteger = minBound :: Int

-- Integer as big as possible

-- Double
maxFloat = 3.99999999999 + 0.00000000005

-- Floats
-- Bool True || False
-- Char '
-- Tuple

sumOFNums = sum [1..1000]

modEx1 = mod 5 4
modEx2 = 5 `mod` 4
negNumEx = 5 + (-4)

primeNumbers = [3,5,7,11]
morePrimes = primeNumbers ++ [13,17,19,23,29]

favNums = 2 : 7 : 21 : 66 : []
multList = [[3,5,7],[11,13,17]]

morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

-- Get specific index
secondPrime = morePrimes2 !! 1

-- First and Last
firstPrime = head morePrimes2
lastPrime = last morePrimes2

-- Everything except last index
primeInit = init morePrimes2

first3Primes = take 3 morePrimes2
removedPrimes = drop 3 morePrimes2

is7InList = 7 `elem` morePrimes2
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2
