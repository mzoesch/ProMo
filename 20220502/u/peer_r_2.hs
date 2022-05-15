-- 2-3b
-- Loesung von einem Kommilitonen

-- Ich komme bei der Aufgabe nicht zum Ziel... stehe auf dem Schlauch
-- 
--
-- aufgabe 2-3b
-- :{
-- verdopple :: (Num a) => [a] -> [a]
-- verdopple [] = []
-- verdopple (x:xs) = (x * 2) : verdopple xs
-- :}
-- 
-- :{
-- geradePrüfen n = 
--    if (n `mod` 2 == 0)
--         then verdopple n
--         else n
-- :}
-- 
-- :{
-- geradeZahlenSort list = [n | n <- list, geradePrüfen n]
-- :}

verdopple :: Num a => a -> a
verdopple x = 2 * x

geradePrüfen :: Integral a => a -> a
geradePrüfen n = if (n `mod` 2 /= 0)
    then verdopple n
    else n

geradeZahlenSort :: Integral a => [a] -> [a]
geradeZahlenSort list = [geradePrüfen n | n <- list]


-- Von mir geschriebene Antwort auf die Abgabe
{-

Servus,

okay also – da waren so einige Fehler drin. Ich hab versucht alle zu korrigieren mit meinem Halbwissen :P und werde jetzt einfach
mal Zeile für Zeile durchgehen.
Ich starte in der letzten Zeile, da dies der Einstiegspunkt des Programms ist:

Du hast geschrieben:

geradeZahlenSort list = [n | n <- list, geradePrüfen n]

Das letzte ‚geradePrüfen n‘ muss einen Boolean-Wert zurückgeben. Die Funktion ‚geradePrüfen‘ gibt aber immer einen Integer-Wert zurück.

Man könnte also schreiben:

geradeZahlenSort list = [geradePrüfen n | n <- list]


Schauen wir uns nun die Funktion an, die in Zeile 12 Deines Programms anfängt:

geradePrüfen n = 
    if (n `mod` 2 == 0)
        then verdopple n
        else n

Hier ist fast alles richtig, abgesehen davon, dass n `mod` 2 == 0 immer dann den Wert ‚True‘ annimmt, wenn die Zahl gerade ist. Daraus folgt,
dass das Programm immer die Zahl n verdoppelt, wenn sie gerade ist. In der Aufgabenstellung war jedoch genau das Gegenteil
gemeint (also nur die ungeraden Zahlen werden verdoppelt).
Das kann man ganz einfach lösen, indem man schreibt:

n `mod` 2 /= 0


Gut, als nächstes zur Funktion die in Zeile 6 beginnt:

verdopple [] = []
verdopple (x:xs) = (x * 2) : verdopple xs

Hier hat sich leider ein ziemlicher Denkfehler eingeschlichen.
Und zwar wenn die Funktion aufgerufen wird in der ‚geradePrüfen‘-Funktion, dann übergibt diese einen Integer (siehe Zeile 14).
Aber die ‚verdopple‘-Funktion erwartet eine Liste von Integer UND gibt auch wieder eine Liste von Integer zurück (verdopple :: [Integer] -> [Integer]).
Außerdem erwartet die ‚geradePrüfen‘-Funktion auch einen Integer-Wert und keine Liste (geradePrüfen :: Integral a => a -> a).

Man kann das aber auch ganz einfach beheben, indem man die Funktion ein bisschen umschreibt und die Typisierung ändert:

verdopple x = 2 * x

Also alles nochmal zusammen geschrieben und mit Typisierung lautet der Programmcode:


verdopple :: Num a => a -> a
verdopple x = 2 * x

geradePrüfen :: Integral a => a -> a
geradePrüfen n = if (n `mod` 2 /= 0)
    then verdopple n
    else n

geradeZahlenSort :: Integral a => [a] -> [a]
geradeZahlenSort list = [geradePrüfen n | n <- list]

Kopier Dir diesen Code einfach mal in ein .hs File und guck obs funktioniert ;).



P.s.:
Ich weiß nicht, ob Du die Lösung hast, wie sie im Tutorium besprochen wurde. Aber nur zur Sicherheit:

Lösung 1:

-- aus 2-2 c)
gerade x = x `mod` 2 /= 1

b' xs = [if gerade x then x else x*2 | x <- xs]

Lösung 2:
b'' xs = [x + (x `mod` 2) * x | x <- xs]

Aber auf die bin ich auch nicht gekommen, haha 

MfG

-}
