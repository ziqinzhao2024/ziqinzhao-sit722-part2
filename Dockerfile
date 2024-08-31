# Dockerfile for book_catalog microservice
# 指定基础镜像为 Python 3.9
FROM python:3.9
# 设置工作目录
WORKDIR /usr/src/app
# 将当前目录下的所有文件复制到容器的工作目录
COPY ./book_catalog /usr/src/app
# 安装项目依赖
RUN pip install -r /usr/src/app/requirements.txt
# 设置容器启动命令 
CMD python -m uvicorn main:app --host 0.0.0.0 --port 3000