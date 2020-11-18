module Polaris.Components.FooterHelp
  (FooterHelpProps, footerHelp, footerHelpRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type FooterHelpProps = { children :: UndefinedOr JSX }

footerHelp :: forall r . Coercible r FooterHelpProps => r -> JSX
footerHelp = elem footerHelpRC

foreign import footerHelpRC :: ReactComponent FooterHelpProps
