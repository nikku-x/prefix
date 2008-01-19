# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-text/adiff/adiff-1.2.ebuild,v 1.2 2005/10/08 10:33:28 grobian Exp $

EAPI="prefix"

DESCRIPTION="wordwise diff"
HOMEPAGE="http://gentoo.org/~agriffis/adiff/"
SRC_URI="${HOMEPAGE}/${P}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos"
IUSE=""

DEPEND="dev-lang/perl"
RDEPEND="${DEPEND}
	sys-apps/diffutils"

S=${WORKDIR}

src_unpack() {
	cd "${S}"
	cp "${DISTDIR}"/${P} .
	sed -i -e '1c\#!'"${EPREFIX}"'/usr/bin/perl -w' ${P}
}

src_compile() {
	pod2man --release=${PV} --center="${HOMEPAGE}" \
		--date="2005-08-15" ${DISTDIR}/${P} ${PN}.1 || die
}

src_install() {
	newbin ${S}/${P} ${PN}
	doman ${PN}.1
}
