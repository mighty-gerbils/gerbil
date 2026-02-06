(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1770338920)
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
      (let ((__tmp117383 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp117383 '())))
    (define subtyped::t
      (let ((__tmp117384 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp117384 '())))
    (define structure::t
      (let ((__tmp117385 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp117385 '())))
    (define immediate::t
      (let ((__tmp117386 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp117386 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp117387 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp117387 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp117388 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp117388 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp117389 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp117389 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp117390 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp117390 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp117391 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp117391 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp117392 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp117392 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp117393 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp117393 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp117394 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp117394 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp117395 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp117395 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp117396 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp117396 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp117397 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp117397 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp117398 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp117398 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp117399 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp117399 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp117400 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp117400 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp117401 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp117401 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp117402 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp117402 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp117403 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp117403 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp117404 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp117404 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp117405 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp117405 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp117406 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp117406 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp117407 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp117407 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp117408 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp117408 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp117409 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp117409 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp117410 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp117410 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp117411 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp117411 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp117412 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp117412 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp117413 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp117413 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp117414 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp117414 '())))
    (define pair::t
      (let ((__tmp117415 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp117415 '())))
    (define null::t
      (let ((__tmp117416 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp117416 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp117417 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp117417 '())))
    (define vector::t
      (let ((__tmp117418 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp117418 '())))
    (define string::t
      (let ((__tmp117419 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp117419 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp117420 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp117420 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp117421 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp117421 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp117422 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp117422 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp117423 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp117423 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp117424 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp117424 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp117425 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp117425 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp117426 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp117426 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp117427 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp117427 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp117428 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp117428 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp117429 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp117429 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp117430 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp117430 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp117431 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp117431 '())))
    (define box::t
      (let ((__tmp117432 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp117432 '())))
    (define frame::t
      (let ((__tmp117433 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp117433 '())))
    (define continuation::t
      (let ((__tmp117434 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp117434 '())))
    (define promise::t
      (let ((__tmp117435 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp117435 '())))
    (define weak::t
      (let ((__tmp117436 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp117436 '())))
    (define foreign::t
      (let ((__tmp117437 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp117437 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp117438 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp117438 '())))
    (define return::t
      (let ((__tmp117439 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp117439 '())))
    (define time::t
      (let ((__tmp117440 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp117440 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp117441 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp117441 '())))
    (define thread-group::t
      (let ((__tmp117442 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp117442 '())))
    (define mutex::t
      (let ((__tmp117443 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp117443 '())))
    (define condvar::t
      (let ((__tmp117444 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp117444 '())))
    (define port::t
      (let ((__tmp117445 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117445 '())))
    (define object-port::t
      (let ((__tmp117446 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117446 '())))
    (define character-port::t
      (let ((__tmp117447 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117447 '())))
    (define byte-port::t
      (let ((__tmp117448 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117448 '())))
    (define device-port::t
      (let ((__tmp117449 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117449 '())))
    (define vector-port::t
      (let ((__tmp117450 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117450 '())))
    (define string-port::t
      (let ((__tmp117451 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117451 '())))
    (define u8vector-port::t
      (let ((__tmp117452 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117452 '())))
    (define raw-device-port::t
      (let ((__tmp117453 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117453 '())))
    (define tcp-server-port::t
      (let ((__tmp117454 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117454 '())))
    (define udp-port::t
      (let ((__tmp117455 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117455 '())))
    (define directory-port::t
      (let ((__tmp117456 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117456 '())))
    (define event-queue-port::t
      (let ((__tmp117457 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp117457 '())))
    (define table::t
      (let ((__tmp117458 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp117458 '())))
    (define readenv::t
      (let ((__tmp117459 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp117459 '())))
    (define writeenv::t
      (let ((__tmp117460 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp117460 '())))
    (define readtable::t
      (let ((__tmp117461 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp117461 '())))
    (define processor::t
      (let ((__tmp117462 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp117462 '())))
    (define vm::t
      (let ((__tmp117463 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp117463 '())))
    (define file-info::t
      (let ((__tmp117464 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp117464 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp117465 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp117465 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp117466 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp117466 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj117379%_)
        (let ((_%$e117381%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj117379%_)))))
          (if _%$e117381%_
              _%$e117381%_
              (not (let ((__tmp117467
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj117379%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp117467 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj117377%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj117377%_))
            (builtin-object? _%obj117377%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj117375%_)
        (if (let () (declare (not safe)) (##structure? _%obj117375%_))
            (not (let ((__tmp117468
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj117375%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp117468 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj117373%_)
        (if (let () (declare (not safe)) (immediate? _%obj117373%_))
            (if (char? _%obj117373%_)
                '#f
                (if (fixnum? _%obj117373%_) '#f (not (flonum? _%obj117373%_))))
            '#f)))
    (define special?
      (lambda (_%obj117371%_)
        (let () (declare (not safe)) (##special? _%obj117371%_))))
    (define unbound? (lambda (_%obj117369%_) (eq? _%obj117369%_ '#!unbound)))
    (define unbound2? (lambda (_%obj117367%_) (eq? _%obj117367%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj117359%_)
        (let ((_%$e117361%_ (eq? _%obj117359%_ '#!key)))
          (if _%$e117361%_
              _%$e117361%_
              (let ((_%$e117364%_ (eq? _%obj117359%_ '#!optional)))
                (if _%$e117364%_ _%$e117364%_ (eq? _%obj117359%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj117357%_) (eq? _%obj117357%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj117355%_) (eq? _%obj117355%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj117353%_) (eq? _%obj117353%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj117351%_)
        (if (flonum? _%obj117351%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj117351%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj117349%_)
        (if (flonum? _%obj117349%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj117349%_))
            '#f)))
    (define sequence?
      (lambda (_%obj117341%_)
        (let ((_%$e117343%_ (vector? _%obj117341%_)))
          (if _%$e117343%_
              _%$e117343%_
              (let ((_%$e117346%_ (string? _%obj117341%_)))
                (if _%$e117346%_ _%$e117346%_ (hvector? _%obj117341%_)))))))
    (define hvector?
      (lambda (_%obj117312%_)
        (let ((_%$e117314%_ (u8vector? _%obj117312%_)))
          (if _%$e117314%_
              _%$e117314%_
              (let ((_%$e117317%_ (s8vector? _%obj117312%_)))
                (if _%$e117317%_
                    _%$e117317%_
                    (let ((_%$e117320%_ (u16vector? _%obj117312%_)))
                      (if _%$e117320%_
                          _%$e117320%_
                          (let ((_%$e117323%_ (s16vector? _%obj117312%_)))
                            (if _%$e117323%_
                                _%$e117323%_
                                (let ((_%$e117326%_
                                       (u32vector? _%obj117312%_)))
                                  (if _%$e117326%_
                                      _%$e117326%_
                                      (let ((_%$e117329%_
                                             (s32vector? _%obj117312%_)))
                                        (if _%$e117329%_
                                            _%$e117329%_
                                            (let ((_%$e117332%_
                                                   (u64vector? _%obj117312%_)))
                                              (if _%$e117332%_
                                                  _%$e117332%_
                                                  (let ((_%$e117335%_
                                                         (s64vector?
                                                          _%obj117312%_)))
                                                    (if _%$e117335%_
                                                        _%$e117335%_
                                                        (let ((_%$e117338%_
                                                               (f32vector?
                                                                _%obj117312%_)))
                                                          (if _%$e117338%_
                                                              _%$e117338%_
                                                              (f64vector?
                                                               _%obj117312%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj117310%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj117310%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj117310%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj117308%_)
        (let ((__tmp117469
               (let ((__tmp117470 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp117470))))
          (declare (not safe))
          (##structure-instance-of? _%obj117308%_ __tmp117469))))
    (define character-port?
      (lambda (_%obj117306%_)
        (let ((__tmp117471
               (let ((__tmp117472 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp117472))))
          (declare (not safe))
          (##structure-instance-of? _%obj117306%_ __tmp117471))))
    (define device-port?
      (lambda (_%obj117304%_)
        (let ((__tmp117473
               (let ((__tmp117474 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp117474))))
          (declare (not safe))
          (##structure-instance-of? _%obj117304%_ __tmp117473))))
    (define vector-port?
      (lambda (_%obj117302%_)
        (let ((__tmp117475
               (let ((__tmp117476 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp117476))))
          (declare (not safe))
          (##structure-instance-of? _%obj117302%_ __tmp117475))))
    (define string-port?
      (lambda (_%obj117300%_)
        (let ((__tmp117477
               (let ((__tmp117478 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp117478))))
          (declare (not safe))
          (##structure-instance-of? _%obj117300%_ __tmp117477))))
    (define u8vector-port?
      (lambda (_%obj117298%_)
        (let ((__tmp117479
               (let ((__tmp117480 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp117480))))
          (declare (not safe))
          (##structure-instance-of? _%obj117298%_ __tmp117479))))
    (define raw-device-port?
      (lambda (_%obj117296%_)
        (let ((__tmp117481
               (let ((__tmp117482 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp117482))))
          (declare (not safe))
          (##structure-instance-of? _%obj117296%_ __tmp117481))))
    (define tcp-server-port?
      (lambda (_%obj117294%_)
        (let ((__tmp117483
               (let ((__tmp117484 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp117484))))
          (declare (not safe))
          (##structure-instance-of? _%obj117294%_ __tmp117483))))
    (define udp-port?
      (lambda (_%obj117292%_)
        (let ((__tmp117485
               (let ((__tmp117486 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp117486))))
          (declare (not safe))
          (##structure-instance-of? _%obj117292%_ __tmp117485))))
    (define directory-port?
      (lambda (_%obj117290%_)
        (let ((__tmp117487
               (let ((__tmp117488 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp117488))))
          (declare (not safe))
          (##structure-instance-of? _%obj117290%_ __tmp117487))))
    (define event-queue-port?
      (lambda (_%obj117288%_)
        (let ((__tmp117489
               (let ((__tmp117490 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp117490))))
          (declare (not safe))
          (##structure-instance-of? _%obj117288%_ __tmp117489))))
    (define readenv?
      (lambda (_%obj117286%_)
        (let ((__tmp117491
               (let ((__tmp117492 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp117492))))
          (declare (not safe))
          (##structure-instance-of? _%obj117286%_ __tmp117491))))
    (define writeenv?
      (lambda (_%obj117284%_)
        (let ((__tmp117493
               (let ((__tmp117494 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp117494))))
          (declare (not safe))
          (##structure-instance-of? _%obj117284%_ __tmp117493))))
    (define vm?
      (lambda (_%obj117282%_)
        (let ((__tmp117495
               (let ((__tmp117496 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp117496))))
          (declare (not safe))
          (##structure-instance-of? _%obj117282%_ __tmp117495))))))
