module LineNotify.Type where

type Text = String
type ImageURL = String
type Message = (Text, Maybe ImageURL)

message :: Text -> ImageURL -> Message
message text imageURL = (text, Just imageURL)
