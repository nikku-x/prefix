# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/xfce-extra/xfce4-fsguard/xfce4-fsguard-0.4.2.ebuild,v 1.1 2008/11/22 22:30:27 angelos Exp $

EAPI="prefix"

inherit xfce44

xfce44

DESCRIPTION="Filesystem guard panel plugin"
KEYWORDS="~x86-freebsd ~amd64-linux ~x86-linux"
IUSE=""
DOCS="AUTHORS ChangeLog NEWS README"

xfce44_goodies_panel_plugin
