FROM python:alpine

RUN apk update && apk upgrade
RUN apk add sudo
RUN pip3 install jupyterlab

WORKDIR /root
EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token='11042006'"]
