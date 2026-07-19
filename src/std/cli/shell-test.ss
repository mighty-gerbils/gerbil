(export shell-test)

(import
  :std/error
  :std/format
  :std/string/misc
  :std/test
  :std/text/pregexp
  :std/cli/shell)

(def shell-test
  (test-suite "test :std/misc/shell"
    (test-case "easy-shell-character?"
      (string-for-each (lambda (c) (check (easy-shell-character? c) => #t))
                       "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789%+,-./:=@_")
      (string-for-each (lambda (c) (check (easy-shell-character? c) => #f))
                       "!`~#$^&*()[{]}\\|;'\"<>? \r\n\t\v"))
    (test-case "needs-shell-escape?, escape-shell-token"
      (defrules checks+1 ()
        ((_ (s e)) (begin
                     (check (needs-shell-escape? s) => #t)
                     (check (escape-shell-token s) => (string-append "\"" e "\""))))
        ((_ s) (begin
                 (check (needs-shell-escape? s) => #t)
                 (check (escape-shell-token s) => (string-append "\"" s "\"")))))
      (defrule (checks+ x ...)
        (begin (checks+1 x) ...))
      (checks+ "foo?" "~user" ("$1" "\\$1") "*.*" "!1" ("ab\\cd" "ab\\\\cd")
               "{}" "a;b" "&amp;" "|" "a b  c")
      (defrule (checks- s ...) (begin (check (needs-shell-escape? s) => #f) ...))
      (checks- "foo" "%-_=+:,./" "1" "..." "abcd" "x=y:z,t.z/u+v_w"))
    (test-case "->envvar"
      (defrule (checks (s e) ...)
        (begin (check (->envvar s) => e) ...))
      (checks ("foo" "FOO")
              ("bar baz" "BAR_BAZ"))
      (check (->envvar '("bar " "+!@#$") #(#\@ #\! "#") "baz") => "BAR_BAZ"))))
