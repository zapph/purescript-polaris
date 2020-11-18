module Polaris.Components.DescriptionList
  (DescriptionListProps, descriptionList, descriptionListRC, Item, item) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)

type DescriptionListProps = { items :: Array Item }

descriptionList :: forall r . Coercible r DescriptionListProps => r -> JSX
descriptionList = elem descriptionListRC

foreign import descriptionListRC :: ReactComponent DescriptionListProps

type Item = { description :: JSX, term :: JSX }

item :: forall r . Coercible r Item => r -> Item
item = coerce
