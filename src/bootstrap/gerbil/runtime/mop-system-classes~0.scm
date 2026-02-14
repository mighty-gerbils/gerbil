(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1771093447)
  (begin
    (declare
      (not optimize-dead-definitions
           builtin::t
           subtyped::t
           structure::t
           immediate::t
           special::t
           atom::t
           char::t
           boolean::t
           true::t
           false::t
           eof::t
           void::t
           unbound::t
           unbound2::t
           dssl-token::t
           optional::t
           rest::t
           key::t
           number::t
           real::t
           integer::t
           fixnum::t
           bignum::t
           ratnum::t
           flonum::t
           stflonum::t
           haflonum::t
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
      (let ((__tmp139323 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp139323 '())))
    (define subtyped::t
      (let ((__tmp139324 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp139324 '())))
    (define structure::t
      (let ((__tmp139325 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp139325 '())))
    (define immediate::t
      (let ((__tmp139326 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp139326 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp139327 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp139327 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp139328 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp139328 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp139329 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp139329 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp139330 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp139330 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp139331 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp139331 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp139332 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp139332 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp139333 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp139333 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp139334 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp139334 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp139335 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp139335 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp139336 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp139336 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp139337 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp139337 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp139338 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp139338 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp139339 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp139339 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp139340 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp139340 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp139341 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp139341 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp139342 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp139342 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp139343 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp139343 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp139344 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp139344 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp139345 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp139345 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp139346 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp139346 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp139347 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp139347 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp139348 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp139348 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp139349 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp139349 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp139350 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp139350 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp139351 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp139351 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp139352 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp139352 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp139353 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp139353 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp139354 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp139354 '())))
    (define pair::t
      (let ((__tmp139355 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp139355 '())))
    (define null::t
      (let ((__tmp139356 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp139356 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp139357 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp139357 '())))
    (define vector::t
      (let ((__tmp139358 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp139358 '())))
    (define string::t
      (let ((__tmp139359 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp139359 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp139360 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp139360 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp139361 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp139361 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp139362 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp139362 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp139363 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp139363 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp139364 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp139364 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp139365 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp139365 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp139366 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp139366 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp139367 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp139367 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp139368 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp139368 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp139369 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp139369 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp139370 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp139370 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp139371 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp139371 '())))
    (define box::t
      (let ((__tmp139372 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp139372 '())))
    (define frame::t
      (let ((__tmp139373 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp139373 '())))
    (define continuation::t
      (let ((__tmp139374 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp139374 '())))
    (define promise::t
      (let ((__tmp139375 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp139375 '())))
    (define weak::t
      (let ((__tmp139376 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp139376 '())))
    (define foreign::t
      (let ((__tmp139377 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp139377 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp139378 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp139378 '())))
    (define return::t
      (let ((__tmp139379 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp139379 '())))
    (define time::t
      (let ((__tmp139380 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp139380 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp139381 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp139381 '())))
    (define thread-group::t
      (let ((__tmp139382 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp139382 '())))
    (define mutex::t
      (let ((__tmp139383 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp139383 '())))
    (define condvar::t
      (let ((__tmp139384 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp139384 '())))
    (define port::t
      (let ((__tmp139385 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139385 '())))
    (define object-port::t
      (let ((__tmp139386 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139386 '())))
    (define character-port::t
      (let ((__tmp139387 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139387 '())))
    (define byte-port::t
      (let ((__tmp139388 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139388 '())))
    (define device-port::t
      (let ((__tmp139389 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139389 '())))
    (define vector-port::t
      (let ((__tmp139390 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139390 '())))
    (define string-port::t
      (let ((__tmp139391 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139391 '())))
    (define u8vector-port::t
      (let ((__tmp139392 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139392 '())))
    (define raw-device-port::t
      (let ((__tmp139393 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139393 '())))
    (define tcp-server-port::t
      (let ((__tmp139394 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139394 '())))
    (define udp-port::t
      (let ((__tmp139395 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139395 '())))
    (define directory-port::t
      (let ((__tmp139396 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139396 '())))
    (define event-queue-port::t
      (let ((__tmp139397 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139397 '())))
    (define table::t
      (let ((__tmp139398 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp139398 '())))
    (define readenv::t
      (let ((__tmp139399 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp139399 '())))
    (define writeenv::t
      (let ((__tmp139400 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp139400 '())))
    (define readtable::t
      (let ((__tmp139401 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp139401 '())))
    (define processor::t
      (let ((__tmp139402 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp139402 '())))
    (define vm::t
      (let ((__tmp139403 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp139403 '())))
    (define file-info::t
      (let ((__tmp139404 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139404 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp139405 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139405 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp139406 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139406 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj139319%_)
        (let ((_%$e139321%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj139319%_)))))
          (if _%$e139321%_
              _%$e139321%_
              (not (let ((__tmp139407
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj139319%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp139407 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj139317%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139317%_))
            (builtin-object? _%obj139317%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj139315%_)
        (if (let () (declare (not safe)) (##structure? _%obj139315%_))
            (not (let ((__tmp139408
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj139315%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp139408 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj139313%_)
        (if (let () (declare (not safe)) (immediate? _%obj139313%_))
            (if (char? _%obj139313%_)
                '#f
                (if (fixnum? _%obj139313%_) '#f (not (flonum? _%obj139313%_))))
            '#f)))
    (define special?
      (lambda (_%obj139311%_)
        (let () (declare (not safe)) (##special? _%obj139311%_))))
    (define unbound? (lambda (_%obj139309%_) (eq? _%obj139309%_ '#!unbound)))
    (define unbound2? (lambda (_%obj139307%_) (eq? _%obj139307%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj139299%_)
        (let ((_%$e139301%_ (eq? _%obj139299%_ '#!key)))
          (if _%$e139301%_
              _%$e139301%_
              (let ((_%$e139304%_ (eq? _%obj139299%_ '#!optional)))
                (if _%$e139304%_ _%$e139304%_ (eq? _%obj139299%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj139297%_) (eq? _%obj139297%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj139295%_) (eq? _%obj139295%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj139293%_) (eq? _%obj139293%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj139291%_)
        (if (flonum? _%obj139291%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj139291%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj139289%_)
        (if (flonum? _%obj139289%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj139289%_))
            '#f)))
    (define sequence?
      (lambda (_%obj139281%_)
        (let ((_%$e139283%_ (vector? _%obj139281%_)))
          (if _%$e139283%_
              _%$e139283%_
              (let ((_%$e139286%_ (string? _%obj139281%_)))
                (if _%$e139286%_ _%$e139286%_ (hvector? _%obj139281%_)))))))
    (define hvector?
      (lambda (_%obj139252%_)
        (let ((_%$e139254%_ (u8vector? _%obj139252%_)))
          (if _%$e139254%_
              _%$e139254%_
              (let ((_%$e139257%_ (s8vector? _%obj139252%_)))
                (if _%$e139257%_
                    _%$e139257%_
                    (let ((_%$e139260%_ (u16vector? _%obj139252%_)))
                      (if _%$e139260%_
                          _%$e139260%_
                          (let ((_%$e139263%_ (s16vector? _%obj139252%_)))
                            (if _%$e139263%_
                                _%$e139263%_
                                (let ((_%$e139266%_
                                       (u32vector? _%obj139252%_)))
                                  (if _%$e139266%_
                                      _%$e139266%_
                                      (let ((_%$e139269%_
                                             (s32vector? _%obj139252%_)))
                                        (if _%$e139269%_
                                            _%$e139269%_
                                            (let ((_%$e139272%_
                                                   (u64vector? _%obj139252%_)))
                                              (if _%$e139272%_
                                                  _%$e139272%_
                                                  (let ((_%$e139275%_
                                                         (s64vector?
                                                          _%obj139252%_)))
                                                    (if _%$e139275%_
                                                        _%$e139275%_
                                                        (let ((_%$e139278%_
                                                               (f32vector?
                                                                _%obj139252%_)))
                                                          (if _%$e139278%_
                                                              _%$e139278%_
                                                              (f64vector?
                                                               _%obj139252%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj139250%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139250%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj139250%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj139248%_)
        (let ((__tmp139409
               (let ((__tmp139410 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp139410))))
          (declare (not safe))
          (##structure-instance-of? _%obj139248%_ __tmp139409))))
    (define character-port?
      (lambda (_%obj139246%_)
        (let ((__tmp139411
               (let ((__tmp139412 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp139412))))
          (declare (not safe))
          (##structure-instance-of? _%obj139246%_ __tmp139411))))
    (define byte-port?
      (lambda (_%obj139244%_)
        (let ((__tmp139413
               (let ((__tmp139414 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp139414))))
          (declare (not safe))
          (##structure-instance-of? _%obj139244%_ __tmp139413))))
    (define device-port?
      (lambda (_%obj139242%_)
        (let ((__tmp139415
               (let ((__tmp139416 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp139416))))
          (declare (not safe))
          (##structure-instance-of? _%obj139242%_ __tmp139415))))
    (define vector-port?
      (lambda (_%obj139240%_)
        (let ((__tmp139417
               (let ((__tmp139418 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp139418))))
          (declare (not safe))
          (##structure-instance-of? _%obj139240%_ __tmp139417))))
    (define string-port?
      (lambda (_%obj139238%_)
        (let ((__tmp139419
               (let ((__tmp139420 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp139420))))
          (declare (not safe))
          (##structure-instance-of? _%obj139238%_ __tmp139419))))
    (define u8vector-port?
      (lambda (_%obj139236%_)
        (let ((__tmp139421
               (let ((__tmp139422 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp139422))))
          (declare (not safe))
          (##structure-instance-of? _%obj139236%_ __tmp139421))))
    (define raw-device-port?
      (lambda (_%obj139234%_)
        (let ((__tmp139423
               (let ((__tmp139424 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp139424))))
          (declare (not safe))
          (##structure-instance-of? _%obj139234%_ __tmp139423))))
    (define tcp-server-port?
      (lambda (_%obj139232%_)
        (let ((__tmp139425
               (let ((__tmp139426 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp139426))))
          (declare (not safe))
          (##structure-instance-of? _%obj139232%_ __tmp139425))))
    (define udp-port?
      (lambda (_%obj139230%_)
        (let ((__tmp139427
               (let ((__tmp139428 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp139428))))
          (declare (not safe))
          (##structure-instance-of? _%obj139230%_ __tmp139427))))
    (define directory-port?
      (lambda (_%obj139228%_)
        (let ((__tmp139429
               (let ((__tmp139430 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp139430))))
          (declare (not safe))
          (##structure-instance-of? _%obj139228%_ __tmp139429))))
    (define event-queue-port?
      (lambda (_%obj139226%_)
        (let ((__tmp139431
               (let ((__tmp139432 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp139432))))
          (declare (not safe))
          (##structure-instance-of? _%obj139226%_ __tmp139431))))
    (define readenv?
      (lambda (_%obj139224%_)
        (let ((__tmp139433
               (let ((__tmp139434 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp139434))))
          (declare (not safe))
          (##structure-instance-of? _%obj139224%_ __tmp139433))))
    (define writeenv?
      (lambda (_%obj139222%_)
        (let ((__tmp139435
               (let ((__tmp139436 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp139436))))
          (declare (not safe))
          (##structure-instance-of? _%obj139222%_ __tmp139435))))
    (define vm?
      (lambda (_%obj139220%_)
        (let ((__tmp139437
               (let ((__tmp139438 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp139438))))
          (declare (not safe))
          (##structure-instance-of? _%obj139220%_ __tmp139437))))))
