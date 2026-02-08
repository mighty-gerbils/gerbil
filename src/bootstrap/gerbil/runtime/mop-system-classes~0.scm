(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1770513294)
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
      (let ((__tmp136540 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp136540 '())))
    (define subtyped::t
      (let ((__tmp136541 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp136541 '())))
    (define structure::t
      (let ((__tmp136542 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp136542 '())))
    (define immediate::t
      (let ((__tmp136543 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp136543 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp136544 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp136544 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp136545 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp136545 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp136546 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp136546 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp136547 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp136547 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp136548 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp136548 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp136549 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp136549 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp136550 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp136550 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp136551 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp136551 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp136552 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp136552 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp136553 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp136553 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp136554 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp136554 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp136555 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp136555 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp136556 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp136556 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp136557 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp136557 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp136558 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp136558 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp136559 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp136559 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp136560 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp136560 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp136561 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp136561 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp136562 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp136562 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp136563 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp136563 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp136564 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp136564 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp136565 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp136565 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp136566 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp136566 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp136567 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp136567 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp136568 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp136568 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp136569 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp136569 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp136570 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp136570 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp136571 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp136571 '())))
    (define pair::t
      (let ((__tmp136572 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp136572 '())))
    (define null::t
      (let ((__tmp136573 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp136573 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp136574 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp136574 '())))
    (define vector::t
      (let ((__tmp136575 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp136575 '())))
    (define string::t
      (let ((__tmp136576 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp136576 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp136577 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp136577 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp136578 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp136578 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp136579 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp136579 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp136580 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp136580 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp136581 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp136581 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp136582 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp136582 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp136583 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp136583 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp136584 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp136584 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp136585 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp136585 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp136586 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp136586 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp136587 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp136587 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp136588 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp136588 '())))
    (define box::t
      (let ((__tmp136589 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp136589 '())))
    (define frame::t
      (let ((__tmp136590 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp136590 '())))
    (define continuation::t
      (let ((__tmp136591 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp136591 '())))
    (define promise::t
      (let ((__tmp136592 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp136592 '())))
    (define weak::t
      (let ((__tmp136593 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp136593 '())))
    (define foreign::t
      (let ((__tmp136594 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp136594 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp136595 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp136595 '())))
    (define return::t
      (let ((__tmp136596 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp136596 '())))
    (define time::t
      (let ((__tmp136597 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp136597 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp136598 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp136598 '())))
    (define thread-group::t
      (let ((__tmp136599 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp136599 '())))
    (define mutex::t
      (let ((__tmp136600 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp136600 '())))
    (define condvar::t
      (let ((__tmp136601 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp136601 '())))
    (define port::t
      (let ((__tmp136602 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136602 '())))
    (define object-port::t
      (let ((__tmp136603 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136603 '())))
    (define character-port::t
      (let ((__tmp136604 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136604 '())))
    (define byte-port::t
      (let ((__tmp136605 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136605 '())))
    (define device-port::t
      (let ((__tmp136606 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136606 '())))
    (define vector-port::t
      (let ((__tmp136607 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136607 '())))
    (define string-port::t
      (let ((__tmp136608 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136608 '())))
    (define u8vector-port::t
      (let ((__tmp136609 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136609 '())))
    (define raw-device-port::t
      (let ((__tmp136610 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136610 '())))
    (define tcp-server-port::t
      (let ((__tmp136611 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136611 '())))
    (define udp-port::t
      (let ((__tmp136612 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136612 '())))
    (define directory-port::t
      (let ((__tmp136613 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136613 '())))
    (define event-queue-port::t
      (let ((__tmp136614 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136614 '())))
    (define table::t
      (let ((__tmp136615 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp136615 '())))
    (define readenv::t
      (let ((__tmp136616 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp136616 '())))
    (define writeenv::t
      (let ((__tmp136617 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp136617 '())))
    (define readtable::t
      (let ((__tmp136618 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp136618 '())))
    (define processor::t
      (let ((__tmp136619 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp136619 '())))
    (define vm::t
      (let ((__tmp136620 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp136620 '())))
    (define file-info::t
      (let ((__tmp136621 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136621 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp136622 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136622 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp136623 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136623 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj136536%_)
        (let ((_%$e136538%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj136536%_)))))
          (if _%$e136538%_
              _%$e136538%_
              (not (let ((__tmp136624
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj136536%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp136624 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj136534%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj136534%_))
            (builtin-object? _%obj136534%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj136532%_)
        (if (let () (declare (not safe)) (##structure? _%obj136532%_))
            (not (let ((__tmp136625
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj136532%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp136625 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj136530%_)
        (if (let () (declare (not safe)) (immediate? _%obj136530%_))
            (if (char? _%obj136530%_)
                '#f
                (if (fixnum? _%obj136530%_) '#f (not (flonum? _%obj136530%_))))
            '#f)))
    (define special?
      (lambda (_%obj136528%_)
        (let () (declare (not safe)) (##special? _%obj136528%_))))
    (define unbound? (lambda (_%obj136526%_) (eq? _%obj136526%_ '#!unbound)))
    (define unbound2? (lambda (_%obj136524%_) (eq? _%obj136524%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj136516%_)
        (let ((_%$e136518%_ (eq? _%obj136516%_ '#!key)))
          (if _%$e136518%_
              _%$e136518%_
              (let ((_%$e136521%_ (eq? _%obj136516%_ '#!optional)))
                (if _%$e136521%_ _%$e136521%_ (eq? _%obj136516%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj136514%_) (eq? _%obj136514%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj136512%_) (eq? _%obj136512%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj136510%_) (eq? _%obj136510%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj136508%_)
        (if (flonum? _%obj136508%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj136508%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj136506%_)
        (if (flonum? _%obj136506%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj136506%_))
            '#f)))
    (define sequence?
      (lambda (_%obj136498%_)
        (let ((_%$e136500%_ (vector? _%obj136498%_)))
          (if _%$e136500%_
              _%$e136500%_
              (let ((_%$e136503%_ (string? _%obj136498%_)))
                (if _%$e136503%_ _%$e136503%_ (hvector? _%obj136498%_)))))))
    (define hvector?
      (lambda (_%obj136469%_)
        (let ((_%$e136471%_ (u8vector? _%obj136469%_)))
          (if _%$e136471%_
              _%$e136471%_
              (let ((_%$e136474%_ (s8vector? _%obj136469%_)))
                (if _%$e136474%_
                    _%$e136474%_
                    (let ((_%$e136477%_ (u16vector? _%obj136469%_)))
                      (if _%$e136477%_
                          _%$e136477%_
                          (let ((_%$e136480%_ (s16vector? _%obj136469%_)))
                            (if _%$e136480%_
                                _%$e136480%_
                                (let ((_%$e136483%_
                                       (u32vector? _%obj136469%_)))
                                  (if _%$e136483%_
                                      _%$e136483%_
                                      (let ((_%$e136486%_
                                             (s32vector? _%obj136469%_)))
                                        (if _%$e136486%_
                                            _%$e136486%_
                                            (let ((_%$e136489%_
                                                   (u64vector? _%obj136469%_)))
                                              (if _%$e136489%_
                                                  _%$e136489%_
                                                  (let ((_%$e136492%_
                                                         (s64vector?
                                                          _%obj136469%_)))
                                                    (if _%$e136492%_
                                                        _%$e136492%_
                                                        (let ((_%$e136495%_
                                                               (f32vector?
                                                                _%obj136469%_)))
                                                          (if _%$e136495%_
                                                              _%$e136495%_
                                                              (f64vector?
                                                               _%obj136469%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj136467%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj136467%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj136467%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj136465%_)
        (let ((__tmp136626
               (let ((__tmp136627 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp136627))))
          (declare (not safe))
          (##structure-instance-of? _%obj136465%_ __tmp136626))))
    (define character-port?
      (lambda (_%obj136463%_)
        (let ((__tmp136628
               (let ((__tmp136629 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp136629))))
          (declare (not safe))
          (##structure-instance-of? _%obj136463%_ __tmp136628))))
    (define device-port?
      (lambda (_%obj136461%_)
        (let ((__tmp136630
               (let ((__tmp136631 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp136631))))
          (declare (not safe))
          (##structure-instance-of? _%obj136461%_ __tmp136630))))
    (define vector-port?
      (lambda (_%obj136459%_)
        (let ((__tmp136632
               (let ((__tmp136633 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp136633))))
          (declare (not safe))
          (##structure-instance-of? _%obj136459%_ __tmp136632))))
    (define string-port?
      (lambda (_%obj136457%_)
        (let ((__tmp136634
               (let ((__tmp136635 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp136635))))
          (declare (not safe))
          (##structure-instance-of? _%obj136457%_ __tmp136634))))
    (define u8vector-port?
      (lambda (_%obj136455%_)
        (let ((__tmp136636
               (let ((__tmp136637 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp136637))))
          (declare (not safe))
          (##structure-instance-of? _%obj136455%_ __tmp136636))))
    (define raw-device-port?
      (lambda (_%obj136453%_)
        (let ((__tmp136638
               (let ((__tmp136639 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp136639))))
          (declare (not safe))
          (##structure-instance-of? _%obj136453%_ __tmp136638))))
    (define tcp-server-port?
      (lambda (_%obj136451%_)
        (let ((__tmp136640
               (let ((__tmp136641 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp136641))))
          (declare (not safe))
          (##structure-instance-of? _%obj136451%_ __tmp136640))))
    (define udp-port?
      (lambda (_%obj136449%_)
        (let ((__tmp136642
               (let ((__tmp136643 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp136643))))
          (declare (not safe))
          (##structure-instance-of? _%obj136449%_ __tmp136642))))
    (define directory-port?
      (lambda (_%obj136447%_)
        (let ((__tmp136644
               (let ((__tmp136645 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp136645))))
          (declare (not safe))
          (##structure-instance-of? _%obj136447%_ __tmp136644))))
    (define event-queue-port?
      (lambda (_%obj136445%_)
        (let ((__tmp136646
               (let ((__tmp136647 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp136647))))
          (declare (not safe))
          (##structure-instance-of? _%obj136445%_ __tmp136646))))
    (define readenv?
      (lambda (_%obj136443%_)
        (let ((__tmp136648
               (let ((__tmp136649 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp136649))))
          (declare (not safe))
          (##structure-instance-of? _%obj136443%_ __tmp136648))))
    (define writeenv?
      (lambda (_%obj136441%_)
        (let ((__tmp136650
               (let ((__tmp136651 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp136651))))
          (declare (not safe))
          (##structure-instance-of? _%obj136441%_ __tmp136650))))
    (define vm?
      (lambda (_%obj136439%_)
        (let ((__tmp136652
               (let ((__tmp136653 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp136653))))
          (declare (not safe))
          (##structure-instance-of? _%obj136439%_ __tmp136652))))))
