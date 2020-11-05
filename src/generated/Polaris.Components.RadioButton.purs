module Polaris.Components.RadioButton
  (RadioButtonProps, radioButton, radioButtonRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Effect.Uncurried (EffectFn2)
import Untagged.Coercible (class Coercible, coerce)

type RadioButtonProps = { ariaDescribedBy :: UndefinedOr String
                        , checked :: UndefinedOr Boolean
                        , disabled :: UndefinedOr Boolean
                        , helpText :: UndefinedOr JSX
                        , id :: UndefinedOr String
                        , label :: JSX
                        , labelHidden :: UndefinedOr Boolean
                        , name :: UndefinedOr String
                        , value :: UndefinedOr String
                        , onBlur :: UndefinedOr (Effect Unit)
                        , onChange :: UndefinedOr
                                      (EffectFn2
                                       Boolean
                                       String
                                       Unit)
                        , onFocus :: UndefinedOr (Effect Unit)
                        }

radioButton :: forall r . Coercible r RadioButtonProps => r -> JSX
radioButton = element
              radioButtonRC <<< coerce

foreign import radioButtonRC :: ReactComponent RadioButtonProps
