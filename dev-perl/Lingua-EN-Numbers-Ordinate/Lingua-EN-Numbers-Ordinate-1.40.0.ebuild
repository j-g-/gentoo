# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DIST_AUTHOR=NEILB
DIST_VERSION=1.04
inherit perl-module

DESCRIPTION="Convert cardinal numbers(3) to ordinal numbers(3rd)"

SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc sparc x86"
IUSE="test"

RDEPEND="
	virtual/perl-Exporter
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? ( >=virtual/perl-Test-Simple-0.880.0 )
"
