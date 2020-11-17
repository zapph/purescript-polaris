module Polaris.Components.DataTable
  (DataTableProps, dataTable, dataTableRC) where

import Prelude
import Effect.Uncurried (EffectFn2)
import Literals (StringLit)
import React.Basic.Hooks (element, JSX, ReactComponent)
import Untagged.Coercible (coerce, class Coercible)
import Untagged.Union (UndefinedOr, type (|+|))

type DataTableProps = { columnContentTypes :: Array
                                              (StringLit
                                               "text" |+| StringLit
                                                          "numeric")
                      , defaultSortDirection :: UndefinedOr
                                                (StringLit
                                                 "ascending" |+| StringLit
                                                                 "descending" |+| StringLit
                                                                                  "none")
                      , footerContent :: UndefinedOr (String |+| Number |+| JSX)
                      , headings :: Array JSX
                      , hideScrollIndicator :: UndefinedOr Boolean
                      , initialSortColumnIndex :: UndefinedOr Number
                      , rows :: Array (Array (String |+| Number |+| JSX))
                      , showTotalsInFooter :: UndefinedOr Boolean
                      , sortable :: UndefinedOr (Array Boolean)
                      , totals :: UndefinedOr
                                  (Array
                                   (String |+| Number |+| JSX))
                      , totalsName :: UndefinedOr
                                      { plural :: UndefinedOr String
                                      , singular :: UndefinedOr String
                                      }
                      , truncate :: UndefinedOr Boolean
                      , verticalAlign :: UndefinedOr
                                         (StringLit
                                          "top" |+| StringLit
                                                    "bottom" |+| StringLit
                                                                 "middle" |+| StringLit
                                                                              "baseline")
                      , onSort :: UndefinedOr
                                  (EffectFn2
                                   Number
                                   (StringLit
                                    "ascending" |+| StringLit
                                                    "descending" |+| StringLit
                                                                     "none")
                                   Unit)
                      }

dataTable :: forall r . Coercible r DataTableProps => r -> JSX
dataTable = element
            dataTableRC <<< coerce

foreign import dataTableRC :: ReactComponent DataTableProps
