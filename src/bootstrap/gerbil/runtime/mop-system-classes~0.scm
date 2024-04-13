(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1713000276)
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
      (let ((__tmp101073 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp101073)))
    (define boolean::t
      (let ((__tmp101074 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp101074)))
    (define atom::t
      (let ((__tmp101075 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp101075)))
    (define void::t
      (let ((__tmp101076 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp101076)))
    (define eof::t
      (let ((__tmp101077 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp101077)))
    (define true::t
      (let ((__tmp101078 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp101078)))
    (define false::t
      (let ((__tmp101079 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp101079)))
    (define special::t
      (let ((__tmp101080 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp101080)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp101081 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp101081)))
    (define integer::t
      (let ((__tmp101082 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp101082)))
    (define fixnum::t
      (let ((__tmp101083 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp101083)))
    (define bignum::t
      (let ((__tmp101084 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp101084)))
    (define ratnum::t
      (let ((__tmp101085 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp101085)))
    (define flonum::t
      (let ((__tmp101086 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp101086)))
    (define cpxnum::t
      (let ((__tmp101087 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp101087)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp101088 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp101088)))
    (define keyword::t
      (let ((__tmp101089 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp101089)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp101090 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp101090)))
    (define null::t
      (let ((__tmp101091 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp101091)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp101092 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp101092)))
    (define string::t
      (let ((__tmp101093 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp101093)))
    (define hvector::t
      (let ((__tmp101094 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp101094)))
    (define u8vector::t
      (let ((__tmp101095 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp101095)))
    (define s8vector::t
      (let ((__tmp101096 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp101096)))
    (define u16vector::t
      (let ((__tmp101097 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp101097)))
    (define s16vector::t
      (let ((__tmp101098 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp101098)))
    (define u32vector::t
      (let ((__tmp101099 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp101099)))
    (define s32vector::t
      (let ((__tmp101100 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp101100)))
    (define u64vector::t
      (let ((__tmp101101 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp101101)))
    (define s64vector::t
      (let ((__tmp101102 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp101102)))
    (define f32vector::t
      (let ((__tmp101103 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp101103)))
    (define f64vector::t
      (let ((__tmp101104 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp101104)))
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
      (let ((__tmp101105 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp101105)))
    (define thread::t
      (let ((__tmp101106 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp101106)))
    (define thread-group::t
      (let ((__tmp101107 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp101107)))
    (define mutex::t
      (let ((__tmp101108 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp101108)))
    (define condvar::t
      (let ((__tmp101109 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp101109)))
    (define port::t
      (let ((__tmp101110 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp101110)))
    (define object-port::t
      (let ((__tmp101111 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp101111)))
    (define character-port::t
      (let ((__tmp101112 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp101112)))
    (define byte-port::t
      (let ((__tmp101113 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp101113)))
    (define device-port::t
      (let ((__tmp101114 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp101114)))
    (define vector-port::t
      (let ((__tmp101115 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp101115)))
    (define string-port::t
      (let ((__tmp101116 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp101116)))
    (define u8vector-port::t
      (let ((__tmp101117 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp101117)))
    (define raw-device-port::t
      (let ((__tmp101118 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp101118)))
    (define tcp-server-port::t
      (let ((__tmp101119 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp101119)))
    (define udp-port::t
      (let ((__tmp101120 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp101120)))
    (define directory-port::t
      (let ((__tmp101121 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp101121)))
    (define event-queue-port::t
      (let ((__tmp101122 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp101122)))
    (define table::t
      (let ((__tmp101123 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp101123)))
    (define readenv::t
      (let ((__tmp101124 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp101124)))
    (define writeenv::t
      (let ((__tmp101125 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp101125)))
    (define readtable::t
      (let ((__tmp101126 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp101126)))
    (define processor::t
      (let ((__tmp101127 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp101127)))
    (define vm::t
      (let ((__tmp101128 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp101128)))
    (define file-info::t
      (let ((__tmp101129 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp101129)))
    (define socket-info::t
      (let ((__tmp101130 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp101130)))
    (define address-info::t
      (let ((__tmp101131 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp101131)))
    (define atom?
      (lambda (_%obj101072%_)
        (if (let () (declare (not safe)) (immediate? _%obj101072%_))
            (if (char? _%obj101072%_) '#f (not (fixnum? _%obj101072%_)))
            '#f)))
    (define special?
      (lambda (_%obj101070%_)
        (if (let ((__tmp101132
                   (let () (declare (not safe)) (##type _%obj101070%_))))
              (declare (not safe))
              (##fx= __tmp101132 '2))
            (if (char? _%obj101070%_)
                '#f
                (if (null? _%obj101070%_)
                    '#f
                    (if (boolean? _%obj101070%_)
                        '#f
                        (if (eq? _%obj101070%_ '#!void)
                            '#f
                            (not (eof-object? _%obj101070%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj101062%_)
        (let ((_%$e101064%_ (vector? _%obj101062%_)))
          (if _%$e101064%_
              _%$e101064%_
              (let ((_%$e101067%_ (string? _%obj101062%_)))
                (if _%$e101067%_ _%$e101067%_ (hvector? _%obj101062%_)))))))
    (define hvector?
      (lambda (_%obj101033%_)
        (let ((_%$e101035%_ (u8vector? _%obj101033%_)))
          (if _%$e101035%_
              _%$e101035%_
              (let ((_%$e101038%_ (s8vector? _%obj101033%_)))
                (if _%$e101038%_
                    _%$e101038%_
                    (let ((_%$e101041%_ (u16vector? _%obj101033%_)))
                      (if _%$e101041%_
                          _%$e101041%_
                          (let ((_%$e101044%_ (s16vector? _%obj101033%_)))
                            (if _%$e101044%_
                                _%$e101044%_
                                (let ((_%$e101047%_
                                       (u32vector? _%obj101033%_)))
                                  (if _%$e101047%_
                                      _%$e101047%_
                                      (let ((_%$e101050%_
                                             (s32vector? _%obj101033%_)))
                                        (if _%$e101050%_
                                            _%$e101050%_
                                            (let ((_%$e101053%_
                                                   (u64vector? _%obj101033%_)))
                                              (if _%$e101053%_
                                                  _%$e101053%_
                                                  (let ((_%$e101056%_
                                                         (s64vector?
                                                          _%obj101033%_)))
                                                    (if _%$e101056%_
                                                        _%$e101056%_
                                                        (let ((_%$e101059%_
                                                               (f32vector?
                                                                _%obj101033%_)))
                                                          (if _%$e101059%_
                                                              _%$e101059%_
                                                              (f64vector?
                                                               _%obj101033%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj101031%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj101031%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj101031%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj101029%_)
        (let ((__tmp101133
               (let ((__tmp101134 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp101134))))
          (declare (not safe))
          (##structure-instance-of? _%obj101029%_ __tmp101133))))
    (define character-port?
      (lambda (_%obj101027%_)
        (let ((__tmp101135
               (let ((__tmp101136 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp101136))))
          (declare (not safe))
          (##structure-instance-of? _%obj101027%_ __tmp101135))))
    (define device-port?
      (lambda (_%obj101025%_)
        (let ((__tmp101137
               (let ((__tmp101138 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp101138))))
          (declare (not safe))
          (##structure-instance-of? _%obj101025%_ __tmp101137))))
    (define vector-port?
      (lambda (_%obj101023%_)
        (let ((__tmp101139
               (let ((__tmp101140 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp101140))))
          (declare (not safe))
          (##structure-instance-of? _%obj101023%_ __tmp101139))))
    (define string-port?
      (lambda (_%obj101021%_)
        (let ((__tmp101141
               (let ((__tmp101142 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp101142))))
          (declare (not safe))
          (##structure-instance-of? _%obj101021%_ __tmp101141))))
    (define u8vector-port?
      (lambda (_%obj101019%_)
        (let ((__tmp101143
               (let ((__tmp101144 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp101144))))
          (declare (not safe))
          (##structure-instance-of? _%obj101019%_ __tmp101143))))
    (define raw-device-port?
      (lambda (_%obj101017%_)
        (let ((__tmp101145
               (let ((__tmp101146 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp101146))))
          (declare (not safe))
          (##structure-instance-of? _%obj101017%_ __tmp101145))))
    (define tcp-server-port?
      (lambda (_%obj101015%_)
        (let ((__tmp101147
               (let ((__tmp101148 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp101148))))
          (declare (not safe))
          (##structure-instance-of? _%obj101015%_ __tmp101147))))
    (define udp-port?
      (lambda (_%obj101013%_)
        (let ((__tmp101149
               (let ((__tmp101150 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp101150))))
          (declare (not safe))
          (##structure-instance-of? _%obj101013%_ __tmp101149))))
    (define directory-port?
      (lambda (_%obj101011%_)
        (let ((__tmp101151
               (let ((__tmp101152 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp101152))))
          (declare (not safe))
          (##structure-instance-of? _%obj101011%_ __tmp101151))))
    (define event-queue-port?
      (lambda (_%obj101009%_)
        (let ((__tmp101153
               (let ((__tmp101154 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp101154))))
          (declare (not safe))
          (##structure-instance-of? _%obj101009%_ __tmp101153))))
    (define readenv?
      (lambda (_%obj101007%_)
        (let ((__tmp101155
               (let ((__tmp101156 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp101156))))
          (declare (not safe))
          (##structure-instance-of? _%obj101007%_ __tmp101155))))
    (define writeenv?
      (lambda (_%obj101005%_)
        (let ((__tmp101157
               (let ((__tmp101158 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp101158))))
          (declare (not safe))
          (##structure-instance-of? _%obj101005%_ __tmp101157))))
    (define vm?
      (lambda (_%obj101003%_)
        (let ((__tmp101159
               (let ((__tmp101160 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp101160))))
          (declare (not safe))
          (##structure-instance-of? _%obj101003%_ __tmp101159))))))
