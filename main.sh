if ! command -v wget &> /dev/null; then
    echo "wget não encontrado. Instalando..."
    sudo apt update && sudo apt install -y wget
fi

wget https://archive.org/download/authy/authy.deb
sudo dpkg -i authy.deb
rm authy.deb