;;; -*- Gerbil -*-
;;; © vyzo
;;; detachable readers and writers
(import :std/error
        :std/interface
        ./interface
        ./bio/buffer)
(export open-detachable-reader
        open-detachable-writer)

(defclass detachable-io
  ((detached? :- :boolean)))

(defclass (detachable-reader detachable-io)
  ((reader :- Reader)))

(defclass (detachable-writer detachable-io)
  ((writer :- Writer)))

(def (open-detachable-reader (reader : Reader))
  => Reader
  (Reader (detachable-reader #f reader)))

(def (open-detachable-writer (writer : Writer))
  => Writer
  (Writer (detachable-writer #f writer)))

(def (detachable-io-detach! (self : detachable-io))
  (unless self.detached?
    (set! self.detached? #t)))

(implement
  (DetachableBuffer
   (detachable-io
    (detach! __detachable-io-detach!)))
  (Closer
   (detachable-io
    (close __detachable-io-detach!)))
  (Reader
   (detachable-reader
    (read
     (lambda (self buffer start end need)
       (when self.detached?
         (raise-io-closed detachable-reader-read "reader has been detached"))
       (self.reader.read buffer start end need)))))
  (Writer
   (detachable-writer
    (write
     (lambda (self buffer start end)
       (when self.detached?
         (raise-io-closed detachable-writer-write "writer has been detached"))
       (self.writer.write buffer start end))))))
