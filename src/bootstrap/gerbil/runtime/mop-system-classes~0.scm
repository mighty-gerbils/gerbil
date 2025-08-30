(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1756224514)
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
      (let ((__tmp109437 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp109437)))
    (define boolean::t
      (let ((__tmp109438 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp109438)))
    (define atom::t
      (let ((__tmp109439 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp109439)))
    (define void::t
      (let ((__tmp109440 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp109440)))
    (define eof::t
      (let ((__tmp109441 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp109441)))
    (define true::t
      (let ((__tmp109442 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp109442)))
    (define false::t
      (let ((__tmp109443 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp109443)))
    (define special::t
      (let ((__tmp109444 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp109444)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp109445 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp109445)))
    (define integer::t
      (let ((__tmp109446 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp109446)))
    (define fixnum::t
      (let ((__tmp109447 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp109447)))
    (define bignum::t
      (let ((__tmp109448 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp109448)))
    (define ratnum::t
      (let ((__tmp109449 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp109449)))
    (define flonum::t
      (let ((__tmp109450 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp109450)))
    (define cpxnum::t
      (let ((__tmp109451 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp109451)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp109452 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp109452)))
    (define keyword::t
      (let ((__tmp109453 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp109453)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp109454 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp109454)))
    (define null::t
      (let ((__tmp109455 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp109455)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp109456 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp109456)))
    (define string::t
      (let ((__tmp109457 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp109457)))
    (define hvector::t
      (let ((__tmp109458 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp109458)))
    (define u8vector::t
      (let ((__tmp109459 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp109459)))
    (define s8vector::t
      (let ((__tmp109460 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp109460)))
    (define u16vector::t
      (let ((__tmp109461 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp109461)))
    (define s16vector::t
      (let ((__tmp109462 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp109462)))
    (define u32vector::t
      (let ((__tmp109463 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp109463)))
    (define s32vector::t
      (let ((__tmp109464 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp109464)))
    (define u64vector::t
      (let ((__tmp109465 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp109465)))
    (define s64vector::t
      (let ((__tmp109466 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp109466)))
    (define f32vector::t
      (let ((__tmp109467 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp109467)))
    (define f64vector::t
      (let ((__tmp109468 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp109468)))
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
      (let ((__tmp109469 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp109469)))
    (define thread::t
      (let ((__tmp109470 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp109470)))
    (define thread-group::t
      (let ((__tmp109471 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp109471)))
    (define mutex::t
      (let ((__tmp109472 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp109472)))
    (define condvar::t
      (let ((__tmp109473 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp109473)))
    (define port::t
      (let ((__tmp109474 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp109474)))
    (define object-port::t
      (let ((__tmp109475 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp109475)))
    (define character-port::t
      (let ((__tmp109476 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp109476)))
    (define byte-port::t
      (let ((__tmp109477 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp109477)))
    (define device-port::t
      (let ((__tmp109478 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp109478)))
    (define vector-port::t
      (let ((__tmp109479 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp109479)))
    (define string-port::t
      (let ((__tmp109480 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp109480)))
    (define u8vector-port::t
      (let ((__tmp109481 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp109481)))
    (define raw-device-port::t
      (let ((__tmp109482 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp109482)))
    (define tcp-server-port::t
      (let ((__tmp109483 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp109483)))
    (define udp-port::t
      (let ((__tmp109484 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp109484)))
    (define directory-port::t
      (let ((__tmp109485 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp109485)))
    (define event-queue-port::t
      (let ((__tmp109486 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp109486)))
    (define table::t
      (let ((__tmp109487 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp109487)))
    (define readenv::t
      (let ((__tmp109488 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp109488)))
    (define writeenv::t
      (let ((__tmp109489 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp109489)))
    (define readtable::t
      (let ((__tmp109490 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp109490)))
    (define processor::t
      (let ((__tmp109491 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp109491)))
    (define vm::t
      (let ((__tmp109492 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp109492)))
    (define file-info::t
      (let ((__tmp109493 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp109493)))
    (define socket-info::t
      (let ((__tmp109494 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp109494)))
    (define address-info::t
      (let ((__tmp109495 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp109495)))
    (define atom?
      (lambda (_%obj109436%_)
        (if (let () (declare (not safe)) (immediate? _%obj109436%_))
            (if (char? _%obj109436%_) '#f (not (fixnum? _%obj109436%_)))
            '#f)))
    (define special?
      (lambda (_%obj109434%_)
        (if (let ((__tmp109496
                   (let () (declare (not safe)) (##type _%obj109434%_))))
              (declare (not safe))
              (##fx= __tmp109496 '2))
            (if (char? _%obj109434%_)
                '#f
                (if (null? _%obj109434%_)
                    '#f
                    (if (boolean? _%obj109434%_)
                        '#f
                        (if (eq? _%obj109434%_ '#!void)
                            '#f
                            (not (eof-object? _%obj109434%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj109426%_)
        (let ((_%$e109428%_ (vector? _%obj109426%_)))
          (if _%$e109428%_
              _%$e109428%_
              (let ((_%$e109431%_ (string? _%obj109426%_)))
                (if _%$e109431%_ _%$e109431%_ (hvector? _%obj109426%_)))))))
    (define hvector?
      (lambda (_%obj109397%_)
        (let ((_%$e109399%_ (u8vector? _%obj109397%_)))
          (if _%$e109399%_
              _%$e109399%_
              (let ((_%$e109402%_ (s8vector? _%obj109397%_)))
                (if _%$e109402%_
                    _%$e109402%_
                    (let ((_%$e109405%_ (u16vector? _%obj109397%_)))
                      (if _%$e109405%_
                          _%$e109405%_
                          (let ((_%$e109408%_ (s16vector? _%obj109397%_)))
                            (if _%$e109408%_
                                _%$e109408%_
                                (let ((_%$e109411%_
                                       (u32vector? _%obj109397%_)))
                                  (if _%$e109411%_
                                      _%$e109411%_
                                      (let ((_%$e109414%_
                                             (s32vector? _%obj109397%_)))
                                        (if _%$e109414%_
                                            _%$e109414%_
                                            (let ((_%$e109417%_
                                                   (u64vector? _%obj109397%_)))
                                              (if _%$e109417%_
                                                  _%$e109417%_
                                                  (let ((_%$e109420%_
                                                         (s64vector?
                                                          _%obj109397%_)))
                                                    (if _%$e109420%_
                                                        _%$e109420%_
                                                        (let ((_%$e109423%_
                                                               (f32vector?
                                                                _%obj109397%_)))
                                                          (if _%$e109423%_
                                                              _%$e109423%_
                                                              (f64vector?
                                                               _%obj109397%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj109395%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj109395%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj109395%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj109393%_)
        (let ((__tmp109497
               (let ((__tmp109498 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp109498))))
          (declare (not safe))
          (##structure-instance-of? _%obj109393%_ __tmp109497))))
    (define character-port?
      (lambda (_%obj109391%_)
        (let ((__tmp109499
               (let ((__tmp109500 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp109500))))
          (declare (not safe))
          (##structure-instance-of? _%obj109391%_ __tmp109499))))
    (define device-port?
      (lambda (_%obj109389%_)
        (let ((__tmp109501
               (let ((__tmp109502 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp109502))))
          (declare (not safe))
          (##structure-instance-of? _%obj109389%_ __tmp109501))))
    (define vector-port?
      (lambda (_%obj109387%_)
        (let ((__tmp109503
               (let ((__tmp109504 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp109504))))
          (declare (not safe))
          (##structure-instance-of? _%obj109387%_ __tmp109503))))
    (define string-port?
      (lambda (_%obj109385%_)
        (let ((__tmp109505
               (let ((__tmp109506 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp109506))))
          (declare (not safe))
          (##structure-instance-of? _%obj109385%_ __tmp109505))))
    (define u8vector-port?
      (lambda (_%obj109383%_)
        (let ((__tmp109507
               (let ((__tmp109508 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp109508))))
          (declare (not safe))
          (##structure-instance-of? _%obj109383%_ __tmp109507))))
    (define raw-device-port?
      (lambda (_%obj109381%_)
        (let ((__tmp109509
               (let ((__tmp109510 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp109510))))
          (declare (not safe))
          (##structure-instance-of? _%obj109381%_ __tmp109509))))
    (define tcp-server-port?
      (lambda (_%obj109379%_)
        (let ((__tmp109511
               (let ((__tmp109512 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp109512))))
          (declare (not safe))
          (##structure-instance-of? _%obj109379%_ __tmp109511))))
    (define udp-port?
      (lambda (_%obj109377%_)
        (let ((__tmp109513
               (let ((__tmp109514 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp109514))))
          (declare (not safe))
          (##structure-instance-of? _%obj109377%_ __tmp109513))))
    (define directory-port?
      (lambda (_%obj109375%_)
        (let ((__tmp109515
               (let ((__tmp109516 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp109516))))
          (declare (not safe))
          (##structure-instance-of? _%obj109375%_ __tmp109515))))
    (define event-queue-port?
      (lambda (_%obj109373%_)
        (let ((__tmp109517
               (let ((__tmp109518 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp109518))))
          (declare (not safe))
          (##structure-instance-of? _%obj109373%_ __tmp109517))))
    (define readenv?
      (lambda (_%obj109371%_)
        (let ((__tmp109519
               (let ((__tmp109520 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp109520))))
          (declare (not safe))
          (##structure-instance-of? _%obj109371%_ __tmp109519))))
    (define writeenv?
      (lambda (_%obj109369%_)
        (let ((__tmp109521
               (let ((__tmp109522 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp109522))))
          (declare (not safe))
          (##structure-instance-of? _%obj109369%_ __tmp109521))))
    (define vm?
      (lambda (_%obj109367%_)
        (let ((__tmp109523
               (let ((__tmp109524 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp109524))))
          (declare (not safe))
          (##structure-instance-of? _%obj109367%_ __tmp109523))))))
