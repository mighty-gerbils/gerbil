(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712784664)
  (begin
    (declare
      (not optimize-dead-definitions
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
    (define immediate::t
      (let () (declare (not safe)) (__make-system-class 'immediate '())))
    (define char::t
      (let ((__tmp99388 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp99388)))
    (define boolean::t
      (let ((__tmp99389 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp99389)))
    (define atom::t
      (let ((__tmp99390 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp99390)))
    (define void::t
      (let ((__tmp99391 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp99391)))
    (define eof::t
      (let ((__tmp99392 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp99392)))
    (define true::t
      (let ((__tmp99393 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp99393)))
    (define false::t
      (let ((__tmp99394 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp99394)))
    (define special::t
      (let ((__tmp99395 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp99395)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp99396 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp99396)))
    (define integer::t
      (let ((__tmp99397 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp99397)))
    (define fixnum::t
      (let ((__tmp99398 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp99398)))
    (define bignum::t
      (let ((__tmp99399 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp99399)))
    (define ratnum::t
      (let ((__tmp99400 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp99400)))
    (define flonum::t
      (let ((__tmp99401 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp99401)))
    (define cpxnum::t
      (let ((__tmp99402 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp99402)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp99403 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp99403)))
    (define keyword::t
      (let ((__tmp99404 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp99404)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp99405 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp99405)))
    (define null::t
      (let ((__tmp99406 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp99406)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp99407 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp99407)))
    (define string::t
      (let ((__tmp99408 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp99408)))
    (define hvector::t
      (let ((__tmp99409 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp99409)))
    (define u8vector::t
      (let ((__tmp99410 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp99410)))
    (define s8vector::t
      (let ((__tmp99411 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp99411)))
    (define u16vector::t
      (let ((__tmp99412 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp99412)))
    (define s16vector::t
      (let ((__tmp99413 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp99413)))
    (define u32vector::t
      (let ((__tmp99414 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp99414)))
    (define s32vector::t
      (let ((__tmp99415 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp99415)))
    (define u64vector::t
      (let ((__tmp99416 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp99416)))
    (define s64vector::t
      (let ((__tmp99417 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp99417)))
    (define f32vector::t
      (let ((__tmp99418 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp99418)))
    (define f64vector::t
      (let ((__tmp99419 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp99419)))
    (define values::t
      (let () (declare (not safe)) (__make-system-class 'values '())))
    (define box::t
      (let () (declare (not safe)) (__make-system-class 'box '())))
    (define frame::t
      (let () (declare (not safe)) (__make-system-class 'frame '())))
    (define continuation::t
      (let () (declare (not safe)) (__make-system-class 'continuation '())))
    (define promise::t
      (let () (declare (not safe)) (__make-system-class 'promise '())))
    (define weak::t
      (let () (declare (not safe)) (__make-system-class 'weak '())))
    (define foreign::t
      (let () (declare (not safe)) (__make-system-class 'foreign '())))
    (define procedure::t
      (let () (declare (not safe)) (__make-system-class 'procedure '())))
    (define return::t
      (let () (declare (not safe)) (__make-system-class 'return '())))
    (define time::t
      (let ((__tmp99420 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp99420)))
    (define thread::t
      (let ((__tmp99421 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp99421)))
    (define thread-group::t
      (let ((__tmp99422 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp99422)))
    (define mutex::t
      (let ((__tmp99423 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp99423)))
    (define condvar::t
      (let ((__tmp99424 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp99424)))
    (define port::t
      (let ((__tmp99425 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp99425)))
    (define object-port::t
      (let ((__tmp99426 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp99426)))
    (define character-port::t
      (let ((__tmp99427 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp99427)))
    (define byte-port::t
      (let ((__tmp99428 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp99428)))
    (define device-port::t
      (let ((__tmp99429 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp99429)))
    (define vector-port::t
      (let ((__tmp99430 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp99430)))
    (define string-port::t
      (let ((__tmp99431 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp99431)))
    (define u8vector-port::t
      (let ((__tmp99432 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp99432)))
    (define raw-device-port::t
      (let ((__tmp99433 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp99433)))
    (define tcp-server-port::t
      (let ((__tmp99434 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp99434)))
    (define udp-port::t
      (let ((__tmp99435 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp99435)))
    (define directory-port::t
      (let ((__tmp99436 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp99436)))
    (define event-queue-port::t
      (let ((__tmp99437 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp99437)))
    (define table::t
      (let ((__tmp99438 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp99438)))
    (define readenv::t
      (let ((__tmp99439 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp99439)))
    (define writeenv::t
      (let ((__tmp99440 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp99440)))
    (define readtable::t
      (let ((__tmp99441 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp99441)))
    (define processor::t
      (let ((__tmp99442 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp99442)))
    (define vm::t
      (let ((__tmp99443 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp99443)))
    (define file-info::t
      (let ((__tmp99444 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp99444)))
    (define socket-info::t
      (let ((__tmp99445 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp99445)))
    (define address-info::t
      (let ((__tmp99446 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp99446)))
    (define atom?
      (lambda (_%obj99387%_)
        (if (let () (declare (not safe)) (immediate? _%obj99387%_))
            (if (not (char? _%obj99387%_)) (not (fixnum? _%obj99387%_)) '#f)
            '#f)))
    (define special?
      (lambda (_%obj99385%_)
        (if (let ((__tmp99447
                   (let () (declare (not safe)) (##type _%obj99385%_))))
              (declare (not safe))
              (##fx= __tmp99447 '2))
            (if (not (char? _%obj99385%_))
                (if (not (null? _%obj99385%_))
                    (if (not (boolean? _%obj99385%_))
                        (if (not (eq? _%obj99385%_ '#!void))
                            (not (eof-object? _%obj99385%_))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj99377%_)
        (let ((_%$e99379%_ (vector? _%obj99377%_)))
          (if _%$e99379%_
              _%$e99379%_
              (let ((_%$e99382%_ (string? _%obj99377%_)))
                (if _%$e99382%_ _%$e99382%_ (hvector? _%obj99377%_)))))))
    (define hvector?
      (lambda (_%obj99348%_)
        (let ((_%$e99350%_ (u8vector? _%obj99348%_)))
          (if _%$e99350%_
              _%$e99350%_
              (let ((_%$e99353%_ (s8vector? _%obj99348%_)))
                (if _%$e99353%_
                    _%$e99353%_
                    (let ((_%$e99356%_ (u16vector? _%obj99348%_)))
                      (if _%$e99356%_
                          _%$e99356%_
                          (let ((_%$e99359%_ (s16vector? _%obj99348%_)))
                            (if _%$e99359%_
                                _%$e99359%_
                                (let ((_%$e99362%_ (u32vector? _%obj99348%_)))
                                  (if _%$e99362%_
                                      _%$e99362%_
                                      (let ((_%$e99365%_
                                             (s32vector? _%obj99348%_)))
                                        (if _%$e99365%_
                                            _%$e99365%_
                                            (let ((_%$e99368%_
                                                   (u64vector? _%obj99348%_)))
                                              (if _%$e99368%_
                                                  _%$e99368%_
                                                  (let ((_%$e99371%_
                                                         (s64vector?
                                                          _%obj99348%_)))
                                                    (if _%$e99371%_
                                                        _%$e99371%_
                                                        (let ((_%$e99374%_
                                                               (f32vector?
                                                                _%obj99348%_)))
                                                          (if _%$e99374%_
                                                              _%$e99374%_
                                                              (f64vector?
                                                               _%obj99348%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj99346%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj99346%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj99346%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj99344%_)
        (let ((__tmp99448
               (let ((__tmp99449 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp99449))))
          (declare (not safe))
          (##structure-instance-of? _%obj99344%_ __tmp99448))))
    (define character-port?
      (lambda (_%obj99342%_)
        (let ((__tmp99450
               (let ((__tmp99451 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp99451))))
          (declare (not safe))
          (##structure-instance-of? _%obj99342%_ __tmp99450))))
    (define device-port?
      (lambda (_%obj99340%_)
        (let ((__tmp99452
               (let ((__tmp99453 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp99453))))
          (declare (not safe))
          (##structure-instance-of? _%obj99340%_ __tmp99452))))
    (define vector-port?
      (lambda (_%obj99338%_)
        (let ((__tmp99454
               (let ((__tmp99455 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp99455))))
          (declare (not safe))
          (##structure-instance-of? _%obj99338%_ __tmp99454))))
    (define string-port?
      (lambda (_%obj99336%_)
        (let ((__tmp99456
               (let ((__tmp99457 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp99457))))
          (declare (not safe))
          (##structure-instance-of? _%obj99336%_ __tmp99456))))
    (define u8vector-port?
      (lambda (_%obj99334%_)
        (let ((__tmp99458
               (let ((__tmp99459 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp99459))))
          (declare (not safe))
          (##structure-instance-of? _%obj99334%_ __tmp99458))))
    (define raw-device-port?
      (lambda (_%obj99332%_)
        (let ((__tmp99460
               (let ((__tmp99461 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp99461))))
          (declare (not safe))
          (##structure-instance-of? _%obj99332%_ __tmp99460))))
    (define tcp-server-port?
      (lambda (_%obj99330%_)
        (let ((__tmp99462
               (let ((__tmp99463 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp99463))))
          (declare (not safe))
          (##structure-instance-of? _%obj99330%_ __tmp99462))))
    (define udp-port?
      (lambda (_%obj99328%_)
        (let ((__tmp99464
               (let ((__tmp99465 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp99465))))
          (declare (not safe))
          (##structure-instance-of? _%obj99328%_ __tmp99464))))
    (define directory-port?
      (lambda (_%obj99326%_)
        (let ((__tmp99466
               (let ((__tmp99467 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp99467))))
          (declare (not safe))
          (##structure-instance-of? _%obj99326%_ __tmp99466))))
    (define event-queue-port?
      (lambda (_%obj99324%_)
        (let ((__tmp99468
               (let ((__tmp99469 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp99469))))
          (declare (not safe))
          (##structure-instance-of? _%obj99324%_ __tmp99468))))
    (define readenv?
      (lambda (_%obj99322%_)
        (let ((__tmp99470
               (let ((__tmp99471 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp99471))))
          (declare (not safe))
          (##structure-instance-of? _%obj99322%_ __tmp99470))))
    (define writeenv?
      (lambda (_%obj99320%_)
        (let ((__tmp99472
               (let ((__tmp99473 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp99473))))
          (declare (not safe))
          (##structure-instance-of? _%obj99320%_ __tmp99472))))
    (define vm?
      (lambda (_%obj99318%_)
        (let ((__tmp99474
               (let ((__tmp99475 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp99475))))
          (declare (not safe))
          (##structure-instance-of? _%obj99318%_ __tmp99474))))))
