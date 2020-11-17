module Polaris.Components.Tag(TagProps, tag, tagRC) where

import Prelude
import Effect (Effect)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type TagProps = { children :: UndefinedOr String
                , disabled :: UndefinedOr Boolean
                , onClick :: UndefinedOr (Effect Unit)
                , onRemove :: UndefinedOr (Effect Unit)
                }

tag :: forall r . Coercible r TagProps => r -> JSX
tag = element
      tagRC <<< coerce

foreign import tagRC :: ReactComponent TagProps
