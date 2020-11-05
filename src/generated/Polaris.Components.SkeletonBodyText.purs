module Polaris.Components.SkeletonBodyText
  (SkeletonBodyTextProps, skeletonBodyText, skeletonBodyTextRC) where

import Untagged.Union (UndefinedOr)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

type SkeletonBodyTextProps = { lines :: UndefinedOr Number }

skeletonBodyText :: forall r . Coercible r SkeletonBodyTextProps => r -> JSX
skeletonBodyText = element
                   skeletonBodyTextRC <<< coerce

foreign import skeletonBodyTextRC :: ReactComponent SkeletonBodyTextProps
