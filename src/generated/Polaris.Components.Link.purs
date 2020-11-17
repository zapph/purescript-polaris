module Polaris.Components.Link(LinkProps, link, linkRC) where

import Prelude
import Effect (Effect)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type LinkProps = { children :: UndefinedOr JSX
                 , external :: UndefinedOr Boolean
                 , id :: UndefinedOr String
                 , monochrome :: UndefinedOr Boolean
                 , url :: UndefinedOr String
                 , onClick :: UndefinedOr (Effect Unit)
                 }

link :: forall r . Coercible r LinkProps => r -> JSX
link = element
       linkRC <<< coerce

foreign import linkRC :: ReactComponent LinkProps
