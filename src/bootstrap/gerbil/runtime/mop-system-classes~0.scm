(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712526089)
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
      (let ((__tmp98646 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98646)))
    (define boolean::t
      (let ((__tmp98647 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98647)))
    (define atom::t
      (let ((__tmp98648 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98648)))
    (define void::t
      (let ((__tmp98649 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98649)))
    (define eof::t
      (let ((__tmp98650 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98650)))
    (define true::t
      (let ((__tmp98651 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98651)))
    (define false::t
      (let ((__tmp98652 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98652)))
    (define special::t
      (let ((__tmp98653 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98653)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98654 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98654)))
    (define integer::t
      (let ((__tmp98655 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98655)))
    (define fixnum::t
      (let ((__tmp98656 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98656)))
    (define bignum::t
      (let ((__tmp98657 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98657)))
    (define ratnum::t
      (let ((__tmp98658 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98658)))
    (define flonum::t
      (let ((__tmp98659 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98659)))
    (define cpxnum::t
      (let ((__tmp98660 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98660)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98661 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98661)))
    (define keyword::t
      (let ((__tmp98662 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98662)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98663 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98663)))
    (define null::t
      (let ((__tmp98664 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98664)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98665 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98665)))
    (define string::t
      (let ((__tmp98666 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98666)))
    (define hvector::t
      (let ((__tmp98667 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98667)))
    (define u8vector::t
      (let ((__tmp98668 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98668)))
    (define s8vector::t
      (let ((__tmp98669 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98669)))
    (define u16vector::t
      (let ((__tmp98670 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98670)))
    (define s16vector::t
      (let ((__tmp98671 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98671)))
    (define u32vector::t
      (let ((__tmp98672 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98672)))
    (define s32vector::t
      (let ((__tmp98673 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98673)))
    (define u64vector::t
      (let ((__tmp98674 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98674)))
    (define s64vector::t
      (let ((__tmp98675 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98675)))
    (define f32vector::t
      (let ((__tmp98676 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98676)))
    (define f64vector::t
      (let ((__tmp98677 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98677)))
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
      (let ((__tmp98678 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98678)))
    (define thread::t
      (let ((__tmp98679 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98679)))
    (define thread-group::t
      (let ((__tmp98680 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98680)))
    (define mutex::t
      (let ((__tmp98681 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98681)))
    (define condvar::t
      (let ((__tmp98682 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98682)))
    (define port::t
      (let ((__tmp98683 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98683)))
    (define object-port::t
      (let ((__tmp98684 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98684)))
    (define character-port::t
      (let ((__tmp98685 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98685)))
    (define byte-port::t
      (let ((__tmp98686 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98686)))
    (define device-port::t
      (let ((__tmp98687 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98687)))
    (define vector-port::t
      (let ((__tmp98688 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98688)))
    (define string-port::t
      (let ((__tmp98689 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98689)))
    (define u8vector-port::t
      (let ((__tmp98690 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98690)))
    (define raw-device-port::t
      (let ((__tmp98691 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98691)))
    (define tcp-server-port::t
      (let ((__tmp98692 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98692)))
    (define udp-port::t
      (let ((__tmp98693 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98693)))
    (define directory-port::t
      (let ((__tmp98694 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98694)))
    (define event-queue-port::t
      (let ((__tmp98695 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98695)))
    (define table::t
      (let ((__tmp98696 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98696)))
    (define readenv::t
      (let ((__tmp98697 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98697)))
    (define writeenv::t
      (let ((__tmp98698 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98698)))
    (define readtable::t
      (let ((__tmp98699 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98699)))
    (define processor::t
      (let ((__tmp98700 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98700)))
    (define vm::t
      (let ((__tmp98701 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98701)))
    (define file-info::t
      (let ((__tmp98702 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98702)))
    (define socket-info::t
      (let ((__tmp98703 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98703)))
    (define address-info::t
      (let ((__tmp98704 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98704)))
    (define atom?
      (lambda (_%obj98645%_)
        (if (let () (declare (not safe)) (immediate? _%obj98645%_))
            (if (let ((__tmp98705
                       (let () (declare (not safe)) (char? _%obj98645%_))))
                  (declare (not safe))
                  (not __tmp98705))
                (let ((__tmp98706
                       (let () (declare (not safe)) (fixnum? _%obj98645%_))))
                  (declare (not safe))
                  (not __tmp98706))
                '#f)
            '#f)))
    (define special?
      (lambda (_%obj98643%_)
        (if (let ((__tmp98707
                   (let () (declare (not safe)) (##type _%obj98643%_))))
              (declare (not safe))
              (##fx= __tmp98707 '2))
            (if (let ((__tmp98708
                       (let () (declare (not safe)) (char? _%obj98643%_))))
                  (declare (not safe))
                  (not __tmp98708))
                (if (let ((__tmp98709
                           (let () (declare (not safe)) (null? _%obj98643%_))))
                      (declare (not safe))
                      (not __tmp98709))
                    (if (let ((__tmp98710
                               (let ()
                                 (declare (not safe))
                                 (boolean? _%obj98643%_))))
                          (declare (not safe))
                          (not __tmp98710))
                        (if (let ((__tmp98711
                                   (let ()
                                     (declare (not safe))
                                     (eq? _%obj98643%_ '#!void))))
                              (declare (not safe))
                              (not __tmp98711))
                            (let ((__tmp98712
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _%obj98643%_))))
                              (declare (not safe))
                              (not __tmp98712))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98635%_)
        (let ((_%$e98637%_
               (let () (declare (not safe)) (vector? _%obj98635%_))))
          (if _%$e98637%_
              _%$e98637%_
              (let ((_%$e98640%_
                     (let () (declare (not safe)) (string? _%obj98635%_))))
                (if _%$e98640%_
                    _%$e98640%_
                    (let () (declare (not safe)) (hvector? _%obj98635%_))))))))
    (define hvector?
      (lambda (_%obj98606%_)
        (let ((_%$e98608%_
               (let () (declare (not safe)) (u8vector? _%obj98606%_))))
          (if _%$e98608%_
              _%$e98608%_
              (let ((_%$e98611%_
                     (let () (declare (not safe)) (s8vector? _%obj98606%_))))
                (if _%$e98611%_
                    _%$e98611%_
                    (let ((_%$e98614%_
                           (let ()
                             (declare (not safe))
                             (u16vector? _%obj98606%_))))
                      (if _%$e98614%_
                          _%$e98614%_
                          (let ((_%$e98617%_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _%obj98606%_))))
                            (if _%$e98617%_
                                _%$e98617%_
                                (let ((_%$e98620%_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _%obj98606%_))))
                                  (if _%$e98620%_
                                      _%$e98620%_
                                      (let ((_%$e98623%_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _%obj98606%_))))
                                        (if _%$e98623%_
                                            _%$e98623%_
                                            (let ((_%$e98626%_
                                                   (u64vector? _%obj98606%_)))
                                              (if _%$e98626%_
                                                  _%$e98626%_
                                                  (let ((_%$e98629%_
                                                         (s64vector?
                                                          _%obj98606%_)))
                                                    (if _%$e98629%_
                                                        _%$e98629%_
                                                        (let ((_%$e98632%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _%obj98606%_))))
                  (if _%$e98632%_
                      _%$e98632%_
                      (let ()
                        (declare (not safe))
                        (f64vector? _%obj98606%_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_%obj98604%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98604%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98604%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98602%_)
        (let ((__tmp98713
               (let ((__tmp98714 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98714))))
          (declare (not safe))
          (##structure-instance-of? _%obj98602%_ __tmp98713))))
    (define character-port?
      (lambda (_%obj98600%_)
        (let ((__tmp98715
               (let ((__tmp98716 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98716))))
          (declare (not safe))
          (##structure-instance-of? _%obj98600%_ __tmp98715))))
    (define device-port?
      (lambda (_%obj98598%_)
        (let ((__tmp98717
               (let ((__tmp98718 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98718))))
          (declare (not safe))
          (##structure-instance-of? _%obj98598%_ __tmp98717))))
    (define vector-port?
      (lambda (_%obj98596%_)
        (let ((__tmp98719
               (let ((__tmp98720 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98720))))
          (declare (not safe))
          (##structure-instance-of? _%obj98596%_ __tmp98719))))
    (define string-port?
      (lambda (_%obj98594%_)
        (let ((__tmp98721
               (let ((__tmp98722 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98722))))
          (declare (not safe))
          (##structure-instance-of? _%obj98594%_ __tmp98721))))
    (define u8vector-port?
      (lambda (_%obj98592%_)
        (let ((__tmp98723
               (let ((__tmp98724 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98724))))
          (declare (not safe))
          (##structure-instance-of? _%obj98592%_ __tmp98723))))
    (define raw-device-port?
      (lambda (_%obj98590%_)
        (let ((__tmp98725
               (let ((__tmp98726 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98726))))
          (declare (not safe))
          (##structure-instance-of? _%obj98590%_ __tmp98725))))
    (define tcp-server-port?
      (lambda (_%obj98588%_)
        (let ((__tmp98727
               (let ((__tmp98728 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98728))))
          (declare (not safe))
          (##structure-instance-of? _%obj98588%_ __tmp98727))))
    (define udp-port?
      (lambda (_%obj98586%_)
        (let ((__tmp98729
               (let ((__tmp98730 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98730))))
          (declare (not safe))
          (##structure-instance-of? _%obj98586%_ __tmp98729))))
    (define directory-port?
      (lambda (_%obj98584%_)
        (let ((__tmp98731
               (let ((__tmp98732 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98732))))
          (declare (not safe))
          (##structure-instance-of? _%obj98584%_ __tmp98731))))
    (define event-queue-port?
      (lambda (_%obj98582%_)
        (let ((__tmp98733
               (let ((__tmp98734 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98734))))
          (declare (not safe))
          (##structure-instance-of? _%obj98582%_ __tmp98733))))
    (define readenv?
      (lambda (_%obj98580%_)
        (let ((__tmp98735
               (let ((__tmp98736 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98736))))
          (declare (not safe))
          (##structure-instance-of? _%obj98580%_ __tmp98735))))
    (define writeenv?
      (lambda (_%obj98578%_)
        (let ((__tmp98737
               (let ((__tmp98738 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98738))))
          (declare (not safe))
          (##structure-instance-of? _%obj98578%_ __tmp98737))))
    (define vm?
      (lambda (_%obj98576%_)
        (let ((__tmp98739
               (let ((__tmp98740 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98740))))
          (declare (not safe))
          (##structure-instance-of? _%obj98576%_ __tmp98739))))))
