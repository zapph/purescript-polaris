module Polaris.Components.ProgressBar
  (ProgressBarProps, progressBar, progressBarRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

type ProgressBarProps = { progress :: UndefinedOr Number
                        , size :: UndefinedOr
                                  (StringLit
                                   "small" |+| StringLit
                                               "medium" |+| StringLit
                                                            "large")
                        }

progressBar :: forall r . Coercible r ProgressBarProps => r -> JSX
progressBar = element
              progressBarRC <<< coerce

foreign import progressBarRC :: ReactComponent ProgressBarProps
