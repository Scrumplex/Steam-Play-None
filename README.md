Steam-Play-None
---
Run Linux games as is, even if Valve recommends Proton for a game.

# Installation


## Install using ProtonUp-Qt

1. Download [ProtonUp-Qt](https://davidotek.github.io/protonup-qt/) (You can find it in your app store via Flathub or click the link to download an AppImage)
2. Enable advanced mode (press About > Enable advanced mode)
3. Press `Add version` in the main dialog
4. Select `Steam-Play-None` under `Compatibility tool` and press `Install`
5. Set the compatibility-tool for the game in your library to `Steam-Play-None`

## Install manually

- Download this repository as an archive file: [Download](https://github.com/Scrumplex/Steam-Play-None/archive/refs/heads/main.tar.gz)
- Extract it to `~/.steam/steam/compatibilitytools.d/`
- Set the compatibility-tool for the game in your library to "None"

# Why

Valve might decide, that your favorite game runs *better* with Proton, than using the native Linux client.
If you don't want to use Proton, as recommended by Valve on your Steam Deck, you only have the choice of running the game using `Steam Linux Runtime`.
But you might have issues with that, so this compatibility-tool allows you to run your Linux-native games as is again.

# Steam-Play-None Verified

| Game                     | Valve's recommendation         | Proton                | Steam Linux Runtime              | Steam-Play-None    |
| ------------------------ | ------------------------------ | --------------------- | -------------------------------- | ------------------ |
| [CrossCode][p-crosscode] | Proton 7.0-3 (`proton-stable`) | :x:, heavy stuttering | :x:, doesn't launch<sup>1</sup> | :heavy_check_mark: |


<sup>1</sup>: It can be made to launch, but will not have working controller input. see https://github.com/ValveSoftware/Proton/issues/2818#issuecomment-1192329628

# License
This work is licensed under CC0. See [LICENSE](LICENSE):

[p-crosscode]: https://www.protondb.com/app/368340/
