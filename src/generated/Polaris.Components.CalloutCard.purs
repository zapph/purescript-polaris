module Polaris.Components.CalloutCard
  (CalloutCardProps, calloutCard, calloutCardRC) where

import Prelude
import Effect (Effect)
import Polaris.Types (Action)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type CalloutCardProps = { children :: UndefinedOr JSX
                        , illustration :: String
                        , primaryAction :: Action
                        , secondaryAction :: UndefinedOr Action
                        , title :: String
                        , onDismiss :: UndefinedOr (Effect Unit)
                        }

calloutCard :: forall r . Coercible r CalloutCardProps => r -> JSX
calloutCard = element
              calloutCardRC <<< coerce

foreign import calloutCardRC :: ReactComponent CalloutCardProps
