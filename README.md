## 1 部署前准备

### 1.1 支付宝端准备
#### 1.1.1 开放能力
需要申请为小程序申请

| 能力 | 说明                           | 
|---|------------------------------|
| 小程序支付  | 用于支付功能                       |
| 支付宝预授权 | 用于信用免押, 需要申请[信用服务号](https://zhima.alipay.com/admin/creditservice/index.htm#/detail/riskRule?mode=edit&creditServiceId=2022011700000000000086925900&version=1&creditScene=rent_online)        |
| 转账到支付宝账户 | 用于会员提现                       |
| 转账到支付宝账户 | 用于获取会员的信息                    |
| 获取会员手机号 | 用于获取用户的手机号, 这个需要主动提交审核通过才能使用 |
| 小程序基础包（企业开发者版）  |                              | 

#### 1.1.2 证书配置 
根据[证书的生成教程](https://opendocs.alipay.com/common/02kdnc) ,通过`支付宝开放平台助手`生成`公钥` `私钥`和`CSR`这3个文件,都保存下来，然后上传`CSR`
到支付宝的接口加签上后就能下载 `应用公钥证书文件` `支付宝公钥证书文件`和`支付宝根证书文件`这3个文件。 最后需要使用`私钥`和这3个下载下来的文件，写到配置上。 

# 2 部署说明 

## 2.1 构建docker镜像
修改`deploy.sh`配置中的`version`号，然后执行构建.

## 2.2 部署
修改`docker-compose.yml`的版本号为最新的版本号，然后`docker-compose up`启动docker.

