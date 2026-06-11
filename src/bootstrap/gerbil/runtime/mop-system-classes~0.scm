(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1781138349)
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
      (let ((__tmp141532 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp141532 '())))
    (define subtyped::t
      (let ((__tmp141533 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp141533 '())))
    (define structure::t
      (let ((__tmp141534 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp141534 '())))
    (define immediate::t
      (let ((__tmp141535 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp141535 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp141536 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp141536 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp141537 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp141537 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp141538 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp141538 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp141539 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp141539 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp141540 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp141540 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp141541 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp141541 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp141542 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp141542 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp141543 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp141543 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp141544 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp141544 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp141545 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp141545 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp141546 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp141546 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp141547 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp141547 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp141548 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp141548 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp141549 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp141549 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp141550 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp141550 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp141551 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp141551 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp141552 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp141552 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp141553 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp141553 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp141554 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp141554 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp141555 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp141555 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp141556 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp141556 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp141557 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp141557 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp141558 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp141558 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp141559 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp141559 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp141560 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp141560 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp141561 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp141561 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp141562 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp141562 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp141563 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp141563 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp141564 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp141564 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp141565 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp141565 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp141566 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp141566 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp141567 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp141567 '())))
    (define pair::t
      (let ((__tmp141568 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp141568 '())))
    (define null::t
      (let ((__tmp141569 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp141569 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp141570 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp141570 '())))
    (define vector::t
      (let ((__tmp141571 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp141571 '())))
    (define string::t
      (let ((__tmp141572 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp141572 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp141573 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp141573 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp141574 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp141574 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp141575 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp141575 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp141576 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp141576 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp141577 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp141577 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp141578 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp141578 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp141579 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp141579 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp141580 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp141580 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp141581 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp141581 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp141582 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp141582 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp141583 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp141583 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp141584 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp141584 '())))
    (define values::t
      (let ((__tmp141585 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp141585 '())))
    (define box::t
      (let ((__tmp141586 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp141586 '())))
    (define frame::t
      (let ((__tmp141587 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp141587 '())))
    (define continuation::t
      (let ((__tmp141588 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp141588 '())))
    (define promise::t
      (let ((__tmp141589 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp141589 '())))
    (define weak::t
      (let ((__tmp141590 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp141590 '())))
    (define foreign::t
      (let ((__tmp141591 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp141591 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp141592 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp141592 '())))
    (define return::t
      (let ((__tmp141593 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp141593 '())))
    (define time::t
      (let ((__tmp141594 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp141594 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp141595 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp141595 '())))
    (define thread-group::t
      (let ((__tmp141596 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp141596 '())))
    (define mutex::t
      (let ((__tmp141597 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp141597 '())))
    (define condvar::t
      (let ((__tmp141598 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp141598 '())))
    (define port::t
      (let ((__tmp141599 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141599 '())))
    (define object-port::t
      (let ((__tmp141600 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141600 '())))
    (define character-port::t
      (let ((__tmp141601 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141601 '())))
    (define byte-port::t
      (let ((__tmp141602 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141602 '())))
    (define device-port::t
      (let ((__tmp141603 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141603 '())))
    (define vector-port::t
      (let ((__tmp141604 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141604 '())))
    (define string-port::t
      (let ((__tmp141605 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141605 '())))
    (define u8vector-port::t
      (let ((__tmp141606 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141606 '())))
    (define raw-device-port::t
      (let ((__tmp141607 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141607 '())))
    (define tcp-server-port::t
      (let ((__tmp141608 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141608 '())))
    (define udp-port::t
      (let ((__tmp141609 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141609 '())))
    (define directory-port::t
      (let ((__tmp141610 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141610 '())))
    (define event-queue-port::t
      (let ((__tmp141611 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141611 '())))
    (define table::t
      (let ((__tmp141612 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp141612 '())))
    (define readenv::t
      (let ((__tmp141613 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp141613 '())))
    (define writeenv::t
      (let ((__tmp141614 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp141614 '())))
    (define readtable::t
      (let ((__tmp141615 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp141615 '())))
    (define processor::t
      (let ((__tmp141616 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp141616 '())))
    (define vm::t
      (let ((__tmp141617 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp141617 '())))
    (define file-info::t
      (let ((__tmp141618 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141618 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp141619 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141619 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp141620 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141620 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj141528%_)
        (let ((_%$e141530%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj141528%_)))))
          (if _%$e141530%_
              _%$e141530%_
              (not (let ((__tmp141621
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj141528%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp141621 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj141526%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141526%_))
            (builtin-object? _%obj141526%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj141524%_)
        (if (let () (declare (not safe)) (##structure? _%obj141524%_))
            (not (let ((__tmp141622
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj141524%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp141622 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj141522%_)
        (if (let () (declare (not safe)) (##special? _%obj141522%_))
            (let ((__tmp141623
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj141522%_ '0))))
              (declare (not safe))
              (##fx< __tmp141623 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj141520%_)
        (let () (declare (not safe)) (##special? _%obj141520%_))))
    (define unbound-object?
      (lambda (_%obj141518%_) (eq? _%obj141518%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj141516%_) (eq? _%obj141516%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj141514%_) (eq? _%obj141514%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj141512%_) (eq? _%obj141512%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj141510%_) (eq? _%obj141510%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj141502%_)
        (let ((_%$e141504%_ (eq? _%obj141502%_ '#!key)))
          (if _%$e141504%_
              _%$e141504%_
              (let ((_%$e141507%_ (eq? _%obj141502%_ '#!optional)))
                (if _%$e141507%_ _%$e141507%_ (eq? _%obj141502%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj141500%_) (eq? _%obj141500%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj141498%_) (eq? _%obj141498%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj141496%_) (eq? _%obj141496%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj141494%_)
        (if (flonum? _%obj141494%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj141494%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj141492%_)
        (if (flonum? _%obj141492%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj141492%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec141489%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec141489%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-string) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec141489%_ (macro-subtype-f64vector) '#t)
        _%vec141489%_))
    (define sequence?
      (lambda (_%obj141487%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141487%_))
            (let ((__tmp141624
                   (let () (declare (not safe)) (##subtype _%obj141487%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp141624))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec141484%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec141484%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec141484%_ (macro-subtype-f64vector) '#t)
        _%vec141484%_))
    (define hvector?
      (lambda (_%obj141482%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141482%_))
            (let ((__tmp141625
                   (let () (declare (not safe)) (##subtype _%obj141482%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp141625))
            '#f)))
    (define weak?
      (lambda (_%obj141480%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141480%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj141480%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj141478%_)
        (let ((__tmp141626
               (let ((__tmp141627 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp141627))))
          (declare (not safe))
          (##structure-instance-of? _%obj141478%_ __tmp141626))))
    (define character-port?
      (lambda (_%obj141476%_)
        (let ((__tmp141628
               (let ((__tmp141629 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp141629))))
          (declare (not safe))
          (##structure-instance-of? _%obj141476%_ __tmp141628))))
    (define byte-port?
      (lambda (_%obj141474%_)
        (let ((__tmp141630
               (let ((__tmp141631 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp141631))))
          (declare (not safe))
          (##structure-instance-of? _%obj141474%_ __tmp141630))))
    (define device-port?
      (lambda (_%obj141472%_)
        (let ((__tmp141632
               (let ((__tmp141633 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp141633))))
          (declare (not safe))
          (##structure-instance-of? _%obj141472%_ __tmp141632))))
    (define vector-port?
      (lambda (_%obj141470%_)
        (let ((__tmp141634
               (let ((__tmp141635 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp141635))))
          (declare (not safe))
          (##structure-instance-of? _%obj141470%_ __tmp141634))))
    (define string-port?
      (lambda (_%obj141468%_)
        (let ((__tmp141636
               (let ((__tmp141637 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp141637))))
          (declare (not safe))
          (##structure-instance-of? _%obj141468%_ __tmp141636))))
    (define u8vector-port?
      (lambda (_%obj141466%_)
        (let ((__tmp141638
               (let ((__tmp141639 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp141639))))
          (declare (not safe))
          (##structure-instance-of? _%obj141466%_ __tmp141638))))
    (define raw-device-port?
      (lambda (_%obj141464%_)
        (let ((__tmp141640
               (let ((__tmp141641 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp141641))))
          (declare (not safe))
          (##structure-instance-of? _%obj141464%_ __tmp141640))))
    (define tcp-server-port?
      (lambda (_%obj141462%_)
        (let ((__tmp141642
               (let ((__tmp141643 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp141643))))
          (declare (not safe))
          (##structure-instance-of? _%obj141462%_ __tmp141642))))
    (define udp-port?
      (lambda (_%obj141460%_)
        (let ((__tmp141644
               (let ((__tmp141645 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp141645))))
          (declare (not safe))
          (##structure-instance-of? _%obj141460%_ __tmp141644))))
    (define directory-port?
      (lambda (_%obj141458%_)
        (let ((__tmp141646
               (let ((__tmp141647 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp141647))))
          (declare (not safe))
          (##structure-instance-of? _%obj141458%_ __tmp141646))))
    (define event-queue-port?
      (lambda (_%obj141456%_)
        (let ((__tmp141648
               (let ((__tmp141649 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp141649))))
          (declare (not safe))
          (##structure-instance-of? _%obj141456%_ __tmp141648))))
    (define readenv?
      (lambda (_%obj141454%_)
        (let ((__tmp141650
               (let ((__tmp141651 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp141651))))
          (declare (not safe))
          (##structure-instance-of? _%obj141454%_ __tmp141650))))
    (define writeenv?
      (lambda (_%obj141452%_)
        (let ((__tmp141652
               (let ((__tmp141653 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp141653))))
          (declare (not safe))
          (##structure-instance-of? _%obj141452%_ __tmp141652))))
    (define vm?
      (lambda (_%obj141450%_)
        (let ((__tmp141654
               (let ((__tmp141655 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp141655))))
          (declare (not safe))
          (##structure-instance-of? _%obj141450%_ __tmp141654))))))
