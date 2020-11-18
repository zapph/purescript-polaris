module Polaris.Components.Loading(LoadingProps, loading, loadingRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)

type LoadingProps = {}

loading :: forall r . Coercible r LoadingProps => r -> JSX
loading = elem loadingRC

foreign import loadingRC :: ReactComponent LoadingProps
