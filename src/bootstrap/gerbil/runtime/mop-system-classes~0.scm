(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712702630)
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
      (let ((__tmp98247 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp98247)))
    (define boolean::t
      (let ((__tmp98248 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98248)))
    (define atom::t
      (let ((__tmp98249 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98249)))
    (define void::t
      (let ((__tmp98250 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98250)))
    (define eof::t
      (let ((__tmp98251 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98251)))
    (define true::t
      (let ((__tmp98252 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98252)))
    (define false::t
      (let ((__tmp98253 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98253)))
    (define special::t
      (let ((__tmp98254 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98254)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98255 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98255)))
    (define integer::t
      (let ((__tmp98256 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98256)))
    (define fixnum::t
      (let ((__tmp98257 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98257)))
    (define bignum::t
      (let ((__tmp98258 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98258)))
    (define ratnum::t
      (let ((__tmp98259 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98259)))
    (define flonum::t
      (let ((__tmp98260 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98260)))
    (define cpxnum::t
      (let ((__tmp98261 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98261)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98262 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98262)))
    (define keyword::t
      (let ((__tmp98263 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98263)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98264 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98264)))
    (define null::t
      (let ((__tmp98265 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98265)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98266 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98266)))
    (define string::t
      (let ((__tmp98267 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98267)))
    (define hvector::t
      (let ((__tmp98268 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98268)))
    (define u8vector::t
      (let ((__tmp98269 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98269)))
    (define s8vector::t
      (let ((__tmp98270 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98270)))
    (define u16vector::t
      (let ((__tmp98271 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98271)))
    (define s16vector::t
      (let ((__tmp98272 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98272)))
    (define u32vector::t
      (let ((__tmp98273 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98273)))
    (define s32vector::t
      (let ((__tmp98274 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98274)))
    (define u64vector::t
      (let ((__tmp98275 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98275)))
    (define s64vector::t
      (let ((__tmp98276 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98276)))
    (define f32vector::t
      (let ((__tmp98277 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98277)))
    (define f64vector::t
      (let ((__tmp98278 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98278)))
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
      (let ((__tmp98279 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98279)))
    (define thread::t
      (let ((__tmp98280 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98280)))
    (define thread-group::t
      (let ((__tmp98281 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98281)))
    (define mutex::t
      (let ((__tmp98282 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98282)))
    (define condvar::t
      (let ((__tmp98283 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98283)))
    (define port::t
      (let ((__tmp98284 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98284)))
    (define object-port::t
      (let ((__tmp98285 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98285)))
    (define character-port::t
      (let ((__tmp98286 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98286)))
    (define byte-port::t
      (let ((__tmp98287 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98287)))
    (define device-port::t
      (let ((__tmp98288 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98288)))
    (define vector-port::t
      (let ((__tmp98289 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98289)))
    (define string-port::t
      (let ((__tmp98290 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98290)))
    (define u8vector-port::t
      (let ((__tmp98291 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98291)))
    (define raw-device-port::t
      (let ((__tmp98292 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98292)))
    (define tcp-server-port::t
      (let ((__tmp98293 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98293)))
    (define udp-port::t
      (let ((__tmp98294 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98294)))
    (define directory-port::t
      (let ((__tmp98295 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98295)))
    (define event-queue-port::t
      (let ((__tmp98296 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98296)))
    (define table::t
      (let ((__tmp98297 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98297)))
    (define readenv::t
      (let ((__tmp98298 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98298)))
    (define writeenv::t
      (let ((__tmp98299 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98299)))
    (define readtable::t
      (let ((__tmp98300 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98300)))
    (define processor::t
      (let ((__tmp98301 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98301)))
    (define vm::t
      (let ((__tmp98302 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98302)))
    (define file-info::t
      (let ((__tmp98303 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98303)))
    (define socket-info::t
      (let ((__tmp98304 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98304)))
    (define address-info::t
      (let ((__tmp98305 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98305)))
    (define atom?
      (lambda (_%obj98246%_)
        (if (let () (declare (not safe)) (immediate? _%obj98246%_))
            (if (not (char? _%obj98246%_)) (not (fixnum? _%obj98246%_)) '#f)
            '#f)))
    (define special?
      (lambda (_%obj98244%_)
        (if (let ((__tmp98306
                   (let () (declare (not safe)) (##type _%obj98244%_))))
              (declare (not safe))
              (##fx= __tmp98306 '2))
            (if (not (char? _%obj98244%_))
                (if (not (null? _%obj98244%_))
                    (if (not (boolean? _%obj98244%_))
                        (if (not (eq? _%obj98244%_ '#!void))
                            (not (eof-object? _%obj98244%_))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj98236%_)
        (let ((_%$e98238%_ (vector? _%obj98236%_)))
          (if _%$e98238%_
              _%$e98238%_
              (let ((_%$e98241%_ (string? _%obj98236%_)))
                (if _%$e98241%_ _%$e98241%_ (hvector? _%obj98236%_)))))))
    (define hvector?
      (lambda (_%obj98207%_)
        (let ((_%$e98209%_ (u8vector? _%obj98207%_)))
          (if _%$e98209%_
              _%$e98209%_
              (let ((_%$e98212%_ (s8vector? _%obj98207%_)))
                (if _%$e98212%_
                    _%$e98212%_
                    (let ((_%$e98215%_ (u16vector? _%obj98207%_)))
                      (if _%$e98215%_
                          _%$e98215%_
                          (let ((_%$e98218%_ (s16vector? _%obj98207%_)))
                            (if _%$e98218%_
                                _%$e98218%_
                                (let ((_%$e98221%_ (u32vector? _%obj98207%_)))
                                  (if _%$e98221%_
                                      _%$e98221%_
                                      (let ((_%$e98224%_
                                             (s32vector? _%obj98207%_)))
                                        (if _%$e98224%_
                                            _%$e98224%_
                                            (let ((_%$e98227%_
                                                   (u64vector? _%obj98207%_)))
                                              (if _%$e98227%_
                                                  _%$e98227%_
                                                  (let ((_%$e98230%_
                                                         (s64vector?
                                                          _%obj98207%_)))
                                                    (if _%$e98230%_
                                                        _%$e98230%_
                                                        (let ((_%$e98233%_
                                                               (f32vector?
                                                                _%obj98207%_)))
                                                          (if _%$e98233%_
                                                              _%$e98233%_
                                                              (f64vector?
                                                               _%obj98207%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj98205%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj98205%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj98205%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj98203%_)
        (let ((__tmp98307
               (let ((__tmp98308 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98308))))
          (declare (not safe))
          (##structure-instance-of? _%obj98203%_ __tmp98307))))
    (define character-port?
      (lambda (_%obj98201%_)
        (let ((__tmp98309
               (let ((__tmp98310 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98310))))
          (declare (not safe))
          (##structure-instance-of? _%obj98201%_ __tmp98309))))
    (define device-port?
      (lambda (_%obj98199%_)
        (let ((__tmp98311
               (let ((__tmp98312 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98312))))
          (declare (not safe))
          (##structure-instance-of? _%obj98199%_ __tmp98311))))
    (define vector-port?
      (lambda (_%obj98197%_)
        (let ((__tmp98313
               (let ((__tmp98314 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98314))))
          (declare (not safe))
          (##structure-instance-of? _%obj98197%_ __tmp98313))))
    (define string-port?
      (lambda (_%obj98195%_)
        (let ((__tmp98315
               (let ((__tmp98316 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98316))))
          (declare (not safe))
          (##structure-instance-of? _%obj98195%_ __tmp98315))))
    (define u8vector-port?
      (lambda (_%obj98193%_)
        (let ((__tmp98317
               (let ((__tmp98318 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98318))))
          (declare (not safe))
          (##structure-instance-of? _%obj98193%_ __tmp98317))))
    (define raw-device-port?
      (lambda (_%obj98191%_)
        (let ((__tmp98319
               (let ((__tmp98320 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98320))))
          (declare (not safe))
          (##structure-instance-of? _%obj98191%_ __tmp98319))))
    (define tcp-server-port?
      (lambda (_%obj98189%_)
        (let ((__tmp98321
               (let ((__tmp98322 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98322))))
          (declare (not safe))
          (##structure-instance-of? _%obj98189%_ __tmp98321))))
    (define udp-port?
      (lambda (_%obj98187%_)
        (let ((__tmp98323
               (let ((__tmp98324 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98324))))
          (declare (not safe))
          (##structure-instance-of? _%obj98187%_ __tmp98323))))
    (define directory-port?
      (lambda (_%obj98185%_)
        (let ((__tmp98325
               (let ((__tmp98326 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98326))))
          (declare (not safe))
          (##structure-instance-of? _%obj98185%_ __tmp98325))))
    (define event-queue-port?
      (lambda (_%obj98183%_)
        (let ((__tmp98327
               (let ((__tmp98328 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98328))))
          (declare (not safe))
          (##structure-instance-of? _%obj98183%_ __tmp98327))))
    (define readenv?
      (lambda (_%obj98181%_)
        (let ((__tmp98329
               (let ((__tmp98330 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98330))))
          (declare (not safe))
          (##structure-instance-of? _%obj98181%_ __tmp98329))))
    (define writeenv?
      (lambda (_%obj98179%_)
        (let ((__tmp98331
               (let ((__tmp98332 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98332))))
          (declare (not safe))
          (##structure-instance-of? _%obj98179%_ __tmp98331))))
    (define vm?
      (lambda (_%obj98177%_)
        (let ((__tmp98333
               (let ((__tmp98334 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98334))))
          (declare (not safe))
          (##structure-instance-of? _%obj98177%_ __tmp98333))))))
