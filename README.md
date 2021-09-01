# webpack-ci
Jenkins ci for webpack.

## 脚本说明

- publish.sh

  如果安装了 `node` 环境, 执行该脚本发布静态文件
  
- build.sh

  如果安装了 `docker`, 执行该脚本发布可静态文件

- pack.sh

  执行完 `publish.sh` 或 `build.sh` 后，执行该脚本打包 docker 镜像，并推送到 docker 仓库

- deploy.sh

  执行完 `pack.sh` 后，执行该脚本把应用部署到 kubernetes
  
## Project setup
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn serve
```

### Compiles and minifies for production
```
yarn build
```

### Lints and fixes files
```
yarn lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
