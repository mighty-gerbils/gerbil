(import :std/test
        :std/error
        :std/text/pregexp
        ./url)

(export url-constructor-test
        url-relative-test
        url-with-query-test)

(def url-rx
  (pregexp "^(?:([a-z]+(?=://))://)?([a-zA-Z0-9][^/?#:]*(?::[0-9]+)?)(/(?:[^/?#][^?#]*)?)?(?:[?]([^#]+))?(?:#.*)?$"))

(defrule (check-well-formed-URLs string ...)
  (begin
    (let (url (URL string))
      (match (pregexp-match url-rx string)
        ([_ proto host path query]
         (check (URL-proto url) => (or proto "https"))
         (check (URL-host url) => host)
         (check (URL-path url) => (or path "/"))
         (check (URL-query url) => query)))) ...))

(defrule (check-malformed-URLs string ...)
  (begin
    (check-exception (URL string) ContractViolation?) ...))

(defrule (check-url-relative base-url-str relative-str expected-string expected-path expected-query)
  (let* ((base (URL base-url-str))
         (new-url (URL-relative relative-str base)))
    (check (URL-string new-url) => expected-string)
    (check (URL-path new-url) => expected-path)
    (check (URL-query new-url) => expected-query)))

(defrule (check-query base-str params expected-str)
  (let* ((base (URL base-str))
         (new-url (URL-with-query base params))
         (expected-query
          (let ((idx (string-index expected-str #\?)))
            (if idx
              (substring expected-str (fx+ idx 1) (string-length expected-str))
              #f))))
    (check (URL-string new-url) => expected-str)
    (check (URL-query new-url) => expected-query)))

(def url-constructor-test
  (test-suite "URL from string"
    (test-case "Well-formed URL"
      (check-well-formed-URLs "http://www.example.com/api/v1/users?id=42#section2" ; complete URL string
                              "www.example.com/api/v1/users?id=42#section2" ; empty proto
                              "www.example.com:8080/api/v1/users?id=42#section2" ; explicit port
                              "http://127.0.0.1/api" ; IPv4 string
                              "http://www.example.com/?id=42#section2" ; empty path
                              "http://www.example.com/api/v1/users"))  ; empty query

    (test-case "Malformed URL"
      (check-malformed-URLs "https:///api/v1/users" "http://?id=42" ; empty domain
                            ""
                            "tcp://www.example.com/api/v1/users?id=42#section2" ; invalid protocol name
                            "http:/www.example.com" "https//www.example.com" "http:www.example.com" ; malformed protocol separator
                            "/api/v1/users"  "../index.html")))) ; relative path

(def url-relative-test
  (test-suite "URL-relative"
    (test-case "Not relative"
      (check-url-relative "http://example.com/api/v1/"
                          "https://other.com/docs"
                          "https://other.com/docs" "/docs" #f))
    (test-case "Root"
      (check-url-relative "http://example.com/api/v1/users?id=1"
                          ""
                          "http://example.com/" "/" #f))
    (test-case "Absolute"
      (check-url-relative "http://example.com/api/v1/users"
                          "/v2/admins?role=admin"
                          "http://example.com/v2/admins?role=admin" "/v2/admins" "role=admin"))
    (test-case "Relative without /"
      (check-url-relative "http://example.com/api/v1/users"
                          "search?q=gerbil"
                          "http://example.com/api/v1/search?q=gerbil" "/api/v1/search" "q=gerbil"))
    (test-case "Relative from root"
      (check-url-relative "http://example.com/"
                          "index.html"
                          "http://example.com/index.html" "/index.html" #f))))

(def url-with-query-test
  (test-suite "URL-with-query"

    (test-case "Add query params to URL without query"
      (check-query "http://example.com/api/users"
                   '(("id" . "42") ("role" . "admin"))
                   "http://example.com/api/users?id=42&role=admin"))

    (test-case "Replace existing query params"
      (check-query "http://example.com/api/users?old_param=1"
                   '(("new_param" . "2"))
                   "http://example.com/api/users?new_param=2"))

    (test-case "Remove query params with empty list"
      (check-query "http://example.com/api/users?delete=me"
                   '()
                   "http://example.com/api/users"))))
