################################################################
# Note: Edit the variable below to help find your own package
#       that tera depends on.
#       If you build tera using build.sh, no need to modify.
################################################################

SOFA_PBRPC_PREFIX=./thirdparty
PROTOBUF_PREFIX=./thirdparty
SNAPPY_PREFIX=./thirdparty
ZOOKEEPER_PREFIX=./thirdparty
GFLAGS_PREFIX=./thirdparty
GLOG_PREFIX=./thirdparty
GPERFTOOLS_PREFIX=./thirdparty
BOOST_INCDIR=./thirdparty/boost_1_57_0

SOFA_PBRPC_INCDIR = $(SOFA_PBRPC_PREFIX)/include
PROTOBUF_INCDIR = $(PROTOBUF_PREFIX)/include
SNAPPY_INCDIR = $(SNAPPY_PREFIX)/include
ZOOKEEPER_INCDIR = $(ZOOKEEPER_PREFIX)/include
GFLAGS_INCDIR = $(GFLAGS_PREFIX)/include
GLOG_INCDIR = $(GLOG_PREFIX)/include
GPERFTOOLS_INCDIR = $(GPERFTOOLS_PREFIX)/include

SOFA_PBRPC_LIBDIR = $(SOFA_PBRPC_PREFIX)/lib
PROTOBUF_LIBDIR = $(PROTOBUF_PREFIX)/lib
SNAPPY_LIBDIR = $(SNAPPY_PREFIX)/lib
ZOOKEEPER_LIBDIR = $(ZOOKEEPER_PREFIX)/lib
GFLAGS_LIBDIR = $(GFLAGS_PREFIX)/lib
GLOG_LIBDIR = $(GLOG_PREFIX)/lib
GPERFTOOLS_LIBDIR = $(GPERFTOOLS_PREFIX)/lib

################################################################
# Note: No need to modify things below.
################################################################

DEPS_INCPATH = -I$(BOOST_INCDIR) -I$(SOFA_PBRPC_INCDIR) -I$(PROTOBUF_INCDIR) \
               -I$(SNAPPY_INCDIR) -I$(ZOOKEEPER_INCDIR) \
               -I$(GFLAGS_INCDIR) -I$(GLOG_INCDIR) \
               -I$(GPERFTOOLS_INCDIR) -I$(BOOST_INCDIR)
DEPS_LDPATH = -L$(SOFA_PBRPC_LIBDIR) -L$(PROTOBUF_LIBDIR) \
              -L$(SNAPPY_LIBDIR) -L$(ZOOKEEPER_LIBDIR) \
              -L$(GFLAGS_LIBDIR) -L$(GLOG_LIBDIR) \
              -L$(GPERFTOOLS_LIBDIR)
DEPS_LDFLAGS = -lsofa-pbrpc -lprotobuf -lsnappy -lzookeeper_mt \
               -lgflags -lglog -ltcmalloc -lunwind