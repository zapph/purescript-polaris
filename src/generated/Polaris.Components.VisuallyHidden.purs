module Polaris.Components.VisuallyHidden
  (VisuallyHiddenProps, visuallyHidden, visuallyHiddenRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type VisuallyHiddenProps = { children :: UndefinedOr JSX }

visuallyHidden :: forall r . Coercible r VisuallyHiddenProps => r -> JSX
visuallyHidden = elem visuallyHiddenRC

foreign import visuallyHiddenRC :: ReactComponent VisuallyHiddenProps
