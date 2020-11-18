module Polaris.Components.Sheet(SheetProps, sheet, sheetRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type SheetProps = { children :: JSX
                  , open :: Boolean
                  , onClose :: Effect Unit
                  , onEntered :: UndefinedOr (Effect Unit)
                  , onExit :: UndefinedOr (Effect Unit)
                  }

sheet :: forall r . Coercible r SheetProps => r -> JSX
sheet = elem sheetRC

foreign import sheetRC :: ReactComponent SheetProps
