(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1713004409)
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
      (let ((__tmp100496 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp100496)))
    (define boolean::t
      (let ((__tmp100497 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp100497)))
    (define atom::t
      (let ((__tmp100498 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp100498)))
    (define void::t
      (let ((__tmp100499 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp100499)))
    (define eof::t
      (let ((__tmp100500 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp100500)))
    (define true::t
      (let ((__tmp100501 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp100501)))
    (define false::t
      (let ((__tmp100502 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp100502)))
    (define special::t
      (let ((__tmp100503 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp100503)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp100504 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp100504)))
    (define integer::t
      (let ((__tmp100505 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp100505)))
    (define fixnum::t
      (let ((__tmp100506 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp100506)))
    (define bignum::t
      (let ((__tmp100507 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp100507)))
    (define ratnum::t
      (let ((__tmp100508 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp100508)))
    (define flonum::t
      (let ((__tmp100509 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp100509)))
    (define cpxnum::t
      (let ((__tmp100510 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp100510)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp100511 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp100511)))
    (define keyword::t
      (let ((__tmp100512 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp100512)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp100513 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp100513)))
    (define null::t
      (let ((__tmp100514 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp100514)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp100515 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp100515)))
    (define string::t
      (let ((__tmp100516 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp100516)))
    (define hvector::t
      (let ((__tmp100517 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp100517)))
    (define u8vector::t
      (let ((__tmp100518 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp100518)))
    (define s8vector::t
      (let ((__tmp100519 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp100519)))
    (define u16vector::t
      (let ((__tmp100520 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp100520)))
    (define s16vector::t
      (let ((__tmp100521 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp100521)))
    (define u32vector::t
      (let ((__tmp100522 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp100522)))
    (define s32vector::t
      (let ((__tmp100523 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp100523)))
    (define u64vector::t
      (let ((__tmp100524 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp100524)))
    (define s64vector::t
      (let ((__tmp100525 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp100525)))
    (define f32vector::t
      (let ((__tmp100526 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp100526)))
    (define f64vector::t
      (let ((__tmp100527 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp100527)))
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
      (let ((__tmp100528 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp100528)))
    (define thread::t
      (let ((__tmp100529 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp100529)))
    (define thread-group::t
      (let ((__tmp100530 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp100530)))
    (define mutex::t
      (let ((__tmp100531 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp100531)))
    (define condvar::t
      (let ((__tmp100532 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp100532)))
    (define port::t
      (let ((__tmp100533 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp100533)))
    (define object-port::t
      (let ((__tmp100534 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp100534)))
    (define character-port::t
      (let ((__tmp100535 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp100535)))
    (define byte-port::t
      (let ((__tmp100536 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp100536)))
    (define device-port::t
      (let ((__tmp100537 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp100537)))
    (define vector-port::t
      (let ((__tmp100538 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp100538)))
    (define string-port::t
      (let ((__tmp100539 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp100539)))
    (define u8vector-port::t
      (let ((__tmp100540 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp100540)))
    (define raw-device-port::t
      (let ((__tmp100541 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp100541)))
    (define tcp-server-port::t
      (let ((__tmp100542 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp100542)))
    (define udp-port::t
      (let ((__tmp100543 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp100543)))
    (define directory-port::t
      (let ((__tmp100544 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp100544)))
    (define event-queue-port::t
      (let ((__tmp100545 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp100545)))
    (define table::t
      (let ((__tmp100546 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp100546)))
    (define readenv::t
      (let ((__tmp100547 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp100547)))
    (define writeenv::t
      (let ((__tmp100548 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp100548)))
    (define readtable::t
      (let ((__tmp100549 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp100549)))
    (define processor::t
      (let ((__tmp100550 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp100550)))
    (define vm::t
      (let ((__tmp100551 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp100551)))
    (define file-info::t
      (let ((__tmp100552 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp100552)))
    (define socket-info::t
      (let ((__tmp100553 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp100553)))
    (define address-info::t
      (let ((__tmp100554 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp100554)))
    (define atom?
      (lambda (_%obj100495%_)
        (if (let () (declare (not safe)) (immediate? _%obj100495%_))
            (if (char? _%obj100495%_) '#f (not (fixnum? _%obj100495%_)))
            '#f)))
    (define special?
      (lambda (_%obj100493%_)
        (if (let ((__tmp100555
                   (let () (declare (not safe)) (##type _%obj100493%_))))
              (declare (not safe))
              (##fx= __tmp100555 '2))
            (if (char? _%obj100493%_)
                '#f
                (if (null? _%obj100493%_)
                    '#f
                    (if (boolean? _%obj100493%_)
                        '#f
                        (if (eq? _%obj100493%_ '#!void)
                            '#f
                            (not (eof-object? _%obj100493%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj100485%_)
        (let ((_%$e100487%_ (vector? _%obj100485%_)))
          (if _%$e100487%_
              _%$e100487%_
              (let ((_%$e100490%_ (string? _%obj100485%_)))
                (if _%$e100490%_ _%$e100490%_ (hvector? _%obj100485%_)))))))
    (define hvector?
      (lambda (_%obj100456%_)
        (let ((_%$e100458%_ (u8vector? _%obj100456%_)))
          (if _%$e100458%_
              _%$e100458%_
              (let ((_%$e100461%_ (s8vector? _%obj100456%_)))
                (if _%$e100461%_
                    _%$e100461%_
                    (let ((_%$e100464%_ (u16vector? _%obj100456%_)))
                      (if _%$e100464%_
                          _%$e100464%_
                          (let ((_%$e100467%_ (s16vector? _%obj100456%_)))
                            (if _%$e100467%_
                                _%$e100467%_
                                (let ((_%$e100470%_
                                       (u32vector? _%obj100456%_)))
                                  (if _%$e100470%_
                                      _%$e100470%_
                                      (let ((_%$e100473%_
                                             (s32vector? _%obj100456%_)))
                                        (if _%$e100473%_
                                            _%$e100473%_
                                            (let ((_%$e100476%_
                                                   (u64vector? _%obj100456%_)))
                                              (if _%$e100476%_
                                                  _%$e100476%_
                                                  (let ((_%$e100479%_
                                                         (s64vector?
                                                          _%obj100456%_)))
                                                    (if _%$e100479%_
                                                        _%$e100479%_
                                                        (let ((_%$e100482%_
                                                               (f32vector?
                                                                _%obj100456%_)))
                                                          (if _%$e100482%_
                                                              _%$e100482%_
                                                              (f64vector?
                                                               _%obj100456%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj100454%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj100454%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj100454%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj100452%_)
        (let ((__tmp100556
               (let ((__tmp100557 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp100557))))
          (declare (not safe))
          (##structure-instance-of? _%obj100452%_ __tmp100556))))
    (define character-port?
      (lambda (_%obj100450%_)
        (let ((__tmp100558
               (let ((__tmp100559 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp100559))))
          (declare (not safe))
          (##structure-instance-of? _%obj100450%_ __tmp100558))))
    (define device-port?
      (lambda (_%obj100448%_)
        (let ((__tmp100560
               (let ((__tmp100561 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp100561))))
          (declare (not safe))
          (##structure-instance-of? _%obj100448%_ __tmp100560))))
    (define vector-port?
      (lambda (_%obj100446%_)
        (let ((__tmp100562
               (let ((__tmp100563 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp100563))))
          (declare (not safe))
          (##structure-instance-of? _%obj100446%_ __tmp100562))))
    (define string-port?
      (lambda (_%obj100444%_)
        (let ((__tmp100564
               (let ((__tmp100565 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp100565))))
          (declare (not safe))
          (##structure-instance-of? _%obj100444%_ __tmp100564))))
    (define u8vector-port?
      (lambda (_%obj100442%_)
        (let ((__tmp100566
               (let ((__tmp100567 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp100567))))
          (declare (not safe))
          (##structure-instance-of? _%obj100442%_ __tmp100566))))
    (define raw-device-port?
      (lambda (_%obj100440%_)
        (let ((__tmp100568
               (let ((__tmp100569 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp100569))))
          (declare (not safe))
          (##structure-instance-of? _%obj100440%_ __tmp100568))))
    (define tcp-server-port?
      (lambda (_%obj100438%_)
        (let ((__tmp100570
               (let ((__tmp100571 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp100571))))
          (declare (not safe))
          (##structure-instance-of? _%obj100438%_ __tmp100570))))
    (define udp-port?
      (lambda (_%obj100436%_)
        (let ((__tmp100572
               (let ((__tmp100573 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp100573))))
          (declare (not safe))
          (##structure-instance-of? _%obj100436%_ __tmp100572))))
    (define directory-port?
      (lambda (_%obj100434%_)
        (let ((__tmp100574
               (let ((__tmp100575 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp100575))))
          (declare (not safe))
          (##structure-instance-of? _%obj100434%_ __tmp100574))))
    (define event-queue-port?
      (lambda (_%obj100432%_)
        (let ((__tmp100576
               (let ((__tmp100577 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp100577))))
          (declare (not safe))
          (##structure-instance-of? _%obj100432%_ __tmp100576))))
    (define readenv?
      (lambda (_%obj100430%_)
        (let ((__tmp100578
               (let ((__tmp100579 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp100579))))
          (declare (not safe))
          (##structure-instance-of? _%obj100430%_ __tmp100578))))
    (define writeenv?
      (lambda (_%obj100428%_)
        (let ((__tmp100580
               (let ((__tmp100581 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp100581))))
          (declare (not safe))
          (##structure-instance-of? _%obj100428%_ __tmp100580))))
    (define vm?
      (lambda (_%obj100426%_)
        (let ((__tmp100582
               (let ((__tmp100583 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp100583))))
          (declare (not safe))
          (##structure-instance-of? _%obj100426%_ __tmp100582))))))
