module Polaris.Components.ContextualSaveBar
  ( ContextualSaveBarProps
  , contextualSaveBar
  , contextualSaveBarRC
  , ContextualSaveBarAction
  , contextualSaveBarAction
  , ContextualSaveBarDiscardActionPropsContextualSaveBarAction
  , contextualSaveBarDiscardActionPropsContextualSaveBarAction
  ) where

import Untagged.Union (UndefinedOr)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<), Unit)
import Effect (Effect)

type ContextualSaveBarProps = { alignContentFlush :: UndefinedOr Boolean
                              , discardAction :: UndefinedOr
                                                 ContextualSaveBarDiscardActionPropsContextualSaveBarAction
                              , message :: UndefinedOr String
                              , saveAction :: UndefinedOr
                                              ContextualSaveBarAction
                              }

contextualSaveBar :: forall r . Coercible r ContextualSaveBarProps => r -> JSX
contextualSaveBar = element
                    contextualSaveBarRC <<< coerce

foreign import contextualSaveBarRC :: ReactComponent ContextualSaveBarProps

type ContextualSaveBarAction = { content :: UndefinedOr String
                               , disabled :: UndefinedOr Boolean
                               , loading :: UndefinedOr Boolean
                               , url :: UndefinedOr String
                               , onAction :: UndefinedOr (Effect Unit)
                               }

contextualSaveBarAction :: forall r . Coercible r ContextualSaveBarAction => r -> ContextualSaveBarAction
contextualSaveBarAction = coerce

type ContextualSaveBarDiscardActionPropsContextualSaveBarAction = { discardConfirmationModal :: UndefinedOr
                                                                                                Boolean
                                                                  , content :: UndefinedOr
                                                                               String
                                                                  , disabled :: UndefinedOr
                                                                                Boolean
                                                                  , loading :: UndefinedOr
                                                                               Boolean
                                                                  , url :: UndefinedOr
                                                                           String
                                                                  , onAction :: UndefinedOr
                                                                                (Effect
                                                                                 Unit)
                                                                  }

contextualSaveBarDiscardActionPropsContextualSaveBarAction :: forall r . Coercible r
                                                                                   ContextualSaveBarDiscardActionPropsContextualSaveBarAction => r -> ContextualSaveBarDiscardActionPropsContextualSaveBarAction
contextualSaveBarDiscardActionPropsContextualSaveBarAction = coerce
