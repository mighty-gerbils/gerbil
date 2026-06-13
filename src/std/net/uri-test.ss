(import :std/test
        :std/error
        ./uri)

(export uri-test)

(defrule (check-%-encode-decode uri ...)
  (begin
    (check (uri-decode (uri-encode uri)) => uri) ...))

(def uri-test
  (test-suite "URI strings encoding and decoding tests"
    (test-case "Percent encode-decode"
      (check-%-encode-decode "café" "ሴ" "100% pur & dur"))

    (test-case "Reserved characters and case"
      (check (uri-encode "100% pur & dur") => "100%25%20pur%20%26%20dur")
      (check (uri-decode "Caf%c3%a9") => "Café")
      (check (uri-decode "caf%C3%a9") => "café")
      (check (uri-decode "caf%c3%A9") => "café"))

    (test-case "Form URL Encoding"
      (check (form-url-encode '(("equation" . "1 + 1 = 2") ("query" . "hello world")))
             => "equation=1+%2B+1+%3D+2&query=hello+world")
      (check (form-url-encode '(("equation" . "1 + 1 = 2") ("query" . "hello world")) #f)
             => "equation=1%20%2B%201%20%3D%202&query=hello%20world")
      (check (form-url-decode "key1=val1&key2=&key3")
             => '(("key1" . "val1") ("key2" . "") ("key3" . #f)))
      (check (form-url-decode "search+engine=gerbil+scheme&v=%2B1")
             => '(("search engine" . "gerbil scheme") ("v" . "+1"))))

    (test-case "Malformed URIs"
      (check-exception (uri-decode "bad%2") ContractViolation?)
      (check-exception (uri-decode "bad%") ContractViolation?)
      (check-exception (uri-decode "bad%ZZ") ContractViolation?)
      (check-exception (uri-decode "bad%1G") ContractViolation?)
      (check-exception (form-url-decode "key=val%ZZ") ContractViolation?))))
