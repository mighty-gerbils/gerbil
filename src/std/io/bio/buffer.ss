;;; -*- Gerbil -*-
;;; © vyzo
;;; internal buffer interfaces
(import :std/interface
        ../interface)
(export #t)

(defcall-interface-method Reader read
  (__bio-input-buffer-read obj output output-start output-end input-need))

(defcall-interface-method PeekableReader read-u8
  (__bio-input-buffer-read-u8 obj))

(defcall-interface-method PeekableReader peek-u8
  (__bio-input-buffer-peek-u8 obj))

(defcall-interface-method BufferedReader put-back
  (__bio-input-buffer-put-back obj pevious-input))

(defcall-interface-method BufferedReader skip
  (__bio-input-buffer-skip obj count))

(defcall-interface-method BufferedReader available
  (__bio-input-buffer-available obj))


(defcall-interface-method Writer write
  (__bio-output-buffer-write obj input input-start input-end))

(defcall-interface-method BufferedWriter write-u8
  (__bio-output-buffer-write-u8 obj u8))

(defcall-interface-method BufferedWriter flush
  (__bio-output-buffer-flush obj))

(interface (InputBuffer Closer)
  (fill! (buf : :uvector) (rhi : :fixnum) (need : :fixnum))
  => :void)

(defcall-interface-method InputBuffer fill!
  (__bio-input-buffer-fill! obj buf rhi need))

(defcall-interface-method InputBuffer close
  (__bio-input-buffer-close obj))

(interface (OutputBuffer Closer)
  (drain! (buf : :uvector) (whi : :fixnum))
  => :void)

(defcall-interface-method OuputBuffer drain!
  (__bio-output-buffer-drain! obj buf whi))

(defcall-interface-method OutputBuffer close
  (__bio-output-buffer-close obj))
