module Polaris.Components.Collapsible
  (CollapsibleProps, collapsible, collapsibleRC, Transition, transition) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type CollapsibleProps = { children :: UndefinedOr JSX
                        , id :: String
                        , open :: Boolean
                        , transition :: UndefinedOr Transition
                        }

collapsible :: forall r . Coercible r CollapsibleProps => r -> JSX
collapsible = element
              collapsibleRC <<< coerce

foreign import collapsibleRC :: ReactComponent CollapsibleProps

type Transition = { duration :: UndefinedOr String
                  , timingFunction :: UndefinedOr String
                  }

transition :: forall r . Coercible r Transition => r -> Transition
transition = coerce
