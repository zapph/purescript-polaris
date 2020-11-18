module Polaris.Components.List
  ( ListBaseProps'
  , ListBaseProps
  , ListProps
  , list
  , listRC
  , ListItemBaseProps'
  , ListItemBaseProps
  , ListItemProps
  , listItem
  , listItemRC
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ListBaseProps' = ( "type" :: UndefinedOr
                                  (StringLit
                                   "bullet" |+| StringLit
                                                "number")
                      )

type ListBaseProps = { | ListBaseProps' }

type ListProps = PropsWithChildren ListBaseProps'

list :: forall r . Coercible r ListBaseProps => r -> Array JSX -> JSX
list = elemWithChildren listRC

foreign import listRC :: ReactComponent ListProps

type ListItemBaseProps' = ()

type ListItemBaseProps = { | ListItemBaseProps' }

type ListItemProps = PropsWithChildren ListItemBaseProps'

listItem :: forall r . Coercible r ListItemBaseProps => r -> Array JSX -> JSX
listItem = elemWithChildren listItemRC

foreign import listItemRC :: ReactComponent ListItemProps
