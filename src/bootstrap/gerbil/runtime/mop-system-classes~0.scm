(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712121897)
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
      (let ((__tmp98113 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98113)))
    (define boolean::t
      (let ((__tmp98114 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98114)))
    (define atom::t
      (let ((__tmp98115 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98115)))
    (define void::t
      (let ((__tmp98116 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98116)))
    (define eof::t
      (let ((__tmp98117 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98117)))
    (define true::t
      (let ((__tmp98118 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98118)))
    (define false::t
      (let ((__tmp98119 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98119)))
    (define special::t
      (let ((__tmp98120 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98120)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98121 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98121)))
    (define integer::t
      (let ((__tmp98122 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98122)))
    (define fixnum::t
      (let ((__tmp98123 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98123)))
    (define bignum::t
      (let ((__tmp98124 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98124)))
    (define ratnum::t
      (let ((__tmp98125 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98125)))
    (define flonum::t
      (let ((__tmp98126 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98126)))
    (define cpxnum::t
      (let ((__tmp98127 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98127)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98128 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98128)))
    (define keyword::t
      (let ((__tmp98129 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98129)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98130 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98130)))
    (define null::t
      (let ((__tmp98131 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98131)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98132 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98132)))
    (define string::t
      (let ((__tmp98133 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98133)))
    (define hvector::t
      (let ((__tmp98134 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98134)))
    (define u8vector::t
      (let ((__tmp98135 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98135)))
    (define s8vector::t
      (let ((__tmp98136 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98136)))
    (define u16vector::t
      (let ((__tmp98137 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98137)))
    (define s16vector::t
      (let ((__tmp98138 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98138)))
    (define u32vector::t
      (let ((__tmp98139 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98139)))
    (define s32vector::t
      (let ((__tmp98140 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98140)))
    (define u64vector::t
      (let ((__tmp98141 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98141)))
    (define s64vector::t
      (let ((__tmp98142 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98142)))
    (define f32vector::t
      (let ((__tmp98143 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98143)))
    (define f64vector::t
      (let ((__tmp98144 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98144)))
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
      (let ((__tmp98145 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98145)))
    (define thread::t
      (let ((__tmp98146 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98146)))
    (define thread-group::t
      (let ((__tmp98147 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98147)))
    (define mutex::t
      (let ((__tmp98148 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98148)))
    (define condvar::t
      (let ((__tmp98149 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98149)))
    (define port::t
      (let ((__tmp98150 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98150)))
    (define object-port::t
      (let ((__tmp98151 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98151)))
    (define character-port::t
      (let ((__tmp98152 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98152)))
    (define byte-port::t
      (let ((__tmp98153 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98153)))
    (define device-port::t
      (let ((__tmp98154 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98154)))
    (define vector-port::t
      (let ((__tmp98155 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98155)))
    (define string-port::t
      (let ((__tmp98156 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98156)))
    (define u8vector-port::t
      (let ((__tmp98157 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98157)))
    (define raw-device-port::t
      (let ((__tmp98158 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98158)))
    (define tcp-server-port::t
      (let ((__tmp98159 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98159)))
    (define udp-port::t
      (let ((__tmp98160 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98160)))
    (define directory-port::t
      (let ((__tmp98161 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98161)))
    (define event-queue-port::t
      (let ((__tmp98162 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98162)))
    (define table::t
      (let ((__tmp98163 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98163)))
    (define readenv::t
      (let ((__tmp98164 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98164)))
    (define writeenv::t
      (let ((__tmp98165 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98165)))
    (define readtable::t
      (let ((__tmp98166 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98166)))
    (define processor::t
      (let ((__tmp98167 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98167)))
    (define vm::t
      (let ((__tmp98168 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98168)))
    (define file-info::t
      (let ((__tmp98169 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98169)))
    (define socket-info::t
      (let ((__tmp98170 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98170)))
    (define address-info::t
      (let ((__tmp98171 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98171)))
    (define atom?
      (lambda (_%obj98112%_)
        (if (let () (declare (not safe)) (immediate? _%obj98112%_))
            (if (let ((__tmp98172
                       (let () (declare (not safe)) (char? _%obj98112%_))))
                  (declare (not safe))
                  (not __tmp98172))
                (let ((__tmp98173
                       (let () (declare (not safe)) (fixnum? _%obj98112%_))))
                  (declare (not safe))
                  (not __tmp98173))
                '#f)
            '#f)))
    (define special?
      (lambda (_%obj98110%_)
        (if (let ((__tmp98174
                   (let () (declare (not safe)) (##type _%obj98110%_))))
              (declare (not safe))
              (##fx= __tmp98174 '2))
            (if (let ((__tmp98175
                       (let () (declare (not safe)) (char? _%obj98110%_))))
                  (declare (not safe))
                  (not __tmp98175))
                (if (let ((__tmp98176
                           (let () (declare (not safe)) (null? _%obj98110%_))))
                      (declare (not safe))
                      (not __tmp98176))
                    (if (let ((__tmp98177
                               (let ()
                                 (declare (not safe))
                                 (boolean? _%obj98110%_))))
                          (declare (not safe))
                          (not __tmp98177))
                        (if (let ((__tmp98178
                                   (let ()
                                     (declare (not safe))
                                     (eq? _%obj98110%_ '#!void))))
                              (declare (not safe))
                              (not __tmp98178))
                            (let ((__tmp98179
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _%obj98110%_))))
                              (declare (not safe))
                              (not __tmp98179))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98102%_)
        (let ((_%$e98104%_
               (let () (declare (not safe)) (vector? _%obj98102%_))))
          (if _%$e98104%_
              _%$e98104%_
              (let ((_%$e98107%_
                     (let () (declare (not safe)) (string? _%obj98102%_))))
                (if _%$e98107%_
                    _%$e98107%_
                    (let () (declare (not safe)) (hvector? _%obj98102%_))))))))
    (define hvector?
      (lambda (_%obj98073%_)
        (let ((_%$e98075%_
               (let () (declare (not safe)) (u8vector? _%obj98073%_))))
          (if _%$e98075%_
              _%$e98075%_
              (let ((_%$e98078%_
                     (let () (declare (not safe)) (s8vector? _%obj98073%_))))
                (if _%$e98078%_
                    _%$e98078%_
                    (let ((_%$e98081%_
                           (let ()
                             (declare (not safe))
                             (u16vector? _%obj98073%_))))
                      (if _%$e98081%_
                          _%$e98081%_
                          (let ((_%$e98084%_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _%obj98073%_))))
                            (if _%$e98084%_
                                _%$e98084%_
                                (let ((_%$e98087%_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _%obj98073%_))))
                                  (if _%$e98087%_
                                      _%$e98087%_
                                      (let ((_%$e98090%_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _%obj98073%_))))
                                        (if _%$e98090%_
                                            _%$e98090%_
                                            (let ((_%$e98093%_
                                                   (u64vector? _%obj98073%_)))
                                              (if _%$e98093%_
                                                  _%$e98093%_
                                                  (let ((_%$e98096%_
                                                         (s64vector?
                                                          _%obj98073%_)))
                                                    (if _%$e98096%_
                                                        _%$e98096%_
                                                        (let ((_%$e98099%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _%obj98073%_))))
                  (if _%$e98099%_
                      _%$e98099%_
                      (let ()
                        (declare (not safe))
                        (f64vector? _%obj98073%_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_%obj98071%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98071%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98071%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98069%_)
        (let ((__tmp98180
               (let ((__tmp98181 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98181))))
          (declare (not safe))
          (##structure-instance-of? _%obj98069%_ __tmp98180))))
    (define character-port?
      (lambda (_%obj98067%_)
        (let ((__tmp98182
               (let ((__tmp98183 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98183))))
          (declare (not safe))
          (##structure-instance-of? _%obj98067%_ __tmp98182))))
    (define device-port?
      (lambda (_%obj98065%_)
        (let ((__tmp98184
               (let ((__tmp98185 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98185))))
          (declare (not safe))
          (##structure-instance-of? _%obj98065%_ __tmp98184))))
    (define vector-port?
      (lambda (_%obj98063%_)
        (let ((__tmp98186
               (let ((__tmp98187 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98187))))
          (declare (not safe))
          (##structure-instance-of? _%obj98063%_ __tmp98186))))
    (define string-port?
      (lambda (_%obj98061%_)
        (let ((__tmp98188
               (let ((__tmp98189 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98189))))
          (declare (not safe))
          (##structure-instance-of? _%obj98061%_ __tmp98188))))
    (define u8vector-port?
      (lambda (_%obj98059%_)
        (let ((__tmp98190
               (let ((__tmp98191 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98191))))
          (declare (not safe))
          (##structure-instance-of? _%obj98059%_ __tmp98190))))
    (define raw-device-port?
      (lambda (_%obj98057%_)
        (let ((__tmp98192
               (let ((__tmp98193 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98193))))
          (declare (not safe))
          (##structure-instance-of? _%obj98057%_ __tmp98192))))
    (define tcp-server-port?
      (lambda (_%obj98055%_)
        (let ((__tmp98194
               (let ((__tmp98195 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98195))))
          (declare (not safe))
          (##structure-instance-of? _%obj98055%_ __tmp98194))))
    (define udp-port?
      (lambda (_%obj98053%_)
        (let ((__tmp98196
               (let ((__tmp98197 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98197))))
          (declare (not safe))
          (##structure-instance-of? _%obj98053%_ __tmp98196))))
    (define directory-port?
      (lambda (_%obj98051%_)
        (let ((__tmp98198
               (let ((__tmp98199 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98199))))
          (declare (not safe))
          (##structure-instance-of? _%obj98051%_ __tmp98198))))
    (define event-queue-port?
      (lambda (_%obj98049%_)
        (let ((__tmp98200
               (let ((__tmp98201 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98201))))
          (declare (not safe))
          (##structure-instance-of? _%obj98049%_ __tmp98200))))
    (define readenv?
      (lambda (_%obj98047%_)
        (let ((__tmp98202
               (let ((__tmp98203 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98203))))
          (declare (not safe))
          (##structure-instance-of? _%obj98047%_ __tmp98202))))
    (define writeenv?
      (lambda (_%obj98045%_)
        (let ((__tmp98204
               (let ((__tmp98205 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98205))))
          (declare (not safe))
          (##structure-instance-of? _%obj98045%_ __tmp98204))))
    (define vm?
      (lambda (_%obj98043%_)
        (let ((__tmp98206
               (let ((__tmp98207 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98207))))
          (declare (not safe))
          (##structure-instance-of? _%obj98043%_ __tmp98206))))))
