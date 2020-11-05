module Polaris.Components.DisplayText
  (DisplayTextProps, displayText, displayTextRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type DisplayTextProps = { children :: UndefinedOr JSX
                        , element :: UndefinedOr
                                     (StringLit
                                      "h1" |+| StringLit
                                               "h2" |+| StringLit
                                                        "h3" |+| StringLit
                                                                 "h4" |+| StringLit
                                                                          "h5" |+| StringLit
                                                                                   "h6" |+| StringLit
                                                                                            "p")
                        , size :: UndefinedOr
                                  (StringLit
                                   "small" |+| StringLit
                                               "medium" |+| StringLit
                                                            "large" |+| StringLit
                                                                        "extraLarge")
                        }

displayText :: forall r . Coercible r DisplayTextProps => r -> JSX
displayText = element
              displayTextRC <<< coerce

foreign import displayTextRC :: ReactComponent DisplayTextProps
