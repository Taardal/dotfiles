### Installation
```
powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
```

### Commands
https://github.com/chocolatey/choco/wiki/CommandsReference

```
choco install (short: cinst)
choco search
choco uninstall
choco upgrade
```

### Options
`[-y]` to auto confirm all prompts.

### Install packages from config-file
```
choco install packages.config <path/to/config/file> [options]
```
```
cinst pkg <path/to/config/file> [options]
```

### Example config-file
```
<?xml version="1.0" encoding="utf-8"?>
<packages>
    <package id="spotify" />
    <package id="googlechrome" />
</packages>
```
