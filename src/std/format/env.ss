;;; -*- Gerbil -*-
;;; © vyzo
;;; format env
(import :std/error
	:std/serde/scan
        :std/serde/interface
        ./ascii)
(export #t)

;; format specifiers
(def FORMAT-WRITE   0)
(def FORMAT-DISPLAY 1)
(def FORMAT-DEBUG   2)

(def FORMAT-NO-CYCLES    0)
(def FORMAT-CHECK-CYCLES 1)
(def FORMAT-ALLOW-CYCLES 2)

(def FORMAT-NO-COMPRESSION 0)
(def FORMAT-STD-COMPRESSION 1)

(def FORMAT-CHAR-SCHEME-NAMES 0)
(def FORMAT-CHAR-STD-NAMES 1)

(defrule (format-style?)
  (one-of ,FORMAT-WRITE ,FORMAT-DISPLAY ,FORMAT-DEBUG))

(defrule (format-cycles?)
  (one-of ,FORMAT-NO-CYCLES ,FORMAT-CHECK-CYCLES ,FORMAT-ALLOW-CYCLES))

(defrule (format-compression?)
  (one-of ,FORMAT-NO-COMPRESSION ,FORMAT-STD-COMPRESSION))

(defrule (format-char-ascii-names?)
  (one-of ,FORMAT-CHAR-SCHEME-NAMES ,FORMAT-CHAR-STD-NAMES))

;; format environment — settings that propagate through recursive serialization
(defclass FormatOpt
  ( ;; format style: write / display / debug
   (style            :- :fixnum)
   ;; cycle treatment
   (cycles           :- :fixnum)
   ;; write compression mode
   (compress         :- :fixnum)
   ;; max sequence elements to display
   (max-elements     :- :fixnum)
   ;; char ascii name set
   (char-ascii-names :- :fixnum)
   ;; allow class serialization?
   (allow-class?     :- :procedure))
  constructor: :init!
  transparent: #t
  final: #t)

(defstruct FormatEnv
  ((opt  :- FormatOpt))
  final: #t)

(defmethod {:init! FormatOpt}
  (lambda (self style:            (style            :~ (format-style?)           := FORMAT-DEBUG)
           cycles:           (cycles           :~ (format-cycles?)          := FORMAT-ALLOW-CYCLES)
           compress:         (compress         :~ (format-compression?)     := FORMAT-NO-COMPRESSION)
           max-elements:     (max-elements     :- :t                        := #f)
           char-ascii-names: (char-ascii-names :~ (format-char-ascii-names?) := FORMAT-CHAR-SCHEME-NAMES)
	   allow-class?:      (allow-class?     :  :procedure              := (lambda (klass) #t)))
    (set! self.style style)
    (set! self.cycles cycles)
    (set! self.compress compress)
    (set! self.max-elements max-elements)
    (set! self.char-ascii-names char-ascii-names)
    (set! self.allow-class? allow-class?)))

;; Integer conversion table: specifier → [base upper-case?]
;; Used by the format call paths (format.ss, api.ss), not stored in FormatOpt.
(def __integer-conversions
  [[#\b  2 #f]   ; binary
   [#\B  2 #f]   ; binary (Gerbil extension)
   [#\o  8 #f]   ; octal
   [#\O  8 #f]   ; octal (Gerbil extension)
   [#\d 10 #f]   ; decimal
   [#\x 16 #f]   ; hex lowercase
   [#\X 16 #t]]) ; hex uppercase

(defsyntax-case do-format-option ()
  ((_ where opt slot option ...)
   (with-identifier (opt.slot #'opt #'opt "." #'slot)
                    (with-syntax
                        (((clause ...)
                          (map (lambda (option)
                                 (syntax-case option ()
                                   ((format-option expr)
                                    (identifier? #'format-option)
                                    #'((fx= opt.slot format-option)
                                       expr))
                                   (((format-option ...) expr)
                                    (andmap identifier? #'(format-option ...))
                                    #'((or (fx= opt.slot format-option) ...)
                                       expr))))
                               #'(option ...)))
                         (contract-string
                          (string-append "format." (symbol->string (stx-e #'slot))))
                         (slot-key (symbol->keyword (stx-e #'elot))))
                      #'(cond
                         clause ...
                         (else
                          (raise-contract-violation where contract-string
                                                    slot-key opt.slot)))))))

(defrules do-format-style ()
  ((_ where opt do-format-write do-format-display do-format-debug)
   (do-format-option where opt style
                     (FORMAT-WRITE   do-format-write)
                     (FORMAT-DISPLAY do-format-display)
                     (FORMAT-DEBUG   do-format-debug)))
  ((_ where opt do-format-write do-format-display)
   (do-format-option where opt style
                     ((FORMAT-WRITE FORMAT-DEBUG) do-format-write)
                     (FORMAT-DISPLAY do-format-display))))

(defrules do-format-cycles ()
  ((_ where opt do-no-cycles do-check-cycles do-allow-cycles)
   (do-format-option where opt cycles
                     (FORMAT-NO-CYCLES do-no-cycles)
                     (FORMAT-CHECK-CYCLES do-check-cycles)
                     (FORMAT-ALLOW-CYCLES do-allow-cycles))))

(defrules do-format-compress ()
  ((_ where opt do-no-compress do-compress)
   (do-format-option where opt compress
                     (FORMAT-NO-COMPRESSION do-no-compress)
                     (FORMAT-STD-COMPRESSION do-compress))))

(defrules do-format-char-ascii-names ()
  ((_ where opt do-scheme-names do-std-names)
   (do-format-option where opt char-ascii-names
                     (FORMAT-CHAR-SCHEME-NAMES do-scheme-names)
                     (FORMAT-CHAR-STD-NAMES     do-std-names))))

(def current-format-opt
  (make-parameter #f))

(def __default-format-opt
  (delay-atomic
   (FormatOpt
    style:            FORMAT-WRITE
    cycles:           FORMAT-ALLOW-CYCLES
    compress:         FORMAT-NO-COMPRESSION
    max-elements:     #f
    char-ascii-names: FORMAT-CHAR-SCHEME-NAMES
    allow-class?:     (lambda (klass) #t))))

(def (format-options (opt (current-format-opt))) => FormatOpt
  (: (or opt (force __default-format-opt)) FormatOpt))

(def (format-context (opt : FormatOpt := (format-options))) => WriteContext
  (WriteContext
   (let* ((compress?
           (do-format-compress FormatEnv:::init! opt #f #t))
          (scan?
           (or compress?
               (do-format-cycles FormatEnv:::init! opt #f #t #t)))
          (allow-cycles?
           (do-format-cycles FormatEnv:::init! opt #f #f #t)))
     (and scan?
	  (ScanContext allow-cycles? compress? (fx= opt.style FORMAT-DEBUG))))
   (WriteTraits (FormatEnv opt))
   opt.allow-class?))

(defsyntax-case @derive-format-env ()
  ((_ ctx (slot value setf!) ...)
   (and (identifier? #'env)
        (andmap identifier? #'(slot ...)))
   (with-identifiers ((fenv 'fenv)
		      (fenv.opt #'fenv #'fenv ".opt")
                      (ctx.scan #'ctx #'ctx ".scan")
		      (ctx.methods #'ctx #'ctx ".methods")
                      (xopt '$xopt)
		      (xopt.allow-class? #'xopt #'xopt ".allow-class?"))
     #'(using ((ctx : WriteContext)
               (fenv (interface-instance-object ctx.methods) : FormatEnv)
	       (xopt (struct-copy fenv.opt) :- FormatOpt))
         (setf! xopt value) ...
	 (WriteContext ctx.scan (WriteTraits (FormatEnv xopt)) xopt.allow-class?)))))

(defsyntax-case @format-env ()
  ((_ ctx (slot value) ...)
   (and (identifier? #'ctx)
        (andmap stx-keyword? #'(slot ...)))
   (with-syntax
       ((((slot safe-value set-it!) ...)
         (map (lambda (slot value)
                (let (key (stx-e slot))
                  (with-syntax
                      (((contract setf!)
                        (case key
                          ((style:)
                           '(format-style?              &FormatOpt-style-set!))
                          ((cycles:)
                           '(format-cycles?             &FormatOpt-cycles-set!))
                          ((compress:)
                           '(format-compression?        &FormatOpt-compress-set!))
                          ((max-elements:)
                           '(:t                          &FormatOpt-max-elements-set!))
                          ((char-ascii-names:)
                           '(format-char-ascii-names?    &FormatOpt-char-ascii-names-set!))
                          (else
                           (raise-syntax-error #f "unexpected format option" key slot))))
                       (value value)
                       (slot (keyword->symbol key)))
                    #'(slot (:~ value (contract)) setf!))))
              #'(slot ...)
              #'(value ...))))
     #'(@derive-format-env ctx (slot safe-value set-it!) ...))))


;; reader environment
(defclass ReaderOpt
  ((bracket    :- :symbol)		; macro symbol for [] or #f
   (brace      :- :symbol)		; macro symbol for {} or #f
   (quote      :- :symbol)		; macro symbol for ' or #f
   (quasiquote :- :symbol)		; macro symbol for ` or #f
   (unquote    :- :symbol)		; macro symbol for , or #f
   (unquote-splicing :- :symbol)		; macro symbol for ,@ or #f
   (syntax      :- :symbol)		; macro symbol for #' or #f
   (quasisyntax :- :symbol)		; macro symbol for #` or #f
   (unsyntax    :- :symbol)		; macro symbol for #, or #f
   (unsyntax-splicing :- :symbol)		; macro symbol for #,@ or #f
   )
  final: #t)

(defclass ReaderEnv
  ((ctx       :- ReadContext)
   (opt       :- ReaderOpt)
   (sharp     :- :vector))
  transparent: #f
  final: #t)

(defsyntax-case @derive-reader-env ()
  ((_ env (slot val) ...)
   (with-identifiers ((xenv '$env)
		      (xopt '$opt)
		      (env.opt #'env #'env "." #'opt)
		      (xenv.opt #'xenv #'xenv "." #'opt))
     (with-syntax (((xopt.slot ...)
		    (map (lambda (slot) (stx-identifier #'xopt #'xopt "." slot))
			 #'(slot ...))))
       #'(using ((xenv (##structure-copy env) :- ReaderEnv)
	         (xopt (##structure-copy env.opt) :- ReaderOpt))
	   (set! xenv.opt xopt)
	   (set! xopt.slot (:? val :symbol)) ...
	   xenv)))))
