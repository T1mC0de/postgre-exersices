#!/bin/bash

SQL_FILE=$1

FULL_SQL_PATH="$(realpath "$SQL_FILE")"
SQL_DIR="$(dirname "$FULL_SQL_PATH")"
EXERCISES_DIR="$(dirname "$SQL_DIR")"
RESULT_DIR="$EXERCISES_DIR/results"
RESULT_FILE="$RESULT_DIR/$(basename "${SQL_FILE%.sql}")_result.txt"

mkdir -p "$RESULT_DIR"

PGPASSWORD=postgres psql -h localhost -U postgres -p 5432 -d exercises -f "$SQL_FILE" > "$RESULT_FILE"

echo "✅ Готово! Результат сохранен"