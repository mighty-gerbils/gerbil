(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1713631265)
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
      (let ((__tmp101902 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp101902)))
    (define boolean::t
      (let ((__tmp101903 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp101903)))
    (define atom::t
      (let ((__tmp101904 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp101904)))
    (define void::t
      (let ((__tmp101905 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp101905)))
    (define eof::t
      (let ((__tmp101906 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp101906)))
    (define true::t
      (let ((__tmp101907 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp101907)))
    (define false::t
      (let ((__tmp101908 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp101908)))
    (define special::t
      (let ((__tmp101909 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp101909)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp101910 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp101910)))
    (define integer::t
      (let ((__tmp101911 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp101911)))
    (define fixnum::t
      (let ((__tmp101912 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp101912)))
    (define bignum::t
      (let ((__tmp101913 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp101913)))
    (define ratnum::t
      (let ((__tmp101914 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp101914)))
    (define flonum::t
      (let ((__tmp101915 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp101915)))
    (define cpxnum::t
      (let ((__tmp101916 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp101916)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp101917 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp101917)))
    (define keyword::t
      (let ((__tmp101918 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp101918)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp101919 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp101919)))
    (define null::t
      (let ((__tmp101920 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp101920)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp101921 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp101921)))
    (define string::t
      (let ((__tmp101922 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp101922)))
    (define hvector::t
      (let ((__tmp101923 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp101923)))
    (define u8vector::t
      (let ((__tmp101924 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp101924)))
    (define s8vector::t
      (let ((__tmp101925 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp101925)))
    (define u16vector::t
      (let ((__tmp101926 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp101926)))
    (define s16vector::t
      (let ((__tmp101927 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp101927)))
    (define u32vector::t
      (let ((__tmp101928 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp101928)))
    (define s32vector::t
      (let ((__tmp101929 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp101929)))
    (define u64vector::t
      (let ((__tmp101930 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp101930)))
    (define s64vector::t
      (let ((__tmp101931 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp101931)))
    (define f32vector::t
      (let ((__tmp101932 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp101932)))
    (define f64vector::t
      (let ((__tmp101933 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp101933)))
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
      (let ((__tmp101934 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp101934)))
    (define thread::t
      (let ((__tmp101935 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp101935)))
    (define thread-group::t
      (let ((__tmp101936 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp101936)))
    (define mutex::t
      (let ((__tmp101937 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp101937)))
    (define condvar::t
      (let ((__tmp101938 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp101938)))
    (define port::t
      (let ((__tmp101939 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp101939)))
    (define object-port::t
      (let ((__tmp101940 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp101940)))
    (define character-port::t
      (let ((__tmp101941 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp101941)))
    (define byte-port::t
      (let ((__tmp101942 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp101942)))
    (define device-port::t
      (let ((__tmp101943 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp101943)))
    (define vector-port::t
      (let ((__tmp101944 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp101944)))
    (define string-port::t
      (let ((__tmp101945 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp101945)))
    (define u8vector-port::t
      (let ((__tmp101946 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp101946)))
    (define raw-device-port::t
      (let ((__tmp101947 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp101947)))
    (define tcp-server-port::t
      (let ((__tmp101948 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp101948)))
    (define udp-port::t
      (let ((__tmp101949 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp101949)))
    (define directory-port::t
      (let ((__tmp101950 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp101950)))
    (define event-queue-port::t
      (let ((__tmp101951 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp101951)))
    (define table::t
      (let ((__tmp101952 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp101952)))
    (define readenv::t
      (let ((__tmp101953 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp101953)))
    (define writeenv::t
      (let ((__tmp101954 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp101954)))
    (define readtable::t
      (let ((__tmp101955 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp101955)))
    (define processor::t
      (let ((__tmp101956 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp101956)))
    (define vm::t
      (let ((__tmp101957 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp101957)))
    (define file-info::t
      (let ((__tmp101958 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp101958)))
    (define socket-info::t
      (let ((__tmp101959 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp101959)))
    (define address-info::t
      (let ((__tmp101960 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp101960)))
    (define atom?
      (lambda (_%obj101901%_)
        (if (let () (declare (not safe)) (immediate? _%obj101901%_))
            (if (char? _%obj101901%_) '#f (not (fixnum? _%obj101901%_)))
            '#f)))
    (define special?
      (lambda (_%obj101899%_)
        (if (let ((__tmp101961
                   (let () (declare (not safe)) (##type _%obj101899%_))))
              (declare (not safe))
              (##fx= __tmp101961 '2))
            (if (char? _%obj101899%_)
                '#f
                (if (null? _%obj101899%_)
                    '#f
                    (if (boolean? _%obj101899%_)
                        '#f
                        (if (eq? _%obj101899%_ '#!void)
                            '#f
                            (not (eof-object? _%obj101899%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj101891%_)
        (let ((_%$e101893%_ (vector? _%obj101891%_)))
          (if _%$e101893%_
              _%$e101893%_
              (let ((_%$e101896%_ (string? _%obj101891%_)))
                (if _%$e101896%_ _%$e101896%_ (hvector? _%obj101891%_)))))))
    (define hvector?
      (lambda (_%obj101862%_)
        (let ((_%$e101864%_ (u8vector? _%obj101862%_)))
          (if _%$e101864%_
              _%$e101864%_
              (let ((_%$e101867%_ (s8vector? _%obj101862%_)))
                (if _%$e101867%_
                    _%$e101867%_
                    (let ((_%$e101870%_ (u16vector? _%obj101862%_)))
                      (if _%$e101870%_
                          _%$e101870%_
                          (let ((_%$e101873%_ (s16vector? _%obj101862%_)))
                            (if _%$e101873%_
                                _%$e101873%_
                                (let ((_%$e101876%_
                                       (u32vector? _%obj101862%_)))
                                  (if _%$e101876%_
                                      _%$e101876%_
                                      (let ((_%$e101879%_
                                             (s32vector? _%obj101862%_)))
                                        (if _%$e101879%_
                                            _%$e101879%_
                                            (let ((_%$e101882%_
                                                   (u64vector? _%obj101862%_)))
                                              (if _%$e101882%_
                                                  _%$e101882%_
                                                  (let ((_%$e101885%_
                                                         (s64vector?
                                                          _%obj101862%_)))
                                                    (if _%$e101885%_
                                                        _%$e101885%_
                                                        (let ((_%$e101888%_
                                                               (f32vector?
                                                                _%obj101862%_)))
                                                          (if _%$e101888%_
                                                              _%$e101888%_
                                                              (f64vector?
                                                               _%obj101862%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj101860%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj101860%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj101860%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj101858%_)
        (let ((__tmp101962
               (let ((__tmp101963 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp101963))))
          (declare (not safe))
          (##structure-instance-of? _%obj101858%_ __tmp101962))))
    (define character-port?
      (lambda (_%obj101856%_)
        (let ((__tmp101964
               (let ((__tmp101965 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp101965))))
          (declare (not safe))
          (##structure-instance-of? _%obj101856%_ __tmp101964))))
    (define device-port?
      (lambda (_%obj101854%_)
        (let ((__tmp101966
               (let ((__tmp101967 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp101967))))
          (declare (not safe))
          (##structure-instance-of? _%obj101854%_ __tmp101966))))
    (define vector-port?
      (lambda (_%obj101852%_)
        (let ((__tmp101968
               (let ((__tmp101969 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp101969))))
          (declare (not safe))
          (##structure-instance-of? _%obj101852%_ __tmp101968))))
    (define string-port?
      (lambda (_%obj101850%_)
        (let ((__tmp101970
               (let ((__tmp101971 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp101971))))
          (declare (not safe))
          (##structure-instance-of? _%obj101850%_ __tmp101970))))
    (define u8vector-port?
      (lambda (_%obj101848%_)
        (let ((__tmp101972
               (let ((__tmp101973 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp101973))))
          (declare (not safe))
          (##structure-instance-of? _%obj101848%_ __tmp101972))))
    (define raw-device-port?
      (lambda (_%obj101846%_)
        (let ((__tmp101974
               (let ((__tmp101975 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp101975))))
          (declare (not safe))
          (##structure-instance-of? _%obj101846%_ __tmp101974))))
    (define tcp-server-port?
      (lambda (_%obj101844%_)
        (let ((__tmp101976
               (let ((__tmp101977 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp101977))))
          (declare (not safe))
          (##structure-instance-of? _%obj101844%_ __tmp101976))))
    (define udp-port?
      (lambda (_%obj101842%_)
        (let ((__tmp101978
               (let ((__tmp101979 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp101979))))
          (declare (not safe))
          (##structure-instance-of? _%obj101842%_ __tmp101978))))
    (define directory-port?
      (lambda (_%obj101840%_)
        (let ((__tmp101980
               (let ((__tmp101981 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp101981))))
          (declare (not safe))
          (##structure-instance-of? _%obj101840%_ __tmp101980))))
    (define event-queue-port?
      (lambda (_%obj101838%_)
        (let ((__tmp101982
               (let ((__tmp101983 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp101983))))
          (declare (not safe))
          (##structure-instance-of? _%obj101838%_ __tmp101982))))
    (define readenv?
      (lambda (_%obj101836%_)
        (let ((__tmp101984
               (let ((__tmp101985 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp101985))))
          (declare (not safe))
          (##structure-instance-of? _%obj101836%_ __tmp101984))))
    (define writeenv?
      (lambda (_%obj101834%_)
        (let ((__tmp101986
               (let ((__tmp101987 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp101987))))
          (declare (not safe))
          (##structure-instance-of? _%obj101834%_ __tmp101986))))
    (define vm?
      (lambda (_%obj101832%_)
        (let ((__tmp101988
               (let ((__tmp101989 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp101989))))
          (declare (not safe))
          (##structure-instance-of? _%obj101832%_ __tmp101988))))))
