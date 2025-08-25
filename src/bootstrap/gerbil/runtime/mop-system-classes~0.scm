(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1756142015)
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
      (let ((__tmp108708 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp108708)))
    (define boolean::t
      (let ((__tmp108709 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp108709)))
    (define atom::t
      (let ((__tmp108710 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp108710)))
    (define void::t
      (let ((__tmp108711 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp108711)))
    (define eof::t
      (let ((__tmp108712 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp108712)))
    (define true::t
      (let ((__tmp108713 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp108713)))
    (define false::t
      (let ((__tmp108714 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp108714)))
    (define special::t
      (let ((__tmp108715 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp108715)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp108716 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp108716)))
    (define integer::t
      (let ((__tmp108717 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp108717)))
    (define fixnum::t
      (let ((__tmp108718 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp108718)))
    (define bignum::t
      (let ((__tmp108719 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp108719)))
    (define ratnum::t
      (let ((__tmp108720 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp108720)))
    (define flonum::t
      (let ((__tmp108721 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp108721)))
    (define cpxnum::t
      (let ((__tmp108722 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp108722)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp108723 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp108723)))
    (define keyword::t
      (let ((__tmp108724 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp108724)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp108725 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp108725)))
    (define null::t
      (let ((__tmp108726 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp108726)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp108727 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp108727)))
    (define string::t
      (let ((__tmp108728 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp108728)))
    (define hvector::t
      (let ((__tmp108729 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp108729)))
    (define u8vector::t
      (let ((__tmp108730 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp108730)))
    (define s8vector::t
      (let ((__tmp108731 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp108731)))
    (define u16vector::t
      (let ((__tmp108732 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp108732)))
    (define s16vector::t
      (let ((__tmp108733 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp108733)))
    (define u32vector::t
      (let ((__tmp108734 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp108734)))
    (define s32vector::t
      (let ((__tmp108735 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp108735)))
    (define u64vector::t
      (let ((__tmp108736 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp108736)))
    (define s64vector::t
      (let ((__tmp108737 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp108737)))
    (define f32vector::t
      (let ((__tmp108738 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp108738)))
    (define f64vector::t
      (let ((__tmp108739 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp108739)))
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
      (let ((__tmp108740 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp108740)))
    (define thread::t
      (let ((__tmp108741 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp108741)))
    (define thread-group::t
      (let ((__tmp108742 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp108742)))
    (define mutex::t
      (let ((__tmp108743 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp108743)))
    (define condvar::t
      (let ((__tmp108744 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp108744)))
    (define port::t
      (let ((__tmp108745 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp108745)))
    (define object-port::t
      (let ((__tmp108746 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp108746)))
    (define character-port::t
      (let ((__tmp108747 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp108747)))
    (define byte-port::t
      (let ((__tmp108748 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp108748)))
    (define device-port::t
      (let ((__tmp108749 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp108749)))
    (define vector-port::t
      (let ((__tmp108750 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp108750)))
    (define string-port::t
      (let ((__tmp108751 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp108751)))
    (define u8vector-port::t
      (let ((__tmp108752 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp108752)))
    (define raw-device-port::t
      (let ((__tmp108753 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp108753)))
    (define tcp-server-port::t
      (let ((__tmp108754 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp108754)))
    (define udp-port::t
      (let ((__tmp108755 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp108755)))
    (define directory-port::t
      (let ((__tmp108756 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp108756)))
    (define event-queue-port::t
      (let ((__tmp108757 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp108757)))
    (define table::t
      (let ((__tmp108758 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp108758)))
    (define readenv::t
      (let ((__tmp108759 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp108759)))
    (define writeenv::t
      (let ((__tmp108760 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp108760)))
    (define readtable::t
      (let ((__tmp108761 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp108761)))
    (define processor::t
      (let ((__tmp108762 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp108762)))
    (define vm::t
      (let ((__tmp108763 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp108763)))
    (define file-info::t
      (let ((__tmp108764 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp108764)))
    (define socket-info::t
      (let ((__tmp108765 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp108765)))
    (define address-info::t
      (let ((__tmp108766 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp108766)))
    (define atom?
      (lambda (_%obj108707%_)
        (if (let () (declare (not safe)) (immediate? _%obj108707%_))
            (if (char? _%obj108707%_) '#f (not (fixnum? _%obj108707%_)))
            '#f)))
    (define special?
      (lambda (_%obj108705%_)
        (if (let ((__tmp108767
                   (let () (declare (not safe)) (##type _%obj108705%_))))
              (declare (not safe))
              (##fx= __tmp108767 '2))
            (if (char? _%obj108705%_)
                '#f
                (if (null? _%obj108705%_)
                    '#f
                    (if (boolean? _%obj108705%_)
                        '#f
                        (if (eq? _%obj108705%_ '#!void)
                            '#f
                            (not (eof-object? _%obj108705%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj108697%_)
        (let ((_%$e108699%_ (vector? _%obj108697%_)))
          (if _%$e108699%_
              _%$e108699%_
              (let ((_%$e108702%_ (string? _%obj108697%_)))
                (if _%$e108702%_ _%$e108702%_ (hvector? _%obj108697%_)))))))
    (define hvector?
      (lambda (_%obj108668%_)
        (let ((_%$e108670%_ (u8vector? _%obj108668%_)))
          (if _%$e108670%_
              _%$e108670%_
              (let ((_%$e108673%_ (s8vector? _%obj108668%_)))
                (if _%$e108673%_
                    _%$e108673%_
                    (let ((_%$e108676%_ (u16vector? _%obj108668%_)))
                      (if _%$e108676%_
                          _%$e108676%_
                          (let ((_%$e108679%_ (s16vector? _%obj108668%_)))
                            (if _%$e108679%_
                                _%$e108679%_
                                (let ((_%$e108682%_
                                       (u32vector? _%obj108668%_)))
                                  (if _%$e108682%_
                                      _%$e108682%_
                                      (let ((_%$e108685%_
                                             (s32vector? _%obj108668%_)))
                                        (if _%$e108685%_
                                            _%$e108685%_
                                            (let ((_%$e108688%_
                                                   (u64vector? _%obj108668%_)))
                                              (if _%$e108688%_
                                                  _%$e108688%_
                                                  (let ((_%$e108691%_
                                                         (s64vector?
                                                          _%obj108668%_)))
                                                    (if _%$e108691%_
                                                        _%$e108691%_
                                                        (let ((_%$e108694%_
                                                               (f32vector?
                                                                _%obj108668%_)))
                                                          (if _%$e108694%_
                                                              _%$e108694%_
                                                              (f64vector?
                                                               _%obj108668%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj108666%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj108666%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj108666%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj108664%_)
        (let ((__tmp108768
               (let ((__tmp108769 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp108769))))
          (declare (not safe))
          (##structure-instance-of? _%obj108664%_ __tmp108768))))
    (define character-port?
      (lambda (_%obj108662%_)
        (let ((__tmp108770
               (let ((__tmp108771 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp108771))))
          (declare (not safe))
          (##structure-instance-of? _%obj108662%_ __tmp108770))))
    (define device-port?
      (lambda (_%obj108660%_)
        (let ((__tmp108772
               (let ((__tmp108773 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp108773))))
          (declare (not safe))
          (##structure-instance-of? _%obj108660%_ __tmp108772))))
    (define vector-port?
      (lambda (_%obj108658%_)
        (let ((__tmp108774
               (let ((__tmp108775 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp108775))))
          (declare (not safe))
          (##structure-instance-of? _%obj108658%_ __tmp108774))))
    (define string-port?
      (lambda (_%obj108656%_)
        (let ((__tmp108776
               (let ((__tmp108777 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp108777))))
          (declare (not safe))
          (##structure-instance-of? _%obj108656%_ __tmp108776))))
    (define u8vector-port?
      (lambda (_%obj108654%_)
        (let ((__tmp108778
               (let ((__tmp108779 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp108779))))
          (declare (not safe))
          (##structure-instance-of? _%obj108654%_ __tmp108778))))
    (define raw-device-port?
      (lambda (_%obj108652%_)
        (let ((__tmp108780
               (let ((__tmp108781 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp108781))))
          (declare (not safe))
          (##structure-instance-of? _%obj108652%_ __tmp108780))))
    (define tcp-server-port?
      (lambda (_%obj108650%_)
        (let ((__tmp108782
               (let ((__tmp108783 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp108783))))
          (declare (not safe))
          (##structure-instance-of? _%obj108650%_ __tmp108782))))
    (define udp-port?
      (lambda (_%obj108648%_)
        (let ((__tmp108784
               (let ((__tmp108785 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp108785))))
          (declare (not safe))
          (##structure-instance-of? _%obj108648%_ __tmp108784))))
    (define directory-port?
      (lambda (_%obj108646%_)
        (let ((__tmp108786
               (let ((__tmp108787 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp108787))))
          (declare (not safe))
          (##structure-instance-of? _%obj108646%_ __tmp108786))))
    (define event-queue-port?
      (lambda (_%obj108644%_)
        (let ((__tmp108788
               (let ((__tmp108789 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp108789))))
          (declare (not safe))
          (##structure-instance-of? _%obj108644%_ __tmp108788))))
    (define readenv?
      (lambda (_%obj108642%_)
        (let ((__tmp108790
               (let ((__tmp108791 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp108791))))
          (declare (not safe))
          (##structure-instance-of? _%obj108642%_ __tmp108790))))
    (define writeenv?
      (lambda (_%obj108640%_)
        (let ((__tmp108792
               (let ((__tmp108793 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp108793))))
          (declare (not safe))
          (##structure-instance-of? _%obj108640%_ __tmp108792))))
    (define vm?
      (lambda (_%obj108638%_)
        (let ((__tmp108794
               (let ((__tmp108795 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp108795))))
          (declare (not safe))
          (##structure-instance-of? _%obj108638%_ __tmp108794))))))
