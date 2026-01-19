(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1768865822)
  (begin
    (declare
      (not optimize-dead-definitions
           builtin::t
           subtyped::t
           record::t
           immediate::t
           char::t
           boolean::t
           atom::t
           void::t
           eof::t
           true::t
           false::t
           special::t
           number::t
           real::t
           integer::t
           fixnum::t
           bignum::t
           ratnum::t
           flonum::t
           haflonum::t
           stflonuam::t
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
      (let ((__tmp112352 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp112352 '())))
    (define subtyped::t
      (let ((__tmp112353 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp112353 '())))
    (define structure::t
      (let ((__tmp112354 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp112354 '())))
    (define immediate::t
      (let ((__tmp112355 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp112355 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp112356 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp112356 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp112357 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp112357 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp112358 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp112358 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp112359 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp112359 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp112360 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp112360 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp112361 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp112361 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp112362 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp112362 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp112363 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp112363 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp112364 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp112364 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp112365 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp112365 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp112366 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp112366 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp112367 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp112367 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp112368 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp112368 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp112369 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp112369 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp112370 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp112370 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp112371 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp112371 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp112372 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp112372 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp112373 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp112373 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp112374 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp112374 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp112375 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp112375 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp112376 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp112376 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp112377 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp112377 '())))
    (define pair::t
      (let ((__tmp112378 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp112378 'subtyped::t)))
    (define null::t
      (let ((__tmp112379 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp112379 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp112380 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp112380 '())))
    (define vector::t
      (let ((__tmp112381 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp112381 '())))
    (define string::t
      (let ((__tmp112382 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp112382 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp112383 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp112383 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp112384 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp112384 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp112385 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp112385 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp112386 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp112386 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp112387 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp112387 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp112388 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp112388 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp112389 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp112389 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp112390 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp112390 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp112391 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp112391 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp112392 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp112392 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp112393 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp112393 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp112394 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp112394 '())))
    (define box::t
      (let ((__tmp112395 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp112395 '())))
    (define frame::t
      (let ((__tmp112396 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp112396 '())))
    (define continuation::t
      (let ((__tmp112397 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp112397 '())))
    (define promise::t
      (let ((__tmp112398 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp112398 '())))
    (define weak::t
      (let ((__tmp112399 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp112399 '())))
    (define foreign::t
      (let ((__tmp112400 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp112400 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp112401 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp112401 '())))
    (define return::t
      (let ((__tmp112402 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp112402 '())))
    (define time::t
      (let ((__tmp112403 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp112403 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp112404 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp112404 '())))
    (define thread-group::t
      (let ((__tmp112405 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp112405 '())))
    (define mutex::t
      (let ((__tmp112406 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp112406 '())))
    (define condvar::t
      (let ((__tmp112407 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp112407 '())))
    (define port::t
      (let ((__tmp112408 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112408 '())))
    (define object-port::t
      (let ((__tmp112409 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112409 '())))
    (define character-port::t
      (let ((__tmp112410 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112410 '())))
    (define byte-port::t
      (let ((__tmp112411 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112411 '())))
    (define device-port::t
      (let ((__tmp112412 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112412 '())))
    (define vector-port::t
      (let ((__tmp112413 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112413 '())))
    (define string-port::t
      (let ((__tmp112414 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112414 '())))
    (define u8vector-port::t
      (let ((__tmp112415 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112415 '())))
    (define raw-device-port::t
      (let ((__tmp112416 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112416 '())))
    (define tcp-server-port::t
      (let ((__tmp112417 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112417 '())))
    (define udp-port::t
      (let ((__tmp112418 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112418 '())))
    (define directory-port::t
      (let ((__tmp112419 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112419 '())))
    (define event-queue-port::t
      (let ((__tmp112420 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112420 '())))
    (define table::t
      (let ((__tmp112421 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp112421 '())))
    (define readenv::t
      (let ((__tmp112422 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112422 '())))
    (define writeenv::t
      (let ((__tmp112423 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112423 '())))
    (define readtable::t
      (let ((__tmp112424 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp112424 '())))
    (define processor::t
      (let ((__tmp112425 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp112425 '())))
    (define vm::t
      (let ((__tmp112426 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp112426 '())))
    (define file-info::t
      (let ((__tmp112427 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112427 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp112428 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112428 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp112429 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112429 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj112348%_)
        (let ((_%$e112350%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj112348%_)))))
          (if _%$e112350%_
              _%$e112350%_
              (not (let ((__tmp112430
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj112348%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp112430 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj112346%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj112346%_))
            (builtin-object? _%obj112346%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj112344%_)
        (if (let () (declare (not safe)) (##structure? _%obj112344%_))
            (not (let ((__tmp112431
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj112344%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp112431 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj112342%_)
        (if (let () (declare (not safe)) (immediate? _%obj112342%_))
            (if (char? _%obj112342%_)
                '#f
                (if (fixnum? _%obj112342%_) '#f (not (flonum? _%obj112342%_))))
            '#f)))
    (define special?
      (lambda (_%obj112340%_)
        (let () (declare (not safe)) (##special? _%obj112340%_))))
    (define stflonum?
      (lambda (_%obj112338%_)
        (if (flonum? _%obj112338%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj112338%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj112336%_)
        (if (flonum? _%obj112336%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj112336%_))
            '#f)))
    (define sequence?
      (lambda (_%obj112328%_)
        (let ((_%$e112330%_ (vector? _%obj112328%_)))
          (if _%$e112330%_
              _%$e112330%_
              (let ((_%$e112333%_ (string? _%obj112328%_)))
                (if _%$e112333%_ _%$e112333%_ (hvector? _%obj112328%_)))))))
    (define hvector?
      (lambda (_%obj112299%_)
        (let ((_%$e112301%_ (u8vector? _%obj112299%_)))
          (if _%$e112301%_
              _%$e112301%_
              (let ((_%$e112304%_ (s8vector? _%obj112299%_)))
                (if _%$e112304%_
                    _%$e112304%_
                    (let ((_%$e112307%_ (u16vector? _%obj112299%_)))
                      (if _%$e112307%_
                          _%$e112307%_
                          (let ((_%$e112310%_ (s16vector? _%obj112299%_)))
                            (if _%$e112310%_
                                _%$e112310%_
                                (let ((_%$e112313%_
                                       (u32vector? _%obj112299%_)))
                                  (if _%$e112313%_
                                      _%$e112313%_
                                      (let ((_%$e112316%_
                                             (s32vector? _%obj112299%_)))
                                        (if _%$e112316%_
                                            _%$e112316%_
                                            (let ((_%$e112319%_
                                                   (u64vector? _%obj112299%_)))
                                              (if _%$e112319%_
                                                  _%$e112319%_
                                                  (let ((_%$e112322%_
                                                         (s64vector?
                                                          _%obj112299%_)))
                                                    (if _%$e112322%_
                                                        _%$e112322%_
                                                        (let ((_%$e112325%_
                                                               (f32vector?
                                                                _%obj112299%_)))
                                                          (if _%$e112325%_
                                                              _%$e112325%_
                                                              (f64vector?
                                                               _%obj112299%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj112297%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj112297%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj112297%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj112295%_)
        (let ((__tmp112432
               (let ((__tmp112433 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp112433))))
          (declare (not safe))
          (##structure-instance-of? _%obj112295%_ __tmp112432))))
    (define character-port?
      (lambda (_%obj112293%_)
        (let ((__tmp112434
               (let ((__tmp112435 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp112435))))
          (declare (not safe))
          (##structure-instance-of? _%obj112293%_ __tmp112434))))
    (define device-port?
      (lambda (_%obj112291%_)
        (let ((__tmp112436
               (let ((__tmp112437 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112437))))
          (declare (not safe))
          (##structure-instance-of? _%obj112291%_ __tmp112436))))
    (define vector-port?
      (lambda (_%obj112289%_)
        (let ((__tmp112438
               (let ((__tmp112439 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112439))))
          (declare (not safe))
          (##structure-instance-of? _%obj112289%_ __tmp112438))))
    (define string-port?
      (lambda (_%obj112287%_)
        (let ((__tmp112440
               (let ((__tmp112441 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp112441))))
          (declare (not safe))
          (##structure-instance-of? _%obj112287%_ __tmp112440))))
    (define u8vector-port?
      (lambda (_%obj112285%_)
        (let ((__tmp112442
               (let ((__tmp112443 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112443))))
          (declare (not safe))
          (##structure-instance-of? _%obj112285%_ __tmp112442))))
    (define raw-device-port?
      (lambda (_%obj112283%_)
        (let ((__tmp112444
               (let ((__tmp112445 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112445))))
          (declare (not safe))
          (##structure-instance-of? _%obj112283%_ __tmp112444))))
    (define tcp-server-port?
      (lambda (_%obj112281%_)
        (let ((__tmp112446
               (let ((__tmp112447 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp112447))))
          (declare (not safe))
          (##structure-instance-of? _%obj112281%_ __tmp112446))))
    (define udp-port?
      (lambda (_%obj112279%_)
        (let ((__tmp112448
               (let ((__tmp112449 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp112449))))
          (declare (not safe))
          (##structure-instance-of? _%obj112279%_ __tmp112448))))
    (define directory-port?
      (lambda (_%obj112277%_)
        (let ((__tmp112450
               (let ((__tmp112451 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp112451))))
          (declare (not safe))
          (##structure-instance-of? _%obj112277%_ __tmp112450))))
    (define event-queue-port?
      (lambda (_%obj112275%_)
        (let ((__tmp112452
               (let ((__tmp112453 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp112453))))
          (declare (not safe))
          (##structure-instance-of? _%obj112275%_ __tmp112452))))
    (define readenv?
      (lambda (_%obj112273%_)
        (let ((__tmp112454
               (let ((__tmp112455 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp112455))))
          (declare (not safe))
          (##structure-instance-of? _%obj112273%_ __tmp112454))))
    (define writeenv?
      (lambda (_%obj112271%_)
        (let ((__tmp112456
               (let ((__tmp112457 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp112457))))
          (declare (not safe))
          (##structure-instance-of? _%obj112271%_ __tmp112456))))
    (define vm?
      (lambda (_%obj112269%_)
        (let ((__tmp112458
               (let ((__tmp112459 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp112459))))
          (declare (not safe))
          (##structure-instance-of? _%obj112269%_ __tmp112458))))))
