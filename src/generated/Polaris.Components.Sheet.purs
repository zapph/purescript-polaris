module Polaris.Components.Sheet(SheetProps, sheet, sheetRC) where

import Prelude
import Effect (Effect)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type SheetProps = { children :: JSX
                  , open :: Boolean
                  , onClose :: Effect Unit
                  , onEntered :: UndefinedOr (Effect Unit)
                  , onExit :: UndefinedOr (Effect Unit)
                  }

sheet :: forall r . Coercible r SheetProps => r -> JSX
sheet = element
        sheetRC <<< coerce

foreign import sheetRC :: ReactComponent SheetProps
