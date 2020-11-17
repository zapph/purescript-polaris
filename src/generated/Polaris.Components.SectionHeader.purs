module Polaris.Components.SectionHeader
  (SectionHeaderProps, sectionHeader, sectionHeaderRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)

type SectionHeaderProps = {}

sectionHeader :: forall r . Coercible r SectionHeaderProps => r -> JSX
sectionHeader = element
                sectionHeaderRC <<< coerce

foreign import sectionHeaderRC :: ReactComponent SectionHeaderProps
