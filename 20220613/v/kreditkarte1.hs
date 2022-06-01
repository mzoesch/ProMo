-- kreditkarte1.hs
buchen :: Int -> Int -> String -> Int -> Either String (Int,Int)
buchen nr _     _    betrag | gesperrt nr           = Left "Karte gesperrt"
buchen nr pruef _    betrag | not (passen nr pruef) = Left "Nr oder Prüfcode stimmt nicht"
buchen _  _    land betrag  | not (erlaubt land)    = Left "In diesem Land nicht erlaubt"
buchen nr _     _    betrag | otherwise             = Right (nr, betrag)

gesperrt nr = nr == 1234123412341234
passen kknr pruef = kknr `mod` 12 == pruef
erlaubt land = land == "Deutschland"
