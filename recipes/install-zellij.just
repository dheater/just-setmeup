
install-zellij:
    #!/usr/bin/env nu
    if (zellij --version | $env.LAST_EXIT_CODE != 0) {
        cargo install zellij
    }