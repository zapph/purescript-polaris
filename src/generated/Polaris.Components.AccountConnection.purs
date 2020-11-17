module Polaris.Components.AccountConnection
  (AccountConnectionProps, accountConnection, accountConnectionRC) where

import Prelude
import Polaris.Types (Action)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type AccountConnectionProps = { accountName :: UndefinedOr String
                              , action :: UndefinedOr Action
                              , avatarUrl :: UndefinedOr String
                              , connected :: UndefinedOr Boolean
                              , details :: UndefinedOr JSX
                              , termsOfService :: UndefinedOr JSX
                              , title :: UndefinedOr JSX
                              }

accountConnection :: forall r . Coercible r AccountConnectionProps => r -> JSX
accountConnection = element
                    accountConnectionRC <<< coerce

foreign import accountConnectionRC :: ReactComponent AccountConnectionProps
