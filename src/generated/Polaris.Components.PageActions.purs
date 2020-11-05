module Polaris.Components.PageActions
  ( PageActionsProps
  , pageActions
  , pageActionsRC
  , ComplexAction
  , complexAction
  , DisableableActionLoadableAction
  , disableableActionLoadableAction
  , FunctionComponent
  ) where

import Untagged.Union (UndefinedOr, type (|+|))
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<), Unit)
import Literals (StringLit)
import Effect (Effect)

type PageActionsProps = { primaryAction :: UndefinedOr
                                           DisableableActionLoadableAction
                        , secondaryActions :: UndefinedOr (Array ComplexAction)
                        }

pageActions :: forall r . Coercible r PageActionsProps => r -> JSX
pageActions = element
              pageActionsRC <<< coerce

foreign import pageActionsRC :: ReactComponent PageActionsProps

type ComplexAction = { accessibilityLabel :: UndefinedOr String
                     , content :: UndefinedOr String
                     , destructive :: UndefinedOr Boolean
                     , disabled :: UndefinedOr Boolean
                     , external :: UndefinedOr Boolean
                     , icon :: UndefinedOr (String |+| FunctionComponent)
                     , id :: UndefinedOr String
                     , loading :: UndefinedOr Boolean
                     , target :: UndefinedOr
                                 (StringLit
                                  "ADMIN_PATH" |+| StringLit
                                                   "REMOTE" |+| StringLit
                                                                "APP")
                     , url :: UndefinedOr String
                     , onAction :: UndefinedOr (Effect Unit)
                     , onMouseEnter :: UndefinedOr (Effect Unit)
                     , onTouchStart :: UndefinedOr (Effect Unit)
                     }

complexAction :: forall r . Coercible r ComplexAction => r -> ComplexAction
complexAction = coerce

type DisableableActionLoadableAction = { accessibilityLabel :: UndefinedOr
                                                               String
                                       , content :: UndefinedOr String
                                       , disabled :: UndefinedOr Boolean
                                       , external :: UndefinedOr Boolean
                                       , id :: UndefinedOr String
                                       , url :: UndefinedOr String
                                       , onAction :: UndefinedOr (Effect Unit)
                                       , onMouseEnter :: UndefinedOr
                                                         (Effect
                                                          Unit)
                                       , onTouchStart :: UndefinedOr
                                                         (Effect
                                                          Unit)
                                       , loading :: UndefinedOr Boolean
                                       }

disableableActionLoadableAction :: forall r . Coercible r
                                                        DisableableActionLoadableAction => r -> DisableableActionLoadableAction
disableableActionLoadableAction = coerce

foreign import data FunctionComponent :: Type
