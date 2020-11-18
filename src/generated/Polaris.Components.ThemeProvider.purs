module Polaris.Components.ThemeProvider
  ( ThemeProviderBaseProps'
  , ThemeProviderBaseProps
  , ThemeProviderProps
  , themeProvider
  , themeProviderRC
  , Inverse
  , OriginalColorScheme
  , Required
  , ThemeProviderThemeConfig
  , themeProviderThemeConfig
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type ThemeProviderBaseProps' = ( theme :: ThemeProviderThemeConfig )

type ThemeProviderBaseProps = { | ThemeProviderBaseProps' }

type ThemeProviderProps = PropsWithChildren ThemeProviderBaseProps'

themeProvider :: forall r . Coercible r ThemeProviderBaseProps => r -> Array
                                                                       JSX -> JSX
themeProvider = elemWithChildren themeProviderRC

foreign import themeProviderRC :: ReactComponent ThemeProviderProps

type Inverse = StringLit "inverse"

type OriginalColorScheme = Required

foreign import data Required :: Type

type ThemeProviderThemeConfig = { colorScheme :: UndefinedOr
                                                 (OriginalColorScheme |+| Inverse)
                                }

themeProviderThemeConfig :: forall r . Coercible r ThemeProviderThemeConfig => r -> ThemeProviderThemeConfig
themeProviderThemeConfig = coerce
