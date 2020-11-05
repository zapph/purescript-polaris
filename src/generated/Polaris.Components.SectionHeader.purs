module Polaris.Components.SectionHeader
  (SectionHeaderProps, sectionHeader, sectionHeaderRC) where

import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

type SectionHeaderProps = {}

sectionHeader :: forall r . Coercible r SectionHeaderProps => r -> JSX
sectionHeader = element
                sectionHeaderRC <<< coerce

foreign import sectionHeaderRC :: ReactComponent SectionHeaderProps
