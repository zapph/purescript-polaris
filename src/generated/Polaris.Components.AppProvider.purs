module Polaris.Components.AppProvider
  ( AppProviderProps
  , appProvider
  , appProviderRC
  , Config
  , FeaturesConfig
  , PartialLegacyColors
  , partialLegacyColors
  , ReactComponentType
  , Record
  , ThemeConfig
  , themeConfig
  , ThemeLogo
  , themeLogo
  , TranslationDictionary
  ) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type AppProviderProps = { apiKey :: UndefinedOr String
                        , children :: UndefinedOr JSX
                        , features :: UndefinedOr FeaturesConfig
                        , forceRedirect :: UndefinedOr Boolean
                        , i18n :: TranslationDictionary |+| Array
                                                            TranslationDictionary
                        , linkComponent :: UndefinedOr ReactComponentType
                        , shopOrigin :: UndefinedOr String
                        , theme :: UndefinedOr ThemeConfig
                        }

appProvider :: forall r . Coercible r AppProviderProps => r -> JSX
appProvider = elem appProviderRC

foreign import appProviderRC :: ReactComponent AppProviderProps

foreign import data Config :: Type

foreign import data FeaturesConfig :: Type

type PartialLegacyColors = { critical :: UndefinedOr String
                           , decorative :: UndefinedOr String
                           , highlight :: UndefinedOr String
                           , interactive :: UndefinedOr String
                           , onSurface :: UndefinedOr String
                           , primary :: UndefinedOr String
                           , secondary :: UndefinedOr String
                           , success :: UndefinedOr String
                           , surface :: UndefinedOr String
                           , warning :: UndefinedOr String
                           , topBar :: UndefinedOr Record
                           }

partialLegacyColors :: forall r . Coercible r PartialLegacyColors => r -> PartialLegacyColors
partialLegacyColors = coerce

foreign import data ReactComponentType :: Type

foreign import data Record :: Type

type ThemeConfig = { colorScheme :: UndefinedOr
                                    (StringLit
                                     "light" |+| StringLit
                                                 "dark")
                   , colors :: UndefinedOr PartialLegacyColors
                   , config :: UndefinedOr Config
                   , frameOffset :: UndefinedOr Number
                   , logo :: UndefinedOr ThemeLogo
                   }

themeConfig :: forall r . Coercible r ThemeConfig => r -> ThemeConfig
themeConfig = coerce

type ThemeLogo = { accessibilityLabel :: UndefinedOr String
                 , contextualSaveBarSource :: UndefinedOr String
                 , topBarSource :: UndefinedOr String
                 , url :: UndefinedOr String
                 , width :: UndefinedOr Number
                 }

themeLogo :: forall r . Coercible r ThemeLogo => r -> ThemeLogo
themeLogo = coerce

foreign import data TranslationDictionary :: Type
