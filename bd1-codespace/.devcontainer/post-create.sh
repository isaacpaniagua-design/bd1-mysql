#!/usr/bin/env bash
# Instala la consola de MySQL y la deja conectada sin pedir contraseña.
set -e
sudo apt-get update -qq
sudo apt-get install -y -qq mysql-client > /dev/null

cat > "$HOME/.my.cnf" <<'EOF'
[client]
host=127.0.0.1
port=3306
user=root
password=bd1
default-character-set=utf8mb4
EOF
chmod 600 "$HOME/.my.cnf"

echo ""
echo "Listo. Escribe  mysql  en la terminal, o abre la pestaña PORTS -> 8080 (phpMyAdmin)."
