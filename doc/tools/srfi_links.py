#!/usr/bin/env python3
"""Generate SRFI-1 procedure links from a saved manual and Gerbil exports.

Uses only the Python 3.9+ standard library. Does not fetch documents or evaluate
Scheme. The HTML adapter deliberately supports SRFI-1's definition markup only.
"""

import argparse
import hashlib
import re
import sys
from collections import Counter
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import quote


SOURCE_URL = "https://srfi.schemers.org/srfi-1/srfi-1.html"
ROOT = Path(__file__).resolve().parents[2]
DEFINITION_CLASSES = {"proc-def", "proc-def1", "proc-defi", "proc-defn"}
TOKEN = re.compile(r'#;|#\||\|#|;[^\n]*|"(?:\\.|[^"\\])*"|[()]|[^\s();"]+')
SYMBOL = re.compile(r"[^\s()\[\]{}\"'`,;|#]+\Z")


def flat_exports(source):
    """Read a top-level, flat export form; reject unsupported export syntax."""
    tokens = []
    end = 0
    for match in TOKEN.finditer(source):
        if source[end:match.start()].strip():
            raise ValueError("unsupported or unterminated token in module source")
        end = match.end()
        if not match.group().startswith(";"):
            tokens.append(match.group())
    if source[end:].strip():
        raise ValueError("unsupported or unterminated token in module source")
    depth = 0
    result = None
    index = 0
    while index < len(tokens):
        token = tokens[index]
        if token == "(" and depth == 0 and tokens[index + 1:index + 2] == ["export"]:
            if result is not None:
                raise ValueError("expected one flat export form, found multiple")
            result = []
            index += 2
            while index < len(tokens) and tokens[index] != ")":
                symbol = tokens[index]
                if not SYMBOL.fullmatch(symbol):
                    raise ValueError("only flat, unquoted export symbols are supported")
                result.append(symbol)
                index += 1
            if index == len(tokens):
                raise ValueError("unterminated export form")
        elif token == "(":
            depth += 1
        elif token == ")":
            depth -= 1
            if depth < 0:
                raise ValueError("unbalanced module source")
        elif token.startswith(("#|", "#;")) or "|#" in token:
            raise ValueError("block and datum comments are not supported")
        index += 1
    if result is None or not result:
        raise ValueError("no nonempty flat export form found")
    if depth:
        raise ValueError("unbalanced module source")
    return sorted(set(result))


class Definitions(HTMLParser):
    """Read named procedure definitions, ignoring navigation links and prose."""

    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.links = {}
        self.fragments = {}
        self.targets = Counter()
        self.row = None
        self.in_code = False

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        classes = set(attrs.get("class", "").split())
        anchors = {attrs.get("id")}
        if tag == "a":
            anchors.add(attrs.get("name"))
        anchors.discard(None)
        anchors.discard("")
        self.targets.update(anchors)
        # HTML allows omitted </dt>; finish before the next definition/body.
        if tag in {"dt", "dd"}:
            self.finish_row()
        if tag == "dt" and classes & DEFINITION_CLASSES:
            self.row = {"anchors": [], "names": []}
        if self.row is None:
            return
        self.row["anchors"].extend(anchors)
        if tag == "code" and "proc-def" in classes:
            self.in_code = True
            self.row["names"].append("")

    def handle_endtag(self, tag):
        if tag == "code":
            self.in_code = False
        if tag == "dt":
            self.finish_row()

    def handle_data(self, data):
        if self.row is not None and self.in_code:
            self.row["names"][-1] += data

    def finish_row(self):
        row, self.row = self.row, None
        self.in_code = False
        if row is None:
            return
        names = [name.strip() for name in row["names"]]
        anchors = set(row["anchors"])
        # The manual uses a literal colon as an ellipsis between car/cdr forms.
        if names == [":"] and not anchors:
            return
        if len(names) != 1 or not SYMBOL.fullmatch(names[0]):
            raise ValueError("expected one procedure name per definition")
        if len(anchors) != 1:
            raise ValueError("missing or ambiguous definition anchor: " + names[0])
        name, fragment = names[0], anchors.pop()
        if name in self.links:
            raise ValueError("duplicate procedure definition: " + name)
        if fragment in self.fragments:
            raise ValueError("shared definition anchor: " + fragment)
        self.links[name] = fragment
        self.fragments[fragment] = name

    def close(self):
        super().close()
        self.finish_row()


def procedure_links(html):
    parser = Definitions()
    parser.feed(html)
    parser.close()
    if not parser.links:
        raise ValueError("no SRFI-1 procedure definitions found")
    for fragment in parser.links.values():
        if parser.targets[fragment] != 1:
            raise ValueError("definition anchor occurs more than once: " + fragment)
    return parser.links


def render(html_bytes, export_source, symbols=None):
    exports = flat_exports(export_source)
    definitions = procedure_links(html_bytes.decode("utf-8"))
    if symbols is None:
        selected = [name for name in exports if name in definitions]
    else:
        selected = sorted(set(symbols))
        for name in selected:
            if name not in exports:
                raise ValueError("procedure is not exported by this module: " + name)
            if name not in definitions:
                raise ValueError("no individual definition anchor found: " + name)
    if not selected:
        raise ValueError("no exported procedures have verified definition anchors")
    missing = [name for name in exports if name not in definitions]
    lines = [
        "# SRFI-1 procedure links",
        "",
        "Import `:std/srfi/1` to use these procedures.",
        "",
        "These links point to procedure definitions in the original "
        "[SRFI-1 List Library](" + SOURCE_URL + ") by Olin Shivers. "
        "They are an index of the specification, not a copy of its text or "
        "a claim that Gerbil has no implementation differences.",
        "",
        "<!-- Generated by doc/tools/srfi_links.py; do not edit the table. -->",
        "<!-- Source HTML SHA-256: " + hashlib.sha256(html_bytes).hexdigest() + " -->",
        "<!-- Exports SHA-256: " + hashlib.sha256(export_source.encode()).hexdigest() + " -->",
        "",
        "| Procedure | Original definition |",
        "| --- | --- |",
    ]
    for name in selected:
        url = SOURCE_URL + "#" + quote(definitions[name], safe="")
        lines.append("| `" + name + "` | [SRFI-1](" + url + ") |")
    noun = " procedure." if len(selected) == 1 else " procedures."
    lines += ["", "This index contains " + str(len(selected)) + noun, ""]
    if symbols is not None:
        lines += ["This is an explicitly selected subset of the module's exports.", ""]
    if missing:
        lines += [
            "Exported names without a separate procedure definition in this "
            "manual snapshot are omitted; no anchors are guessed:",
            "",
            ", ".join("`" + name + "`" for name in missing) + ".",
            "",
        ]
    return "\n".join(lines)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--html", type=Path, required=True, help="saved official SRFI-1 HTML")
    parser.add_argument("--exports", type=Path, default=ROOT / "src/std/srfi/1.ss",
                        help="source file for :std/srfi/1 with one flat export form")
    parser.add_argument("--symbols", nargs="+", help="optional exact exported procedure names")
    parser.add_argument("--output", type=Path, help="write Markdown here; otherwise use stdout")
    parser.add_argument("--check", action="store_true", help="compare output without writing")
    args = parser.parse_args(argv)
    if args.check and args.output is None:
        parser.error("--check requires --output")
    try:
        output = render(args.html.read_bytes(), args.exports.read_text(encoding="utf-8"), args.symbols)
        if args.check:
            if args.output.read_text(encoding="utf-8") != output:
                print("generated document is out of date", file=sys.stderr)
                return 1
        elif args.output is not None:
            args.output.write_text(output, encoding="utf-8")
        else:
            sys.stdout.write(output)
    except (OSError, ValueError) as error:
        parser.exit(2, str(error) + "\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
