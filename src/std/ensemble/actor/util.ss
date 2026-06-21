;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor utilities
(import :std/time/precise
        :std/serde/marshal
        ./types)
(export #t)

(definline (message-expire (ttl : :fixnum))
  => :integer
  (+ (CoarseTime-seconds (current-time-coarse))
     ttl))

(def (next-reply-method! (self : basic-actor))
  => :string
  (let (next-reply
        (do-with-lock self.mx
          (let (next self.next-reply)
            (set! self.next-reply (+ next 1))
            next)))
    (string-append "/tmp/reply/" (number->string next-reply))))

(definline (marshal-body body)
  => :u8vector
  (marshal body (marshal-context dag: #t)))
