# Homebrew Tap for onyxio0

这是 onyxio0 的 Homebrew Tap 仓库，用于分发 macOS 应用。

## 使用方法

### 添加 Tap

```bash
brew tap onyxio0/tap
```

## 可用的应用

### Code Switch

集中管理 Claude Code & Codex 供应商的桌面应用。

```bash
# 安装
brew install --cask code-switch

# 更新
brew upgrade --cask code-switch

# 卸载
brew uninstall --cask code-switch
```

- **主页**: https://github.com/onyxio0/code-switch
- **功能**:
  - 无需重启 cc & codex，平滑切换不同供应商
  - 支持多供应商自动降级，保证使用体验
  - 支持请求级别的用量统计
  - 支持 cc & codex Mcp Server 双平台管理
  - 支持 Claude Skill 自动下载与安装

### ccNexus

Claude Code 的智能 API 网关 - 自动轮换端点、监控使用情况。

```bash
# 安装
brew install --cask ccnexus

# 更新
brew upgrade --cask ccnexus

# 卸载
brew uninstall --cask ccnexus
```

- **主页**: https://github.com/lich0821/ccNexus
- **功能**:
  - 智能 API 网关用于 Claude Code
  - 自动轮换端点
  - 监控使用情况
  - 无缝集成 OpenAI、Gemini 等平台
- **自动更新**: 通过 GitHub Actions 自动检测并更新到最新版本

## 自动更新机制

ccNexus 配置了自动更新功能：

- ✅ 每天自动检测上游仓库的新版本
- ✅ 发现新版本时自动创建 Pull Request
- ✅ 审查并合并 PR 后，用户即可通过 `brew upgrade` 获取更新

## 反馈

如有问题，请在对应项目的 GitHub Issues 中反馈。
