module Polaris.Components.Caption(CaptionProps, caption, captionRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type CaptionProps = { children :: UndefinedOr JSX }

caption :: forall r . Coercible r CaptionProps => r -> JSX
caption = elem captionRC

foreign import captionRC :: ReactComponent CaptionProps
