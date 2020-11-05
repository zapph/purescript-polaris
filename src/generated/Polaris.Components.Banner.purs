module Polaris.Components.Banner
  ( BannerProps
  , banner
  , bannerRC
  , DisableableActionLoadableAction
  , disableableActionLoadableAction
  , FunctionComponent
  ) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Polaris.Types (Action)
import Literals (StringLit)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Untagged.Coercible (class Coercible, coerce)

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
banner = element
         bannerRC <<< coerce

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
