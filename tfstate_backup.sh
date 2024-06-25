tfstate_backup

#!/bin/bash

# Diretório do estado do Terraform
STATE_DIR="/mnt/c/Terraform"

# Diretório de backup
BACKUP_DIR="/path/to/backup"

# Nome do arquivo de backup
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="terraform.tfstate.$TIMESTAMP"

# Copiar arquivo de estado para o diretório de backup
cp $STATE_DIR/terraform.tfstate $BACKUP_DIR/$BACKUP_FILE

# Verificar se a cópia foi bem-sucedida
if [ $? -eq 0 ]; then
  echo "Backup realizado com sucesso em $BACKUP_DIR/$BACKUP_FILE"
else
  echo "Erro ao realizar backup"
fi
