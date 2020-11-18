module Polaris.Components.Filters
  ( FiltersProps
  , filters
  , filtersRC
  , AppliedFilterInterface
  , appliedFilterInterface
  , FilterInterface
  , filterInterface
  ) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type FiltersProps = { appliedFilters :: UndefinedOr
                                        (Array
                                         AppliedFilterInterface)
                    , children :: UndefinedOr JSX
                    , disabled :: UndefinedOr Boolean
                    , filters :: Array FilterInterface
                    , focused :: UndefinedOr Boolean
                    , helpText :: UndefinedOr (String |+| JSX)
                    , hideTags :: UndefinedOr Boolean
                    , queryPlaceholder :: UndefinedOr String
                    , queryValue :: UndefinedOr String
                    , onClearAll :: Effect Unit
                    , onQueryBlur :: UndefinedOr (Effect Unit)
                    , onQueryChange :: EffectFn1 String Unit
                    , onQueryClear :: Effect Unit
                    , onQueryFocus :: UndefinedOr (Effect Unit)
                    }

filters :: forall r . Coercible r FiltersProps => r -> JSX
filters = elem filtersRC

foreign import filtersRC :: ReactComponent FiltersProps

type AppliedFilterInterface = { key :: String
                              , label :: String
                              , onRemove :: EffectFn1 String Unit
                              }

appliedFilterInterface :: forall r . Coercible r AppliedFilterInterface => r -> AppliedFilterInterface
appliedFilterInterface = coerce

type FilterInterface = { disabled :: UndefinedOr Boolean
                       , filter :: JSX
                       , key :: String
                       , label :: String
                       , shortcut :: UndefinedOr Boolean
                       }

filterInterface :: forall r . Coercible r FilterInterface => r -> FilterInterface
filterInterface = coerce
