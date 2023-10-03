(export xml-test)

(import :std/test :std/xml)

(def xml-test
  (test-suite "test :std/xml"
    (test-case "converting elements from sxml to html"
      ; normal elements with children include a closing tag
      (check-output (print-sxml->html*
        '(*TOP*
          (div
            (p "I'm paragraph one")
            (p "I'm paragraph two"))))
        "<div><p>I'm paragraph one</p><p>I'm paragraph two</p></div>")

      ; void elements must never include a closing tag
      (check-output (print-sxml->html*
        '(*TOP*
          (area)
          (base)
          (br)
          (col)
          (embed)
          (hr)
          (img)
          (input)
          (link)
          (meta)
          (track)
          (wbr)))
        "<area><base><br><col><embed><hr><img><input><link><meta><track><wbr>"))))