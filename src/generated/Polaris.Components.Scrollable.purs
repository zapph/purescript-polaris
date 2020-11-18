module Polaris.Components.Scrollable
  (ScrollableProps, scrollable, scrollableRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type ScrollableProps = { children :: UndefinedOr JSX
                       , hint :: UndefinedOr Boolean
                       , horizontal :: UndefinedOr Boolean
                       , shadow :: UndefinedOr Boolean
                       , vertical :: UndefinedOr Boolean
                       , onScrolledToBottom :: UndefinedOr (Effect Unit)
                       }

scrollable :: forall r . Coercible r ScrollableProps => r -> JSX
scrollable = elem scrollableRC

foreign import scrollableRC :: ReactComponent ScrollableProps
