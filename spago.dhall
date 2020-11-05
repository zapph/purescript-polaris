{ name = "polaris"
, dependencies =
  [ "console"
  , "effect"
  , "generics-rep"
  , "heterogeneous"
  , "literals"
  , "psci-support"
  , "react-basic-hooks"
  , "untagged-union"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
