# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit autotools-utils 

AUTOTOOLS_AUTORECONF=yes
AUTOTOOLS_IN_SOURCE_BUILD=yes

DESCRIPTION="The missing bits of C"
HOMEPAGE="https://github.com/jhunt/libvigor"
SRC_URI="https://github.com/jhunt/${PN}/releases/download/v${PV}/${P}.tar.gz"
KEYWORDS="*"

LICENSE="GPL3"
SLOT="0"
IUSE=""

DEPEND="
	>=dev-libs/ctap-1.1.5
	dev-libs/libsodium
	net-libs/zeromq
"
RDEPEND="${DEPEND}"

src_compile() {
	emake -j1 || die
}
