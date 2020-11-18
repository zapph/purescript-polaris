module Polaris.Components.CalloutCard
  (CalloutCardProps, calloutCard, calloutCardRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type CalloutCardProps = { children :: UndefinedOr JSX
                        , illustration :: String
                        , primaryAction :: Action
                        , secondaryAction :: UndefinedOr Action
                        , title :: String
                        , onDismiss :: UndefinedOr (Effect Unit)
                        }

calloutCard :: forall r . Coercible r CalloutCardProps => r -> JSX
calloutCard = elem calloutCardRC

foreign import calloutCardRC :: ReactComponent CalloutCardProps
