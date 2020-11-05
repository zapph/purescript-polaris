module Polaris.Components.ExceptionList
  ( ExceptionListProps
  , exceptionList
  , exceptionListRC
  , FunctionComponent
  , Item
  , item
  ) where

import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))
import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)

type ExceptionListProps = { items :: Array Item }

exceptionList :: forall r . Coercible r ExceptionListProps => r -> JSX
exceptionList = element
                exceptionListRC <<< coerce

foreign import exceptionListRC :: ReactComponent ExceptionListProps

foreign import data FunctionComponent :: Type

type Item = { description :: UndefinedOr
                             (String |+| JSX |+| Array
                                                 (String |+| JSX))
            , icon :: UndefinedOr (String |+| FunctionComponent)
            , status :: UndefinedOr
                        (StringLit
                         "critical" |+| StringLit
                                        "warning")
            , title :: UndefinedOr String
            , truncate :: UndefinedOr Boolean
            }

item :: forall r . Coercible r Item => r -> Item
item = coerce
