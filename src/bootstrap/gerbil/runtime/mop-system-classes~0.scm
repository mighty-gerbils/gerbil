(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1710954835)
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
      (let ((__tmp66430 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp66430)))
    (define boolean::t
      (let ((__tmp66431 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp66431)))
    (define atom::t
      (let ((__tmp66432 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'atom __tmp66432)))
    (define void::t
      (let ((__tmp66433 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp66433)))
    (define eof::t
      (let ((__tmp66434 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp66434)))
    (define true::t
      (let ((__tmp66435
             (let ((__tmp66436
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66436))))
        (declare (not safe))
        (__make-system-class 'true __tmp66435)))
    (define false::t
      (let ((__tmp66437
             (let ((__tmp66438
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66438))))
        (declare (not safe))
        (__make-system-class 'false __tmp66437)))
    (define special::t
      (let ((__tmp66439 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp66439)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp66440 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp66440)))
    (define integer::t
      (let ((__tmp66441 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp66441)))
    (define fixnum::t
      (let ((__tmp66442
             (let ((__tmp66443
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp66443))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp66442)))
    (define bignum::t
      (let ((__tmp66444 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp66444)))
    (define ratnum::t
      (let ((__tmp66445 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp66445)))
    (define flonum::t
      (let ((__tmp66446 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp66446)))
    (define cpxnum::t
      (let ((__tmp66447 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp66447)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp66448 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp66448)))
    (define keyword::t
      (let ((__tmp66449 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp66449)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp66450 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp66450)))
    (define null::t
      (let ((__tmp66451
             (let ((__tmp66452
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons list::t __tmp66452))))
        (declare (not safe))
        (__make-system-class 'null __tmp66451)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp66453 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp66453)))
    (define string::t
      (let ((__tmp66454 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp66454)))
    (define hvector::t
      (let ((__tmp66455 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp66455)))
    (define u8vector::t
      (let ((__tmp66456 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp66456)))
    (define s8vector::t
      (let ((__tmp66457 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp66457)))
    (define u16vector::t
      (let ((__tmp66458 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp66458)))
    (define s16vector::t
      (let ((__tmp66459 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp66459)))
    (define u32vector::t
      (let ((__tmp66460 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp66460)))
    (define s32vector::t
      (let ((__tmp66461 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp66461)))
    (define u64vector::t
      (let ((__tmp66462 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp66462)))
    (define s64vector::t
      (let ((__tmp66463 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp66463)))
    (define f32vector::t
      (let ((__tmp66464 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp66464)))
    (define f64vector::t
      (let ((__tmp66465 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp66465)))
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
      (let ((__tmp66466 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp66466)))
    (define thread::t
      (let ((__tmp66467 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp66467)))
    (define thread-group::t
      (let ((__tmp66468 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp66468)))
    (define mutex::t
      (let ((__tmp66469 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp66469)))
    (define condvar::t
      (let ((__tmp66470 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp66470)))
    (define port::t
      (let ((__tmp66471 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp66471)))
    (define object-port::t
      (let ((__tmp66472 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp66472)))
    (define character-port::t
      (let ((__tmp66473 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp66473)))
    (define byte-port::t
      (let ((__tmp66474 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp66474)))
    (define device-port::t
      (let ((__tmp66475 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66475)))
    (define vector-port::t
      (let ((__tmp66476 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66476)))
    (define string-port::t
      (let ((__tmp66477 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp66477)))
    (define u8vector-port::t
      (let ((__tmp66478 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66478)))
    (define raw-device-port::t
      (let ((__tmp66479 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66479)))
    (define tcp-server-port::t
      (let ((__tmp66480 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp66480)))
    (define udp-port::t
      (let ((__tmp66481 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp66481)))
    (define directory-port::t
      (let ((__tmp66482 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp66482)))
    (define event-queue-port::t
      (let ((__tmp66483 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp66483)))
    (define table::t
      (let ((__tmp66484 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp66484)))
    (define readenv::t
      (let ((__tmp66485 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp66485)))
    (define writeenv::t
      (let ((__tmp66486 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp66486)))
    (define readtable::t
      (let ((__tmp66487 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp66487)))
    (define processor::t
      (let ((__tmp66488 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp66488)))
    (define vm::t
      (let ((__tmp66489 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp66489)))
    (define file-info::t
      (let ((__tmp66490 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp66490)))
    (define socket-info::t
      (let ((__tmp66491 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp66491)))
    (define address-info::t
      (let ((__tmp66492 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp66492)))
    (define atom?
      (lambda (_obj66429_)
        (if (let () (declare (not safe)) (immediate? _obj66429_))
            (if (let ((__tmp66494
                       (let () (declare (not safe)) (char? _obj66429_))))
                  (declare (not safe))
                  (not __tmp66494))
                (let ((__tmp66493
                       (let () (declare (not safe)) (fixnum? _obj66429_))))
                  (declare (not safe))
                  (not __tmp66493))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj66427_)
        (if (fx= (let () (declare (not safe)) (##type _obj66427_)) '2)
            (if (let ((__tmp66499
                       (let () (declare (not safe)) (char? _obj66427_))))
                  (declare (not safe))
                  (not __tmp66499))
                (if (let ((__tmp66498
                           (let () (declare (not safe)) (null? _obj66427_))))
                      (declare (not safe))
                      (not __tmp66498))
                    (if (let ((__tmp66497
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj66427_))))
                          (declare (not safe))
                          (not __tmp66497))
                        (if (let ((__tmp66496
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj66427_ '#!void))))
                              (declare (not safe))
                              (not __tmp66496))
                            (let ((__tmp66495
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj66427_))))
                              (declare (not safe))
                              (not __tmp66495))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj66419_)
        (let ((_$e66421_ (let () (declare (not safe)) (vector? _obj66419_))))
          (if _$e66421_
              _$e66421_
              (let ((_$e66424_
                     (let () (declare (not safe)) (string? _obj66419_))))
                (if _$e66424_
                    _$e66424_
                    (let () (declare (not safe)) (hvector? _obj66419_))))))))
    (define hvector?
      (lambda (_obj66390_)
        (let ((_$e66392_ (let () (declare (not safe)) (u8vector? _obj66390_))))
          (if _$e66392_
              _$e66392_
              (let ((_$e66395_ (s8vector? _obj66390_)))
                (if _$e66395_
                    _$e66395_
                    (let ((_$e66398_ (u16vector? _obj66390_)))
                      (if _$e66398_
                          _$e66398_
                          (let ((_$e66401_ (s16vector? _obj66390_)))
                            (if _$e66401_
                                _$e66401_
                                (let ((_$e66404_ (u32vector? _obj66390_)))
                                  (if _$e66404_
                                      _$e66404_
                                      (let ((_$e66407_
                                             (s32vector? _obj66390_)))
                                        (if _$e66407_
                                            _$e66407_
                                            (let ((_$e66410_
                                                   (u64vector? _obj66390_)))
                                              (if _$e66410_
                                                  _$e66410_
                                                  (let ((_$e66413_
                                                         (s64vector?
                                                          _obj66390_)))
                                                    (if _$e66413_
                                                        _$e66413_
                                                        (let ((_$e66416_
                                                               (f32vector?
                                                                _obj66390_)))
                                                          (if _$e66416_
                                                              _$e66416_
                                                              (f64vector?
                                                               _obj66390_)))))))))))))))))))))
    (define weak?
      (lambda (_obj66388_)
        (if (let () (declare (not safe)) (##subtyped? _obj66388_))
            (let ((__tmp66501
                   (let () (declare (not safe)) (##subtype _obj66388_)))
                  (__tmp66500 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp66501 __tmp66500))
            '#f)))
    (define object-port?
      (lambda (_obj66386_)
        (let ((__tmp66502
               (let ((__tmp66503 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp66503))))
          (declare (not safe))
          (##structure-instance-of? _obj66386_ __tmp66502))))
    (define character-port?
      (lambda (_obj66384_)
        (let ((__tmp66504
               (let ((__tmp66505 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp66505))))
          (declare (not safe))
          (##structure-instance-of? _obj66384_ __tmp66504))))
    (define device-port?
      (lambda (_obj66382_)
        (let ((__tmp66506
               (let ((__tmp66507 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66507))))
          (declare (not safe))
          (##structure-instance-of? _obj66382_ __tmp66506))))
    (define vector-port?
      (lambda (_obj66380_)
        (let ((__tmp66508
               (let ((__tmp66509 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66509))))
          (declare (not safe))
          (##structure-instance-of? _obj66380_ __tmp66508))))
    (define string-port?
      (lambda (_obj66378_)
        (let ((__tmp66510
               (let ((__tmp66511 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp66511))))
          (declare (not safe))
          (##structure-instance-of? _obj66378_ __tmp66510))))
    (define u8vector-port?
      (lambda (_obj66376_)
        (let ((__tmp66512
               (let ((__tmp66513 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66513))))
          (declare (not safe))
          (##structure-instance-of? _obj66376_ __tmp66512))))
    (define raw-device-port?
      (lambda (_obj66374_)
        (let ((__tmp66514
               (let ((__tmp66515 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66515))))
          (declare (not safe))
          (##structure-instance-of? _obj66374_ __tmp66514))))
    (define tcp-server-port?
      (lambda (_obj66372_)
        (let ((__tmp66516
               (let ((__tmp66517 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp66517))))
          (declare (not safe))
          (##structure-instance-of? _obj66372_ __tmp66516))))
    (define udp-port?
      (lambda (_obj66370_)
        (let ((__tmp66518
               (let ((__tmp66519 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp66519))))
          (declare (not safe))
          (##structure-instance-of? _obj66370_ __tmp66518))))
    (define directory-port?
      (lambda (_obj66368_)
        (let ((__tmp66520
               (let ((__tmp66521 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp66521))))
          (declare (not safe))
          (##structure-instance-of? _obj66368_ __tmp66520))))
    (define event-queue-port?
      (lambda (_obj66366_)
        (let ((__tmp66522
               (let ((__tmp66523 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp66523))))
          (declare (not safe))
          (##structure-instance-of? _obj66366_ __tmp66522))))
    (define readenv?
      (lambda (_obj66364_)
        (let ((__tmp66524
               (let ((__tmp66525 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp66525))))
          (declare (not safe))
          (##structure-instance-of? _obj66364_ __tmp66524))))
    (define writeenv?
      (lambda (_obj66362_)
        (let ((__tmp66526
               (let ((__tmp66527 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp66527))))
          (declare (not safe))
          (##structure-instance-of? _obj66362_ __tmp66526))))
    (define vm?
      (lambda (_obj66360_)
        (let ((__tmp66528
               (let ((__tmp66529 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp66529))))
          (declare (not safe))
          (##structure-instance-of? _obj66360_ __tmp66528))))))
