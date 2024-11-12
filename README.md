# Tutorial Session: Haskell

## Setup

### Setup Haskell

The official haskell-website has an installation guide for GHCup, which is the main installer for the general purpose language Haskell.
<https://www.haskell.org/ghcup/install/#how-to-install>

*TL;DR*

For **Linux, macOS, FreeBSD or Windows Subsystem 2 for Linux**, run this in a terminal:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

For **Windows**, run this in a PowerShell session:

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { & ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -Interactive -DisableCurl } catch { Write-Error $_ }
```

*Note: You might want to disable your antivirus temporarily, if you experience problems  during the installation.*
