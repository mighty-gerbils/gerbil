;;; -*- Gerbil -*-
;;; © vyzo
;;; format env
(import :std/serde/scan)
(export #t)

(defstruct FormatEnv
  ((scan      :- ScanEnv)  ; cycle handling policy (optional)
   (display?  :- :boolean) ; displayllike format?
   (precision :- :fixnum)  ; precision for inexact number format
   (base      :- :fixnum)  ; base for integer format
   )
  constructor: :init!
  final: #t)

(defclass FormatSettings
  ((allow-cycles? : :boolean)
   (check-cycles? : :boolean)
   (compress?     : :boolean)
   (display?      : :boolean)
   (precision     :~ nonnegative-fixnum? :- :fixnum)
   (base          :~ nonnegative-fixnum? :- :fixnum))
  final: #t)

(def current-format-settiongs
  (make-parameter #f))

(def __default-format-settings
  (delay-atomic
   (FormatSettings
    allow-cycles?: #f
    check-cycles?: #t
    compress?: #f
    precision: 3
    base: 10)))

(def (format-environment (settings (current-format-settings))) => FormatEnv
  (FormatEnv (or settings (force __default-format-settings))))

(def (derive-format-environment (env : FormatEnv)
                                display?:  (display?  : :boolean := env.display?)
                                precision: (precision : :fixnum  := env.precision)
                                base:      (base      : :fixnum  := env.base))
  => FormatEnv
  (using (xenv (struct-copy env) :- FormatEnv)
    (set! xenv.display? display?)
    (set! xenv.precision precision)
    (set! xenv.base base)
    xenv))

(defsyntax (defderive-format-env stx)
  (syntax-case stx ()
    ((_ proc slot contract ...)
     (with-syntax* ((env       (stx-identifier #'proc "$env"))
                    (env.slot  (stx-identifier #'env "." #'slot))
                    (xenv      (stx-identifier #'proc "$xenv"))
                    (xenv.slot (stx-identifier #'xenv "." #'slot)))
       #'(def (proc (env : FormatEnv) (slot contract ...))
           (if (eq? env.slot slot)
             env
             (using (xenv (struct-copy env) :- FormatEnv)
               (set! xenv.slot arg)
               xenv)))))))

(defderive-format-env derive-format-env-with-display?  display?  : :boolean)
(defderive-format-env derive-format-env-with-precision precision : :fixnum)
(defderive-format-env derive-format-env-with-base      base      : :fixnum)

(defmethod {:init! FormatEnv}
  (lambda (self (settings : FormatSettings))
    (when (or settings.allow-cycles?
              settings.check-cycles?
              settings.compress?)
      (set! self.scan (ScanEnv allow-cycles? compress?)))
    (set! self.display?  settings.display?)
    (set! self.precision settings.precision)))
