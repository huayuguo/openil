################################################################################
#
# sja1105-tool
#
################################################################################

SJA1105_TOOL_VERSION = OpenIL-sja1105-tool-201705
SJA1105_TOOL_SITE = https://github.com/openil/sja1105-tool.git
SJA1105_TOOL_SITE_METHOD = git
SJA1105_TOOL_INSTALL_STAGING = YES
SJA1105_TOOL_LICENSE = BSD-3c
SJA1105_TOOL_LICENSE_FILES = COPYING
SJA1105_TOOL_DEPENDENCIES = libxml2

define SJA1105_TOOL_BUILD_CMDS
	echo '$(SJA1105_TOOL_VERSION)' > $(@D)/VERSION; \
	$(TARGET_CONFIGURE_ARGS) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) $(TARGET_MAKE_OPTS);
endef

define SJA1105_TOOL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/sja1105-tool $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
