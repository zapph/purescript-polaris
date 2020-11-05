module Polaris.Components.FooterHelp
  (FooterHelpProps, footerHelp, footerHelpRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type FooterHelpProps = { children :: UndefinedOr JSX }

footerHelp :: forall r . Coercible r FooterHelpProps => r -> JSX
footerHelp = element
             footerHelpRC <<< coerce

foreign import footerHelpRC :: ReactComponent FooterHelpProps
