module Polaris.Components.SkeletonPage
  (SkeletonPageProps, skeletonPage, skeletonPageRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type SkeletonPageProps = { breadcrumbs :: UndefinedOr Boolean
                         , children :: UndefinedOr JSX
                         , fullWidth :: UndefinedOr Boolean
                         , narrowWidth :: UndefinedOr Boolean
                         , primaryAction :: UndefinedOr Boolean
                         , secondaryActions :: UndefinedOr Number
                         , singleColumn :: UndefinedOr Boolean
                         , title :: UndefinedOr String
                         }

skeletonPage :: forall r . Coercible r SkeletonPageProps => r -> JSX
skeletonPage = elem skeletonPageRC

foreign import skeletonPageRC :: ReactComponent SkeletonPageProps
