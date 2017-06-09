;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS File Descriptors
package: std/os

(import :gerbil/gambit/ports)
(export #t)

;; _gambit#.scm
(extern namespace: #f
  macro-direction-in macro-direction-out macro-direction-inout
  macro-port-name
  macro-raw-device-port-rdevice-condvar
  macro-raw-device-port-wdevice-condvar
  macro-raw-device-port-fd)

(def (fdopen fd dir t)
  (let (dirx
        (case dir
          ((in)(macro-direction-in))
          ((out) (macro-direction-out))
          ((inout) (macro-direction-inout))
          (else
           (error "Bad direction; must be in, out, or inout" dir))))
    (##open-raw-device dirx t fd)))

(def (fd-e raw)
  (macro-raw-device-port-fd raw))

(def (fd-io-in raw)
  (macro-raw-device-port-rdevice-condvar raw))

(def (fd-io-out raw)
  (macro-raw-device-port-wdevice-condvar raw))

(def (fd-type raw)
  (match ((macro-port-name raw) raw)
    ([t _] t)
    (else #f)))

(def (fd-type? raw t)
  (eq? (fd-type raw) t))
