# LINSY 商城 H5 商品详情 Demo

林氏家居 B2B 商城 **H5 移动端商品详情页** 静态演示，单文件实现，与 WEB 交易链路 Demo 完全独立。

## 在线预览（GitHub Pages 部署后）

| 页面 | URL |
|------|-----|
| 首页（即详情页） | `https://<用户名>.github.io/<仓库名>/` |
| 同上（显式路径） | `https://<用户名>.github.io/<仓库名>/h5-product-detail.html` |

## 功能

- 商品图库、价格 / MOQ / 规格信息
- Style / Series / Model 属性行 → Parameter 弹层
- Description 场景轮播 + 内嵌推荐区
- Recommend Tab、Same Series / Same Category
- 推荐卡片收藏、Item 展示
- 底部 Fav 收藏（H5 不支持加入意向单）

## 本地预览

```powershell
cd 商城H5商品详情Demo
npx serve -l 8765 .
# http://localhost:8765/
```

或双击 `index.html`

## 文件

| 文件 | 说明 |
|------|-----|
| `index.html` | 入口（与详情页相同，Pages 根路径直接访问） |
| `h5-product-detail.html` | 同上，备用路径 |
| `.github/workflows/pages.yml` | GitHub Pages 自动部署 |

纯静态 HTML，无外部依赖，无需构建。

## 上传 GitHub

详见 [上传说明.md](./上传说明.md)
