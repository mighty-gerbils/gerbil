(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1713001406)
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
      (let ((__tmp100386 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp100386)))
    (define boolean::t
      (let ((__tmp100387 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp100387)))
    (define atom::t
      (let ((__tmp100388 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp100388)))
    (define void::t
      (let ((__tmp100389 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp100389)))
    (define eof::t
      (let ((__tmp100390 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp100390)))
    (define true::t
      (let ((__tmp100391 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp100391)))
    (define false::t
      (let ((__tmp100392 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp100392)))
    (define special::t
      (let ((__tmp100393 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp100393)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp100394 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp100394)))
    (define integer::t
      (let ((__tmp100395 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp100395)))
    (define fixnum::t
      (let ((__tmp100396 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp100396)))
    (define bignum::t
      (let ((__tmp100397 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp100397)))
    (define ratnum::t
      (let ((__tmp100398 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp100398)))
    (define flonum::t
      (let ((__tmp100399 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp100399)))
    (define cpxnum::t
      (let ((__tmp100400 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp100400)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp100401 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp100401)))
    (define keyword::t
      (let ((__tmp100402 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp100402)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp100403 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp100403)))
    (define null::t
      (let ((__tmp100404 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp100404)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp100405 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp100405)))
    (define string::t
      (let ((__tmp100406 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp100406)))
    (define hvector::t
      (let ((__tmp100407 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp100407)))
    (define u8vector::t
      (let ((__tmp100408 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp100408)))
    (define s8vector::t
      (let ((__tmp100409 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp100409)))
    (define u16vector::t
      (let ((__tmp100410 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp100410)))
    (define s16vector::t
      (let ((__tmp100411 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp100411)))
    (define u32vector::t
      (let ((__tmp100412 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp100412)))
    (define s32vector::t
      (let ((__tmp100413 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp100413)))
    (define u64vector::t
      (let ((__tmp100414 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp100414)))
    (define s64vector::t
      (let ((__tmp100415 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp100415)))
    (define f32vector::t
      (let ((__tmp100416 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp100416)))
    (define f64vector::t
      (let ((__tmp100417 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp100417)))
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
      (let ((__tmp100418 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp100418)))
    (define thread::t
      (let ((__tmp100419 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp100419)))
    (define thread-group::t
      (let ((__tmp100420 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp100420)))
    (define mutex::t
      (let ((__tmp100421 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp100421)))
    (define condvar::t
      (let ((__tmp100422 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp100422)))
    (define port::t
      (let ((__tmp100423 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp100423)))
    (define object-port::t
      (let ((__tmp100424 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp100424)))
    (define character-port::t
      (let ((__tmp100425 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp100425)))
    (define byte-port::t
      (let ((__tmp100426 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp100426)))
    (define device-port::t
      (let ((__tmp100427 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp100427)))
    (define vector-port::t
      (let ((__tmp100428 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp100428)))
    (define string-port::t
      (let ((__tmp100429 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp100429)))
    (define u8vector-port::t
      (let ((__tmp100430 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp100430)))
    (define raw-device-port::t
      (let ((__tmp100431 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp100431)))
    (define tcp-server-port::t
      (let ((__tmp100432 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp100432)))
    (define udp-port::t
      (let ((__tmp100433 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp100433)))
    (define directory-port::t
      (let ((__tmp100434 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp100434)))
    (define event-queue-port::t
      (let ((__tmp100435 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp100435)))
    (define table::t
      (let ((__tmp100436 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp100436)))
    (define readenv::t
      (let ((__tmp100437 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp100437)))
    (define writeenv::t
      (let ((__tmp100438 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp100438)))
    (define readtable::t
      (let ((__tmp100439 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp100439)))
    (define processor::t
      (let ((__tmp100440 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp100440)))
    (define vm::t
      (let ((__tmp100441 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp100441)))
    (define file-info::t
      (let ((__tmp100442 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp100442)))
    (define socket-info::t
      (let ((__tmp100443 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp100443)))
    (define address-info::t
      (let ((__tmp100444 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp100444)))
    (define atom?
      (lambda (_%obj100385%_)
        (if (let () (declare (not safe)) (immediate? _%obj100385%_))
            (if (char? _%obj100385%_) '#f (not (fixnum? _%obj100385%_)))
            '#f)))
    (define special?
      (lambda (_%obj100383%_)
        (if (let ((__tmp100445
                   (let () (declare (not safe)) (##type _%obj100383%_))))
              (declare (not safe))
              (##fx= __tmp100445 '2))
            (if (char? _%obj100383%_)
                '#f
                (if (null? _%obj100383%_)
                    '#f
                    (if (boolean? _%obj100383%_)
                        '#f
                        (if (eq? _%obj100383%_ '#!void)
                            '#f
                            (not (eof-object? _%obj100383%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj100375%_)
        (let ((_%$e100377%_ (vector? _%obj100375%_)))
          (if _%$e100377%_
              _%$e100377%_
              (let ((_%$e100380%_ (string? _%obj100375%_)))
                (if _%$e100380%_ _%$e100380%_ (hvector? _%obj100375%_)))))))
    (define hvector?
      (lambda (_%obj100346%_)
        (let ((_%$e100348%_ (u8vector? _%obj100346%_)))
          (if _%$e100348%_
              _%$e100348%_
              (let ((_%$e100351%_ (s8vector? _%obj100346%_)))
                (if _%$e100351%_
                    _%$e100351%_
                    (let ((_%$e100354%_ (u16vector? _%obj100346%_)))
                      (if _%$e100354%_
                          _%$e100354%_
                          (let ((_%$e100357%_ (s16vector? _%obj100346%_)))
                            (if _%$e100357%_
                                _%$e100357%_
                                (let ((_%$e100360%_
                                       (u32vector? _%obj100346%_)))
                                  (if _%$e100360%_
                                      _%$e100360%_
                                      (let ((_%$e100363%_
                                             (s32vector? _%obj100346%_)))
                                        (if _%$e100363%_
                                            _%$e100363%_
                                            (let ((_%$e100366%_
                                                   (u64vector? _%obj100346%_)))
                                              (if _%$e100366%_
                                                  _%$e100366%_
                                                  (let ((_%$e100369%_
                                                         (s64vector?
                                                          _%obj100346%_)))
                                                    (if _%$e100369%_
                                                        _%$e100369%_
                                                        (let ((_%$e100372%_
                                                               (f32vector?
                                                                _%obj100346%_)))
                                                          (if _%$e100372%_
                                                              _%$e100372%_
                                                              (f64vector?
                                                               _%obj100346%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj100344%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj100344%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj100344%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj100342%_)
        (let ((__tmp100446
               (let ((__tmp100447 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp100447))))
          (declare (not safe))
          (##structure-instance-of? _%obj100342%_ __tmp100446))))
    (define character-port?
      (lambda (_%obj100340%_)
        (let ((__tmp100448
               (let ((__tmp100449 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp100449))))
          (declare (not safe))
          (##structure-instance-of? _%obj100340%_ __tmp100448))))
    (define device-port?
      (lambda (_%obj100338%_)
        (let ((__tmp100450
               (let ((__tmp100451 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp100451))))
          (declare (not safe))
          (##structure-instance-of? _%obj100338%_ __tmp100450))))
    (define vector-port?
      (lambda (_%obj100336%_)
        (let ((__tmp100452
               (let ((__tmp100453 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp100453))))
          (declare (not safe))
          (##structure-instance-of? _%obj100336%_ __tmp100452))))
    (define string-port?
      (lambda (_%obj100334%_)
        (let ((__tmp100454
               (let ((__tmp100455 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp100455))))
          (declare (not safe))
          (##structure-instance-of? _%obj100334%_ __tmp100454))))
    (define u8vector-port?
      (lambda (_%obj100332%_)
        (let ((__tmp100456
               (let ((__tmp100457 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp100457))))
          (declare (not safe))
          (##structure-instance-of? _%obj100332%_ __tmp100456))))
    (define raw-device-port?
      (lambda (_%obj100330%_)
        (let ((__tmp100458
               (let ((__tmp100459 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp100459))))
          (declare (not safe))
          (##structure-instance-of? _%obj100330%_ __tmp100458))))
    (define tcp-server-port?
      (lambda (_%obj100328%_)
        (let ((__tmp100460
               (let ((__tmp100461 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp100461))))
          (declare (not safe))
          (##structure-instance-of? _%obj100328%_ __tmp100460))))
    (define udp-port?
      (lambda (_%obj100326%_)
        (let ((__tmp100462
               (let ((__tmp100463 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp100463))))
          (declare (not safe))
          (##structure-instance-of? _%obj100326%_ __tmp100462))))
    (define directory-port?
      (lambda (_%obj100324%_)
        (let ((__tmp100464
               (let ((__tmp100465 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp100465))))
          (declare (not safe))
          (##structure-instance-of? _%obj100324%_ __tmp100464))))
    (define event-queue-port?
      (lambda (_%obj100322%_)
        (let ((__tmp100466
               (let ((__tmp100467 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp100467))))
          (declare (not safe))
          (##structure-instance-of? _%obj100322%_ __tmp100466))))
    (define readenv?
      (lambda (_%obj100320%_)
        (let ((__tmp100468
               (let ((__tmp100469 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp100469))))
          (declare (not safe))
          (##structure-instance-of? _%obj100320%_ __tmp100468))))
    (define writeenv?
      (lambda (_%obj100318%_)
        (let ((__tmp100470
               (let ((__tmp100471 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp100471))))
          (declare (not safe))
          (##structure-instance-of? _%obj100318%_ __tmp100470))))
    (define vm?
      (lambda (_%obj100316%_)
        (let ((__tmp100472
               (let ((__tmp100473 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp100473))))
          (declare (not safe))
          (##structure-instance-of? _%obj100316%_ __tmp100472))))))
