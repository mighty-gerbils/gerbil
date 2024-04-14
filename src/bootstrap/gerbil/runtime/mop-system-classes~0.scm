(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1713453198)
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
      (let ((__tmp100770 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp100770)))
    (define boolean::t
      (let ((__tmp100771 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp100771)))
    (define atom::t
      (let ((__tmp100772 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp100772)))
    (define void::t
      (let ((__tmp100773 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp100773)))
    (define eof::t
      (let ((__tmp100774 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp100774)))
    (define true::t
      (let ((__tmp100775 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp100775)))
    (define false::t
      (let ((__tmp100776 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp100776)))
    (define special::t
      (let ((__tmp100777 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp100777)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp100778 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp100778)))
    (define integer::t
      (let ((__tmp100779 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp100779)))
    (define fixnum::t
      (let ((__tmp100780 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp100780)))
    (define bignum::t
      (let ((__tmp100781 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp100781)))
    (define ratnum::t
      (let ((__tmp100782 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp100782)))
    (define flonum::t
      (let ((__tmp100783 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp100783)))
    (define cpxnum::t
      (let ((__tmp100784 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp100784)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp100785 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp100785)))
    (define keyword::t
      (let ((__tmp100786 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp100786)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp100787 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp100787)))
    (define null::t
      (let ((__tmp100788 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp100788)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp100789 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp100789)))
    (define string::t
      (let ((__tmp100790 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp100790)))
    (define hvector::t
      (let ((__tmp100791 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp100791)))
    (define u8vector::t
      (let ((__tmp100792 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp100792)))
    (define s8vector::t
      (let ((__tmp100793 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp100793)))
    (define u16vector::t
      (let ((__tmp100794 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp100794)))
    (define s16vector::t
      (let ((__tmp100795 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp100795)))
    (define u32vector::t
      (let ((__tmp100796 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp100796)))
    (define s32vector::t
      (let ((__tmp100797 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp100797)))
    (define u64vector::t
      (let ((__tmp100798 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp100798)))
    (define s64vector::t
      (let ((__tmp100799 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp100799)))
    (define f32vector::t
      (let ((__tmp100800 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp100800)))
    (define f64vector::t
      (let ((__tmp100801 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp100801)))
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
      (let ((__tmp100802 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp100802)))
    (define thread::t
      (let ((__tmp100803 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp100803)))
    (define thread-group::t
      (let ((__tmp100804 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp100804)))
    (define mutex::t
      (let ((__tmp100805 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp100805)))
    (define condvar::t
      (let ((__tmp100806 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp100806)))
    (define port::t
      (let ((__tmp100807 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp100807)))
    (define object-port::t
      (let ((__tmp100808 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp100808)))
    (define character-port::t
      (let ((__tmp100809 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp100809)))
    (define byte-port::t
      (let ((__tmp100810 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp100810)))
    (define device-port::t
      (let ((__tmp100811 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp100811)))
    (define vector-port::t
      (let ((__tmp100812 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp100812)))
    (define string-port::t
      (let ((__tmp100813 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp100813)))
    (define u8vector-port::t
      (let ((__tmp100814 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp100814)))
    (define raw-device-port::t
      (let ((__tmp100815 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp100815)))
    (define tcp-server-port::t
      (let ((__tmp100816 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp100816)))
    (define udp-port::t
      (let ((__tmp100817 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp100817)))
    (define directory-port::t
      (let ((__tmp100818 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp100818)))
    (define event-queue-port::t
      (let ((__tmp100819 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp100819)))
    (define table::t
      (let ((__tmp100820 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp100820)))
    (define readenv::t
      (let ((__tmp100821 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp100821)))
    (define writeenv::t
      (let ((__tmp100822 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp100822)))
    (define readtable::t
      (let ((__tmp100823 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp100823)))
    (define processor::t
      (let ((__tmp100824 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp100824)))
    (define vm::t
      (let ((__tmp100825 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp100825)))
    (define file-info::t
      (let ((__tmp100826 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp100826)))
    (define socket-info::t
      (let ((__tmp100827 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp100827)))
    (define address-info::t
      (let ((__tmp100828 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp100828)))
    (define atom?
      (lambda (_%obj100769%_)
        (if (let () (declare (not safe)) (immediate? _%obj100769%_))
            (if (char? _%obj100769%_) '#f (not (fixnum? _%obj100769%_)))
            '#f)))
    (define special?
      (lambda (_%obj100767%_)
        (if (let ((__tmp100829
                   (let () (declare (not safe)) (##type _%obj100767%_))))
              (declare (not safe))
              (##fx= __tmp100829 '2))
            (if (char? _%obj100767%_)
                '#f
                (if (null? _%obj100767%_)
                    '#f
                    (if (boolean? _%obj100767%_)
                        '#f
                        (if (eq? _%obj100767%_ '#!void)
                            '#f
                            (not (eof-object? _%obj100767%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj100759%_)
        (let ((_%$e100761%_ (vector? _%obj100759%_)))
          (if _%$e100761%_
              _%$e100761%_
              (let ((_%$e100764%_ (string? _%obj100759%_)))
                (if _%$e100764%_ _%$e100764%_ (hvector? _%obj100759%_)))))))
    (define hvector?
      (lambda (_%obj100730%_)
        (let ((_%$e100732%_ (u8vector? _%obj100730%_)))
          (if _%$e100732%_
              _%$e100732%_
              (let ((_%$e100735%_ (s8vector? _%obj100730%_)))
                (if _%$e100735%_
                    _%$e100735%_
                    (let ((_%$e100738%_ (u16vector? _%obj100730%_)))
                      (if _%$e100738%_
                          _%$e100738%_
                          (let ((_%$e100741%_ (s16vector? _%obj100730%_)))
                            (if _%$e100741%_
                                _%$e100741%_
                                (let ((_%$e100744%_
                                       (u32vector? _%obj100730%_)))
                                  (if _%$e100744%_
                                      _%$e100744%_
                                      (let ((_%$e100747%_
                                             (s32vector? _%obj100730%_)))
                                        (if _%$e100747%_
                                            _%$e100747%_
                                            (let ((_%$e100750%_
                                                   (u64vector? _%obj100730%_)))
                                              (if _%$e100750%_
                                                  _%$e100750%_
                                                  (let ((_%$e100753%_
                                                         (s64vector?
                                                          _%obj100730%_)))
                                                    (if _%$e100753%_
                                                        _%$e100753%_
                                                        (let ((_%$e100756%_
                                                               (f32vector?
                                                                _%obj100730%_)))
                                                          (if _%$e100756%_
                                                              _%$e100756%_
                                                              (f64vector?
                                                               _%obj100730%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj100728%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj100728%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj100728%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj100726%_)
        (let ((__tmp100830
               (let ((__tmp100831 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp100831))))
          (declare (not safe))
          (##structure-instance-of? _%obj100726%_ __tmp100830))))
    (define character-port?
      (lambda (_%obj100724%_)
        (let ((__tmp100832
               (let ((__tmp100833 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp100833))))
          (declare (not safe))
          (##structure-instance-of? _%obj100724%_ __tmp100832))))
    (define device-port?
      (lambda (_%obj100722%_)
        (let ((__tmp100834
               (let ((__tmp100835 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp100835))))
          (declare (not safe))
          (##structure-instance-of? _%obj100722%_ __tmp100834))))
    (define vector-port?
      (lambda (_%obj100720%_)
        (let ((__tmp100836
               (let ((__tmp100837 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp100837))))
          (declare (not safe))
          (##structure-instance-of? _%obj100720%_ __tmp100836))))
    (define string-port?
      (lambda (_%obj100718%_)
        (let ((__tmp100838
               (let ((__tmp100839 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp100839))))
          (declare (not safe))
          (##structure-instance-of? _%obj100718%_ __tmp100838))))
    (define u8vector-port?
      (lambda (_%obj100716%_)
        (let ((__tmp100840
               (let ((__tmp100841 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp100841))))
          (declare (not safe))
          (##structure-instance-of? _%obj100716%_ __tmp100840))))
    (define raw-device-port?
      (lambda (_%obj100714%_)
        (let ((__tmp100842
               (let ((__tmp100843 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp100843))))
          (declare (not safe))
          (##structure-instance-of? _%obj100714%_ __tmp100842))))
    (define tcp-server-port?
      (lambda (_%obj100712%_)
        (let ((__tmp100844
               (let ((__tmp100845 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp100845))))
          (declare (not safe))
          (##structure-instance-of? _%obj100712%_ __tmp100844))))
    (define udp-port?
      (lambda (_%obj100710%_)
        (let ((__tmp100846
               (let ((__tmp100847 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp100847))))
          (declare (not safe))
          (##structure-instance-of? _%obj100710%_ __tmp100846))))
    (define directory-port?
      (lambda (_%obj100708%_)
        (let ((__tmp100848
               (let ((__tmp100849 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp100849))))
          (declare (not safe))
          (##structure-instance-of? _%obj100708%_ __tmp100848))))
    (define event-queue-port?
      (lambda (_%obj100706%_)
        (let ((__tmp100850
               (let ((__tmp100851 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp100851))))
          (declare (not safe))
          (##structure-instance-of? _%obj100706%_ __tmp100850))))
    (define readenv?
      (lambda (_%obj100704%_)
        (let ((__tmp100852
               (let ((__tmp100853 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp100853))))
          (declare (not safe))
          (##structure-instance-of? _%obj100704%_ __tmp100852))))
    (define writeenv?
      (lambda (_%obj100702%_)
        (let ((__tmp100854
               (let ((__tmp100855 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp100855))))
          (declare (not safe))
          (##structure-instance-of? _%obj100702%_ __tmp100854))))
    (define vm?
      (lambda (_%obj100700%_)
        (let ((__tmp100856
               (let ((__tmp100857 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp100857))))
          (declare (not safe))
          (##structure-instance-of? _%obj100700%_ __tmp100856))))))
