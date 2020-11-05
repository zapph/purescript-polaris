module Polaris.Components.RangeSlider
  (RangeSliderProps, rangeSlider, rangeSliderRC, DualValue) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Polaris.Types (Action)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Effect.Uncurried (EffectFn2)
import Untagged.Coercible (class Coercible, coerce)

type RangeSliderProps = { disabled :: UndefinedOr Boolean
                        , error :: UndefinedOr
                                   (String |+| JSX |+| Array
                                                       (String |+| JSX))
                        , helpText :: UndefinedOr JSX
                        , id :: UndefinedOr String
                        , label :: String
                        , labelAction :: UndefinedOr Action
                        , labelHidden :: UndefinedOr Boolean
                        , max :: UndefinedOr Number
                        , min :: UndefinedOr Number
                        , output :: UndefinedOr Boolean
                        , prefix :: UndefinedOr JSX
                        , step :: UndefinedOr Number
                        , suffix :: UndefinedOr JSX
                        , value :: Number |+| DualValue
                        , onBlur :: UndefinedOr (Effect Unit)
                        , onChange :: EffectFn2
                                      (Number |+| DualValue)
                                      String
                                      Unit
                        , onFocus :: UndefinedOr (Effect Unit)
                        }

rangeSlider :: forall r . Coercible r RangeSliderProps => r -> JSX
rangeSlider = element
              rangeSliderRC <<< coerce

foreign import rangeSliderRC :: ReactComponent RangeSliderProps

foreign import data DualValue :: Type
