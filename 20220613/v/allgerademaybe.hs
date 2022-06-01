-- allgerademaybe.hs
import Debug.Trace

ungerade :: (Integral a, Show a) => a -> Bool
ungerade x | trace (show x) False = undefined
ungerade x | otherwise            = x `mod` 2 == 1

allGerade :: (Integral a, Show a) => [a] -> Maybe [a]
allGerade l     | any ungerade l       = Nothing
allGerade l     | otherwise            = Just l
