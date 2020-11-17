module Polaris.Components.ButtonGroup
  (ButtonGroupProps, buttonGroup, buttonGroupRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type ButtonGroupProps = { children :: UndefinedOr JSX
                        , connectedTop :: UndefinedOr Boolean
                        , fullWidth :: UndefinedOr Boolean
                        , segmented :: UndefinedOr Boolean
                        }

buttonGroup :: forall r . Coercible r ButtonGroupProps => r -> JSX
buttonGroup = element
              buttonGroupRC <<< coerce

foreign import buttonGroupRC :: ReactComponent ButtonGroupProps
