set shell := ["nu", "-c"]

version := "0.1"
package-manager := `just --justfile recipes/select-package-manager.just`

setmeup: && mytools
    #!/usr/bin/env sh
    echo "Just Set Me Up (version {{version}})"
    if [ "{{package-manager}}" ]; then
        echo "Using {{package-manager}} package manager"
    else
        echo "No package manager found"
    fi

mytools:
    just --justfile recipes/install-curl.just package-manager={{package-manager}}
    just --justfile recipes/install-rust.just
    just --justfile recipes/install-nushell.just
    just --justfile recipes/make-source-directory.just
    just --justfile recipes/install-helix-editor.just
    just --justfile recipes/install-zellij.just
