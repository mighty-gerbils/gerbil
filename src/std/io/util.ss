;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio utilities
(import ./interface)
(export io-copy!)

(def default-buffer-size (expt 2 16))

(def (io-copy! reader writer (buffer-or-size default-buffer-size))
  (let* ((reader (Reader reader))
         (writer (Writer writer))
         (buffer
          (if (fixnum? buffer-or-size)
            (make-u8vector buffer-or-size)
            buffer-or-size))
         (buffer-size
          (u8vector-length buffer)))
    (let lp ((copied 0))
      (let (read (&Reader-read reader buffer 0 buffer-size))
        (if (fx= read 0)
          copied
          (let (wrote (&Writer-write writer buffer 0 read))
            (lp (fx+ copied wrote))))))))
