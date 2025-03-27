#!/bin/bash

# Имя файла
FILE_NAME="my_empty_file.txt"

# Имя директории
DIR_NAME="my_new_directory"

# 1. Создать пустой текстовый файл
touch "$FILE_NAME"

# 2. Создать директорию, если она не существует
mkdir -p "$DIR_NAME"

# 3. Переместить файл в директорию
mv "$FILE_NAME" "$DIR_NAME"

# 4. Добавить в конец файла текущую дату и фразу "modified"

cd "$DIR_NAME"

echo "$(date) modified" >> "$FILE_NAME"

cd ..

echo "Файл '$FILE_NAME' создан, перемещен в '$DIR_NAME' и отредактирован."