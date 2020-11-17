module Polaris.Components.VisuallyHidden
  (VisuallyHiddenProps, visuallyHidden, visuallyHiddenRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type VisuallyHiddenProps = { children :: UndefinedOr JSX }

visuallyHidden :: forall r . Coercible r VisuallyHiddenProps => r -> JSX
visuallyHidden = element
                 visuallyHiddenRC <<< coerce

foreign import visuallyHiddenRC :: ReactComponent VisuallyHiddenProps
