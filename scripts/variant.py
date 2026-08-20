#!/usr/bin/env python3
"""Filter resume.md for one output variant.

Blocks wrapped in <!--only:NAME--> ... <!--/only:NAME--> survive only when
NAME matches the requested variant. Everything else passes through.

    python3 scripts/variant.py public < resume.md
    python3 scripts/variant.py eu     < resume.md
"""
import re, sys

variant = sys.argv[1]
open_re  = re.compile(r"^\s*<!--only:([a-z]+)-->\s*$")
close_re = re.compile(r"^\s*<!--/only:([a-z]+)-->\s*$")

skipping = False
out = []
for line in sys.stdin.read().split("\n"):
    m = open_re.match(line)
    if m:
        skipping = m.group(1) != variant
        continue
    if close_re.match(line):
        skipping = False
        continue
    if not skipping:
        out.append(line)

sys.stdout.write("\n".join(out))
