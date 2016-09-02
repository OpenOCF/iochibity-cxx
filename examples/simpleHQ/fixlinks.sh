#!/usr/bin/env sh

# fixup dynamic links on darwin. maybe not needed if DYLD_LIBRARY_PATH correct?

# server
install_name_tool \
    -change \
    out/darwin/x86_64/release/resource/oc_logger/liboc_logger.dylib \
    $IOTIVITY_LIBPATH/resource/oc_logger/liboc_logger.dylib \
    simpleserverHQ

install_name_tool \
    -change \
    out/darwin/x86_64/release/resource/csdk/liboctbstack.dylib \
    $IOTIVITY_LIBPATH/liboctbstack.dylib \
    simpleserverHQ

install_name_tool \
    -change \
    out/darwin/x86_64/release/resource/src/liboc.dylib \
    $IOTIVITY_LIBPATH/liboc.dylib \
    simpleserverHQ

# client
# server
install_name_tool \
    -change \
    out/darwin/x86_64/release/resource/oc_logger/liboc_logger.dylib \
    $IOTIVITY_LIBPATH/resource/oc_logger/liboc_logger.dylib \
    simpleclientHQ

install_name_tool \
    -change \
    out/darwin/x86_64/release/resource/csdk/liboctbstack.dylib \
    $IOTIVITY_LIBPATH/liboctbstack.dylib \
    simpleclientHQ

install_name_tool \
    -change \
    out/darwin/x86_64/release/resource/src/liboc.dylib \
    $IOTIVITY_LIBPATH/liboc.dylib \
    simpleclientHQ

