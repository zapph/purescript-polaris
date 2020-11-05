module Polaris.Components.Autocomplete
  ( AutocompleteProps
  , autocomplete
  , autocompleteRC
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , PArray
  , FunctionComponent
  ) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Literals (StringLit)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Effect.Uncurried (EffectFn1)
import Untagged.Coercible (class Coercible, coerce)

type AutocompleteProps = { actionBefore :: UndefinedOr ActionListItemDescriptor
                         , allowMultiple :: UndefinedOr Boolean
                         , emptyState :: UndefinedOr JSX
                         , id :: UndefinedOr String
                         , listTitle :: UndefinedOr String
                         , loading :: UndefinedOr Boolean
                         , options :: PArray
                         , preferredPosition :: UndefinedOr
                                                (StringLit
                                                 "above" |+| StringLit
                                                             "below" |+| StringLit
                                                                         "mostSpace")
                         , selected :: Array String
                         , textField :: JSX
                         , willLoadMoreResults :: UndefinedOr Boolean
                         , onLoadMoreResults :: UndefinedOr (Effect Unit)
                         , onSelect :: EffectFn1 (Array String) Unit
                         }

autocomplete :: forall r . Coercible r AutocompleteProps => r -> JSX
autocomplete = element
               autocompleteRC <<< coerce

foreign import autocompleteRC :: ReactComponent AutocompleteProps

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

foreign import data PArray :: Type

foreign import data FunctionComponent :: Type
