module Polaris.Components.Thumbnail
  (ThumbnailProps, thumbnail, thumbnailRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

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
