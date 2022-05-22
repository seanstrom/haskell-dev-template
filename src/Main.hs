module Main where
import qualified Hello

main :: IO ()
main = putStrLn $ Hello.greeting "Haskell"
