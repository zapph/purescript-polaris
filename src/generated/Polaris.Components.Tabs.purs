module Polaris.Components.Tabs
  (TabsProps, tabs, tabsRC, TabDescriptor, tabDescriptor) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect.Uncurried (EffectFn1)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

type TabsProps = { children :: UndefinedOr JSX
                 , fitted :: UndefinedOr Boolean
                 , selected :: Number
                 , tabs :: Array TabDescriptor
                 , onSelect :: UndefinedOr (EffectFn1 Number Unit)
                 }

tabs :: forall r . Coercible r TabsProps => r -> JSX
tabs = element
       tabsRC <<< coerce

foreign import tabsRC :: ReactComponent TabsProps

type TabDescriptor = { accessibilityLabel :: UndefinedOr String
                     , content :: String
                     , id :: String
                     , panelID :: UndefinedOr String
                     , url :: UndefinedOr String
                     }

tabDescriptor :: forall r . Coercible r TabDescriptor => r -> TabDescriptor
tabDescriptor = coerce
