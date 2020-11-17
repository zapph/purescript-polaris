module Polaris.Components.Scrollable
  (ScrollableProps, scrollable, scrollableRC) where

import Prelude
import Effect (Effect)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

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
