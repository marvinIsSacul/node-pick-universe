# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := universe-native
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=universe-native' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-std=gnu++17

INCS_Debug := \
	-I/home/nivethan/.cache/node-gyp/17.3.1/include/node \
	-I/home/nivethan/.cache/node-gyp/17.3.1/src \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/openssl/config \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/openssl/openssl/include \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/uv/include \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/zlib \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/v8/include \
	-I/home/nivethan/bp/universe/node_modules/node-addon-api

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=universe-native' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-std=gnu++17

INCS_Release := \
	-I/home/nivethan/.cache/node-gyp/17.3.1/include/node \
	-I/home/nivethan/.cache/node-gyp/17.3.1/src \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/openssl/config \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/openssl/openssl/include \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/uv/include \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/zlib \
	-I/home/nivethan/.cache/node-gyp/17.3.1/deps/v8/include \
	-I/home/nivethan/bp/universe/node_modules/node-addon-api

OBJS := \
	$(obj).target/$(TARGET)/src/callsubroutine.o \
	$(obj).target/$(TARGET)/src/cleardata.o \
	$(obj).target/$(TARGET)/src/clearfile.o \
	$(obj).target/$(TARGET)/src/clearselect.o \
	$(obj).target/$(TARGET)/src/close.o \
	$(obj).target/$(TARGET)/src/continueexecution.o \
	$(obj).target/$(TARGET)/src/convert.o \
	$(obj).target/$(TARGET)/src/data.o \
	$(obj).target/$(TARGET)/src/date.o \
	$(obj).target/$(TARGET)/src/delete.o \
	$(obj).target/$(TARGET)/src/deletefield.o \
	$(obj).target/$(TARGET)/src/endallsessions.o \
	$(obj).target/$(TARGET)/src/endsession.o \
	$(obj).target/$(TARGET)/src/execute.o \
	$(obj).target/$(TARGET)/src/extract.o \
	$(obj).target/$(TARGET)/src/fileinfo.o \
	$(obj).target/$(TARGET)/src/filelock.o \
	$(obj).target/$(TARGET)/src/fileunlock.o \
	$(obj).target/$(TARGET)/src/format.o \
	$(obj).target/$(TARGET)/src/formlist.o \
	$(obj).target/$(TARGET)/src/getlist.o \
	$(obj).target/$(TARGET)/src/getlocale.o \
	$(obj).target/$(TARGET)/src/getvalue.o \
	$(obj).target/$(TARGET)/src/iconv.o \
	$(obj).target/$(TARGET)/src/indices.o \
	$(obj).target/$(TARGET)/src/insert.o \
	$(obj).target/$(TARGET)/src/isalpha.o \
	$(obj).target/$(TARGET)/src/locate.o \
	$(obj).target/$(TARGET)/src/lock.o \
	$(obj).target/$(TARGET)/src/lower.o \
	$(obj).target/$(TARGET)/src/oconv.o \
	$(obj).target/$(TARGET)/src/open.o \
	$(obj).target/$(TARGET)/src/raise.o \
	$(obj).target/$(TARGET)/src/read.o \
	$(obj).target/$(TARGET)/src/readlist.o \
	$(obj).target/$(TARGET)/src/readnext.o \
	$(obj).target/$(TARGET)/src/readvalue.o \
	$(obj).target/$(TARGET)/src/recordlock.o \
	$(obj).target/$(TARGET)/src/recordlocked.o \
	$(obj).target/$(TARGET)/src/release.o \
	$(obj).target/$(TARGET)/src/remove.o \
	$(obj).target/$(TARGET)/src/replace.o \
	$(obj).target/$(TARGET)/src/runitype.o \
	$(obj).target/$(TARGET)/src/select.o \
	$(obj).target/$(TARGET)/src/selectindex.o \
	$(obj).target/$(TARGET)/src/sessioninfo.o \
	$(obj).target/$(TARGET)/src/setsession.o \
	$(obj).target/$(TARGET)/src/settimeout.o \
	$(obj).target/$(TARGET)/src/setvalue.o \
	$(obj).target/$(TARGET)/src/startsession.o \
	$(obj).target/$(TARGET)/src/time.o \
	$(obj).target/$(TARGET)/src/timedate.o \
	$(obj).target/$(TARGET)/src/trans.o \
	$(obj).target/$(TARGET)/src/universe.o \
	$(obj).target/$(TARGET)/src/unlock.o \
	$(obj).target/$(TARGET)/src/write.o \
	$(obj).target/$(TARGET)/src/writevalue.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/nothing.a $(obj).target/../node_modules/node-addon-api/src/nothing.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	../lib/libuvic.a \
	-lffi

$(obj).target/universe-native.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/universe-native.node: LIBS := $(LIBS)
$(obj).target/universe-native.node: TOOLSET := $(TOOLSET)
$(obj).target/universe-native.node: $(OBJS) $(obj).target/../node_modules/node-addon-api/src/nothing.a FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/universe-native.node
# Add target alias
.PHONY: universe-native
universe-native: $(builddir)/universe-native.node

# Copy this to the executable output path.
$(builddir)/universe-native.node: TOOLSET := $(TOOLSET)
$(builddir)/universe-native.node: $(obj).target/universe-native.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/universe-native.node
# Short alias for building this executable.
.PHONY: universe-native.node
universe-native.node: $(obj).target/universe-native.node $(builddir)/universe-native.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/universe-native.node

