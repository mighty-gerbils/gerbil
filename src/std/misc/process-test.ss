(export process-test)

(import
  :gerbil/gambit
  :std/error
  :std/format
  :std/misc/ports
  :std/misc/process
  :std/os/temporaries
  :std/source
  :std/sugar
  :std/test
  "./ports-test.ss")

(def process-test
  (test-suite "test :std/misc/process"
    (test-case "run-process, run-process/batch, invoke"
      (def dir (this-source-directory))
      (def (rp/i c . a) (apply invoke (car c) (cdr c) a))
      (defrule (checks/redir-coproc run ...)
        (begin
          (begin
            (check (run ["echo" "ok" "1"]
                        stdin-redirection: #f stdout-redirection: #t stderr-redirection: #t)
                   => "ok 1\n")
            (check (run ["echo" "ok" "1"]
                        stdin-redirection: #t stdout-redirection: #t stderr-redirection: #t)
                   => "ok 1\n")
            (check (run ["sh" "-c" "echo foo   bar; echo baz >&2"]
                        stdout-redirection: #t stderr-redirection: #f)
                   => "foo bar\n")
            (check (run ["sh" "-c" "echo foo   bar; echo baz >&2"]
                        stdout-redirection: #t stderr-redirection: #t)
                   => "foo bar\nbaz\n")
            (check (run ["sh" "-c" "echo foo >&2 ; echo bar; echo baz >&2"]
                        coprocess: read-all-as-lines
                        stdout-redirection: #t stderr-redirection: #t)
                   => ["foo" "bar" "baz"])
            (check (run ["sh" "-c" "exit 0"]
                        coprocess: process-status) => 0)
            (check (run ["sh" "-c" "exit 42"]
                        coprocess: process-status
                        check-status: true) => (* 42 256))
            (check (run ["true"] coprocess: process-status) => 0)
            (check (run ["false"] coprocess: process-status check-status: true) => 256)
            (check (run ["sh" "-c" "cat < ports-test.data ; echo bar  baz >&2 ; exit 42"]
                        stdout-redirection: #t stderr-redirection: #f
                        directory: dir
                        check-status: (lambda (s _) (= s (* 42 256))))
                   => test-data))...))
      (checks/redir-coproc run-process rp/i)
      (defrule (checks/pass-fail run ...)
        (begin
          (begin
            (check (begin (run ["true"]) 69) => 69)
            (check-exception (run ["sh" "-c" "exit 42"]) process-error?)
            (check-exception (run ["false"]) process-error?))...))
      (checks/pass-fail run-process run-process/batch rp/i))
    (test-case "filter-with-process"
      (check (filter-with-process ["sh" "-c" "echo BEGIN ; cat ; echo END"]
                             (lambda (proc) (display "ab\ncd\nef\n" proc))
                             read-all-as-lines) => ["BEGIN" "ab" "cd" "ef" "END"]))))
