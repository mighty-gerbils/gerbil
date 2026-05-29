(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1779967241)
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
      (let ((__tmp141436 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp141436 '())))
    (define subtyped::t
      (let ((__tmp141437 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp141437 '())))
    (define structure::t
      (let ((__tmp141438 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp141438 '())))
    (define immediate::t
      (let ((__tmp141439 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp141439 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp141440 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp141440 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp141441 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp141441 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp141442 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp141442 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp141443 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp141443 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp141444 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp141444 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp141445 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp141445 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp141446 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp141446 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp141447 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp141447 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp141448 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp141448 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp141449 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp141449 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp141450 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp141450 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp141451 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp141451 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp141452 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp141452 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp141453 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp141453 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp141454 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp141454 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp141455 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp141455 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp141456 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp141456 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp141457 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp141457 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp141458 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp141458 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp141459 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp141459 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp141460 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp141460 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp141461 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp141461 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp141462 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp141462 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp141463 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp141463 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp141464 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp141464 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp141465 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp141465 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp141466 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp141466 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp141467 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp141467 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp141468 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp141468 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp141469 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp141469 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp141470 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp141470 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp141471 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp141471 '())))
    (define pair::t
      (let ((__tmp141472 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp141472 '())))
    (define null::t
      (let ((__tmp141473 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp141473 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp141474 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp141474 '())))
    (define vector::t
      (let ((__tmp141475 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp141475 '())))
    (define string::t
      (let ((__tmp141476 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp141476 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp141477 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp141477 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp141478 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp141478 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp141479 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp141479 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp141480 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp141480 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp141481 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp141481 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp141482 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp141482 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp141483 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp141483 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp141484 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp141484 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp141485 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp141485 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp141486 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp141486 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp141487 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp141487 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp141488 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp141488 '())))
    (define values::t
      (let ((__tmp141489 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp141489 '())))
    (define box::t
      (let ((__tmp141490 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp141490 '())))
    (define frame::t
      (let ((__tmp141491 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp141491 '())))
    (define continuation::t
      (let ((__tmp141492 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp141492 '())))
    (define promise::t
      (let ((__tmp141493 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp141493 '())))
    (define weak::t
      (let ((__tmp141494 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp141494 '())))
    (define foreign::t
      (let ((__tmp141495 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp141495 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp141496 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp141496 '())))
    (define return::t
      (let ((__tmp141497 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp141497 '())))
    (define time::t
      (let ((__tmp141498 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp141498 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp141499 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp141499 '())))
    (define thread-group::t
      (let ((__tmp141500 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp141500 '())))
    (define mutex::t
      (let ((__tmp141501 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp141501 '())))
    (define condvar::t
      (let ((__tmp141502 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp141502 '())))
    (define port::t
      (let ((__tmp141503 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141503 '())))
    (define object-port::t
      (let ((__tmp141504 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141504 '())))
    (define character-port::t
      (let ((__tmp141505 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141505 '())))
    (define byte-port::t
      (let ((__tmp141506 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141506 '())))
    (define device-port::t
      (let ((__tmp141507 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141507 '())))
    (define vector-port::t
      (let ((__tmp141508 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141508 '())))
    (define string-port::t
      (let ((__tmp141509 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141509 '())))
    (define u8vector-port::t
      (let ((__tmp141510 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141510 '())))
    (define raw-device-port::t
      (let ((__tmp141511 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141511 '())))
    (define tcp-server-port::t
      (let ((__tmp141512 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141512 '())))
    (define udp-port::t
      (let ((__tmp141513 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141513 '())))
    (define directory-port::t
      (let ((__tmp141514 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141514 '())))
    (define event-queue-port::t
      (let ((__tmp141515 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141515 '())))
    (define table::t
      (let ((__tmp141516 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp141516 '())))
    (define readenv::t
      (let ((__tmp141517 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp141517 '())))
    (define writeenv::t
      (let ((__tmp141518 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp141518 '())))
    (define readtable::t
      (let ((__tmp141519 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp141519 '())))
    (define processor::t
      (let ((__tmp141520 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp141520 '())))
    (define vm::t
      (let ((__tmp141521 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp141521 '())))
    (define file-info::t
      (let ((__tmp141522 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141522 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp141523 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141523 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp141524 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141524 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj141432%_)
        (let ((_%$e141434%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj141432%_)))))
          (if _%$e141434%_
              _%$e141434%_
              (not (let ((__tmp141525
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj141432%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp141525 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj141430%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141430%_))
            (builtin-object? _%obj141430%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj141428%_)
        (if (let () (declare (not safe)) (##structure? _%obj141428%_))
            (not (let ((__tmp141526
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj141428%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp141526 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj141426%_)
        (if (let () (declare (not safe)) (##special? _%obj141426%_))
            (let ((__tmp141527
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj141426%_ '0))))
              (declare (not safe))
              (##fx< __tmp141527 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj141424%_)
        (let () (declare (not safe)) (##special? _%obj141424%_))))
    (define unbound-object?
      (lambda (_%obj141422%_) (eq? _%obj141422%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj141420%_) (eq? _%obj141420%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj141418%_) (eq? _%obj141418%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj141416%_) (eq? _%obj141416%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj141414%_) (eq? _%obj141414%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj141406%_)
        (let ((_%$e141408%_ (eq? _%obj141406%_ '#!key)))
          (if _%$e141408%_
              _%$e141408%_
              (let ((_%$e141411%_ (eq? _%obj141406%_ '#!optional)))
                (if _%$e141411%_ _%$e141411%_ (eq? _%obj141406%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj141404%_) (eq? _%obj141404%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj141402%_) (eq? _%obj141402%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj141400%_) (eq? _%obj141400%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj141398%_)
        (if (flonum? _%obj141398%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj141398%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj141396%_)
        (if (flonum? _%obj141396%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj141396%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec141393%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec141393%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-string) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec141393%_ (macro-subtype-f64vector) '#t)
        _%vec141393%_))
    (define sequence?
      (lambda (_%obj141391%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141391%_))
            (let ((__tmp141528
                   (let () (declare (not safe)) (##subtype _%obj141391%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp141528))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec141388%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec141388%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec141388%_ (macro-subtype-f64vector) '#t)
        _%vec141388%_))
    (define hvector?
      (lambda (_%obj141386%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141386%_))
            (let ((__tmp141529
                   (let () (declare (not safe)) (##subtype _%obj141386%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp141529))
            '#f)))
    (define weak?
      (lambda (_%obj141384%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141384%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj141384%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj141382%_)
        (let ((__tmp141530
               (let ((__tmp141531 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp141531))))
          (declare (not safe))
          (##structure-instance-of? _%obj141382%_ __tmp141530))))
    (define character-port?
      (lambda (_%obj141380%_)
        (let ((__tmp141532
               (let ((__tmp141533 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp141533))))
          (declare (not safe))
          (##structure-instance-of? _%obj141380%_ __tmp141532))))
    (define byte-port?
      (lambda (_%obj141378%_)
        (let ((__tmp141534
               (let ((__tmp141535 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp141535))))
          (declare (not safe))
          (##structure-instance-of? _%obj141378%_ __tmp141534))))
    (define device-port?
      (lambda (_%obj141376%_)
        (let ((__tmp141536
               (let ((__tmp141537 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp141537))))
          (declare (not safe))
          (##structure-instance-of? _%obj141376%_ __tmp141536))))
    (define vector-port?
      (lambda (_%obj141374%_)
        (let ((__tmp141538
               (let ((__tmp141539 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp141539))))
          (declare (not safe))
          (##structure-instance-of? _%obj141374%_ __tmp141538))))
    (define string-port?
      (lambda (_%obj141372%_)
        (let ((__tmp141540
               (let ((__tmp141541 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp141541))))
          (declare (not safe))
          (##structure-instance-of? _%obj141372%_ __tmp141540))))
    (define u8vector-port?
      (lambda (_%obj141370%_)
        (let ((__tmp141542
               (let ((__tmp141543 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp141543))))
          (declare (not safe))
          (##structure-instance-of? _%obj141370%_ __tmp141542))))
    (define raw-device-port?
      (lambda (_%obj141368%_)
        (let ((__tmp141544
               (let ((__tmp141545 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp141545))))
          (declare (not safe))
          (##structure-instance-of? _%obj141368%_ __tmp141544))))
    (define tcp-server-port?
      (lambda (_%obj141366%_)
        (let ((__tmp141546
               (let ((__tmp141547 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp141547))))
          (declare (not safe))
          (##structure-instance-of? _%obj141366%_ __tmp141546))))
    (define udp-port?
      (lambda (_%obj141364%_)
        (let ((__tmp141548
               (let ((__tmp141549 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp141549))))
          (declare (not safe))
          (##structure-instance-of? _%obj141364%_ __tmp141548))))
    (define directory-port?
      (lambda (_%obj141362%_)
        (let ((__tmp141550
               (let ((__tmp141551 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp141551))))
          (declare (not safe))
          (##structure-instance-of? _%obj141362%_ __tmp141550))))
    (define event-queue-port?
      (lambda (_%obj141360%_)
        (let ((__tmp141552
               (let ((__tmp141553 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp141553))))
          (declare (not safe))
          (##structure-instance-of? _%obj141360%_ __tmp141552))))
    (define readenv?
      (lambda (_%obj141358%_)
        (let ((__tmp141554
               (let ((__tmp141555 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp141555))))
          (declare (not safe))
          (##structure-instance-of? _%obj141358%_ __tmp141554))))
    (define writeenv?
      (lambda (_%obj141356%_)
        (let ((__tmp141556
               (let ((__tmp141557 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp141557))))
          (declare (not safe))
          (##structure-instance-of? _%obj141356%_ __tmp141556))))
    (define vm?
      (lambda (_%obj141354%_)
        (let ((__tmp141558
               (let ((__tmp141559 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp141559))))
          (declare (not safe))
          (##structure-instance-of? _%obj141354%_ __tmp141558))))))
