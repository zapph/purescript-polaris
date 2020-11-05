module Polaris.Components.SkeletonDisplayText
  (SkeletonDisplayTextProps, skeletonDisplayText, skeletonDisplayTextRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

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
