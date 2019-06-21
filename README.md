# TestOpenPod0621

这个是用来部署一个开源的pod

操作步骤如下：

创建一个public的仓库 ——将我刚刚创建的库clone下来 ——cd到项目文件夹 ——创建.podspec ——添加需要的文件及资源（也就是步骤2）——提交三部曲 ——设置tag ——修改.podspec

详细操作步骤：

1、创建.podspec
$ pod spec create [NAME]
> [NAME]: podspec 名称，一般与你在git上创建的repository相同
// 如：
$ pod spec create TestOpenPod0621

2、创建一个文件夹，用于放置我的{.h/.m/.swift  Assets}等
$ mkdir Sources
将你所需的文件拷贝至文件夹

3、修改过.podspec之后，要先提交三部曲，然后再git tag 'v0.1'  和git push —tags 。详细操作步骤为：
// 添加所有文件
$ git add .   
// 提交
$ git commit -m "Initial TestOpenPod0621"
// push到你的远程仓库
$ git push
// 接下来就是需要使用到的一个Tag，这个在你的.podspec中需要配置
$ git tag -m "Initial Tag" 0.0.1
// 将tag添加至你的远程仓库
$ git push --tags

4、修改.podspec

5、手动方式检验一下你的.podspec是否正确
// 进入到.podspec所在目录
$ pod spec lint

6、提交公有library
$ pod trunk push [NAME].podspec
//注意上面的中扩号不要敲进去。

7、现在就来看看是否成功
// 先更新一下repo
$ pod repo update
// 查找一下你提交的pod
$ pod search ‘NAME'

