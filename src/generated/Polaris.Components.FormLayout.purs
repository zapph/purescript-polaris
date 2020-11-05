module Polaris.Components.FormLayout
  ( FormLayoutProps
  , formLayout
  , formLayoutRC
  , FormLayoutGroupProps
  , formLayoutGroup
  , formLayoutGroupRC
  , FormLayoutItemProps
  , formLayoutItem
  , formLayoutItemRC
  ) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type FormLayoutProps = { children :: UndefinedOr JSX }

formLayout :: forall r . Coercible r FormLayoutProps => r -> JSX
formLayout = element
             formLayoutRC <<< coerce

foreign import formLayoutRC :: ReactComponent FormLayoutProps

type FormLayoutGroupProps = { children :: UndefinedOr JSX
                            , condensed :: UndefinedOr Boolean
                            , title :: UndefinedOr String
                            , helpText :: UndefinedOr JSX
                            }

formLayoutGroup :: forall r . Coercible r FormLayoutGroupProps => r -> JSX
formLayoutGroup = element
                  formLayoutGroupRC <<< coerce

foreign import formLayoutGroupRC :: ReactComponent FormLayoutGroupProps

type FormLayoutItemProps = { children :: UndefinedOr JSX }

formLayoutItem :: forall r . Coercible r FormLayoutItemProps => r -> JSX
formLayoutItem = element
                 formLayoutItemRC <<< coerce

foreign import formLayoutItemRC :: ReactComponent FormLayoutItemProps
