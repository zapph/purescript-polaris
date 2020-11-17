module Polaris.Components.List
  (ListProps, list, listRC, ListItemProps, listItem, listItemRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ListProps = { children :: UndefinedOr JSX
                 , "type" :: UndefinedOr
                             (StringLit
                              "bullet" |+| StringLit
                                           "number")
                 }

list :: forall r . Coercible r ListProps => r -> JSX
list = element
       listRC <<< coerce

foreign import listRC :: ReactComponent ListProps

type ListItemProps = { children :: UndefinedOr JSX }

listItem :: forall r . Coercible r ListItemProps => r -> JSX
listItem = element
           listItemRC <<< coerce

foreign import listItemRC :: ReactComponent ListItemProps
