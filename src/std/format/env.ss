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

(defrule (format-flonum-conversion?)
  (one-of #\e #\E #\f #\F #\g #\G))

(defrule (format-integer-conversion?)
  (one-of #\b #\B #\o #\O #\d #\x #\X))

(defrule (format-char-ascii-names?)
  (one-of ,FORMAT-CHAR-SCHEME-NAMES ,FORMAT-CHAR-STD-NAMES))

(defrule (format-optional-fixnum?)
  (? (or not nonnegative-fixnum?)))

(defrule (format-flags?)
  (list-of? (one-of #\0 #\- #\+ #\space #\#)))

(defrule (format-optional-flags?)
  (lambda (o)
    (or (not o)
        ((format-flags?) o))))

;; format environment
(defclass FormatOpt
  ( ;; format style
   (style            :- :fixnum)
   ;; cycle treatment
   (cycles           :- :fixnum)
   ;; write compression mode
   (compress         :- :fixnum)
   ;; number format
   (flags            :- :list) ; #\0 #\- #\space #\+ #\#
   (width            :- :fixnum)
   (precision        :- :fixnum)
   ;; flonums
   (flonum-repr      :- :fixnum)
   ;; integers
   (integer-prefix   :- :fixnum)
   (integer-gits     :- :fixnum)
   (integer-alphabet :- :u8vector)
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
  (lambda (self style:              (style              :~ (format-style?)              := FORMAT-DEBUG)
           cycles:             (cycles             :~ (format-cycles?)             := FORMAT-ALLOW-CYCLES)
           compress:           (compress           :~ (format-compression?)        := FORMAT-NO-COMPRESSION)
           flags:              (flags              :~ (format-optional-flags?)     := #f)
           width:              (width              :~ (format-optional-fixnum?)    := #f)
           precision:          (precision          :~ (format-optional-fixnum?)    := #f)
           flonum-conversion:  (flonum-conversion  :~ (format-flonum-conversion?)  := #\g)
           integer-conversion: (integer-conversion :~ (format-integer-conversion?) := #\d)
           max-elements:       (max-elements       :~ (format-optional-fixnum?)     := #f)
           char-ascii-names:   (char-ascii-names   :~ (format-char-ascii-names?)    := FORMAT-CHAR-SCHEME-NAMES)
	   allow-class?:        (allow-class?      :  :procedure := (lambda (klass) #t)))
    (set! self.cycles cycles)
    (set! self.compress compress)
    (set! self.style style)
    (set! self.flags flags)
    (set! self.width width)
    (set! self.precision precision)
    (__set-flonum-conversion! self flonum-conversion)
    (__set-integer-conversion! self integer-conversion)
    (set! self.max-elements max-elements)
    (set! self.char-ascii-names char-ascii-names)
    (set! self.allow-class? allow-class?)))

(def (__set-flonum-conversion! (opt :- FormatOpt) (conversion :- :char))
  (set! opt.flonum-repr (char->integer conversion)))

(def (__set-integer-conversion! (opt :- FormatOpt) (base :- :char))
  (cond
   ((agetq base __integer-conversions)
    => (lambda (lst)
         (with ([prefix-char alphabet width] lst)
           (set! opt.integer-prefix   (and prefix-char (char->integer prefix-char)))
           (set! opt.integer-alphabet alphabet)
           (set! opt.integer-gits     width))))
   (else
     (raise-contract-violation set-integer-conversion! "integer base" base: base))))

(def __integer-conversions
  [[#\b #\b __alphabet-binary  1]
   [#\B #f  __alphabet-binary  1]
   [#\o #\o __alphabet-octal   3]
   [#\O #f  __alphabet-octal   3]
   [#\d #f  __alphabet-decimal 1]
   [#\x #\x __alphabet-hex     2]
   [#\X #f  __alphabet-HEX     2]])

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
    style:              FORMAT-WRITE
    cycles:             FORMAT-ALLOW-CYCLES
    compress:           FORMAT-NO-COMPRESSION
    flags:              #f
    width:              #f
    precision:          #f
    flonum-conversion:  #\g
    integer-conversion: #\d
    max-elements:       #f
    char-ascii-names:   FORMAT-CHAR-SCHEME-NAMES
    allow-class?:       (lambda (klass) #t))))

(def (format-options (opt (current-format-opt))) => FormatOpt
  (: (or opt (force __default-format-opt)) FormatOpt))

(def (format-environment (opt : FormatOpt := (format-options))) => WriteEnv
  (WriteEnv
   (let* ((compress?
           (do-format-compress FormatEnv:::init! opt #f #t))
          (scan?
           (or compress?
               (do-format-cycles FormatEnv:::init! opt #f #t #t)))
          (allow-cycles?
           (do-format-cycles FormatEnv:::init! opt #f #f #t)))
     (and scan?
	  (ScanEnv allow-cycles? compress? (fx= opt.style FORMAT-DEBUG))))
   (WriteTraits (FormatEnv opt))
   opt.allow-class?))

(defsyntax-case @derive-format-env ()
  ((_ env (slot value setf!) ...)
   (and (identifier? #'env)
        (andmap identifier? #'(slot ...)))
   (with-identifiers ((fenv 'fenv)
		      (fenv.opt #'fenv #'fenv ".opt")
                      (env.scan #'env #'env ".scan")
		      (env.methods #'env #'env ".methods")
                      (xopt '$xopt)
		      (xopt.allow-class? #'xopt #'xopt ".allow-class?"))
     #'(using ((fenv (interface-instance-object env.methods) : FormatEnv)
	       (xopt (struct-copy fenv.opt) :- FormatOpt))
         (setf! xopt value) ...
	 (WriteEnv env.scan (WriteTraits (FormatEnv xopt)) xopt.allow-class?)))))

(defsyntax-case @format-env ()
  ((_ env (slot value) ...)
   (and (identifier? #'env)
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
                           '(format-cycles?             &FormetOpt-cycles-set!))
                          ((compress:)
                           '(format-compression?        &FormatOpt-compress-set!))
                          ((flags:)
                           '(format-optional-flags?     &FormatOpt-flags-set!))
                          ((width:)
                           '(format-optional-fixnum?    &FormatOpt-width-set!))
                          ((precision:)
                           '(format-optional-fixnum?    &FormatOpt-precision-set!))
                          ((flonum-conversion:)
                           '(format-flonum-conversion?  __set-flonum-conversion!))
                          ((integer-conversion:)
                           '(format-integer-conversion? __set-integer-conversion!))
                          ((max-elements:)
                           '(format-optional-fixnum?     &FormatOpt-max-elements-set!))
                          ((char-ascii-names:)
                           '(format-char-ascii-names?    &FormatOpt-char-ascii-names-set!))
                          (else
                           (raise-syntax-error #f "unexpected format option" key slot))))
                       (value value)
                       (slot (keyword->symbol key)))
                    #'(slot (:~ value (contract)) setf!))))
              #'(slot ...)
              #'(value ...))))
     #'(@derive-format-env env (slot safe-value set-it!) ...)))
  ((_ (slot value) ...)
   (andmap stx-keyword? #'(slot ...))
   (with-identifier (env     '$senv)
     #'(let (env (FormatEnv (format-options)))
         (@format-env env (slot value) ...)))))

(def (format-flag-set flag flags)
  (if flags
    (if (memq flag flags)
      flags
      (cons flag flags))
    [flag]))
