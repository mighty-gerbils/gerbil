(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1734131745)
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
      (let ((__tmp102167 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp102167)))
    (define boolean::t
      (let ((__tmp102168 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp102168)))
    (define atom::t
      (let ((__tmp102169 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp102169)))
    (define void::t
      (let ((__tmp102170 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp102170)))
    (define eof::t
      (let ((__tmp102171 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp102171)))
    (define true::t
      (let ((__tmp102172 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp102172)))
    (define false::t
      (let ((__tmp102173 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp102173)))
    (define special::t
      (let ((__tmp102174 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp102174)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp102175 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp102175)))
    (define integer::t
      (let ((__tmp102176 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp102176)))
    (define fixnum::t
      (let ((__tmp102177 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp102177)))
    (define bignum::t
      (let ((__tmp102178 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp102178)))
    (define ratnum::t
      (let ((__tmp102179 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp102179)))
    (define flonum::t
      (let ((__tmp102180 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp102180)))
    (define cpxnum::t
      (let ((__tmp102181 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp102181)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp102182 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp102182)))
    (define keyword::t
      (let ((__tmp102183 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp102183)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp102184 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp102184)))
    (define null::t
      (let ((__tmp102185 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp102185)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp102186 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp102186)))
    (define string::t
      (let ((__tmp102187 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp102187)))
    (define hvector::t
      (let ((__tmp102188 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp102188)))
    (define u8vector::t
      (let ((__tmp102189 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp102189)))
    (define s8vector::t
      (let ((__tmp102190 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp102190)))
    (define u16vector::t
      (let ((__tmp102191 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp102191)))
    (define s16vector::t
      (let ((__tmp102192 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp102192)))
    (define u32vector::t
      (let ((__tmp102193 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp102193)))
    (define s32vector::t
      (let ((__tmp102194 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp102194)))
    (define u64vector::t
      (let ((__tmp102195 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp102195)))
    (define s64vector::t
      (let ((__tmp102196 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp102196)))
    (define f32vector::t
      (let ((__tmp102197 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp102197)))
    (define f64vector::t
      (let ((__tmp102198 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp102198)))
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
      (let ((__tmp102199 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp102199)))
    (define thread::t
      (let ((__tmp102200 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp102200)))
    (define thread-group::t
      (let ((__tmp102201 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp102201)))
    (define mutex::t
      (let ((__tmp102202 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp102202)))
    (define condvar::t
      (let ((__tmp102203 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp102203)))
    (define port::t
      (let ((__tmp102204 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp102204)))
    (define object-port::t
      (let ((__tmp102205 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp102205)))
    (define character-port::t
      (let ((__tmp102206 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp102206)))
    (define byte-port::t
      (let ((__tmp102207 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp102207)))
    (define device-port::t
      (let ((__tmp102208 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp102208)))
    (define vector-port::t
      (let ((__tmp102209 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp102209)))
    (define string-port::t
      (let ((__tmp102210 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp102210)))
    (define u8vector-port::t
      (let ((__tmp102211 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp102211)))
    (define raw-device-port::t
      (let ((__tmp102212 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp102212)))
    (define tcp-server-port::t
      (let ((__tmp102213 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp102213)))
    (define udp-port::t
      (let ((__tmp102214 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp102214)))
    (define directory-port::t
      (let ((__tmp102215 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp102215)))
    (define event-queue-port::t
      (let ((__tmp102216 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp102216)))
    (define table::t
      (let ((__tmp102217 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp102217)))
    (define readenv::t
      (let ((__tmp102218 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp102218)))
    (define writeenv::t
      (let ((__tmp102219 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp102219)))
    (define readtable::t
      (let ((__tmp102220 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp102220)))
    (define processor::t
      (let ((__tmp102221 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp102221)))
    (define vm::t
      (let ((__tmp102222 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp102222)))
    (define file-info::t
      (let ((__tmp102223 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp102223)))
    (define socket-info::t
      (let ((__tmp102224 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp102224)))
    (define address-info::t
      (let ((__tmp102225 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp102225)))
    (define atom?
      (lambda (_%obj102166%_)
        (if (let () (declare (not safe)) (immediate? _%obj102166%_))
            (if (char? _%obj102166%_) '#f (not (fixnum? _%obj102166%_)))
            '#f)))
    (define special?
      (lambda (_%obj102164%_)
        (if (let ((__tmp102226
                   (let () (declare (not safe)) (##type _%obj102164%_))))
              (declare (not safe))
              (##fx= __tmp102226 '2))
            (if (char? _%obj102164%_)
                '#f
                (if (null? _%obj102164%_)
                    '#f
                    (if (boolean? _%obj102164%_)
                        '#f
                        (if (eq? _%obj102164%_ '#!void)
                            '#f
                            (not (eof-object? _%obj102164%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj102156%_)
        (let ((_%$e102158%_ (vector? _%obj102156%_)))
          (if _%$e102158%_
              _%$e102158%_
              (let ((_%$e102161%_ (string? _%obj102156%_)))
                (if _%$e102161%_ _%$e102161%_ (hvector? _%obj102156%_)))))))
    (define hvector?
      (lambda (_%obj102127%_)
        (let ((_%$e102129%_ (u8vector? _%obj102127%_)))
          (if _%$e102129%_
              _%$e102129%_
              (let ((_%$e102132%_ (s8vector? _%obj102127%_)))
                (if _%$e102132%_
                    _%$e102132%_
                    (let ((_%$e102135%_ (u16vector? _%obj102127%_)))
                      (if _%$e102135%_
                          _%$e102135%_
                          (let ((_%$e102138%_ (s16vector? _%obj102127%_)))
                            (if _%$e102138%_
                                _%$e102138%_
                                (let ((_%$e102141%_
                                       (u32vector? _%obj102127%_)))
                                  (if _%$e102141%_
                                      _%$e102141%_
                                      (let ((_%$e102144%_
                                             (s32vector? _%obj102127%_)))
                                        (if _%$e102144%_
                                            _%$e102144%_
                                            (let ((_%$e102147%_
                                                   (u64vector? _%obj102127%_)))
                                              (if _%$e102147%_
                                                  _%$e102147%_
                                                  (let ((_%$e102150%_
                                                         (s64vector?
                                                          _%obj102127%_)))
                                                    (if _%$e102150%_
                                                        _%$e102150%_
                                                        (let ((_%$e102153%_
                                                               (f32vector?
                                                                _%obj102127%_)))
                                                          (if _%$e102153%_
                                                              _%$e102153%_
                                                              (f64vector?
                                                               _%obj102127%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj102125%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj102125%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj102125%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj102123%_)
        (let ((__tmp102227
               (let ((__tmp102228 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp102228))))
          (declare (not safe))
          (##structure-instance-of? _%obj102123%_ __tmp102227))))
    (define character-port?
      (lambda (_%obj102121%_)
        (let ((__tmp102229
               (let ((__tmp102230 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp102230))))
          (declare (not safe))
          (##structure-instance-of? _%obj102121%_ __tmp102229))))
    (define device-port?
      (lambda (_%obj102119%_)
        (let ((__tmp102231
               (let ((__tmp102232 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp102232))))
          (declare (not safe))
          (##structure-instance-of? _%obj102119%_ __tmp102231))))
    (define vector-port?
      (lambda (_%obj102117%_)
        (let ((__tmp102233
               (let ((__tmp102234 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp102234))))
          (declare (not safe))
          (##structure-instance-of? _%obj102117%_ __tmp102233))))
    (define string-port?
      (lambda (_%obj102115%_)
        (let ((__tmp102235
               (let ((__tmp102236 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp102236))))
          (declare (not safe))
          (##structure-instance-of? _%obj102115%_ __tmp102235))))
    (define u8vector-port?
      (lambda (_%obj102113%_)
        (let ((__tmp102237
               (let ((__tmp102238 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp102238))))
          (declare (not safe))
          (##structure-instance-of? _%obj102113%_ __tmp102237))))
    (define raw-device-port?
      (lambda (_%obj102111%_)
        (let ((__tmp102239
               (let ((__tmp102240 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp102240))))
          (declare (not safe))
          (##structure-instance-of? _%obj102111%_ __tmp102239))))
    (define tcp-server-port?
      (lambda (_%obj102109%_)
        (let ((__tmp102241
               (let ((__tmp102242 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp102242))))
          (declare (not safe))
          (##structure-instance-of? _%obj102109%_ __tmp102241))))
    (define udp-port?
      (lambda (_%obj102107%_)
        (let ((__tmp102243
               (let ((__tmp102244 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp102244))))
          (declare (not safe))
          (##structure-instance-of? _%obj102107%_ __tmp102243))))
    (define directory-port?
      (lambda (_%obj102105%_)
        (let ((__tmp102245
               (let ((__tmp102246 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp102246))))
          (declare (not safe))
          (##structure-instance-of? _%obj102105%_ __tmp102245))))
    (define event-queue-port?
      (lambda (_%obj102103%_)
        (let ((__tmp102247
               (let ((__tmp102248 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp102248))))
          (declare (not safe))
          (##structure-instance-of? _%obj102103%_ __tmp102247))))
    (define readenv?
      (lambda (_%obj102101%_)
        (let ((__tmp102249
               (let ((__tmp102250 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp102250))))
          (declare (not safe))
          (##structure-instance-of? _%obj102101%_ __tmp102249))))
    (define writeenv?
      (lambda (_%obj102099%_)
        (let ((__tmp102251
               (let ((__tmp102252 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp102252))))
          (declare (not safe))
          (##structure-instance-of? _%obj102099%_ __tmp102251))))
    (define vm?
      (lambda (_%obj102097%_)
        (let ((__tmp102253
               (let ((__tmp102254 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp102254))))
          (declare (not safe))
          (##structure-instance-of? _%obj102097%_ __tmp102253))))))
