module Polaris.Components.FormLayout
  ( FormLayoutBaseProps'
  , FormLayoutBaseProps
  , FormLayoutProps
  , formLayout
  , formLayoutRC
  , FormLayoutGroupBaseProps'
  , FormLayoutGroupBaseProps
  , FormLayoutGroupProps
  , formLayoutGroup
  , formLayoutGroupRC
  , FormLayoutItemBaseProps'
  , FormLayoutItemBaseProps
  , FormLayoutItemProps
  , formLayoutItem
  , formLayoutItemRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type FormLayoutBaseProps' = ()

type FormLayoutBaseProps = { | FormLayoutBaseProps' }

type FormLayoutProps = PropsWithChildren FormLayoutBaseProps'

formLayout :: forall r . Coercible r FormLayoutBaseProps => r -> Array
                                                                 JSX -> JSX
formLayout = elemWithChildren formLayoutRC

foreign import formLayoutRC :: ReactComponent FormLayoutProps

type FormLayoutGroupBaseProps' = ( condensed :: UndefinedOr Boolean
                                 , title :: UndefinedOr String
                                 , helpText :: UndefinedOr JSX
                                 )

type FormLayoutGroupBaseProps = { | FormLayoutGroupBaseProps' }

type FormLayoutGroupProps = PropsWithChildren FormLayoutGroupBaseProps'

formLayoutGroup :: forall r . Coercible r FormLayoutGroupBaseProps => r -> Array
                                                                           JSX -> JSX
formLayoutGroup = elemWithChildren formLayoutGroupRC

foreign import formLayoutGroupRC :: ReactComponent FormLayoutGroupProps

type FormLayoutItemBaseProps' = ()

type FormLayoutItemBaseProps = { | FormLayoutItemBaseProps' }

type FormLayoutItemProps = PropsWithChildren FormLayoutItemBaseProps'

formLayoutItem :: forall r . Coercible r FormLayoutItemBaseProps => r -> Array
                                                                         JSX -> JSX
formLayoutItem = elemWithChildren formLayoutItemRC

foreign import formLayoutItemRC :: ReactComponent FormLayoutItemProps
