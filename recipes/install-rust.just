@install-rust:
    if [ ! -e $HOME/.cargo/env ]; then \
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh; \
    fi
