module Polaris.Components.DisplayText
  (DisplayTextProps, displayText, displayTextRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

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
