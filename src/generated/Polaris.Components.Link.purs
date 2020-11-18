module Polaris.Components.Link
  (LinkBaseProps', LinkBaseProps, LinkProps, link, linkRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type LinkBaseProps' = ( external :: UndefinedOr Boolean
                      , id :: UndefinedOr String
                      , monochrome :: UndefinedOr Boolean
                      , url :: UndefinedOr String
                      , onClick :: UndefinedOr (Effect Unit)
                      )

type LinkBaseProps = { | LinkBaseProps' }

type LinkProps = PropsWithChildren LinkBaseProps'

link :: forall r . Coercible r LinkBaseProps => r -> Array JSX -> JSX
link = elemWithChildren linkRC

foreign import linkRC :: ReactComponent LinkProps
