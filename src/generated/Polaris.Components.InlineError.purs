module Polaris.Components.InlineError
  (InlineErrorProps, inlineError, inlineErrorRC) where

import Untagged.Union (type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type InlineErrorProps = { fieldID :: String
                        , message :: String |+| JSX |+| Array
                                                        (String |+| JSX)
                        }

inlineError :: forall r . Coercible r InlineErrorProps => r -> JSX
inlineError = element
              inlineErrorRC <<< coerce

foreign import inlineErrorRC :: ReactComponent InlineErrorProps
