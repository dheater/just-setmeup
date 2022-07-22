install-nushell: 
    #!/usr/bin/env sh
    if [ ! -x "$(command -v nu)" ]; then
    	cargo install nu --features=extra
    fi
