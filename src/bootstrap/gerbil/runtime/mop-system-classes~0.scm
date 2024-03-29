(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1711709196)
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
      (let ((__tmp66274 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp66274)))
    (define boolean::t
      (let ((__tmp66275 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp66275)))
    (define atom::t
      (let ((__tmp66276 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp66276)))
    (define void::t
      (let ((__tmp66277 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp66277)))
    (define eof::t
      (let ((__tmp66278 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp66278)))
    (define true::t
      (let ((__tmp66279 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp66279)))
    (define false::t
      (let ((__tmp66280 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp66280)))
    (define special::t
      (let ((__tmp66281 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp66281)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp66282 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp66282)))
    (define integer::t
      (let ((__tmp66283 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp66283)))
    (define fixnum::t
      (let ((__tmp66284 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp66284)))
    (define bignum::t
      (let ((__tmp66285 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp66285)))
    (define ratnum::t
      (let ((__tmp66286 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp66286)))
    (define flonum::t
      (let ((__tmp66287 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp66287)))
    (define cpxnum::t
      (let ((__tmp66288 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp66288)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp66289 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp66289)))
    (define keyword::t
      (let ((__tmp66290 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp66290)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp66291 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp66291)))
    (define null::t
      (let ((__tmp66292 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp66292)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp66293 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp66293)))
    (define string::t
      (let ((__tmp66294 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp66294)))
    (define hvector::t
      (let ((__tmp66295 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp66295)))
    (define u8vector::t
      (let ((__tmp66296 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp66296)))
    (define s8vector::t
      (let ((__tmp66297 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp66297)))
    (define u16vector::t
      (let ((__tmp66298 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp66298)))
    (define s16vector::t
      (let ((__tmp66299 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp66299)))
    (define u32vector::t
      (let ((__tmp66300 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp66300)))
    (define s32vector::t
      (let ((__tmp66301 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp66301)))
    (define u64vector::t
      (let ((__tmp66302 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp66302)))
    (define s64vector::t
      (let ((__tmp66303 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp66303)))
    (define f32vector::t
      (let ((__tmp66304 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp66304)))
    (define f64vector::t
      (let ((__tmp66305 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp66305)))
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
      (let ((__tmp66306 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp66306)))
    (define thread::t
      (let ((__tmp66307 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp66307)))
    (define thread-group::t
      (let ((__tmp66308 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp66308)))
    (define mutex::t
      (let ((__tmp66309 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp66309)))
    (define condvar::t
      (let ((__tmp66310 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp66310)))
    (define port::t
      (let ((__tmp66311 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp66311)))
    (define object-port::t
      (let ((__tmp66312 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp66312)))
    (define character-port::t
      (let ((__tmp66313 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp66313)))
    (define byte-port::t
      (let ((__tmp66314 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp66314)))
    (define device-port::t
      (let ((__tmp66315 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66315)))
    (define vector-port::t
      (let ((__tmp66316 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66316)))
    (define string-port::t
      (let ((__tmp66317 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp66317)))
    (define u8vector-port::t
      (let ((__tmp66318 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66318)))
    (define raw-device-port::t
      (let ((__tmp66319 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66319)))
    (define tcp-server-port::t
      (let ((__tmp66320 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp66320)))
    (define udp-port::t
      (let ((__tmp66321 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp66321)))
    (define directory-port::t
      (let ((__tmp66322 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp66322)))
    (define event-queue-port::t
      (let ((__tmp66323 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp66323)))
    (define table::t
      (let ((__tmp66324 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp66324)))
    (define readenv::t
      (let ((__tmp66325 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp66325)))
    (define writeenv::t
      (let ((__tmp66326 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp66326)))
    (define readtable::t
      (let ((__tmp66327 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp66327)))
    (define processor::t
      (let ((__tmp66328 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp66328)))
    (define vm::t
      (let ((__tmp66329 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp66329)))
    (define file-info::t
      (let ((__tmp66330 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp66330)))
    (define socket-info::t
      (let ((__tmp66331 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp66331)))
    (define address-info::t
      (let ((__tmp66332 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp66332)))
    (define atom?
      (lambda (_obj66273_)
        (if (let () (declare (not safe)) (__immediate? _obj66273_))
            (if (let ((__tmp66333
                       (let () (declare (not safe)) (char? _obj66273_))))
                  (declare (not safe))
                  (not __tmp66333))
                (let ((__tmp66334
                       (let () (declare (not safe)) (fixnum? _obj66273_))))
                  (declare (not safe))
                  (not __tmp66334))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj66271_)
        (if (let ((__tmp66335
                   (let () (declare (not safe)) (##type _obj66271_))))
              (declare (not safe))
              (##fx= __tmp66335 '2))
            (if (let ((__tmp66336
                       (let () (declare (not safe)) (char? _obj66271_))))
                  (declare (not safe))
                  (not __tmp66336))
                (if (let ((__tmp66337
                           (let () (declare (not safe)) (null? _obj66271_))))
                      (declare (not safe))
                      (not __tmp66337))
                    (if (let ((__tmp66338
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj66271_))))
                          (declare (not safe))
                          (not __tmp66338))
                        (if (let ((__tmp66339
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj66271_ '#!void))))
                              (declare (not safe))
                              (not __tmp66339))
                            (let ((__tmp66340
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj66271_))))
                              (declare (not safe))
                              (not __tmp66340))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj66263_)
        (let ((_$e66265_ (let () (declare (not safe)) (vector? _obj66263_))))
          (if _$e66265_
              _$e66265_
              (let ((_$e66268_
                     (let () (declare (not safe)) (string? _obj66263_))))
                (if _$e66268_
                    _$e66268_
                    (let () (declare (not safe)) (hvector? _obj66263_))))))))
    (define hvector?
      (lambda (_obj66234_)
        (let ((_$e66236_ (let () (declare (not safe)) (u8vector? _obj66234_))))
          (if _$e66236_
              _$e66236_
              (let ((_$e66239_
                     (let () (declare (not safe)) (s8vector? _obj66234_))))
                (if _$e66239_
                    _$e66239_
                    (let ((_$e66242_
                           (let ()
                             (declare (not safe))
                             (u16vector? _obj66234_))))
                      (if _$e66242_
                          _$e66242_
                          (let ((_$e66245_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _obj66234_))))
                            (if _$e66245_
                                _$e66245_
                                (let ((_$e66248_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _obj66234_))))
                                  (if _$e66248_
                                      _$e66248_
                                      (let ((_$e66251_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _obj66234_))))
                                        (if _$e66251_
                                            _$e66251_
                                            (let ((_$e66254_
                                                   (u64vector? _obj66234_)))
                                              (if _$e66254_
                                                  _$e66254_
                                                  (let ((_$e66257_
                                                         (s64vector?
                                                          _obj66234_)))
                                                    (if _$e66257_
                                                        _$e66257_
                                                        (let ((_$e66260_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _obj66234_))))
                  (if _$e66260_
                      _$e66260_
                      (let ()
                        (declare (not safe))
                        (f64vector? _obj66234_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_obj66232_)
        (if (let () (declare (not safe)) (##subtyped? _obj66232_))
            (eq? (let () (declare (not safe)) (##subtype _obj66232_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_obj66230_)
        (let ((__tmp66341
               (let ((__tmp66342 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp66342))))
          (declare (not safe))
          (##structure-instance-of? _obj66230_ __tmp66341))))
    (define character-port?
      (lambda (_obj66228_)
        (let ((__tmp66343
               (let ((__tmp66344 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp66344))))
          (declare (not safe))
          (##structure-instance-of? _obj66228_ __tmp66343))))
    (define device-port?
      (lambda (_obj66226_)
        (let ((__tmp66345
               (let ((__tmp66346 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66346))))
          (declare (not safe))
          (##structure-instance-of? _obj66226_ __tmp66345))))
    (define vector-port?
      (lambda (_obj66224_)
        (let ((__tmp66347
               (let ((__tmp66348 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66348))))
          (declare (not safe))
          (##structure-instance-of? _obj66224_ __tmp66347))))
    (define string-port?
      (lambda (_obj66222_)
        (let ((__tmp66349
               (let ((__tmp66350 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp66350))))
          (declare (not safe))
          (##structure-instance-of? _obj66222_ __tmp66349))))
    (define u8vector-port?
      (lambda (_obj66220_)
        (let ((__tmp66351
               (let ((__tmp66352 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66352))))
          (declare (not safe))
          (##structure-instance-of? _obj66220_ __tmp66351))))
    (define raw-device-port?
      (lambda (_obj66218_)
        (let ((__tmp66353
               (let ((__tmp66354 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66354))))
          (declare (not safe))
          (##structure-instance-of? _obj66218_ __tmp66353))))
    (define tcp-server-port?
      (lambda (_obj66216_)
        (let ((__tmp66355
               (let ((__tmp66356 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp66356))))
          (declare (not safe))
          (##structure-instance-of? _obj66216_ __tmp66355))))
    (define udp-port?
      (lambda (_obj66214_)
        (let ((__tmp66357
               (let ((__tmp66358 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp66358))))
          (declare (not safe))
          (##structure-instance-of? _obj66214_ __tmp66357))))
    (define directory-port?
      (lambda (_obj66212_)
        (let ((__tmp66359
               (let ((__tmp66360 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp66360))))
          (declare (not safe))
          (##structure-instance-of? _obj66212_ __tmp66359))))
    (define event-queue-port?
      (lambda (_obj66210_)
        (let ((__tmp66361
               (let ((__tmp66362 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp66362))))
          (declare (not safe))
          (##structure-instance-of? _obj66210_ __tmp66361))))
    (define readenv?
      (lambda (_obj66208_)
        (let ((__tmp66363
               (let ((__tmp66364 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp66364))))
          (declare (not safe))
          (##structure-instance-of? _obj66208_ __tmp66363))))
    (define writeenv?
      (lambda (_obj66206_)
        (let ((__tmp66365
               (let ((__tmp66366 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp66366))))
          (declare (not safe))
          (##structure-instance-of? _obj66206_ __tmp66365))))
    (define vm?
      (lambda (_obj66204_)
        (let ((__tmp66367
               (let ((__tmp66368 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp66368))))
          (declare (not safe))
          (##structure-instance-of? _obj66204_ __tmp66367))))))
