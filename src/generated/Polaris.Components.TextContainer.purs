module Polaris.Components.TextContainer
  (TextContainerProps, textContainer, textContainerRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type TextContainerProps = { children :: UndefinedOr JSX
                          , spacing :: UndefinedOr
                                       (StringLit
                                        "tight" |+| StringLit
                                                    "loose")
                          }

textContainer :: forall r . Coercible r TextContainerProps => r -> JSX
textContainer = elem textContainerRC

foreign import textContainerRC :: ReactComponent TextContainerProps
