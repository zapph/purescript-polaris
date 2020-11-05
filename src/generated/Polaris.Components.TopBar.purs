module Polaris.Components.TopBar(TopBarProps, topBar, topBarRC, OnDismiss) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

type TopBarProps = { contextControl :: UndefinedOr JSX
                   , onSearchResultsDismiss :: UndefinedOr OnDismiss
                   , searchField :: UndefinedOr JSX
                   , searchResults :: UndefinedOr JSX
                   , searchResultsOverlayVisible :: UndefinedOr Boolean
                   , searchResultsVisible :: UndefinedOr Boolean
                   , secondaryMenu :: UndefinedOr JSX
                   , showNavigationToggle :: UndefinedOr Boolean
                   , userMenu :: UndefinedOr JSX
                   , onNavigationToggle :: UndefinedOr (Effect Unit)
                   }

topBar :: forall r . Coercible r TopBarProps => r -> JSX
topBar = element
         topBarRC <<< coerce

foreign import topBarRC :: ReactComponent TopBarProps

foreign import data OnDismiss :: Type
