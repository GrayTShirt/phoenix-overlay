# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit autotools-utils

AUTOTOOLS_AUTORECONF=yes
AUTOTOOLS_IN_SOURCE_BUILD=yes

DESCRIPTION="Go-style concurrency for C"
HOMEPAGE="http://libmill.org/"
SRC_URI="https://github.com/sustrik/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="*"

LICENSE="GPL3"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
