module Polaris.Components.Tooltip(TooltipProps, tooltip, tooltipRC) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

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
