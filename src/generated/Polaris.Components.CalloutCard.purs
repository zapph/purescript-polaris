module Polaris.Components.CalloutCard
  ( CalloutCardBaseProps'
  , CalloutCardBaseProps
  , CalloutCardProps
  , calloutCard
  , calloutCardRC
  ) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type CalloutCardBaseProps' = ( illustration :: String
                             , primaryAction :: Action
                             , secondaryAction :: UndefinedOr Action
                             , title :: String
                             , onDismiss :: UndefinedOr (Effect Unit)
                             )

type CalloutCardBaseProps = { | CalloutCardBaseProps' }

type CalloutCardProps = PropsWithChildren CalloutCardBaseProps'

calloutCard :: forall r . Coercible r CalloutCardBaseProps => r -> Array
                                                                   JSX -> JSX
calloutCard = elemWithChildren calloutCardRC

foreign import calloutCardRC :: ReactComponent CalloutCardProps
