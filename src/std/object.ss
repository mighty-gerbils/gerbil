;;; -*- Gerbil -*-
;;; © vyzo
;;; object related utilities
(export #t)

(defsyntax-case defobject-cachee ()
  ((_ name klass new reset!)
   (with-identifiers
       ((cache #'name #'name "__cache")
        (mx    #'name #'name "__cache-mx")
        (get   #'name #'name ".get")
        (put!  #'name #'name ".put!"))
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
             (set! cache (cons o cache))))))))
