;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization interned represntation
(import :gerbil/runtime/table
        :std/io/interface
        :std/io/bio/api)

(def __interned-symbolic-repr
  (make-symbolic-table/lock #f 0))

(defclass interned-symbolic-repr
  ((format        :- :u8vector)
   (format/quote  :- :u8vector)
   (format/string :- :u8vector))
  final: #t)

(defsyntax (do-write-interned-symbolic stx)
  (syntax-case stx ()
    ((writer obj write-method slot)
     (with-syntax* ((writer.write (stx-identifier #'writer #'writer ".write"))
                    (repr         (genident '$repr))
                    (repr.slot    (stx-identifier #'repr #'repr "." #'slot))
                    (buffer       (genident '$buffer))
                    (buffer.write-method
                                  (stx-identifier #'buffer #'buffer "." #'write-method)))
       (cond
        ((symbolic-table-ref/lock __interned-symbolic-repr obj #f)
         => (lambda ((repr :- interned-symbolic-repr)) => :fixnum
               (if repr.slot
                 (writer.write repr.slot)
                 (using (buffer (open-buffered-writer #f very-small-buffer-size)
                        :- BufferedWriter)
                   (let* ((_     (buffer.write-method obj))
                          (bytes (get-buffer-output-u8vector buffer)))
                     (set! repr.slot bytes)
                     (writer.write bytes))))))
        (else
         (using (buffer (open-buffered-writer #f very-small-buffer-size)
                        :- BufferedWriter)
           (let* ((_     (buffer.write-method obj))
                  (bytes (get-buffer-output-u8vector buffer))
                  (repr  (interned-symbolic-repr 'slot bytes)))
             (symbolic-table-set!/lock __interned-symbolic-repr obj repr)
             (writer.write bytes)))))))))
