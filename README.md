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

### IDE

As editor we would recommend using **Visual Studio Code** with the Haskell extension (extensionId: ```haskell.haskell```). You are free to use any other IDE that supports Haskell though.

### Preperation

Once Haskell is installed, open a terminal and type ```ghci``` to enter the Haskell interpreter. Test your setup by running:
```
putStrLn "Hello, world!"
```

For a quick Haskell syntax guide, we suggest browsing [Learn X in Y Minutes - Haskell](https://learnxinyminutes.com/docs/haskell/). This resource provides a concise overview of Haskell essentials. 
and browse through that a bit.

### Template

We have provided a [template file](template.hs), which we'll use throughout the tutorial session. Please download this file to your local machine.

**To test that everything is working:**

1. Open a terminal in the folder containing ```template.hs```
2. Start the Haskell interpreter with the module by typing
  ```
  ghci template.hs
  ```
3. In the ```ghci``` prompt, type the following lines:
  ```
  let myGarden = Garden [[1,0],[0,4]] 2
  printGarden myGarden
  ```
  You don't need to understand this code yet - this is just a quick test. If everything is set up correctly, you should see the following output:
  ```
  * .
  . @
  ```

