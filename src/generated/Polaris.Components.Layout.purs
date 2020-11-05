module Polaris.Components.Layout
  ( LayoutProps
  , layout
  , layoutRC
  , LayoutAnnotatedSectionProps
  , layoutAnnotatedSection
  , layoutAnnotatedSectionRC
  , LayoutSectionProps
  , layoutSection
  , layoutSectionRC
  ) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type LayoutProps = { children :: UndefinedOr JSX
                   , sectioned :: UndefinedOr Boolean
                   }

layout :: forall r . Coercible r LayoutProps => r -> JSX
layout = element
         layoutRC <<< coerce

foreign import layoutRC :: ReactComponent LayoutProps

type LayoutAnnotatedSectionProps = { children :: UndefinedOr JSX
                                   , title :: UndefinedOr JSX
                                   , description :: UndefinedOr JSX
                                   }

layoutAnnotatedSection :: forall r . Coercible r LayoutAnnotatedSectionProps => r -> JSX
layoutAnnotatedSection = element
                         layoutAnnotatedSectionRC <<< coerce

foreign import layoutAnnotatedSectionRC :: ReactComponent
                                           LayoutAnnotatedSectionProps

type LayoutSectionProps = { children :: UndefinedOr JSX
                          , secondary :: UndefinedOr Boolean
                          , fullWidth :: UndefinedOr Boolean
                          , oneHalf :: UndefinedOr Boolean
                          , oneThird :: UndefinedOr Boolean
                          }

layoutSection :: forall r . Coercible r LayoutSectionProps => r -> JSX
layoutSection = element
                layoutSectionRC <<< coerce

foreign import layoutSectionRC :: ReactComponent LayoutSectionProps
