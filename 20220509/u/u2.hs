-- 3-2
import System.IO

-- a)
{-
a :: IO()
a = do
	putStrLn "Deutsches Wort:"
	deutsch <- getLine
	putStrLn "Bayrisches Wort:"
	ba <- getLine
	if null deutsch || null ba
		then return ()
		else putStrLn $ "'" ++ deutsch ++ "' heißt auf bayrisch '" ++ ba ++ "'"
		a

-}

-- b)
main :: IO()
main = do
	schreibGriff <- openFile "woeterbuch.txt" AppendMode
	putStrLn "Deutsches Wort:"
	deutsch <- getLine
	putStrLn "Bayrisches Wort:"
	ba <- getLine
	if null deutsch || null ba
		then return ()
		else do
			putStrLn $ "'" ++ deutsch ++ "' heißt auf bayrisch '" ++ ba ++ "'"
			hPutStrLn schreibGriff (deutsch ++ " " ++ ba)
			hClose schreibGriff
			main
