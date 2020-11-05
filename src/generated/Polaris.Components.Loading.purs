module Polaris.Components.Loading(LoadingProps, loading, loadingRC) where

import Untagged.Coercible (class Coercible, coerce)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Prelude ((<<<))

type LoadingProps = {}

loading :: forall r . Coercible r LoadingProps => r -> JSX
loading = element
          loadingRC <<< coerce

foreign import loadingRC :: ReactComponent LoadingProps
