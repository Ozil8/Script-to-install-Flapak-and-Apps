 __  __      .  __      __         ___     __   __   __     __  ___  __     
/  \  / |__/ ' /__`    /__` |__| |  |     /__` /  ` |__) | |__)  |  /__`    
\__/ /_ |  \   .__/    .__/ |  | |  |     .__/ \__, |  \ | |     |  .__/    
                                                                                                                                                                                    .JMML.                       
Ozk Pre-apps Installer

Este script automatiza a instalação de diversas aplicações úteis no seu sistema Linux, com suporte para várias distribuições. Além disso, ele configura o Flatpak e instala aplicativos via APT e Flatpak, dependendo da sua distribuição.
🚀 Funcionalidades

    Detecta automaticamente a distribuição Linux em uso.

    Instala o Flatpak e configura o repositório Flathub.

    Instala aplicativos populares, como Steam, Lutris, Discord, Minecraft, OBS Studio, GIMP e muitos outros.

    Suporte para várias distribuições Linux, incluindo Ubuntu, Fedora, Arch, Manjaro, e muito mais.

⚙️ Pré-requisitos

    Sistema Linux com root ou sudo.

    Conexão com a internet.

    O script detecta e utiliza automaticamente o gerenciador de pacotes apropriado para a sua distribuição (APT, DNF, Pacman, Zypper, etc.).

🔧 Como usar
Passo 1: Baixar o script

Você pode baixar o script diretamente do repositório ou cloná-lo utilizando o Git:

git clone https://github.com/seu_usuario/ozk-pre-apps-installer.git

Passo 2: Tornar o script executável

No terminal, navegue até o diretório onde o script foi baixado e torne-o executável:

chmod +x ozk-pre-apps-installer.sh

Passo 3: Executar o script

Execute o script com o comando abaixo:

./ozk-pre-apps-installer.sh

O script irá pedir uma confirmação para iniciar a instalação. Após a confirmação, ele detectará sua distribuição e instalará os pacotes necessários, incluindo o Flatpak e os aplicativos via APT e Flatpak.
🛠️ Funcionalidades do Script
Instalação do Flatpak

O script instala o Flatpak e configura o repositório Flathub dependendo da sua distribuição.
Instalação de Aplicativos

    APT: Instala programas como Steam, Lutris, Preload, Zram Config, Gamemode, Htop, Neofetch, entre outros, se sua distribuição usar o gerenciador de pacotes APT (por exemplo, Ubuntu, Debian).

    Flatpak: Instala uma lista de aplicativos populares através do Flathub, incluindo:

        Vivaldi

        Discord

        Minecraft

        OBS Studio

        GIMP

        RetroArch

        Firefox

        Steam

        Lutris

        E muitos outros...

Detecção de Distribuição

O script é capaz de detectar distribuições como:

    Ubuntu/Debian

    Fedora

    Arch/Manjaro

    openSUSE

    Linux Mint

    Pop!_OS

    Solus

    Gentoo

    MX Linux

    Elementary OS

    Deepin

    Void Linux

    NixOS

    Clear Linux

    Guix

    Alpine Linux

Caso o script não consiga identificar a distribuição automaticamente, ele tenta usar o gerenciador de pacotes disponível.
💡 Dicas

    Se houver algum erro após a instalação, é recomendado reiniciar o sistema.

    Se você encontrar algum problema com a instalação de aplicativos via APT ou Flatpak, verifique as dependências ou procure por uma solução nas documentações oficiais.

📜 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo LICENSE para mais detalhes.
