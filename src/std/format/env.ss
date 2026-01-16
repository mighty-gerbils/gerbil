;;; -*- Gerbil -*-
;;; © vyzo
;;; format env
(import :std/serde/scan)
(export #t)

(defstruct FormatEnv
  ((scan      :- ScanEnv)  ; cycle handling policy (optional)
   (display?  :- :boolean) ; displayllike format?
   (precision :- :fixnum)) ; precision for inexact numbers
  constructor: :init!
  final: #t)

(defclass FormatSettings
  ((allow-cycles? : :boolean)
   (check-cycles? : :boolean)
   (compress?     : :boolean)
   (display?      : :boolean)
   (precision     : :fixnum))
  final: #t)

(def current-format-settiongs
  (make-parameter #f))

(def __default-format-settings
  (delay-atomic
   (FormatSettings
    allow-cycles?: #f
    check-cycles?: #t
    compress?: #f
    precision: 3)))

(def (format-environment (settings (current-format-settings))) => FormatEnv
  (FormatEnv (or settings (force __default-format-settings))))

(def (format-enviroment-with-display? (env : FormatEnv) (display? : :boolean))
  => FormatEnv
  XXX
  )

(def (format-envirnoment-with-precision (env : FormatEnv) (precision : :fixnum))
  => FormatEnv
  XXX
  )


(defmethod {:init! FormatEnv}
  (lambda (self (settings : FormatSettings))
    (when (or settings.allow-cycles?
              settings.check-cycles?
              settings.compress?)
      (set! self.scan (ScanEnv allow-cycles? compress?)))
    (set! self.display?  settings.display?)
    (set! self.precision settings.precision)))
