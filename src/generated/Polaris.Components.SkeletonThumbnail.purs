module Polaris.Components.SkeletonThumbnail
  (SkeletonThumbnailProps, skeletonThumbnail, skeletonThumbnailRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type SkeletonThumbnailProps = { size :: UndefinedOr
                                        (StringLit
                                         "small" |+| StringLit
                                                     "medium" |+| StringLit
                                                                  "large")
                              }

skeletonThumbnail :: forall r . Coercible r SkeletonThumbnailProps => r -> JSX
skeletonThumbnail = elem skeletonThumbnailRC

foreign import skeletonThumbnailRC :: ReactComponent SkeletonThumbnailProps
