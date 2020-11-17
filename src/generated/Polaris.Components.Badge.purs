module Polaris.Components.Badge(BadgeProps, badge, badgeRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

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
