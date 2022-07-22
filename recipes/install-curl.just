package-manager := ""

install-curl:
    #!/usr/bin/env sh
    if [ ! -x "$(command -v curl)" ]; then
    	sudo {{package-manager}} install curl
    fi
