(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1755903075)
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
      (let ((__tmp106376 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp106376)))
    (define boolean::t
      (let ((__tmp106377 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp106377)))
    (define atom::t
      (let ((__tmp106378 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp106378)))
    (define void::t
      (let ((__tmp106379 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp106379)))
    (define eof::t
      (let ((__tmp106380 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp106380)))
    (define true::t
      (let ((__tmp106381 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp106381)))
    (define false::t
      (let ((__tmp106382 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp106382)))
    (define special::t
      (let ((__tmp106383 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp106383)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp106384 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp106384)))
    (define integer::t
      (let ((__tmp106385 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp106385)))
    (define fixnum::t
      (let ((__tmp106386 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp106386)))
    (define bignum::t
      (let ((__tmp106387 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp106387)))
    (define ratnum::t
      (let ((__tmp106388 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp106388)))
    (define flonum::t
      (let ((__tmp106389 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp106389)))
    (define cpxnum::t
      (let ((__tmp106390 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp106390)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp106391 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp106391)))
    (define keyword::t
      (let ((__tmp106392 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp106392)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp106393 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp106393)))
    (define null::t
      (let ((__tmp106394 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp106394)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp106395 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp106395)))
    (define string::t
      (let ((__tmp106396 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp106396)))
    (define hvector::t
      (let ((__tmp106397 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp106397)))
    (define u8vector::t
      (let ((__tmp106398 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp106398)))
    (define s8vector::t
      (let ((__tmp106399 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp106399)))
    (define u16vector::t
      (let ((__tmp106400 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp106400)))
    (define s16vector::t
      (let ((__tmp106401 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp106401)))
    (define u32vector::t
      (let ((__tmp106402 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp106402)))
    (define s32vector::t
      (let ((__tmp106403 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp106403)))
    (define u64vector::t
      (let ((__tmp106404 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp106404)))
    (define s64vector::t
      (let ((__tmp106405 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp106405)))
    (define f32vector::t
      (let ((__tmp106406 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp106406)))
    (define f64vector::t
      (let ((__tmp106407 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp106407)))
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
      (let ((__tmp106408 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp106408)))
    (define thread::t
      (let ((__tmp106409 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp106409)))
    (define thread-group::t
      (let ((__tmp106410 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp106410)))
    (define mutex::t
      (let ((__tmp106411 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp106411)))
    (define condvar::t
      (let ((__tmp106412 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp106412)))
    (define port::t
      (let ((__tmp106413 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp106413)))
    (define object-port::t
      (let ((__tmp106414 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp106414)))
    (define character-port::t
      (let ((__tmp106415 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp106415)))
    (define byte-port::t
      (let ((__tmp106416 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp106416)))
    (define device-port::t
      (let ((__tmp106417 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp106417)))
    (define vector-port::t
      (let ((__tmp106418 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp106418)))
    (define string-port::t
      (let ((__tmp106419 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp106419)))
    (define u8vector-port::t
      (let ((__tmp106420 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp106420)))
    (define raw-device-port::t
      (let ((__tmp106421 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp106421)))
    (define tcp-server-port::t
      (let ((__tmp106422 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp106422)))
    (define udp-port::t
      (let ((__tmp106423 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp106423)))
    (define directory-port::t
      (let ((__tmp106424 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp106424)))
    (define event-queue-port::t
      (let ((__tmp106425 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp106425)))
    (define table::t
      (let ((__tmp106426 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp106426)))
    (define readenv::t
      (let ((__tmp106427 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp106427)))
    (define writeenv::t
      (let ((__tmp106428 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp106428)))
    (define readtable::t
      (let ((__tmp106429 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp106429)))
    (define processor::t
      (let ((__tmp106430 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp106430)))
    (define vm::t
      (let ((__tmp106431 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp106431)))
    (define file-info::t
      (let ((__tmp106432 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp106432)))
    (define socket-info::t
      (let ((__tmp106433 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp106433)))
    (define address-info::t
      (let ((__tmp106434 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp106434)))
    (define atom?
      (lambda (_%obj106375%_)
        (if (let () (declare (not safe)) (immediate? _%obj106375%_))
            (if (char? _%obj106375%_) '#f (not (fixnum? _%obj106375%_)))
            '#f)))
    (define special?
      (lambda (_%obj106373%_)
        (if (let ((__tmp106435
                   (let () (declare (not safe)) (##type _%obj106373%_))))
              (declare (not safe))
              (##fx= __tmp106435 '2))
            (if (char? _%obj106373%_)
                '#f
                (if (null? _%obj106373%_)
                    '#f
                    (if (boolean? _%obj106373%_)
                        '#f
                        (if (eq? _%obj106373%_ '#!void)
                            '#f
                            (not (eof-object? _%obj106373%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj106365%_)
        (let ((_%$e106367%_ (vector? _%obj106365%_)))
          (if _%$e106367%_
              _%$e106367%_
              (let ((_%$e106370%_ (string? _%obj106365%_)))
                (if _%$e106370%_ _%$e106370%_ (hvector? _%obj106365%_)))))))
    (define hvector?
      (lambda (_%obj106336%_)
        (let ((_%$e106338%_ (u8vector? _%obj106336%_)))
          (if _%$e106338%_
              _%$e106338%_
              (let ((_%$e106341%_ (s8vector? _%obj106336%_)))
                (if _%$e106341%_
                    _%$e106341%_
                    (let ((_%$e106344%_ (u16vector? _%obj106336%_)))
                      (if _%$e106344%_
                          _%$e106344%_
                          (let ((_%$e106347%_ (s16vector? _%obj106336%_)))
                            (if _%$e106347%_
                                _%$e106347%_
                                (let ((_%$e106350%_
                                       (u32vector? _%obj106336%_)))
                                  (if _%$e106350%_
                                      _%$e106350%_
                                      (let ((_%$e106353%_
                                             (s32vector? _%obj106336%_)))
                                        (if _%$e106353%_
                                            _%$e106353%_
                                            (let ((_%$e106356%_
                                                   (u64vector? _%obj106336%_)))
                                              (if _%$e106356%_
                                                  _%$e106356%_
                                                  (let ((_%$e106359%_
                                                         (s64vector?
                                                          _%obj106336%_)))
                                                    (if _%$e106359%_
                                                        _%$e106359%_
                                                        (let ((_%$e106362%_
                                                               (f32vector?
                                                                _%obj106336%_)))
                                                          (if _%$e106362%_
                                                              _%$e106362%_
                                                              (f64vector?
                                                               _%obj106336%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj106334%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj106334%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj106334%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj106332%_)
        (let ((__tmp106436
               (let ((__tmp106437 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp106437))))
          (declare (not safe))
          (##structure-instance-of? _%obj106332%_ __tmp106436))))
    (define character-port?
      (lambda (_%obj106330%_)
        (let ((__tmp106438
               (let ((__tmp106439 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp106439))))
          (declare (not safe))
          (##structure-instance-of? _%obj106330%_ __tmp106438))))
    (define device-port?
      (lambda (_%obj106328%_)
        (let ((__tmp106440
               (let ((__tmp106441 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp106441))))
          (declare (not safe))
          (##structure-instance-of? _%obj106328%_ __tmp106440))))
    (define vector-port?
      (lambda (_%obj106326%_)
        (let ((__tmp106442
               (let ((__tmp106443 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp106443))))
          (declare (not safe))
          (##structure-instance-of? _%obj106326%_ __tmp106442))))
    (define string-port?
      (lambda (_%obj106324%_)
        (let ((__tmp106444
               (let ((__tmp106445 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp106445))))
          (declare (not safe))
          (##structure-instance-of? _%obj106324%_ __tmp106444))))
    (define u8vector-port?
      (lambda (_%obj106322%_)
        (let ((__tmp106446
               (let ((__tmp106447 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp106447))))
          (declare (not safe))
          (##structure-instance-of? _%obj106322%_ __tmp106446))))
    (define raw-device-port?
      (lambda (_%obj106320%_)
        (let ((__tmp106448
               (let ((__tmp106449 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp106449))))
          (declare (not safe))
          (##structure-instance-of? _%obj106320%_ __tmp106448))))
    (define tcp-server-port?
      (lambda (_%obj106318%_)
        (let ((__tmp106450
               (let ((__tmp106451 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp106451))))
          (declare (not safe))
          (##structure-instance-of? _%obj106318%_ __tmp106450))))
    (define udp-port?
      (lambda (_%obj106316%_)
        (let ((__tmp106452
               (let ((__tmp106453 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp106453))))
          (declare (not safe))
          (##structure-instance-of? _%obj106316%_ __tmp106452))))
    (define directory-port?
      (lambda (_%obj106314%_)
        (let ((__tmp106454
               (let ((__tmp106455 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp106455))))
          (declare (not safe))
          (##structure-instance-of? _%obj106314%_ __tmp106454))))
    (define event-queue-port?
      (lambda (_%obj106312%_)
        (let ((__tmp106456
               (let ((__tmp106457 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp106457))))
          (declare (not safe))
          (##structure-instance-of? _%obj106312%_ __tmp106456))))
    (define readenv?
      (lambda (_%obj106310%_)
        (let ((__tmp106458
               (let ((__tmp106459 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp106459))))
          (declare (not safe))
          (##structure-instance-of? _%obj106310%_ __tmp106458))))
    (define writeenv?
      (lambda (_%obj106308%_)
        (let ((__tmp106460
               (let ((__tmp106461 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp106461))))
          (declare (not safe))
          (##structure-instance-of? _%obj106308%_ __tmp106460))))
    (define vm?
      (lambda (_%obj106306%_)
        (let ((__tmp106462
               (let ((__tmp106463 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp106463))))
          (declare (not safe))
          (##structure-instance-of? _%obj106306%_ __tmp106462))))))
