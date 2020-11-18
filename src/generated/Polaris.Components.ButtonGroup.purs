module Polaris.Components.ButtonGroup
  (ButtonGroupProps, buttonGroup, buttonGroupRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type ButtonGroupProps = { children :: UndefinedOr JSX
                        , connectedTop :: UndefinedOr Boolean
                        , fullWidth :: UndefinedOr Boolean
                        , segmented :: UndefinedOr Boolean
                        }

buttonGroup :: forall r . Coercible r ButtonGroupProps => r -> JSX
buttonGroup = elem buttonGroupRC

foreign import buttonGroupRC :: ReactComponent ButtonGroupProps
