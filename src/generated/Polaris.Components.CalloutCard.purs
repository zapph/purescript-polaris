module Polaris.Components.CalloutCard
  (CalloutCardProps, calloutCard, calloutCardRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Polaris.Types (Action)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

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
