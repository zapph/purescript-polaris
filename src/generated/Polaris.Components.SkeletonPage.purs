module Polaris.Components.SkeletonPage
  (SkeletonPageProps, skeletonPage, skeletonPageRC) where

import Prelude
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
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
skeletonPage = element
               skeletonPageRC <<< coerce

foreign import skeletonPageRC :: ReactComponent SkeletonPageProps
