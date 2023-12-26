(import :gerbil/gambit :std/error :std/srfi/1 :std/srfi/13 :std/text/utf8 :std/xml)
(export
  html->sxml
  default-html->sxml-plist
  html-strip
  make-html-parser

  print-sxml
  sxml->html
  html-escape
  html-character-escapes

)

(def (integer->utf8-string n) (utf8->string (u8vector n)))

(def (print-sxml sxml (out (current-output-port)))
  (sxml-display-as-html sxml out))

(def (sxml->html sxml (port #f))
  (if port (print-sxml sxml port) (%sxml->html sxml)))
(def (html-escape str (port #f) escapes: (esc html-character-escapes))
 (if port (html-display-escaped-string str port esc) (%html-escape str esc)))

(def default-html->sxml-plist
  [start: (lambda (tag attrs seed virtual?) '())
   end:   (lambda (tag attrs parent-seed seed virtual?)
            `((,tag ,@(if (pair? attrs)
                        `((@ ,@attrs) ,@(reverse seed))
                        (reverse seed)))
              ,@parent-seed))
   decl:    (lambda (tag attrs seed) `((*DECL* ,tag ,@attrs) ,@seed))
   process: (lambda (attrs seed) `((*PI* ,@attrs) ,@seed))
   comment: (lambda (text seed) `((*COMMENT* ,text) ,@seed))
   text:    (lambda (text seed) (cons text seed))])

(include "html-parser.scm")

(defsyntax (%mkref stx)
  (syntax-case stx ()
    ((_ arg ...)
     #'(concatenate (list (if arg [(symbol->keyword 'arg) arg] []) ...)))))

(def (make-html-parser
      start: (start #f) end: (end #f) text: (text #f) comment: (comment #f)
      decl: (decl #f) process: (process #f) entity: (entity #f)
      entities: (entities *default-entities*)
      tag-levels: (tag-levels *tag-levels*)
      unnestables: (unnestables *unnestables*) bodyless: (bodyless *bodyless*)
      literals: (literals *literals*)
      terminators: (terminators *terminators*))
  (apply %make-html-parser
    (%mkref start end text comment decl process entity entities tag-levels
	    unnestables literals terminators)))

(def (html->sxml
      port-or-string
      start: (start (pgetq start: default-html->sxml-plist))
      end: (end (pgetq end: default-html->sxml-plist))
      decl: (decl (pgetq decl: default-html->sxml-plist))
      process: (process (pgetq process: default-html->sxml-plist))
      comment: (comment (pgetq comment: default-html->sxml-plist))
      text: (text (pgetq text: default-html->sxml-plist))
      entity: (entity #f) entities: (entities *default-entities*)
      tag-levels: (tag-levels *tag-levels*)
      unnestables: (unnestables *unnestables*) bodyless: (bodyless *bodyless*)
      literals: (literals *literals*)
      terminators: (terminators *terminators*))
  (let ((parse
	 (apply %make-html-parser
	   (%mkref start end text comment decl process entity entities tag-levels
  		   unnestables literals terminators))))
    (cons '*TOP* (reverse (parse '() port-or-string)))))
