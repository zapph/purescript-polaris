module Polaris.Components.ButtonGroup
  (ButtonGroupProps, buttonGroup, buttonGroupRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type ButtonGroupProps = { children :: UndefinedOr JSX
                        , connectedTop :: UndefinedOr Boolean
                        , fullWidth :: UndefinedOr Boolean
                        , segmented :: UndefinedOr Boolean
                        }

buttonGroup :: forall r . Coercible r ButtonGroupProps => r -> JSX
buttonGroup = element
              buttonGroupRC <<< coerce

foreign import buttonGroupRC :: ReactComponent ButtonGroupProps
