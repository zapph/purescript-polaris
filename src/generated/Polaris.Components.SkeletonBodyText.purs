module Polaris.Components.SkeletonBodyText
  (SkeletonBodyTextProps, skeletonBodyText, skeletonBodyTextRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type SkeletonBodyTextProps = { lines :: UndefinedOr Number }

skeletonBodyText :: forall r . Coercible r SkeletonBodyTextProps => r -> JSX
skeletonBodyText = elem skeletonBodyTextRC

foreign import skeletonBodyTextRC :: ReactComponent SkeletonBodyTextProps
