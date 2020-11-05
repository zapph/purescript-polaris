module Polaris.Components.Icon(IconProps, icon, iconRC, ReactSfc) where

import Untagged.Union (UndefinedOr, type (|+|))
import Literals (StringLit)
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

type IconProps = { accessibilityLabel :: UndefinedOr String
                 , backdrop :: UndefinedOr Boolean
                 , color :: UndefinedOr
                            (StringLit
                             "white" |+| StringLit
                                         "black" |+| StringLit
                                                     "skyLighter" |+| StringLit
                                                                      "skyLight" |+| StringLit
                                                                                     "sky" |+| StringLit
                                                                                               "skyDark" |+| StringLit
                                                                                                             "inkLightest" |+| StringLit
                                                                                                                               "inkLighter" |+| StringLit
                                                                                                                                                "inkLight" |+| StringLit
                                                                                                                                                               "ink" |+| StringLit
                                                                                                                                                                         "blueLighter" |+| StringLit
                                                                                                                                                                                           "blueLight" |+| StringLit
                                                                                                                                                                                                           "blue" |+| StringLit
                                                                                                                                                                                                                      "blueDark" |+| StringLit
                                                                                                                                                                                                                                     "blueDarker" |+| StringLit
                                                                                                                                                                                                                                                      "indigoLighter" |+| StringLit
                                                                                                                                                                                                                                                                          "indigoLight" |+| StringLit
                                                                                                                                                                                                                                                                                            "indigo" |+| StringLit
                                                                                                                                                                                                                                                                                                         "indigoDark" |+| StringLit
                                                                                                                                                                                                                                                                                                                          "indigoDarker" |+| StringLit
                                                                                                                                                                                                                                                                                                                                             "tealLighter" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                               "tealLight" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                               "teal" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                          "tealDark" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                         "tealDarker" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                          "greenLighter" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                             "green" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                         "greenDark" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         "yellowLighter" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             "yellow" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          "yellowDark" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           "orange" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "redLighter" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         "red" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   "redDark" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 "purple" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              "base" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         "subdued" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       "critical" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      "warning" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "highlight" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "success" |+| StringLit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  "primary")
                 , source :: ReactSfc |+| StringLit
                                          "placeholder" |+| String
                 }

icon :: forall r . Coercible r IconProps => r -> JSX
icon = element
       iconRC <<< coerce

foreign import iconRC :: ReactComponent IconProps

foreign import data ReactSfc :: Type