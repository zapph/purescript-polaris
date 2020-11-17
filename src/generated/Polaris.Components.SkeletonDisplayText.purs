module Polaris.Components.SkeletonDisplayText
  (SkeletonDisplayTextProps, skeletonDisplayText, skeletonDisplayTextRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type SkeletonDisplayTextProps = { size :: UndefinedOr
                                          (StringLit
                                           "small" |+| StringLit
                                                       "medium" |+| StringLit
                                                                    "large" |+| StringLit
                                                                                "extraLarge")
                                }

skeletonDisplayText :: forall r . Coercible r SkeletonDisplayTextProps => r -> JSX
skeletonDisplayText = element
                      skeletonDisplayTextRC <<< coerce

foreign import skeletonDisplayTextRC :: ReactComponent SkeletonDisplayTextProps
