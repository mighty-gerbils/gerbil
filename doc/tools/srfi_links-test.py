"""Offline parsing and regeneration tests using original synthetic fixtures."""

import contextlib
import io
import tempfile
import unittest
from pathlib import Path

from srfi_links import SOURCE_URL, flat_exports, main, procedure_links, render


HTML = b"""
<nav><a href="#wrong-place">proper-list?</a></nav>
<dl>
 <dt class="proc-def" id="iota"><code class="proc-def">iota</code></dt>
 <dd>Example and explanatory text are not procedure names.</dd>
 <dt class="proc-def1"><a name="proper-list-p"></a>
   <code class="proc-def">proper-list?&nbsp;</code></dt>
 <dt class="proc-defi"><a name="lset&lt;="></a>
   <code class="proc-def">lset&lt;=</code></dt>
 <dt class="proc-defn"><a name="filter!"></a>
   <code class="proc-def">filter!</code></dt>
</dl>
"""
EXPORTS = '(import :std/error)\n(export iota proper-list? lset<= filter! tree-copy)\n'


class ExportTests(unittest.TestCase):
    def test_comments_duplicates_and_nonexport_forms(self):
        source = '(import :example)\n(export fold ; ignored\n iota fold)\n(include "export.scm")'
        self.assertEqual(flat_exports(source), ["fold", "iota"])

    def test_unsupported_or_incomplete_exports_fail(self):
        for source in [
            "(export (import: :std/srfi/1))", "(export iota", "(export)",
            '(export "iota")', '(export "iota)', "(export iota) (export fold)",
            "#;(export iota) (export fold)", "#| ignored |# (export fold)",
        ]:
            with self.subTest(source=source), self.assertRaises(ValueError):
                flat_exports(source)


class DefinitionTests(unittest.TestCase):
    def test_real_definition_structure_and_encoded_symbols(self):
        self.assertEqual(procedure_links(HTML.decode()), {
            "iota": "iota", "proper-list?": "proper-list-p",
            "lset<=": "lset<=", "filter!": "filter!",
        })

    def test_optional_dt_end_tags(self):
        html = '<dl><dt class="proc-def" id="a"><code class="proc-def">a</code>'
        html += '<dd>body<dt class="proc-def" id="b"><code class="proc-def">b</code></dl>'
        self.assertEqual(procedure_links(html), {"a": "a", "b": "b"})

    def test_duplicate_names_shared_or_missing_anchors_fail(self):
        cases = [
            '<dt class="proc-def" id="iota"><code class="proc-def">iota</code></dt>',
            '<dt class="proc-def" id="iota"><code class="proc-def">another</code></dt>',
            '<dt class="proc-def"><code class="proc-def">missing</code></dt>',
            '<dt class="proc-def" id="one"><a name="two"></a><code class="proc-def">ambiguous</code></dt>',
        ]
        for extra in cases:
            with self.subTest(extra=extra), self.assertRaises(ValueError):
                procedure_links(HTML.decode() + extra)

    def test_prose_and_navigation_cannot_supply_definitions(self):
        with self.assertRaisesRegex(ValueError, "no SRFI-1"):
            procedure_links('<p id="iota"><code>iota</code></p><a href="#iota">iota</a>')

    def test_target_also_present_outside_definition_is_ambiguous(self):
        with self.assertRaisesRegex(ValueError, "more than once"):
            procedure_links('<div id="iota"></div>' + HTML.decode())


class RenderingTests(unittest.TestCase):
    def test_intersection_escaping_and_missing_exports(self):
        result = render(HTML, EXPORTS)
        self.assertIn("[SRFI-1](" + SOURCE_URL + "#proper-list-p)", result)
        self.assertIn("[SRFI-1](" + SOURCE_URL + "#lset%3C%3D)", result)
        self.assertIn("[SRFI-1](" + SOURCE_URL + "#filter%21)", result)
        self.assertIn("This index contains 4 procedures.", result)
        self.assertIn("`tree-copy`.", result)
        self.assertNotIn("#tree-copy", result)
        self.assertNotIn("Example and explanatory text", result)

    def test_requested_symbols_must_be_exported_and_have_definitions(self):
        for selected in [["not-exported"], ["tree-copy"]]:
            with self.subTest(selected=selected), self.assertRaises(ValueError):
                render(HTML, EXPORTS, selected)
        result = render(HTML, EXPORTS, ["iota", "iota"])
        self.assertIn("This index contains 1 procedure.", result)
        self.assertIn("explicitly selected subset", result)

    def test_generation_is_deterministic_and_tracks_source_snapshot(self):
        generated = render(HTML, EXPORTS)
        self.assertEqual(generated, render(HTML, EXPORTS))
        self.assertNotEqual(generated, render(HTML + b"\n", EXPORTS))

    def test_cli_check_and_failed_input_preserve_existing_output(self):
        with tempfile.TemporaryDirectory(dir=Path(__file__).resolve().parent) as directory:
            root = Path(directory)
            html, exports, output = root / "manual.html", root / "1.ss", root / "links.md"
            html.write_bytes(HTML)
            exports.write_text(EXPORTS, encoding="utf-8")
            argv = ["--html", str(html), "--exports", str(exports), "--output", str(output)]
            self.assertEqual(main(argv), 0)
            expected = output.read_text(encoding="utf-8")
            self.assertEqual(main(argv + ["--check"]), 0)
            with contextlib.redirect_stderr(io.StringIO()):
                with self.assertRaises(SystemExit) as error:
                    main(argv + ["--symbols", "tree-copy"])
                self.assertEqual(error.exception.code, 2)
            self.assertEqual(output.read_text(encoding="utf-8"), expected)
            output.write_text("outdated", encoding="utf-8")
            with contextlib.redirect_stderr(io.StringIO()):
                self.assertEqual(main(argv + ["--check"]), 1)
            self.assertEqual(output.read_text(encoding="utf-8"), "outdated")


if __name__ == "__main__":
    unittest.main()
