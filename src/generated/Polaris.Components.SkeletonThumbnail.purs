module Polaris.Components.SkeletonThumbnail
  (SkeletonThumbnailProps, skeletonThumbnail, skeletonThumbnailRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type SkeletonThumbnailProps = { size :: UndefinedOr
                                        (StringLit
                                         "small" |+| StringLit
                                                     "medium" |+| StringLit
                                                                  "large")
                              }

skeletonThumbnail :: forall r . Coercible r SkeletonThumbnailProps => r -> JSX
skeletonThumbnail = element
                    skeletonThumbnailRC <<< coerce

foreign import skeletonThumbnailRC :: ReactComponent SkeletonThumbnailProps
