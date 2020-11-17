module Polaris.Components.ContextualSaveBar
  ( ContextualSaveBarProps
  , contextualSaveBar
  , contextualSaveBarRC
  , ContextualSaveBarAction
  , contextualSaveBarAction
  , ContextualSaveBarDiscardActionPropsContextualSaveBarAction
  , contextualSaveBarDiscardActionPropsContextualSaveBarAction
  ) where

import Prelude
import Effect (Effect)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

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
