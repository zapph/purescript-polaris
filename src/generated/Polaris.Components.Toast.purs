module Polaris.Components.Toast(ToastProps, toast, toastRC) where

import Untagged.Union (UndefinedOr)
import Polaris.Types (Action)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)

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
