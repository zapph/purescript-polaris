module Polaris.Components.Navigation
  ( NavigationBaseProps'
  , NavigationBaseProps
  , NavigationProps
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
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type NavigationBaseProps' = ( contextControl :: UndefinedOr JSX
                            , location :: String
                            , sections :: UndefinedOr (Array SectionType)
                            , onDismiss :: UndefinedOr (Effect Unit)
                            )

type NavigationBaseProps = { | NavigationBaseProps' }

type NavigationProps = PropsWithChildren NavigationBaseProps'

navigation :: forall r . Coercible r NavigationBaseProps => r -> Array
                                                                 JSX -> JSX
navigation = elemWithChildren navigationRC

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
