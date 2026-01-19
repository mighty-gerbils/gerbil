(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1768864947)
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
      (let ((__tmp112339 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp112339 '())))
    (define subtyped::t
      (let ((__tmp112340 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp112340 '())))
    (define structure::t
      (let ((__tmp112341 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp112341 '())))
    (define immediate::t
      (let ((__tmp112342 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp112342 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp112343 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp112343 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp112344 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp112344 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp112345 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp112345 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp112346 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp112346 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp112347 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp112347 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp112348 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp112348 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp112349 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp112349 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp112350 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp112350 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp112351 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp112351 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp112352 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp112352 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp112353 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp112353 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp112354 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp112354 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp112355 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp112355 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp112356 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp112356 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp112357 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp112357 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp112358 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp112358 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp112359 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp112359 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp112360 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp112360 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp112361 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp112361 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp112362 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp112362 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp112363 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp112363 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp112364 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp112364 '())))
    (define pair::t
      (let ((__tmp112365 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp112365 'subtyped::t)))
    (define null::t
      (let ((__tmp112366 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp112366 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp112367 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp112367 '())))
    (define vector::t
      (let ((__tmp112368 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp112368 '())))
    (define string::t
      (let ((__tmp112369 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp112369 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp112370 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp112370 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp112371 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp112371 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp112372 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp112372 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp112373 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp112373 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp112374 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp112374 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp112375 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp112375 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp112376 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp112376 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp112377 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp112377 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp112378 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp112378 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp112379 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp112379 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp112380 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp112380 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp112381 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp112381 '())))
    (define box::t
      (let ((__tmp112382 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp112382 '())))
    (define frame::t
      (let ((__tmp112383 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp112383 '())))
    (define continuation::t
      (let ((__tmp112384 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp112384 '())))
    (define promise::t
      (let ((__tmp112385 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp112385 '())))
    (define weak::t
      (let ((__tmp112386 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp112386 '())))
    (define foreign::t
      (let ((__tmp112387 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp112387 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp112388 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp112388 '())))
    (define return::t
      (let ((__tmp112389 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp112389 '())))
    (define time::t
      (let ((__tmp112390 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp112390 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp112391 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp112391 '())))
    (define thread-group::t
      (let ((__tmp112392 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp112392 '())))
    (define mutex::t
      (let ((__tmp112393 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp112393 '())))
    (define condvar::t
      (let ((__tmp112394 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp112394 '())))
    (define port::t
      (let ((__tmp112395 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112395 '())))
    (define object-port::t
      (let ((__tmp112396 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112396 '())))
    (define character-port::t
      (let ((__tmp112397 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112397 '())))
    (define byte-port::t
      (let ((__tmp112398 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112398 '())))
    (define device-port::t
      (let ((__tmp112399 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112399 '())))
    (define vector-port::t
      (let ((__tmp112400 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112400 '())))
    (define string-port::t
      (let ((__tmp112401 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112401 '())))
    (define u8vector-port::t
      (let ((__tmp112402 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112402 '())))
    (define raw-device-port::t
      (let ((__tmp112403 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112403 '())))
    (define tcp-server-port::t
      (let ((__tmp112404 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112404 '())))
    (define udp-port::t
      (let ((__tmp112405 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112405 '())))
    (define directory-port::t
      (let ((__tmp112406 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112406 '())))
    (define event-queue-port::t
      (let ((__tmp112407 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112407 '())))
    (define table::t
      (let ((__tmp112408 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp112408 '())))
    (define readenv::t
      (let ((__tmp112409 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112409 '())))
    (define writeenv::t
      (let ((__tmp112410 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112410 '())))
    (define readtable::t
      (let ((__tmp112411 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp112411 '())))
    (define processor::t
      (let ((__tmp112412 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp112412 '())))
    (define vm::t
      (let ((__tmp112413 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp112413 '())))
    (define file-info::t
      (let ((__tmp112414 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112414 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp112415 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112415 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp112416 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112416 '((acyclic: . #t)))))
    (define atom?
      (lambda (_%obj112338%_)
        (if (let () (declare (not safe)) (immediate? _%obj112338%_))
            (if (char? _%obj112338%_) '#f (not (fixnum? _%obj112338%_)))
            '#f)))
    (define special?
      (lambda (_%obj112336%_)
        (let () (declare (not safe)) (##special? _%obj112336%_))))
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
        (let ((__tmp112417
               (let ((__tmp112418 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp112418))))
          (declare (not safe))
          (##structure-instance-of? _%obj112295%_ __tmp112417))))
    (define character-port?
      (lambda (_%obj112293%_)
        (let ((__tmp112419
               (let ((__tmp112420 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp112420))))
          (declare (not safe))
          (##structure-instance-of? _%obj112293%_ __tmp112419))))
    (define device-port?
      (lambda (_%obj112291%_)
        (let ((__tmp112421
               (let ((__tmp112422 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112422))))
          (declare (not safe))
          (##structure-instance-of? _%obj112291%_ __tmp112421))))
    (define vector-port?
      (lambda (_%obj112289%_)
        (let ((__tmp112423
               (let ((__tmp112424 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112424))))
          (declare (not safe))
          (##structure-instance-of? _%obj112289%_ __tmp112423))))
    (define string-port?
      (lambda (_%obj112287%_)
        (let ((__tmp112425
               (let ((__tmp112426 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp112426))))
          (declare (not safe))
          (##structure-instance-of? _%obj112287%_ __tmp112425))))
    (define u8vector-port?
      (lambda (_%obj112285%_)
        (let ((__tmp112427
               (let ((__tmp112428 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112428))))
          (declare (not safe))
          (##structure-instance-of? _%obj112285%_ __tmp112427))))
    (define raw-device-port?
      (lambda (_%obj112283%_)
        (let ((__tmp112429
               (let ((__tmp112430 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112430))))
          (declare (not safe))
          (##structure-instance-of? _%obj112283%_ __tmp112429))))
    (define tcp-server-port?
      (lambda (_%obj112281%_)
        (let ((__tmp112431
               (let ((__tmp112432 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp112432))))
          (declare (not safe))
          (##structure-instance-of? _%obj112281%_ __tmp112431))))
    (define udp-port?
      (lambda (_%obj112279%_)
        (let ((__tmp112433
               (let ((__tmp112434 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp112434))))
          (declare (not safe))
          (##structure-instance-of? _%obj112279%_ __tmp112433))))
    (define directory-port?
      (lambda (_%obj112277%_)
        (let ((__tmp112435
               (let ((__tmp112436 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp112436))))
          (declare (not safe))
          (##structure-instance-of? _%obj112277%_ __tmp112435))))
    (define event-queue-port?
      (lambda (_%obj112275%_)
        (let ((__tmp112437
               (let ((__tmp112438 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp112438))))
          (declare (not safe))
          (##structure-instance-of? _%obj112275%_ __tmp112437))))
    (define readenv?
      (lambda (_%obj112273%_)
        (let ((__tmp112439
               (let ((__tmp112440 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp112440))))
          (declare (not safe))
          (##structure-instance-of? _%obj112273%_ __tmp112439))))
    (define writeenv?
      (lambda (_%obj112271%_)
        (let ((__tmp112441
               (let ((__tmp112442 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp112442))))
          (declare (not safe))
          (##structure-instance-of? _%obj112271%_ __tmp112441))))
    (define vm?
      (lambda (_%obj112269%_)
        (let ((__tmp112443
               (let ((__tmp112444 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp112444))))
          (declare (not safe))
          (##structure-instance-of? _%obj112269%_ __tmp112443))))))
