# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR="MLEHMANN"
inherit perl-module

DESCRIPTION="pass a file descriptor over a socket"

#LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="virtual/perl-ExtUtils-MakeMaker"
DEPEND="${RDEPEND}"

SRC_TEST="do"
