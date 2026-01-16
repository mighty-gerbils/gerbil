;;; -*- Gerbil -*-
;;; © vyzo
;;; object related utilities
(export #t)

(defsyntax (defobject-cachee stx)
  (syntax-case stx ()
    ((_ name klass new reset!)
     (with-syntax ((cache (stx-identifier #'name #'name "__cache"))
                   (mx    (stx-identifier #'name #'name "__cache-mx"))
                   (get   (stx-identifier #'name #'name ".get"))
                   (put!  (stx-identifier #'name #'name ".put!")))
       #'(begin
           (def cache [])
           (def mx (make-mutex 'name))
           (def (get) => klass
             (do-with-lock mx :- klass
               (if (null? cache)
                 (new)
                 (using (p cache :- :pair)
                   (let (obj (car p))
                     (set! cache (cdr p))
                     obj)))))
           (def (put! (o : klass))
             (reset! o)
             (do-with-lock mx
               (set! cache (cons o cache)))))))))
