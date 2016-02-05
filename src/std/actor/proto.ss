;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor protocols
package: std/actor

(import
  )
(export
  )

;;; rpc messages
(defstruct !call (e k))
(defstruct !value (e k))
(defstruct !error (e k))
(defstruct !event (e))

(defrules defproto ())
