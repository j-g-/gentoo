# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Virtual for ${PN#perl-}"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~alpha ~amd64 arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~x86-freebsd ~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE=""

RDEPEND="
	|| ( =dev-lang/perl-5.24* =dev-lang/perl-5.22* ~perl-core/${PN#perl-}-${PV} )
	!<perl-core/${PN#perl-}-${PV}
	!>perl-core/${PN#perl-}-${PV}-r999
"
