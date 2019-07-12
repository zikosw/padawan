import System.IO as IO
import Data.Char as Ch



main2 :: IO ()
main2 = do
    putStr "Enter file path: "
    filePath <- getLine
    putStrLn $ "Read file " ++ filePath


    content <- IO.readFile filePath
    putStrLn "Content:"
    putStrLn content

up :: Functor f => f [Char] -> f [Char]
up str = fmap upper str
        where upper = map Ch.toUpper

haskell :: String
haskell = if 1 == 1
        then "awesome"
        else "awful"


