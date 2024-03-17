(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1710694202)
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
      (let ((__tmp63431 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp63431)))
    (define boolean::t
      (let ((__tmp63432 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp63432)))
    (define atom::t
      (let ((__tmp63433 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'atom __tmp63433)))
    (define void::t
      (let ((__tmp63434 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp63434)))
    (define eof::t
      (let ((__tmp63435 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp63435)))
    (define true::t
      (let ((__tmp63436
             (let ((__tmp63437
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp63437))))
        (declare (not safe))
        (__make-system-class 'true __tmp63436)))
    (define false::t
      (let ((__tmp63438
             (let ((__tmp63439
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp63439))))
        (declare (not safe))
        (__make-system-class 'false __tmp63438)))
    (define special::t
      (let ((__tmp63440 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp63440)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp63441 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp63441)))
    (define integer::t
      (let ((__tmp63442 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp63442)))
    (define fixnum::t
      (let ((__tmp63443
             (let ((__tmp63444
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp63444))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp63443)))
    (define bignum::t
      (let ((__tmp63445 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp63445)))
    (define ratnum::t
      (let ((__tmp63446 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp63446)))
    (define flonum::t
      (let ((__tmp63447 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp63447)))
    (define cpxnum::t
      (let ((__tmp63448 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp63448)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp63449 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp63449)))
    (define keyword::t
      (let ((__tmp63450 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp63450)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp63451 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp63451)))
    (define null::t
      (let ((__tmp63452
             (let ((__tmp63453
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons list::t __tmp63453))))
        (declare (not safe))
        (__make-system-class 'null __tmp63452)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp63454 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp63454)))
    (define string::t
      (let ((__tmp63455 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp63455)))
    (define hvector::t
      (let ((__tmp63456 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp63456)))
    (define u8vector::t
      (let ((__tmp63457 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp63457)))
    (define s8vector::t
      (let ((__tmp63458 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp63458)))
    (define u16vector::t
      (let ((__tmp63459 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp63459)))
    (define s16vector::t
      (let ((__tmp63460 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp63460)))
    (define u32vector::t
      (let ((__tmp63461 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp63461)))
    (define s32vector::t
      (let ((__tmp63462 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp63462)))
    (define u64vector::t
      (let ((__tmp63463 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp63463)))
    (define s64vector::t
      (let ((__tmp63464 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp63464)))
    (define f32vector::t
      (let ((__tmp63465 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp63465)))
    (define f64vector::t
      (let ((__tmp63466 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp63466)))
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
      (let ((__tmp63467 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp63467)))
    (define thread::t
      (let ((__tmp63468 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp63468)))
    (define thread-group::t
      (let ((__tmp63469 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp63469)))
    (define mutex::t
      (let ((__tmp63470 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp63470)))
    (define condvar::t
      (let ((__tmp63471 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp63471)))
    (define port::t
      (let ((__tmp63472 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp63472)))
    (define object-port::t
      (let ((__tmp63473 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp63473)))
    (define character-port::t
      (let ((__tmp63474 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp63474)))
    (define byte-port::t
      (let ((__tmp63475 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp63475)))
    (define device-port::t
      (let ((__tmp63476 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp63476)))
    (define vector-port::t
      (let ((__tmp63477 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp63477)))
    (define string-port::t
      (let ((__tmp63478 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp63478)))
    (define u8vector-port::t
      (let ((__tmp63479 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp63479)))
    (define raw-device-port::t
      (let ((__tmp63480 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp63480)))
    (define tcp-server-port::t
      (let ((__tmp63481 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp63481)))
    (define udp-port::t
      (let ((__tmp63482 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp63482)))
    (define directory-port::t
      (let ((__tmp63483 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp63483)))
    (define event-queue-port::t
      (let ((__tmp63484 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp63484)))
    (define table::t
      (let ((__tmp63485 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp63485)))
    (define readenv::t
      (let ((__tmp63486 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp63486)))
    (define writeenv::t
      (let ((__tmp63487 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp63487)))
    (define readtable::t
      (let ((__tmp63488 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp63488)))
    (define processor::t
      (let ((__tmp63489 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp63489)))
    (define vm::t
      (let ((__tmp63490 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp63490)))
    (define file-info::t
      (let ((__tmp63491 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp63491)))
    (define socket-info::t
      (let ((__tmp63492 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp63492)))
    (define address-info::t
      (let ((__tmp63493 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp63493)))
    (define atom?
      (lambda (_obj63430_)
        (if (let () (declare (not safe)) (immediate? _obj63430_))
            (if (let ((__tmp63494
                       (let () (declare (not safe)) (char? _obj63430_))))
                  (declare (not safe))
                  (not __tmp63494))
                (let ((__tmp63495
                       (let () (declare (not safe)) (fixnum? _obj63430_))))
                  (declare (not safe))
                  (not __tmp63495))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj63428_)
        (if (fx= (let () (declare (not safe)) (##type _obj63428_)) '2)
            (if (let ((__tmp63496
                       (let () (declare (not safe)) (char? _obj63428_))))
                  (declare (not safe))
                  (not __tmp63496))
                (if (let ((__tmp63497
                           (let () (declare (not safe)) (null? _obj63428_))))
                      (declare (not safe))
                      (not __tmp63497))
                    (if (let ((__tmp63498
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj63428_))))
                          (declare (not safe))
                          (not __tmp63498))
                        (if (let ((__tmp63499
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj63428_ '#!void))))
                              (declare (not safe))
                              (not __tmp63499))
                            (let ((__tmp63500
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj63428_))))
                              (declare (not safe))
                              (not __tmp63500))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj63420_)
        (let ((_$e63422_ (let () (declare (not safe)) (vector? _obj63420_))))
          (if _$e63422_
              _$e63422_
              (let ((_$e63425_
                     (let () (declare (not safe)) (string? _obj63420_))))
                (if _$e63425_
                    _$e63425_
                    (let () (declare (not safe)) (hvector? _obj63420_))))))))
    (define hvector?
      (lambda (_obj63391_)
        (let ((_$e63393_ (let () (declare (not safe)) (u8vector? _obj63391_))))
          (if _$e63393_
              _$e63393_
              (let ((_$e63396_ (s8vector? _obj63391_)))
                (if _$e63396_
                    _$e63396_
                    (let ((_$e63399_ (u16vector? _obj63391_)))
                      (if _$e63399_
                          _$e63399_
                          (let ((_$e63402_ (s16vector? _obj63391_)))
                            (if _$e63402_
                                _$e63402_
                                (let ((_$e63405_ (u32vector? _obj63391_)))
                                  (if _$e63405_
                                      _$e63405_
                                      (let ((_$e63408_
                                             (s32vector? _obj63391_)))
                                        (if _$e63408_
                                            _$e63408_
                                            (let ((_$e63411_
                                                   (u64vector? _obj63391_)))
                                              (if _$e63411_
                                                  _$e63411_
                                                  (let ((_$e63414_
                                                         (s64vector?
                                                          _obj63391_)))
                                                    (if _$e63414_
                                                        _$e63414_
                                                        (let ((_$e63417_
                                                               (f32vector?
                                                                _obj63391_)))
                                                          (if _$e63417_
                                                              _$e63417_
                                                              (f64vector?
                                                               _obj63391_)))))))))))))))))))))
    (define weak?
      (lambda (_obj63389_)
        (if (let () (declare (not safe)) (##subtyped? _obj63389_))
            (let ((__tmp63502
                   (let () (declare (not safe)) (##subtype _obj63389_)))
                  (__tmp63501 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp63502 __tmp63501))
            '#f)))
    (define object-port?
      (lambda (_obj63387_)
        (let ((__tmp63503
               (let ((__tmp63504 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp63504))))
          (declare (not safe))
          (##structure-instance-of? _obj63387_ __tmp63503))))
    (define character-port?
      (lambda (_obj63385_)
        (let ((__tmp63505
               (let ((__tmp63506 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp63506))))
          (declare (not safe))
          (##structure-instance-of? _obj63385_ __tmp63505))))
    (define device-port?
      (lambda (_obj63383_)
        (let ((__tmp63507
               (let ((__tmp63508 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp63508))))
          (declare (not safe))
          (##structure-instance-of? _obj63383_ __tmp63507))))
    (define vector-port?
      (lambda (_obj63381_)
        (let ((__tmp63509
               (let ((__tmp63510 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp63510))))
          (declare (not safe))
          (##structure-instance-of? _obj63381_ __tmp63509))))
    (define string-port?
      (lambda (_obj63379_)
        (let ((__tmp63511
               (let ((__tmp63512 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp63512))))
          (declare (not safe))
          (##structure-instance-of? _obj63379_ __tmp63511))))
    (define u8vector-port?
      (lambda (_obj63377_)
        (let ((__tmp63513
               (let ((__tmp63514 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp63514))))
          (declare (not safe))
          (##structure-instance-of? _obj63377_ __tmp63513))))
    (define raw-device-port?
      (lambda (_obj63375_)
        (let ((__tmp63515
               (let ((__tmp63516 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp63516))))
          (declare (not safe))
          (##structure-instance-of? _obj63375_ __tmp63515))))
    (define tcp-server-port?
      (lambda (_obj63373_)
        (let ((__tmp63517
               (let ((__tmp63518 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp63518))))
          (declare (not safe))
          (##structure-instance-of? _obj63373_ __tmp63517))))
    (define udp-port?
      (lambda (_obj63371_)
        (let ((__tmp63519
               (let ((__tmp63520 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp63520))))
          (declare (not safe))
          (##structure-instance-of? _obj63371_ __tmp63519))))
    (define directory-port?
      (lambda (_obj63369_)
        (let ((__tmp63521
               (let ((__tmp63522 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp63522))))
          (declare (not safe))
          (##structure-instance-of? _obj63369_ __tmp63521))))
    (define event-queue-port?
      (lambda (_obj63367_)
        (let ((__tmp63523
               (let ((__tmp63524 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp63524))))
          (declare (not safe))
          (##structure-instance-of? _obj63367_ __tmp63523))))
    (define readenv?
      (lambda (_obj63365_)
        (let ((__tmp63525
               (let ((__tmp63526 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp63526))))
          (declare (not safe))
          (##structure-instance-of? _obj63365_ __tmp63525))))
    (define writeenv?
      (lambda (_obj63363_)
        (let ((__tmp63527
               (let ((__tmp63528 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp63528))))
          (declare (not safe))
          (##structure-instance-of? _obj63363_ __tmp63527))))
    (define vm?
      (lambda (_obj63361_)
        (let ((__tmp63529
               (let ((__tmp63530 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp63530))))
          (declare (not safe))
          (##structure-instance-of? _obj63361_ __tmp63529))))))
