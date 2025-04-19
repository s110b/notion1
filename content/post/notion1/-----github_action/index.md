---
id: d318f186-95d9-4941-bb61-c64e4812df60
title: 修改了一个github action
created_time: 2023-11-20T09:50:00.000Z
last_edited_time: 2023-11-22T09:42:00.000Z
status: Published
lastmod: 2023-11-22T09:42:00.000Z
type: gallery
categories:
  - 学习
description: 适配hugo stack主题，修改一个github action，不依赖三方图片服务
tags:
  - test
create_at: 2023-11-20T09:50:00.000Z
keywords: []
expiry_date: 2023-11-15T00:00:00.000Z
show_comments: true
publish_date: 2023-11-15T00:00:00.000Z
name: 修改了一个github_action
image: solid_blue_zjc32N3a.png

---

## 修改了一个github action

> [![favicon](favicon_f8fO6Cee.svg) **GitHub**](https://github.com/s110b/notion-jam-md)
>
> *   同步notion为md文件， \* 转换md文件适配hugo stack主题， \* 下载notion图片到本地。 \* 同时更新 md中的图片地址信息。 - s110b/notion-jam-md\
>     <https://github.com/s110b/notion-jam-md>

修改了如下内容：

*   meta信息中图片取值修改为image

*   md信息中图片取值去掉路径

*   删掉不必要的meta信息中的author

本次修改主要理解了github action的运行原理

将 Notion 页面同步至 GitHub，以创建静态网站（hugo）

*   将 Notion 页面转换成 Markdown 格式的文件。

*   自动将notion database属性作为md meta信息。

*   下载所有图片至本地，并更改其路径为相对路径。

*   下载页面的封面图像。

*   根据页面封面、第一张图片、图标或根据帖子设定的图片编号，自动在前言中添加缩略图属性。

## 浪费时间的action

如果不出错就都还好，出错有些问题就很难调试，报的错跟实际原因不相符。
所有action运行的时候都要注意他的上下文和目录位置。尤其是多个check的时候，
他是以第一次的check当作主目录的。
为了防止出错，我们有必要每次打印日志。一定要清楚，acton在哪个上下文执行。

### 当然尝试的步骤主要是一下几种

1.  ssh 是否设置正确
2.  *调整folder位置，这个是浪费时间。*
3.  最重要还是第一次checkout的位置。

```yaml
- name: Deploy
        uses: JamesIves/github-pages-deploy-action@v4
        with:
          branch: qq
          folder: ./app
          clean: true
          single-commit: true
          force: true
          ssh-key: ${{ secrets.MY_SSH_PRIVATE_KEY }}  # Use the new token
```

## 图片处理流程

*   利用magic读取图片信息，重命名图片。没有meta信息，从001递增。

*   对图片用webp压缩。

*   用jekyll编译为静态网页，上传到仓库的gh-pages 分支

*   在qq仓库，从图片处理仓库拉取gh-pages分支部署。

*   浏览图片网站。

[embed](https://s110b.github.io/qq/)
