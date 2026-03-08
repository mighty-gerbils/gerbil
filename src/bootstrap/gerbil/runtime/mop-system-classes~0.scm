(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1773009263)
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
      (let ((__tmp140401 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp140401 '())))
    (define subtyped::t
      (let ((__tmp140402 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp140402 '())))
    (define structure::t
      (let ((__tmp140403 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp140403 '())))
    (define immediate::t
      (let ((__tmp140404 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp140404 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp140405 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp140405 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp140406 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp140406 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp140407 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp140407 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp140408 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp140408 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp140409 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp140409 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp140410 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp140410 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp140411 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp140411 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp140412 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp140412 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp140413 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp140413 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp140414 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp140414 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp140415 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp140415 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp140416 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp140416 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp140417 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp140417 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp140418 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp140418 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp140419 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp140419 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp140420 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp140420 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp140421 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp140421 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp140422 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp140422 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp140423 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp140423 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp140424 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp140424 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp140425 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp140425 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp140426 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp140426 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp140427 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp140427 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp140428 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp140428 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp140429 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp140429 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp140430 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp140430 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp140431 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp140431 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp140432 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp140432 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp140433 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp140433 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp140434 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp140434 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp140435 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp140435 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp140436 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp140436 '())))
    (define pair::t
      (let ((__tmp140437 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp140437 '())))
    (define null::t
      (let ((__tmp140438 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp140438 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp140439 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp140439 '())))
    (define vector::t
      (let ((__tmp140440 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp140440 '())))
    (define string::t
      (let ((__tmp140441 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp140441 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp140442 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp140442 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp140443 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp140443 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp140444 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp140444 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp140445 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp140445 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp140446 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp140446 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp140447 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp140447 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp140448 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp140448 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp140449 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp140449 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp140450 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp140450 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp140451 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp140451 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp140452 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp140452 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp140453 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp140453 '())))
    (define values::t
      (let ((__tmp140454 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp140454 '())))
    (define box::t
      (let ((__tmp140455 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp140455 '())))
    (define frame::t
      (let ((__tmp140456 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp140456 '())))
    (define continuation::t
      (let ((__tmp140457 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp140457 '())))
    (define promise::t
      (let ((__tmp140458 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp140458 '())))
    (define weak::t
      (let ((__tmp140459 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp140459 '())))
    (define foreign::t
      (let ((__tmp140460 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp140460 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp140461 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp140461 '())))
    (define return::t
      (let ((__tmp140462 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp140462 '())))
    (define time::t
      (let ((__tmp140463 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp140463 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp140464 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp140464 '())))
    (define thread-group::t
      (let ((__tmp140465 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp140465 '())))
    (define mutex::t
      (let ((__tmp140466 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp140466 '())))
    (define condvar::t
      (let ((__tmp140467 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp140467 '())))
    (define port::t
      (let ((__tmp140468 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140468 '())))
    (define object-port::t
      (let ((__tmp140469 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140469 '())))
    (define character-port::t
      (let ((__tmp140470 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140470 '())))
    (define byte-port::t
      (let ((__tmp140471 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140471 '())))
    (define device-port::t
      (let ((__tmp140472 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140472 '())))
    (define vector-port::t
      (let ((__tmp140473 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140473 '())))
    (define string-port::t
      (let ((__tmp140474 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140474 '())))
    (define u8vector-port::t
      (let ((__tmp140475 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140475 '())))
    (define raw-device-port::t
      (let ((__tmp140476 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140476 '())))
    (define tcp-server-port::t
      (let ((__tmp140477 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140477 '())))
    (define udp-port::t
      (let ((__tmp140478 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140478 '())))
    (define directory-port::t
      (let ((__tmp140479 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140479 '())))
    (define event-queue-port::t
      (let ((__tmp140480 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140480 '())))
    (define table::t
      (let ((__tmp140481 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp140481 '())))
    (define readenv::t
      (let ((__tmp140482 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp140482 '())))
    (define writeenv::t
      (let ((__tmp140483 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp140483 '())))
    (define readtable::t
      (let ((__tmp140484 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp140484 '())))
    (define processor::t
      (let ((__tmp140485 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp140485 '())))
    (define vm::t
      (let ((__tmp140486 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp140486 '())))
    (define file-info::t
      (let ((__tmp140487 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140487 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp140488 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140488 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp140489 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140489 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj140397%_)
        (let ((_%$e140399%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj140397%_)))))
          (if _%$e140399%_
              _%$e140399%_
              (not (let ((__tmp140490
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj140397%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp140490 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj140395%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140395%_))
            (builtin-object? _%obj140395%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj140393%_)
        (if (let () (declare (not safe)) (##structure? _%obj140393%_))
            (not (let ((__tmp140491
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj140393%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp140491 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj140391%_)
        (if (let () (declare (not safe)) (##special? _%obj140391%_))
            (let ((__tmp140492
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj140391%_ '0))))
              (declare (not safe))
              (##fx< __tmp140492 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj140389%_)
        (let () (declare (not safe)) (##special? _%obj140389%_))))
    (define unbound-object?
      (lambda (_%obj140387%_) (eq? _%obj140387%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj140385%_) (eq? _%obj140385%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj140383%_) (eq? _%obj140383%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj140381%_) (eq? _%obj140381%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj140379%_) (eq? _%obj140379%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj140371%_)
        (let ((_%$e140373%_ (eq? _%obj140371%_ '#!key)))
          (if _%$e140373%_
              _%$e140373%_
              (let ((_%$e140376%_ (eq? _%obj140371%_ '#!optional)))
                (if _%$e140376%_ _%$e140376%_ (eq? _%obj140371%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj140369%_) (eq? _%obj140369%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj140367%_) (eq? _%obj140367%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj140365%_) (eq? _%obj140365%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj140363%_)
        (if (flonum? _%obj140363%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj140363%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj140361%_)
        (if (flonum? _%obj140361%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj140361%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec140358%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec140358%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-string) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec140358%_ (macro-subtype-f64vector) '#t)
        _%vec140358%_))
    (define sequence?
      (lambda (_%obj140356%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140356%_))
            (let ((__tmp140493
                   (let () (declare (not safe)) (##subtype _%obj140356%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp140493))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec140353%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec140353%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec140353%_ (macro-subtype-f64vector) '#t)
        _%vec140353%_))
    (define hvector?
      (lambda (_%obj140351%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140351%_))
            (let ((__tmp140494
                   (let () (declare (not safe)) (##subtype _%obj140351%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp140494))
            '#f)))
    (define weak?
      (lambda (_%obj140349%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140349%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj140349%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj140347%_)
        (let ((__tmp140495
               (let ((__tmp140496 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp140496))))
          (declare (not safe))
          (##structure-instance-of? _%obj140347%_ __tmp140495))))
    (define character-port?
      (lambda (_%obj140345%_)
        (let ((__tmp140497
               (let ((__tmp140498 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp140498))))
          (declare (not safe))
          (##structure-instance-of? _%obj140345%_ __tmp140497))))
    (define byte-port?
      (lambda (_%obj140343%_)
        (let ((__tmp140499
               (let ((__tmp140500 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp140500))))
          (declare (not safe))
          (##structure-instance-of? _%obj140343%_ __tmp140499))))
    (define device-port?
      (lambda (_%obj140341%_)
        (let ((__tmp140501
               (let ((__tmp140502 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp140502))))
          (declare (not safe))
          (##structure-instance-of? _%obj140341%_ __tmp140501))))
    (define vector-port?
      (lambda (_%obj140339%_)
        (let ((__tmp140503
               (let ((__tmp140504 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp140504))))
          (declare (not safe))
          (##structure-instance-of? _%obj140339%_ __tmp140503))))
    (define string-port?
      (lambda (_%obj140337%_)
        (let ((__tmp140505
               (let ((__tmp140506 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp140506))))
          (declare (not safe))
          (##structure-instance-of? _%obj140337%_ __tmp140505))))
    (define u8vector-port?
      (lambda (_%obj140335%_)
        (let ((__tmp140507
               (let ((__tmp140508 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp140508))))
          (declare (not safe))
          (##structure-instance-of? _%obj140335%_ __tmp140507))))
    (define raw-device-port?
      (lambda (_%obj140333%_)
        (let ((__tmp140509
               (let ((__tmp140510 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp140510))))
          (declare (not safe))
          (##structure-instance-of? _%obj140333%_ __tmp140509))))
    (define tcp-server-port?
      (lambda (_%obj140331%_)
        (let ((__tmp140511
               (let ((__tmp140512 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp140512))))
          (declare (not safe))
          (##structure-instance-of? _%obj140331%_ __tmp140511))))
    (define udp-port?
      (lambda (_%obj140329%_)
        (let ((__tmp140513
               (let ((__tmp140514 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp140514))))
          (declare (not safe))
          (##structure-instance-of? _%obj140329%_ __tmp140513))))
    (define directory-port?
      (lambda (_%obj140327%_)
        (let ((__tmp140515
               (let ((__tmp140516 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp140516))))
          (declare (not safe))
          (##structure-instance-of? _%obj140327%_ __tmp140515))))
    (define event-queue-port?
      (lambda (_%obj140325%_)
        (let ((__tmp140517
               (let ((__tmp140518 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp140518))))
          (declare (not safe))
          (##structure-instance-of? _%obj140325%_ __tmp140517))))
    (define readenv?
      (lambda (_%obj140323%_)
        (let ((__tmp140519
               (let ((__tmp140520 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp140520))))
          (declare (not safe))
          (##structure-instance-of? _%obj140323%_ __tmp140519))))
    (define writeenv?
      (lambda (_%obj140321%_)
        (let ((__tmp140521
               (let ((__tmp140522 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp140522))))
          (declare (not safe))
          (##structure-instance-of? _%obj140321%_ __tmp140521))))
    (define vm?
      (lambda (_%obj140319%_)
        (let ((__tmp140523
               (let ((__tmp140524 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp140524))))
          (declare (not safe))
          (##structure-instance-of? _%obj140319%_ __tmp140523))))))
