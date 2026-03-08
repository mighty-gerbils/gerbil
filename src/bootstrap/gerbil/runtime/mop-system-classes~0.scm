(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1773012983)
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
      (let ((__tmp140411 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp140411 '())))
    (define subtyped::t
      (let ((__tmp140412 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp140412 '())))
    (define structure::t
      (let ((__tmp140413 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp140413 '())))
    (define immediate::t
      (let ((__tmp140414 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp140414 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp140415 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp140415 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp140416 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp140416 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp140417 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp140417 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp140418 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp140418 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp140419 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp140419 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp140420 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp140420 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp140421 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp140421 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp140422 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp140422 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp140423 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp140423 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp140424 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp140424 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp140425 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp140425 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp140426 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp140426 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp140427 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp140427 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp140428 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp140428 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp140429 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp140429 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp140430 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp140430 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp140431 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp140431 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp140432 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp140432 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp140433 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp140433 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp140434 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp140434 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp140435 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp140435 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp140436 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp140436 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp140437 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp140437 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp140438 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp140438 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp140439 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp140439 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp140440 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp140440 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp140441 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp140441 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp140442 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp140442 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp140443 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp140443 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp140444 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp140444 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp140445 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp140445 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp140446 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp140446 '())))
    (define pair::t
      (let ((__tmp140447 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp140447 '())))
    (define null::t
      (let ((__tmp140448 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp140448 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp140449 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp140449 '())))
    (define vector::t
      (let ((__tmp140450 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp140450 '())))
    (define string::t
      (let ((__tmp140451 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp140451 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp140452 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp140452 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp140453 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp140453 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp140454 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp140454 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp140455 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp140455 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp140456 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp140456 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp140457 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp140457 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp140458 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp140458 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp140459 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp140459 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp140460 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp140460 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp140461 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp140461 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp140462 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp140462 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp140463 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp140463 '())))
    (define values::t
      (let ((__tmp140464 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp140464 '())))
    (define box::t
      (let ((__tmp140465 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp140465 '())))
    (define frame::t
      (let ((__tmp140466 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp140466 '())))
    (define continuation::t
      (let ((__tmp140467 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp140467 '())))
    (define promise::t
      (let ((__tmp140468 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp140468 '())))
    (define weak::t
      (let ((__tmp140469 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp140469 '())))
    (define foreign::t
      (let ((__tmp140470 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp140470 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp140471 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp140471 '())))
    (define return::t
      (let ((__tmp140472 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp140472 '())))
    (define time::t
      (let ((__tmp140473 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp140473 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp140474 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp140474 '())))
    (define thread-group::t
      (let ((__tmp140475 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp140475 '())))
    (define mutex::t
      (let ((__tmp140476 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp140476 '())))
    (define condvar::t
      (let ((__tmp140477 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp140477 '())))
    (define port::t
      (let ((__tmp140478 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140478 '())))
    (define object-port::t
      (let ((__tmp140479 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140479 '())))
    (define character-port::t
      (let ((__tmp140480 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140480 '())))
    (define byte-port::t
      (let ((__tmp140481 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140481 '())))
    (define device-port::t
      (let ((__tmp140482 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140482 '())))
    (define vector-port::t
      (let ((__tmp140483 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140483 '())))
    (define string-port::t
      (let ((__tmp140484 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140484 '())))
    (define u8vector-port::t
      (let ((__tmp140485 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140485 '())))
    (define raw-device-port::t
      (let ((__tmp140486 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140486 '())))
    (define tcp-server-port::t
      (let ((__tmp140487 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140487 '())))
    (define udp-port::t
      (let ((__tmp140488 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140488 '())))
    (define directory-port::t
      (let ((__tmp140489 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140489 '())))
    (define event-queue-port::t
      (let ((__tmp140490 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140490 '())))
    (define table::t
      (let ((__tmp140491 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp140491 '())))
    (define readenv::t
      (let ((__tmp140492 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp140492 '())))
    (define writeenv::t
      (let ((__tmp140493 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp140493 '())))
    (define readtable::t
      (let ((__tmp140494 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp140494 '())))
    (define processor::t
      (let ((__tmp140495 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp140495 '())))
    (define vm::t
      (let ((__tmp140496 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp140496 '())))
    (define file-info::t
      (let ((__tmp140497 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140497 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp140498 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140498 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp140499 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140499 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj140407%_)
        (let ((_%$e140409%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj140407%_)))))
          (if _%$e140409%_
              _%$e140409%_
              (not (let ((__tmp140500
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj140407%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp140500 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj140405%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140405%_))
            (builtin-object? _%obj140405%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj140403%_)
        (if (let () (declare (not safe)) (##structure? _%obj140403%_))
            (not (let ((__tmp140501
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj140403%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp140501 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj140401%_)
        (if (let () (declare (not safe)) (##special? _%obj140401%_))
            (let ((__tmp140502
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj140401%_ '0))))
              (declare (not safe))
              (##fx< __tmp140502 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj140399%_)
        (let () (declare (not safe)) (##special? _%obj140399%_))))
    (define unbound-object?
      (lambda (_%obj140397%_) (eq? _%obj140397%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj140395%_) (eq? _%obj140395%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj140393%_) (eq? _%obj140393%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj140391%_) (eq? _%obj140391%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj140389%_) (eq? _%obj140389%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj140381%_)
        (let ((_%$e140383%_ (eq? _%obj140381%_ '#!key)))
          (if _%$e140383%_
              _%$e140383%_
              (let ((_%$e140386%_ (eq? _%obj140381%_ '#!optional)))
                (if _%$e140386%_ _%$e140386%_ (eq? _%obj140381%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj140379%_) (eq? _%obj140379%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj140377%_) (eq? _%obj140377%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj140375%_) (eq? _%obj140375%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj140373%_)
        (if (flonum? _%obj140373%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj140373%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj140371%_)
        (if (flonum? _%obj140371%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj140371%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec140368%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec140368%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-string) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec140368%_ (macro-subtype-f64vector) '#t)
        _%vec140368%_))
    (define sequence?
      (lambda (_%obj140366%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140366%_))
            (let ((__tmp140503
                   (let () (declare (not safe)) (##subtype _%obj140366%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp140503))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec140363%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec140363%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec140363%_ (macro-subtype-f64vector) '#t)
        _%vec140363%_))
    (define hvector?
      (lambda (_%obj140361%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140361%_))
            (let ((__tmp140504
                   (let () (declare (not safe)) (##subtype _%obj140361%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp140504))
            '#f)))
    (define weak?
      (lambda (_%obj140359%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140359%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj140359%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj140357%_)
        (let ((__tmp140505
               (let ((__tmp140506 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp140506))))
          (declare (not safe))
          (##structure-instance-of? _%obj140357%_ __tmp140505))))
    (define character-port?
      (lambda (_%obj140355%_)
        (let ((__tmp140507
               (let ((__tmp140508 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp140508))))
          (declare (not safe))
          (##structure-instance-of? _%obj140355%_ __tmp140507))))
    (define byte-port?
      (lambda (_%obj140353%_)
        (let ((__tmp140509
               (let ((__tmp140510 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp140510))))
          (declare (not safe))
          (##structure-instance-of? _%obj140353%_ __tmp140509))))
    (define device-port?
      (lambda (_%obj140351%_)
        (let ((__tmp140511
               (let ((__tmp140512 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp140512))))
          (declare (not safe))
          (##structure-instance-of? _%obj140351%_ __tmp140511))))
    (define vector-port?
      (lambda (_%obj140349%_)
        (let ((__tmp140513
               (let ((__tmp140514 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp140514))))
          (declare (not safe))
          (##structure-instance-of? _%obj140349%_ __tmp140513))))
    (define string-port?
      (lambda (_%obj140347%_)
        (let ((__tmp140515
               (let ((__tmp140516 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp140516))))
          (declare (not safe))
          (##structure-instance-of? _%obj140347%_ __tmp140515))))
    (define u8vector-port?
      (lambda (_%obj140345%_)
        (let ((__tmp140517
               (let ((__tmp140518 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp140518))))
          (declare (not safe))
          (##structure-instance-of? _%obj140345%_ __tmp140517))))
    (define raw-device-port?
      (lambda (_%obj140343%_)
        (let ((__tmp140519
               (let ((__tmp140520 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp140520))))
          (declare (not safe))
          (##structure-instance-of? _%obj140343%_ __tmp140519))))
    (define tcp-server-port?
      (lambda (_%obj140341%_)
        (let ((__tmp140521
               (let ((__tmp140522 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp140522))))
          (declare (not safe))
          (##structure-instance-of? _%obj140341%_ __tmp140521))))
    (define udp-port?
      (lambda (_%obj140339%_)
        (let ((__tmp140523
               (let ((__tmp140524 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp140524))))
          (declare (not safe))
          (##structure-instance-of? _%obj140339%_ __tmp140523))))
    (define directory-port?
      (lambda (_%obj140337%_)
        (let ((__tmp140525
               (let ((__tmp140526 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp140526))))
          (declare (not safe))
          (##structure-instance-of? _%obj140337%_ __tmp140525))))
    (define event-queue-port?
      (lambda (_%obj140335%_)
        (let ((__tmp140527
               (let ((__tmp140528 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp140528))))
          (declare (not safe))
          (##structure-instance-of? _%obj140335%_ __tmp140527))))
    (define readenv?
      (lambda (_%obj140333%_)
        (let ((__tmp140529
               (let ((__tmp140530 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp140530))))
          (declare (not safe))
          (##structure-instance-of? _%obj140333%_ __tmp140529))))
    (define writeenv?
      (lambda (_%obj140331%_)
        (let ((__tmp140531
               (let ((__tmp140532 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp140532))))
          (declare (not safe))
          (##structure-instance-of? _%obj140331%_ __tmp140531))))
    (define vm?
      (lambda (_%obj140329%_)
        (let ((__tmp140533
               (let ((__tmp140534 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp140534))))
          (declare (not safe))
          (##structure-instance-of? _%obj140329%_ __tmp140533))))))
