   # 使用官方Node.js运行时镜像作为基础镜像
   FROM node:20

   # 设置工作目录
   WORKDIR /usr/src/app

   # 复制package.json和package-lock.json（如果有）
   COPY package*.json ./

   # 安装项目依赖
   RUN npm install

   # 复制项目文件到工作目录
   COPY . .

   # 暴露应用运行的端口
   EXPOSE 3001

   # 定义启动命令
   CMD ["npm", "run", "dev"]
   