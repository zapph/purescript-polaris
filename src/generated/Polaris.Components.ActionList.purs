module Polaris.Components.ActionList
  ( ActionListProps
  , actionList
  , actionListRC
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , ActionListSection
  , actionListSection
  , FunctionComponent
  , OnAction
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ActionListProps = { actionRole :: UndefinedOr String
                       , items :: UndefinedOr (Array ActionListItemDescriptor)
                       , onActionAnyItem :: UndefinedOr OnAction
                       , sections :: UndefinedOr (Array ActionListSection)
                       }

actionList :: forall r . Coercible r ActionListProps => r -> JSX
actionList = elem actionListRC

foreign import actionListRC :: ReactComponent ActionListProps

type ActionListItemDescriptor = { accessibilityLabel :: UndefinedOr String
                                , active :: UndefinedOr Boolean
                                , badge :: UndefinedOr
                                           { content :: UndefinedOr String
                                           , status :: UndefinedOr
                                                       (StringLit
                                                        "new")
                                           }
                                , content :: UndefinedOr String
                                , destructive :: UndefinedOr Boolean
                                , disabled :: UndefinedOr Boolean
                                , ellipsis :: UndefinedOr Boolean
                                , external :: UndefinedOr Boolean
                                , helpText :: UndefinedOr String
                                , icon :: UndefinedOr
                                          (String |+| FunctionComponent)
                                , id :: UndefinedOr String
                                , image :: UndefinedOr String
                                , role :: UndefinedOr String
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

actionListItemDescriptor :: forall r . Coercible r ActionListItemDescriptor => r -> ActionListItemDescriptor
actionListItemDescriptor = coerce

type ActionListSection = { items :: Array ActionListItemDescriptor
                         , title :: UndefinedOr String
                         }

actionListSection :: forall r . Coercible r ActionListSection => r -> ActionListSection
actionListSection = coerce

foreign import data FunctionComponent :: Type

foreign import data OnAction :: Type
