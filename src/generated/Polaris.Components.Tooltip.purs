module Polaris.Components.Tooltip(TooltipProps, tooltip, tooltipRC) where

import Prelude
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
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
tooltip = element
          tooltipRC <<< coerce

foreign import tooltipRC :: ReactComponent TooltipProps
