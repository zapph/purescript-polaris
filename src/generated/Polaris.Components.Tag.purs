module Polaris.Components.Tag(TagProps, tag, tagRC) where

import Untagged.Union (UndefinedOr)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)

type TagProps = { children :: UndefinedOr String
                , disabled :: UndefinedOr Boolean
                , onClick :: UndefinedOr (Effect Unit)
                , onRemove :: UndefinedOr (Effect Unit)
                }

tag :: forall r . Coercible r TagProps => r -> JSX
tag = element
      tagRC <<< coerce

foreign import tagRC :: ReactComponent TagProps
