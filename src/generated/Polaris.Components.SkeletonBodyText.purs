module Polaris.Components.SkeletonBodyText
  (SkeletonBodyTextProps, skeletonBodyText, skeletonBodyTextRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type SkeletonBodyTextProps = { lines :: UndefinedOr Number }

skeletonBodyText :: forall r . Coercible r SkeletonBodyTextProps => r -> JSX
skeletonBodyText = element
                   skeletonBodyTextRC <<< coerce

foreign import skeletonBodyTextRC :: ReactComponent SkeletonBodyTextProps
