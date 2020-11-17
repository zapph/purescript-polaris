module Polaris.Components.TextContainer
  (TextContainerProps, textContainer, textContainerRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type TextContainerProps = { children :: UndefinedOr JSX
                          , spacing :: UndefinedOr
                                       (StringLit
                                        "tight" |+| StringLit
                                                    "loose")
                          }

textContainer :: forall r . Coercible r TextContainerProps => r -> JSX
textContainer = element
                textContainerRC <<< coerce

foreign import textContainerRC :: ReactComponent TextContainerProps
