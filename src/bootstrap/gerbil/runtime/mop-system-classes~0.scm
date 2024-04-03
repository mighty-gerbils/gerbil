(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712124233)
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
      (let ((__tmp98148 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98148)))
    (define boolean::t
      (let ((__tmp98149 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98149)))
    (define atom::t
      (let ((__tmp98150 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98150)))
    (define void::t
      (let ((__tmp98151 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98151)))
    (define eof::t
      (let ((__tmp98152 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98152)))
    (define true::t
      (let ((__tmp98153 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98153)))
    (define false::t
      (let ((__tmp98154 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98154)))
    (define special::t
      (let ((__tmp98155 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98155)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98156 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98156)))
    (define integer::t
      (let ((__tmp98157 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98157)))
    (define fixnum::t
      (let ((__tmp98158 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98158)))
    (define bignum::t
      (let ((__tmp98159 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98159)))
    (define ratnum::t
      (let ((__tmp98160 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98160)))
    (define flonum::t
      (let ((__tmp98161 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98161)))
    (define cpxnum::t
      (let ((__tmp98162 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98162)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98163 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98163)))
    (define keyword::t
      (let ((__tmp98164 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98164)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98165 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98165)))
    (define null::t
      (let ((__tmp98166 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98166)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98167 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98167)))
    (define string::t
      (let ((__tmp98168 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98168)))
    (define hvector::t
      (let ((__tmp98169 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98169)))
    (define u8vector::t
      (let ((__tmp98170 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98170)))
    (define s8vector::t
      (let ((__tmp98171 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98171)))
    (define u16vector::t
      (let ((__tmp98172 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98172)))
    (define s16vector::t
      (let ((__tmp98173 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98173)))
    (define u32vector::t
      (let ((__tmp98174 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98174)))
    (define s32vector::t
      (let ((__tmp98175 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98175)))
    (define u64vector::t
      (let ((__tmp98176 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98176)))
    (define s64vector::t
      (let ((__tmp98177 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98177)))
    (define f32vector::t
      (let ((__tmp98178 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98178)))
    (define f64vector::t
      (let ((__tmp98179 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98179)))
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
      (let ((__tmp98180 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98180)))
    (define thread::t
      (let ((__tmp98181 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98181)))
    (define thread-group::t
      (let ((__tmp98182 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98182)))
    (define mutex::t
      (let ((__tmp98183 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98183)))
    (define condvar::t
      (let ((__tmp98184 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98184)))
    (define port::t
      (let ((__tmp98185 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98185)))
    (define object-port::t
      (let ((__tmp98186 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98186)))
    (define character-port::t
      (let ((__tmp98187 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98187)))
    (define byte-port::t
      (let ((__tmp98188 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98188)))
    (define device-port::t
      (let ((__tmp98189 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98189)))
    (define vector-port::t
      (let ((__tmp98190 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98190)))
    (define string-port::t
      (let ((__tmp98191 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98191)))
    (define u8vector-port::t
      (let ((__tmp98192 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98192)))
    (define raw-device-port::t
      (let ((__tmp98193 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98193)))
    (define tcp-server-port::t
      (let ((__tmp98194 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98194)))
    (define udp-port::t
      (let ((__tmp98195 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98195)))
    (define directory-port::t
      (let ((__tmp98196 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98196)))
    (define event-queue-port::t
      (let ((__tmp98197 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98197)))
    (define table::t
      (let ((__tmp98198 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98198)))
    (define readenv::t
      (let ((__tmp98199 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98199)))
    (define writeenv::t
      (let ((__tmp98200 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98200)))
    (define readtable::t
      (let ((__tmp98201 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98201)))
    (define processor::t
      (let ((__tmp98202 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98202)))
    (define vm::t
      (let ((__tmp98203 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98203)))
    (define file-info::t
      (let ((__tmp98204 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98204)))
    (define socket-info::t
      (let ((__tmp98205 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98205)))
    (define address-info::t
      (let ((__tmp98206 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98206)))
    (define atom?
      (lambda (_%obj98147%_)
        (if (let () (declare (not safe)) (immediate? _%obj98147%_))
            (if (let ((__tmp98207
                       (let () (declare (not safe)) (char? _%obj98147%_))))
                  (declare (not safe))
                  (not __tmp98207))
                (let ((__tmp98208
                       (let () (declare (not safe)) (fixnum? _%obj98147%_))))
                  (declare (not safe))
                  (not __tmp98208))
                '#f)
            '#f)))
    (define special?
      (lambda (_%obj98145%_)
        (if (let ((__tmp98209
                   (let () (declare (not safe)) (##type _%obj98145%_))))
              (declare (not safe))
              (##fx= __tmp98209 '2))
            (if (let ((__tmp98210
                       (let () (declare (not safe)) (char? _%obj98145%_))))
                  (declare (not safe))
                  (not __tmp98210))
                (if (let ((__tmp98211
                           (let () (declare (not safe)) (null? _%obj98145%_))))
                      (declare (not safe))
                      (not __tmp98211))
                    (if (let ((__tmp98212
                               (let ()
                                 (declare (not safe))
                                 (boolean? _%obj98145%_))))
                          (declare (not safe))
                          (not __tmp98212))
                        (if (let ((__tmp98213
                                   (let ()
                                     (declare (not safe))
                                     (eq? _%obj98145%_ '#!void))))
                              (declare (not safe))
                              (not __tmp98213))
                            (let ((__tmp98214
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _%obj98145%_))))
                              (declare (not safe))
                              (not __tmp98214))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98137%_)
        (let ((_%$e98139%_
               (let () (declare (not safe)) (vector? _%obj98137%_))))
          (if _%$e98139%_
              _%$e98139%_
              (let ((_%$e98142%_
                     (let () (declare (not safe)) (string? _%obj98137%_))))
                (if _%$e98142%_
                    _%$e98142%_
                    (let () (declare (not safe)) (hvector? _%obj98137%_))))))))
    (define hvector?
      (lambda (_%obj98108%_)
        (let ((_%$e98110%_
               (let () (declare (not safe)) (u8vector? _%obj98108%_))))
          (if _%$e98110%_
              _%$e98110%_
              (let ((_%$e98113%_
                     (let () (declare (not safe)) (s8vector? _%obj98108%_))))
                (if _%$e98113%_
                    _%$e98113%_
                    (let ((_%$e98116%_
                           (let ()
                             (declare (not safe))
                             (u16vector? _%obj98108%_))))
                      (if _%$e98116%_
                          _%$e98116%_
                          (let ((_%$e98119%_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _%obj98108%_))))
                            (if _%$e98119%_
                                _%$e98119%_
                                (let ((_%$e98122%_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _%obj98108%_))))
                                  (if _%$e98122%_
                                      _%$e98122%_
                                      (let ((_%$e98125%_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _%obj98108%_))))
                                        (if _%$e98125%_
                                            _%$e98125%_
                                            (let ((_%$e98128%_
                                                   (u64vector? _%obj98108%_)))
                                              (if _%$e98128%_
                                                  _%$e98128%_
                                                  (let ((_%$e98131%_
                                                         (s64vector?
                                                          _%obj98108%_)))
                                                    (if _%$e98131%_
                                                        _%$e98131%_
                                                        (let ((_%$e98134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _%obj98108%_))))
                  (if _%$e98134%_
                      _%$e98134%_
                      (let ()
                        (declare (not safe))
                        (f64vector? _%obj98108%_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_%obj98106%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98106%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98106%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98104%_)
        (let ((__tmp98215
               (let ((__tmp98216 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98216))))
          (declare (not safe))
          (##structure-instance-of? _%obj98104%_ __tmp98215))))
    (define character-port?
      (lambda (_%obj98102%_)
        (let ((__tmp98217
               (let ((__tmp98218 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98218))))
          (declare (not safe))
          (##structure-instance-of? _%obj98102%_ __tmp98217))))
    (define device-port?
      (lambda (_%obj98100%_)
        (let ((__tmp98219
               (let ((__tmp98220 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98220))))
          (declare (not safe))
          (##structure-instance-of? _%obj98100%_ __tmp98219))))
    (define vector-port?
      (lambda (_%obj98098%_)
        (let ((__tmp98221
               (let ((__tmp98222 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98222))))
          (declare (not safe))
          (##structure-instance-of? _%obj98098%_ __tmp98221))))
    (define string-port?
      (lambda (_%obj98096%_)
        (let ((__tmp98223
               (let ((__tmp98224 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98224))))
          (declare (not safe))
          (##structure-instance-of? _%obj98096%_ __tmp98223))))
    (define u8vector-port?
      (lambda (_%obj98094%_)
        (let ((__tmp98225
               (let ((__tmp98226 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98226))))
          (declare (not safe))
          (##structure-instance-of? _%obj98094%_ __tmp98225))))
    (define raw-device-port?
      (lambda (_%obj98092%_)
        (let ((__tmp98227
               (let ((__tmp98228 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98228))))
          (declare (not safe))
          (##structure-instance-of? _%obj98092%_ __tmp98227))))
    (define tcp-server-port?
      (lambda (_%obj98090%_)
        (let ((__tmp98229
               (let ((__tmp98230 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98230))))
          (declare (not safe))
          (##structure-instance-of? _%obj98090%_ __tmp98229))))
    (define udp-port?
      (lambda (_%obj98088%_)
        (let ((__tmp98231
               (let ((__tmp98232 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98232))))
          (declare (not safe))
          (##structure-instance-of? _%obj98088%_ __tmp98231))))
    (define directory-port?
      (lambda (_%obj98086%_)
        (let ((__tmp98233
               (let ((__tmp98234 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98234))))
          (declare (not safe))
          (##structure-instance-of? _%obj98086%_ __tmp98233))))
    (define event-queue-port?
      (lambda (_%obj98084%_)
        (let ((__tmp98235
               (let ((__tmp98236 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98236))))
          (declare (not safe))
          (##structure-instance-of? _%obj98084%_ __tmp98235))))
    (define readenv?
      (lambda (_%obj98082%_)
        (let ((__tmp98237
               (let ((__tmp98238 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98238))))
          (declare (not safe))
          (##structure-instance-of? _%obj98082%_ __tmp98237))))
    (define writeenv?
      (lambda (_%obj98080%_)
        (let ((__tmp98239
               (let ((__tmp98240 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98240))))
          (declare (not safe))
          (##structure-instance-of? _%obj98080%_ __tmp98239))))
    (define vm?
      (lambda (_%obj98078%_)
        (let ((__tmp98241
               (let ((__tmp98242 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98242))))
          (declare (not safe))
          (##structure-instance-of? _%obj98078%_ __tmp98241))))))
