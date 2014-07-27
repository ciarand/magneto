BIN=/usr/bin/env ansible-playbook
OPTS?=

site:
	PLAYBOOK=site.yml make install

debug:
	PLAYBOOK=site.yml OPTS=-vvvv make install
bootstrap:
	PLAYBOOK=bootstrap.yml make install

install:
	${BIN} ${PLAYBOOK} ${OPTS}

.PHONY: site bootstrap install
