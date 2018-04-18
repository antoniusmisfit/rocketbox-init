all:
	@echo 'Only "install" option is available'

install:
	@echo "Installing rocketbox-init to $(DESTDIR)..."
	@mkdir -pv $(DESTDIR)/etc
	@mkdir -pv $(DESTDIR)$(PREFIX)/bin
	@cp -av etc/* $(DESTDIR)/etc
	@cp -av rocketbox-init $(DESTDIR)/etc
	@cp -av rocketbox-shutdown $(DESTDIR)/etc
	@cp -av rocketbox-service $(DESTDIR)/etc
	ln -s etc/rocketbox-service $(DESTDIR)$(PREFIX)/bin/rocketbox-service
	ln -s etc/rocketbox-init $(DESTDIR)/init
	@echo "installation if rocketbox-init is completed!"

