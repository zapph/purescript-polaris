module Polaris.Components.Form(FormProps, form, formRC, FormEvent) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Coercible (class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type FormProps = { acceptCharset :: UndefinedOr String
                 , action :: UndefinedOr String
                 , autoComplete :: UndefinedOr Boolean
                 , children :: UndefinedOr JSX
                 , encType :: UndefinedOr
                              (StringLit
                               "application/x-www-form-urlencoded" |+| StringLit
                                                                       "multipart/form-data" |+| StringLit
                                                                                                 "text/plain")
                 , implicitSubmit :: UndefinedOr Boolean
                 , method :: UndefinedOr
                             (StringLit
                              "post" |+| StringLit
                                         "get" |+| StringLit
                                                   "action")
                 , name :: UndefinedOr String
                 , noValidate :: UndefinedOr Boolean
                 , preventDefault :: UndefinedOr Boolean
                 , target :: UndefinedOr
                             (StringLit
                              "_blank" |+| StringLit
                                           "_self" |+| StringLit
                                                       "_parent" |+| StringLit
                                                                     "_top" |+| String)
                 , onSubmit :: EffectFn1 FormEvent Unit
                 }

form :: forall r . Coercible r FormProps => r -> JSX
form = elem formRC

foreign import formRC :: ReactComponent FormProps

foreign import data FormEvent :: Type
