(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1770342546)
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
      (let ((__tmp133354 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp133354 '())))
    (define subtyped::t
      (let ((__tmp133355 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp133355 '())))
    (define structure::t
      (let ((__tmp133356 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp133356 '())))
    (define immediate::t
      (let ((__tmp133357 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp133357 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp133358 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp133358 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp133359 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp133359 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp133360 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp133360 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp133361 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp133361 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp133362 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp133362 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp133363 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp133363 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp133364 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp133364 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp133365 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp133365 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp133366 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp133366 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp133367 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp133367 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp133368 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp133368 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp133369 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp133369 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp133370 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp133370 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp133371 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp133371 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp133372 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp133372 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp133373 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp133373 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp133374 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp133374 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp133375 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp133375 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp133376 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp133376 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp133377 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp133377 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp133378 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp133378 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp133379 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp133379 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp133380 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp133380 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp133381 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp133381 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp133382 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp133382 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp133383 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp133383 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp133384 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp133384 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp133385 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp133385 '())))
    (define pair::t
      (let ((__tmp133386 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp133386 '())))
    (define null::t
      (let ((__tmp133387 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp133387 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp133388 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp133388 '())))
    (define vector::t
      (let ((__tmp133389 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp133389 '())))
    (define string::t
      (let ((__tmp133390 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp133390 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp133391 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp133391 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp133392 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp133392 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp133393 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp133393 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp133394 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp133394 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp133395 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp133395 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp133396 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp133396 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp133397 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp133397 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp133398 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp133398 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp133399 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp133399 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp133400 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp133400 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp133401 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp133401 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp133402 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp133402 '())))
    (define box::t
      (let ((__tmp133403 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp133403 '())))
    (define frame::t
      (let ((__tmp133404 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp133404 '())))
    (define continuation::t
      (let ((__tmp133405 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp133405 '())))
    (define promise::t
      (let ((__tmp133406 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp133406 '())))
    (define weak::t
      (let ((__tmp133407 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp133407 '())))
    (define foreign::t
      (let ((__tmp133408 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp133408 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp133409 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp133409 '())))
    (define return::t
      (let ((__tmp133410 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp133410 '())))
    (define time::t
      (let ((__tmp133411 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp133411 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp133412 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp133412 '())))
    (define thread-group::t
      (let ((__tmp133413 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp133413 '())))
    (define mutex::t
      (let ((__tmp133414 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp133414 '())))
    (define condvar::t
      (let ((__tmp133415 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp133415 '())))
    (define port::t
      (let ((__tmp133416 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133416 '())))
    (define object-port::t
      (let ((__tmp133417 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133417 '())))
    (define character-port::t
      (let ((__tmp133418 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133418 '())))
    (define byte-port::t
      (let ((__tmp133419 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133419 '())))
    (define device-port::t
      (let ((__tmp133420 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133420 '())))
    (define vector-port::t
      (let ((__tmp133421 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133421 '())))
    (define string-port::t
      (let ((__tmp133422 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133422 '())))
    (define u8vector-port::t
      (let ((__tmp133423 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133423 '())))
    (define raw-device-port::t
      (let ((__tmp133424 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133424 '())))
    (define tcp-server-port::t
      (let ((__tmp133425 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133425 '())))
    (define udp-port::t
      (let ((__tmp133426 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133426 '())))
    (define directory-port::t
      (let ((__tmp133427 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133427 '())))
    (define event-queue-port::t
      (let ((__tmp133428 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp133428 '())))
    (define table::t
      (let ((__tmp133429 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp133429 '())))
    (define readenv::t
      (let ((__tmp133430 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp133430 '())))
    (define writeenv::t
      (let ((__tmp133431 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp133431 '())))
    (define readtable::t
      (let ((__tmp133432 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp133432 '())))
    (define processor::t
      (let ((__tmp133433 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp133433 '())))
    (define vm::t
      (let ((__tmp133434 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp133434 '())))
    (define file-info::t
      (let ((__tmp133435 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp133435 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp133436 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp133436 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp133437 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp133437 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj133350%_)
        (let ((_%$e133352%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj133350%_)))))
          (if _%$e133352%_
              _%$e133352%_
              (not (let ((__tmp133438
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj133350%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp133438 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj133348%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj133348%_))
            (builtin-object? _%obj133348%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj133346%_)
        (if (let () (declare (not safe)) (##structure? _%obj133346%_))
            (not (let ((__tmp133439
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj133346%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp133439 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj133344%_)
        (if (let () (declare (not safe)) (immediate? _%obj133344%_))
            (if (char? _%obj133344%_)
                '#f
                (if (fixnum? _%obj133344%_) '#f (not (flonum? _%obj133344%_))))
            '#f)))
    (define special?
      (lambda (_%obj133342%_)
        (let () (declare (not safe)) (##special? _%obj133342%_))))
    (define unbound? (lambda (_%obj133340%_) (eq? _%obj133340%_ '#!unbound)))
    (define unbound2? (lambda (_%obj133338%_) (eq? _%obj133338%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj133330%_)
        (let ((_%$e133332%_ (eq? _%obj133330%_ '#!key)))
          (if _%$e133332%_
              _%$e133332%_
              (let ((_%$e133335%_ (eq? _%obj133330%_ '#!optional)))
                (if _%$e133335%_ _%$e133335%_ (eq? _%obj133330%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj133328%_) (eq? _%obj133328%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj133326%_) (eq? _%obj133326%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj133324%_) (eq? _%obj133324%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj133322%_)
        (if (flonum? _%obj133322%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj133322%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj133320%_)
        (if (flonum? _%obj133320%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj133320%_))
            '#f)))
    (define sequence?
      (lambda (_%obj133312%_)
        (let ((_%$e133314%_ (vector? _%obj133312%_)))
          (if _%$e133314%_
              _%$e133314%_
              (let ((_%$e133317%_ (string? _%obj133312%_)))
                (if _%$e133317%_ _%$e133317%_ (hvector? _%obj133312%_)))))))
    (define hvector?
      (lambda (_%obj133283%_)
        (let ((_%$e133285%_ (u8vector? _%obj133283%_)))
          (if _%$e133285%_
              _%$e133285%_
              (let ((_%$e133288%_ (s8vector? _%obj133283%_)))
                (if _%$e133288%_
                    _%$e133288%_
                    (let ((_%$e133291%_ (u16vector? _%obj133283%_)))
                      (if _%$e133291%_
                          _%$e133291%_
                          (let ((_%$e133294%_ (s16vector? _%obj133283%_)))
                            (if _%$e133294%_
                                _%$e133294%_
                                (let ((_%$e133297%_
                                       (u32vector? _%obj133283%_)))
                                  (if _%$e133297%_
                                      _%$e133297%_
                                      (let ((_%$e133300%_
                                             (s32vector? _%obj133283%_)))
                                        (if _%$e133300%_
                                            _%$e133300%_
                                            (let ((_%$e133303%_
                                                   (u64vector? _%obj133283%_)))
                                              (if _%$e133303%_
                                                  _%$e133303%_
                                                  (let ((_%$e133306%_
                                                         (s64vector?
                                                          _%obj133283%_)))
                                                    (if _%$e133306%_
                                                        _%$e133306%_
                                                        (let ((_%$e133309%_
                                                               (f32vector?
                                                                _%obj133283%_)))
                                                          (if _%$e133309%_
                                                              _%$e133309%_
                                                              (f64vector?
                                                               _%obj133283%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj133281%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj133281%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj133281%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj133279%_)
        (let ((__tmp133440
               (let ((__tmp133441 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp133441))))
          (declare (not safe))
          (##structure-instance-of? _%obj133279%_ __tmp133440))))
    (define character-port?
      (lambda (_%obj133277%_)
        (let ((__tmp133442
               (let ((__tmp133443 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp133443))))
          (declare (not safe))
          (##structure-instance-of? _%obj133277%_ __tmp133442))))
    (define device-port?
      (lambda (_%obj133275%_)
        (let ((__tmp133444
               (let ((__tmp133445 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp133445))))
          (declare (not safe))
          (##structure-instance-of? _%obj133275%_ __tmp133444))))
    (define vector-port?
      (lambda (_%obj133273%_)
        (let ((__tmp133446
               (let ((__tmp133447 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp133447))))
          (declare (not safe))
          (##structure-instance-of? _%obj133273%_ __tmp133446))))
    (define string-port?
      (lambda (_%obj133271%_)
        (let ((__tmp133448
               (let ((__tmp133449 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp133449))))
          (declare (not safe))
          (##structure-instance-of? _%obj133271%_ __tmp133448))))
    (define u8vector-port?
      (lambda (_%obj133269%_)
        (let ((__tmp133450
               (let ((__tmp133451 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp133451))))
          (declare (not safe))
          (##structure-instance-of? _%obj133269%_ __tmp133450))))
    (define raw-device-port?
      (lambda (_%obj133267%_)
        (let ((__tmp133452
               (let ((__tmp133453 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp133453))))
          (declare (not safe))
          (##structure-instance-of? _%obj133267%_ __tmp133452))))
    (define tcp-server-port?
      (lambda (_%obj133265%_)
        (let ((__tmp133454
               (let ((__tmp133455 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp133455))))
          (declare (not safe))
          (##structure-instance-of? _%obj133265%_ __tmp133454))))
    (define udp-port?
      (lambda (_%obj133263%_)
        (let ((__tmp133456
               (let ((__tmp133457 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp133457))))
          (declare (not safe))
          (##structure-instance-of? _%obj133263%_ __tmp133456))))
    (define directory-port?
      (lambda (_%obj133261%_)
        (let ((__tmp133458
               (let ((__tmp133459 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp133459))))
          (declare (not safe))
          (##structure-instance-of? _%obj133261%_ __tmp133458))))
    (define event-queue-port?
      (lambda (_%obj133259%_)
        (let ((__tmp133460
               (let ((__tmp133461 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp133461))))
          (declare (not safe))
          (##structure-instance-of? _%obj133259%_ __tmp133460))))
    (define readenv?
      (lambda (_%obj133257%_)
        (let ((__tmp133462
               (let ((__tmp133463 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp133463))))
          (declare (not safe))
          (##structure-instance-of? _%obj133257%_ __tmp133462))))
    (define writeenv?
      (lambda (_%obj133255%_)
        (let ((__tmp133464
               (let ((__tmp133465 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp133465))))
          (declare (not safe))
          (##structure-instance-of? _%obj133255%_ __tmp133464))))
    (define vm?
      (lambda (_%obj133253%_)
        (let ((__tmp133466
               (let ((__tmp133467 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp133467))))
          (declare (not safe))
          (##structure-instance-of? _%obj133253%_ __tmp133466))))))
