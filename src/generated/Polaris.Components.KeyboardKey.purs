module Polaris.Components.KeyboardKey
  (KeyboardKeyProps, keyboardKey, keyboardKeyRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type KeyboardKeyProps = { children :: UndefinedOr String }

keyboardKey :: forall r . Coercible r KeyboardKeyProps => r -> JSX
keyboardKey = element
              keyboardKeyRC <<< coerce

foreign import keyboardKeyRC :: ReactComponent KeyboardKeyProps
