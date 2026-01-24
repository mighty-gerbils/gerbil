;;; -*- Gerbil -*-
;;; © vyzo
;;; format env
(import :std/error
        :std/serde/scan)
(export #t)

;; format styles
(def FORMAT-WRITE   0)
(def FORMAT-DISPLAY 1)
(def FORMAT-DEBUG   1)

(defrule (format-style?)
  (one-of ,FORMAT-WRITE ,FORMAT-DISPLAY ,FORMAT-DEBUG))

;; format environment
(defclass FormatOpt
  (;; whether to allow (and write) object cycles
   (allow-cycles?    :- :boolean)
   ;; whether to check for object cycles
   (check-cycles?    :- :boolean)
   ;; do write compression?
   ;; if this is enabled, non trivial objects will be writtene exactly once
   (compress?        :- :boolean)
   ;; format style: FORMAT-WRITE (default), FORMAT-DISPLAY, or FORMAT-REPR
   (style            :- :fixnum)
   ;; inextact number precision
   (precision        :- :fixnum)
   ;; integer display base
   (integer-prefix   :- :fixnum)
   (integer-alphabet :- :u8vector)
   (integer-width    :- :fixnum)
   ;; squence elements to display; #f for no limit
   (seq-elements     :- :fixnum)
   ;; whether to use std ascii char special names; scheme names are used otherwise
   (char-ascii-std   :- :boolean))
  transparent: #t
  construct: :init!
  final: #t)

(defmethod {:init! FormatEnv}
  XXX
  )

(defstruct FormatEnv
  ((scan         :- ScanEnv)  ; cycle handling policy (optional)
   (opt          :- FormatOpt))
  constructor: :init!
  final: #t)

(defrules do-format-style ()
  ((_ where opt do-format-write do-format-display do-format-debug)
   (let (style (Format-opt-style opt))
     (cond
      ((fx= style FORMAT-WRITE)
       do-format-write)
      ((fx= style FORMAT-DISPLAY)
       do-format-display)
      ((fx= style FORMAT-DEBUG)
       do-format-debug)
      (else
       (raise-contract-violation-error where "format style" style: style)))))
  ((_ where opt do-format-write do-format-display)
   (do-format-style where opt do-format-write do-format-display do-format-write)))

(def current-format-opt
  (make-parameter #f))

(def __default-format-opt
  (delay-atomic
   (FormatOpt
    allow-cycles?: #f
    check-cycles?: #t
    compress?:     #f
    style:         FORMAT-WRITE
    precision:      3
    base:          10
    max-elements:  16)))

(def (format-environment (opt (current-format-opt))) => FormatEnv
  (FormatEnv (or opt (force __default-format-opt))))

(def (format-environment-with (env : FormatEnv)
                              style:        (style         :~ (format-style?)
                                                           :- :fixnum
                                                           := env.opt.style)
                              precision:    (precision     :  :fixnum
                                                           := env.opt.precision)
                              base:         (base          :  :fixnum
                                                           := env.opt.base)
                              max-elements: (max-elements  :? :fixnum
                                                           := env.opt.max-elements))
  => FormatEnv
  (if (and (eq? style        env.opt.style)
           (eq? precision    env.opt.precision)
           (eq? base         env.opt.base)
           (eq? max-elements env.opt.max-elements))
    env
    (FormatEnv env.scan
               (FormatOpt allow-cycles?: env.opt.allow-cycles?
                          check-cycles?: env.opt.check-cycles?
                          compress?:     env.opt.compress?
                          style:         style
                          precision:     precision
                          base:          base
                          max-elements:  max-elements))))

(defsyntax (defderive-format-env stx)
  (syntax-case stx ()
    ((_ proc slot contract ...)
     (with-identifiers
         ((env           '$env)
          (opt           '$opt)
          (env.scan      #'env #'env ".scan")
          (env.opt       #'env #'env ".opt")
          (env.opt.slot  #'env #'opt "." #'slot)
          (opt.slot      #'opt #'opt "." #'slot))
       #'(def (proc (env : FormatEnv) (slot contract ...))
           (if (eq? env.opt.slot slot)
             env
             (FormatEnv
              env.scan
              (using (opt (struct-copy env.opt) :- FormatOpt)
                (set! opt.slot slot)
                opt))))))))

(defderive-format-env format-env-with-style        style        :~ (format-style?) :- :fixnum)
(defderive-format-env format-env-with-precision    precision    :  :fixnum)
(defderive-format-env format-env-with-base         base         :  :fixnum)
(defderive-format-env format-env-with-max-elements max-elements :? :fixnum)

(defmethod {:init! FormatEnv}
  (lambda (self (opt : FormatOpt))
    (when (or opt.allow-cycles?
              opt.check-cycles?
              opt.compress?)
      (set! self.scan (ScanEnv allow-cycles? compress?)))
    (set! self.opt opt)))
