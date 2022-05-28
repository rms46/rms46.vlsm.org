# REV02: Sat 28 May 2022 16:30:00 WIB
# REV01: Mon 25 Oct 2021 21:00:00 WIB
# START: Wed 07 Jul 2021 21:00:00 WIB

all: .sitemap
	@echo "xyzzy... plugh"

.sitemap: _site/sitemap.xml
	@echo "Fixing sitemap.xml"
	@sed -i -e 's/http:\/\/localhost:5002/https:\/\/rms46.vlsm.org/g' _site/sitemap.xml
	@touch .sitemap

