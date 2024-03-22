(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1711108654)
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
      (let ((__tmp66439 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp66439)))
    (define boolean::t
      (let ((__tmp66440 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp66440)))
    (define atom::t
      (let ((__tmp66441 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'atom __tmp66441)))
    (define void::t
      (let ((__tmp66442 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp66442)))
    (define eof::t
      (let ((__tmp66443 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp66443)))
    (define true::t
      (let ((__tmp66444
             (let ((__tmp66445
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66445))))
        (declare (not safe))
        (__make-system-class 'true __tmp66444)))
    (define false::t
      (let ((__tmp66446
             (let ((__tmp66447
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66447))))
        (declare (not safe))
        (__make-system-class 'false __tmp66446)))
    (define special::t
      (let ((__tmp66448 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp66448)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp66449 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp66449)))
    (define integer::t
      (let ((__tmp66450 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp66450)))
    (define fixnum::t
      (let ((__tmp66451
             (let ((__tmp66452
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp66452))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp66451)))
    (define bignum::t
      (let ((__tmp66453 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp66453)))
    (define ratnum::t
      (let ((__tmp66454 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp66454)))
    (define flonum::t
      (let ((__tmp66455 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp66455)))
    (define cpxnum::t
      (let ((__tmp66456 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp66456)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp66457 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp66457)))
    (define keyword::t
      (let ((__tmp66458 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp66458)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp66459 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp66459)))
    (define null::t
      (let ((__tmp66460
             (let ((__tmp66461
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons list::t __tmp66461))))
        (declare (not safe))
        (__make-system-class 'null __tmp66460)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp66462 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp66462)))
    (define string::t
      (let ((__tmp66463 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp66463)))
    (define hvector::t
      (let ((__tmp66464 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp66464)))
    (define u8vector::t
      (let ((__tmp66465 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp66465)))
    (define s8vector::t
      (let ((__tmp66466 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp66466)))
    (define u16vector::t
      (let ((__tmp66467 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp66467)))
    (define s16vector::t
      (let ((__tmp66468 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp66468)))
    (define u32vector::t
      (let ((__tmp66469 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp66469)))
    (define s32vector::t
      (let ((__tmp66470 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp66470)))
    (define u64vector::t
      (let ((__tmp66471 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp66471)))
    (define s64vector::t
      (let ((__tmp66472 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp66472)))
    (define f32vector::t
      (let ((__tmp66473 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp66473)))
    (define f64vector::t
      (let ((__tmp66474 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp66474)))
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
      (let ((__tmp66475 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp66475)))
    (define thread::t
      (let ((__tmp66476 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp66476)))
    (define thread-group::t
      (let ((__tmp66477 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp66477)))
    (define mutex::t
      (let ((__tmp66478 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp66478)))
    (define condvar::t
      (let ((__tmp66479 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp66479)))
    (define port::t
      (let ((__tmp66480 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp66480)))
    (define object-port::t
      (let ((__tmp66481 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp66481)))
    (define character-port::t
      (let ((__tmp66482 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp66482)))
    (define byte-port::t
      (let ((__tmp66483 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp66483)))
    (define device-port::t
      (let ((__tmp66484 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66484)))
    (define vector-port::t
      (let ((__tmp66485 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66485)))
    (define string-port::t
      (let ((__tmp66486 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp66486)))
    (define u8vector-port::t
      (let ((__tmp66487 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66487)))
    (define raw-device-port::t
      (let ((__tmp66488 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66488)))
    (define tcp-server-port::t
      (let ((__tmp66489 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp66489)))
    (define udp-port::t
      (let ((__tmp66490 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp66490)))
    (define directory-port::t
      (let ((__tmp66491 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp66491)))
    (define event-queue-port::t
      (let ((__tmp66492 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp66492)))
    (define table::t
      (let ((__tmp66493 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp66493)))
    (define readenv::t
      (let ((__tmp66494 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp66494)))
    (define writeenv::t
      (let ((__tmp66495 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp66495)))
    (define readtable::t
      (let ((__tmp66496 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp66496)))
    (define processor::t
      (let ((__tmp66497 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp66497)))
    (define vm::t
      (let ((__tmp66498 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp66498)))
    (define file-info::t
      (let ((__tmp66499 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp66499)))
    (define socket-info::t
      (let ((__tmp66500 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp66500)))
    (define address-info::t
      (let ((__tmp66501 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp66501)))
    (define atom?
      (lambda (_obj66438_)
        (if (let () (declare (not safe)) (immediate? _obj66438_))
            (if (let ((__tmp66503
                       (let () (declare (not safe)) (char? _obj66438_))))
                  (declare (not safe))
                  (not __tmp66503))
                (let ((__tmp66502
                       (let () (declare (not safe)) (fixnum? _obj66438_))))
                  (declare (not safe))
                  (not __tmp66502))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj66436_)
        (if (fx= (let () (declare (not safe)) (##type _obj66436_)) '2)
            (if (let ((__tmp66508
                       (let () (declare (not safe)) (char? _obj66436_))))
                  (declare (not safe))
                  (not __tmp66508))
                (if (let ((__tmp66507
                           (let () (declare (not safe)) (null? _obj66436_))))
                      (declare (not safe))
                      (not __tmp66507))
                    (if (let ((__tmp66506
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj66436_))))
                          (declare (not safe))
                          (not __tmp66506))
                        (if (let ((__tmp66505
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj66436_ '#!void))))
                              (declare (not safe))
                              (not __tmp66505))
                            (let ((__tmp66504
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj66436_))))
                              (declare (not safe))
                              (not __tmp66504))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj66428_)
        (let ((_$e66430_ (let () (declare (not safe)) (vector? _obj66428_))))
          (if _$e66430_
              _$e66430_
              (let ((_$e66433_
                     (let () (declare (not safe)) (string? _obj66428_))))
                (if _$e66433_
                    _$e66433_
                    (let () (declare (not safe)) (hvector? _obj66428_))))))))
    (define hvector?
      (lambda (_obj66399_)
        (let ((_$e66401_ (let () (declare (not safe)) (u8vector? _obj66399_))))
          (if _$e66401_
              _$e66401_
              (let ((_$e66404_ (s8vector? _obj66399_)))
                (if _$e66404_
                    _$e66404_
                    (let ((_$e66407_ (u16vector? _obj66399_)))
                      (if _$e66407_
                          _$e66407_
                          (let ((_$e66410_ (s16vector? _obj66399_)))
                            (if _$e66410_
                                _$e66410_
                                (let ((_$e66413_ (u32vector? _obj66399_)))
                                  (if _$e66413_
                                      _$e66413_
                                      (let ((_$e66416_
                                             (s32vector? _obj66399_)))
                                        (if _$e66416_
                                            _$e66416_
                                            (let ((_$e66419_
                                                   (u64vector? _obj66399_)))
                                              (if _$e66419_
                                                  _$e66419_
                                                  (let ((_$e66422_
                                                         (s64vector?
                                                          _obj66399_)))
                                                    (if _$e66422_
                                                        _$e66422_
                                                        (let ((_$e66425_
                                                               (f32vector?
                                                                _obj66399_)))
                                                          (if _$e66425_
                                                              _$e66425_
                                                              (f64vector?
                                                               _obj66399_)))))))))))))))))))))
    (define weak?
      (lambda (_obj66397_)
        (if (let () (declare (not safe)) (##subtyped? _obj66397_))
            (let ((__tmp66510
                   (let () (declare (not safe)) (##subtype _obj66397_)))
                  (__tmp66509 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp66510 __tmp66509))
            '#f)))
    (define object-port?
      (lambda (_obj66395_)
        (let ((__tmp66511
               (let ((__tmp66512 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp66512))))
          (declare (not safe))
          (##structure-instance-of? _obj66395_ __tmp66511))))
    (define character-port?
      (lambda (_obj66393_)
        (let ((__tmp66513
               (let ((__tmp66514 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp66514))))
          (declare (not safe))
          (##structure-instance-of? _obj66393_ __tmp66513))))
    (define device-port?
      (lambda (_obj66391_)
        (let ((__tmp66515
               (let ((__tmp66516 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66516))))
          (declare (not safe))
          (##structure-instance-of? _obj66391_ __tmp66515))))
    (define vector-port?
      (lambda (_obj66389_)
        (let ((__tmp66517
               (let ((__tmp66518 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66518))))
          (declare (not safe))
          (##structure-instance-of? _obj66389_ __tmp66517))))
    (define string-port?
      (lambda (_obj66387_)
        (let ((__tmp66519
               (let ((__tmp66520 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp66520))))
          (declare (not safe))
          (##structure-instance-of? _obj66387_ __tmp66519))))
    (define u8vector-port?
      (lambda (_obj66385_)
        (let ((__tmp66521
               (let ((__tmp66522 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66522))))
          (declare (not safe))
          (##structure-instance-of? _obj66385_ __tmp66521))))
    (define raw-device-port?
      (lambda (_obj66383_)
        (let ((__tmp66523
               (let ((__tmp66524 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66524))))
          (declare (not safe))
          (##structure-instance-of? _obj66383_ __tmp66523))))
    (define tcp-server-port?
      (lambda (_obj66381_)
        (let ((__tmp66525
               (let ((__tmp66526 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp66526))))
          (declare (not safe))
          (##structure-instance-of? _obj66381_ __tmp66525))))
    (define udp-port?
      (lambda (_obj66379_)
        (let ((__tmp66527
               (let ((__tmp66528 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp66528))))
          (declare (not safe))
          (##structure-instance-of? _obj66379_ __tmp66527))))
    (define directory-port?
      (lambda (_obj66377_)
        (let ((__tmp66529
               (let ((__tmp66530 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp66530))))
          (declare (not safe))
          (##structure-instance-of? _obj66377_ __tmp66529))))
    (define event-queue-port?
      (lambda (_obj66375_)
        (let ((__tmp66531
               (let ((__tmp66532 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp66532))))
          (declare (not safe))
          (##structure-instance-of? _obj66375_ __tmp66531))))
    (define readenv?
      (lambda (_obj66373_)
        (let ((__tmp66533
               (let ((__tmp66534 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp66534))))
          (declare (not safe))
          (##structure-instance-of? _obj66373_ __tmp66533))))
    (define writeenv?
      (lambda (_obj66371_)
        (let ((__tmp66535
               (let ((__tmp66536 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp66536))))
          (declare (not safe))
          (##structure-instance-of? _obj66371_ __tmp66535))))
    (define vm?
      (lambda (_obj66369_)
        (let ((__tmp66537
               (let ((__tmp66538 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp66538))))
          (declare (not safe))
          (##structure-instance-of? _obj66369_ __tmp66537))))))
