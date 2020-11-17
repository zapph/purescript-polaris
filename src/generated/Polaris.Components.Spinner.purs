module Polaris.Components.Spinner
  (SpinnerProps, spinner, spinnerRC, NewDesignLanguageColor) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type SpinnerProps = { accessibilityLabel :: UndefinedOr String
                    , color :: UndefinedOr
                               (StringLit
                                "white" |+| StringLit
                                            "teal" |+| StringLit
                                                       "inkLightest" |+| NewDesignLanguageColor)
                    , hasFocusableParent :: UndefinedOr Boolean
                    , size :: UndefinedOr
                              (StringLit
                               "small" |+| StringLit
                                           "large")
                    }

spinner :: forall r . Coercible r SpinnerProps => r -> JSX
spinner = element
          spinnerRC <<< coerce

foreign import spinnerRC :: ReactComponent SpinnerProps

type NewDesignLanguageColor = StringLit "highlight"
