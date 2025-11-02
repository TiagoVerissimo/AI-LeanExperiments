import Lake
open Lake DSL

package «ai-lean-experiments» where
  -- add package configuration options here

lean_lib «AILeanExperiments» where
  -- add library configuration options here

@[default_target]
lean_exe «ai-lean-experiments» where
  root := `Main
