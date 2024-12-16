(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1734357960)
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
      (let ((__tmp103050 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp103050)))
    (define boolean::t
      (let ((__tmp103051 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp103051)))
    (define atom::t
      (let ((__tmp103052 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp103052)))
    (define void::t
      (let ((__tmp103053 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp103053)))
    (define eof::t
      (let ((__tmp103054 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp103054)))
    (define true::t
      (let ((__tmp103055 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp103055)))
    (define false::t
      (let ((__tmp103056 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp103056)))
    (define special::t
      (let ((__tmp103057 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp103057)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp103058 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp103058)))
    (define integer::t
      (let ((__tmp103059 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp103059)))
    (define fixnum::t
      (let ((__tmp103060 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp103060)))
    (define bignum::t
      (let ((__tmp103061 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp103061)))
    (define ratnum::t
      (let ((__tmp103062 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp103062)))
    (define flonum::t
      (let ((__tmp103063 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp103063)))
    (define cpxnum::t
      (let ((__tmp103064 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp103064)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp103065 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp103065)))
    (define keyword::t
      (let ((__tmp103066 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp103066)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp103067 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp103067)))
    (define null::t
      (let ((__tmp103068 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp103068)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp103069 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp103069)))
    (define string::t
      (let ((__tmp103070 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp103070)))
    (define hvector::t
      (let ((__tmp103071 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp103071)))
    (define u8vector::t
      (let ((__tmp103072 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp103072)))
    (define s8vector::t
      (let ((__tmp103073 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp103073)))
    (define u16vector::t
      (let ((__tmp103074 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp103074)))
    (define s16vector::t
      (let ((__tmp103075 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp103075)))
    (define u32vector::t
      (let ((__tmp103076 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp103076)))
    (define s32vector::t
      (let ((__tmp103077 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp103077)))
    (define u64vector::t
      (let ((__tmp103078 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp103078)))
    (define s64vector::t
      (let ((__tmp103079 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp103079)))
    (define f32vector::t
      (let ((__tmp103080 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp103080)))
    (define f64vector::t
      (let ((__tmp103081 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp103081)))
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
      (let ((__tmp103082 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp103082)))
    (define thread::t
      (let ((__tmp103083 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp103083)))
    (define thread-group::t
      (let ((__tmp103084 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp103084)))
    (define mutex::t
      (let ((__tmp103085 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp103085)))
    (define condvar::t
      (let ((__tmp103086 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp103086)))
    (define port::t
      (let ((__tmp103087 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp103087)))
    (define object-port::t
      (let ((__tmp103088 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp103088)))
    (define character-port::t
      (let ((__tmp103089 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp103089)))
    (define byte-port::t
      (let ((__tmp103090 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp103090)))
    (define device-port::t
      (let ((__tmp103091 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp103091)))
    (define vector-port::t
      (let ((__tmp103092 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp103092)))
    (define string-port::t
      (let ((__tmp103093 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp103093)))
    (define u8vector-port::t
      (let ((__tmp103094 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp103094)))
    (define raw-device-port::t
      (let ((__tmp103095 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp103095)))
    (define tcp-server-port::t
      (let ((__tmp103096 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp103096)))
    (define udp-port::t
      (let ((__tmp103097 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp103097)))
    (define directory-port::t
      (let ((__tmp103098 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp103098)))
    (define event-queue-port::t
      (let ((__tmp103099 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp103099)))
    (define table::t
      (let ((__tmp103100 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp103100)))
    (define readenv::t
      (let ((__tmp103101 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp103101)))
    (define writeenv::t
      (let ((__tmp103102 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp103102)))
    (define readtable::t
      (let ((__tmp103103 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp103103)))
    (define processor::t
      (let ((__tmp103104 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp103104)))
    (define vm::t
      (let ((__tmp103105 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp103105)))
    (define file-info::t
      (let ((__tmp103106 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp103106)))
    (define socket-info::t
      (let ((__tmp103107 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp103107)))
    (define address-info::t
      (let ((__tmp103108 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp103108)))
    (define atom?
      (lambda (_%obj103049%_)
        (if (let () (declare (not safe)) (immediate? _%obj103049%_))
            (if (char? _%obj103049%_) '#f (not (fixnum? _%obj103049%_)))
            '#f)))
    (define special?
      (lambda (_%obj103047%_)
        (if (let ((__tmp103109
                   (let () (declare (not safe)) (##type _%obj103047%_))))
              (declare (not safe))
              (##fx= __tmp103109 '2))
            (if (char? _%obj103047%_)
                '#f
                (if (null? _%obj103047%_)
                    '#f
                    (if (boolean? _%obj103047%_)
                        '#f
                        (if (eq? _%obj103047%_ '#!void)
                            '#f
                            (not (eof-object? _%obj103047%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj103039%_)
        (let ((_%$e103041%_ (vector? _%obj103039%_)))
          (if _%$e103041%_
              _%$e103041%_
              (let ((_%$e103044%_ (string? _%obj103039%_)))
                (if _%$e103044%_ _%$e103044%_ (hvector? _%obj103039%_)))))))
    (define hvector?
      (lambda (_%obj103010%_)
        (let ((_%$e103012%_ (u8vector? _%obj103010%_)))
          (if _%$e103012%_
              _%$e103012%_
              (let ((_%$e103015%_ (s8vector? _%obj103010%_)))
                (if _%$e103015%_
                    _%$e103015%_
                    (let ((_%$e103018%_ (u16vector? _%obj103010%_)))
                      (if _%$e103018%_
                          _%$e103018%_
                          (let ((_%$e103021%_ (s16vector? _%obj103010%_)))
                            (if _%$e103021%_
                                _%$e103021%_
                                (let ((_%$e103024%_
                                       (u32vector? _%obj103010%_)))
                                  (if _%$e103024%_
                                      _%$e103024%_
                                      (let ((_%$e103027%_
                                             (s32vector? _%obj103010%_)))
                                        (if _%$e103027%_
                                            _%$e103027%_
                                            (let ((_%$e103030%_
                                                   (u64vector? _%obj103010%_)))
                                              (if _%$e103030%_
                                                  _%$e103030%_
                                                  (let ((_%$e103033%_
                                                         (s64vector?
                                                          _%obj103010%_)))
                                                    (if _%$e103033%_
                                                        _%$e103033%_
                                                        (let ((_%$e103036%_
                                                               (f32vector?
                                                                _%obj103010%_)))
                                                          (if _%$e103036%_
                                                              _%$e103036%_
                                                              (f64vector?
                                                               _%obj103010%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj103008%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj103008%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj103008%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj103006%_)
        (let ((__tmp103110
               (let ((__tmp103111 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp103111))))
          (declare (not safe))
          (##structure-instance-of? _%obj103006%_ __tmp103110))))
    (define character-port?
      (lambda (_%obj103004%_)
        (let ((__tmp103112
               (let ((__tmp103113 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp103113))))
          (declare (not safe))
          (##structure-instance-of? _%obj103004%_ __tmp103112))))
    (define device-port?
      (lambda (_%obj103002%_)
        (let ((__tmp103114
               (let ((__tmp103115 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp103115))))
          (declare (not safe))
          (##structure-instance-of? _%obj103002%_ __tmp103114))))
    (define vector-port?
      (lambda (_%obj103000%_)
        (let ((__tmp103116
               (let ((__tmp103117 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp103117))))
          (declare (not safe))
          (##structure-instance-of? _%obj103000%_ __tmp103116))))
    (define string-port?
      (lambda (_%obj102998%_)
        (let ((__tmp103118
               (let ((__tmp103119 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp103119))))
          (declare (not safe))
          (##structure-instance-of? _%obj102998%_ __tmp103118))))
    (define u8vector-port?
      (lambda (_%obj102996%_)
        (let ((__tmp103120
               (let ((__tmp103121 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp103121))))
          (declare (not safe))
          (##structure-instance-of? _%obj102996%_ __tmp103120))))
    (define raw-device-port?
      (lambda (_%obj102994%_)
        (let ((__tmp103122
               (let ((__tmp103123 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp103123))))
          (declare (not safe))
          (##structure-instance-of? _%obj102994%_ __tmp103122))))
    (define tcp-server-port?
      (lambda (_%obj102992%_)
        (let ((__tmp103124
               (let ((__tmp103125 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp103125))))
          (declare (not safe))
          (##structure-instance-of? _%obj102992%_ __tmp103124))))
    (define udp-port?
      (lambda (_%obj102990%_)
        (let ((__tmp103126
               (let ((__tmp103127 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp103127))))
          (declare (not safe))
          (##structure-instance-of? _%obj102990%_ __tmp103126))))
    (define directory-port?
      (lambda (_%obj102988%_)
        (let ((__tmp103128
               (let ((__tmp103129 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp103129))))
          (declare (not safe))
          (##structure-instance-of? _%obj102988%_ __tmp103128))))
    (define event-queue-port?
      (lambda (_%obj102986%_)
        (let ((__tmp103130
               (let ((__tmp103131 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp103131))))
          (declare (not safe))
          (##structure-instance-of? _%obj102986%_ __tmp103130))))
    (define readenv?
      (lambda (_%obj102984%_)
        (let ((__tmp103132
               (let ((__tmp103133 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp103133))))
          (declare (not safe))
          (##structure-instance-of? _%obj102984%_ __tmp103132))))
    (define writeenv?
      (lambda (_%obj102982%_)
        (let ((__tmp103134
               (let ((__tmp103135 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp103135))))
          (declare (not safe))
          (##structure-instance-of? _%obj102982%_ __tmp103134))))
    (define vm?
      (lambda (_%obj102980%_)
        (let ((__tmp103136
               (let ((__tmp103137 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp103137))))
          (declare (not safe))
          (##structure-instance-of? _%obj102980%_ __tmp103136))))))
