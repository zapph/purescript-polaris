module Polaris.Components.Link(LinkProps, link, linkRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type LinkProps = { children :: UndefinedOr JSX
                 , external :: UndefinedOr Boolean
                 , id :: UndefinedOr String
                 , monochrome :: UndefinedOr Boolean
                 , url :: UndefinedOr String
                 , onClick :: UndefinedOr (Effect Unit)
                 }

link :: forall r . Coercible r LinkProps => r -> JSX
link = elem linkRC

foreign import linkRC :: ReactComponent LinkProps
