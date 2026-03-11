include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-myfm
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=ajiputra
PKG_LICENSE:=MIT

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-myfm
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=LuCI My File Manager by ajiputra
  DEPENDS:=+luci-base +uhttpd +php8 +php8-cgi +php8-session +php8-fileinfo +php8-mbstring
endef

define Package/luci-app-myfm/description
 LuCI app for My File Manager on OpenWrt using apk package system. by ajiputra
endef

define Build/Compile
endef

define Package/luci-app-myfm/conffiles
/etc/config/myfm
endef

define Package/luci-app-myfm/install
	$(CP) ./root/* $(1)/
endef

$(eval $(call BuildPackage,luci-app-myfm))
