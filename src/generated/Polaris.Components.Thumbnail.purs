module Polaris.Components.Thumbnail
  (ThumbnailProps, thumbnail, thumbnailRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ThumbnailProps = { alt :: String
                      , size :: UndefinedOr
                                (StringLit
                                 "small" |+| StringLit
                                             "medium" |+| StringLit
                                                          "large")
                      , source :: String
                      }

thumbnail :: forall r . Coercible r ThumbnailProps => r -> JSX
thumbnail = element
            thumbnailRC <<< coerce

foreign import thumbnailRC :: ReactComponent ThumbnailProps
