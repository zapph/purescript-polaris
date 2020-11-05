module Polaris.Components.Link(LinkProps, link, linkRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

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
