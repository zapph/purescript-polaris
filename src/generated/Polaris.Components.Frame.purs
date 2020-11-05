module Polaris.Components.Frame
  (FrameProps, frame, frameRC, ReactRefObject) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

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
