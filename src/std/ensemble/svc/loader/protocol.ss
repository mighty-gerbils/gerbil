;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble loader service protocol
(import :std/serde/interface
        :std/serde/deserialize
        ../../interface
        ../../actor)
(export #t)

(def actor:/svc/loader
  "/svc/loader/v0")

;; the Loader protocol provides code loading services for the host.
(defprotocol Loader
  ;; return the gerbil version in the loader
  ("/svc/loader/version"
   (version))

  ;; return a list of all loaded modules
  ("/svc/loader/list-modules"
   (list-modules))

  ;; load a library module
  ;; returns !OK modpath or !Error
  ("/svc/loader/load-library"
   (load-library (module : :string)))

  ;; load a previously uploaded module by hash
  ;; returns !OK sha256 or !Error
  ("/svc/loader/load-uploaded"
   (load-uploaded (sha256 : :string)))

  ;; list previously uploaded modules, using
  ;; the friendly name as a filter
  ;; returns list of Available module objects
  ("/svc/loader/list-uploaded"
   (list-uploaded (name :? :string)))

  ;; delete a previously upload module by name
  ;; if the module has multiple names, the actual
  ;; object file is deleted after the last alias'
  ;; is deleted
  ;; it is an error to delete a currently loaded
  ;; object file
  ("/svc/loader/delete-uploaded"
   (delete-uploaded (sha256 : :string)))

  ;; upload a module
  ;; client -> server: /svc/loader/upload
  ;;
  ;; if the module code is already available:
  ;; server -> client: Available
  ;;
  ;; if the module code is currently uploading:
  ;; server -> client: InProgress
  ;;
  ;; if the code is not available
  ;; server -> client: Continue
  ;; client -> server: stream data
  ;;
  ;; once the data has been streamed
  ;; client -> server: /svc/loader/status
  ;; client -> server: /svc/loader/load
  ("/svc/loader/upload"
   (upload (name    : :string)
           (sha256  : :string)
           (linker  : :string)))

  ;; check an upload status
  ;; client -> server: /svc/loader/status
  ;; server -> client:
  ;;  Available
  ;;  InProgress
  ;;  !Error
  ("svc/loader/upload-status"
   (upload-status (sha256 : :string)))
  )

;; an available module object file
(defstruct Available
  ((name      : :string)
   (sha256    : :string)
   (timestamp : :integer))
  final: #t)

;; continue an upload operation by sending data
;; in the specified stream
(defstruct Continue
  ((stream : :string)
   (auth   : Token))
  final: #t)

;; an upload operation is in progress
(defstruct InProgress
  ((stream : :string))
  final: #t)

(defobject-untaint
  Available
  Continue
  InProgress)
