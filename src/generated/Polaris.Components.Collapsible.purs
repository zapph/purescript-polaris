module Polaris.Components.Collapsible
  ( CollapsibleBaseProps'
  , CollapsibleBaseProps
  , CollapsibleProps
  , collapsible
  , collapsibleRC
  , Transition
  , transition
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type CollapsibleBaseProps' = ( id :: String
                             , open :: Boolean
                             , transition :: UndefinedOr Transition
                             )

type CollapsibleBaseProps = { | CollapsibleBaseProps' }

type CollapsibleProps = PropsWithChildren CollapsibleBaseProps'

collapsible :: forall r . Coercible r CollapsibleBaseProps => r -> Array
                                                                   JSX -> JSX
collapsible = elemWithChildren collapsibleRC

foreign import collapsibleRC :: ReactComponent CollapsibleProps

type Transition = { duration :: UndefinedOr String
                  , timingFunction :: UndefinedOr String
                  }

transition :: forall r . Coercible r Transition => r -> Transition
transition = coerce
