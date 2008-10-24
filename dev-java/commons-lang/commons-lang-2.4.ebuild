# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-java/commons-lang/commons-lang-2.4.ebuild,v 1.2 2008/10/23 18:42:28 maekke Exp $

EAPI="prefix 1"
JAVA_PKG_IUSE="doc source test"

inherit java-pkg-2 java-ant-2

DESCRIPTION="Commons components to manipulate core java classes"
HOMEPAGE="http://commons.apache.org/lang/"
SRC_URI="mirror://apache/commons/lang/source/${P}-src.tar.gz"
IUSE=""

DEPEND=">=virtual/jdk-1.4
	test? ( dev-java/ant-junit:0 )"
RDEPEND=">=virtual/jre-1.4"

LICENSE="Apache-2.0"
SLOT="2.1"
KEYWORDS="~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"

S="${WORKDIR}/${P}-src"

JAVA_ANT_ENCODING="ISO-8859-1"

src_install() {
	java-pkg_newjar dist/${P}.jar ${PN}.jar

	dodoc RELEASE-NOTES.txt NOTICE.txt || die
	dohtml *.html || die
	use doc && java-pkg_dojavadoc dist/docs/api
	use source && java-pkg_dosrc src/java/*
}
