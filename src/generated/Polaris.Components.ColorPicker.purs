module Polaris.Components.ColorPicker
  (ColorPickerProps, colorPicker, colorPickerRC, Color, color, HsbaColor) where

import Untagged.Union (UndefinedOr)
import Effect.Uncurried (EffectFn1)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)

type ColorPickerProps = { allowAlpha :: UndefinedOr Boolean
                        , color :: Color
                        , id :: UndefinedOr String
                        , onChange :: EffectFn1 HsbaColor Unit
                        }

colorPicker :: forall r . Coercible r ColorPickerProps => r -> JSX
colorPicker = element
              colorPickerRC <<< coerce

foreign import colorPickerRC :: ReactComponent ColorPickerProps

type Color = { alpha :: UndefinedOr Number
             , brightness :: Number
             , hue :: Number
             , saturation :: Number
             }

color :: forall r . Coercible r Color => r -> Color
color = coerce

foreign import data HsbaColor :: Type
