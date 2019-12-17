FROM swr.cn-north-1.myhuaweicloud.com/aeocdc/fbajupyter14:v1
MAINTAINER  yangyi@tib.cas.cn
RUN mkdir /home/gsmn
WORKDIR /home/gsmn/
COPY qualitycontrol-workflow /home/gsmn
COPY trycplex.ipynb /home/gsmn
COPY iML1515.xml /home/gsmn
CMD /root/miniconda3/bin/jupyter-notebook --ip=0.0.0.0 --no-browser --allow-root
