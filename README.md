# max-messenger-nix

Неофициальная деривация мессенджера Макс для NixOS.

# Использование

```
здесь команда
```

# Исходные данные

Информация взята с сайта: [clsv.ru](https://clsv.ru/linux/zapuskaem_messendzher_max_v_firejail_(sandbox)_120)

За основу взят deb-пакет. Получение метаданных: [download](https://download.max.ru/linux/deb/dists/stable/main/binary-amd64/Packages.gz)

Получение deb-пакета:
```
FILENAME=$(wget -qO- https://download.max.ru/linux/deb/dists/stable/main/binary-amd64/Packages.gz | gzip -d | awk '/Filename/ {print $2;exit}')
wget https://download.max.ru/linux/deb/${FILENAME} -O max.deb
```

<details>
<summary>Примерное содержание метаданных (нажмите, чтобы развернуть)</summary>

```
Package: max
Priority: optional
Section: default
Installed-Size: 2260552
Maintainer: max.ru
Architecture: amd64
Version: 26.30.0
Depends: libxcb-xinerama0, libxcb-composite0, libxcb-ewmh2, libva-x11-2, libva-drm2, libvdpau1, libnotify4, libxcb-dri2-0, libopengl0, libxcb-cursor0, libxkbcommon-x11-0, libxcb-icccm4, libxcb-keysyms1, libxss1, libglib2.0-0, gsettings-desktop-schemas, ca-certificates
Recommends: desktop-file-utils, hicolor-icon-theme, pipewire
Filename: pool/main/m/max/MAX-26.30.0.78253.deb
Size: 306001384
MD5sum: 961686fc8891b7ed22c0f7b8106d797f
SHA1: 0313898904794651898992e8020e6e95adb35681
SHA256: a8c211d1291fc46ca70feeab2a5c27f222d7892421ae31275975749706b470db
SHA512: b9302adc5f516dbbf167d48a5004684a910a9ce809fb36b959fd31aa9df931c220e6a79aa99f6ebfc881717f7ee95fb09dfdb2bba5ff710c44ba3ac225e379cc
Description: MAX Desktop client
Homepage: https://max.ru

Package: max
Priority: optional
Section: default
Installed-Size: 2268315
Maintainer: max.ru
Architecture: amd64
Version: 26.29.1
Depends: libxcb-xinerama0, libxcb-composite0, libxcb-ewmh2, libva-x11-2, libva-drm2, libvdpau1, libnotify4, libxcb-dri2-0, libopengl0, libxcb-cursor0, libxkbcommon-x11-0, libxcb-icccm4, libxcb-keysyms1, libxss1, libglib2.0-0, gsettings-desktop-schemas, ca-certificates
Recommends: desktop-file-utils, hicolor-icon-theme, pipewire
Filename: pool/main/m/max/MAX-26.29.1.78069.deb
Size: 307682852
MD5sum: 7cd8bc926bba823f17586ef2888dc995
SHA1: 85672ce603f506445f90b6e1fa16805e566e1503
SHA256: 177dde29babb6abddd0f40c4b86b7c15cf807491e26cfd348948ac11e5e9c8ed
SHA512: 1f957dea39d15dd4f71e7fcb3fa5681ae326bfbede20b216a69fb3333ed8989b06cfa31e5997ed32ea53488706ee466cccb73ee8761924c292f342ec0aab0a8f
Description: MAX Desktop client
Homepage: https://max.ru

Package: max
Priority: optional
Section: default
Installed-Size: 2268076
Maintainer: max.ru
Architecture: amd64
Version: 26.29.0
Depends: libxcb-xinerama0, libxcb-composite0, libxcb-ewmh2, libva-x11-2, libva-drm2, libvdpau1, libnotify4, libxcb-dri2-0, libopengl0, libxcb-cursor0, libxkbcommon-x11-0, libxcb-icccm4, libxcb-keysyms1, libxss1, libglib2.0-0, gsettings-desktop-schemas, ca-certificates
Recommends: desktop-file-utils, hicolor-icon-theme, pipewire
Filename: pool/main/m/max/MAX-26.29.0.77636.deb
Size: 307686678
MD5sum: d8aef1749295eb6029eef7d8e0d460a5
SHA1: ca287e148852c971a10f29386e8d263705471601
SHA256: 1d8655639899d0885cde3476f955bff21e8cb10266be815a57307b2df711ca2c
SHA512: bb22d5ff823106b39872bab41376fa1d2014646e3f6ccf51894ea4e6f357986e91a90677971cfdaf3f38b6929d79de3f742b264b54032bae451b12fc3bc5fa9b
Description: MAX Desktop client
Homepage: https://max.ru
```
</details>





