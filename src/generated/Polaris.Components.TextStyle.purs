module Polaris.Components.TextStyle
  (TextStyleProps, textStyle, textStyleRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type TextStyleProps = { children :: UndefinedOr JSX
                      , variation :: UndefinedOr
                                     (StringLit
                                      "positive" |+| StringLit
                                                     "negative" |+| StringLit
                                                                    "strong" |+| StringLit
                                                                                 "subdued" |+| StringLit
                                                                                               "code")
                      }

textStyle :: forall r . Coercible r TextStyleProps => r -> JSX
textStyle = element
            textStyleRC <<< coerce

foreign import textStyleRC :: ReactComponent TextStyleProps
