BIN=/usr/bin/env ansible-playbook

site:
	PLAYBOOK=site.yml make install

bootstrap:
	PLAYBOOK=bootstrap.yml make install

install:
	${BIN} ${PLAYBOOK}

.PHONY: site bootstrap install
