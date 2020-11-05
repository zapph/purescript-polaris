module Polaris.Components.Spinner
  (SpinnerProps, spinner, spinnerRC, NewDesignLanguageColor) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

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
