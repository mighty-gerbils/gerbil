(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1733868034)
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
      (let ((__tmp102061 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp102061)))
    (define boolean::t
      (let ((__tmp102062 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp102062)))
    (define atom::t
      (let ((__tmp102063 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp102063)))
    (define void::t
      (let ((__tmp102064 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp102064)))
    (define eof::t
      (let ((__tmp102065 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp102065)))
    (define true::t
      (let ((__tmp102066 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp102066)))
    (define false::t
      (let ((__tmp102067 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp102067)))
    (define special::t
      (let ((__tmp102068 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp102068)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp102069 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp102069)))
    (define integer::t
      (let ((__tmp102070 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp102070)))
    (define fixnum::t
      (let ((__tmp102071 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp102071)))
    (define bignum::t
      (let ((__tmp102072 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp102072)))
    (define ratnum::t
      (let ((__tmp102073 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp102073)))
    (define flonum::t
      (let ((__tmp102074 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp102074)))
    (define cpxnum::t
      (let ((__tmp102075 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp102075)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp102076 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp102076)))
    (define keyword::t
      (let ((__tmp102077 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp102077)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp102078 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp102078)))
    (define null::t
      (let ((__tmp102079 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp102079)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp102080 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp102080)))
    (define string::t
      (let ((__tmp102081 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp102081)))
    (define hvector::t
      (let ((__tmp102082 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp102082)))
    (define u8vector::t
      (let ((__tmp102083 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp102083)))
    (define s8vector::t
      (let ((__tmp102084 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp102084)))
    (define u16vector::t
      (let ((__tmp102085 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp102085)))
    (define s16vector::t
      (let ((__tmp102086 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp102086)))
    (define u32vector::t
      (let ((__tmp102087 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp102087)))
    (define s32vector::t
      (let ((__tmp102088 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp102088)))
    (define u64vector::t
      (let ((__tmp102089 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp102089)))
    (define s64vector::t
      (let ((__tmp102090 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp102090)))
    (define f32vector::t
      (let ((__tmp102091 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp102091)))
    (define f64vector::t
      (let ((__tmp102092 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp102092)))
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
      (let ((__tmp102093 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp102093)))
    (define thread::t
      (let ((__tmp102094 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp102094)))
    (define thread-group::t
      (let ((__tmp102095 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp102095)))
    (define mutex::t
      (let ((__tmp102096 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp102096)))
    (define condvar::t
      (let ((__tmp102097 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp102097)))
    (define port::t
      (let ((__tmp102098 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp102098)))
    (define object-port::t
      (let ((__tmp102099 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp102099)))
    (define character-port::t
      (let ((__tmp102100 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp102100)))
    (define byte-port::t
      (let ((__tmp102101 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp102101)))
    (define device-port::t
      (let ((__tmp102102 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp102102)))
    (define vector-port::t
      (let ((__tmp102103 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp102103)))
    (define string-port::t
      (let ((__tmp102104 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp102104)))
    (define u8vector-port::t
      (let ((__tmp102105 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp102105)))
    (define raw-device-port::t
      (let ((__tmp102106 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp102106)))
    (define tcp-server-port::t
      (let ((__tmp102107 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp102107)))
    (define udp-port::t
      (let ((__tmp102108 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp102108)))
    (define directory-port::t
      (let ((__tmp102109 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp102109)))
    (define event-queue-port::t
      (let ((__tmp102110 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp102110)))
    (define table::t
      (let ((__tmp102111 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp102111)))
    (define readenv::t
      (let ((__tmp102112 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp102112)))
    (define writeenv::t
      (let ((__tmp102113 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp102113)))
    (define readtable::t
      (let ((__tmp102114 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp102114)))
    (define processor::t
      (let ((__tmp102115 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp102115)))
    (define vm::t
      (let ((__tmp102116 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp102116)))
    (define file-info::t
      (let ((__tmp102117 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp102117)))
    (define socket-info::t
      (let ((__tmp102118 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp102118)))
    (define address-info::t
      (let ((__tmp102119 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp102119)))
    (define atom?
      (lambda (_%obj102060%_)
        (if (let () (declare (not safe)) (immediate? _%obj102060%_))
            (if (char? _%obj102060%_) '#f (not (fixnum? _%obj102060%_)))
            '#f)))
    (define special?
      (lambda (_%obj102058%_)
        (if (let ((__tmp102120
                   (let () (declare (not safe)) (##type _%obj102058%_))))
              (declare (not safe))
              (##fx= __tmp102120 '2))
            (if (char? _%obj102058%_)
                '#f
                (if (null? _%obj102058%_)
                    '#f
                    (if (boolean? _%obj102058%_)
                        '#f
                        (if (eq? _%obj102058%_ '#!void)
                            '#f
                            (not (eof-object? _%obj102058%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj102050%_)
        (let ((_%$e102052%_ (vector? _%obj102050%_)))
          (if _%$e102052%_
              _%$e102052%_
              (let ((_%$e102055%_ (string? _%obj102050%_)))
                (if _%$e102055%_ _%$e102055%_ (hvector? _%obj102050%_)))))))
    (define hvector?
      (lambda (_%obj102021%_)
        (let ((_%$e102023%_ (u8vector? _%obj102021%_)))
          (if _%$e102023%_
              _%$e102023%_
              (let ((_%$e102026%_ (s8vector? _%obj102021%_)))
                (if _%$e102026%_
                    _%$e102026%_
                    (let ((_%$e102029%_ (u16vector? _%obj102021%_)))
                      (if _%$e102029%_
                          _%$e102029%_
                          (let ((_%$e102032%_ (s16vector? _%obj102021%_)))
                            (if _%$e102032%_
                                _%$e102032%_
                                (let ((_%$e102035%_
                                       (u32vector? _%obj102021%_)))
                                  (if _%$e102035%_
                                      _%$e102035%_
                                      (let ((_%$e102038%_
                                             (s32vector? _%obj102021%_)))
                                        (if _%$e102038%_
                                            _%$e102038%_
                                            (let ((_%$e102041%_
                                                   (u64vector? _%obj102021%_)))
                                              (if _%$e102041%_
                                                  _%$e102041%_
                                                  (let ((_%$e102044%_
                                                         (s64vector?
                                                          _%obj102021%_)))
                                                    (if _%$e102044%_
                                                        _%$e102044%_
                                                        (let ((_%$e102047%_
                                                               (f32vector?
                                                                _%obj102021%_)))
                                                          (if _%$e102047%_
                                                              _%$e102047%_
                                                              (f64vector?
                                                               _%obj102021%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj102019%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj102019%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj102019%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj102017%_)
        (let ((__tmp102121
               (let ((__tmp102122 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp102122))))
          (declare (not safe))
          (##structure-instance-of? _%obj102017%_ __tmp102121))))
    (define character-port?
      (lambda (_%obj102015%_)
        (let ((__tmp102123
               (let ((__tmp102124 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp102124))))
          (declare (not safe))
          (##structure-instance-of? _%obj102015%_ __tmp102123))))
    (define device-port?
      (lambda (_%obj102013%_)
        (let ((__tmp102125
               (let ((__tmp102126 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp102126))))
          (declare (not safe))
          (##structure-instance-of? _%obj102013%_ __tmp102125))))
    (define vector-port?
      (lambda (_%obj102011%_)
        (let ((__tmp102127
               (let ((__tmp102128 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp102128))))
          (declare (not safe))
          (##structure-instance-of? _%obj102011%_ __tmp102127))))
    (define string-port?
      (lambda (_%obj102009%_)
        (let ((__tmp102129
               (let ((__tmp102130 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp102130))))
          (declare (not safe))
          (##structure-instance-of? _%obj102009%_ __tmp102129))))
    (define u8vector-port?
      (lambda (_%obj102007%_)
        (let ((__tmp102131
               (let ((__tmp102132 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp102132))))
          (declare (not safe))
          (##structure-instance-of? _%obj102007%_ __tmp102131))))
    (define raw-device-port?
      (lambda (_%obj102005%_)
        (let ((__tmp102133
               (let ((__tmp102134 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp102134))))
          (declare (not safe))
          (##structure-instance-of? _%obj102005%_ __tmp102133))))
    (define tcp-server-port?
      (lambda (_%obj102003%_)
        (let ((__tmp102135
               (let ((__tmp102136 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp102136))))
          (declare (not safe))
          (##structure-instance-of? _%obj102003%_ __tmp102135))))
    (define udp-port?
      (lambda (_%obj102001%_)
        (let ((__tmp102137
               (let ((__tmp102138 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp102138))))
          (declare (not safe))
          (##structure-instance-of? _%obj102001%_ __tmp102137))))
    (define directory-port?
      (lambda (_%obj101999%_)
        (let ((__tmp102139
               (let ((__tmp102140 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp102140))))
          (declare (not safe))
          (##structure-instance-of? _%obj101999%_ __tmp102139))))
    (define event-queue-port?
      (lambda (_%obj101997%_)
        (let ((__tmp102141
               (let ((__tmp102142 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp102142))))
          (declare (not safe))
          (##structure-instance-of? _%obj101997%_ __tmp102141))))
    (define readenv?
      (lambda (_%obj101995%_)
        (let ((__tmp102143
               (let ((__tmp102144 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp102144))))
          (declare (not safe))
          (##structure-instance-of? _%obj101995%_ __tmp102143))))
    (define writeenv?
      (lambda (_%obj101993%_)
        (let ((__tmp102145
               (let ((__tmp102146 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp102146))))
          (declare (not safe))
          (##structure-instance-of? _%obj101993%_ __tmp102145))))
    (define vm?
      (lambda (_%obj101991%_)
        (let ((__tmp102147
               (let ((__tmp102148 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp102148))))
          (declare (not safe))
          (##structure-instance-of? _%obj101991%_ __tmp102147))))))
