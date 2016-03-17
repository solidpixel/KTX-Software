# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := toktx
DEFS_Debug := \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug :=

INCS_Debug := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include

DEFS_Release := \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release :=

INCS_Release := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include

OBJS := \
	$(obj).target/$(TARGET)/tools/toktx/image.o \
	$(obj).target/$(TARGET)/tools/toktx/toktx.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/libktx.gl.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug :=

LDFLAGS_Release :=

LIBS :=

$(builddir)/toktx: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/toktx: LIBS := $(LIBS)
$(builddir)/toktx: LD_INPUTS := $(OBJS) $(obj).target/libktx.gl.a
$(builddir)/toktx: TOOLSET := $(TOOLSET)
$(builddir)/toktx: $(OBJS) $(obj).target/libktx.gl.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/toktx
# Add target alias
.PHONY: toktx
toktx: $(builddir)/toktx

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/toktx

