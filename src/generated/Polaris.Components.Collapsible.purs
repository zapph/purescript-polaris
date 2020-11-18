module Polaris.Components.Collapsible
  (CollapsibleProps, collapsible, collapsibleRC, Transition, transition) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type CollapsibleProps = { children :: UndefinedOr JSX
                        , id :: String
                        , open :: Boolean
                        , transition :: UndefinedOr Transition
                        }

collapsible :: forall r . Coercible r CollapsibleProps => r -> JSX
collapsible = elem collapsibleRC

foreign import collapsibleRC :: ReactComponent CollapsibleProps

type Transition = { duration :: UndefinedOr String
                  , timingFunction :: UndefinedOr String
                  }

transition :: forall r . Coercible r Transition => r -> Transition
transition = coerce
