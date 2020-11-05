module Polaris.Components.VisuallyHidden
  (VisuallyHiddenProps, visuallyHidden, visuallyHiddenRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type VisuallyHiddenProps = { children :: UndefinedOr JSX }

visuallyHidden :: forall r . Coercible r VisuallyHiddenProps => r -> JSX
visuallyHidden = element
                 visuallyHiddenRC <<< coerce

foreign import visuallyHiddenRC :: ReactComponent VisuallyHiddenProps
