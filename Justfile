version := "0.1"
package-manager := `just --justfile .select-package-manager.just`

setmeup:
    #!/usr/bin/env sh
    echo "Just Set Me Up (version {{version}})"
    if [ "{{package-manager}}" ]; then
        echo "Using {{package-manager}} package manager"
    else
        echo "No package manager found"
    fi
    
