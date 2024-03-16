(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1710617600)
  (begin
    (define immediate::t
      (let () (declare (not safe)) (__make-system-class 'immediate '())))
    (define char::t
      (let ((__tmp63389 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp63389)))
    (define boolean::t
      (let ((__tmp63390 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp63390)))
    (define void::t
      (let ((__tmp63391 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp63391)))
    (define eof::t
      (let ((__tmp63392 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp63392)))
    (define special::t
      (let ((__tmp63393 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp63393)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp63394 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp63394)))
    (define integer::t
      (let ((__tmp63395 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp63395)))
    (define fixnum::t
      (let ((__tmp63396
             (let ((__tmp63397
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp63397))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp63396)))
    (define bignum::t
      (let ((__tmp63398 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp63398)))
    (define ratnum::t
      (let ((__tmp63399 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp63399)))
    (define flonum::t
      (let ((__tmp63400 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp63400)))
    (define cpxnum::t
      (let ((__tmp63401 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp63401)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp63402 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp63402)))
    (define keyword::t
      (let ((__tmp63403 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp63403)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp63404 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp63404)))
    (define null::t
      (let ((__tmp63405
             (let ((__tmp63406
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons list::t __tmp63406))))
        (declare (not safe))
        (__make-system-class 'null __tmp63405)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp63407 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp63407)))
    (define string::t
      (let ((__tmp63408 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp63408)))
    (define hvector::t
      (let ((__tmp63409 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp63409)))
    (define u8vector::t
      (let ((__tmp63410 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp63410)))
    (define s8vector::t
      (let ((__tmp63411 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp63411)))
    (define u16vector::t
      (let ((__tmp63412 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp63412)))
    (define s16vector::t
      (let ((__tmp63413 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp63413)))
    (define u32vector::t
      (let ((__tmp63414 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp63414)))
    (define s32vector::t
      (let ((__tmp63415 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp63415)))
    (define u64vector::t
      (let ((__tmp63416 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp63416)))
    (define s64vector::t
      (let ((__tmp63417 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp63417)))
    (define f32vector::t
      (let ((__tmp63418 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp63418)))
    (define f64vector::t
      (let ((__tmp63419 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp63419)))
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
    (define time::t
      (let ((__tmp63420 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp63420)))
    (define thread::t
      (let ((__tmp63421 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp63421)))
    (define thread-group::t
      (let ((__tmp63422 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp63422)))
    (define mutex::t
      (let ((__tmp63423 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp63423)))
    (define condvar::t
      (let ((__tmp63424 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp63424)))
    (define port::t
      (let ((__tmp63425 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp63425)))
    (define object-port::t
      (let ((__tmp63426 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp63426)))
    (define character-port::t
      (let ((__tmp63427 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp63427)))
    (define byte-port::t
      (let ((__tmp63428 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp63428)))
    (define device-port::t
      (let ((__tmp63429 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp63429)))
    (define vector-port::t
      (let ((__tmp63430 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp63430)))
    (define string-port::t
      (let ((__tmp63431 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp63431)))
    (define u8vector-port::t
      (let ((__tmp63432 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp63432)))
    (define raw-device-port::t
      (let ((__tmp63433 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp63433)))
    (define tcp-server-port::t
      (let ((__tmp63434 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp63434)))
    (define udp-port::t
      (let ((__tmp63435 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp63435)))
    (define directory-port::t
      (let ((__tmp63436 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp63436)))
    (define event-queue-port::t
      (let ((__tmp63437 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp63437)))
    (define table::t
      (let ((__tmp63438 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp63438)))
    (define readenv::t
      (let ((__tmp63439 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp63439)))
    (define writeenv::t
      (let ((__tmp63440 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp63440)))
    (define readtable::t
      (let ((__tmp63441 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp63441)))
    (define processor::t
      (let ((__tmp63442 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp63442)))
    (define vm::t
      (let ((__tmp63443 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp63443)))
    (define file-info::t
      (let ((__tmp63444 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp63444)))
    (define socket-info::t
      (let ((__tmp63445 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp63445)))
    (define address-info::t
      (let ((__tmp63446 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp63446)))
    (define special?
      (lambda (_obj63388_)
        (if (fx= (let () (declare (not safe)) (##type _obj63388_)) '2)
            (if (let ((__tmp63447
                       (let () (declare (not safe)) (char? _obj63388_))))
                  (declare (not safe))
                  (not __tmp63447))
                (if (let ((__tmp63448
                           (let () (declare (not safe)) (null? _obj63388_))))
                      (declare (not safe))
                      (not __tmp63448))
                    (if (let ((__tmp63449
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj63388_))))
                          (declare (not safe))
                          (not __tmp63449))
                        (if (let ((__tmp63450
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj63388_ '#!void))))
                              (declare (not safe))
                              (not __tmp63450))
                            (let ((__tmp63451
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj63388_))))
                              (declare (not safe))
                              (not __tmp63451))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj63380_)
        (let ((_$e63382_ (let () (declare (not safe)) (vector? _obj63380_))))
          (if _$e63382_
              _$e63382_
              (let ((_$e63385_
                     (let () (declare (not safe)) (string? _obj63380_))))
                (if _$e63385_
                    _$e63385_
                    (let () (declare (not safe)) (hvector? _obj63380_))))))))
    (define hvector?
      (lambda (_obj63351_)
        (let ((_$e63353_ (let () (declare (not safe)) (u8vector? _obj63351_))))
          (if _$e63353_
              _$e63353_
              (let ((_$e63356_ (s8vector? _obj63351_)))
                (if _$e63356_
                    _$e63356_
                    (let ((_$e63359_ (u16vector? _obj63351_)))
                      (if _$e63359_
                          _$e63359_
                          (let ((_$e63362_ (s16vector? _obj63351_)))
                            (if _$e63362_
                                _$e63362_
                                (let ((_$e63365_ (u32vector? _obj63351_)))
                                  (if _$e63365_
                                      _$e63365_
                                      (let ((_$e63368_
                                             (s32vector? _obj63351_)))
                                        (if _$e63368_
                                            _$e63368_
                                            (let ((_$e63371_
                                                   (u64vector? _obj63351_)))
                                              (if _$e63371_
                                                  _$e63371_
                                                  (let ((_$e63374_
                                                         (s64vector?
                                                          _obj63351_)))
                                                    (if _$e63374_
                                                        _$e63374_
                                                        (let ((_$e63377_
                                                               (f32vector?
                                                                _obj63351_)))
                                                          (if _$e63377_
                                                              _$e63377_
                                                              (f64vector?
                                                               _obj63351_)))))))))))))))))))))
    (define weak?
      (lambda (_obj63349_)
        (if (let () (declare (not safe)) (##subtyped? _obj63349_))
            (let ((__tmp63453
                   (let () (declare (not safe)) (##subtype _obj63349_)))
                  (__tmp63452 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp63453 __tmp63452))
            '#f)))
    (define object-port?
      (lambda (_obj63347_)
        (let ((__tmp63454
               (let ((__tmp63455 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp63455))))
          (declare (not safe))
          (##structure-instance-of? _obj63347_ __tmp63454))))
    (define character-port?
      (lambda (_obj63345_)
        (let ((__tmp63456
               (let ((__tmp63457 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp63457))))
          (declare (not safe))
          (##structure-instance-of? _obj63345_ __tmp63456))))
    (define device-port?
      (lambda (_obj63343_)
        (let ((__tmp63458
               (let ((__tmp63459 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp63459))))
          (declare (not safe))
          (##structure-instance-of? _obj63343_ __tmp63458))))
    (define vector-port?
      (lambda (_obj63341_)
        (let ((__tmp63460
               (let ((__tmp63461 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp63461))))
          (declare (not safe))
          (##structure-instance-of? _obj63341_ __tmp63460))))
    (define string-port?
      (lambda (_obj63339_)
        (let ((__tmp63462
               (let ((__tmp63463 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp63463))))
          (declare (not safe))
          (##structure-instance-of? _obj63339_ __tmp63462))))
    (define u8vector-port?
      (lambda (_obj63337_)
        (let ((__tmp63464
               (let ((__tmp63465 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp63465))))
          (declare (not safe))
          (##structure-instance-of? _obj63337_ __tmp63464))))
    (define raw-device-port?
      (lambda (_obj63335_)
        (let ((__tmp63466
               (let ((__tmp63467 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp63467))))
          (declare (not safe))
          (##structure-instance-of? _obj63335_ __tmp63466))))
    (define tcp-server-port?
      (lambda (_obj63333_)
        (let ((__tmp63468
               (let ((__tmp63469 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp63469))))
          (declare (not safe))
          (##structure-instance-of? _obj63333_ __tmp63468))))
    (define udp-port?
      (lambda (_obj63331_)
        (let ((__tmp63470
               (let ((__tmp63471 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp63471))))
          (declare (not safe))
          (##structure-instance-of? _obj63331_ __tmp63470))))
    (define directory-port?
      (lambda (_obj63329_)
        (let ((__tmp63472
               (let ((__tmp63473 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp63473))))
          (declare (not safe))
          (##structure-instance-of? _obj63329_ __tmp63472))))
    (define event-queue-port?
      (lambda (_obj63327_)
        (let ((__tmp63474
               (let ((__tmp63475 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp63475))))
          (declare (not safe))
          (##structure-instance-of? _obj63327_ __tmp63474))))
    (define readenv?
      (lambda (_obj63325_)
        (let ((__tmp63476
               (let ((__tmp63477 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp63477))))
          (declare (not safe))
          (##structure-instance-of? _obj63325_ __tmp63476))))
    (define writeenv?
      (lambda (_obj63323_)
        (let ((__tmp63478
               (let ((__tmp63479 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp63479))))
          (declare (not safe))
          (##structure-instance-of? _obj63323_ __tmp63478))))
    (define vm?
      (lambda (_obj63321_)
        (let ((__tmp63480
               (let ((__tmp63481 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp63481))))
          (declare (not safe))
          (##structure-instance-of? _obj63321_ __tmp63480))))))
