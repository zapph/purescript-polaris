module Polaris.Components.Avatar(AvatarProps, avatar, avatarRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type AvatarProps = { accessibilityLabel :: UndefinedOr String
                   , customer :: UndefinedOr Boolean
                   , initials :: UndefinedOr String
                   , name :: UndefinedOr String
                   , size :: UndefinedOr
                             (StringLit
                              "small" |+| StringLit
                                          "medium" |+| StringLit
                                                       "large")
                   , source :: UndefinedOr String
                   }

avatar :: forall r . Coercible r AvatarProps => r -> JSX
avatar = elem avatarRC

foreign import avatarRC :: ReactComponent AvatarProps
