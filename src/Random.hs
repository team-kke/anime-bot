module Random
  ( pickRandomly
  ) where

import System.Random

randomInt :: Int -> IO Int
randomInt = randomRIO . (,) 0 . (subtract 1)

pickRandomly :: [a] -> IO a
pickRandomly xs =
  (xs !!) <$> randomInt len
  where len = length xs
