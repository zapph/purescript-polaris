module Polaris.Components.EmptyState
  (EmptyStateProps, emptyState, emptyStateRC) where

import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type EmptyStateProps = { action :: UndefinedOr Action
                       , centeredLayout :: UndefinedOr Boolean
                       , children :: UndefinedOr JSX
                       , footerContent :: UndefinedOr JSX
                       , heading :: UndefinedOr String
                       , image :: String
                       , imageContained :: UndefinedOr Boolean
                       , largeImage :: UndefinedOr String
                       , secondaryAction :: UndefinedOr Action
                       }

emptyState :: forall r . Coercible r EmptyStateProps => r -> JSX
emptyState = elem emptyStateRC

foreign import emptyStateRC :: ReactComponent EmptyStateProps
