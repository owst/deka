module Main where

import Test.Sunlight

ghc v = (v, "ghc-" ++ v, "ghc-pkg-" ++ v)

inputs = TestInputs
  { tiDescription = Nothing
  , tiCabal = "cabal"
  , tiLowest = ghc "7.4.1"
  , tiDefault = map ghc [ "7.4.1", "7.6.1", "7.8.2" ]
  , tiTest = [("dist/build/native/native", [])]
  }

main = runTests inputs
