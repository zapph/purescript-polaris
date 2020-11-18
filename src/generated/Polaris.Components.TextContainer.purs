module Polaris.Components.TextContainer
  ( TextContainerBaseProps'
  , TextContainerBaseProps
  , TextContainerProps
  , textContainer
  , textContainerRC
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type TextContainerBaseProps' = ( spacing :: UndefinedOr
                                            (StringLit
                                             "tight" |+| StringLit
                                                         "loose")
                               )

type TextContainerBaseProps = { | TextContainerBaseProps' }

type TextContainerProps = PropsWithChildren TextContainerBaseProps'

textContainer :: forall r . Coercible r TextContainerBaseProps => r -> Array
                                                                       JSX -> JSX
textContainer = elemWithChildren textContainerRC

foreign import textContainerRC :: ReactComponent TextContainerProps
