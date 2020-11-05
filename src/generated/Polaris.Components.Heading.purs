module Polaris.Components.Heading(HeadingProps, heading, headingRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type HeadingProps = { children :: UndefinedOr JSX
                    , element :: UndefinedOr
                                 (StringLit
                                  "h1" |+| StringLit
                                           "h2" |+| StringLit
                                                    "h3" |+| StringLit
                                                             "h4" |+| StringLit
                                                                      "h5" |+| StringLit
                                                                               "h6" |+| StringLit
                                                                                        "p")
                    }

heading :: forall r . Coercible r HeadingProps => r -> JSX
heading = element
          headingRC <<< coerce

foreign import headingRC :: ReactComponent HeadingProps
