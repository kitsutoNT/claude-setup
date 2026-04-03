#!/bin/bash
set -e

echo "=== Claude Code プラグインセットアップ ==="
echo ""

# マーケットプレイス登録
echo "[1/2] マーケットプレイスを登録中..."
claude plugin marketplace add thedotmack github:thedotmack/claude-mem
claude plugin marketplace add context-engineering-kit git:https://github.com/NeoLabHQ/context-engineering-kit.git

echo ""

# プラグインインストール
echo "[2/2] プラグインをインストール中..."

claude plugin add superpowers@claude-plugins-official
claude plugin add code-review@claude-plugins-official
claude plugin add skill-creator@claude-plugins-official
claude plugin add commit-commands@claude-plugins-official
claude plugin add pr-review-toolkit@claude-plugins-official
claude plugin add feature-dev@claude-plugins-official
claude plugin add frontend-design@claude-plugins-official
claude plugin add security-guidance@claude-plugins-official
claude plugin add claude-mem@thedotmack
claude plugin add customaize-agent@context-engineering-kit
claude plugin add ddd@context-engineering-kit
claude plugin add kaizen@context-engineering-kit

echo ""
echo "完了！Claude Code を再起動して反映してください。"
