module Main where

import GitHub
import LineNotify
import Messages

main :: IO ()
main = do
  yesIDid <- didYouCommitToday
  message <- if yesIDid then goodJob else saiteiDesu
  send message
