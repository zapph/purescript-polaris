module Polaris.Components.ExceptionList
  ( ExceptionListProps
  , exceptionList
  , exceptionListRC
  , FunctionComponent
  , Item
  , item
  ) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

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
