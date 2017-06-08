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

(def (fdopen-raw xfd dir name K)
  (let* ((dirx
          (case dir
            ((in)(macro-direction-in))
            ((out) (macro-direction-out))
            ((inout) (macro-direction-inout))
            (else
             (error "Bad direction; must be in, out, or inout" dir))))
         (dev
          (##open-raw-device dirx name xfd))
         (io-in
          (macro-raw-device-port-rdevice-condvar dev))
         (io-out
          (macro-raw-device-port-wdevice-condvar dev)))
    (K dev io-in io-out)))

(def (fdopen xfd dir (name 'fd))
  (fdopen-raw xfd dir name make-FD))

(def (fdclose fd)
  (with ((FD dev) fd)
    (when dev
      (with-catch void (cut close-port dev))
      (struct-instance-init! fd #f #f #f)
      (void))))

(def (fdclose-in fd)
  (with ((FD dev io-in io-out) fd)
    (when io-in
      (close-input-port dev)
      (set! (FD-io-in fd) #f)
      (unless io-out
        (set! (FD-dev fd) #f)))))

(def (fdclose-out fd)
  (with ((FD dev io-in io-out) fd)
    (when io-out
      (close-output-port dev)
      (set! (FD-io-out fd) #f)
      (unless io-in
        (set! (FD-dev fd) #f)))))

(def (fdopen? fd)
  (and (FD-dev fd) #t))

(def (FD-e fd)
  (with ((FD dev) fd)
    (and dev (macro-raw-device-port-fd dev))))
