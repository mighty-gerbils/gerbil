;;; -*- Gerbil -*-
;;; © vyzo
;;; cache management
(import :std/interface
        :std/iter
        :std/sync/spinlock)
(export #t)

(defstruct Cache
  ((name :- :symbol)
   (lock :- SpinLock)))

(interface CacheOps
  (size)  => :fixnum
  (flush!) => :void
  ;; TODO mem-usage
  )

(implement CacheOps ObjectCache
  (size   &ObjectCache-size)
  (flush! __object-cache-flush))

(defcall-interface-method CacheOps flush!
  (__cache-flush! cache))

(defcall-interface-method CacheOps size
  (__cache-size cache)
  :- :fixnum)

;; The global cache -- it is a registry of all (standard) caches in the process
(defstruct (GlobalCache Cache)
  ((caches   :- :list)
   (max-size :- :fixnum))
  final: #t)

(def __global-cache
  (GlobalCache '/system/cache (SpinLock) [] DEFAULT-OBJECT-CACHE-SIZE))

(def (global-cache-size)
  => :fixnum
  (using (global __global-cache : GlobalCache)
    (do-with-spin-lock global.lock :- :fixnum
      (for/fold (r 0) (cache global.caches)
        (fx+ r (__cache-size cache))))))

(def (global-cache-flush!)
  => :void
  (using (global __global-cache : GlobalCache)
    (do-with-spin-lock global.lock
      (for (cache global.caches)
        (__cache-flush! cache)))))

(def (global-cache-register! (cache : Cache))
  => :void
  (using (global __global-cache : GlobalCache)
    (do-with-spin-lock global.lock
      (set! global.caches (cons cache global.caches)))))

;; object caches
(def DEFAULT-OBJECT-CACHE-SIZE 256)

(defstruct (ObjectCache Cache)
  ((objects  :- :list)
   (size     :- :fixnum)
   (max-size :- :fixnum)
   (new      :- :procedure)
   (reset!   :- :procedure))
  final: #t)

(def (object-cache-flush! (cache : ObjectCache))
  (do-with-spin-lock cache.lock
    (set! cache.objects [])
    (set! cache.size 0)))

(def (object-cache-get (cache : ObjectCache))
  (do-with-spin-lock cache.lock :- klass
    (if (null? cache.objects)
      (cache.new)
      (using (p cache.objects :- :pair)
        (let (obj (car p))
          (set! cache.objectx (cdr p))
          (set! cache.size    (fx- cache.size 1))
          obj)))))

(def (object-cache-put! (cache : ObjectCache))
  => :void
  (cache.reset! o)
  (do-with-spin-lock cache.lock
    (when (fx< cache.size cache.max-size)
      (set! cache.objects (cons o cache.objects))
      (set! cache.size    (fx+ cache.size 1)))))

(defsyntax-case defobject-cache ()
  ((_ cache name klass new reset! max-size)
   (and (identifier? #'cache)
        (syntax-local-runtime-type-info? #'klass))
   (with-identifiers
       ((get    #'cache #'cache ".get")
        (put!   #'cache #'cache ".put!")
        (flush! #'cache #'cache ".flush!")
        (size   #'cache #'cache ".size"))
     #'(begin
         (def cache
           (ObjectCache 'name (SpinLock) [] 0
                        (: max-size :fixnum)
                        (: new      :procedure)
                        (: reset!   :procedure)))
         (def (get)
           => klass
           (: (object-cache-get cache) klass))
         (def (put! (o : klass))
           => :void
           (object-cache-put! cache o))
         (def (flush!)
           => :void
           (object-cache-flush! cache))
         (def (size)
           => :fixnum
           (using (cache :- ObjectCache)
             cache.size))
         (global-cache-register! cache))))
  ((_ name klass new reset!)
   (defobject-cache name klass new reset! DEFAULT-OBJECT-CACHE-SIZE)))
