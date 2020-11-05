module Polaris.Components.SkeletonThumbnail
  (SkeletonThumbnailProps, skeletonThumbnail, skeletonThumbnailRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

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
