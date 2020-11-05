module Polaris.Components.DatePicker
  ( DatePickerProps
  , datePicker
  , datePickerRC
  , Date
  , Months
  , Range
  , Weekdays
  , Year
  ) where

import Untagged.Union (UndefinedOr, type (|+|))
import Effect.Uncurried (EffectFn1, EffectFn2)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)

type DatePickerProps = { allowRange :: UndefinedOr Boolean
                       , disableDatesAfter :: UndefinedOr Date
                       , disableDatesBefore :: UndefinedOr Date
                       , id :: UndefinedOr String
                       , month :: Months
                       , multiMonth :: UndefinedOr Boolean
                       , selected :: UndefinedOr (Date |+| Range)
                       , weekStartsOn :: UndefinedOr Weekdays
                       , year :: Year
                       , onChange :: UndefinedOr (EffectFn1 Range Unit)
                       , onMonthChange :: UndefinedOr
                                          (EffectFn2
                                           Months
                                           Year
                                           Unit)
                       }

datePicker :: forall r . Coercible r DatePickerProps => r -> JSX
datePicker = element
             datePickerRC <<< coerce

foreign import datePickerRC :: ReactComponent DatePickerProps

foreign import data Date :: Type

foreign import data Months :: Type

foreign import data Range :: Type

foreign import data Weekdays :: Type

foreign import data Year :: Type
