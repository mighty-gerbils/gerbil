(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712246554)
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
      (let ((__tmp98737 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98737)))
    (define boolean::t
      (let ((__tmp98738 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98738)))
    (define atom::t
      (let ((__tmp98739 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98739)))
    (define void::t
      (let ((__tmp98740 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98740)))
    (define eof::t
      (let ((__tmp98741 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98741)))
    (define true::t
      (let ((__tmp98742 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98742)))
    (define false::t
      (let ((__tmp98743 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98743)))
    (define special::t
      (let ((__tmp98744 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98744)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98745 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98745)))
    (define integer::t
      (let ((__tmp98746 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98746)))
    (define fixnum::t
      (let ((__tmp98747 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98747)))
    (define bignum::t
      (let ((__tmp98748 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98748)))
    (define ratnum::t
      (let ((__tmp98749 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98749)))
    (define flonum::t
      (let ((__tmp98750 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98750)))
    (define cpxnum::t
      (let ((__tmp98751 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98751)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98752 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98752)))
    (define keyword::t
      (let ((__tmp98753 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98753)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98754 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98754)))
    (define null::t
      (let ((__tmp98755 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98755)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98756 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98756)))
    (define string::t
      (let ((__tmp98757 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98757)))
    (define hvector::t
      (let ((__tmp98758 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98758)))
    (define u8vector::t
      (let ((__tmp98759 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98759)))
    (define s8vector::t
      (let ((__tmp98760 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98760)))
    (define u16vector::t
      (let ((__tmp98761 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98761)))
    (define s16vector::t
      (let ((__tmp98762 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98762)))
    (define u32vector::t
      (let ((__tmp98763 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98763)))
    (define s32vector::t
      (let ((__tmp98764 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98764)))
    (define u64vector::t
      (let ((__tmp98765 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98765)))
    (define s64vector::t
      (let ((__tmp98766 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98766)))
    (define f32vector::t
      (let ((__tmp98767 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98767)))
    (define f64vector::t
      (let ((__tmp98768 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98768)))
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
      (let ((__tmp98769 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98769)))
    (define thread::t
      (let ((__tmp98770 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98770)))
    (define thread-group::t
      (let ((__tmp98771 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98771)))
    (define mutex::t
      (let ((__tmp98772 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98772)))
    (define condvar::t
      (let ((__tmp98773 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98773)))
    (define port::t
      (let ((__tmp98774 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98774)))
    (define object-port::t
      (let ((__tmp98775 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98775)))
    (define character-port::t
      (let ((__tmp98776 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98776)))
    (define byte-port::t
      (let ((__tmp98777 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98777)))
    (define device-port::t
      (let ((__tmp98778 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98778)))
    (define vector-port::t
      (let ((__tmp98779 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98779)))
    (define string-port::t
      (let ((__tmp98780 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98780)))
    (define u8vector-port::t
      (let ((__tmp98781 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98781)))
    (define raw-device-port::t
      (let ((__tmp98782 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98782)))
    (define tcp-server-port::t
      (let ((__tmp98783 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98783)))
    (define udp-port::t
      (let ((__tmp98784 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98784)))
    (define directory-port::t
      (let ((__tmp98785 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98785)))
    (define event-queue-port::t
      (let ((__tmp98786 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98786)))
    (define table::t
      (let ((__tmp98787 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98787)))
    (define readenv::t
      (let ((__tmp98788 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98788)))
    (define writeenv::t
      (let ((__tmp98789 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98789)))
    (define readtable::t
      (let ((__tmp98790 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98790)))
    (define processor::t
      (let ((__tmp98791 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98791)))
    (define vm::t
      (let ((__tmp98792 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98792)))
    (define file-info::t
      (let ((__tmp98793 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98793)))
    (define socket-info::t
      (let ((__tmp98794 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98794)))
    (define address-info::t
      (let ((__tmp98795 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98795)))
    (define atom?
      (lambda (_%obj98736%_)
        (if (let () (declare (not safe)) (immediate? _%obj98736%_))
            (if (let ((__tmp98796
                       (let () (declare (not safe)) (char? _%obj98736%_))))
                  (declare (not safe))
                  (not __tmp98796))
                (let ((__tmp98797
                       (let () (declare (not safe)) (fixnum? _%obj98736%_))))
                  (declare (not safe))
                  (not __tmp98797))
                '#f)
            '#f)))
    (define special?
      (lambda (_%obj98734%_)
        (if (let ((__tmp98798
                   (let () (declare (not safe)) (##type _%obj98734%_))))
              (declare (not safe))
              (##fx= __tmp98798 '2))
            (if (let ((__tmp98799
                       (let () (declare (not safe)) (char? _%obj98734%_))))
                  (declare (not safe))
                  (not __tmp98799))
                (if (let ((__tmp98800
                           (let () (declare (not safe)) (null? _%obj98734%_))))
                      (declare (not safe))
                      (not __tmp98800))
                    (if (let ((__tmp98801
                               (let ()
                                 (declare (not safe))
                                 (boolean? _%obj98734%_))))
                          (declare (not safe))
                          (not __tmp98801))
                        (if (let ((__tmp98802
                                   (let ()
                                     (declare (not safe))
                                     (eq? _%obj98734%_ '#!void))))
                              (declare (not safe))
                              (not __tmp98802))
                            (let ((__tmp98803
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _%obj98734%_))))
                              (declare (not safe))
                              (not __tmp98803))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98726%_)
        (let ((_%$e98728%_
               (let () (declare (not safe)) (vector? _%obj98726%_))))
          (if _%$e98728%_
              _%$e98728%_
              (let ((_%$e98731%_
                     (let () (declare (not safe)) (string? _%obj98726%_))))
                (if _%$e98731%_
                    _%$e98731%_
                    (let () (declare (not safe)) (hvector? _%obj98726%_))))))))
    (define hvector?
      (lambda (_%obj98697%_)
        (let ((_%$e98699%_
               (let () (declare (not safe)) (u8vector? _%obj98697%_))))
          (if _%$e98699%_
              _%$e98699%_
              (let ((_%$e98702%_
                     (let () (declare (not safe)) (s8vector? _%obj98697%_))))
                (if _%$e98702%_
                    _%$e98702%_
                    (let ((_%$e98705%_
                           (let ()
                             (declare (not safe))
                             (u16vector? _%obj98697%_))))
                      (if _%$e98705%_
                          _%$e98705%_
                          (let ((_%$e98708%_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _%obj98697%_))))
                            (if _%$e98708%_
                                _%$e98708%_
                                (let ((_%$e98711%_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _%obj98697%_))))
                                  (if _%$e98711%_
                                      _%$e98711%_
                                      (let ((_%$e98714%_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _%obj98697%_))))
                                        (if _%$e98714%_
                                            _%$e98714%_
                                            (let ((_%$e98717%_
                                                   (u64vector? _%obj98697%_)))
                                              (if _%$e98717%_
                                                  _%$e98717%_
                                                  (let ((_%$e98720%_
                                                         (s64vector?
                                                          _%obj98697%_)))
                                                    (if _%$e98720%_
                                                        _%$e98720%_
                                                        (let ((_%$e98723%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _%obj98697%_))))
                  (if _%$e98723%_
                      _%$e98723%_
                      (let ()
                        (declare (not safe))
                        (f64vector? _%obj98697%_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_%obj98695%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98695%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98695%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98693%_)
        (let ((__tmp98804
               (let ((__tmp98805 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98805))))
          (declare (not safe))
          (##structure-instance-of? _%obj98693%_ __tmp98804))))
    (define character-port?
      (lambda (_%obj98691%_)
        (let ((__tmp98806
               (let ((__tmp98807 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98807))))
          (declare (not safe))
          (##structure-instance-of? _%obj98691%_ __tmp98806))))
    (define device-port?
      (lambda (_%obj98689%_)
        (let ((__tmp98808
               (let ((__tmp98809 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98809))))
          (declare (not safe))
          (##structure-instance-of? _%obj98689%_ __tmp98808))))
    (define vector-port?
      (lambda (_%obj98687%_)
        (let ((__tmp98810
               (let ((__tmp98811 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98811))))
          (declare (not safe))
          (##structure-instance-of? _%obj98687%_ __tmp98810))))
    (define string-port?
      (lambda (_%obj98685%_)
        (let ((__tmp98812
               (let ((__tmp98813 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98813))))
          (declare (not safe))
          (##structure-instance-of? _%obj98685%_ __tmp98812))))
    (define u8vector-port?
      (lambda (_%obj98683%_)
        (let ((__tmp98814
               (let ((__tmp98815 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98815))))
          (declare (not safe))
          (##structure-instance-of? _%obj98683%_ __tmp98814))))
    (define raw-device-port?
      (lambda (_%obj98681%_)
        (let ((__tmp98816
               (let ((__tmp98817 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98817))))
          (declare (not safe))
          (##structure-instance-of? _%obj98681%_ __tmp98816))))
    (define tcp-server-port?
      (lambda (_%obj98679%_)
        (let ((__tmp98818
               (let ((__tmp98819 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98819))))
          (declare (not safe))
          (##structure-instance-of? _%obj98679%_ __tmp98818))))
    (define udp-port?
      (lambda (_%obj98677%_)
        (let ((__tmp98820
               (let ((__tmp98821 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98821))))
          (declare (not safe))
          (##structure-instance-of? _%obj98677%_ __tmp98820))))
    (define directory-port?
      (lambda (_%obj98675%_)
        (let ((__tmp98822
               (let ((__tmp98823 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98823))))
          (declare (not safe))
          (##structure-instance-of? _%obj98675%_ __tmp98822))))
    (define event-queue-port?
      (lambda (_%obj98673%_)
        (let ((__tmp98824
               (let ((__tmp98825 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98825))))
          (declare (not safe))
          (##structure-instance-of? _%obj98673%_ __tmp98824))))
    (define readenv?
      (lambda (_%obj98671%_)
        (let ((__tmp98826
               (let ((__tmp98827 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98827))))
          (declare (not safe))
          (##structure-instance-of? _%obj98671%_ __tmp98826))))
    (define writeenv?
      (lambda (_%obj98669%_)
        (let ((__tmp98828
               (let ((__tmp98829 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98829))))
          (declare (not safe))
          (##structure-instance-of? _%obj98669%_ __tmp98828))))
    (define vm?
      (lambda (_%obj98667%_)
        (let ((__tmp98830
               (let ((__tmp98831 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98831))))
          (declare (not safe))
          (##structure-instance-of? _%obj98667%_ __tmp98830))))))
