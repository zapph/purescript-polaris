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

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

type NavigationProps = { children :: UndefinedOr JSX
                       , contextControl :: UndefinedOr JSX
                       , location :: String
                       , sections :: UndefinedOr (Array SectionType)
                       , onDismiss :: UndefinedOr (Effect Unit)
                       }

navigation :: forall r . Coercible r NavigationProps => r -> JSX
navigation = element
             navigationRC <<< coerce

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
