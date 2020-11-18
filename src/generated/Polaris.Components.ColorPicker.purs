module Polaris.Components.ColorPicker
  (ColorPickerProps, colorPicker, colorPickerRC, Color, color, HsbaColor) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type ColorPickerProps = { allowAlpha :: UndefinedOr Boolean
                        , color :: Color
                        , id :: UndefinedOr String
                        , onChange :: EffectFn1 HsbaColor Unit
                        }

colorPicker :: forall r . Coercible r ColorPickerProps => r -> JSX
colorPicker = elem colorPickerRC

foreign import colorPickerRC :: ReactComponent ColorPickerProps

type Color = { alpha :: UndefinedOr Number
             , brightness :: Number
             , hue :: Number
             , saturation :: Number
             }

color :: forall r . Coercible r Color => r -> Color
color = coerce

foreign import data HsbaColor :: Type
