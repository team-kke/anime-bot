module LineNotify
  ( send
  ) where

import Control.Lens
import Data.ByteString.Char8
import LineNotify.Type
import Network.Wreq
import System.Environment

type PersonalAccessToken = String

personalAccessToken :: IO PersonalAccessToken
personalAccessToken = getEnv "PERSONAL_ACCESS_TOKEN"

body :: Message -> [FormParam]
body (text, Nothing) = [ "message" := text ]
body (text, Just imageURL) =
  [ "message" := text
  , "imageFullsize" := imageURL
  , "imageThumbnail" := imageURL
  ]

option :: PersonalAccessToken -> Options
option token = defaults & header "Authorization" .~ [pack ("Bearer " ++ token)]

send :: Message -> IO ()
send message = do
  token <- personalAccessToken
  postWith (option token) "https://notify-api.line.me/api/notify" (body message)
  return ()
