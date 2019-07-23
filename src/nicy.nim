import 
  nicypkg/functions,
  strformat

export
  functions

when isMainModule:
  let
    prompt = color("λ ", "magenta")
    nix = color(nixShell(), "green")
    nl = "\n"
    gitBranch = color(gitBranch(), "yellow")
    cwd = bold(color(tilde(getCwd()), "cyan"))
    dirty = color("×", "red")
    clean = color("•", "green")
  let git = gitBranch & gitStatus(dirty, clean)

  # the prompt
  echo fmt"{nix}{virtualenv()}{cwd}{git}{nl}{prompt}"


