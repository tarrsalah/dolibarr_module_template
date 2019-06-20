post-install:
	@touch .resources/documents/install.lock
	@chmod o-w .resources/conf.php

pre-install:
	@if [ ! -d  dolibarr ]; then \
		git clone git@github.com:Dolibarr/dolibarr.git --depth=1; \
	fi

	@mkdir -p .resources
	@cp dolibarr/htdocs/conf/conf.php.example .resources/conf.php
	@chmod o+w .resources/conf.php
	@mkdir -p .resources/documents
	@chmod -R o+w .resources/documents
