module Polaris.Components.Scrollable
  ( ScrollableBaseProps'
  , ScrollableBaseProps
  , ScrollableProps
  , scrollable
  , scrollableRC
  ) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type ScrollableBaseProps' = ( hint :: UndefinedOr Boolean
                            , horizontal :: UndefinedOr Boolean
                            , shadow :: UndefinedOr Boolean
                            , vertical :: UndefinedOr Boolean
                            , onScrolledToBottom :: UndefinedOr (Effect Unit)
                            )

type ScrollableBaseProps = { | ScrollableBaseProps' }

type ScrollableProps = PropsWithChildren ScrollableBaseProps'

scrollable :: forall r . Coercible r ScrollableBaseProps => r -> Array
                                                                 JSX -> JSX
scrollable = elemWithChildren scrollableRC

foreign import scrollableRC :: ReactComponent ScrollableProps
