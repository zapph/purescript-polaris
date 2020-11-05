module Polaris.Components.OptionList
  ( OptionListProps
  , optionList
  , optionListRC
  , OptionDescriptor
  , optionDescriptor
  , SectionDescriptor
  , sectionDescriptor
  ) where

import Untagged.Union (UndefinedOr)
import Effect.Uncurried (EffectFn1)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)

type OptionListProps = { allowMultiple :: UndefinedOr Boolean
                       , id :: UndefinedOr String
                       , optionRole :: UndefinedOr String
                       , options :: UndefinedOr (Array OptionDescriptor)
                       , role :: UndefinedOr String
                       , sections :: UndefinedOr (Array SectionDescriptor)
                       , selected :: Array String
                       , title :: UndefinedOr String
                       , onChange :: EffectFn1 (Array String) Unit
                       }

optionList :: forall r . Coercible r OptionListProps => r -> JSX
optionList = element
             optionListRC <<< coerce

foreign import optionListRC :: ReactComponent OptionListProps

type OptionDescriptor = { active :: UndefinedOr Boolean
                        , disabled :: UndefinedOr Boolean
                        , id :: UndefinedOr String
                        , label :: JSX
                        , media :: UndefinedOr JSX
                        , value :: String
                        }

optionDescriptor :: forall r . Coercible r OptionDescriptor => r -> OptionDescriptor
optionDescriptor = coerce

type SectionDescriptor = { options :: Array OptionDescriptor
                         , title :: UndefinedOr String
                         }

sectionDescriptor :: forall r . Coercible r SectionDescriptor => r -> SectionDescriptor
sectionDescriptor = coerce
