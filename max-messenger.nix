{ lib, stdenv, fetchurl, autoPatchelfHook, dpkg, makeWrapper, pkgs }:

let
  deps = with pkgs; [
    libX11 libXcomposite libXcursor libXdamage
    libXext libXfixes libXrandr libXrender libXtst
    libxcb libxkbcommon
    xcbutil xcbutilcursor xcbutilimage xcbutilkeysyms
    xcbutilrenderutil xcbutilwm
    libva libvdpau
    gtk3 pango cairo gdk-pixbuf atk at-spi2-atk
    libdrm mesa wayland
    nss nspr expat alsa-lib cups dbus
    pipewire libpulseaudio
    libsecret gnome-keyring
    libxkbfile libfontenc libXaw libXmu libXpm
    libXres libXScrnSaver libXt libXv
    libnotify libGL
    hicolor-icon-theme gsettings-desktop-schemas cacert
  ];

  libraryPath = lib.makeLibraryPath deps;
in
stdenv.mkDerivation {
  pname = "max-messenger";
  version = "26.30.0";

  src = fetchurl {
    url = "https://download.max.ru/linux/deb/pool/main/m/max/MAX-26.30.0.78253.deb";
    hash = "sha256-qMIR0SkfxGynD+6rKlwn8iLXiSQhrjEnWXV0lwa0cNs=";
  };

  nativeBuildInputs = [ autoPatchelfHook dpkg makeWrapper ];
  buildInputs = deps;

  unpackPhase = ''
    dpkg-deb -x $src .
  '';

  installPhase = ''
    mkdir -p $out/{opt/max,bin,share/applications,share/icons}

    cp -r usr/share/max/* $out/opt/max/
    cp -r usr/share/icons/* $out/share/icons/

    makeWrapper $out/opt/max/bin/max $out/bin/max \
      --prefix LD_LIBRARY_PATH : "${libraryPath}:$out/opt/max/lib64:$out/opt/max/lib"

    cp usr/share/applications/max.desktop $out/share/applications/
    sed -i "s|^Exec=.*|Exec=$out/bin/max|" $out/share/applications/max.desktop
    sed -i "s|^Icon=.*|Icon=max|" $out/share/applications/max.desktop
  '';

  meta = with lib; {
    description = "MAX Messenger";
    homepage = "https://max.ru";
    platforms = platforms.linux;
    mainProgram = "max";
  };
}
