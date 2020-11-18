module Polaris.Components.ProgressBar
  (ProgressBarProps, progressBar, progressBarRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ProgressBarProps = { progress :: UndefinedOr Number
                        , size :: UndefinedOr
                                  (StringLit
                                   "small" |+| StringLit
                                               "medium" |+| StringLit
                                                            "large")
                        }

progressBar :: forall r . Coercible r ProgressBarProps => r -> JSX
progressBar = elem progressBarRC

foreign import progressBarRC :: ReactComponent ProgressBarProps
