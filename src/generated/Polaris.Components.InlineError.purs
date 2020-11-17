module Polaris.Components.InlineError
  (InlineErrorProps, inlineError, inlineErrorRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (type (|+|))

type InlineErrorProps = { fieldID :: String
                        , message :: String |+| JSX |+| Array
                                                        (String |+| JSX)
                        }

inlineError :: forall r . Coercible r InlineErrorProps => r -> JSX
inlineError = element
              inlineErrorRC <<< coerce

foreign import inlineErrorRC :: ReactComponent InlineErrorProps
