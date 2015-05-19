# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit base autotools-utils git-2 eutils user

AUTOTOOLS_AUTORECONF=yes
AUTOTOOLS_IN_SOURCE_BUILD=1

DESCRIPTION="The Bolo Monitoring System"
HOMEPAGE="https://github.com/filefrog/bolo"

EGIT_REPO_URI="https://github.com/filefrog/bolo"
LICENSE="GPL3"
SLOT="0"
IUSE=""

DEPEND="
	>=dev-libs/ctap-1.1.5
	>=dev-libs/libvigor-1.1.0
	net-analyzer/rrdtool
	dev-libs/libpcre
	dev-db/postgresql
"
RDEPEND="${DEPEND}"

pkg_setup() {
	enewgroup bolo
	enewuser  bolo -1 -1 /var/lib/bolo bolo
}

src_install() {
	emake DESTDIR="${D}" install

	einfo "Install init scripts"
	insinto  /etc
	doins    "${FILESDIR}/bolo.conf"
	newinitd "${FILESDIR}/bolo.initd" bolo
	newinitd "${FILESDIR}/bolo2rrd.initd" bolo2rrd
	newconfd "${FILESDIR}/bolo2rrd.confd" bolo2rrd
}
