(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1771037607)
  (begin
    (declare
      (not optimize-dead-definitions
           builtin::t
           subtyped::t
           structure::t
           immediate::t
           special::t
           atom::t
           char::t
           boolean::t
           true::t
           false::t
           eof::t
           void::t
           unbound::t
           unbound2::t
           dssl-token::t
           optional::t
           rest::t
           key::t
           number::t
           real::t
           integer::t
           fixnum::t
           bignum::t
           ratnum::t
           flonum::t
           stflonum::t
           haflonum::t
           cpxnum::t
           symbolic::t
           symbol::t
           keyword::t
           list::t
           pair::t
           null::t
           sequence::t
           vector::t
           string::t
           hvector::t
           u8vector::t
           s8vector::t
           u16vector::t
           s16vector::t
           u32vector::t
           s32vector::t
           u64vector::t
           s64vector::t
           f32vector::t
           f64vector::t
           values::t
           box::t
           frame::t
           continuation::t
           promise::t
           weak::t
           foreign::t
           procedure::t
           return::t))
    (define builtin::t
      (let ((__tmp148328 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp148328 '())))
    (define subtyped::t
      (let ((__tmp148329 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp148329 '())))
    (define structure::t
      (let ((__tmp148330 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp148330 '())))
    (define immediate::t
      (let ((__tmp148331 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp148331 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp148332 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp148332 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp148333 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp148333 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp148334 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp148334 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp148335 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp148335 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp148336 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp148336 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp148337 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp148337 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp148338 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp148338 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp148339 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp148339 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp148340 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp148340 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp148341 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp148341 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp148342 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp148342 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp148343 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp148343 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp148344 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp148344 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp148345 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp148345 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp148346 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp148346 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp148347 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp148347 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp148348 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp148348 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp148349 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp148349 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp148350 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp148350 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp148351 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp148351 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp148352 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp148352 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp148353 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp148353 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp148354 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp148354 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp148355 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp148355 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp148356 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp148356 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp148357 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp148357 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp148358 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp148358 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp148359 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp148359 '())))
    (define pair::t
      (let ((__tmp148360 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp148360 '())))
    (define null::t
      (let ((__tmp148361 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp148361 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp148362 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp148362 '())))
    (define vector::t
      (let ((__tmp148363 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp148363 '())))
    (define string::t
      (let ((__tmp148364 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp148364 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp148365 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp148365 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp148366 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp148366 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp148367 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp148367 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp148368 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp148368 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp148369 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp148369 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp148370 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp148370 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp148371 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp148371 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp148372 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp148372 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp148373 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp148373 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp148374 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp148374 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp148375 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp148375 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp148376 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp148376 '())))
    (define box::t
      (let ((__tmp148377 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp148377 '())))
    (define frame::t
      (let ((__tmp148378 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp148378 '())))
    (define continuation::t
      (let ((__tmp148379 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp148379 '())))
    (define promise::t
      (let ((__tmp148380 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp148380 '())))
    (define weak::t
      (let ((__tmp148381 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp148381 '())))
    (define foreign::t
      (let ((__tmp148382 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp148382 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp148383 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp148383 '())))
    (define return::t
      (let ((__tmp148384 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp148384 '())))
    (define time::t
      (let ((__tmp148385 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp148385 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp148386 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp148386 '())))
    (define thread-group::t
      (let ((__tmp148387 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp148387 '())))
    (define mutex::t
      (let ((__tmp148388 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp148388 '())))
    (define condvar::t
      (let ((__tmp148389 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp148389 '())))
    (define port::t
      (let ((__tmp148390 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148390 '())))
    (define object-port::t
      (let ((__tmp148391 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148391 '())))
    (define character-port::t
      (let ((__tmp148392 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148392 '())))
    (define byte-port::t
      (let ((__tmp148393 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148393 '())))
    (define device-port::t
      (let ((__tmp148394 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148394 '())))
    (define vector-port::t
      (let ((__tmp148395 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148395 '())))
    (define string-port::t
      (let ((__tmp148396 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148396 '())))
    (define u8vector-port::t
      (let ((__tmp148397 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148397 '())))
    (define raw-device-port::t
      (let ((__tmp148398 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148398 '())))
    (define tcp-server-port::t
      (let ((__tmp148399 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148399 '())))
    (define udp-port::t
      (let ((__tmp148400 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148400 '())))
    (define directory-port::t
      (let ((__tmp148401 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148401 '())))
    (define event-queue-port::t
      (let ((__tmp148402 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp148402 '())))
    (define table::t
      (let ((__tmp148403 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp148403 '())))
    (define readenv::t
      (let ((__tmp148404 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp148404 '())))
    (define writeenv::t
      (let ((__tmp148405 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp148405 '())))
    (define readtable::t
      (let ((__tmp148406 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp148406 '())))
    (define processor::t
      (let ((__tmp148407 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp148407 '())))
    (define vm::t
      (let ((__tmp148408 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp148408 '())))
    (define file-info::t
      (let ((__tmp148409 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp148409 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp148410 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp148410 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp148411 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp148411 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj148324%_)
        (let ((_%$e148326%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj148324%_)))))
          (if _%$e148326%_
              _%$e148326%_
              (not (let ((__tmp148412
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj148324%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp148412 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj148322%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj148322%_))
            (builtin-object? _%obj148322%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj148320%_)
        (if (let () (declare (not safe)) (##structure? _%obj148320%_))
            (not (let ((__tmp148413
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj148320%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp148413 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj148318%_)
        (if (let () (declare (not safe)) (immediate? _%obj148318%_))
            (if (char? _%obj148318%_)
                '#f
                (if (fixnum? _%obj148318%_) '#f (not (flonum? _%obj148318%_))))
            '#f)))
    (define special?
      (lambda (_%obj148316%_)
        (let () (declare (not safe)) (##special? _%obj148316%_))))
    (define unbound? (lambda (_%obj148314%_) (eq? _%obj148314%_ '#!unbound)))
    (define unbound2? (lambda (_%obj148312%_) (eq? _%obj148312%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj148304%_)
        (let ((_%$e148306%_ (eq? _%obj148304%_ '#!key)))
          (if _%$e148306%_
              _%$e148306%_
              (let ((_%$e148309%_ (eq? _%obj148304%_ '#!optional)))
                (if _%$e148309%_ _%$e148309%_ (eq? _%obj148304%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj148302%_) (eq? _%obj148302%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj148300%_) (eq? _%obj148300%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj148298%_) (eq? _%obj148298%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj148296%_)
        (if (flonum? _%obj148296%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj148296%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj148294%_)
        (if (flonum? _%obj148294%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj148294%_))
            '#f)))
    (define sequence?
      (lambda (_%obj148286%_)
        (let ((_%$e148288%_ (vector? _%obj148286%_)))
          (if _%$e148288%_
              _%$e148288%_
              (let ((_%$e148291%_ (string? _%obj148286%_)))
                (if _%$e148291%_ _%$e148291%_ (hvector? _%obj148286%_)))))))
    (define hvector?
      (lambda (_%obj148257%_)
        (let ((_%$e148259%_ (u8vector? _%obj148257%_)))
          (if _%$e148259%_
              _%$e148259%_
              (let ((_%$e148262%_ (s8vector? _%obj148257%_)))
                (if _%$e148262%_
                    _%$e148262%_
                    (let ((_%$e148265%_ (u16vector? _%obj148257%_)))
                      (if _%$e148265%_
                          _%$e148265%_
                          (let ((_%$e148268%_ (s16vector? _%obj148257%_)))
                            (if _%$e148268%_
                                _%$e148268%_
                                (let ((_%$e148271%_
                                       (u32vector? _%obj148257%_)))
                                  (if _%$e148271%_
                                      _%$e148271%_
                                      (let ((_%$e148274%_
                                             (s32vector? _%obj148257%_)))
                                        (if _%$e148274%_
                                            _%$e148274%_
                                            (let ((_%$e148277%_
                                                   (u64vector? _%obj148257%_)))
                                              (if _%$e148277%_
                                                  _%$e148277%_
                                                  (let ((_%$e148280%_
                                                         (s64vector?
                                                          _%obj148257%_)))
                                                    (if _%$e148280%_
                                                        _%$e148280%_
                                                        (let ((_%$e148283%_
                                                               (f32vector?
                                                                _%obj148257%_)))
                                                          (if _%$e148283%_
                                                              _%$e148283%_
                                                              (f64vector?
                                                               _%obj148257%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj148255%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj148255%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj148255%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj148253%_)
        (let ((__tmp148414
               (let ((__tmp148415 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp148415))))
          (declare (not safe))
          (##structure-instance-of? _%obj148253%_ __tmp148414))))
    (define character-port?
      (lambda (_%obj148251%_)
        (let ((__tmp148416
               (let ((__tmp148417 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp148417))))
          (declare (not safe))
          (##structure-instance-of? _%obj148251%_ __tmp148416))))
    (define device-port?
      (lambda (_%obj148249%_)
        (let ((__tmp148418
               (let ((__tmp148419 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp148419))))
          (declare (not safe))
          (##structure-instance-of? _%obj148249%_ __tmp148418))))
    (define vector-port?
      (lambda (_%obj148247%_)
        (let ((__tmp148420
               (let ((__tmp148421 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp148421))))
          (declare (not safe))
          (##structure-instance-of? _%obj148247%_ __tmp148420))))
    (define string-port?
      (lambda (_%obj148245%_)
        (let ((__tmp148422
               (let ((__tmp148423 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp148423))))
          (declare (not safe))
          (##structure-instance-of? _%obj148245%_ __tmp148422))))
    (define u8vector-port?
      (lambda (_%obj148243%_)
        (let ((__tmp148424
               (let ((__tmp148425 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp148425))))
          (declare (not safe))
          (##structure-instance-of? _%obj148243%_ __tmp148424))))
    (define raw-device-port?
      (lambda (_%obj148241%_)
        (let ((__tmp148426
               (let ((__tmp148427 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp148427))))
          (declare (not safe))
          (##structure-instance-of? _%obj148241%_ __tmp148426))))
    (define tcp-server-port?
      (lambda (_%obj148239%_)
        (let ((__tmp148428
               (let ((__tmp148429 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp148429))))
          (declare (not safe))
          (##structure-instance-of? _%obj148239%_ __tmp148428))))
    (define udp-port?
      (lambda (_%obj148237%_)
        (let ((__tmp148430
               (let ((__tmp148431 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp148431))))
          (declare (not safe))
          (##structure-instance-of? _%obj148237%_ __tmp148430))))
    (define directory-port?
      (lambda (_%obj148235%_)
        (let ((__tmp148432
               (let ((__tmp148433 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp148433))))
          (declare (not safe))
          (##structure-instance-of? _%obj148235%_ __tmp148432))))
    (define event-queue-port?
      (lambda (_%obj148233%_)
        (let ((__tmp148434
               (let ((__tmp148435 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp148435))))
          (declare (not safe))
          (##structure-instance-of? _%obj148233%_ __tmp148434))))
    (define readenv?
      (lambda (_%obj148231%_)
        (let ((__tmp148436
               (let ((__tmp148437 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp148437))))
          (declare (not safe))
          (##structure-instance-of? _%obj148231%_ __tmp148436))))
    (define writeenv?
      (lambda (_%obj148229%_)
        (let ((__tmp148438
               (let ((__tmp148439 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp148439))))
          (declare (not safe))
          (##structure-instance-of? _%obj148229%_ __tmp148438))))
    (define vm?
      (lambda (_%obj148227%_)
        (let ((__tmp148440
               (let ((__tmp148441 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp148441))))
          (declare (not safe))
          (##structure-instance-of? _%obj148227%_ __tmp148440))))))
