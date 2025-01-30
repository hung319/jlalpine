FROM alpine

RUN PS1='\$ '
RUN export PS1
RUN apk update && apk upgrade
RUN apk add gcc g++ python3-dev musl-dev linux-headers make python3 py3-pip sudo
RUN python3 -m pip config set global.break-system-packages true
RUN pip3 install jupyterlab

WORKDIR /root
EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token='11042006'"]
