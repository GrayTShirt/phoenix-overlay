# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR="SMUELLER"

inherit perl-module

DESCRIPTION="Fast, compact, powerful binary deserialization"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="amd64 amd64-fbsd x86 x86-fbsd x86-freebsd x64-freebsd amd64-linux x86-linux"
IUSE="test"

DEPEND="
	test? (
		dev-perl/Test-LongString
		dev-perl/Test-Warn
	)
"
