;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble broadcast interface
(import :std/io/interface
        ./message)
(export #t)

;; broadcast handlers
(interface BroadcastHandler
  (receive! (msg : BroadcastMessage))
  => :void
  )

;; broadcast system abstraction
(interface (Broadcast Closer)
  ;; broadcast a message
  (broadcast! (msg       : BroadcastMessage)
              (loopback? : :boolean := #f))
  => :void

  ;; join a broadcast group
  (join! (group : :string))
  => :void

  ;; leave a broadcast group
  (leave! (group : :string))
  => :void

  ;; subscribe to receive messages in a broadcast group
  ;; automatically joins if the group hasn't been joined
  ;; already.
  ;; returns an opaque subscription token that can
  ;; be used to unsubscribe later.
  (subscribe! (group : :string)
              (handler : BroadcastHandler))
  => :t

  ;; unsubscribe from a previously subscribed group
  (unsubscribe! (t : :t))
  => :void

  ;; the currently joined broadcast groups
  (groups)
  => :list
  )
