;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/text/yaml unit test

(import :std/test
        :std/text/yaml
        :std/sugar)
(export yaml-test)

(def yaml-test
  (test-suite "test :std/text/yaml"
    (test-case "test encoding of mapping keys"
      (check (yaml-load-string "foo: bar") => (list (hash ("foo" "bar"))))
      (parameterize ((yaml-key-format string->symbol))
        (check (yaml-load-string "foo: bar") => (list (hash (foo "bar")))))
      (parameterize ((yaml-key-format string->keyword))
        (check (yaml-load-string "foo: bar") => (list (hash (foo: "bar"))))))))
