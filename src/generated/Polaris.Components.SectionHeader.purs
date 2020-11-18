module Polaris.Components.SectionHeader
  (SectionHeaderProps, sectionHeader, sectionHeaderRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)

type SectionHeaderProps = {}

sectionHeader :: forall r . Coercible r SectionHeaderProps => r -> JSX
sectionHeader = elem sectionHeaderRC

foreign import sectionHeaderRC :: ReactComponent SectionHeaderProps
