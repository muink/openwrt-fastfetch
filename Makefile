# SPDX-License-Identifier: MIT
#
# Copyright (C) 2025 Anya Lin <hukk1996@gmail.com>

include $(TOPDIR)/rules.mk

PKG_NAME:=fastfetch
PKG_VERSION:=2.34.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/fastfetch-cli/fastfetch/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed

PKG_MAINTAINER:=Anya Lin <hukk1996@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_INSTALL:=1
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/fastfetch
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Fetch and display system information
  URL:=https://github.com/fastfetch-cli/fastfetch
  DEPENDS:=
endef

define Package/fastfetch/description
  Fastfetch is a neofetch-like tool for fetching
  system information and displaying it prettily.
endef

$(eval $(call BuildPackage,fastfetch))
