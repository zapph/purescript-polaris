module Polaris.Components.KeyboardKey
  (KeyboardKeyProps, keyboardKey, keyboardKeyRC) where

import Untagged.Union (UndefinedOr)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

type KeyboardKeyProps = { children :: UndefinedOr String }

keyboardKey :: forall r . Coercible r KeyboardKeyProps => r -> JSX
keyboardKey = element
              keyboardKeyRC <<< coerce

foreign import keyboardKeyRC :: ReactComponent KeyboardKeyProps
