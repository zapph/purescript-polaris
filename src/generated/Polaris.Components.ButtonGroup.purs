module Polaris.Components.ButtonGroup
  ( ButtonGroupBaseProps'
  , ButtonGroupBaseProps
  , ButtonGroupProps
  , buttonGroup
  , buttonGroupRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type ButtonGroupBaseProps' = ( connectedTop :: UndefinedOr Boolean
                             , fullWidth :: UndefinedOr Boolean
                             , segmented :: UndefinedOr Boolean
                             )

type ButtonGroupBaseProps = { | ButtonGroupBaseProps' }

type ButtonGroupProps = PropsWithChildren ButtonGroupBaseProps'

buttonGroup :: forall r . Coercible r ButtonGroupBaseProps => r -> Array
                                                                   JSX -> JSX
buttonGroup = elemWithChildren buttonGroupRC

foreign import buttonGroupRC :: ReactComponent ButtonGroupProps
