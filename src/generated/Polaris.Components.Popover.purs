module Polaris.Components.Popover
  (PopoverProps, popover, popoverRC, PopoverCloseSource) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Literals (BooleanLit, StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type PopoverProps = { activator :: JSX
                    , activatorWrapper :: UndefinedOr String
                    , active :: Boolean
                    , ariaHaspopup :: UndefinedOr
                                      (BooleanLit
                                       "false" |+| BooleanLit
                                                   "true" |+| StringLit
                                                              "true" |+| StringLit
                                                                         "false" |+| StringLit
                                                                                     "menu" |+| StringLit
                                                                                                "listbox" |+| StringLit
                                                                                                              "tree" |+| StringLit
                                                                                                                         "grid" |+| StringLit
                                                                                                                                    "dialog")
                    , children :: UndefinedOr JSX
                    , fixed :: UndefinedOr Boolean
                    , fluidContent :: UndefinedOr Boolean
                    , fullHeight :: UndefinedOr Boolean
                    , fullWidth :: UndefinedOr Boolean
                    , preferInputActivator :: UndefinedOr Boolean
                    , preferredAlignment :: UndefinedOr
                                            (StringLit
                                             "left" |+| StringLit
                                                        "center" |+| StringLit
                                                                     "right")
                    , preferredPosition :: UndefinedOr
                                           (StringLit
                                            "above" |+| StringLit
                                                        "below" |+| StringLit
                                                                    "mostSpace")
                    , preventAutofocus :: UndefinedOr Boolean
                    , sectioned :: UndefinedOr Boolean
                    , onClose :: EffectFn1 PopoverCloseSource Unit
                    }

popover :: forall r . Coercible r PopoverProps => r -> JSX
popover = element
          popoverRC <<< coerce

foreign import popoverRC :: ReactComponent PopoverProps

foreign import data PopoverCloseSource :: Type
