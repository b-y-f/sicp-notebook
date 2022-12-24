FROM jupyter/base-notebook

RUN pip3 install --upgrade metakernel
RUN pip3 install --upgrade calysto-scheme

EXPOSE 8888

CMD ["sh", "-c", "jupyter notebook --kernel calysto_scheme"]