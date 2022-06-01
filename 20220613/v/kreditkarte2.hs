-- kreditkarte2.hs
data KKFehler = Sperre | PruefFehler | Land

instance Show KKFehler where
  show Sperre = "Karte gesperrt"
  show PruefFehler = "Nr oder Prüfcode stimmt nicht"
  show Land = "In diesem Land nicht erlaubt"

buchen :: Int -> Int -> String -> Int -> Either KKFehler (Int,Int)
buchen nr _     _    betrag | gesperrt nr           = Left Sperre
buchen nr pruef _    betrag | not (passen nr pruef) = Left PruefFehler
buchen _  _    land betrag  | not (erlaubt land)    = Left Land
buchen nr _     _    betrag | otherwise             = Right (nr, betrag)

gesperrt nr = nr == 1234123412341234
passen kknr pruef = kknr `mod` 12 == pruef
erlaubt land = land == "Deutschland"
