-- tag.hs
data Tag = Mo | Di | Mi | Do | Fr | Sa | So

zeigeAn :: Tag -> String
zeigeAn Mo = "Montag"
zeigeAn Di = "Dienstag"
zeigeAn Mi = "Mittwoch"
zeigeAn Do = "Donnerstag"
zeigeAn Fr = "Freitag"
zeigeAn Sa = "Samstag"

nummer :: Tag -> Int
nummer Mo = 1
nummer Di = 2
