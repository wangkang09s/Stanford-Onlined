FROM stvstnfrd/workbench:latest
ADD package.json /root/xblock/
RUN cd /root/xblock && npm install
ADD . /root/xblock
RUN make -C /root/xblock requirements
RUN pip install -e /root/xblock
ENV HOME /root
