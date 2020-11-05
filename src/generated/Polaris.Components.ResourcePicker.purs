module Polaris.Components.ResourcePicker
  (ResourcePickerProps, resourcePicker, resourcePickerRC, SelectPayload) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Effect.Uncurried (EffectFn1)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)

type ResourcePickerProps = { allowMultiple :: UndefinedOr Boolean
                           , initialQuery :: UndefinedOr String
                           , open :: Boolean
                           , resourceType :: StringLit
                                             "Product" |+| StringLit
                                                           "ProductVariant" |+| StringLit
                                                                                "Collection"
                           , showHidden :: UndefinedOr Boolean
                           , showVariants :: UndefinedOr Boolean
                           , onCancel :: UndefinedOr (Effect Unit)
                           , onSelection :: UndefinedOr
                                            (EffectFn1
                                             SelectPayload
                                             Unit)
                           }

resourcePicker :: forall r . Coercible r ResourcePickerProps => r -> JSX
resourcePicker = element
                 resourcePickerRC <<< coerce

foreign import resourcePickerRC :: ReactComponent ResourcePickerProps

foreign import data SelectPayload :: Type
