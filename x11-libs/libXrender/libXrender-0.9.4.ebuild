# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-libs/libXrender/libXrender-0.9.4.ebuild,v 1.4 2007/12/13 17:43:33 armin76 Exp $

EAPI="prefix"

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org Xrender library"

KEYWORDS="~amd64 ~ia64 ~ppc-macos ~sparc-solaris ~x86 ~x86-macos ~x86-solaris"

RDEPEND="x11-libs/libX11
		>=x11-proto/renderproto-0.9.3
		x11-proto/xproto"
DEPEND="${RDEPEND}"
