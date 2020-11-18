module Polaris.Components.Navigation
  ( NavigationProps
  , navigation
  , navigationRC
  , FunctionComponent
  , ItemType
  , itemType
  , SectionType
  , sectionType
  ) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type NavigationProps = { children :: UndefinedOr JSX
                       , contextControl :: UndefinedOr JSX
                       , location :: String
                       , sections :: UndefinedOr (Array SectionType)
                       , onDismiss :: UndefinedOr (Effect Unit)
                       }

navigation :: forall r . Coercible r NavigationProps => r -> JSX
navigation = elem navigationRC

foreign import navigationRC :: ReactComponent NavigationProps

foreign import data FunctionComponent :: Type

type ItemType = { icon :: UndefinedOr (String |+| FunctionComponent)
                , label :: String
                , url :: String
                }

itemType :: forall r . Coercible r ItemType => r -> ItemType
itemType = coerce

type SectionType = { fill :: UndefinedOr Boolean
                   , items :: UndefinedOr (Array ItemType)
                   , title :: UndefinedOr String
                   }

sectionType :: forall r . Coercible r SectionType => r -> SectionType
sectionType = coerce
