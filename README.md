<h1 align="center">Dockev for macOS</h1>

<p align="center">
  Official <a href="https://brew.sh">Homebrew</a> tap for <a href="https://github.com/DockevApp/Dockev"><b>Dockev</b></a>, the desktop app for Docker.
</p>

<p align="center">
  <img alt="Latest version" src="https://img.shields.io/github/v/release/DockevApp/Dockev?label=version&color=2563eb">
  <img alt="Architecture" src="https://img.shields.io/badge/arch-Apple%20silicon%20%7C%20Intel-475569">
  <img alt="homebrew" src="https://img.shields.io/badge/homebrew-cask-16a34a">
</p>

<p align="center">
  <a href="#install">Install</a> ·
  <a href="#update">Update</a> ·
  <a href="#uninstall">Uninstall</a> ·
  <a href="#other-platforms">Other platforms</a>
</p>

---

## Install

Apple silicon and Intel Macs.

```sh
brew install --cask dockevapp/dockev/dockev
```

Open **Dockev** from Applications.

<details>
<summary><b>Don't have Homebrew yet?</b></summary>

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

See [brew.sh](https://brew.sh) for details.

</details>

---

## Update

Dockev updates itself from inside the app. To update through Homebrew instead:

```sh
brew upgrade --cask --greedy dockev
```

`brew upgrade` alone skips Dockev, because the app updates itself.

---

## Uninstall

```sh
brew uninstall --cask dockev
brew untap dockevapp/dockev
```

<details>
<summary><b>Remove settings and data too</b></summary>

```sh
brew uninstall --cask --zap dockev
```

</details>

---

## Other platforms

| Platform | Install |
|---|---|
| **Windows** | [Scoop bucket](https://github.com/DockevApp/scoop-bucket) |
| **Linux** (apt, dnf, zypper, pacman) | [dockevapp.github.io/packages](https://dockevapp.github.io/packages) |
| **Direct download** (.dmg) | [GitHub Releases](https://github.com/DockevApp/Dockev/releases/latest) |
