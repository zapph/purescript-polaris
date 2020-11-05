module Polaris.Components.Sheet(SheetProps, sheet, sheetRC) where

import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Union (UndefinedOr)
import Untagged.Coercible (class Coercible, coerce)

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
