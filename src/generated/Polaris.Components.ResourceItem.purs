module Polaris.Components.ResourceItem
  ( ResourceItemProps
  , resourceItem
  , resourceItemRC
  , Alignment
  , DisableableAction
  ) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect.Uncurried (EffectFn1)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

type ResourceItemProps = { accessibilityLabel :: UndefinedOr String
                         , name :: UndefinedOr String
                         , ariaControls :: UndefinedOr String
                         , ariaExpanded :: UndefinedOr Boolean
                         , id :: String
                         , media :: UndefinedOr JSX
                         , persistActions :: UndefinedOr Boolean
                         , shortcutActions :: UndefinedOr
                                              (Array
                                               DisableableAction)
                         , sortOrder :: UndefinedOr Number
                         , url :: UndefinedOr String
                         , external :: UndefinedOr Boolean
                         , onClick :: UndefinedOr (EffectFn1 String Unit)
                         , children :: UndefinedOr JSX
                         , verticalAlignment :: UndefinedOr Alignment
                         }

resourceItem :: forall r . Coercible r ResourceItemProps => r -> JSX
resourceItem = element
               resourceItemRC <<< coerce

foreign import resourceItemRC :: ReactComponent ResourceItemProps

foreign import data Alignment :: Type

foreign import data DisableableAction :: Type
