module Polaris.Components.ChoiceList
  (ChoiceListProps, choiceList, choiceListRC, Choice, choice, Undefined) where

import Prelude
import Effect.Uncurried (EffectFn1, EffectFn2)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ChoiceListProps = { allowMultiple :: UndefinedOr Boolean
                       , choices :: Array Choice
                       , disabled :: UndefinedOr Boolean
                       , error :: UndefinedOr
                                  (String |+| JSX |+| Array
                                                      (String |+| JSX))
                       , name :: UndefinedOr String
                       , selected :: Array String
                       , title :: JSX
                       , titleHidden :: UndefinedOr Boolean
                       , onChange :: UndefinedOr
                                     (EffectFn2
                                      (Array
                                       String)
                                      String
                                      Unit)
                       }

choiceList :: forall r . Coercible r ChoiceListProps => r -> JSX
choiceList = elem choiceListRC

foreign import choiceListRC :: ReactComponent ChoiceListProps

type Choice = { describedByError :: UndefinedOr Boolean
              , disabled :: UndefinedOr Boolean
              , helpText :: UndefinedOr JSX
              , label :: JSX
              , value :: String
              , renderChildren :: UndefinedOr (EffectFn1 Boolean Undefined)
              }

choice :: forall r . Coercible r Choice => r -> Choice
choice = coerce

foreign import data Undefined :: Type
