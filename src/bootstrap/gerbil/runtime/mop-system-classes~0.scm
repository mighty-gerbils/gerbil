(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1710943025)
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
      (let ((__tmp66449 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp66449)))
    (define boolean::t
      (let ((__tmp66450 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp66450)))
    (define atom::t
      (let ((__tmp66451 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'atom __tmp66451)))
    (define void::t
      (let ((__tmp66452 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp66452)))
    (define eof::t
      (let ((__tmp66453 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp66453)))
    (define true::t
      (let ((__tmp66454
             (let ((__tmp66455
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66455))))
        (declare (not safe))
        (__make-system-class 'true __tmp66454)))
    (define false::t
      (let ((__tmp66456
             (let ((__tmp66457
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66457))))
        (declare (not safe))
        (__make-system-class 'false __tmp66456)))
    (define special::t
      (let ((__tmp66458 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp66458)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp66459 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp66459)))
    (define integer::t
      (let ((__tmp66460 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp66460)))
    (define fixnum::t
      (let ((__tmp66461
             (let ((__tmp66462
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp66462))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp66461)))
    (define bignum::t
      (let ((__tmp66463 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp66463)))
    (define ratnum::t
      (let ((__tmp66464 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp66464)))
    (define flonum::t
      (let ((__tmp66465 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp66465)))
    (define cpxnum::t
      (let ((__tmp66466 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp66466)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp66467 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp66467)))
    (define keyword::t
      (let ((__tmp66468 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp66468)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp66469 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp66469)))
    (define null::t
      (let ((__tmp66470
             (let ((__tmp66471
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons list::t __tmp66471))))
        (declare (not safe))
        (__make-system-class 'null __tmp66470)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp66472 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp66472)))
    (define string::t
      (let ((__tmp66473 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp66473)))
    (define hvector::t
      (let ((__tmp66474 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp66474)))
    (define u8vector::t
      (let ((__tmp66475 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp66475)))
    (define s8vector::t
      (let ((__tmp66476 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp66476)))
    (define u16vector::t
      (let ((__tmp66477 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp66477)))
    (define s16vector::t
      (let ((__tmp66478 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp66478)))
    (define u32vector::t
      (let ((__tmp66479 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp66479)))
    (define s32vector::t
      (let ((__tmp66480 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp66480)))
    (define u64vector::t
      (let ((__tmp66481 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp66481)))
    (define s64vector::t
      (let ((__tmp66482 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp66482)))
    (define f32vector::t
      (let ((__tmp66483 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp66483)))
    (define f64vector::t
      (let ((__tmp66484 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp66484)))
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
      (let ((__tmp66485 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp66485)))
    (define thread::t
      (let ((__tmp66486 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp66486)))
    (define thread-group::t
      (let ((__tmp66487 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp66487)))
    (define mutex::t
      (let ((__tmp66488 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp66488)))
    (define condvar::t
      (let ((__tmp66489 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp66489)))
    (define port::t
      (let ((__tmp66490 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp66490)))
    (define object-port::t
      (let ((__tmp66491 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp66491)))
    (define character-port::t
      (let ((__tmp66492 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp66492)))
    (define byte-port::t
      (let ((__tmp66493 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp66493)))
    (define device-port::t
      (let ((__tmp66494 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66494)))
    (define vector-port::t
      (let ((__tmp66495 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66495)))
    (define string-port::t
      (let ((__tmp66496 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp66496)))
    (define u8vector-port::t
      (let ((__tmp66497 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66497)))
    (define raw-device-port::t
      (let ((__tmp66498 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66498)))
    (define tcp-server-port::t
      (let ((__tmp66499 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp66499)))
    (define udp-port::t
      (let ((__tmp66500 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp66500)))
    (define directory-port::t
      (let ((__tmp66501 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp66501)))
    (define event-queue-port::t
      (let ((__tmp66502 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp66502)))
    (define table::t
      (let ((__tmp66503 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp66503)))
    (define readenv::t
      (let ((__tmp66504 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp66504)))
    (define writeenv::t
      (let ((__tmp66505 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp66505)))
    (define readtable::t
      (let ((__tmp66506 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp66506)))
    (define processor::t
      (let ((__tmp66507 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp66507)))
    (define vm::t
      (let ((__tmp66508 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp66508)))
    (define file-info::t
      (let ((__tmp66509 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp66509)))
    (define socket-info::t
      (let ((__tmp66510 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp66510)))
    (define address-info::t
      (let ((__tmp66511 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp66511)))
    (define atom?
      (lambda (_obj66448_)
        (if (let () (declare (not safe)) (immediate? _obj66448_))
            (if (let ((__tmp66513
                       (let () (declare (not safe)) (char? _obj66448_))))
                  (declare (not safe))
                  (not __tmp66513))
                (let ((__tmp66512
                       (let () (declare (not safe)) (fixnum? _obj66448_))))
                  (declare (not safe))
                  (not __tmp66512))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj66446_)
        (if (fx= (let () (declare (not safe)) (##type _obj66446_)) '2)
            (if (let ((__tmp66518
                       (let () (declare (not safe)) (char? _obj66446_))))
                  (declare (not safe))
                  (not __tmp66518))
                (if (let ((__tmp66517
                           (let () (declare (not safe)) (null? _obj66446_))))
                      (declare (not safe))
                      (not __tmp66517))
                    (if (let ((__tmp66516
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj66446_))))
                          (declare (not safe))
                          (not __tmp66516))
                        (if (let ((__tmp66515
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj66446_ '#!void))))
                              (declare (not safe))
                              (not __tmp66515))
                            (let ((__tmp66514
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj66446_))))
                              (declare (not safe))
                              (not __tmp66514))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj66438_)
        (let ((_$e66440_ (let () (declare (not safe)) (vector? _obj66438_))))
          (if _$e66440_
              _$e66440_
              (let ((_$e66443_
                     (let () (declare (not safe)) (string? _obj66438_))))
                (if _$e66443_
                    _$e66443_
                    (let () (declare (not safe)) (hvector? _obj66438_))))))))
    (define hvector?
      (lambda (_obj66409_)
        (let ((_$e66411_ (let () (declare (not safe)) (u8vector? _obj66409_))))
          (if _$e66411_
              _$e66411_
              (let ((_$e66414_ (s8vector? _obj66409_)))
                (if _$e66414_
                    _$e66414_
                    (let ((_$e66417_ (u16vector? _obj66409_)))
                      (if _$e66417_
                          _$e66417_
                          (let ((_$e66420_ (s16vector? _obj66409_)))
                            (if _$e66420_
                                _$e66420_
                                (let ((_$e66423_ (u32vector? _obj66409_)))
                                  (if _$e66423_
                                      _$e66423_
                                      (let ((_$e66426_
                                             (s32vector? _obj66409_)))
                                        (if _$e66426_
                                            _$e66426_
                                            (let ((_$e66429_
                                                   (u64vector? _obj66409_)))
                                              (if _$e66429_
                                                  _$e66429_
                                                  (let ((_$e66432_
                                                         (s64vector?
                                                          _obj66409_)))
                                                    (if _$e66432_
                                                        _$e66432_
                                                        (let ((_$e66435_
                                                               (f32vector?
                                                                _obj66409_)))
                                                          (if _$e66435_
                                                              _$e66435_
                                                              (f64vector?
                                                               _obj66409_)))))))))))))))))))))
    (define weak?
      (lambda (_obj66407_)
        (if (let () (declare (not safe)) (##subtyped? _obj66407_))
            (let ((__tmp66520
                   (let () (declare (not safe)) (##subtype _obj66407_)))
                  (__tmp66519 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp66520 __tmp66519))
            '#f)))
    (define object-port?
      (lambda (_obj66405_)
        (let ((__tmp66521
               (let ((__tmp66522 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp66522))))
          (declare (not safe))
          (##structure-instance-of? _obj66405_ __tmp66521))))
    (define character-port?
      (lambda (_obj66403_)
        (let ((__tmp66523
               (let ((__tmp66524 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp66524))))
          (declare (not safe))
          (##structure-instance-of? _obj66403_ __tmp66523))))
    (define device-port?
      (lambda (_obj66401_)
        (let ((__tmp66525
               (let ((__tmp66526 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66526))))
          (declare (not safe))
          (##structure-instance-of? _obj66401_ __tmp66525))))
    (define vector-port?
      (lambda (_obj66399_)
        (let ((__tmp66527
               (let ((__tmp66528 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66528))))
          (declare (not safe))
          (##structure-instance-of? _obj66399_ __tmp66527))))
    (define string-port?
      (lambda (_obj66397_)
        (let ((__tmp66529
               (let ((__tmp66530 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp66530))))
          (declare (not safe))
          (##structure-instance-of? _obj66397_ __tmp66529))))
    (define u8vector-port?
      (lambda (_obj66395_)
        (let ((__tmp66531
               (let ((__tmp66532 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66532))))
          (declare (not safe))
          (##structure-instance-of? _obj66395_ __tmp66531))))
    (define raw-device-port?
      (lambda (_obj66393_)
        (let ((__tmp66533
               (let ((__tmp66534 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66534))))
          (declare (not safe))
          (##structure-instance-of? _obj66393_ __tmp66533))))
    (define tcp-server-port?
      (lambda (_obj66391_)
        (let ((__tmp66535
               (let ((__tmp66536 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp66536))))
          (declare (not safe))
          (##structure-instance-of? _obj66391_ __tmp66535))))
    (define udp-port?
      (lambda (_obj66389_)
        (let ((__tmp66537
               (let ((__tmp66538 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp66538))))
          (declare (not safe))
          (##structure-instance-of? _obj66389_ __tmp66537))))
    (define directory-port?
      (lambda (_obj66387_)
        (let ((__tmp66539
               (let ((__tmp66540 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp66540))))
          (declare (not safe))
          (##structure-instance-of? _obj66387_ __tmp66539))))
    (define event-queue-port?
      (lambda (_obj66385_)
        (let ((__tmp66541
               (let ((__tmp66542 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp66542))))
          (declare (not safe))
          (##structure-instance-of? _obj66385_ __tmp66541))))
    (define readenv?
      (lambda (_obj66383_)
        (let ((__tmp66543
               (let ((__tmp66544 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp66544))))
          (declare (not safe))
          (##structure-instance-of? _obj66383_ __tmp66543))))
    (define writeenv?
      (lambda (_obj66381_)
        (let ((__tmp66545
               (let ((__tmp66546 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp66546))))
          (declare (not safe))
          (##structure-instance-of? _obj66381_ __tmp66545))))
    (define vm?
      (lambda (_obj66379_)
        (let ((__tmp66547
               (let ((__tmp66548 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp66548))))
          (declare (not safe))
          (##structure-instance-of? _obj66379_ __tmp66547))))))
