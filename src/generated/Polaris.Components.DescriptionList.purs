module Polaris.Components.DescriptionList
  (DescriptionListProps, descriptionList, descriptionListRC, Item, item) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)

type DescriptionListProps = { items :: Array Item }

descriptionList :: forall r . Coercible r DescriptionListProps => r -> JSX
descriptionList = element
                  descriptionListRC <<< coerce

foreign import descriptionListRC :: ReactComponent DescriptionListProps

type Item = { description :: JSX, term :: JSX }

item :: forall r . Coercible r Item => r -> Item
item = coerce
