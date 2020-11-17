module Polaris.Components.Toast(ToastProps, toast, toastRC) where

import Prelude
import Effect (Effect)
import Polaris.Types (Action)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr)

type ToastProps = { action :: UndefinedOr Action
                  , content :: String
                  , duration :: UndefinedOr Number
                  , error :: UndefinedOr Boolean
                  , onDismiss :: Effect Unit
                  }

toast :: forall r . Coercible r ToastProps => r -> JSX
toast = element
        toastRC <<< coerce

foreign import toastRC :: ReactComponent ToastProps
