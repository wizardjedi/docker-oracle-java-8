FROM centos:6.6
RUN yum install -y wget tar git vim gcc gcc-c++ make openssl-devel && \
	wget http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_17.5-1~centos~6_amd64.rpm && \
	yum -y --nogpgcheck localinstall esl-erlang_17.5-1~centos~6_amd64.rpm && \
	rm esl-erlang_17.5-1~centos~6_amd64.rpm

