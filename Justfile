default:
    @just --list

build:
    make _build/runscript _build/test-runscript

clean:
    make clean

install:
    make install

# Initialize decision records
init-decisions:
    python3 scripts/decisions.py --init

# Add a new decision record
add-decision TOPIC:
    python3 scripts/decisions.py --add "{{TOPIC}}"