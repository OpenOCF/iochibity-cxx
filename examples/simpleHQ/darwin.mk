CC=g++
CXX=g++

INC=-I$(IOTIVITY_HOME)/resource/include \
	-I$(IOTIVITY_HOME)/resource/c_common \
	-I$(IOTIVITY_HOME)/resource/csdk/stack/include \
	-I$(IOTIVITY_HOME)/resource/csdk/security/provisioning/include \
	-I$(IOTIVITY_HOME)/resource/csdk/security/provisioning/include/internal \
	-I$(IOTIVITY_HOME)/resource/c_common/ocrandom/include \
	-I$(IOTIVITY_HOME)/resource/csdk/logger/include \
	-I$(IOTIVITY_HOME)/resource/oc_logger/include

CXXFLAGS = -g -std=c++11 -DWITH_POSIX -D__darwin__ -m64 -fPIC -Wall -Wextra -Wno-unused -Os -pthread $(INC)

LDFLAGS=-L$(IOTIVITY_LIBPATH)

# OSX must use either -lc++ or -lstdc++, -std=libstc++ not enough
LDLIBS=-lcoap -lconnectivity_abstraction -loc_logger -loctbstack -loc -lpthread -lstdc++

all:	simpleclientHQ simpleserverHQ

clean:
	rm *.o simpleclientHQ simpleserverHQ
