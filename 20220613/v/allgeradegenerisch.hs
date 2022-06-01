-- allgeradegenerisch.hs
import Debug.Trace

ungerade x | trace (show x) False = undefined
ungerade x | otherwise            = x `mod` 2 == 1

allGerade :: (Integral a, Show a, Monad m) => [a] -> m [a]
allGerade l     | any ungerade l       = fail "error"
allGerade l     | otherwise            = return l
