module Polaris.Components.SkeletonPage
  ( SkeletonPageBaseProps'
  , SkeletonPageBaseProps
  , SkeletonPageProps
  , skeletonPage
  , skeletonPageRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr)

type SkeletonPageBaseProps' = ( breadcrumbs :: UndefinedOr Boolean
                              , fullWidth :: UndefinedOr Boolean
                              , narrowWidth :: UndefinedOr Boolean
                              , primaryAction :: UndefinedOr Boolean
                              , secondaryActions :: UndefinedOr Number
                              , singleColumn :: UndefinedOr Boolean
                              , title :: UndefinedOr String
                              )

type SkeletonPageBaseProps = { | SkeletonPageBaseProps' }

type SkeletonPageProps = PropsWithChildren SkeletonPageBaseProps'

skeletonPage :: forall r . Coercible r SkeletonPageBaseProps => r -> Array
                                                                     JSX -> JSX
skeletonPage = elemWithChildren skeletonPageRC

foreign import skeletonPageRC :: ReactComponent SkeletonPageProps
