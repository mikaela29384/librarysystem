#!/bin/bash
echo "🔨 Компиляция LibrarySystem..."
mkdir -p out
find src -name "*.java" > sources.txt
javac -d out @sources.txt
if [ $? -eq 0 ]; then
    echo "✅ Компиляция успешна!"
else
    echo "❌ Ошибка компиляции!"
fi
rm -f sources.txt
