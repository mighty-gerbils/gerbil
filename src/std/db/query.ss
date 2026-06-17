;;; -*- Gerbil -*-
;;; © vyzo
;;; DB query iteration
(import :std/error
        :std/interface
        :std/io/interface
        :std/iter
        ./interface)
(export new-query-iterator)

(defstruct query-iterator ((query :- Query)))

(def (new-query-iterator (query : Query))
  => Iterator
  (query.start!)
  (Iterator (query-iterator query)))

(implement Iterator query-iterator
  (next!
   (lambda (self)
     (if self.query
       (let (result (self.query.fetch!))
         (if (eof-object? result)
           (begin
             (self.query.close)
             (set! self.query #f)
             #!eof)
           (self.query.row)))
       #!eof))))
