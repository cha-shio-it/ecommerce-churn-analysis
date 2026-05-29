# 电商用户流失风险分析

## 项目背景
电商平台面临用户流失严重的问题。本项目基于 5 万条用户行为数据，通过完整的数据分析流程（取数 → 清洗 → 指标构建 → 画像 → 风险因子识别 → 用户分层 → 策略输出），定位高风险群体并提出可量化的挽留策略。

## 分析框架
SQL取数 → 数据清洗 → 指标构建 → 用户画像 → 风险因子识别(相关性) → 用户分层 → 策略输出

## 核心发现

整体流失率：28.9%（请填写你的实际数字）

流失用户画像（正向差异 Top 3）：
  - 距上次购买天数 
  - 客服咨询次数 
  - 弃购率

流失风险因子（相关性）：
  - 距上次购买天数（r = 0.15）
  - 客服咨询次数（r = 0.29）
  - 弃购率（r = 0.28）

用户分层洞察：
  - “高弃购 + 多客服”用户流失率高达 61%
  - “低频”用户流失率 38%–41%

## 业务策略（优先级 P0–P2）

<img width="2160" height="308" alt="5cbbae202584ef88a2e4edf2fa3c870d" src="https://github.com/user-attachments/assets/bf6475dc-091f-4140-afc7-122d14e1e99a" />

整体目标：全量用户流失率预计降低 10%。

## 技术栈
SQL：数据提取

Python：pandas（清洗）、matplotlib/seaborn（可视化）

Excel：策略表制作

Jupyter Notebook：交互式分析

## 文件结构
My_First_Project/

├── Data/

    ├── user_data.csv # sql取数后数据
  
    └── workdata.csv  # 下载的原始数据
  
  
├──sql/

     └── churn_analysis.sql
   
   
├──src/

    ├── .idea/
  
    ├── .venv/
  
    ├── data/
  
      ├── user_data.csv # sql取数后数据
     
      ├── cleaned_user_data.csv # 清洗后数据
      
    ├── images/
  
      ├── positive_diff_churn.png # 正向差异柱状图
    
      ├── corr_heatmap.png # 相关性热力图
    
      ├── segment_churn1_heatmap.png # 购买频数和平均客单价的用户分层热力图
    
      └── segment_churn2_heatmap.png # 弃购率和客服会话次数的用户分层热力图
    
    ├── notebooks/
  
      ├── data_analysis.ipynb # 完整分析代码
    
      ├── data_clean.ipynb # 完整清洗代码
    
      └── strategy_table.ipynb # 完整策略输出代码
    
    ├── outputs/
  
      ├── churn_profile.csv # 流失画像对比表
      
      ├── positive_diff.csv # 正向差异表
      
      ├── negative_diff.csv # 负向差异表
      
      ├── segment_churn1.csv # 购买频数和平均客单价分层流失率矩阵
      
      ├── segment_churn.csv # 弃购率和客服会话次数分层流失率矩阵
      
      ├── strategy_table.csv # 业务策略表
      
      └──strategy_table.xlsx # 业务策略excel表
 

## 如何运行
1. 克隆本仓库
2. 安装依赖：`pip install pandas matplotlib seaborn numpy`
3. 启动 Jupyter Notebook：`jupyter notebook notebooks/analysis.ipynb`
4. 按顺序执行单元格，即可复现全部分析

## 作者
陈浩 

2026.05

## 许可证
本项目仅供学习交流使用。
