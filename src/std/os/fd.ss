;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS File Descriptors
package: std/os

(import :gerbil/gambit/ports)
(export #t)

(defstruct FD (fd dev io-in io-out))

;; _gambit#.scm
(extern namespace: #f
  macro-direction-in macro-direction-out macro-direction-inout
  macro-device-port-rdevice-condvar
  macro-device-port-wdevice-condvar)

(def (fdopen fd dir name: (name 'unknown))
  (let* ((dirx
          (case dir
            ((in)(macro-direction-in))
            ((out) (macro-direction-out))
            ((inout) (macro-direction-inout))
            (else
             (error "Bad direction; must be in, out, or inout" dir))))
         (dev
          (##open-predefined dirx name fd))
         (io-in
          (case dir
            ((in inout)
             (macro-device-port-rdevice-condvar dev))
            (else #f)))
         (io-out
          (case dir
            ((out inout)
             (macro-device-port-wdevice-condvar dev)
             )
            (else #f))))
    (make-FD fd dev io-in io-out)))

(def (fdclose fd)
  (with ((FD _ dev) fd)
    (when dev
      (with-catch void (cut close-port dev))
      (struct-instance-init! fd #f #f #f #f))))







