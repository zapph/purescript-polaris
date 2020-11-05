module Polaris.Components.Badge(BadgeProps, badge, badgeRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

type BadgeProps = { children :: UndefinedOr String
                  , progress :: UndefinedOr
                                (StringLit
                                 "incomplete" |+| StringLit
                                                  "partiallyComplete" |+| StringLit
                                                                          "complete")
                  , size :: UndefinedOr
                            (StringLit
                             "small" |+| StringLit
                                         "medium")
                  , status :: UndefinedOr
                              (StringLit
                               "success" |+| StringLit
                                             "info" |+| StringLit
                                                        "attention" |+| StringLit
                                                                        "critical" |+| StringLit
                                                                                       "warning" |+| StringLit
                                                                                                     "new")
                  }

badge :: forall r . Coercible r BadgeProps => r -> JSX
badge = element
        badgeRC <<< coerce

foreign import badgeRC :: ReactComponent BadgeProps
