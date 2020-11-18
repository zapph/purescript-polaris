module Polaris.Components.Banner
  ( BannerProps
  , banner
  , bannerRC
  , DisableableActionLoadableAction
  , disableableActionLoadableAction
  , FunctionComponent
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type BannerProps = { action :: UndefinedOr DisableableActionLoadableAction
                   , children :: UndefinedOr JSX
                   , icon :: UndefinedOr (String |+| FunctionComponent)
                   , secondaryAction :: UndefinedOr Action
                   , status :: UndefinedOr
                               (StringLit
                                "success" |+| StringLit
                                              "info" |+| StringLit
                                                         "warning" |+| StringLit
                                                                       "critical")
                   , stopAnnouncements :: UndefinedOr Boolean
                   , title :: UndefinedOr String
                   , onDismiss :: UndefinedOr (Effect Unit)
                   }

banner :: forall r . Coercible r BannerProps => r -> JSX
banner = elem bannerRC

foreign import bannerRC :: ReactComponent BannerProps

type DisableableActionLoadableAction = { accessibilityLabel :: UndefinedOr
                                                               String
                                       , content :: UndefinedOr String
                                       , disabled :: UndefinedOr Boolean
                                       , external :: UndefinedOr Boolean
                                       , id :: UndefinedOr String
                                       , url :: UndefinedOr String
                                       , onAction :: UndefinedOr (Effect Unit)
                                       , onMouseEnter :: UndefinedOr
                                                         (Effect
                                                          Unit)
                                       , onTouchStart :: UndefinedOr
                                                         (Effect
                                                          Unit)
                                       , loading :: UndefinedOr Boolean
                                       }

disableableActionLoadableAction :: forall r . Coercible r
                                                        DisableableActionLoadableAction => r -> DisableableActionLoadableAction
disableableActionLoadableAction = coerce

foreign import data FunctionComponent :: Type
