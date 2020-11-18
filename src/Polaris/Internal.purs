module Polaris.Internal
       ( PropsWithChildren
       , elem
       , elemWithChildren
       ) where

import Prelude

import Data.Symbol (SProxy(..))
import Prim.Row as Row
import React.Basic.Hooks (JSX, ReactChildren, ReactComponent, element, reactChildrenFromArray)
import Record as Record
import Untagged.Coercible (class Coercible, coerce)

type PropsWithChildren p = {children :: ReactChildren JSX| p}

elem :: forall r props. Coercible r {|props} => ReactComponent {|props} -> r -> JSX
elem rc = element rc <<< coerce

elemWithChildren ::
  forall r props a.
  Row.Lacks "children" props =>
  Coercible r {|props} =>
  ReactComponent {children :: ReactChildren a|props} ->
  r ->
  Array a ->
  JSX
elemWithChildren rc r children = element rc props
  where
    propsWithoutChildren = coerce r :: {|props}
    props = Record.insert (SProxy :: _ "children")
            (reactChildrenFromArray children)
            propsWithoutChildren
