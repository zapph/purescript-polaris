module Polaris.Components.TextField
  (TextFieldProps, textField, textFieldRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Polaris.Types (Action)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Effect.Uncurried (EffectFn2, EffectFn1)
import Untagged.Coercible (class Coercible, coerce)

type TextFieldProps = { align :: UndefinedOr
                                 (StringLit
                                  "left" |+| StringLit
                                             "center" |+| StringLit
                                                          "right")
                      , ariaActiveDescendant :: UndefinedOr String
                      , ariaAutocomplete :: UndefinedOr String
                      , ariaControls :: UndefinedOr String
                      , ariaOwns :: UndefinedOr String
                      , autoComplete :: UndefinedOr (Boolean |+| String)
                      , autoFocus :: UndefinedOr Boolean
                      , clearButton :: UndefinedOr Boolean
                      , connectedLeft :: UndefinedOr JSX
                      , connectedRight :: UndefinedOr JSX
                      , disabled :: UndefinedOr Boolean
                      , error :: UndefinedOr
                                 (String |+| JSX |+| Array
                                                     (String |+| JSX) |+| Boolean)
                      , focused :: UndefinedOr Boolean
                      , helpText :: UndefinedOr JSX
                      , id :: UndefinedOr String
                      , label :: String
                      , labelAction :: UndefinedOr Action
                      , labelHidden :: UndefinedOr Boolean
                      , max :: UndefinedOr (Number |+| String)
                      , maxLength :: UndefinedOr Number
                      , min :: UndefinedOr (Number |+| String)
                      , minLength :: UndefinedOr Number
                      , multiline :: UndefinedOr (Boolean |+| Number)
                      , name :: UndefinedOr String
                      , pattern :: UndefinedOr String
                      , placeholder :: UndefinedOr String
                      , prefix :: UndefinedOr JSX
                      , readOnly :: UndefinedOr Boolean
                      , role :: UndefinedOr String
                      , showCharacterCount :: UndefinedOr Boolean
                      , spellCheck :: UndefinedOr Boolean
                      , step :: UndefinedOr Number
                      , suffix :: UndefinedOr JSX
                      , "type" :: UndefinedOr
                                  (StringLit
                                   "text" |+| StringLit
                                              "email" |+| StringLit
                                                          "number" |+| StringLit
                                                                       "password" |+| StringLit
                                                                                      "search" |+| StringLit
                                                                                                   "tel" |+| StringLit
                                                                                                             "url" |+| StringLit
                                                                                                                       "date" |+| StringLit
                                                                                                                                  "datetime-local" |+| StringLit
                                                                                                                                                       "month" |+| StringLit
                                                                                                                                                                   "time" |+| StringLit
                                                                                                                                                                              "week" |+| StringLit
                                                                                                                                                                                         "currency")
                      , value :: UndefinedOr String
                      , onBlur :: UndefinedOr (Effect Unit)
                      , onChange :: UndefinedOr (EffectFn2 String String Unit)
                      , onClearButtonClick :: UndefinedOr
                                              (EffectFn1
                                               String
                                               Unit)
                      , onFocus :: UndefinedOr (Effect Unit)
                      }

textField :: forall r . Coercible r TextFieldProps => r -> JSX
textField = element
            textFieldRC <<< coerce

foreign import textFieldRC :: ReactComponent TextFieldProps