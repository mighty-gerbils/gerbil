(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1756715351)
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
      (let ((__tmp109854 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp109854)))
    (define boolean::t
      (let ((__tmp109855 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp109855)))
    (define atom::t
      (let ((__tmp109856 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp109856)))
    (define void::t
      (let ((__tmp109857 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp109857)))
    (define eof::t
      (let ((__tmp109858 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp109858)))
    (define true::t
      (let ((__tmp109859 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp109859)))
    (define false::t
      (let ((__tmp109860 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp109860)))
    (define special::t
      (let ((__tmp109861 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp109861)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp109862 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp109862)))
    (define integer::t
      (let ((__tmp109863 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp109863)))
    (define fixnum::t
      (let ((__tmp109864 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp109864)))
    (define bignum::t
      (let ((__tmp109865 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp109865)))
    (define ratnum::t
      (let ((__tmp109866 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp109866)))
    (define flonum::t
      (let ((__tmp109867 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp109867)))
    (define cpxnum::t
      (let ((__tmp109868 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp109868)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp109869 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp109869)))
    (define keyword::t
      (let ((__tmp109870 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp109870)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp109871 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp109871)))
    (define null::t
      (let ((__tmp109872 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp109872)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp109873 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp109873)))
    (define string::t
      (let ((__tmp109874 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp109874)))
    (define hvector::t
      (let ((__tmp109875 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp109875)))
    (define u8vector::t
      (let ((__tmp109876 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp109876)))
    (define s8vector::t
      (let ((__tmp109877 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp109877)))
    (define u16vector::t
      (let ((__tmp109878 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp109878)))
    (define s16vector::t
      (let ((__tmp109879 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp109879)))
    (define u32vector::t
      (let ((__tmp109880 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp109880)))
    (define s32vector::t
      (let ((__tmp109881 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp109881)))
    (define u64vector::t
      (let ((__tmp109882 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp109882)))
    (define s64vector::t
      (let ((__tmp109883 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp109883)))
    (define f32vector::t
      (let ((__tmp109884 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp109884)))
    (define f64vector::t
      (let ((__tmp109885 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp109885)))
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
      (let ((__tmp109886 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp109886)))
    (define thread::t
      (let ((__tmp109887 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp109887)))
    (define thread-group::t
      (let ((__tmp109888 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp109888)))
    (define mutex::t
      (let ((__tmp109889 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp109889)))
    (define condvar::t
      (let ((__tmp109890 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp109890)))
    (define port::t
      (let ((__tmp109891 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp109891)))
    (define object-port::t
      (let ((__tmp109892 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp109892)))
    (define character-port::t
      (let ((__tmp109893 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp109893)))
    (define byte-port::t
      (let ((__tmp109894 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp109894)))
    (define device-port::t
      (let ((__tmp109895 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp109895)))
    (define vector-port::t
      (let ((__tmp109896 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp109896)))
    (define string-port::t
      (let ((__tmp109897 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp109897)))
    (define u8vector-port::t
      (let ((__tmp109898 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp109898)))
    (define raw-device-port::t
      (let ((__tmp109899 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp109899)))
    (define tcp-server-port::t
      (let ((__tmp109900 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp109900)))
    (define udp-port::t
      (let ((__tmp109901 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp109901)))
    (define directory-port::t
      (let ((__tmp109902 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp109902)))
    (define event-queue-port::t
      (let ((__tmp109903 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp109903)))
    (define table::t
      (let ((__tmp109904 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp109904)))
    (define readenv::t
      (let ((__tmp109905 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp109905)))
    (define writeenv::t
      (let ((__tmp109906 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp109906)))
    (define readtable::t
      (let ((__tmp109907 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp109907)))
    (define processor::t
      (let ((__tmp109908 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp109908)))
    (define vm::t
      (let ((__tmp109909 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp109909)))
    (define file-info::t
      (let ((__tmp109910 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp109910)))
    (define socket-info::t
      (let ((__tmp109911 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp109911)))
    (define address-info::t
      (let ((__tmp109912 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp109912)))
    (define atom?
      (lambda (_%obj109853%_)
        (if (let () (declare (not safe)) (immediate? _%obj109853%_))
            (if (char? _%obj109853%_) '#f (not (fixnum? _%obj109853%_)))
            '#f)))
    (define special?
      (lambda (_%obj109851%_)
        (if (let ((__tmp109913
                   (let () (declare (not safe)) (##type _%obj109851%_))))
              (declare (not safe))
              (##fx= __tmp109913 '2))
            (if (char? _%obj109851%_)
                '#f
                (if (null? _%obj109851%_)
                    '#f
                    (if (boolean? _%obj109851%_)
                        '#f
                        (if (eq? _%obj109851%_ '#!void)
                            '#f
                            (not (eof-object? _%obj109851%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj109843%_)
        (let ((_%$e109845%_ (vector? _%obj109843%_)))
          (if _%$e109845%_
              _%$e109845%_
              (let ((_%$e109848%_ (string? _%obj109843%_)))
                (if _%$e109848%_ _%$e109848%_ (hvector? _%obj109843%_)))))))
    (define hvector?
      (lambda (_%obj109814%_)
        (let ((_%$e109816%_ (u8vector? _%obj109814%_)))
          (if _%$e109816%_
              _%$e109816%_
              (let ((_%$e109819%_ (s8vector? _%obj109814%_)))
                (if _%$e109819%_
                    _%$e109819%_
                    (let ((_%$e109822%_ (u16vector? _%obj109814%_)))
                      (if _%$e109822%_
                          _%$e109822%_
                          (let ((_%$e109825%_ (s16vector? _%obj109814%_)))
                            (if _%$e109825%_
                                _%$e109825%_
                                (let ((_%$e109828%_
                                       (u32vector? _%obj109814%_)))
                                  (if _%$e109828%_
                                      _%$e109828%_
                                      (let ((_%$e109831%_
                                             (s32vector? _%obj109814%_)))
                                        (if _%$e109831%_
                                            _%$e109831%_
                                            (let ((_%$e109834%_
                                                   (u64vector? _%obj109814%_)))
                                              (if _%$e109834%_
                                                  _%$e109834%_
                                                  (let ((_%$e109837%_
                                                         (s64vector?
                                                          _%obj109814%_)))
                                                    (if _%$e109837%_
                                                        _%$e109837%_
                                                        (let ((_%$e109840%_
                                                               (f32vector?
                                                                _%obj109814%_)))
                                                          (if _%$e109840%_
                                                              _%$e109840%_
                                                              (f64vector?
                                                               _%obj109814%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj109812%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj109812%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj109812%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj109810%_)
        (let ((__tmp109914
               (let ((__tmp109915 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp109915))))
          (declare (not safe))
          (##structure-instance-of? _%obj109810%_ __tmp109914))))
    (define character-port?
      (lambda (_%obj109808%_)
        (let ((__tmp109916
               (let ((__tmp109917 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp109917))))
          (declare (not safe))
          (##structure-instance-of? _%obj109808%_ __tmp109916))))
    (define device-port?
      (lambda (_%obj109806%_)
        (let ((__tmp109918
               (let ((__tmp109919 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp109919))))
          (declare (not safe))
          (##structure-instance-of? _%obj109806%_ __tmp109918))))
    (define vector-port?
      (lambda (_%obj109804%_)
        (let ((__tmp109920
               (let ((__tmp109921 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp109921))))
          (declare (not safe))
          (##structure-instance-of? _%obj109804%_ __tmp109920))))
    (define string-port?
      (lambda (_%obj109802%_)
        (let ((__tmp109922
               (let ((__tmp109923 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp109923))))
          (declare (not safe))
          (##structure-instance-of? _%obj109802%_ __tmp109922))))
    (define u8vector-port?
      (lambda (_%obj109800%_)
        (let ((__tmp109924
               (let ((__tmp109925 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp109925))))
          (declare (not safe))
          (##structure-instance-of? _%obj109800%_ __tmp109924))))
    (define raw-device-port?
      (lambda (_%obj109798%_)
        (let ((__tmp109926
               (let ((__tmp109927 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp109927))))
          (declare (not safe))
          (##structure-instance-of? _%obj109798%_ __tmp109926))))
    (define tcp-server-port?
      (lambda (_%obj109796%_)
        (let ((__tmp109928
               (let ((__tmp109929 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp109929))))
          (declare (not safe))
          (##structure-instance-of? _%obj109796%_ __tmp109928))))
    (define udp-port?
      (lambda (_%obj109794%_)
        (let ((__tmp109930
               (let ((__tmp109931 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp109931))))
          (declare (not safe))
          (##structure-instance-of? _%obj109794%_ __tmp109930))))
    (define directory-port?
      (lambda (_%obj109792%_)
        (let ((__tmp109932
               (let ((__tmp109933 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp109933))))
          (declare (not safe))
          (##structure-instance-of? _%obj109792%_ __tmp109932))))
    (define event-queue-port?
      (lambda (_%obj109790%_)
        (let ((__tmp109934
               (let ((__tmp109935 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp109935))))
          (declare (not safe))
          (##structure-instance-of? _%obj109790%_ __tmp109934))))
    (define readenv?
      (lambda (_%obj109788%_)
        (let ((__tmp109936
               (let ((__tmp109937 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp109937))))
          (declare (not safe))
          (##structure-instance-of? _%obj109788%_ __tmp109936))))
    (define writeenv?
      (lambda (_%obj109786%_)
        (let ((__tmp109938
               (let ((__tmp109939 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp109939))))
          (declare (not safe))
          (##structure-instance-of? _%obj109786%_ __tmp109938))))
    (define vm?
      (lambda (_%obj109784%_)
        (let ((__tmp109940
               (let ((__tmp109941 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp109941))))
          (declare (not safe))
          (##structure-instance-of? _%obj109784%_ __tmp109940))))))
