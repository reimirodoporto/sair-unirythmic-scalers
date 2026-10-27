import Lake
open Lake DSL

package "sair-lean4-submission" where
  -- Lean 4 Package Configuration
  leanOptions := #[
    ⟨`autoImplicit, false⟩
  ]

@[default_target]
lean_lib SairLean4 where
  root := `lean.Constants
