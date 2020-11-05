module Polaris.Components.List
  (ListProps, list, listRC, ListItemProps, listItem, listItemRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

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
