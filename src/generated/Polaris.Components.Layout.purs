module Polaris.Components.Layout
  ( LayoutBaseProps'
  , LayoutBaseProps
  , LayoutProps
  , layout
  , layoutRC
  , LayoutAnnotatedSectionBaseProps'
  , LayoutAnnotatedSectionBaseProps
  , LayoutAnnotatedSectionProps
  , layoutAnnotatedSection
  , layoutAnnotatedSectionRC
  , LayoutSectionBaseProps'
  , LayoutSectionBaseProps
  , LayoutSectionProps
  , layoutSection
  , layoutSectionRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type LayoutBaseProps' = ( sectioned :: UndefinedOr Boolean )

type LayoutBaseProps = { | LayoutBaseProps' }

type LayoutProps = PropsWithChildren LayoutBaseProps'

layout :: forall r . Coercible r LayoutBaseProps => r -> Array JSX -> JSX
layout = elemWithChildren layoutRC

foreign import layoutRC :: ReactComponent LayoutProps

type LayoutAnnotatedSectionBaseProps' = ( title :: UndefinedOr JSX
                                        , description :: UndefinedOr JSX
                                        )

type LayoutAnnotatedSectionBaseProps = { | LayoutAnnotatedSectionBaseProps' }

type LayoutAnnotatedSectionProps = PropsWithChildren
                                   LayoutAnnotatedSectionBaseProps'

layoutAnnotatedSection :: forall r . Coercible r LayoutAnnotatedSectionBaseProps => r -> Array
                                                                                         JSX -> JSX
layoutAnnotatedSection = elemWithChildren layoutAnnotatedSectionRC

foreign import layoutAnnotatedSectionRC :: ReactComponent
                                           LayoutAnnotatedSectionProps

type LayoutSectionBaseProps' = ( secondary :: UndefinedOr Boolean
                               , fullWidth :: UndefinedOr Boolean
                               , oneHalf :: UndefinedOr Boolean
                               , oneThird :: UndefinedOr Boolean
                               )

type LayoutSectionBaseProps = { | LayoutSectionBaseProps' }

type LayoutSectionProps = PropsWithChildren LayoutSectionBaseProps'

layoutSection :: forall r . Coercible r LayoutSectionBaseProps => r -> Array
                                                                       JSX -> JSX
layoutSection = elemWithChildren layoutSectionRC

foreign import layoutSectionRC :: ReactComponent LayoutSectionProps
