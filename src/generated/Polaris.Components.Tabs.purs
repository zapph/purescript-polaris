module Polaris.Components.Tabs
  (TabsProps, tabs, tabsRC, TabDescriptor, tabDescriptor) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type TabsProps = { children :: UndefinedOr JSX
                 , fitted :: UndefinedOr Boolean
                 , selected :: Number
                 , tabs :: Array TabDescriptor
                 , onSelect :: UndefinedOr (EffectFn1 Number Unit)
                 }

tabs :: forall r . Coercible r TabsProps => r -> JSX
tabs = elem tabsRC

foreign import tabsRC :: ReactComponent TabsProps

type TabDescriptor = { accessibilityLabel :: UndefinedOr String
                     , content :: String
                     , id :: String
                     , panelID :: UndefinedOr String
                     , url :: UndefinedOr String
                     }

tabDescriptor :: forall r . Coercible r TabDescriptor => r -> TabDescriptor
tabDescriptor = coerce
