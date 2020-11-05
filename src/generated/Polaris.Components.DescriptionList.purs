module Polaris.Components.DescriptionList
  (DescriptionListProps, descriptionList, descriptionListRC, Item, item) where

import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

type DescriptionListProps = { items :: Array Item }

descriptionList :: forall r . Coercible r DescriptionListProps => r -> JSX
descriptionList = element
                  descriptionListRC <<< coerce

foreign import descriptionListRC :: ReactComponent DescriptionListProps

type Item = { description :: JSX, term :: JSX }

item :: forall r . Coercible r Item => r -> Item
item = coerce
