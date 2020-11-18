module Polaris.Components.Select
  ( SelectProps
  , select
  , selectRC
  , SelectGroup
  , selectGroup
  , StrictOption
  , strictOption
  ) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn2)
import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type SelectProps = { disabled :: UndefinedOr Boolean
                   , error :: UndefinedOr
                              (String |+| JSX |+| Array
                                                  (String |+| JSX) |+| Boolean)
                   , helpText :: UndefinedOr JSX
                   , id :: UndefinedOr String
                   , label :: String
                   , labelAction :: UndefinedOr Action
                   , labelHidden :: UndefinedOr Boolean
                   , labelInline :: UndefinedOr Boolean
                   , name :: UndefinedOr String
                   , options :: UndefinedOr
                                (Array
                                 (String |+| StrictOption |+| SelectGroup))
                   , placeholder :: UndefinedOr String
                   , value :: UndefinedOr String
                   , onBlur :: UndefinedOr (Effect Unit)
                   , onChange :: UndefinedOr (EffectFn2 String String Unit)
                   , onFocus :: UndefinedOr (Effect Unit)
                   }

select :: forall r . Coercible r SelectProps => r -> JSX
select = elem selectRC

foreign import selectRC :: ReactComponent SelectProps

type SelectGroup = { options :: Array (String |+| StrictOption)
                   , title :: String
                   }

selectGroup :: forall r . Coercible r SelectGroup => r -> SelectGroup
selectGroup = coerce

type StrictOption = { disabled :: UndefinedOr Boolean
                    , label :: String
                    , value :: String
                    }

strictOption :: forall r . Coercible r StrictOption => r -> StrictOption
strictOption = coerce
