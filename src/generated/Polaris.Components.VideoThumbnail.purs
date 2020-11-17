module Polaris.Components.VideoThumbnail
  (VideoThumbnailProps, videoThumbnail, videoThumbnailRC) where

import Prelude
import Effect (Effect)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type VideoThumbnailProps = { accessibilityLabel :: UndefinedOr String
                           , thumbnailUrl :: String
                           , videoLength :: UndefinedOr Number
                           , onBeforeStartPlaying :: UndefinedOr (Effect Unit)
                           , onClick :: Effect Unit
                           }

videoThumbnail :: forall r . Coercible r VideoThumbnailProps => r -> JSX
videoThumbnail = element
                 videoThumbnailRC <<< coerce

foreign import videoThumbnailRC :: ReactComponent VideoThumbnailProps
