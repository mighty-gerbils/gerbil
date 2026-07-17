;;; -*- Gerbil -*-
;;; © vyzo
;;; string template tests
(import :std/test
        ./template)
(export template-test)

(def template-test
  (test-suite "string templates"
    (test-case "variable substitutions"
      (def template
        "The quick ${color} fox jumped over the lazy ${adversary}")
      (check (write-template #f template color: "brown" adversary: "dog")
             => "The quick brown fox jumped over the lazy dog")
      (check (write-template #f template color: "golden" adversary: "aligator")
             => "The quick golden fox jumped over the lazy aligator"))
    (test-case "character escape"
      (def template
        "the quick \\$\\$\\$\\\\ $\\{\\}")
      (check (write-template #f template)
             => "the quick $$$\\ ${}"))))
