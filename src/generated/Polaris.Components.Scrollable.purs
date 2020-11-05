module Polaris.Components.Scrollable
  (ScrollableProps, scrollable, scrollableRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

type ScrollableProps = { children :: UndefinedOr JSX
                       , hint :: UndefinedOr Boolean
                       , horizontal :: UndefinedOr Boolean
                       , shadow :: UndefinedOr Boolean
                       , vertical :: UndefinedOr Boolean
                       , onScrolledToBottom :: UndefinedOr (Effect Unit)
                       }

scrollable :: forall r . Coercible r ScrollableProps => r -> JSX
scrollable = element
             scrollableRC <<< coerce

foreign import scrollableRC :: ReactComponent ScrollableProps
