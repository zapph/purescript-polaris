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

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ThemeProviderProps = { children :: UndefinedOr JSX
                          , theme :: ThemeProviderThemeConfig
                          }

themeProvider :: forall r . Coercible r ThemeProviderProps => r -> JSX
themeProvider = elem themeProviderRC

foreign import themeProviderRC :: ReactComponent ThemeProviderProps

type Inverse = StringLit "inverse"

type OriginalColorScheme = Required

foreign import data Required :: Type

type ThemeProviderThemeConfig = { colorScheme :: UndefinedOr
                                                 (OriginalColorScheme |+| Inverse)
                                }

themeProviderThemeConfig :: forall r . Coercible r ThemeProviderThemeConfig => r -> ThemeProviderThemeConfig
themeProviderThemeConfig = coerce
