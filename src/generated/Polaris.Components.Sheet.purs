module Polaris.Components.Sheet
  (SheetBaseProps', SheetBaseProps, SheetProps, sheet, sheetRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type SheetBaseProps' = ( open :: Boolean
                       , onClose :: Effect Unit
                       , onEntered :: UndefinedOr (Effect Unit)
                       , onExit :: UndefinedOr (Effect Unit)
                       )

type SheetBaseProps = { | SheetBaseProps' }

type SheetProps = PropsWithChildren SheetBaseProps'

sheet :: forall r . Coercible r SheetBaseProps => r -> Array JSX -> JSX
sheet = elemWithChildren sheetRC

foreign import sheetRC :: ReactComponent SheetProps
