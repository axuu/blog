---
title: "用 VSCode 自动格式化 Vue2 代码"
date: 2021-09-16T10:37:18+08:00
draft: false
---

## 安装扩展 Extensions

* Prettier - Code formatter
* Vetur

## 配置

### 1.打开配置文件

可以全局或按项目配置

* 全局：修改 setting.json
* 按项目：项目下 .vscode 文件夹 -> 修改 setting.json

### 2.对文件整体进行格式化

这种方式只需要安装 Prettier，不需要 Vetur

```
{
  "editor.defaultFormatter": "esbenp.prettier-vscode", // 将 prettier 应用于所有文件的格式化
  "editor.formatOnSave": true, // 保存时自动格式化
  "[typescript, vue]": { // ts, vue 文件
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true // 可单独关闭
  }
}
```

### 3.对 vue 文件中的 html、js、css 分别格式化

Prettier + Vetur

```
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true
  },
  "[vue]": {
    "editor.defaultFormatter": "octref.vetur", // 对 Vue 文件使用 Vetur 作为 formatter
    "editor.formatOnSave": true
  },
  "vetur.format.defaultFormatter.html": "prettier", // none 为关闭，其他配置可参考 https://vuejs.github.io/vetur/guide/formatting.html
  "vetur.format.defaultFormatter.ts": "prettier",
  "vetur.format.defaultFormatter.less": "prettier",
}
```

## 执行格式化

### 自动

- 将 settings.json 中相应的 formatOnSave 修改为 true

### 手动

- 对文件整体进行格式化：右键 -> Format Document，快捷键：shift + alt + F（可自定义）
- 对部分代码格式化：选中代码 -> 右键 -> Format Selection
