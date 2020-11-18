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

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type FormLayoutProps = { children :: UndefinedOr JSX }

formLayout :: forall r . Coercible r FormLayoutProps => r -> JSX
formLayout = elem formLayoutRC

foreign import formLayoutRC :: ReactComponent FormLayoutProps

type FormLayoutGroupProps = { children :: UndefinedOr JSX
                            , condensed :: UndefinedOr Boolean
                            , title :: UndefinedOr String
                            , helpText :: UndefinedOr JSX
                            }

formLayoutGroup :: forall r . Coercible r FormLayoutGroupProps => r -> JSX
formLayoutGroup = elem formLayoutGroupRC

foreign import formLayoutGroupRC :: ReactComponent FormLayoutGroupProps

type FormLayoutItemProps = { children :: UndefinedOr JSX }

formLayoutItem :: forall r . Coercible r FormLayoutItemProps => r -> JSX
formLayoutItem = elem formLayoutItemRC

foreign import formLayoutItemRC :: ReactComponent FormLayoutItemProps
