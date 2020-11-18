module Polaris.Components.FooterHelp
  ( FooterHelpBaseProps'
  , FooterHelpBaseProps
  , FooterHelpProps
  , footerHelp
  , footerHelpRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)

type FooterHelpBaseProps' = ()

type FooterHelpBaseProps = { | FooterHelpBaseProps' }

type FooterHelpProps = PropsWithChildren FooterHelpBaseProps'

footerHelp :: forall r . Coercible r FooterHelpBaseProps => r -> Array
                                                                 JSX -> JSX
footerHelp = elemWithChildren footerHelpRC

foreign import footerHelpRC :: ReactComponent FooterHelpProps
