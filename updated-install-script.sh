#!/bin/bash

# Arte ASCII melhorada com By: Ozk destacado
echo ""
echo -e "\e[36m░█▀█░█░█░█▀▀░░░█▀█░█▀█░█░░░░█▀█░█▀█░█▀█░█▀▀\e[0m"
echo -e "\e[36m░█░█░█░█░█░█░░░█░█░█░█░█░░░░█▀▀░█░█░█░█░█▀▀\e[0m"
echo -e "\e[36m░▀▀▀░▀▀▀░▀▀▀░░░▀░▀░▀░▀░▀▀▀░░▀░░░▀▀▀░▀▀▀░▀░░\e[0m"
echo -e "\e[35m           >>> Ozk Pre-apps Installer <<<\e[0m     \e[33m╔═══════════╗\e[0m"
echo -e "                                            \e[33m║   \e[31mBy: Ozk\e[33m  ║\e[0m"
echo -e "                                            \e[33m╚═══════════╝\e[0m"
echo ""
echo "🚀 Este script irá instalar várias aplicações úteis no seu sistema Linux."
echo ""

# Pedir confirmação antes de iniciar
echo -n "❓ Deseja iniciar a instalação? (S/n): "
read resposta
resposta=${resposta:-S}  # Define 'S' como padrão se o usuário apenas pressionar Enter

if [[ $resposta != [Ss]* ]]; then
    echo "❌ Instalação cancelada pelo usuário."
    exit 0
fi

echo ""
echo "🚀 Iniciando instalação com Ozk Pre-apps..."
echo ""

# Função para detectar a distribuição e instalar o Flatpak
install_flatpak() {
    DISTRO=$(lsb_release -i | awk -F'\t' '{print $2}' | tr '[:upper:]' '[:lower:]')
    echo "🔍 Detectando a distribuição: $DISTRO"

    case "$DISTRO" in
        ubuntu|debian)
            echo "📦 Instalando Flatpak para Debian/Ubuntu..."
            sudo apt install -y flatpak gnome-software-plugin-flatpak
            sudo apt install -y ca-certificates curl
            sudo curl -fsSL https://flathub.org/repo/flathub.flatpakrepo | sudo tee /etc/apt/sources.list.d/flathub.list
            sudo apt update
            ;;
        fedora)
            echo "📦 Instalando Flatpak para Fedora..."
            sudo dnf install -y flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        arch|manjaro|endeavouros)
            echo "📦 Instalando Flatpak para Arch/Manjaro/EndeavourOS..."
            sudo pacman -Syu --noconfirm flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        centos|rhel|almalinux|rocky)
            echo "📦 Instalando Flatpak para CentOS/RHEL/AlmaLinux/Rocky..."
            sudo yum install -y flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        opensuse|suse)
            echo "📦 Instalando Flatpak para openSUSE/SUSE..."
            sudo zypper install -y flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        linuxmint)
            echo "📦 Instalando Flatpak para Linux Mint..."
            sudo apt install -y flatpak gnome-software-plugin-flatpak
            sudo apt install -y ca-certificates curl
            sudo curl -fsSL https://flathub.org/repo/flathub.flatpakrepo | sudo tee /etc/apt/sources.list.d/flathub.list
            sudo apt update
            ;;
        pop)
            echo "📦 Instalando Flatpak para Pop!_OS..."
            sudo apt install -y flatpak gnome-software-plugin-flatpak
            sudo apt install -y ca-certificates curl
            sudo curl -fsSL https://flathub.org/repo/flathub.flatpakrepo | sudo tee /etc/apt/sources.list.d/flathub.list
            sudo apt update
            ;;
        zorin)
            echo "📦 Instalando Flatpak para Zorin OS..."
            sudo apt install -y flatpak gnome-software-plugin-flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        kali)
            echo "📦 Instalando Flatpak para Kali Linux..."
            sudo apt install -y flatpak gnome-software-plugin-flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        gentoo)
            echo "📦 Instalando Flatpak para Gentoo..."
            sudo emerge --ask sys-apps/flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        solus)
            echo "📦 Instalando Flatpak para Solus..."
            sudo eopkg install flatpak xdg-desktop-portal-gtk
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        mx)
            echo "📦 Instalando Flatpak para MX Linux..."
            sudo apt install -y flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        elementary)
            echo "📦 Instalando Flatpak para Elementary OS..."
            sudo apt install -y flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        pureos)
            echo "📦 Instalando Flatpak para PureOS..."
            sudo apt install -y flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        deepin)
            echo "📦 Instalando Flatpak para Deepin..."
            sudo apt install -y flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        void)
            echo "📦 Instalando Flatpak para Void Linux..."
            sudo xbps-install -Sy flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        nixos)
            echo "📦 Para NixOS, recomendamos adicionar flatpak ao seu configuration.nix..."
            echo "Por favor, adicione 'services.flatpak.enable = true;' ao seu configuration.nix"
            echo "E depois execute 'sudo nixos-rebuild switch'"
            echo "Após isso, execute: flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"
            ;;
        clear)
            echo "📦 Instalando Flatpak para Clear Linux..."
            sudo swupd bundle-add flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        guix)
            echo "📦 Para Guix System, por favor instale flatpak com:"
            echo "guix install flatpak"
            echo "E depois execute: flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"
            ;;
        alpine)
            echo "📦 Instalando Flatpak para Alpine Linux..."
            sudo apk add flatpak
            sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            ;;
        *)
            echo "⚠️ Distribuição não detectada automaticamente. Tentando identificar o gerenciador de pacotes..."
            if command -v apt &> /dev/null; then
                echo "📦 Detectado gerenciador de pacotes 'apt'. Instalando Flatpak..."
                sudo apt install -y flatpak gnome-software-plugin-flatpak
                sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            elif command -v dnf &> /dev/null; then
                echo "📦 Detectado gerenciador de pacotes 'dnf'. Instalando Flatpak..."
                sudo dnf install -y flatpak
                sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            elif command -v pacman &> /dev/null; then
                echo "📦 Detectado gerenciador de pacotes 'pacman'. Instalando Flatpak..."
                sudo pacman -Syu --noconfirm flatpak
                sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            elif command -v zypper &> /dev/null; then
                echo "📦 Detectado gerenciador de pacotes 'zypper'. Instalando Flatpak..."
                sudo zypper install -y flatpak
                sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            elif command -v yum &> /dev/null; then
                echo "📦 Detectado gerenciador de pacotes 'yum'. Instalando Flatpak..."
                sudo yum install -y flatpak
                sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            else
                echo "⚠️ Não foi possível detectar um gerenciador de pacotes compatível."
                echo "Por favor, consulte o site do Flatpak para instruções de instalação: https://flatpak.org/setup/"
                exit 1
            fi
            ;;
    esac
}

# Chama a função para instalar o Flatpak de acordo com a distribuição
install_flatpak

# Verifica se a distribuição usa apt antes de tentar instalar pacotes apt
if command -v apt &> /dev/null; then
    # Atualiza o sistema
    echo "🔄 Atualizando o sistema..."
    sudo apt update && sudo apt upgrade -y

    # Instalar programas via APT
    echo "📥 Instalando via APT..."
    sudo apt install -y steam lutris preload zram-config gamemode htop neofetch
else
    echo "🔍 Esta distribuição não usa APT. Pulando instalação de pacotes APT."
    echo "⚠️ Alguns programas serão instalados apenas via Flatpak quando disponíveis."
fi

# Instalar programas via Flatpak
echo "📦 Instalando apps via Flatpak..."
flatpak install -y flathub \
    com.vivaldi.Vivaldi \
    com.discordapp.Discord \
    com.github.nukeop.nuclear \
    com.kassent.cubiomes-viewer \
    io.github.woxel.woxel \
    io.github.jnbt.editor \
    net.davidotek.pupgui2 \
    org.prismlauncher.PrismLauncher \
    com.mojang.Minecraft \
    org.mozilla.firefox \
    org.kde.kdenlive \
    com.obsproject.Studio \
    org.gimp.GIMP \
    com.github.tchx84.Flatseal \
    com.github.oguzhaninan.stacer \
    com.usebottles.bottles \
    org.libretro.RetroArch \
    app.drey.Warp \
    io.github.ilya_zlobintsev.LACT \
    org.qbittorrent.qBittorrent \
    com.github.Matoking.protontricks \
    md.obsidian.Obsidian \
    org.gnome.Boxes \
    org.winehq.Wine \
    net.nokyan.Resources \
    com.warlordsoftwares.youtube-downloader-4ktube \
    org.jdownloader.JDownloader \
    io.github.jeffshee.Hidamari \
    com.github.KRTirtho.Spotube \
    com.modrinth.ModrinthApp \
    com.sublimetext.three

echo ""
echo -e "\e[32m✅ Serviço Terminado AGR Vai trabalhar Vagabundo\e[0m"
echo -e "\e[33m💡 Dá Reboot Nessa Bomba se Der algum erro ;P\e[0m"
