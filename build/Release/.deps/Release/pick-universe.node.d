cmd_Release/pick-universe.node := ln -f "Release/obj.target/pick-universe.node" "Release/pick-universe.node" 2>/dev/null || (rm -rf "Release/pick-universe.node" && cp -af "Release/obj.target/pick-universe.node" "Release/pick-universe.node")
