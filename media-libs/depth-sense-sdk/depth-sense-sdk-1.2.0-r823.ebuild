# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-arch/makeself/makeself-2.1.5-r1.ebuild,v 1.7 2012/08/26 18:58:21 armin76 Exp $

inherit unpacker
inherit rpm

DESCRIPTION="Intel/Creative Gesture Camera Driver for Linux"
HOMEPAGE="http://www.softkinetic.com/"

LICENSE="proprietary"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

S=${WORKDIR}

src_unpack() {
    #unpack_makeself "${FILESDIR}/DepthSenseSDK-1.2.0-823-amd64-deb.run"
    #chmod +x "${FILESDIR}/DepthSenseSDK-1.2.0-823-amd64-deb.run"
    #bash "${FILESDIR}/DepthSenseSDK-1.2.0-823-amd64-deb.run" --target here
    #die "debug"
    rpm_src_unpack "${FILESDIR}/DepthSenseSDK-1.2.0-823.amd64.rpm"
    die "debug"
}

#src_install() {
#	dobin makeself-header.sh makeself.sh "${FILESDIR}"/makeself-unpack || die
#	dosym makeself.sh /usr/bin/makeself#
#	doman makeself.1#
#	dodoc README TODO makeself.lsm
#}
