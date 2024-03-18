(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1710776831)
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
      (let ((__tmp66401 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp66401)))
    (define boolean::t
      (let ((__tmp66402 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp66402)))
    (define atom::t
      (let ((__tmp66403 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'atom __tmp66403)))
    (define void::t
      (let ((__tmp66404 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp66404)))
    (define eof::t
      (let ((__tmp66405 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp66405)))
    (define true::t
      (let ((__tmp66406
             (let ((__tmp66407
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66407))))
        (declare (not safe))
        (__make-system-class 'true __tmp66406)))
    (define false::t
      (let ((__tmp66408
             (let ((__tmp66409
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66409))))
        (declare (not safe))
        (__make-system-class 'false __tmp66408)))
    (define special::t
      (let ((__tmp66410 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp66410)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp66411 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp66411)))
    (define integer::t
      (let ((__tmp66412 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp66412)))
    (define fixnum::t
      (let ((__tmp66413
             (let ((__tmp66414
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp66414))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp66413)))
    (define bignum::t
      (let ((__tmp66415 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp66415)))
    (define ratnum::t
      (let ((__tmp66416 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp66416)))
    (define flonum::t
      (let ((__tmp66417 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp66417)))
    (define cpxnum::t
      (let ((__tmp66418 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp66418)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp66419 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp66419)))
    (define keyword::t
      (let ((__tmp66420 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp66420)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp66421 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp66421)))
    (define null::t
      (let ((__tmp66422
             (let ((__tmp66423
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons list::t __tmp66423))))
        (declare (not safe))
        (__make-system-class 'null __tmp66422)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp66424 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp66424)))
    (define string::t
      (let ((__tmp66425 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp66425)))
    (define hvector::t
      (let ((__tmp66426 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp66426)))
    (define u8vector::t
      (let ((__tmp66427 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp66427)))
    (define s8vector::t
      (let ((__tmp66428 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp66428)))
    (define u16vector::t
      (let ((__tmp66429 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp66429)))
    (define s16vector::t
      (let ((__tmp66430 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp66430)))
    (define u32vector::t
      (let ((__tmp66431 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp66431)))
    (define s32vector::t
      (let ((__tmp66432 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp66432)))
    (define u64vector::t
      (let ((__tmp66433 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp66433)))
    (define s64vector::t
      (let ((__tmp66434 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp66434)))
    (define f32vector::t
      (let ((__tmp66435 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp66435)))
    (define f64vector::t
      (let ((__tmp66436 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp66436)))
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
      (let ((__tmp66437 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp66437)))
    (define thread::t
      (let ((__tmp66438 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp66438)))
    (define thread-group::t
      (let ((__tmp66439 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp66439)))
    (define mutex::t
      (let ((__tmp66440 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp66440)))
    (define condvar::t
      (let ((__tmp66441 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp66441)))
    (define port::t
      (let ((__tmp66442 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp66442)))
    (define object-port::t
      (let ((__tmp66443 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp66443)))
    (define character-port::t
      (let ((__tmp66444 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp66444)))
    (define byte-port::t
      (let ((__tmp66445 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp66445)))
    (define device-port::t
      (let ((__tmp66446 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66446)))
    (define vector-port::t
      (let ((__tmp66447 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66447)))
    (define string-port::t
      (let ((__tmp66448 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp66448)))
    (define u8vector-port::t
      (let ((__tmp66449 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66449)))
    (define raw-device-port::t
      (let ((__tmp66450 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66450)))
    (define tcp-server-port::t
      (let ((__tmp66451 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp66451)))
    (define udp-port::t
      (let ((__tmp66452 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp66452)))
    (define directory-port::t
      (let ((__tmp66453 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp66453)))
    (define event-queue-port::t
      (let ((__tmp66454 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp66454)))
    (define table::t
      (let ((__tmp66455 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp66455)))
    (define readenv::t
      (let ((__tmp66456 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp66456)))
    (define writeenv::t
      (let ((__tmp66457 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp66457)))
    (define readtable::t
      (let ((__tmp66458 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp66458)))
    (define processor::t
      (let ((__tmp66459 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp66459)))
    (define vm::t
      (let ((__tmp66460 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp66460)))
    (define file-info::t
      (let ((__tmp66461 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp66461)))
    (define socket-info::t
      (let ((__tmp66462 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp66462)))
    (define address-info::t
      (let ((__tmp66463 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp66463)))
    (define atom?
      (lambda (_obj66400_)
        (if (let () (declare (not safe)) (immediate? _obj66400_))
            (if (let ((__tmp66465
                       (let () (declare (not safe)) (char? _obj66400_))))
                  (declare (not safe))
                  (not __tmp66465))
                (let ((__tmp66464
                       (let () (declare (not safe)) (fixnum? _obj66400_))))
                  (declare (not safe))
                  (not __tmp66464))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj66398_)
        (if (fx= (let () (declare (not safe)) (##type _obj66398_)) '2)
            (if (let ((__tmp66470
                       (let () (declare (not safe)) (char? _obj66398_))))
                  (declare (not safe))
                  (not __tmp66470))
                (if (let ((__tmp66469
                           (let () (declare (not safe)) (null? _obj66398_))))
                      (declare (not safe))
                      (not __tmp66469))
                    (if (let ((__tmp66468
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj66398_))))
                          (declare (not safe))
                          (not __tmp66468))
                        (if (let ((__tmp66467
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj66398_ '#!void))))
                              (declare (not safe))
                              (not __tmp66467))
                            (let ((__tmp66466
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj66398_))))
                              (declare (not safe))
                              (not __tmp66466))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj66390_)
        (let ((_$e66392_ (let () (declare (not safe)) (vector? _obj66390_))))
          (if _$e66392_
              _$e66392_
              (let ((_$e66395_
                     (let () (declare (not safe)) (string? _obj66390_))))
                (if _$e66395_
                    _$e66395_
                    (let () (declare (not safe)) (hvector? _obj66390_))))))))
    (define hvector?
      (lambda (_obj66361_)
        (let ((_$e66363_ (let () (declare (not safe)) (u8vector? _obj66361_))))
          (if _$e66363_
              _$e66363_
              (let ((_$e66366_ (s8vector? _obj66361_)))
                (if _$e66366_
                    _$e66366_
                    (let ((_$e66369_ (u16vector? _obj66361_)))
                      (if _$e66369_
                          _$e66369_
                          (let ((_$e66372_ (s16vector? _obj66361_)))
                            (if _$e66372_
                                _$e66372_
                                (let ((_$e66375_ (u32vector? _obj66361_)))
                                  (if _$e66375_
                                      _$e66375_
                                      (let ((_$e66378_
                                             (s32vector? _obj66361_)))
                                        (if _$e66378_
                                            _$e66378_
                                            (let ((_$e66381_
                                                   (u64vector? _obj66361_)))
                                              (if _$e66381_
                                                  _$e66381_
                                                  (let ((_$e66384_
                                                         (s64vector?
                                                          _obj66361_)))
                                                    (if _$e66384_
                                                        _$e66384_
                                                        (let ((_$e66387_
                                                               (f32vector?
                                                                _obj66361_)))
                                                          (if _$e66387_
                                                              _$e66387_
                                                              (f64vector?
                                                               _obj66361_)))))))))))))))))))))
    (define weak?
      (lambda (_obj66359_)
        (if (let () (declare (not safe)) (##subtyped? _obj66359_))
            (let ((__tmp66472
                   (let () (declare (not safe)) (##subtype _obj66359_)))
                  (__tmp66471 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp66472 __tmp66471))
            '#f)))
    (define object-port?
      (lambda (_obj66357_)
        (let ((__tmp66473
               (let ((__tmp66474 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp66474))))
          (declare (not safe))
          (##structure-instance-of? _obj66357_ __tmp66473))))
    (define character-port?
      (lambda (_obj66355_)
        (let ((__tmp66475
               (let ((__tmp66476 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp66476))))
          (declare (not safe))
          (##structure-instance-of? _obj66355_ __tmp66475))))
    (define device-port?
      (lambda (_obj66353_)
        (let ((__tmp66477
               (let ((__tmp66478 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66478))))
          (declare (not safe))
          (##structure-instance-of? _obj66353_ __tmp66477))))
    (define vector-port?
      (lambda (_obj66351_)
        (let ((__tmp66479
               (let ((__tmp66480 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66480))))
          (declare (not safe))
          (##structure-instance-of? _obj66351_ __tmp66479))))
    (define string-port?
      (lambda (_obj66349_)
        (let ((__tmp66481
               (let ((__tmp66482 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp66482))))
          (declare (not safe))
          (##structure-instance-of? _obj66349_ __tmp66481))))
    (define u8vector-port?
      (lambda (_obj66347_)
        (let ((__tmp66483
               (let ((__tmp66484 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66484))))
          (declare (not safe))
          (##structure-instance-of? _obj66347_ __tmp66483))))
    (define raw-device-port?
      (lambda (_obj66345_)
        (let ((__tmp66485
               (let ((__tmp66486 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66486))))
          (declare (not safe))
          (##structure-instance-of? _obj66345_ __tmp66485))))
    (define tcp-server-port?
      (lambda (_obj66343_)
        (let ((__tmp66487
               (let ((__tmp66488 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp66488))))
          (declare (not safe))
          (##structure-instance-of? _obj66343_ __tmp66487))))
    (define udp-port?
      (lambda (_obj66341_)
        (let ((__tmp66489
               (let ((__tmp66490 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp66490))))
          (declare (not safe))
          (##structure-instance-of? _obj66341_ __tmp66489))))
    (define directory-port?
      (lambda (_obj66339_)
        (let ((__tmp66491
               (let ((__tmp66492 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp66492))))
          (declare (not safe))
          (##structure-instance-of? _obj66339_ __tmp66491))))
    (define event-queue-port?
      (lambda (_obj66337_)
        (let ((__tmp66493
               (let ((__tmp66494 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp66494))))
          (declare (not safe))
          (##structure-instance-of? _obj66337_ __tmp66493))))
    (define readenv?
      (lambda (_obj66335_)
        (let ((__tmp66495
               (let ((__tmp66496 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp66496))))
          (declare (not safe))
          (##structure-instance-of? _obj66335_ __tmp66495))))
    (define writeenv?
      (lambda (_obj66333_)
        (let ((__tmp66497
               (let ((__tmp66498 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp66498))))
          (declare (not safe))
          (##structure-instance-of? _obj66333_ __tmp66497))))
    (define vm?
      (lambda (_obj66331_)
        (let ((__tmp66499
               (let ((__tmp66500 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp66500))))
          (declare (not safe))
          (##structure-instance-of? _obj66331_ __tmp66499))))))
