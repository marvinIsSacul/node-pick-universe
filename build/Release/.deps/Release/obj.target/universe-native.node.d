cmd_Release/obj.target/universe-native.node := g++ -o Release/obj.target/universe-native.node -shared -pthread -rdynamic -m64  -Wl,-soname=universe-native.node -Wl,--start-group Release/obj.target/universe-native/src/callsubroutine.o Release/obj.target/universe-native/src/cleardata.o Release/obj.target/universe-native/src/clearfile.o Release/obj.target/universe-native/src/clearselect.o Release/obj.target/universe-native/src/close.o Release/obj.target/universe-native/src/continueexecution.o Release/obj.target/universe-native/src/convert.o Release/obj.target/universe-native/src/data.o Release/obj.target/universe-native/src/date.o Release/obj.target/universe-native/src/delete.o Release/obj.target/universe-native/src/deletefield.o Release/obj.target/universe-native/src/endallsessions.o Release/obj.target/universe-native/src/endsession.o Release/obj.target/universe-native/src/execute.o Release/obj.target/universe-native/src/extract.o Release/obj.target/universe-native/src/fileinfo.o Release/obj.target/universe-native/src/filelock.o Release/obj.target/universe-native/src/fileunlock.o Release/obj.target/universe-native/src/format.o Release/obj.target/universe-native/src/formlist.o Release/obj.target/universe-native/src/getlist.o Release/obj.target/universe-native/src/getlocale.o Release/obj.target/universe-native/src/getvalue.o Release/obj.target/universe-native/src/iconv.o Release/obj.target/universe-native/src/indices.o Release/obj.target/universe-native/src/insert.o Release/obj.target/universe-native/src/isalpha.o Release/obj.target/universe-native/src/locate.o Release/obj.target/universe-native/src/lock.o Release/obj.target/universe-native/src/lower.o Release/obj.target/universe-native/src/oconv.o Release/obj.target/universe-native/src/open.o Release/obj.target/universe-native/src/raise.o Release/obj.target/universe-native/src/read.o Release/obj.target/universe-native/src/readall.o Release/obj.target/universe-native/src/readlist.o Release/obj.target/universe-native/src/readnext.o Release/obj.target/universe-native/src/readvalue.o Release/obj.target/universe-native/src/recordlock.o Release/obj.target/universe-native/src/recordlocked.o Release/obj.target/universe-native/src/release.o Release/obj.target/universe-native/src/remove.o Release/obj.target/universe-native/src/replace.o Release/obj.target/universe-native/src/runitype.o Release/obj.target/universe-native/src/select.o Release/obj.target/universe-native/src/selectindex.o Release/obj.target/universe-native/src/sessioninfo.o Release/obj.target/universe-native/src/setsession.o Release/obj.target/universe-native/src/settimeout.o Release/obj.target/universe-native/src/setvalue.o Release/obj.target/universe-native/src/startsession.o Release/obj.target/universe-native/src/time.o Release/obj.target/universe-native/src/timedate.o Release/obj.target/universe-native/src/trans.o Release/obj.target/universe-native/src/universe.o Release/obj.target/universe-native/src/unlock.o Release/obj.target/universe-native/src/write.o Release/obj.target/universe-native/src/writevalue.o Release/obj.target/node_modules/node-addon-api/src/nothing.a -Wl,--end-group ../libs/libuvic.a -lffi
