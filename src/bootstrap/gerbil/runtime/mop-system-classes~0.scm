(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712757954)
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
      (let ((__tmp98709 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98709)))
    (define boolean::t
      (let ((__tmp98710 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98710)))
    (define atom::t
      (let ((__tmp98711 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98711)))
    (define void::t
      (let ((__tmp98712 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98712)))
    (define eof::t
      (let ((__tmp98713 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98713)))
    (define true::t
      (let ((__tmp98714 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98714)))
    (define false::t
      (let ((__tmp98715 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98715)))
    (define special::t
      (let ((__tmp98716 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98716)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98717 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98717)))
    (define integer::t
      (let ((__tmp98718 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98718)))
    (define fixnum::t
      (let ((__tmp98719 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98719)))
    (define bignum::t
      (let ((__tmp98720 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98720)))
    (define ratnum::t
      (let ((__tmp98721 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98721)))
    (define flonum::t
      (let ((__tmp98722 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98722)))
    (define cpxnum::t
      (let ((__tmp98723 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98723)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98724 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98724)))
    (define keyword::t
      (let ((__tmp98725 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98725)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98726 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98726)))
    (define null::t
      (let ((__tmp98727 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98727)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98728 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98728)))
    (define string::t
      (let ((__tmp98729 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98729)))
    (define hvector::t
      (let ((__tmp98730 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98730)))
    (define u8vector::t
      (let ((__tmp98731 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98731)))
    (define s8vector::t
      (let ((__tmp98732 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98732)))
    (define u16vector::t
      (let ((__tmp98733 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98733)))
    (define s16vector::t
      (let ((__tmp98734 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98734)))
    (define u32vector::t
      (let ((__tmp98735 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98735)))
    (define s32vector::t
      (let ((__tmp98736 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98736)))
    (define u64vector::t
      (let ((__tmp98737 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98737)))
    (define s64vector::t
      (let ((__tmp98738 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98738)))
    (define f32vector::t
      (let ((__tmp98739 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98739)))
    (define f64vector::t
      (let ((__tmp98740 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98740)))
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
      (let ((__tmp98741 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98741)))
    (define thread::t
      (let ((__tmp98742 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98742)))
    (define thread-group::t
      (let ((__tmp98743 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98743)))
    (define mutex::t
      (let ((__tmp98744 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98744)))
    (define condvar::t
      (let ((__tmp98745 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98745)))
    (define port::t
      (let ((__tmp98746 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98746)))
    (define object-port::t
      (let ((__tmp98747 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98747)))
    (define character-port::t
      (let ((__tmp98748 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98748)))
    (define byte-port::t
      (let ((__tmp98749 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98749)))
    (define device-port::t
      (let ((__tmp98750 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98750)))
    (define vector-port::t
      (let ((__tmp98751 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98751)))
    (define string-port::t
      (let ((__tmp98752 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98752)))
    (define u8vector-port::t
      (let ((__tmp98753 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98753)))
    (define raw-device-port::t
      (let ((__tmp98754 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98754)))
    (define tcp-server-port::t
      (let ((__tmp98755 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98755)))
    (define udp-port::t
      (let ((__tmp98756 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98756)))
    (define directory-port::t
      (let ((__tmp98757 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98757)))
    (define event-queue-port::t
      (let ((__tmp98758 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98758)))
    (define table::t
      (let ((__tmp98759 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98759)))
    (define readenv::t
      (let ((__tmp98760 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98760)))
    (define writeenv::t
      (let ((__tmp98761 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98761)))
    (define readtable::t
      (let ((__tmp98762 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98762)))
    (define processor::t
      (let ((__tmp98763 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98763)))
    (define vm::t
      (let ((__tmp98764 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98764)))
    (define file-info::t
      (let ((__tmp98765 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98765)))
    (define socket-info::t
      (let ((__tmp98766 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98766)))
    (define address-info::t
      (let ((__tmp98767 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98767)))
    (define atom?
      (lambda (_%obj98708%_)
        (if (let () (declare (not safe)) (immediate? _%obj98708%_))
            (if (not (char? _%obj98708%_)) (not (fixnum? _%obj98708%_)) '#f)
            '#f)))
    (define special?
      (lambda (_%obj98706%_)
        (if (let ((__tmp98768
                   (let () (declare (not safe)) (##type _%obj98706%_))))
              (declare (not safe))
              (##fx= __tmp98768 '2))
            (if (not (char? _%obj98706%_))
                (if (not (null? _%obj98706%_))
                    (if (not (boolean? _%obj98706%_))
                        (if (not (eq? _%obj98706%_ '#!void))
                            (not (eof-object? _%obj98706%_))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98698%_)
        (let ((_%$e98700%_ (vector? _%obj98698%_)))
          (if _%$e98700%_
              _%$e98700%_
              (let ((_%$e98703%_ (string? _%obj98698%_)))
                (if _%$e98703%_ _%$e98703%_ (hvector? _%obj98698%_)))))))
    (define hvector?
      (lambda (_%obj98669%_)
        (let ((_%$e98671%_ (u8vector? _%obj98669%_)))
          (if _%$e98671%_
              _%$e98671%_
              (let ((_%$e98674%_ (s8vector? _%obj98669%_)))
                (if _%$e98674%_
                    _%$e98674%_
                    (let ((_%$e98677%_ (u16vector? _%obj98669%_)))
                      (if _%$e98677%_
                          _%$e98677%_
                          (let ((_%$e98680%_ (s16vector? _%obj98669%_)))
                            (if _%$e98680%_
                                _%$e98680%_
                                (let ((_%$e98683%_ (u32vector? _%obj98669%_)))
                                  (if _%$e98683%_
                                      _%$e98683%_
                                      (let ((_%$e98686%_
                                             (s32vector? _%obj98669%_)))
                                        (if _%$e98686%_
                                            _%$e98686%_
                                            (let ((_%$e98689%_
                                                   (u64vector? _%obj98669%_)))
                                              (if _%$e98689%_
                                                  _%$e98689%_
                                                  (let ((_%$e98692%_
                                                         (s64vector?
                                                          _%obj98669%_)))
                                                    (if _%$e98692%_
                                                        _%$e98692%_
                                                        (let ((_%$e98695%_
                                                               (f32vector?
                                                                _%obj98669%_)))
                                                          (if _%$e98695%_
                                                              _%$e98695%_
                                                              (f64vector?
                                                               _%obj98669%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj98667%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98667%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98667%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98665%_)
        (let ((__tmp98769
               (let ((__tmp98770 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98770))))
          (declare (not safe))
          (##structure-instance-of? _%obj98665%_ __tmp98769))))
    (define character-port?
      (lambda (_%obj98663%_)
        (let ((__tmp98771
               (let ((__tmp98772 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98772))))
          (declare (not safe))
          (##structure-instance-of? _%obj98663%_ __tmp98771))))
    (define device-port?
      (lambda (_%obj98661%_)
        (let ((__tmp98773
               (let ((__tmp98774 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98774))))
          (declare (not safe))
          (##structure-instance-of? _%obj98661%_ __tmp98773))))
    (define vector-port?
      (lambda (_%obj98659%_)
        (let ((__tmp98775
               (let ((__tmp98776 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98776))))
          (declare (not safe))
          (##structure-instance-of? _%obj98659%_ __tmp98775))))
    (define string-port?
      (lambda (_%obj98657%_)
        (let ((__tmp98777
               (let ((__tmp98778 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98778))))
          (declare (not safe))
          (##structure-instance-of? _%obj98657%_ __tmp98777))))
    (define u8vector-port?
      (lambda (_%obj98655%_)
        (let ((__tmp98779
               (let ((__tmp98780 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98780))))
          (declare (not safe))
          (##structure-instance-of? _%obj98655%_ __tmp98779))))
    (define raw-device-port?
      (lambda (_%obj98653%_)
        (let ((__tmp98781
               (let ((__tmp98782 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98782))))
          (declare (not safe))
          (##structure-instance-of? _%obj98653%_ __tmp98781))))
    (define tcp-server-port?
      (lambda (_%obj98651%_)
        (let ((__tmp98783
               (let ((__tmp98784 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98784))))
          (declare (not safe))
          (##structure-instance-of? _%obj98651%_ __tmp98783))))
    (define udp-port?
      (lambda (_%obj98649%_)
        (let ((__tmp98785
               (let ((__tmp98786 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98786))))
          (declare (not safe))
          (##structure-instance-of? _%obj98649%_ __tmp98785))))
    (define directory-port?
      (lambda (_%obj98647%_)
        (let ((__tmp98787
               (let ((__tmp98788 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98788))))
          (declare (not safe))
          (##structure-instance-of? _%obj98647%_ __tmp98787))))
    (define event-queue-port?
      (lambda (_%obj98645%_)
        (let ((__tmp98789
               (let ((__tmp98790 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98790))))
          (declare (not safe))
          (##structure-instance-of? _%obj98645%_ __tmp98789))))
    (define readenv?
      (lambda (_%obj98643%_)
        (let ((__tmp98791
               (let ((__tmp98792 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98792))))
          (declare (not safe))
          (##structure-instance-of? _%obj98643%_ __tmp98791))))
    (define writeenv?
      (lambda (_%obj98641%_)
        (let ((__tmp98793
               (let ((__tmp98794 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98794))))
          (declare (not safe))
          (##structure-instance-of? _%obj98641%_ __tmp98793))))
    (define vm?
      (lambda (_%obj98639%_)
        (let ((__tmp98795
               (let ((__tmp98796 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98796))))
          (declare (not safe))
          (##structure-instance-of? _%obj98639%_ __tmp98795))))))
