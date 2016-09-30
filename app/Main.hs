module Main where

import GitHub (didYouCommitToday)

main :: IO ()
main = didYouCommitToday >>= print
