module Polaris.Components.FooterHelp
  (FooterHelpProps, footerHelp, footerHelpRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type FooterHelpProps = { children :: UndefinedOr JSX }

footerHelp :: forall r . Coercible r FooterHelpProps => r -> JSX
footerHelp = element
             footerHelpRC <<< coerce

foreign import footerHelpRC :: ReactComponent FooterHelpProps
