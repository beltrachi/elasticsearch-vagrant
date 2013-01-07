mkdir -p pkg
$(cd pkg && wget https://s3.amazonaws.com/tarn-repo/libjzmq_2.1.7_amd64.deb)
$(cd pkg && wget https://s3.amazonaws.com/tarn-repo/libzmq1_2.1.7_amd64.deb)
$(cd pkg && wget https://s3.amazonaws.com/tarn-repo/storm_0.8.1_all.deb)

# cache these too.
$(cd pkg && wget http://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.20.1.tar.gz)
$(cd pkg && wget http://s3.amazonaws.com/downloads.basho.com/riak/CURRENT/debian/6/riak_1.2.1-1_amd64.deb)
$(cd pkg && wget http://redis.googlecode.com/files/redis-2.4.13.tar.gz)
