module Polaris.Components.Tabs
  ( TabsBaseProps'
  , TabsBaseProps
  , TabsProps
  , tabs
  , tabsRC
  , TabDescriptor
  , tabDescriptor
  ) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type TabsBaseProps' = ( fitted :: UndefinedOr Boolean
                      , selected :: Number
                      , tabs :: Array TabDescriptor
                      , onSelect :: UndefinedOr (EffectFn1 Number Unit)
                      )

type TabsBaseProps = { | TabsBaseProps' }

type TabsProps = PropsWithChildren TabsBaseProps'

tabs :: forall r . Coercible r TabsBaseProps => r -> Array JSX -> JSX
tabs = elemWithChildren tabsRC

foreign import tabsRC :: ReactComponent TabsProps

type TabDescriptor = { accessibilityLabel :: UndefinedOr String
                     , content :: String
                     , id :: String
                     , panelID :: UndefinedOr String
                     , url :: UndefinedOr String
                     }

tabDescriptor :: forall r . Coercible r TabDescriptor => r -> TabDescriptor
tabDescriptor = coerce
