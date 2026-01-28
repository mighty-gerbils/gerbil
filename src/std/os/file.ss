;;; -*- Gerbil -*-
;;; © vyzo
;;; OS File Devices
(import :std/ffi
        ./error
        ./device
        ./fcntl)
(export #t)

(defstruct (FileDevice OSDevice)
  ((path :- :string)))

(def (open-file-device (path  : :string)
                       (flags : :fixnum)
                       (mode  : :fixnum))
  => FileDevice
  XXX
  )

(def (device-seek (dev : FileDevice) pos from)
  => :void
  XXX)
