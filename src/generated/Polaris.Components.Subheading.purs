module Polaris.Components.Subheading
  (SubheadingProps, subheading, subheadingRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type SubheadingProps = { children :: UndefinedOr JSX
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

subheading :: forall r . Coercible r SubheadingProps => r -> JSX
subheading = element
             subheadingRC <<< coerce

foreign import subheadingRC :: ReactComponent SubheadingProps
