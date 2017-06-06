;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS File Descriptors
package: std/os

(import :gerbil/gambit/ports)
(export #t)

(defstruct FD (dev io-in io-out))

;; _gambit#.scm
(extern namespace: #f
  macro-direction-in macro-direction-out macro-direction-inout
  macro-raw-device-port-rdevice-condvar
  macro-raw-device-port-wdevice-condvar
  macro-raw-device-port-fd)

(def (fdopen fd dir (name 'fd))
  (let* ((dirx
          (case dir
            ((in)(macro-direction-in))
            ((out) (macro-direction-out))
            ((inout) (macro-direction-inout))
            (else
             (error "Bad direction; must be in, out, or inout" dir))))
         (dev
          (##open-raw-device dirx name fd))
         (io-in (macro-raw-device-port-rdevice-condvar dev))
         (io-out (macro-raw-device-port-wdevice-condvar dev)))
    (make-FD dev io-in io-out)))

(def (fdclose fd)
  (with ((FD dev) fd)
    (when dev
      (with-catch void (cut close-port dev))
      (struct-instance-init! fd #f #f #f)
      (void))))

(def (FD-fd fd)
  (with ((FD dev) fd)
    (if dev
      (macro-raw-device-port-fd dev)
      (error "FD has been closed"))))









