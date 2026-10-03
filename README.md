##  参考学习
 * 这个图片墙的很好看：https://github.com/s110b/feng 访问地址： feng910.github.io

## 项目实现以下功能

* 编译时不加baseurl 根目录部署，分别部署到四个网站
* 编译时增加baseurl=/ibm/ 部署到github pages 子目录。访问地址：[https://s110b.github.io/ibm/](https://s110b.github.io/ibm/)
* 增加打包docker功能，每季度1月分打包docker镜像上传到docker hub
* blog主题每年更新一次
* 两个deploy文件，一个编译提交到vip项目gh-pages分支，一个增加baseurl提交到另一个仓库ibm项目ibm分支

## 这个项目可以学到什么？

* 学习打包docker镜像上传到docker hub
* 学习编译上传到本仓库分支和其他项目分支
* 学习部署项目到其他网站。例如：pages，netlify，vercel，render，主流静态站点。提升访问速度。


## 本地运行blog命令

```
改造后的，优先使用

第一步下载代码到本地 git clone https://github.com/s110b/vip.git

家里执行的命令：
cd /mnt/c/Users/song/Documents/GitHub/vip && docker run --rm -v $(pwd):/src -p 1313:1313 xiquwugou/hugo-extended:latest server --buildDrafts --buildFuture --bind 0.0.0.0

公司： todo

docker pull xiquwugou/hugo-extended:v1

cd /c/opt/s110/vip && docker run --rm -v $(pwd):/src -p 1313:1313 xiquwugou/hugo-extended:latest server --buildDrafts --buildFuture --bind 0.0.0.0




原始的：
docker pull jakejarvis/hugo-extended
docker run -v $(pwd):/src -p 1313:1313 jakejarvis/hugo-extended:latest server --buildDrafts --buildFuture --bind 0.0.0.0
```

|   Platform  |   URL   |
|---|---|
|   **可用**  |   |
|   [cloudflare](https://vip-coi.pages.dev/)  |   https://vip-coi.pages.dev/   |
|   [vercel](https://vip-puce.vercel.app/)  |   https://vip-puce.vercel.app/   |
|   [netlify](https://aesthetic-sprite-d13736.netlify.app/)  |   https://aesthetic-sprite-d13736.netlify.app/   |
|   **经常不可用**  |   |
|   <span style="background-color: #FFFF00">[render](https://vip-20y5.onrender.com/)</span>  |   <span style="background-color: #FFFF00">https://vip-20y5.onrender.com/</span>   |



<img align="right" width="150" alt="logo" src="https://user-images.githubusercontent.com/5889006/190859553-5b229b4f-c476-4cbd-928f-890f5265ca4c.png">

# Hugo Theme Stack Starter Template

This is a quick start template for [Hugo theme Stack](https://github.com/CaiJimmy/hugo-theme-stack). It uses [Hugo modules](https://gohugo.io/hugo-modules/) feature to load the theme.


 
