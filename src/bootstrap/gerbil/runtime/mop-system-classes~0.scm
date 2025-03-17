(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1742226230)
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
      (let ((__tmp103003 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp103003)))
    (define boolean::t
      (let ((__tmp103004 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp103004)))
    (define atom::t
      (let ((__tmp103005 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp103005)))
    (define void::t
      (let ((__tmp103006 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp103006)))
    (define eof::t
      (let ((__tmp103007 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp103007)))
    (define true::t
      (let ((__tmp103008 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp103008)))
    (define false::t
      (let ((__tmp103009 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp103009)))
    (define special::t
      (let ((__tmp103010 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp103010)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp103011 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp103011)))
    (define integer::t
      (let ((__tmp103012 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp103012)))
    (define fixnum::t
      (let ((__tmp103013 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp103013)))
    (define bignum::t
      (let ((__tmp103014 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp103014)))
    (define ratnum::t
      (let ((__tmp103015 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp103015)))
    (define flonum::t
      (let ((__tmp103016 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp103016)))
    (define cpxnum::t
      (let ((__tmp103017 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp103017)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp103018 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp103018)))
    (define keyword::t
      (let ((__tmp103019 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp103019)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp103020 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp103020)))
    (define null::t
      (let ((__tmp103021 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp103021)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp103022 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp103022)))
    (define string::t
      (let ((__tmp103023 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp103023)))
    (define hvector::t
      (let ((__tmp103024 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp103024)))
    (define u8vector::t
      (let ((__tmp103025 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp103025)))
    (define s8vector::t
      (let ((__tmp103026 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp103026)))
    (define u16vector::t
      (let ((__tmp103027 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp103027)))
    (define s16vector::t
      (let ((__tmp103028 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp103028)))
    (define u32vector::t
      (let ((__tmp103029 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp103029)))
    (define s32vector::t
      (let ((__tmp103030 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp103030)))
    (define u64vector::t
      (let ((__tmp103031 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp103031)))
    (define s64vector::t
      (let ((__tmp103032 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp103032)))
    (define f32vector::t
      (let ((__tmp103033 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp103033)))
    (define f64vector::t
      (let ((__tmp103034 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp103034)))
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
      (let ((__tmp103035 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp103035)))
    (define thread::t
      (let ((__tmp103036 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp103036)))
    (define thread-group::t
      (let ((__tmp103037 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp103037)))
    (define mutex::t
      (let ((__tmp103038 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp103038)))
    (define condvar::t
      (let ((__tmp103039 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp103039)))
    (define port::t
      (let ((__tmp103040 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp103040)))
    (define object-port::t
      (let ((__tmp103041 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp103041)))
    (define character-port::t
      (let ((__tmp103042 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp103042)))
    (define byte-port::t
      (let ((__tmp103043 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp103043)))
    (define device-port::t
      (let ((__tmp103044 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp103044)))
    (define vector-port::t
      (let ((__tmp103045 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp103045)))
    (define string-port::t
      (let ((__tmp103046 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp103046)))
    (define u8vector-port::t
      (let ((__tmp103047 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp103047)))
    (define raw-device-port::t
      (let ((__tmp103048 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp103048)))
    (define tcp-server-port::t
      (let ((__tmp103049 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp103049)))
    (define udp-port::t
      (let ((__tmp103050 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp103050)))
    (define directory-port::t
      (let ((__tmp103051 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp103051)))
    (define event-queue-port::t
      (let ((__tmp103052 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp103052)))
    (define table::t
      (let ((__tmp103053 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp103053)))
    (define readenv::t
      (let ((__tmp103054 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp103054)))
    (define writeenv::t
      (let ((__tmp103055 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp103055)))
    (define readtable::t
      (let ((__tmp103056 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp103056)))
    (define processor::t
      (let ((__tmp103057 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp103057)))
    (define vm::t
      (let ((__tmp103058 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp103058)))
    (define file-info::t
      (let ((__tmp103059 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp103059)))
    (define socket-info::t
      (let ((__tmp103060 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp103060)))
    (define address-info::t
      (let ((__tmp103061 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp103061)))
    (define atom?
      (lambda (_%obj103002%_)
        (if (let () (declare (not safe)) (immediate? _%obj103002%_))
            (if (char? _%obj103002%_) '#f (not (fixnum? _%obj103002%_)))
            '#f)))
    (define special?
      (lambda (_%obj103000%_)
        (if (let ((__tmp103062
                   (let () (declare (not safe)) (##type _%obj103000%_))))
              (declare (not safe))
              (##fx= __tmp103062 '2))
            (if (char? _%obj103000%_)
                '#f
                (if (null? _%obj103000%_)
                    '#f
                    (if (boolean? _%obj103000%_)
                        '#f
                        (if (eq? _%obj103000%_ '#!void)
                            '#f
                            (not (eof-object? _%obj103000%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj102992%_)
        (let ((_%$e102994%_ (vector? _%obj102992%_)))
          (if _%$e102994%_
              _%$e102994%_
              (let ((_%$e102997%_ (string? _%obj102992%_)))
                (if _%$e102997%_ _%$e102997%_ (hvector? _%obj102992%_)))))))
    (define hvector?
      (lambda (_%obj102963%_)
        (let ((_%$e102965%_ (u8vector? _%obj102963%_)))
          (if _%$e102965%_
              _%$e102965%_
              (let ((_%$e102968%_ (s8vector? _%obj102963%_)))
                (if _%$e102968%_
                    _%$e102968%_
                    (let ((_%$e102971%_ (u16vector? _%obj102963%_)))
                      (if _%$e102971%_
                          _%$e102971%_
                          (let ((_%$e102974%_ (s16vector? _%obj102963%_)))
                            (if _%$e102974%_
                                _%$e102974%_
                                (let ((_%$e102977%_
                                       (u32vector? _%obj102963%_)))
                                  (if _%$e102977%_
                                      _%$e102977%_
                                      (let ((_%$e102980%_
                                             (s32vector? _%obj102963%_)))
                                        (if _%$e102980%_
                                            _%$e102980%_
                                            (let ((_%$e102983%_
                                                   (u64vector? _%obj102963%_)))
                                              (if _%$e102983%_
                                                  _%$e102983%_
                                                  (let ((_%$e102986%_
                                                         (s64vector?
                                                          _%obj102963%_)))
                                                    (if _%$e102986%_
                                                        _%$e102986%_
                                                        (let ((_%$e102989%_
                                                               (f32vector?
                                                                _%obj102963%_)))
                                                          (if _%$e102989%_
                                                              _%$e102989%_
                                                              (f64vector?
                                                               _%obj102963%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj102961%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj102961%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj102961%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj102959%_)
        (let ((__tmp103063
               (let ((__tmp103064 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp103064))))
          (declare (not safe))
          (##structure-instance-of? _%obj102959%_ __tmp103063))))
    (define character-port?
      (lambda (_%obj102957%_)
        (let ((__tmp103065
               (let ((__tmp103066 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp103066))))
          (declare (not safe))
          (##structure-instance-of? _%obj102957%_ __tmp103065))))
    (define device-port?
      (lambda (_%obj102955%_)
        (let ((__tmp103067
               (let ((__tmp103068 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp103068))))
          (declare (not safe))
          (##structure-instance-of? _%obj102955%_ __tmp103067))))
    (define vector-port?
      (lambda (_%obj102953%_)
        (let ((__tmp103069
               (let ((__tmp103070 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp103070))))
          (declare (not safe))
          (##structure-instance-of? _%obj102953%_ __tmp103069))))
    (define string-port?
      (lambda (_%obj102951%_)
        (let ((__tmp103071
               (let ((__tmp103072 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp103072))))
          (declare (not safe))
          (##structure-instance-of? _%obj102951%_ __tmp103071))))
    (define u8vector-port?
      (lambda (_%obj102949%_)
        (let ((__tmp103073
               (let ((__tmp103074 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp103074))))
          (declare (not safe))
          (##structure-instance-of? _%obj102949%_ __tmp103073))))
    (define raw-device-port?
      (lambda (_%obj102947%_)
        (let ((__tmp103075
               (let ((__tmp103076 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp103076))))
          (declare (not safe))
          (##structure-instance-of? _%obj102947%_ __tmp103075))))
    (define tcp-server-port?
      (lambda (_%obj102945%_)
        (let ((__tmp103077
               (let ((__tmp103078 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp103078))))
          (declare (not safe))
          (##structure-instance-of? _%obj102945%_ __tmp103077))))
    (define udp-port?
      (lambda (_%obj102943%_)
        (let ((__tmp103079
               (let ((__tmp103080 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp103080))))
          (declare (not safe))
          (##structure-instance-of? _%obj102943%_ __tmp103079))))
    (define directory-port?
      (lambda (_%obj102941%_)
        (let ((__tmp103081
               (let ((__tmp103082 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp103082))))
          (declare (not safe))
          (##structure-instance-of? _%obj102941%_ __tmp103081))))
    (define event-queue-port?
      (lambda (_%obj102939%_)
        (let ((__tmp103083
               (let ((__tmp103084 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp103084))))
          (declare (not safe))
          (##structure-instance-of? _%obj102939%_ __tmp103083))))
    (define readenv?
      (lambda (_%obj102937%_)
        (let ((__tmp103085
               (let ((__tmp103086 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp103086))))
          (declare (not safe))
          (##structure-instance-of? _%obj102937%_ __tmp103085))))
    (define writeenv?
      (lambda (_%obj102935%_)
        (let ((__tmp103087
               (let ((__tmp103088 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp103088))))
          (declare (not safe))
          (##structure-instance-of? _%obj102935%_ __tmp103087))))
    (define vm?
      (lambda (_%obj102933%_)
        (let ((__tmp103089
               (let ((__tmp103090 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp103090))))
          (declare (not safe))
          (##structure-instance-of? _%obj102933%_ __tmp103089))))))
