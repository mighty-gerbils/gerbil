(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1768863411)
  (begin
    (declare
      (not optimize-dead-definitions
           builtin::t
           subtyped::t
           record::t
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
           haflonum::t
           stflonuam::t
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
    (define builtin::t
      (let ((__tmp112312 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp112312 '())))
    (define subtyped::t
      (let ((__tmp112313 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp112313 '())))
    (define structure::t
      (let ((__tmp112314 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp112314 '())))
    (define immediate::t
      (let ((__tmp112315 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp112315 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp112316 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp112316 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp112317 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp112317 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp112318 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp112318 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp112319 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp112319 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp112320 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp112320 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp112321 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp112321 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp112322 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp112322 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp112323 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp112323 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp112324 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp112324 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp112325 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp112325 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp112326 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp112326 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp112327 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp112327 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp112328 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp112328 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp112329 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp112329 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp112330 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp112330 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp112331 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp112331 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp112332 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp112332 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp112333 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp112333 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp112334 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp112334 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp112335 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp112335 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp112336 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp112336 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp112337 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp112337 '())))
    (define pair::t
      (let ((__tmp112338 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp112338 'subtyped::t)))
    (define null::t
      (let ((__tmp112339 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp112339 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp112340 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp112340 '())))
    (define vector::t
      (let ((__tmp112341 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp112341 '())))
    (define string::t
      (let ((__tmp112342 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp112342 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp112343 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp112343 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp112344 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp112344 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp112345 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp112345 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp112346 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp112346 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp112347 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp112347 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp112348 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp112348 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp112349 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp112349 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp112350 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp112350 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp112351 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp112351 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp112352 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp112352 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp112353 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp112353 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp112354 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp112354 '())))
    (define box::t
      (let ((__tmp112355 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp112355 '())))
    (define frame::t
      (let ((__tmp112356 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp112356 '())))
    (define continuation::t
      (let ((__tmp112357 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp112357 '())))
    (define promise::t
      (let ((__tmp112358 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp112358 '())))
    (define weak::t
      (let ((__tmp112359 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp112359 '())))
    (define foreign::t
      (let ((__tmp112360 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp112360 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp112361 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp112361 '())))
    (define return::t
      (let ((__tmp112362 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp112362 '())))
    (define time::t
      (let ((__tmp112363 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp112363 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp112364 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp112364 '())))
    (define thread-group::t
      (let ((__tmp112365 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp112365 '())))
    (define mutex::t
      (let ((__tmp112366 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp112366 '())))
    (define condvar::t
      (let ((__tmp112367 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp112367 '())))
    (define port::t
      (let ((__tmp112368 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112368 '())))
    (define object-port::t
      (let ((__tmp112369 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112369 '())))
    (define character-port::t
      (let ((__tmp112370 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112370 '())))
    (define byte-port::t
      (let ((__tmp112371 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112371 '())))
    (define device-port::t
      (let ((__tmp112372 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112372 '())))
    (define vector-port::t
      (let ((__tmp112373 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112373 '())))
    (define string-port::t
      (let ((__tmp112374 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112374 '())))
    (define u8vector-port::t
      (let ((__tmp112375 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112375 '())))
    (define raw-device-port::t
      (let ((__tmp112376 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112376 '())))
    (define tcp-server-port::t
      (let ((__tmp112377 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112377 '())))
    (define udp-port::t
      (let ((__tmp112378 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112378 '())))
    (define directory-port::t
      (let ((__tmp112379 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112379 '())))
    (define event-queue-port::t
      (let ((__tmp112380 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112380 '())))
    (define table::t
      (let ((__tmp112381 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp112381 '())))
    (define readenv::t
      (let ((__tmp112382 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112382 '())))
    (define writeenv::t
      (let ((__tmp112383 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112383 '())))
    (define readtable::t
      (let ((__tmp112384 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp112384 '())))
    (define processor::t
      (let ((__tmp112385 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp112385 '())))
    (define vm::t
      (let ((__tmp112386 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp112386 '())))
    (define file-info::t
      (let ((__tmp112387 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112387 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp112388 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112388 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp112389 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112389 '((acyclic: . #t)))))
    (define atom?
      (lambda (_%obj112311%_)
        (if (let () (declare (not safe)) (immediate? _%obj112311%_))
            (if (char? _%obj112311%_) '#f (not (fixnum? _%obj112311%_)))
            '#f)))
    (define special?
      (lambda (_%obj112309%_)
        (let () (declare (not safe)) (##special? _%obj112309%_))))
    (define sequence?
      (lambda (_%obj112301%_)
        (let ((_%$e112303%_ (vector? _%obj112301%_)))
          (if _%$e112303%_
              _%$e112303%_
              (let ((_%$e112306%_ (string? _%obj112301%_)))
                (if _%$e112306%_ _%$e112306%_ (hvector? _%obj112301%_)))))))
    (define hvector?
      (lambda (_%obj112272%_)
        (let ((_%$e112274%_ (u8vector? _%obj112272%_)))
          (if _%$e112274%_
              _%$e112274%_
              (let ((_%$e112277%_ (s8vector? _%obj112272%_)))
                (if _%$e112277%_
                    _%$e112277%_
                    (let ((_%$e112280%_ (u16vector? _%obj112272%_)))
                      (if _%$e112280%_
                          _%$e112280%_
                          (let ((_%$e112283%_ (s16vector? _%obj112272%_)))
                            (if _%$e112283%_
                                _%$e112283%_
                                (let ((_%$e112286%_
                                       (u32vector? _%obj112272%_)))
                                  (if _%$e112286%_
                                      _%$e112286%_
                                      (let ((_%$e112289%_
                                             (s32vector? _%obj112272%_)))
                                        (if _%$e112289%_
                                            _%$e112289%_
                                            (let ((_%$e112292%_
                                                   (u64vector? _%obj112272%_)))
                                              (if _%$e112292%_
                                                  _%$e112292%_
                                                  (let ((_%$e112295%_
                                                         (s64vector?
                                                          _%obj112272%_)))
                                                    (if _%$e112295%_
                                                        _%$e112295%_
                                                        (let ((_%$e112298%_
                                                               (f32vector?
                                                                _%obj112272%_)))
                                                          (if _%$e112298%_
                                                              _%$e112298%_
                                                              (f64vector?
                                                               _%obj112272%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj112270%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj112270%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj112270%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj112268%_)
        (let ((__tmp112390
               (let ((__tmp112391 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp112391))))
          (declare (not safe))
          (##structure-instance-of? _%obj112268%_ __tmp112390))))
    (define character-port?
      (lambda (_%obj112266%_)
        (let ((__tmp112392
               (let ((__tmp112393 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp112393))))
          (declare (not safe))
          (##structure-instance-of? _%obj112266%_ __tmp112392))))
    (define device-port?
      (lambda (_%obj112264%_)
        (let ((__tmp112394
               (let ((__tmp112395 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112395))))
          (declare (not safe))
          (##structure-instance-of? _%obj112264%_ __tmp112394))))
    (define vector-port?
      (lambda (_%obj112262%_)
        (let ((__tmp112396
               (let ((__tmp112397 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112397))))
          (declare (not safe))
          (##structure-instance-of? _%obj112262%_ __tmp112396))))
    (define string-port?
      (lambda (_%obj112260%_)
        (let ((__tmp112398
               (let ((__tmp112399 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp112399))))
          (declare (not safe))
          (##structure-instance-of? _%obj112260%_ __tmp112398))))
    (define u8vector-port?
      (lambda (_%obj112258%_)
        (let ((__tmp112400
               (let ((__tmp112401 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112401))))
          (declare (not safe))
          (##structure-instance-of? _%obj112258%_ __tmp112400))))
    (define raw-device-port?
      (lambda (_%obj112256%_)
        (let ((__tmp112402
               (let ((__tmp112403 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112403))))
          (declare (not safe))
          (##structure-instance-of? _%obj112256%_ __tmp112402))))
    (define tcp-server-port?
      (lambda (_%obj112254%_)
        (let ((__tmp112404
               (let ((__tmp112405 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp112405))))
          (declare (not safe))
          (##structure-instance-of? _%obj112254%_ __tmp112404))))
    (define udp-port?
      (lambda (_%obj112252%_)
        (let ((__tmp112406
               (let ((__tmp112407 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp112407))))
          (declare (not safe))
          (##structure-instance-of? _%obj112252%_ __tmp112406))))
    (define directory-port?
      (lambda (_%obj112250%_)
        (let ((__tmp112408
               (let ((__tmp112409 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp112409))))
          (declare (not safe))
          (##structure-instance-of? _%obj112250%_ __tmp112408))))
    (define event-queue-port?
      (lambda (_%obj112248%_)
        (let ((__tmp112410
               (let ((__tmp112411 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp112411))))
          (declare (not safe))
          (##structure-instance-of? _%obj112248%_ __tmp112410))))
    (define readenv?
      (lambda (_%obj112246%_)
        (let ((__tmp112412
               (let ((__tmp112413 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp112413))))
          (declare (not safe))
          (##structure-instance-of? _%obj112246%_ __tmp112412))))
    (define writeenv?
      (lambda (_%obj112244%_)
        (let ((__tmp112414
               (let ((__tmp112415 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp112415))))
          (declare (not safe))
          (##structure-instance-of? _%obj112244%_ __tmp112414))))
    (define vm?
      (lambda (_%obj112242%_)
        (let ((__tmp112416
               (let ((__tmp112417 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp112417))))
          (declare (not safe))
          (##structure-instance-of? _%obj112242%_ __tmp112416))))))
