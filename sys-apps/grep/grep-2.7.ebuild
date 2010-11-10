# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-apps/grep/grep-2.7.ebuild,v 1.1 2010/09/20 17:03:56 vapier Exp $

EAPI="3"

DESCRIPTION="GNU regular expression matcher"
HOMEPAGE="http://www.gnu.org/software/grep/"
SRC_URI="mirror://gnu/${PN}/${P}.tar.xz
	mirror://gentoo/${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~ppc-aix ~x64-freebsd ~x86-freebsd ~hppa-hpux ~ia64-hpux ~x86-interix ~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~m68k-mint ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE="nls pcre"

RDEPEND="nls? ( virtual/libintl )
	pcre? ( >=dev-libs/libpcre-7.8-r1 )"
DEPEND="${RDEPEND}
	nls? ( sys-devel/gettext )"

src_configure() {
	econf \
		--bindir="${EPREFIX}"/bin \
		$(use_enable nls) \
		$(use_enable pcre perl-regexp) \
		$(use !elibc_glibc || echo --without-included-regex)
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog NEWS README THANKS TODO
}
