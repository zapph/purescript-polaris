module Polaris.Components.SettingToggle
  ( SettingToggleProps
  , settingToggle
  , settingToggleRC
  , ComplexAction
  , complexAction
  , FunctionComponent
  ) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<), Unit)
import Literals (StringLit)
import Effect (Effect)

type SettingToggleProps = { action :: UndefinedOr ComplexAction
                          , children :: UndefinedOr JSX
                          , enabled :: UndefinedOr Boolean
                          }

settingToggle :: forall r . Coercible r SettingToggleProps => r -> JSX
settingToggle = element
                settingToggleRC <<< coerce

foreign import settingToggleRC :: ReactComponent SettingToggleProps

type ComplexAction = { accessibilityLabel :: UndefinedOr String
                     , content :: UndefinedOr String
                     , destructive :: UndefinedOr Boolean
                     , disabled :: UndefinedOr Boolean
                     , external :: UndefinedOr Boolean
                     , icon :: UndefinedOr (String |+| FunctionComponent)
                     , id :: UndefinedOr String
                     , loading :: UndefinedOr Boolean
                     , target :: UndefinedOr
                                 (StringLit
                                  "ADMIN_PATH" |+| StringLit
                                                   "REMOTE" |+| StringLit
                                                                "APP")
                     , url :: UndefinedOr String
                     , onAction :: UndefinedOr (Effect Unit)
                     , onMouseEnter :: UndefinedOr (Effect Unit)
                     , onTouchStart :: UndefinedOr (Effect Unit)
                     }

complexAction :: forall r . Coercible r ComplexAction => r -> ComplexAction
complexAction = coerce

foreign import data FunctionComponent :: Type
