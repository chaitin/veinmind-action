# Veinmind Action
> 基于 [veinmind-tools]() 实现的 [Github Action]()

<img src="https://img.shields.io/github/v/release/chaitin/veinmind-action.svg" />
<img src="https://img.shields.io/github/release-date/chaitin/veinmind-action.svg?color=blue&label=update" />

![](https://dinfinite.oss-cn-beijing.aliyuncs.com/image/20220424161009.png)

## 🕹️ 快速开始
扫描在 Action 过程中构建的镜像
```
on: [push]
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Build image from your dockerfile
        run: docker build -t my-app:${{ github.sha }} .
      - name: Run veinmind-tools to scan image
        uses: chaitin/veinmind-action@main
        with:
          scan-action: scan-host
          image-ref: 'my-app:${{ github.sha }}'
```

## 🏳️‍🌈 参数设置

| 参数名称    | 参数作用                     | 默认值         |
| ----------- | ---------------------------- |-------------|
| scan-action | 扫描功能类型                 | scan-host   |
| image-ref   | 镜像 Reference               |             |
| exit-code   | 当发现安全问题时的程序退出码 | 0           |
| output      | 报告输出名称                 | report.json |