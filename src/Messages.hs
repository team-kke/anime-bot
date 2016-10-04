module Messages
  ( goodJob
  , saiteiDesu
  ) where

import LineNotify.Type
import Random

goodJob :: IO Message
goodJob = pickRandomly
  [ message "ハラショー！" "http://i.imgur.com/bttHnts.jpg"
  , message "ファイトだよ！" "http://i.imgur.com/zU3IBtV.jpg"
  ]

saiteiDesu :: IO Message
saiteiDesu = pickRandomly
  [ message "最低です" "http://i.imgur.com/GYIiFjH.jpg"
  , message "ハラショー…" "http://i.imgur.com/C8EQ7Tm.jpg"
  ]
