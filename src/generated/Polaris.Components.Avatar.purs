module Polaris.Components.Avatar(AvatarProps, avatar, avatarRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

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
