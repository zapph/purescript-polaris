module Polaris.Components.Frame
  (FrameProps, frame, frameRC, ReactRefObject) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
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
frame = elem frameRC

foreign import frameRC :: ReactComponent FrameProps

foreign import data ReactRefObject :: Type
