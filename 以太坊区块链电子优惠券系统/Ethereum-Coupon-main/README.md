# 🎫 以太坊区块链电子优惠券系统

基于以太坊智能合约的去中心化电子优惠券管理系统,支持优惠券的发行、发放、核销和查询等完整业务流程。

## 📋 目录

- [系统简介](#系统简介)
- [功能特性](#功能特性)
- [技术架构](#技术架构)
- [快速开始](#快速开始)
- [手机端使用指南](#手机端使用指南)
- [桌面端使用指南](#桌面端使用指南)
- [智能合约说明](#智能合约说明)
- [部署指南](#部署指南)
- [常见问题](#常见问题)

## 系统简介

本系统是一个基于以太坊区块链的电子优惠券管理平台,通过智能合约实现优惠券的全生命周期管理。系统包含银行端、商家端、用户端三个角色,支持桌面端和移动端访问。

### 核心优势

- ✅ **去中心化**: 基于区块链,数据公开透明,不可篡改
- ✅ **安全可靠**: 智能合约自动执行,防止作弊
- ✅ **移动优先**: 支持手机扫码核销,便捷高效
- ✅ **完整流程**: 覆盖发行、发放、核销、结算全流程

## 功能特性

### 🏦 银行端功能
- 商家注册与管理
- 商家结算管理
- 系统监控

### 🏪 商家端功能
- **桌面端** (`merchant.html`)
  - 优惠券发行(设置面额、限额、有效期)
  - 优惠券发放(向用户发放)
  - 优惠券核销(验证并核销)
  - 优惠券查询(未发放/已发放/已核销)
  - 优惠券终止

- **移动端** (`merchant_mobile.html`) ⭐ 新增
  - 📱 专为手机优化的界面
  - 📷 摄像头扫码功能
  - ✨ 自动填充地址信息
  - 🚀 快速核销流程

### 👤 用户端功能
- 查看个人优惠券
- 生成优惠券二维码
- 优惠券使用记录

## 技术架构

### 前端技术栈
- **HTML5 + CSS3**: 响应式界面设计
- **JavaScript (ES6+)**: 业务逻辑实现
- **Ethers.js v5.7.2**: 以太坊交互库
- **html5-qrcode v2.3.8**: 二维码扫描库

### 智能合约
- **Solidity**: 智能合约开发语言
- **Bank.sol**: 银行合约
- **Merchant.sol**: 商家合约
- **Consumer.sol**: 用户合约
- **Coupon.sol**: 优惠券合约

### 区块链网络
- 支持以太坊主网
- 支持测试网络(Sepolia, Goerli等)
- 支持本地Ganache测试

## 快速开始

### 环境准备

1. **安装 MetaMask 钱包**
   - 桌面端: [Chrome扩展](https://metamask.io/)
   - 移动端: [iOS](https://apps.apple.com/app/metamask/id1438144202) / [Android](https://play.google.com/store/apps/details?id=io.metamask)

2. **获取测试币**
   - 访问测试网水龙头获取测试ETH
   - Sepolia: https://sepoliafaucet.com/
   - Goerli: https://goerlifaucet.com/

3. **部署智能合约**
   ```bash
   # 使用 Remix IDE 或 Hardhat 部署合约
   # 记录合约地址备用
   ```

### 本地运行

```bash
# 克隆项目
git clone https://github.com/your-username/Ethereum-Coupon.git
cd Ethereum-Coupon/Ethereum-Coupon-Frontend

# 使用本地服务器运行(推荐)
# 方式1: 使用 Python
python -m http.server 8000

# 方式2: 使用 Node.js
npx http-server

# 访问 http://localhost:8000
```

## 📱 手机端使用指南

### 方法一: 使用 MetaMask 移动端浏览器 (推荐)

#### 1. 安装和配置 MetaMask

1. **下载 MetaMask 移动应用**
   - iOS: App Store 搜索 "MetaMask"
   - Android: Google Play 搜索 "MetaMask"

2. **创建或导入钱包**
   - 首次使用: 创建新钱包,保存助记词
   - 已有钱包: 导入助记词或私钥

3. **切换到测试网络**
   - 点击左上角菜单 → 设置 → 网络
   - 选择 Sepolia 测试网络(或其他测试网)

4. **获取测试币**
   - 复制钱包地址
   - 访问水龙头网站获取测试ETH

#### 2. 访问移动端核销页面

**方式A: 通过 GitHub Pages (推荐)**

1. 在 MetaMask 应用中点击左上角菜单
2. 点击 "浏览器" 标签
3. 输入网址: `https://你的用户名.github.io/仓库名/`
4. 选择 "移动端核销终端" 卡片

**方式B: 本地测试**

1. 确保手机和电脑在同一WiFi网络
2. 电脑上运行本地服务器
3. 在 MetaMask 浏览器输入: `http://电脑IP:8000/merchant_mobile.html`

#### 3. 核销优惠券完整流程

**步骤1: 连接钱包**
```
1. 打开移动端核销页面
2. 点击 "连接 MetaMask 钱包" 按钮
3. 在弹出的 MetaMask 中点击 "连接"
4. 看到 "当前商家账户: 0x123..." 表示连接成功
```

**步骤2: 输入商家合约地址**
```
1. 在 "商家合约地址" 输入框中粘贴合约地址
2. 格式: 0x 开头的42位十六进制地址
3. 示例: 0x1234567890123456789012345678901234567890
```

**步骤3: 扫描用户二维码**
```
1. 点击 "📷 开启摄像头扫码" 按钮
2. 首次使用会提示授权摄像头权限,点击 "允许"
3. 将摄像头对准用户出示的优惠券二维码
4. 扫描成功后会自动填入:
   - 用户地址 (Consumer)
   - 优惠券地址 (Coupon)
5. 摄像头会自动关闭
```

**步骤4: 输入消费金额**
```
1. 在 "本次消费金额" 输入框输入金额
2. 输入整数,单位为元
3. 示例: 600 (表示消费600元)
```

**步骤5: 确认核销**
```
1. 检查所有信息是否正确
2. 点击 "确认核销 (上链)" 按钮
3. MetaMask 会弹出交易确认窗口
4. 查看 Gas 费用,点击 "确认"
5. 等待交易上链(约10-30秒)
6. 看到 "✅ 核销成功!" 表示完成
```

#### 4. 注意事项

⚠️ **重要提示**:
- 必须使用 MetaMask 内置浏览器,普通浏览器无法连接钱包
- 确保手机网络稳定,避免交易失败
- 摄像头权限必须授权,否则无法扫码
- 扫码环境光线要充足,二维码要清晰
- 每次核销都需要支付 Gas 费用

💡 **优化建议**:
- 提前充值足够的测试币
- 保存常用的商家合约地址
- 在WiFi环境下使用,节省流量
- 定期清理浏览器缓存

### 方法二: 使用 WalletConnect (备选)

如果不想使用 MetaMask 内置浏览器,可以通过 WalletConnect 连接:

1. 在普通手机浏览器打开页面
2. 点击 WalletConnect 连接选项
3. 扫描二维码连接 MetaMask
4. 后续操作与方法一相同

## 💻 桌面端使用指南

### 商家管理后台 (`merchant.html`)

#### 1. 环境准备

1. **安装 MetaMask 浏览器扩展**
   - Chrome: [下载链接](https://chrome.google.com/webstore/detail/metamask/)
   - Firefox: [下载链接](https://addons.mozilla.org/firefox/addon/ether-metamask/)

2. **创建或导入钱包**
   - 点击 MetaMask 图标
   - 创建新钱包或导入现有钱包
   - 保存助记词(非常重要!)

3. **切换网络**
   - 点击 MetaMask 顶部网络选择器
   - 选择对应的测试网络

#### 2. 功能使用

**发行优惠券**
```
1. 切换到 "📝 发行优惠券" 标签
2. 填写信息:
   - 优惠券面额: 100 (元)
   - 消费限额: 500 (元)
   - 发行数量: 10 (张)
   - 开始日期: 2024-01-01
   - 结束日期: 2024-12-31
3. 点击 "发行优惠券 (上链)"
4. MetaMask 确认交易
5. 等待上链完成
```

**发放优惠券**
```
1. 切换到 "🎁 发放优惠券" 标签
2. 填写信息:
   - 用户合约地址: 0x...
   - 发放数量: 2
   - 发放日期: 2024-01-15
   - 订单标记: order0001
   - 本次消费金额: 600
3. 点击 "发放优惠券 (上链)"
4. 确认交易
```

**核销优惠券**
```
1. 切换到 "✅ 核销优惠券" 标签
2. 填写信息:
   - 用户地址: 0x...
   - 优惠券地址: 0x...
   - 本次消费金额: 600
3. 点击 "确认核销 (上链)"
4. 确认交易
```

**查询优惠券**
```
1. 切换到 "📊 优惠券查询" 标签
2. 点击对应按钮:
   - 未发放优惠券
   - 已发放未使用
   - 已核销
3. 查看优惠券列表
```

### 用户端 (`consumer.html`)

1. 连接 MetaMask 钱包
2. 输入用户合约地址
3. 查看个人优惠券列表
4. 生成优惠券二维码供商家扫描

### 银行端 (`bank.html`)

1. 连接 MetaMask 钱包(银行管理员账户)
2. 输入银行合约地址
3. 注册新商家
4. 查看商家列表
5. 处理商家结算

## 智能合约说明

### 合约架构

```
Bank (银行合约)
├── registerMerchant() - 注册商家
├── settlement() - 商家结算
└── getMerchants() - 获取商家列表

Merchant (商家合约)
├── issueCoupon() - 发行优惠券
├── grant() - 发放优惠券
├── confirmCouponPay() - 核销优惠券
├── terminateCoupon() - 终止优惠券
└── get*Coupons() - 查询优惠券

Consumer (用户合约)
├── getCoupons() - 获取优惠券列表
└── getCouponInfo() - 获取优惠券详情

Coupon (优惠券合约)
├── getValue() - 获取面额
├── getLimit() - 获取限额
├── getState() - 获取状态
└── get*Date() - 获取日期信息
```

### 优惠券状态

- **0 - 未发放**: 已发行但未分配给用户
- **1 - 已发放**: 已分配给用户但未使用
- **2 - 已核销**: 用户已使用
- **3 - 已终止**: 已过期或被终止

## 部署指南

### GitHub Pages 部署

#### 1. 上传代码到 GitHub

```bash
# 初始化 Git 仓库
git init
git add .
git commit -m "Initial commit: Ethereum Coupon System"

# 关联远程仓库
git remote add origin https://github.com/你的用户名/Ethereum-Coupon.git
git branch -M main
git push -u origin main
```

#### 2. 启用 GitHub Pages

1. 进入 GitHub 仓库页面
2. 点击 `Settings` (设置)
3. 左侧菜单找到 `Pages`
4. Source 选择 `Deploy from a branch`
5. Branch 选择 `main`
6. 文件夹选择 `/Ethereum-Coupon-Frontend`
7. 点击 `Save`

#### 3. 访问网站

等待1-2分钟后,访问:
```
https://你的用户名.github.io/Ethereum-Coupon/
```

### 智能合约部署

#### 使用 Remix IDE

1. 访问 [Remix IDE](https://remix.ethereum.org/)
2. 创建新文件,复制合约代码
3. 编译合约(Solidity 版本 ^0.8.0)
4. 切换到 Deploy & Run 标签
5. Environment 选择 "Injected Provider - MetaMask"
6. 部署合约并记录地址

#### 使用 Hardhat

```bash
# 安装依赖
npm install --save-dev hardhat @nomiclabs/hardhat-ethers ethers

# 初始化项目
npx hardhat

# 编译合约
npx hardhat compile

# 部署到测试网
npx hardhat run scripts/deploy.js --network sepolia
```

## 二维码格式说明

用户端需要生成包含以下信息的二维码供商家扫描:

### JSON 格式 (推荐)

```json
{
  "consumer": "0x用户合约地址",
  "coupon": "0x优惠券合约地址"
}
```

### 逗号分隔格式 (备选)

```
0x用户合约地址,0x优惠券合约地址
```

### 生成示例代码

```javascript
// 使用 qrcode.js 库
import QRCode from 'qrcode';

async function generateCouponQR(consumerAddr, couponAddr) {
    const data = JSON.stringify({
        consumer: consumerAddr,
        coupon: couponAddr
    });
    
    const qrCodeURL = await QRCode.toDataURL(data);
    document.getElementById('qrcode').src = qrCodeURL;
}
```

## 常见问题

### Q1: MetaMask 连接失败怎么办?

**A**: 
1. 确认已安装 MetaMask 扩展/应用
2. 检查是否已解锁钱包
3. 刷新页面重试
4. 检查网络连接

### Q2: 交易一直pending怎么办?

**A**:
1. Gas 价格可能设置过低,等待或加速交易
2. 网络拥堵,耐心等待
3. 在 MetaMask 中查看交易状态
4. 必要时取消交易重新发起

### Q3: 扫码功能无法使用?

**A**:
1. 确认使用 HTTPS 协议访问(GitHub Pages 默认支持)
2. 检查浏览器是否授权摄像头权限
3. 确保光线充足,二维码清晰
4. 尝试调整手机与二维码的距离

### Q4: 手机无法连接钱包?

**A**:
1. 必须使用 MetaMask 内置浏览器
2. 或使用支持 WalletConnect 的浏览器
3. 普通浏览器无法直接连接 MetaMask

### Q5: 核销时提示 "Only owner" 错误?

**A**:
1. 确认当前连接的钱包地址是商家合约的所有者
2. 检查商家合约地址是否正确
3. 确认使用的是正确的商家账户

### Q6: 如何获取测试币?

**A**:
1. Sepolia 测试网: https://sepoliafaucet.com/
2. Goerli 测试网: https://goerlifaucet.com/
3. 每次可领取少量测试ETH
4. 如果水龙头失败,可以尝试其他水龙头网站

### Q7: Gas 费用太高怎么办?

**A**:
1. 选择网络拥堵较少的时段
2. 使用测试网络进行测试
3. 调整 Gas Price (高级设置)
4. 等待网络费用降低

### Q8: 合约地址在哪里查看?

**A**:
1. 部署合约后会返回合约地址
2. 在 Remix IDE 的控制台查看
3. 在区块链浏览器(Etherscan)查询
4. 保存在部署记录中

## 项目结构

```
Ethereum-Coupon/
├── Ethereum-Coupon-Frontend/     # 前端代码
│   ├── index.html                # 导航首页
│   ├── merchant.html             # 商家管理后台(桌面端)
│   ├── merchant_mobile.html      # 移动端核销终端 ⭐
│   ├── consumer.html             # 用户端
│   └── bank.html                 # 银行端
├── contracts/                    # 智能合约
│   ├── Bank.sol                  # 银行合约
│   ├── Merchant.sol              # 商家合约
│   ├── Consumer.sol              # 用户合约
│   └── Coupon.sol                # 优惠券合约
└── README.md                     # 项目文档
```

## 技术支持

### 相关资源

- **以太坊官方文档**: https://ethereum.org/zh/developers/docs/
- **Solidity 文档**: https://docs.soliditylang.org/
- **Ethers.js 文档**: https://docs.ethers.org/v5/
- **MetaMask 文档**: https://docs.metamask.io/
- **html5-qrcode 文档**: https://github.com/mebjas/html5-qrcode

### 问题反馈

如遇到问题,请提交 Issue 或联系开发团队。

## 更新日志

### v2.0 (2024-12-11)
- ✨ 新增移动端核销终端页面
- ✨ 集成真实摄像头扫码功能
- ✨ 添加导航首页
- 🎨 优化移动端 UI 设计(橙黄色主题)
- 📱 完全响应式布局
- 🔒 支持 HTTPS 部署
- 📝 完善使用文档

### v1.0 (2024-01-01)
- 🎉 初始版本发布
- ✅ 基础商家管理系统
- ✅ 用户端和银行端页面
- ✅ 智能合约交互功能

## 开发团队

**区块链优惠券系统开发组**

## 许可证

MIT License

---

**⭐ 如果这个项目对你有帮助,请给我们一个 Star!**

**📧 联系我们**: blockchain-coupon@example.com
