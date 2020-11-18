module Polaris.Components.Tag(TagProps, tag, tagRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type TagProps = { children :: UndefinedOr String
                , disabled :: UndefinedOr Boolean
                , onClick :: UndefinedOr (Effect Unit)
                , onRemove :: UndefinedOr (Effect Unit)
                }

tag :: forall r . Coercible r TagProps => r -> JSX
tag = elem tagRC

foreign import tagRC :: ReactComponent TagProps
