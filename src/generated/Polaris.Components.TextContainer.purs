module Polaris.Components.TextContainer
  (TextContainerProps, textContainer, textContainerRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

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
