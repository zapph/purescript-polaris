module Polaris.Components.Caption
  (CaptionBaseProps', CaptionBaseProps, CaptionProps, caption, captionRC) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)

type CaptionBaseProps' = ()

type CaptionBaseProps = { | CaptionBaseProps' }

type CaptionProps = PropsWithChildren CaptionBaseProps'

caption :: forall r . Coercible r CaptionBaseProps => r -> Array JSX -> JSX
caption = elemWithChildren captionRC

foreign import captionRC :: ReactComponent CaptionProps
