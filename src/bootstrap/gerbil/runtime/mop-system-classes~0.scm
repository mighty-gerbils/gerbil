(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1710781148)
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
      (let ((__tmp66448 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp66448)))
    (define boolean::t
      (let ((__tmp66449 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp66449)))
    (define atom::t
      (let ((__tmp66450 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'atom __tmp66450)))
    (define void::t
      (let ((__tmp66451 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp66451)))
    (define eof::t
      (let ((__tmp66452 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp66452)))
    (define true::t
      (let ((__tmp66453
             (let ((__tmp66454
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66454))))
        (declare (not safe))
        (__make-system-class 'true __tmp66453)))
    (define false::t
      (let ((__tmp66455
             (let ((__tmp66456
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66456))))
        (declare (not safe))
        (__make-system-class 'false __tmp66455)))
    (define special::t
      (let ((__tmp66457 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp66457)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp66458 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp66458)))
    (define integer::t
      (let ((__tmp66459 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp66459)))
    (define fixnum::t
      (let ((__tmp66460
             (let ((__tmp66461
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp66461))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp66460)))
    (define bignum::t
      (let ((__tmp66462 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp66462)))
    (define ratnum::t
      (let ((__tmp66463 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp66463)))
    (define flonum::t
      (let ((__tmp66464 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp66464)))
    (define cpxnum::t
      (let ((__tmp66465 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp66465)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp66466 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp66466)))
    (define keyword::t
      (let ((__tmp66467 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp66467)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp66468 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp66468)))
    (define null::t
      (let ((__tmp66469
             (let ((__tmp66470
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons list::t __tmp66470))))
        (declare (not safe))
        (__make-system-class 'null __tmp66469)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp66471 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp66471)))
    (define string::t
      (let ((__tmp66472 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp66472)))
    (define hvector::t
      (let ((__tmp66473 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp66473)))
    (define u8vector::t
      (let ((__tmp66474 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp66474)))
    (define s8vector::t
      (let ((__tmp66475 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp66475)))
    (define u16vector::t
      (let ((__tmp66476 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp66476)))
    (define s16vector::t
      (let ((__tmp66477 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp66477)))
    (define u32vector::t
      (let ((__tmp66478 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp66478)))
    (define s32vector::t
      (let ((__tmp66479 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp66479)))
    (define u64vector::t
      (let ((__tmp66480 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp66480)))
    (define s64vector::t
      (let ((__tmp66481 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp66481)))
    (define f32vector::t
      (let ((__tmp66482 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp66482)))
    (define f64vector::t
      (let ((__tmp66483 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp66483)))
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
      (let ((__tmp66484 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp66484)))
    (define thread::t
      (let ((__tmp66485 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp66485)))
    (define thread-group::t
      (let ((__tmp66486 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp66486)))
    (define mutex::t
      (let ((__tmp66487 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp66487)))
    (define condvar::t
      (let ((__tmp66488 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp66488)))
    (define port::t
      (let ((__tmp66489 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp66489)))
    (define object-port::t
      (let ((__tmp66490 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp66490)))
    (define character-port::t
      (let ((__tmp66491 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp66491)))
    (define byte-port::t
      (let ((__tmp66492 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp66492)))
    (define device-port::t
      (let ((__tmp66493 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66493)))
    (define vector-port::t
      (let ((__tmp66494 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66494)))
    (define string-port::t
      (let ((__tmp66495 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp66495)))
    (define u8vector-port::t
      (let ((__tmp66496 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66496)))
    (define raw-device-port::t
      (let ((__tmp66497 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66497)))
    (define tcp-server-port::t
      (let ((__tmp66498 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp66498)))
    (define udp-port::t
      (let ((__tmp66499 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp66499)))
    (define directory-port::t
      (let ((__tmp66500 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp66500)))
    (define event-queue-port::t
      (let ((__tmp66501 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp66501)))
    (define table::t
      (let ((__tmp66502 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp66502)))
    (define readenv::t
      (let ((__tmp66503 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp66503)))
    (define writeenv::t
      (let ((__tmp66504 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp66504)))
    (define readtable::t
      (let ((__tmp66505 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp66505)))
    (define processor::t
      (let ((__tmp66506 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp66506)))
    (define vm::t
      (let ((__tmp66507 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp66507)))
    (define file-info::t
      (let ((__tmp66508 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp66508)))
    (define socket-info::t
      (let ((__tmp66509 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp66509)))
    (define address-info::t
      (let ((__tmp66510 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp66510)))
    (define atom?
      (lambda (_obj66447_)
        (if (let () (declare (not safe)) (immediate? _obj66447_))
            (if (let ((__tmp66512
                       (let () (declare (not safe)) (char? _obj66447_))))
                  (declare (not safe))
                  (not __tmp66512))
                (let ((__tmp66511
                       (let () (declare (not safe)) (fixnum? _obj66447_))))
                  (declare (not safe))
                  (not __tmp66511))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj66445_)
        (if (fx= (let () (declare (not safe)) (##type _obj66445_)) '2)
            (if (let ((__tmp66517
                       (let () (declare (not safe)) (char? _obj66445_))))
                  (declare (not safe))
                  (not __tmp66517))
                (if (let ((__tmp66516
                           (let () (declare (not safe)) (null? _obj66445_))))
                      (declare (not safe))
                      (not __tmp66516))
                    (if (let ((__tmp66515
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj66445_))))
                          (declare (not safe))
                          (not __tmp66515))
                        (if (let ((__tmp66514
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj66445_ '#!void))))
                              (declare (not safe))
                              (not __tmp66514))
                            (let ((__tmp66513
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj66445_))))
                              (declare (not safe))
                              (not __tmp66513))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj66437_)
        (let ((_$e66439_ (let () (declare (not safe)) (vector? _obj66437_))))
          (if _$e66439_
              _$e66439_
              (let ((_$e66442_
                     (let () (declare (not safe)) (string? _obj66437_))))
                (if _$e66442_
                    _$e66442_
                    (let () (declare (not safe)) (hvector? _obj66437_))))))))
    (define hvector?
      (lambda (_obj66408_)
        (let ((_$e66410_ (let () (declare (not safe)) (u8vector? _obj66408_))))
          (if _$e66410_
              _$e66410_
              (let ((_$e66413_ (s8vector? _obj66408_)))
                (if _$e66413_
                    _$e66413_
                    (let ((_$e66416_ (u16vector? _obj66408_)))
                      (if _$e66416_
                          _$e66416_
                          (let ((_$e66419_ (s16vector? _obj66408_)))
                            (if _$e66419_
                                _$e66419_
                                (let ((_$e66422_ (u32vector? _obj66408_)))
                                  (if _$e66422_
                                      _$e66422_
                                      (let ((_$e66425_
                                             (s32vector? _obj66408_)))
                                        (if _$e66425_
                                            _$e66425_
                                            (let ((_$e66428_
                                                   (u64vector? _obj66408_)))
                                              (if _$e66428_
                                                  _$e66428_
                                                  (let ((_$e66431_
                                                         (s64vector?
                                                          _obj66408_)))
                                                    (if _$e66431_
                                                        _$e66431_
                                                        (let ((_$e66434_
                                                               (f32vector?
                                                                _obj66408_)))
                                                          (if _$e66434_
                                                              _$e66434_
                                                              (f64vector?
                                                               _obj66408_)))))))))))))))))))))
    (define weak?
      (lambda (_obj66406_)
        (if (let () (declare (not safe)) (##subtyped? _obj66406_))
            (let ((__tmp66519
                   (let () (declare (not safe)) (##subtype _obj66406_)))
                  (__tmp66518 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp66519 __tmp66518))
            '#f)))
    (define object-port?
      (lambda (_obj66404_)
        (let ((__tmp66520
               (let ((__tmp66521 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp66521))))
          (declare (not safe))
          (##structure-instance-of? _obj66404_ __tmp66520))))
    (define character-port?
      (lambda (_obj66402_)
        (let ((__tmp66522
               (let ((__tmp66523 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp66523))))
          (declare (not safe))
          (##structure-instance-of? _obj66402_ __tmp66522))))
    (define device-port?
      (lambda (_obj66400_)
        (let ((__tmp66524
               (let ((__tmp66525 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66525))))
          (declare (not safe))
          (##structure-instance-of? _obj66400_ __tmp66524))))
    (define vector-port?
      (lambda (_obj66398_)
        (let ((__tmp66526
               (let ((__tmp66527 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66527))))
          (declare (not safe))
          (##structure-instance-of? _obj66398_ __tmp66526))))
    (define string-port?
      (lambda (_obj66396_)
        (let ((__tmp66528
               (let ((__tmp66529 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp66529))))
          (declare (not safe))
          (##structure-instance-of? _obj66396_ __tmp66528))))
    (define u8vector-port?
      (lambda (_obj66394_)
        (let ((__tmp66530
               (let ((__tmp66531 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66531))))
          (declare (not safe))
          (##structure-instance-of? _obj66394_ __tmp66530))))
    (define raw-device-port?
      (lambda (_obj66392_)
        (let ((__tmp66532
               (let ((__tmp66533 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66533))))
          (declare (not safe))
          (##structure-instance-of? _obj66392_ __tmp66532))))
    (define tcp-server-port?
      (lambda (_obj66390_)
        (let ((__tmp66534
               (let ((__tmp66535 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp66535))))
          (declare (not safe))
          (##structure-instance-of? _obj66390_ __tmp66534))))
    (define udp-port?
      (lambda (_obj66388_)
        (let ((__tmp66536
               (let ((__tmp66537 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp66537))))
          (declare (not safe))
          (##structure-instance-of? _obj66388_ __tmp66536))))
    (define directory-port?
      (lambda (_obj66386_)
        (let ((__tmp66538
               (let ((__tmp66539 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp66539))))
          (declare (not safe))
          (##structure-instance-of? _obj66386_ __tmp66538))))
    (define event-queue-port?
      (lambda (_obj66384_)
        (let ((__tmp66540
               (let ((__tmp66541 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp66541))))
          (declare (not safe))
          (##structure-instance-of? _obj66384_ __tmp66540))))
    (define readenv?
      (lambda (_obj66382_)
        (let ((__tmp66542
               (let ((__tmp66543 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp66543))))
          (declare (not safe))
          (##structure-instance-of? _obj66382_ __tmp66542))))
    (define writeenv?
      (lambda (_obj66380_)
        (let ((__tmp66544
               (let ((__tmp66545 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp66545))))
          (declare (not safe))
          (##structure-instance-of? _obj66380_ __tmp66544))))
    (define vm?
      (lambda (_obj66378_)
        (let ((__tmp66546
               (let ((__tmp66547 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp66547))))
          (declare (not safe))
          (##structure-instance-of? _obj66378_ __tmp66546))))))
