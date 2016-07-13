
CXX=g++

INC=-I$(IOTIVITY_HOME)/resource/include \
	-I$(IOTIVITY_HOME)/resource/c_common \
	-I$(IOTIVITY_HOME)/resource/csdk/stack/include \
	-I$(IOTIVITY_HOME)/resource/csdk/security/provisioning/include \
	-I$(IOTIVITY_HOME)/resource/csdk/security/provisioning/include/internal \
	-I$(IOTIVITY_HOME)/resource/c_common/ocrandom/include \
	-I$(IOTIVITY_HOME)/resource/csdk/logger/include \
	-I$(IOTIVITY_HOME)/resource/oc_logger/include

CXXFLAGS = -std=c++11 -DWITH_POSIX -D__darwin__ -m64 -fPIC -Wall -Wextra -Wno-unused -Os -pthread $(INC)

LDFLAGS=-L$(IOTIVITY_HOME)/out/darwin/x86_64/release

# OSX must use either -lc++ or -lstdc++, -std=libstc++ not enough
LDLIBS=-lcoap -lconnectivity_abstraction -loc_logger -loctbstack -loc -lpthread -lstdc++

all:	simpleserver simpleclient

server: simpleserver.o

simplerserver.o: simplerserver.cpp

clean:
	rm *.o *.dat simpleserver simpleclient
