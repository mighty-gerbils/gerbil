;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS File Descriptors
package: std/os

(import :gerbil/gambit/ports)
(export fdopen
        fd-e fd-io-in fd-io-out
        fd? fd-type? fd-type)

;; _gambit#.scm
(extern namespace: #f
  macro-direction-in macro-direction-out macro-direction-inout
  macro-port-name
  macro-raw-device-port?
  macro-raw-device-port-rdevice-condvar
  macro-raw-device-port-wdevice-condvar
  macro-raw-device-port-device)

(def (open-raw-device direction name fd)
  (def (fail)
    (##fail-check-settings 1 open-raw-device direction name fd))
  (##make-psettings
   direction '() '() fail
   (lambda (psettings)
     (let (device
            (##os-device-open-raw fd (##psettings->device-flags psettings)))
       (if (##fixnum? device)
         (##raise-os-exception #f device open-raw-device direction name fd)
         (##make-raw-device-port device fd name direction))))))

(def (fdopen fd dir t)
  (let (dirx
        (case dir
          ((in)(macro-direction-in))
          ((out) (macro-direction-out))
          ((inout) (macro-direction-inout))
          (else
           (error "Bad direction; must be in, out, or inout" dir))))
    (open-raw-device dirx t fd)))

(def (fd-e raw)
  (values (macro-raw-device-port-device raw)))

(def (fd-io-in raw)
  (values (macro-raw-device-port-rdevice-condvar raw)))

(def (fd-io-out raw)
  (values (macro-raw-device-port-wdevice-condvar raw)))

(def (fd-type raw)
  (match ((macro-port-name raw) raw)
    ([t _] t)
    (else #f)))

(def (fd? obj)
  (values (macro-raw-device-port? obj)))

(def (fd-type? obj t)
  (and (fd? obj)
       (eq? (fd-type obj) t)))
