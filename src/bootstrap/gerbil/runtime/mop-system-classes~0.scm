(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712251110)
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
      (let ((__tmp98712 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98712)))
    (define boolean::t
      (let ((__tmp98713 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98713)))
    (define atom::t
      (let ((__tmp98714 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98714)))
    (define void::t
      (let ((__tmp98715 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98715)))
    (define eof::t
      (let ((__tmp98716 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98716)))
    (define true::t
      (let ((__tmp98717 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98717)))
    (define false::t
      (let ((__tmp98718 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98718)))
    (define special::t
      (let ((__tmp98719 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98719)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98720 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98720)))
    (define integer::t
      (let ((__tmp98721 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98721)))
    (define fixnum::t
      (let ((__tmp98722 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98722)))
    (define bignum::t
      (let ((__tmp98723 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98723)))
    (define ratnum::t
      (let ((__tmp98724 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98724)))
    (define flonum::t
      (let ((__tmp98725 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98725)))
    (define cpxnum::t
      (let ((__tmp98726 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98726)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98727 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98727)))
    (define keyword::t
      (let ((__tmp98728 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98728)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98729 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98729)))
    (define null::t
      (let ((__tmp98730 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98730)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98731 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98731)))
    (define string::t
      (let ((__tmp98732 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98732)))
    (define hvector::t
      (let ((__tmp98733 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98733)))
    (define u8vector::t
      (let ((__tmp98734 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98734)))
    (define s8vector::t
      (let ((__tmp98735 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98735)))
    (define u16vector::t
      (let ((__tmp98736 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98736)))
    (define s16vector::t
      (let ((__tmp98737 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98737)))
    (define u32vector::t
      (let ((__tmp98738 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98738)))
    (define s32vector::t
      (let ((__tmp98739 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98739)))
    (define u64vector::t
      (let ((__tmp98740 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98740)))
    (define s64vector::t
      (let ((__tmp98741 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98741)))
    (define f32vector::t
      (let ((__tmp98742 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98742)))
    (define f64vector::t
      (let ((__tmp98743 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98743)))
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
      (let ((__tmp98744 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98744)))
    (define thread::t
      (let ((__tmp98745 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98745)))
    (define thread-group::t
      (let ((__tmp98746 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98746)))
    (define mutex::t
      (let ((__tmp98747 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98747)))
    (define condvar::t
      (let ((__tmp98748 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98748)))
    (define port::t
      (let ((__tmp98749 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98749)))
    (define object-port::t
      (let ((__tmp98750 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98750)))
    (define character-port::t
      (let ((__tmp98751 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98751)))
    (define byte-port::t
      (let ((__tmp98752 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98752)))
    (define device-port::t
      (let ((__tmp98753 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98753)))
    (define vector-port::t
      (let ((__tmp98754 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98754)))
    (define string-port::t
      (let ((__tmp98755 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98755)))
    (define u8vector-port::t
      (let ((__tmp98756 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98756)))
    (define raw-device-port::t
      (let ((__tmp98757 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98757)))
    (define tcp-server-port::t
      (let ((__tmp98758 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98758)))
    (define udp-port::t
      (let ((__tmp98759 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98759)))
    (define directory-port::t
      (let ((__tmp98760 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98760)))
    (define event-queue-port::t
      (let ((__tmp98761 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98761)))
    (define table::t
      (let ((__tmp98762 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98762)))
    (define readenv::t
      (let ((__tmp98763 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98763)))
    (define writeenv::t
      (let ((__tmp98764 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98764)))
    (define readtable::t
      (let ((__tmp98765 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98765)))
    (define processor::t
      (let ((__tmp98766 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98766)))
    (define vm::t
      (let ((__tmp98767 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98767)))
    (define file-info::t
      (let ((__tmp98768 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98768)))
    (define socket-info::t
      (let ((__tmp98769 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98769)))
    (define address-info::t
      (let ((__tmp98770 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98770)))
    (define atom?
      (lambda (_%obj98711%_)
        (if (let () (declare (not safe)) (immediate? _%obj98711%_))
            (if (let ((__tmp98771
                       (let () (declare (not safe)) (char? _%obj98711%_))))
                  (declare (not safe))
                  (not __tmp98771))
                (let ((__tmp98772
                       (let () (declare (not safe)) (fixnum? _%obj98711%_))))
                  (declare (not safe))
                  (not __tmp98772))
                '#f)
            '#f)))
    (define special?
      (lambda (_%obj98709%_)
        (if (let ((__tmp98773
                   (let () (declare (not safe)) (##type _%obj98709%_))))
              (declare (not safe))
              (##fx= __tmp98773 '2))
            (if (let ((__tmp98774
                       (let () (declare (not safe)) (char? _%obj98709%_))))
                  (declare (not safe))
                  (not __tmp98774))
                (if (let ((__tmp98775
                           (let () (declare (not safe)) (null? _%obj98709%_))))
                      (declare (not safe))
                      (not __tmp98775))
                    (if (let ((__tmp98776
                               (let ()
                                 (declare (not safe))
                                 (boolean? _%obj98709%_))))
                          (declare (not safe))
                          (not __tmp98776))
                        (if (let ((__tmp98777
                                   (let ()
                                     (declare (not safe))
                                     (eq? _%obj98709%_ '#!void))))
                              (declare (not safe))
                              (not __tmp98777))
                            (let ((__tmp98778
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _%obj98709%_))))
                              (declare (not safe))
                              (not __tmp98778))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98701%_)
        (let ((_%$e98703%_
               (let () (declare (not safe)) (vector? _%obj98701%_))))
          (if _%$e98703%_
              _%$e98703%_
              (let ((_%$e98706%_
                     (let () (declare (not safe)) (string? _%obj98701%_))))
                (if _%$e98706%_
                    _%$e98706%_
                    (let () (declare (not safe)) (hvector? _%obj98701%_))))))))
    (define hvector?
      (lambda (_%obj98672%_)
        (let ((_%$e98674%_
               (let () (declare (not safe)) (u8vector? _%obj98672%_))))
          (if _%$e98674%_
              _%$e98674%_
              (let ((_%$e98677%_
                     (let () (declare (not safe)) (s8vector? _%obj98672%_))))
                (if _%$e98677%_
                    _%$e98677%_
                    (let ((_%$e98680%_
                           (let ()
                             (declare (not safe))
                             (u16vector? _%obj98672%_))))
                      (if _%$e98680%_
                          _%$e98680%_
                          (let ((_%$e98683%_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _%obj98672%_))))
                            (if _%$e98683%_
                                _%$e98683%_
                                (let ((_%$e98686%_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _%obj98672%_))))
                                  (if _%$e98686%_
                                      _%$e98686%_
                                      (let ((_%$e98689%_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _%obj98672%_))))
                                        (if _%$e98689%_
                                            _%$e98689%_
                                            (let ((_%$e98692%_
                                                   (u64vector? _%obj98672%_)))
                                              (if _%$e98692%_
                                                  _%$e98692%_
                                                  (let ((_%$e98695%_
                                                         (s64vector?
                                                          _%obj98672%_)))
                                                    (if _%$e98695%_
                                                        _%$e98695%_
                                                        (let ((_%$e98698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _%obj98672%_))))
                  (if _%$e98698%_
                      _%$e98698%_
                      (let ()
                        (declare (not safe))
                        (f64vector? _%obj98672%_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_%obj98670%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98670%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98670%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98668%_)
        (let ((__tmp98779
               (let ((__tmp98780 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98780))))
          (declare (not safe))
          (##structure-instance-of? _%obj98668%_ __tmp98779))))
    (define character-port?
      (lambda (_%obj98666%_)
        (let ((__tmp98781
               (let ((__tmp98782 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98782))))
          (declare (not safe))
          (##structure-instance-of? _%obj98666%_ __tmp98781))))
    (define device-port?
      (lambda (_%obj98664%_)
        (let ((__tmp98783
               (let ((__tmp98784 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98784))))
          (declare (not safe))
          (##structure-instance-of? _%obj98664%_ __tmp98783))))
    (define vector-port?
      (lambda (_%obj98662%_)
        (let ((__tmp98785
               (let ((__tmp98786 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98786))))
          (declare (not safe))
          (##structure-instance-of? _%obj98662%_ __tmp98785))))
    (define string-port?
      (lambda (_%obj98660%_)
        (let ((__tmp98787
               (let ((__tmp98788 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98788))))
          (declare (not safe))
          (##structure-instance-of? _%obj98660%_ __tmp98787))))
    (define u8vector-port?
      (lambda (_%obj98658%_)
        (let ((__tmp98789
               (let ((__tmp98790 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98790))))
          (declare (not safe))
          (##structure-instance-of? _%obj98658%_ __tmp98789))))
    (define raw-device-port?
      (lambda (_%obj98656%_)
        (let ((__tmp98791
               (let ((__tmp98792 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98792))))
          (declare (not safe))
          (##structure-instance-of? _%obj98656%_ __tmp98791))))
    (define tcp-server-port?
      (lambda (_%obj98654%_)
        (let ((__tmp98793
               (let ((__tmp98794 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98794))))
          (declare (not safe))
          (##structure-instance-of? _%obj98654%_ __tmp98793))))
    (define udp-port?
      (lambda (_%obj98652%_)
        (let ((__tmp98795
               (let ((__tmp98796 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98796))))
          (declare (not safe))
          (##structure-instance-of? _%obj98652%_ __tmp98795))))
    (define directory-port?
      (lambda (_%obj98650%_)
        (let ((__tmp98797
               (let ((__tmp98798 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98798))))
          (declare (not safe))
          (##structure-instance-of? _%obj98650%_ __tmp98797))))
    (define event-queue-port?
      (lambda (_%obj98648%_)
        (let ((__tmp98799
               (let ((__tmp98800 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98800))))
          (declare (not safe))
          (##structure-instance-of? _%obj98648%_ __tmp98799))))
    (define readenv?
      (lambda (_%obj98646%_)
        (let ((__tmp98801
               (let ((__tmp98802 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98802))))
          (declare (not safe))
          (##structure-instance-of? _%obj98646%_ __tmp98801))))
    (define writeenv?
      (lambda (_%obj98644%_)
        (let ((__tmp98803
               (let ((__tmp98804 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98804))))
          (declare (not safe))
          (##structure-instance-of? _%obj98644%_ __tmp98803))))
    (define vm?
      (lambda (_%obj98642%_)
        (let ((__tmp98805
               (let ((__tmp98806 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98806))))
          (declare (not safe))
          (##structure-instance-of? _%obj98642%_ __tmp98805))))))
