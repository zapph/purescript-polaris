module Polaris.Components.VideoThumbnail
  (VideoThumbnailProps, videoThumbnail, videoThumbnailRC) where

import Untagged.Union (UndefinedOr)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)

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
