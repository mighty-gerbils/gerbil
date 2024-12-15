(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1734225192)
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
      (let ((__tmp102961 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp102961)))
    (define boolean::t
      (let ((__tmp102962 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp102962)))
    (define atom::t
      (let ((__tmp102963 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp102963)))
    (define void::t
      (let ((__tmp102964 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp102964)))
    (define eof::t
      (let ((__tmp102965 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp102965)))
    (define true::t
      (let ((__tmp102966 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp102966)))
    (define false::t
      (let ((__tmp102967 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp102967)))
    (define special::t
      (let ((__tmp102968 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp102968)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp102969 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp102969)))
    (define integer::t
      (let ((__tmp102970 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp102970)))
    (define fixnum::t
      (let ((__tmp102971 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp102971)))
    (define bignum::t
      (let ((__tmp102972 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp102972)))
    (define ratnum::t
      (let ((__tmp102973 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp102973)))
    (define flonum::t
      (let ((__tmp102974 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp102974)))
    (define cpxnum::t
      (let ((__tmp102975 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp102975)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp102976 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp102976)))
    (define keyword::t
      (let ((__tmp102977 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp102977)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp102978 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp102978)))
    (define null::t
      (let ((__tmp102979 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp102979)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp102980 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp102980)))
    (define string::t
      (let ((__tmp102981 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp102981)))
    (define hvector::t
      (let ((__tmp102982 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp102982)))
    (define u8vector::t
      (let ((__tmp102983 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp102983)))
    (define s8vector::t
      (let ((__tmp102984 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp102984)))
    (define u16vector::t
      (let ((__tmp102985 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp102985)))
    (define s16vector::t
      (let ((__tmp102986 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp102986)))
    (define u32vector::t
      (let ((__tmp102987 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp102987)))
    (define s32vector::t
      (let ((__tmp102988 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp102988)))
    (define u64vector::t
      (let ((__tmp102989 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp102989)))
    (define s64vector::t
      (let ((__tmp102990 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp102990)))
    (define f32vector::t
      (let ((__tmp102991 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp102991)))
    (define f64vector::t
      (let ((__tmp102992 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp102992)))
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
      (let ((__tmp102993 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp102993)))
    (define thread::t
      (let ((__tmp102994 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp102994)))
    (define thread-group::t
      (let ((__tmp102995 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp102995)))
    (define mutex::t
      (let ((__tmp102996 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp102996)))
    (define condvar::t
      (let ((__tmp102997 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp102997)))
    (define port::t
      (let ((__tmp102998 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp102998)))
    (define object-port::t
      (let ((__tmp102999 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp102999)))
    (define character-port::t
      (let ((__tmp103000 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp103000)))
    (define byte-port::t
      (let ((__tmp103001 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp103001)))
    (define device-port::t
      (let ((__tmp103002 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp103002)))
    (define vector-port::t
      (let ((__tmp103003 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp103003)))
    (define string-port::t
      (let ((__tmp103004 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp103004)))
    (define u8vector-port::t
      (let ((__tmp103005 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp103005)))
    (define raw-device-port::t
      (let ((__tmp103006 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp103006)))
    (define tcp-server-port::t
      (let ((__tmp103007 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp103007)))
    (define udp-port::t
      (let ((__tmp103008 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp103008)))
    (define directory-port::t
      (let ((__tmp103009 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp103009)))
    (define event-queue-port::t
      (let ((__tmp103010 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp103010)))
    (define table::t
      (let ((__tmp103011 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp103011)))
    (define readenv::t
      (let ((__tmp103012 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp103012)))
    (define writeenv::t
      (let ((__tmp103013 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp103013)))
    (define readtable::t
      (let ((__tmp103014 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp103014)))
    (define processor::t
      (let ((__tmp103015 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp103015)))
    (define vm::t
      (let ((__tmp103016 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp103016)))
    (define file-info::t
      (let ((__tmp103017 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp103017)))
    (define socket-info::t
      (let ((__tmp103018 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp103018)))
    (define address-info::t
      (let ((__tmp103019 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp103019)))
    (define atom?
      (lambda (_%obj102960%_)
        (if (let () (declare (not safe)) (immediate? _%obj102960%_))
            (if (char? _%obj102960%_) '#f (not (fixnum? _%obj102960%_)))
            '#f)))
    (define special?
      (lambda (_%obj102958%_)
        (if (let ((__tmp103020
                   (let () (declare (not safe)) (##type _%obj102958%_))))
              (declare (not safe))
              (##fx= __tmp103020 '2))
            (if (char? _%obj102958%_)
                '#f
                (if (null? _%obj102958%_)
                    '#f
                    (if (boolean? _%obj102958%_)
                        '#f
                        (if (eq? _%obj102958%_ '#!void)
                            '#f
                            (not (eof-object? _%obj102958%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj102950%_)
        (let ((_%$e102952%_ (vector? _%obj102950%_)))
          (if _%$e102952%_
              _%$e102952%_
              (let ((_%$e102955%_ (string? _%obj102950%_)))
                (if _%$e102955%_ _%$e102955%_ (hvector? _%obj102950%_)))))))
    (define hvector?
      (lambda (_%obj102921%_)
        (let ((_%$e102923%_ (u8vector? _%obj102921%_)))
          (if _%$e102923%_
              _%$e102923%_
              (let ((_%$e102926%_ (s8vector? _%obj102921%_)))
                (if _%$e102926%_
                    _%$e102926%_
                    (let ((_%$e102929%_ (u16vector? _%obj102921%_)))
                      (if _%$e102929%_
                          _%$e102929%_
                          (let ((_%$e102932%_ (s16vector? _%obj102921%_)))
                            (if _%$e102932%_
                                _%$e102932%_
                                (let ((_%$e102935%_
                                       (u32vector? _%obj102921%_)))
                                  (if _%$e102935%_
                                      _%$e102935%_
                                      (let ((_%$e102938%_
                                             (s32vector? _%obj102921%_)))
                                        (if _%$e102938%_
                                            _%$e102938%_
                                            (let ((_%$e102941%_
                                                   (u64vector? _%obj102921%_)))
                                              (if _%$e102941%_
                                                  _%$e102941%_
                                                  (let ((_%$e102944%_
                                                         (s64vector?
                                                          _%obj102921%_)))
                                                    (if _%$e102944%_
                                                        _%$e102944%_
                                                        (let ((_%$e102947%_
                                                               (f32vector?
                                                                _%obj102921%_)))
                                                          (if _%$e102947%_
                                                              _%$e102947%_
                                                              (f64vector?
                                                               _%obj102921%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj102919%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj102919%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj102919%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj102917%_)
        (let ((__tmp103021
               (let ((__tmp103022 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp103022))))
          (declare (not safe))
          (##structure-instance-of? _%obj102917%_ __tmp103021))))
    (define character-port?
      (lambda (_%obj102915%_)
        (let ((__tmp103023
               (let ((__tmp103024 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp103024))))
          (declare (not safe))
          (##structure-instance-of? _%obj102915%_ __tmp103023))))
    (define device-port?
      (lambda (_%obj102913%_)
        (let ((__tmp103025
               (let ((__tmp103026 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp103026))))
          (declare (not safe))
          (##structure-instance-of? _%obj102913%_ __tmp103025))))
    (define vector-port?
      (lambda (_%obj102911%_)
        (let ((__tmp103027
               (let ((__tmp103028 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp103028))))
          (declare (not safe))
          (##structure-instance-of? _%obj102911%_ __tmp103027))))
    (define string-port?
      (lambda (_%obj102909%_)
        (let ((__tmp103029
               (let ((__tmp103030 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp103030))))
          (declare (not safe))
          (##structure-instance-of? _%obj102909%_ __tmp103029))))
    (define u8vector-port?
      (lambda (_%obj102907%_)
        (let ((__tmp103031
               (let ((__tmp103032 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp103032))))
          (declare (not safe))
          (##structure-instance-of? _%obj102907%_ __tmp103031))))
    (define raw-device-port?
      (lambda (_%obj102905%_)
        (let ((__tmp103033
               (let ((__tmp103034 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp103034))))
          (declare (not safe))
          (##structure-instance-of? _%obj102905%_ __tmp103033))))
    (define tcp-server-port?
      (lambda (_%obj102903%_)
        (let ((__tmp103035
               (let ((__tmp103036 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp103036))))
          (declare (not safe))
          (##structure-instance-of? _%obj102903%_ __tmp103035))))
    (define udp-port?
      (lambda (_%obj102901%_)
        (let ((__tmp103037
               (let ((__tmp103038 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp103038))))
          (declare (not safe))
          (##structure-instance-of? _%obj102901%_ __tmp103037))))
    (define directory-port?
      (lambda (_%obj102899%_)
        (let ((__tmp103039
               (let ((__tmp103040 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp103040))))
          (declare (not safe))
          (##structure-instance-of? _%obj102899%_ __tmp103039))))
    (define event-queue-port?
      (lambda (_%obj102897%_)
        (let ((__tmp103041
               (let ((__tmp103042 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp103042))))
          (declare (not safe))
          (##structure-instance-of? _%obj102897%_ __tmp103041))))
    (define readenv?
      (lambda (_%obj102895%_)
        (let ((__tmp103043
               (let ((__tmp103044 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp103044))))
          (declare (not safe))
          (##structure-instance-of? _%obj102895%_ __tmp103043))))
    (define writeenv?
      (lambda (_%obj102893%_)
        (let ((__tmp103045
               (let ((__tmp103046 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp103046))))
          (declare (not safe))
          (##structure-instance-of? _%obj102893%_ __tmp103045))))
    (define vm?
      (lambda (_%obj102891%_)
        (let ((__tmp103047
               (let ((__tmp103048 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp103048))))
          (declare (not safe))
          (##structure-instance-of? _%obj102891%_ __tmp103047))))))
