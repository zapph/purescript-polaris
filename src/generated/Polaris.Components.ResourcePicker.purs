module Polaris.Components.ResourcePicker
  (ResourcePickerProps, resourcePicker, resourcePickerRC, SelectPayload) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

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
