module Polaris.Components.ProgressBar
  (ProgressBarProps, progressBar, progressBarRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

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
