module Polaris.Components.Caption(CaptionProps, caption, captionRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

type CaptionProps = { children :: UndefinedOr JSX }

caption :: forall r . Coercible r CaptionProps => r -> JSX
caption = element
          captionRC <<< coerce

foreign import captionRC :: ReactComponent CaptionProps
