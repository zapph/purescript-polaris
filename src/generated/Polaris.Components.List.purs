module Polaris.Components.List
  (ListProps, list, listRC, ListItemProps, listItem, listItemRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ListProps = { children :: UndefinedOr JSX
                 , "type" :: UndefinedOr
                             (StringLit
                              "bullet" |+| StringLit
                                           "number")
                 }

list :: forall r . Coercible r ListProps => r -> JSX
list = elem listRC

foreign import listRC :: ReactComponent ListProps

type ListItemProps = { children :: UndefinedOr JSX }

listItem :: forall r . Coercible r ListItemProps => r -> JSX
listItem = elem listItemRC

foreign import listItemRC :: ReactComponent ListItemProps
