#!/usr/bin/env bash
set -euo pipefail

if [ -d "ComfyUI-Wan-updatedComfyUI" ]; then
  echo "📂 Directory already exists. Removing it first..."
  rm -rf ComfyUI-Wan-updatedComfyUI
fi

echo "📥 Cloning ComfyUI-Wan-updatedComfyUI…"
git clone https://github.com/horvenglorven/ComfyUI-Wan-updatedComfyUI.git

echo "📂 Moving start.sh into place…"
mv ComfyUI-Wan-updatedComfyUI/src/start.sh /

echo "▶️ Running start.sh"
bash /start.sh