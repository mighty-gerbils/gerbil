;;; -*- Gerbil -*-
;;; © vyzo
;;; stream sockets
(import :std/error
        :std/os/error
        :std/os/device
        :std/os/socket
        :std/sync/rwlock
        ../interface
        ./types
        ./basic
        ./client)
(export #t)

;; generic stream sockets
(def (stream-socket-get-reader (sock : stream-socket))
  => Reader
  (Reader (make-stream-socket-reader sock)))

(def (stream-socket-get-writer (sock : stream-socket))
  => Writer
  (Writer (make-stream-socket-writer sock)))

(def (stream-socket-shutdown (sock : stream-socket) (dir : :fixnum))
  => :void
  (do-with-write-lock sock.lock
    (socket-device-shutdown sock.dev dir)))

;; stream socket reader
(def (stream-socket-read (reader       : stream-socket-reader)
                         (output       : :u8vector)
                         (output-start : :fixnum)
                         (output-end   : :fixnum)
                         (input-need   : :fixnum))
  => :fixnum
  (let loop ((output-start output-start :- :fixnum)
             (input-need   input-need   :- :fixnum)
             (result       0            :- :fixnum))
    => :fixnum
    (if (fx< output-start output-end)
      (let (rd (client-socket-recv reader.sock output output-start output-end 0))
        (cond
         ((fx= rd 0)
          (if (fx> input-need result)
            (raise-premature-end-of-input stream-socket-read input-need)
            result))
         ((fx> rd input-need)
          (fx+ result read))
         (else
          (loop (fx+ output-start rd) (fx- input-need rd) (fx+ result rd)))))
      result)))

(def (stream-socket-close-reader (reader : stream-socket-reader))
  => :void
  (stream-socket-shutdown reader.sock SHUT_RD))

;; stream socket writer
(def (stream-socket-write (writer      : stream-socket-writer)
                          (input       : :fixnum)
                          (input-start : :fixnum)
                          (input-end   : :fixnum))
  => :fixnum
  (let loop ((input-start input-start :- :fixnum)
             (result      0           :- :fixnum))
    => :fixnum
    (if (fx< input-start input-end)
      (let (wr (client-socket-send writer.sock input input-start input-end 0))
        (loop (fx+ input-start wrote) (fx+ result wrote)))
      result)))

(def (stream-socket-close-writer (writer : stream-socket-writer))
  => :void
  (stream-socket-shutdown writer.sock SHUT_WR))
