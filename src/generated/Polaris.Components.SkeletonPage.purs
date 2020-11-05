module Polaris.Components.SkeletonPage
  (SkeletonPageProps, skeletonPage, skeletonPageRC) where

import Untagged.Union (UndefinedOr)
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))

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
