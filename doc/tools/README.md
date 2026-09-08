# External procedure links

`srfi_links.py` generates the [SRFI-1 procedure index](../reference/srfi/srfi-1.md)
from the official SRFI-1 HTML and `src/std/srfi/1.ss`. It uses Python 3.9 or newer
and has no third-party dependencies. It does not run during the site build.

The generator reads actual definition anchors (`id` and older `a name` forms),
then intersects their procedure names with Gerbil's flat export form. For example,
`proper-list?` links to `#proper-list-p`; it does not construct an anchor from the
procedure name. Names without individual definitions are listed as omissions.
Duplicate or ambiguous definitions cause an error before the output is written.

From the repository root, save the official document once and generate offline:

```sh
mkdir -p .cache
curl --fail --location --output .cache/srfi-1.html \
  https://srfi.schemers.org/srfi-1/srfi-1.html
python3 doc/tools/srfi_links.py --html .cache/srfi-1.html \
  --output doc/reference/srfi/srfi-1.md
python3 doc/tools/srfi_links.py --html .cache/srfi-1.html \
  --output doc/reference/srfi/srfi-1.md --check
python3 -B doc/tools/srfi_links-test.py
```

The HTML and export-source SHA-256 digests are recorded in the generated page.
Keep the downloaded HTML locally when reproducing a specific output; the official
page can change. The downloaded manual is not included in the repository.
The generator only extracts names and links, and credits the source author.

For a selected subset, add `--symbols iota 'proper-list?' fold`; each requested
name must be both exported and individually documented. The default generates all
such names. `--check` checks an existing file without changing it.

This initial adapter supports SRFI-1's `dt.proc-def*` markup and one flat Gerbil
export form. Nested exports, reexports, block comments and datum comments are
rejected rather than evaluated. Other SRFIs, Gambit and R5RS/R7RS manuals need
their own tested adapters. A matching anchor confirms a documentation destination,
not implementation equivalence or completeness of the standard's coverage.
