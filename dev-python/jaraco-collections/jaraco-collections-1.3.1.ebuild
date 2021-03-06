# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

MY_PN="${PN/-/.}"
DESCRIPTION="Models and classes to supplement the stdlib collections module"
HOMEPAGE="https://github.com/jaraco/jaraco.collections"
SRC_URI="mirror://pypi/${PN:0:1}/${MY_PN}/${MY_PN}-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PDEPEND="dev-python/jaraco-text[${PYTHON_USEDEP}]"
RDEPEND="dev-python/jaraco-classes[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-1.9[${PYTHON_USEDEP}]
	test? (
		${RDEPEND}
		>=dev-python/pytest-2.8[${PYTHON_USEDEP}]
		dev-python/pytest-runner[${PYTHON_USEDEP}]
	)
"

S="${WORKDIR}/${MY_PN}-${PV}"

python_prepare_all() {
	if use test; then
		if has_version "${CATEGORY}/${PN}"; then
			die "Ensure $PN is not already installed or the test suite will fail"
		elif ! has_version "dev-python/jaraco-text"; then
			die "Ensure dev-python/jaraco-text is installed or the test suite will fail"
		fi
	fi
	distutils-r1_python_prepare_all
}

python_test() {
	PYTHONPATH=. py.test || die "tests failed with ${EPYTHON}"
}
