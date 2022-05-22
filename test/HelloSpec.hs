module Main where

import Hello
import Test.Hspec


main :: IO ()
main = hspec $ do
  describe "Hello.greeting" $ do
    it "returns a greeting" $ do
      Hello.greeting "Test" `shouldBe` "Hello Test!"
