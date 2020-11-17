module Polaris.Components.Loading(LoadingProps, loading, loadingRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)

type LoadingProps = {}

loading :: forall r . Coercible r LoadingProps => r -> JSX
loading = element
          loadingRC <<< coerce

foreign import loadingRC :: ReactComponent LoadingProps
