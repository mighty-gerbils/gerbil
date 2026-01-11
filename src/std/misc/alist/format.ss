;;; -*- Gerbil -*-
;;; © vyzo
;;; alist writer
(import  :std/io
         :std/io/bio
         :std/format/io
         ./wrapped)
(export #t)

(defmethod {:to-string ConcreteAList}
  (lambda (self)
    XXX
    ))

(defmethod {:write-json ConcreteAList}
  (lambda (self output)
    XXX
    ))

(defwriter-ext (write-alist writer (wa : :list))
  XXX
  )

(defwriter-ext (write-walist writer (wa : ConcreteAList))
  (writer.write-alist wa.alist))
