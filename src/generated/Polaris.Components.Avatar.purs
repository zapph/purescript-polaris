module Polaris.Components.Avatar(AvatarProps, avatar, avatarRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
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
avatar = element
         avatarRC <<< coerce

foreign import avatarRC :: ReactComponent AvatarProps
