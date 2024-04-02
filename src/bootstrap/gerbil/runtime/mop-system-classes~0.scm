(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712093475)
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
      (let ((__tmp98079 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98079)))
    (define boolean::t
      (let ((__tmp98080 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98080)))
    (define atom::t
      (let ((__tmp98081 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98081)))
    (define void::t
      (let ((__tmp98082 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98082)))
    (define eof::t
      (let ((__tmp98083 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98083)))
    (define true::t
      (let ((__tmp98084 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98084)))
    (define false::t
      (let ((__tmp98085 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98085)))
    (define special::t
      (let ((__tmp98086 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98086)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98087 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98087)))
    (define integer::t
      (let ((__tmp98088 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98088)))
    (define fixnum::t
      (let ((__tmp98089 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98089)))
    (define bignum::t
      (let ((__tmp98090 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98090)))
    (define ratnum::t
      (let ((__tmp98091 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98091)))
    (define flonum::t
      (let ((__tmp98092 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98092)))
    (define cpxnum::t
      (let ((__tmp98093 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98093)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98094 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98094)))
    (define keyword::t
      (let ((__tmp98095 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98095)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98096 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98096)))
    (define null::t
      (let ((__tmp98097 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98097)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98098 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98098)))
    (define string::t
      (let ((__tmp98099 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98099)))
    (define hvector::t
      (let ((__tmp98100 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98100)))
    (define u8vector::t
      (let ((__tmp98101 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98101)))
    (define s8vector::t
      (let ((__tmp98102 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98102)))
    (define u16vector::t
      (let ((__tmp98103 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98103)))
    (define s16vector::t
      (let ((__tmp98104 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98104)))
    (define u32vector::t
      (let ((__tmp98105 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98105)))
    (define s32vector::t
      (let ((__tmp98106 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98106)))
    (define u64vector::t
      (let ((__tmp98107 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98107)))
    (define s64vector::t
      (let ((__tmp98108 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98108)))
    (define f32vector::t
      (let ((__tmp98109 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98109)))
    (define f64vector::t
      (let ((__tmp98110 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98110)))
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
      (let ((__tmp98111 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98111)))
    (define thread::t
      (let ((__tmp98112 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98112)))
    (define thread-group::t
      (let ((__tmp98113 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98113)))
    (define mutex::t
      (let ((__tmp98114 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98114)))
    (define condvar::t
      (let ((__tmp98115 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98115)))
    (define port::t
      (let ((__tmp98116 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98116)))
    (define object-port::t
      (let ((__tmp98117 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98117)))
    (define character-port::t
      (let ((__tmp98118 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98118)))
    (define byte-port::t
      (let ((__tmp98119 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98119)))
    (define device-port::t
      (let ((__tmp98120 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98120)))
    (define vector-port::t
      (let ((__tmp98121 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98121)))
    (define string-port::t
      (let ((__tmp98122 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98122)))
    (define u8vector-port::t
      (let ((__tmp98123 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98123)))
    (define raw-device-port::t
      (let ((__tmp98124 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98124)))
    (define tcp-server-port::t
      (let ((__tmp98125 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98125)))
    (define udp-port::t
      (let ((__tmp98126 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98126)))
    (define directory-port::t
      (let ((__tmp98127 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98127)))
    (define event-queue-port::t
      (let ((__tmp98128 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98128)))
    (define table::t
      (let ((__tmp98129 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98129)))
    (define readenv::t
      (let ((__tmp98130 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98130)))
    (define writeenv::t
      (let ((__tmp98131 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98131)))
    (define readtable::t
      (let ((__tmp98132 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98132)))
    (define processor::t
      (let ((__tmp98133 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98133)))
    (define vm::t
      (let ((__tmp98134 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98134)))
    (define file-info::t
      (let ((__tmp98135 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98135)))
    (define socket-info::t
      (let ((__tmp98136 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98136)))
    (define address-info::t
      (let ((__tmp98137 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98137)))
    (define atom?
      (lambda (_%obj98078%_)
        (if (let () (declare (not safe)) (immediate? _%obj98078%_))
            (if (let ((__tmp98138
                       (let () (declare (not safe)) (char? _%obj98078%_))))
                  (declare (not safe))
                  (not __tmp98138))
                (let ((__tmp98139
                       (let () (declare (not safe)) (fixnum? _%obj98078%_))))
                  (declare (not safe))
                  (not __tmp98139))
                '#f)
            '#f)))
    (define special?
      (lambda (_%obj98076%_)
        (if (let ((__tmp98140
                   (let () (declare (not safe)) (##type _%obj98076%_))))
              (declare (not safe))
              (##fx= __tmp98140 '2))
            (if (let ((__tmp98141
                       (let () (declare (not safe)) (char? _%obj98076%_))))
                  (declare (not safe))
                  (not __tmp98141))
                (if (let ((__tmp98142
                           (let () (declare (not safe)) (null? _%obj98076%_))))
                      (declare (not safe))
                      (not __tmp98142))
                    (if (let ((__tmp98143
                               (let ()
                                 (declare (not safe))
                                 (boolean? _%obj98076%_))))
                          (declare (not safe))
                          (not __tmp98143))
                        (if (let ((__tmp98144
                                   (let ()
                                     (declare (not safe))
                                     (eq? _%obj98076%_ '#!void))))
                              (declare (not safe))
                              (not __tmp98144))
                            (let ((__tmp98145
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _%obj98076%_))))
                              (declare (not safe))
                              (not __tmp98145))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98068%_)
        (let ((_%$e98070%_
               (let () (declare (not safe)) (vector? _%obj98068%_))))
          (if _%$e98070%_
              _%$e98070%_
              (let ((_%$e98073%_
                     (let () (declare (not safe)) (string? _%obj98068%_))))
                (if _%$e98073%_
                    _%$e98073%_
                    (let () (declare (not safe)) (hvector? _%obj98068%_))))))))
    (define hvector?
      (lambda (_%obj98039%_)
        (let ((_%$e98041%_
               (let () (declare (not safe)) (u8vector? _%obj98039%_))))
          (if _%$e98041%_
              _%$e98041%_
              (let ((_%$e98044%_
                     (let () (declare (not safe)) (s8vector? _%obj98039%_))))
                (if _%$e98044%_
                    _%$e98044%_
                    (let ((_%$e98047%_
                           (let ()
                             (declare (not safe))
                             (u16vector? _%obj98039%_))))
                      (if _%$e98047%_
                          _%$e98047%_
                          (let ((_%$e98050%_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _%obj98039%_))))
                            (if _%$e98050%_
                                _%$e98050%_
                                (let ((_%$e98053%_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _%obj98039%_))))
                                  (if _%$e98053%_
                                      _%$e98053%_
                                      (let ((_%$e98056%_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _%obj98039%_))))
                                        (if _%$e98056%_
                                            _%$e98056%_
                                            (let ((_%$e98059%_
                                                   (u64vector? _%obj98039%_)))
                                              (if _%$e98059%_
                                                  _%$e98059%_
                                                  (let ((_%$e98062%_
                                                         (s64vector?
                                                          _%obj98039%_)))
                                                    (if _%$e98062%_
                                                        _%$e98062%_
                                                        (let ((_%$e98065%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _%obj98039%_))))
                  (if _%$e98065%_
                      _%$e98065%_
                      (let ()
                        (declare (not safe))
                        (f64vector? _%obj98039%_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_%obj98037%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98037%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98037%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98035%_)
        (let ((__tmp98146
               (let ((__tmp98147 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98147))))
          (declare (not safe))
          (##structure-instance-of? _%obj98035%_ __tmp98146))))
    (define character-port?
      (lambda (_%obj98033%_)
        (let ((__tmp98148
               (let ((__tmp98149 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98149))))
          (declare (not safe))
          (##structure-instance-of? _%obj98033%_ __tmp98148))))
    (define device-port?
      (lambda (_%obj98031%_)
        (let ((__tmp98150
               (let ((__tmp98151 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98151))))
          (declare (not safe))
          (##structure-instance-of? _%obj98031%_ __tmp98150))))
    (define vector-port?
      (lambda (_%obj98029%_)
        (let ((__tmp98152
               (let ((__tmp98153 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98153))))
          (declare (not safe))
          (##structure-instance-of? _%obj98029%_ __tmp98152))))
    (define string-port?
      (lambda (_%obj98027%_)
        (let ((__tmp98154
               (let ((__tmp98155 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98155))))
          (declare (not safe))
          (##structure-instance-of? _%obj98027%_ __tmp98154))))
    (define u8vector-port?
      (lambda (_%obj98025%_)
        (let ((__tmp98156
               (let ((__tmp98157 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98157))))
          (declare (not safe))
          (##structure-instance-of? _%obj98025%_ __tmp98156))))
    (define raw-device-port?
      (lambda (_%obj98023%_)
        (let ((__tmp98158
               (let ((__tmp98159 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98159))))
          (declare (not safe))
          (##structure-instance-of? _%obj98023%_ __tmp98158))))
    (define tcp-server-port?
      (lambda (_%obj98021%_)
        (let ((__tmp98160
               (let ((__tmp98161 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98161))))
          (declare (not safe))
          (##structure-instance-of? _%obj98021%_ __tmp98160))))
    (define udp-port?
      (lambda (_%obj98019%_)
        (let ((__tmp98162
               (let ((__tmp98163 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98163))))
          (declare (not safe))
          (##structure-instance-of? _%obj98019%_ __tmp98162))))
    (define directory-port?
      (lambda (_%obj98017%_)
        (let ((__tmp98164
               (let ((__tmp98165 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98165))))
          (declare (not safe))
          (##structure-instance-of? _%obj98017%_ __tmp98164))))
    (define event-queue-port?
      (lambda (_%obj98015%_)
        (let ((__tmp98166
               (let ((__tmp98167 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98167))))
          (declare (not safe))
          (##structure-instance-of? _%obj98015%_ __tmp98166))))
    (define readenv?
      (lambda (_%obj98013%_)
        (let ((__tmp98168
               (let ((__tmp98169 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98169))))
          (declare (not safe))
          (##structure-instance-of? _%obj98013%_ __tmp98168))))
    (define writeenv?
      (lambda (_%obj98011%_)
        (let ((__tmp98170
               (let ((__tmp98171 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98171))))
          (declare (not safe))
          (##structure-instance-of? _%obj98011%_ __tmp98170))))
    (define vm?
      (lambda (_%obj98009%_)
        (let ((__tmp98172
               (let ((__tmp98173 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98173))))
          (declare (not safe))
          (##structure-instance-of? _%obj98009%_ __tmp98172))))))
