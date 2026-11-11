# Check if binary exits
[group("development")]
_check_binary BIN:
    #!/usr/bin/env bash
    code=$(type {{ BIN }} &> /dev/null; echo $?)

    if [ "$code" != "0" ]; then
        echo "!!! Binary {{ BIN }} does not exits !!!";
        exit 0;
    fi

# Run pre-commit
[group("development")]
_pre-commit:
    @just _check_binary uvx
    @uvx --from pre-commit pre-commit run --all-files

# Lint yaml files
[group("development")]
_lint_yaml FILE:
    @just _check_binary yq
    @yq \
        --prettyPrint \
        --inplace \
        'sort_keys(..)' \
        {{ FILE }}

# Lint project
[group("development")]
lint:
    #!/usr/bin/env bash

    just _pre-commit

    if [ -d "$SVC_DIR" ]; then
        for f in $(find "$SVC_DIR" -name "*.yaml"); do
            just _lint_yaml "$f"
        done
    fi
    echo "==> Linted all yaml files"
