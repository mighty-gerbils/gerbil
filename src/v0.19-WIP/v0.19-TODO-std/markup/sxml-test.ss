(export sxml-test)

(import :std/test :std/markup/sxml)

(def sxml-test
  (test-suite "test :std/sxml"
    (test-case "converting elements from sxml to html"
      ; normal elements with children include a closing tag
      (check-output (write-sxml
        '(*TOP*
          (div
            (p "I'm paragraph one")
            (p "I'm paragraph two"))) port: (current-output-port)
	    xml?: #f)
        "<div><p>I'm paragraph one</p><p>I'm paragraph two</p></div>")

      ; void elements must never include a closing tag
      (check-output (write-sxml
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
          (wbr)) port: (current-output-port) xml?: #f)
        "<area><base><br><col><embed><hr><img><input><link><meta><track><wbr>"))))