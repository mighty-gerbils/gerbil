;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS File Descriptors

(import :std/error)
(export fdopen fdopen-port
        fd-e fd-io-in fd-io-out
        fd? fd-type? fd-type)

;; _gambit#.scm
(extern namespace: #f
  macro-direction-in macro-direction-out macro-direction-inout
  macro-port-name
  macro-raw-device-port?
  macro-raw-device-port-rdevice-condvar
  macro-raw-device-port-wdevice-condvar
  macro-raw-device-port-specific
  macro-raw-device-port-id
  macro-raw-device-port-type)

(def (open-raw-device direction id fd)
  (def (fail)
    (##fail-check-settings 1 open-raw-device direction id fd))
  (##make-psettings
   direction '() '() fail
   (lambda (psettings)
     (let (device
            (##os-device-open-raw-from-fd fd (##psettings->device-flags psettings)))
       (if (##fixnum? device)
         (##raise-os-exception #f device open-raw-device direction id fd)
         (##make-raw-device-port direction device id [id fd] fd))))))

(def (direction dir)
  (case dir
    ((in)    (macro-direction-in))
    ((out)   (macro-direction-out))
    ((inout) (macro-direction-inout))
    (else
     (raise-bad-argument 'direction "'in, 'out, or 'inout" dir))))

(def (fdopen fd dir t)
  (let (dirx (direction dir))
    (open-raw-device dirx t fd)))

(def (fdopen-port fd dir name)
  (let (dirx (direction dir))
    (##open-predefined dirx name fd)))

(def (fd-e raw)
  (values (macro-raw-device-port-specific raw)))

(def (fd-io-in raw)
  (values (macro-raw-device-port-rdevice-condvar raw)))

(def (fd-io-out raw)
  (values (macro-raw-device-port-wdevice-condvar raw)))

(def (fd-type raw)
  (values (macro-raw-device-port-type raw)))

(def (fd? obj)
  (values (macro-raw-device-port? obj)))

(def (fd-type? obj t)
  (and (macro-raw-device-port? obj)
       (eq? (fd-type obj) t)))
