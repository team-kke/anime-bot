{-# LANGUAGE OverloadedStrings #-}

module GitHub where

import Data.Time.Clock
import GitHub.Endpoints.Repos.Commits
import qualified Data.Vector as V

(&) = flip fmap

commitsSince :: UTCTime -> IO (V.Vector Commit)
commitsSince datetime =
  commitsWithOptionsFor "team-kke" "anime" [CommitQuerySince datetime] >>=
    \result -> case result of
                 Left _ -> return V.empty
                 Right xs -> return xs

didYouCommitToday :: IO Bool
didYouCommitToday = do
  today <- getCurrentTime & addUTCTime (-61200) -- 17 hours ago
  commits <- commitsSince today
  return $ (V.length commits) > 0
