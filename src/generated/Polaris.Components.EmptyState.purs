module Polaris.Components.EmptyState
  (EmptyStateProps, emptyState, emptyStateRC) where

import Prelude
import Polaris.Types (Action)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
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
emptyState = element
             emptyStateRC <<< coerce

foreign import emptyStateRC :: ReactComponent EmptyStateProps
