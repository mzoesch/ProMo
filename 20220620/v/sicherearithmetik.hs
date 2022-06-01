-- sicherearithmetik2.hs
module SichereArithmetik
   ( summe,
     division
   ) where

hilf :: MonadFail m => (a -> b -> c) -> (a -> b -> Bool) -> m a -> m b -> m c
hilf fn bedingung m1 m2 = do
  n1 <- m1
  n2 <- m2
  if bedingung n1 n2
   then fail "nicht erlaubt"
   else return (fn n1 n2)

summe :: Maybe Int -> Maybe Int -> Maybe Int
summe = hilf (+) (\ x1 x2 -> False)

division :: Maybe Int -> Maybe Int -> Maybe Int
division = hilf div (\ x1 x2 -> x2 == 0)
