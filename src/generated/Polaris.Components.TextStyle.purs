module Polaris.Components.TextStyle
  (TextStyleProps, textStyle, textStyleRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

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
