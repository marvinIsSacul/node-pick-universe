cmd_Release/obj.target/universe-native.node := g++ -o Release/obj.target/universe-native.node -shared -pthread -rdynamic -m64  -Wl,-soname=universe-native.node -Wl,--start-group Release/obj.target/universe-native/src/universe.o Release/obj.target/node_modules/node-addon-api/src/nothing.a -Wl,--end-group /home/nivethan/universe/src/libuvic.a /usr/local/lib/libffi.so.8
