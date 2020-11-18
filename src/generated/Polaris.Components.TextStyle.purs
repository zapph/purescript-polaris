module Polaris.Components.TextStyle
  (TextStyleProps, textStyle, textStyleRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
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
textStyle = elem textStyleRC

foreign import textStyleRC :: ReactComponent TextStyleProps
