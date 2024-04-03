(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712155160)
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
      (let ((__tmp98130 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98130)))
    (define boolean::t
      (let ((__tmp98131 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98131)))
    (define atom::t
      (let ((__tmp98132 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98132)))
    (define void::t
      (let ((__tmp98133 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98133)))
    (define eof::t
      (let ((__tmp98134 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98134)))
    (define true::t
      (let ((__tmp98135 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98135)))
    (define false::t
      (let ((__tmp98136 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98136)))
    (define special::t
      (let ((__tmp98137 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98137)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98138 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98138)))
    (define integer::t
      (let ((__tmp98139 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98139)))
    (define fixnum::t
      (let ((__tmp98140 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98140)))
    (define bignum::t
      (let ((__tmp98141 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98141)))
    (define ratnum::t
      (let ((__tmp98142 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98142)))
    (define flonum::t
      (let ((__tmp98143 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98143)))
    (define cpxnum::t
      (let ((__tmp98144 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98144)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98145 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98145)))
    (define keyword::t
      (let ((__tmp98146 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98146)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98147 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98147)))
    (define null::t
      (let ((__tmp98148 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98148)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98149 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98149)))
    (define string::t
      (let ((__tmp98150 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98150)))
    (define hvector::t
      (let ((__tmp98151 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98151)))
    (define u8vector::t
      (let ((__tmp98152 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98152)))
    (define s8vector::t
      (let ((__tmp98153 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98153)))
    (define u16vector::t
      (let ((__tmp98154 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98154)))
    (define s16vector::t
      (let ((__tmp98155 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98155)))
    (define u32vector::t
      (let ((__tmp98156 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98156)))
    (define s32vector::t
      (let ((__tmp98157 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98157)))
    (define u64vector::t
      (let ((__tmp98158 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98158)))
    (define s64vector::t
      (let ((__tmp98159 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98159)))
    (define f32vector::t
      (let ((__tmp98160 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98160)))
    (define f64vector::t
      (let ((__tmp98161 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98161)))
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
      (let ((__tmp98162 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98162)))
    (define thread::t
      (let ((__tmp98163 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98163)))
    (define thread-group::t
      (let ((__tmp98164 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98164)))
    (define mutex::t
      (let ((__tmp98165 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98165)))
    (define condvar::t
      (let ((__tmp98166 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98166)))
    (define port::t
      (let ((__tmp98167 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98167)))
    (define object-port::t
      (let ((__tmp98168 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98168)))
    (define character-port::t
      (let ((__tmp98169 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98169)))
    (define byte-port::t
      (let ((__tmp98170 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98170)))
    (define device-port::t
      (let ((__tmp98171 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98171)))
    (define vector-port::t
      (let ((__tmp98172 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98172)))
    (define string-port::t
      (let ((__tmp98173 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98173)))
    (define u8vector-port::t
      (let ((__tmp98174 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98174)))
    (define raw-device-port::t
      (let ((__tmp98175 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98175)))
    (define tcp-server-port::t
      (let ((__tmp98176 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98176)))
    (define udp-port::t
      (let ((__tmp98177 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98177)))
    (define directory-port::t
      (let ((__tmp98178 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98178)))
    (define event-queue-port::t
      (let ((__tmp98179 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98179)))
    (define table::t
      (let ((__tmp98180 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98180)))
    (define readenv::t
      (let ((__tmp98181 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98181)))
    (define writeenv::t
      (let ((__tmp98182 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98182)))
    (define readtable::t
      (let ((__tmp98183 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98183)))
    (define processor::t
      (let ((__tmp98184 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98184)))
    (define vm::t
      (let ((__tmp98185 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98185)))
    (define file-info::t
      (let ((__tmp98186 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98186)))
    (define socket-info::t
      (let ((__tmp98187 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98187)))
    (define address-info::t
      (let ((__tmp98188 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98188)))
    (define atom?
      (lambda (_%obj98129%_)
        (if (let () (declare (not safe)) (immediate? _%obj98129%_))
            (if (let ((__tmp98189
                       (let () (declare (not safe)) (char? _%obj98129%_))))
                  (declare (not safe))
                  (not __tmp98189))
                (let ((__tmp98190
                       (let () (declare (not safe)) (fixnum? _%obj98129%_))))
                  (declare (not safe))
                  (not __tmp98190))
                '#f)
            '#f)))
    (define special?
      (lambda (_%obj98127%_)
        (if (let ((__tmp98191
                   (let () (declare (not safe)) (##type _%obj98127%_))))
              (declare (not safe))
              (##fx= __tmp98191 '2))
            (if (let ((__tmp98192
                       (let () (declare (not safe)) (char? _%obj98127%_))))
                  (declare (not safe))
                  (not __tmp98192))
                (if (let ((__tmp98193
                           (let () (declare (not safe)) (null? _%obj98127%_))))
                      (declare (not safe))
                      (not __tmp98193))
                    (if (let ((__tmp98194
                               (let ()
                                 (declare (not safe))
                                 (boolean? _%obj98127%_))))
                          (declare (not safe))
                          (not __tmp98194))
                        (if (let ((__tmp98195
                                   (let ()
                                     (declare (not safe))
                                     (eq? _%obj98127%_ '#!void))))
                              (declare (not safe))
                              (not __tmp98195))
                            (let ((__tmp98196
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _%obj98127%_))))
                              (declare (not safe))
                              (not __tmp98196))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98119%_)
        (let ((_%$e98121%_
               (let () (declare (not safe)) (vector? _%obj98119%_))))
          (if _%$e98121%_
              _%$e98121%_
              (let ((_%$e98124%_
                     (let () (declare (not safe)) (string? _%obj98119%_))))
                (if _%$e98124%_
                    _%$e98124%_
                    (let () (declare (not safe)) (hvector? _%obj98119%_))))))))
    (define hvector?
      (lambda (_%obj98090%_)
        (let ((_%$e98092%_
               (let () (declare (not safe)) (u8vector? _%obj98090%_))))
          (if _%$e98092%_
              _%$e98092%_
              (let ((_%$e98095%_
                     (let () (declare (not safe)) (s8vector? _%obj98090%_))))
                (if _%$e98095%_
                    _%$e98095%_
                    (let ((_%$e98098%_
                           (let ()
                             (declare (not safe))
                             (u16vector? _%obj98090%_))))
                      (if _%$e98098%_
                          _%$e98098%_
                          (let ((_%$e98101%_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _%obj98090%_))))
                            (if _%$e98101%_
                                _%$e98101%_
                                (let ((_%$e98104%_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _%obj98090%_))))
                                  (if _%$e98104%_
                                      _%$e98104%_
                                      (let ((_%$e98107%_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _%obj98090%_))))
                                        (if _%$e98107%_
                                            _%$e98107%_
                                            (let ((_%$e98110%_
                                                   (u64vector? _%obj98090%_)))
                                              (if _%$e98110%_
                                                  _%$e98110%_
                                                  (let ((_%$e98113%_
                                                         (s64vector?
                                                          _%obj98090%_)))
                                                    (if _%$e98113%_
                                                        _%$e98113%_
                                                        (let ((_%$e98116%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _%obj98090%_))))
                  (if _%$e98116%_
                      _%$e98116%_
                      (let ()
                        (declare (not safe))
                        (f64vector? _%obj98090%_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_%obj98088%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98088%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98088%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98086%_)
        (let ((__tmp98197
               (let ((__tmp98198 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98198))))
          (declare (not safe))
          (##structure-instance-of? _%obj98086%_ __tmp98197))))
    (define character-port?
      (lambda (_%obj98084%_)
        (let ((__tmp98199
               (let ((__tmp98200 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98200))))
          (declare (not safe))
          (##structure-instance-of? _%obj98084%_ __tmp98199))))
    (define device-port?
      (lambda (_%obj98082%_)
        (let ((__tmp98201
               (let ((__tmp98202 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98202))))
          (declare (not safe))
          (##structure-instance-of? _%obj98082%_ __tmp98201))))
    (define vector-port?
      (lambda (_%obj98080%_)
        (let ((__tmp98203
               (let ((__tmp98204 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98204))))
          (declare (not safe))
          (##structure-instance-of? _%obj98080%_ __tmp98203))))
    (define string-port?
      (lambda (_%obj98078%_)
        (let ((__tmp98205
               (let ((__tmp98206 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98206))))
          (declare (not safe))
          (##structure-instance-of? _%obj98078%_ __tmp98205))))
    (define u8vector-port?
      (lambda (_%obj98076%_)
        (let ((__tmp98207
               (let ((__tmp98208 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98208))))
          (declare (not safe))
          (##structure-instance-of? _%obj98076%_ __tmp98207))))
    (define raw-device-port?
      (lambda (_%obj98074%_)
        (let ((__tmp98209
               (let ((__tmp98210 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98210))))
          (declare (not safe))
          (##structure-instance-of? _%obj98074%_ __tmp98209))))
    (define tcp-server-port?
      (lambda (_%obj98072%_)
        (let ((__tmp98211
               (let ((__tmp98212 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98212))))
          (declare (not safe))
          (##structure-instance-of? _%obj98072%_ __tmp98211))))
    (define udp-port?
      (lambda (_%obj98070%_)
        (let ((__tmp98213
               (let ((__tmp98214 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98214))))
          (declare (not safe))
          (##structure-instance-of? _%obj98070%_ __tmp98213))))
    (define directory-port?
      (lambda (_%obj98068%_)
        (let ((__tmp98215
               (let ((__tmp98216 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98216))))
          (declare (not safe))
          (##structure-instance-of? _%obj98068%_ __tmp98215))))
    (define event-queue-port?
      (lambda (_%obj98066%_)
        (let ((__tmp98217
               (let ((__tmp98218 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98218))))
          (declare (not safe))
          (##structure-instance-of? _%obj98066%_ __tmp98217))))
    (define readenv?
      (lambda (_%obj98064%_)
        (let ((__tmp98219
               (let ((__tmp98220 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98220))))
          (declare (not safe))
          (##structure-instance-of? _%obj98064%_ __tmp98219))))
    (define writeenv?
      (lambda (_%obj98062%_)
        (let ((__tmp98221
               (let ((__tmp98222 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98222))))
          (declare (not safe))
          (##structure-instance-of? _%obj98062%_ __tmp98221))))
    (define vm?
      (lambda (_%obj98060%_)
        (let ((__tmp98223
               (let ((__tmp98224 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98224))))
          (declare (not safe))
          (##structure-instance-of? _%obj98060%_ __tmp98223))))))
