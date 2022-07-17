select-package-manager:
    #!/usr/bin/env sh
    set +e
    yum --version > /dev/null 2>&1
    if [ $? -eq 0 ]; then echo yum && return 0; fi
    apt-get --version > /dev/null 2>&1
    if [ $? -eq 0 ]; then echo "apt-get" && return 0; fi
