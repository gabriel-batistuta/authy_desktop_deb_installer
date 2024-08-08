if ! command -v wget &> /dev/null; then
    echo "wget não encontrado. Instalando..."
    # Identifica a distribuição e instala o wget
    if [ -x "$(command -v apt)" ]; then
        sudo apt update && sudo apt install -y wget
    elif [ -x "$(command -v dnf)" ]; then
        sudo dnf install -y wget
    elif [ -x "$(command -v yum)" ]; then
        sudo yum install -y wget
    elif [ -x "$(command -v pacman)" ]; then
        sudo pacman -S --noconfirm wget
    else
        echo "Gerenciador de pacotes não suportado. Instale wget manualmente."
        exit 1
    fi
fi

wget https://archive.org/download/authy/authy.deb
sudo dpkg -i authy.deb
rm authy.deb