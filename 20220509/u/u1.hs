-- 3-1
-- a)

import System.IO

a :: IO()
a = do
        leseGriff <- openFile "palindorm.txt" ReadMode
        inhalt <- hGetContents leseGriff
        putStrLn inhalt
        hClose leseGriff

-- b)
b :: IO()
b = do
	leseGriff <- openFile "palindrom.txt" ReadMode
	inhalt <- hGetContents leseGriff
	putStrLn $ unlines [w ++ " " ++ (show . length) w | w <- lines inhalt]
	hClose leseGriff

-- c)

-- aus Vorlesung
palindrom :: Eq a => [a] -> Bool
palindrom x = x ==reverse x

c :: IO()
c = do
	leseGriff <- openFile "palindrom.txt" ReadMode
	inhalt <- hGetContents lesGriff
	pusStrLn $ unlines [w ++ " " ++ (show . length) w ++ " " ++ if palindrom w
		then "ja"
		else "nein"
		| w <- lines inhalt]
	hClose leseGriff

