module Polaris.Components.Caption(CaptionProps, caption, captionRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type CaptionProps = { children :: UndefinedOr JSX }

caption :: forall r . Coercible r CaptionProps => r -> JSX
caption = element
          captionRC <<< coerce

foreign import captionRC :: ReactComponent CaptionProps
