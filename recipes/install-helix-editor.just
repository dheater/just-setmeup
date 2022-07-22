set shell := ["nu", "-c"]

SRCDIR := '${HOME}/src'
CONFIGDIR := '${HOME}/.config/helix'

install-helix-editor: 
    #!/usr/bin/env nu
    if ('{{SRCDIR}}' | path exists ) {
        git clone https://github.com/helix-editor/helix '{{SRCDIR}}'
        cd '{{SRCDIR}}'
        cargo install --path helix-term
        mkdir '{{CONFIGDIR}}'
        ln -s '{{CONFIGDIR}}/runtime' '{{SRCDIR}}/runtime'
    }
