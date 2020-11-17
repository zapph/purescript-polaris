module Polaris.Components.Frame
  (FrameProps, frame, frameRC, ReactRefObject) where

import Prelude
import Effect (Effect)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type FrameProps = { children :: UndefinedOr JSX
                  , globalRibbon :: UndefinedOr JSX
                  , navigation :: UndefinedOr JSX
                  , showMobileNavigation :: UndefinedOr Boolean
                  , skipToContentTarget :: UndefinedOr ReactRefObject
                  , topBar :: UndefinedOr JSX
                  , onNavigationDismiss :: UndefinedOr (Effect Unit)
                  }

frame :: forall r . Coercible r FrameProps => r -> JSX
frame = element
        frameRC <<< coerce

foreign import frameRC :: ReactComponent FrameProps

foreign import data ReactRefObject :: Type
