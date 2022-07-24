# REV03: Sun 24 Jul 2022 23:00
# REV02: Sat 28 May 2022 16:30
# REV01: Mon 25 Oct 2021 21:00
# START: Wed 07 Jul 2021 21:00

SITEURL="rms46.vlsm.org"

ALL: .siteHack
	@echo "xyzzy... plugh"

.siteHack: _site/sitemap.xml
	@bash  .siteHack $(SITEURL)
	@touch .siteHack


