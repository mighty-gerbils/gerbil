(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712773524)
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
      (let ((__tmp98951 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98951)))
    (define boolean::t
      (let ((__tmp98952 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98952)))
    (define atom::t
      (let ((__tmp98953 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98953)))
    (define void::t
      (let ((__tmp98954 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98954)))
    (define eof::t
      (let ((__tmp98955 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98955)))
    (define true::t
      (let ((__tmp98956 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98956)))
    (define false::t
      (let ((__tmp98957 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98957)))
    (define special::t
      (let ((__tmp98958 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98958)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98959 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98959)))
    (define integer::t
      (let ((__tmp98960 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98960)))
    (define fixnum::t
      (let ((__tmp98961 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98961)))
    (define bignum::t
      (let ((__tmp98962 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98962)))
    (define ratnum::t
      (let ((__tmp98963 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98963)))
    (define flonum::t
      (let ((__tmp98964 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98964)))
    (define cpxnum::t
      (let ((__tmp98965 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98965)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98966 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98966)))
    (define keyword::t
      (let ((__tmp98967 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98967)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98968 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98968)))
    (define null::t
      (let ((__tmp98969 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98969)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98970 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98970)))
    (define string::t
      (let ((__tmp98971 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98971)))
    (define hvector::t
      (let ((__tmp98972 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98972)))
    (define u8vector::t
      (let ((__tmp98973 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98973)))
    (define s8vector::t
      (let ((__tmp98974 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98974)))
    (define u16vector::t
      (let ((__tmp98975 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98975)))
    (define s16vector::t
      (let ((__tmp98976 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98976)))
    (define u32vector::t
      (let ((__tmp98977 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98977)))
    (define s32vector::t
      (let ((__tmp98978 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98978)))
    (define u64vector::t
      (let ((__tmp98979 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98979)))
    (define s64vector::t
      (let ((__tmp98980 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98980)))
    (define f32vector::t
      (let ((__tmp98981 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98981)))
    (define f64vector::t
      (let ((__tmp98982 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98982)))
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
      (let ((__tmp98983 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98983)))
    (define thread::t
      (let ((__tmp98984 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98984)))
    (define thread-group::t
      (let ((__tmp98985 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98985)))
    (define mutex::t
      (let ((__tmp98986 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98986)))
    (define condvar::t
      (let ((__tmp98987 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98987)))
    (define port::t
      (let ((__tmp98988 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98988)))
    (define object-port::t
      (let ((__tmp98989 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98989)))
    (define character-port::t
      (let ((__tmp98990 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98990)))
    (define byte-port::t
      (let ((__tmp98991 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98991)))
    (define device-port::t
      (let ((__tmp98992 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98992)))
    (define vector-port::t
      (let ((__tmp98993 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98993)))
    (define string-port::t
      (let ((__tmp98994 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98994)))
    (define u8vector-port::t
      (let ((__tmp98995 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98995)))
    (define raw-device-port::t
      (let ((__tmp98996 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98996)))
    (define tcp-server-port::t
      (let ((__tmp98997 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98997)))
    (define udp-port::t
      (let ((__tmp98998 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98998)))
    (define directory-port::t
      (let ((__tmp98999 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98999)))
    (define event-queue-port::t
      (let ((__tmp99000 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp99000)))
    (define table::t
      (let ((__tmp99001 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp99001)))
    (define readenv::t
      (let ((__tmp99002 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp99002)))
    (define writeenv::t
      (let ((__tmp99003 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp99003)))
    (define readtable::t
      (let ((__tmp99004 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp99004)))
    (define processor::t
      (let ((__tmp99005 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp99005)))
    (define vm::t
      (let ((__tmp99006 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp99006)))
    (define file-info::t
      (let ((__tmp99007 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp99007)))
    (define socket-info::t
      (let ((__tmp99008 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp99008)))
    (define address-info::t
      (let ((__tmp99009 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp99009)))
    (define atom?
      (lambda (_%obj98950%_)
        (if (let () (declare (not safe)) (immediate? _%obj98950%_))
            (if (not (char? _%obj98950%_)) (not (fixnum? _%obj98950%_)) '#f)
            '#f)))
    (define special?
      (lambda (_%obj98948%_)
        (if (let ((__tmp99010
                   (let () (declare (not safe)) (##type _%obj98948%_))))
              (declare (not safe))
              (##fx= __tmp99010 '2))
            (if (not (char? _%obj98948%_))
                (if (not (null? _%obj98948%_))
                    (if (not (boolean? _%obj98948%_))
                        (if (not (eq? _%obj98948%_ '#!void))
                            (not (eof-object? _%obj98948%_))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98940%_)
        (let ((_%$e98942%_ (vector? _%obj98940%_)))
          (if _%$e98942%_
              _%$e98942%_
              (let ((_%$e98945%_ (string? _%obj98940%_)))
                (if _%$e98945%_ _%$e98945%_ (hvector? _%obj98940%_)))))))
    (define hvector?
      (lambda (_%obj98911%_)
        (let ((_%$e98913%_ (u8vector? _%obj98911%_)))
          (if _%$e98913%_
              _%$e98913%_
              (let ((_%$e98916%_ (s8vector? _%obj98911%_)))
                (if _%$e98916%_
                    _%$e98916%_
                    (let ((_%$e98919%_ (u16vector? _%obj98911%_)))
                      (if _%$e98919%_
                          _%$e98919%_
                          (let ((_%$e98922%_ (s16vector? _%obj98911%_)))
                            (if _%$e98922%_
                                _%$e98922%_
                                (let ((_%$e98925%_ (u32vector? _%obj98911%_)))
                                  (if _%$e98925%_
                                      _%$e98925%_
                                      (let ((_%$e98928%_
                                             (s32vector? _%obj98911%_)))
                                        (if _%$e98928%_
                                            _%$e98928%_
                                            (let ((_%$e98931%_
                                                   (u64vector? _%obj98911%_)))
                                              (if _%$e98931%_
                                                  _%$e98931%_
                                                  (let ((_%$e98934%_
                                                         (s64vector?
                                                          _%obj98911%_)))
                                                    (if _%$e98934%_
                                                        _%$e98934%_
                                                        (let ((_%$e98937%_
                                                               (f32vector?
                                                                _%obj98911%_)))
                                                          (if _%$e98937%_
                                                              _%$e98937%_
                                                              (f64vector?
                                                               _%obj98911%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj98909%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98909%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98909%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98907%_)
        (let ((__tmp99011
               (let ((__tmp99012 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp99012))))
          (declare (not safe))
          (##structure-instance-of? _%obj98907%_ __tmp99011))))
    (define character-port?
      (lambda (_%obj98905%_)
        (let ((__tmp99013
               (let ((__tmp99014 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp99014))))
          (declare (not safe))
          (##structure-instance-of? _%obj98905%_ __tmp99013))))
    (define device-port?
      (lambda (_%obj98903%_)
        (let ((__tmp99015
               (let ((__tmp99016 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp99016))))
          (declare (not safe))
          (##structure-instance-of? _%obj98903%_ __tmp99015))))
    (define vector-port?
      (lambda (_%obj98901%_)
        (let ((__tmp99017
               (let ((__tmp99018 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp99018))))
          (declare (not safe))
          (##structure-instance-of? _%obj98901%_ __tmp99017))))
    (define string-port?
      (lambda (_%obj98899%_)
        (let ((__tmp99019
               (let ((__tmp99020 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp99020))))
          (declare (not safe))
          (##structure-instance-of? _%obj98899%_ __tmp99019))))
    (define u8vector-port?
      (lambda (_%obj98897%_)
        (let ((__tmp99021
               (let ((__tmp99022 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp99022))))
          (declare (not safe))
          (##structure-instance-of? _%obj98897%_ __tmp99021))))
    (define raw-device-port?
      (lambda (_%obj98895%_)
        (let ((__tmp99023
               (let ((__tmp99024 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp99024))))
          (declare (not safe))
          (##structure-instance-of? _%obj98895%_ __tmp99023))))
    (define tcp-server-port?
      (lambda (_%obj98893%_)
        (let ((__tmp99025
               (let ((__tmp99026 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp99026))))
          (declare (not safe))
          (##structure-instance-of? _%obj98893%_ __tmp99025))))
    (define udp-port?
      (lambda (_%obj98891%_)
        (let ((__tmp99027
               (let ((__tmp99028 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp99028))))
          (declare (not safe))
          (##structure-instance-of? _%obj98891%_ __tmp99027))))
    (define directory-port?
      (lambda (_%obj98889%_)
        (let ((__tmp99029
               (let ((__tmp99030 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp99030))))
          (declare (not safe))
          (##structure-instance-of? _%obj98889%_ __tmp99029))))
    (define event-queue-port?
      (lambda (_%obj98887%_)
        (let ((__tmp99031
               (let ((__tmp99032 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp99032))))
          (declare (not safe))
          (##structure-instance-of? _%obj98887%_ __tmp99031))))
    (define readenv?
      (lambda (_%obj98885%_)
        (let ((__tmp99033
               (let ((__tmp99034 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp99034))))
          (declare (not safe))
          (##structure-instance-of? _%obj98885%_ __tmp99033))))
    (define writeenv?
      (lambda (_%obj98883%_)
        (let ((__tmp99035
               (let ((__tmp99036 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp99036))))
          (declare (not safe))
          (##structure-instance-of? _%obj98883%_ __tmp99035))))
    (define vm?
      (lambda (_%obj98881%_)
        (let ((__tmp99037
               (let ((__tmp99038 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp99038))))
          (declare (not safe))
          (##structure-instance-of? _%obj98881%_ __tmp99037))))))
