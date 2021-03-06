# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=IRONCAMEL
inherit perl-module

DESCRIPTION="DBIx::Class interface for Dancer applications"

#LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE="mysql postgres"

RDEPEND="
	mysql? ( dev-perl/DBD-mysql )
	postgres? ( dev-perl/DBD-Pg )
	virtual/perl-Module-Load
	virtual/perl-ExtUtils-MakeMaker
	dev-perl/Dancer
	dev-perl/DBIx-Class
	dev-perl/DBIx-Class-Schema-Loader
	dev-perl/SQL-Translator
	dev-perl/DBD-SQLite
"
DEPEND="${RDEPEND}"

SRC_TEST="do"
