module Polaris.Components.Tooltip(TooltipProps, tooltip, tooltipRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type TooltipProps = { activatorWrapper :: UndefinedOr String
                    , active :: UndefinedOr Boolean
                    , children :: UndefinedOr JSX
                    , content :: String
                    , light :: UndefinedOr Boolean
                    , preferredPosition :: UndefinedOr
                                           (StringLit
                                            "above" |+| StringLit
                                                        "below" |+| StringLit
                                                                    "mostSpace")
                    }

tooltip :: forall r . Coercible r TooltipProps => r -> JSX
tooltip = elem tooltipRC

foreign import tooltipRC :: ReactComponent TooltipProps
