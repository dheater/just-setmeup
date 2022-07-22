set shell := ["nu", "-c"]

@make-source-directory:
    mkdir ([$env.HOME '/src'] | str collect)
