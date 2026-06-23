;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host notifications
(import ./network
        ./host)
(export #t)

(defstruct (ConnectionEvent Event)
  ((conn : Connection)))

(defstruct (ConnectionEstablishedEvent ConnectionEvent)
  ()
  final: #t)
(defstruct (ConnectionClosedEvent ConnectionEvent)
  ()
  final: #t)

(defstruct (StreamEvent Event)
  ((stream : Stream)))

(defstruct (StreamEstablishedEvent StreamEvent)
  ()
  final: #t)
(defstruct (StreamClosedEvent StreamEvent)
  ()
  final: #t)
