module Polaris.Components.SettingToggle
  ( SettingToggleProps
  , settingToggle
  , settingToggleRC
  , ComplexAction
  , complexAction
  , FunctionComponent
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type SettingToggleProps = { action :: UndefinedOr ComplexAction
                          , children :: UndefinedOr JSX
                          , enabled :: UndefinedOr Boolean
                          }

settingToggle :: forall r . Coercible r SettingToggleProps => r -> JSX
settingToggle = elem settingToggleRC

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
