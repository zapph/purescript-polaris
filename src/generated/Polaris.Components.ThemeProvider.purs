module Polaris.Components.ThemeProvider
  ( ThemeProviderProps
  , themeProvider
  , themeProviderRC
  , Inverse
  , OriginalColorScheme
  , Required
  , ThemeProviderThemeConfig
  , themeProviderThemeConfig
  ) where

import Untagged.Union (UndefinedOr, type (|+|))
import React.Basic.Hooks (JSX, element, ReactComponent)
import Untagged.Coercible (class Coercible, coerce)
import Prelude ((<<<))
import Literals (StringLit)

type ThemeProviderProps = { children :: UndefinedOr JSX
                          , theme :: ThemeProviderThemeConfig
                          }

themeProvider :: forall r . Coercible r ThemeProviderProps => r -> JSX
themeProvider = element
                themeProviderRC <<< coerce

foreign import themeProviderRC :: ReactComponent ThemeProviderProps

type Inverse = StringLit "inverse"

type OriginalColorScheme = Required

foreign import data Required :: Type

type ThemeProviderThemeConfig = { colorScheme :: UndefinedOr
                                                 (OriginalColorScheme |+| Inverse)
                                }

themeProviderThemeConfig :: forall r . Coercible r ThemeProviderThemeConfig => r -> ThemeProviderThemeConfig
themeProviderThemeConfig = coerce
