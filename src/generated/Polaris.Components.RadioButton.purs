module Polaris.Components.RadioButton
  (RadioButtonProps, radioButton, radioButtonRC) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn2)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

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
