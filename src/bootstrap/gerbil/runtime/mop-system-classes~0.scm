(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1770607521)
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
      (let ((__tmp137610 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp137610 '())))
    (define subtyped::t
      (let ((__tmp137611 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp137611 '())))
    (define structure::t
      (let ((__tmp137612 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp137612 '())))
    (define immediate::t
      (let ((__tmp137613 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp137613 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp137614 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp137614 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp137615 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp137615 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp137616 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp137616 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp137617 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp137617 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp137618 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp137618 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp137619 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp137619 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp137620 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp137620 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp137621 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp137621 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp137622 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp137622 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp137623 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp137623 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp137624 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp137624 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp137625 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp137625 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp137626 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp137626 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp137627 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp137627 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp137628 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp137628 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp137629 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp137629 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp137630 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp137630 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp137631 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp137631 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp137632 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp137632 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp137633 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp137633 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp137634 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp137634 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp137635 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp137635 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp137636 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp137636 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp137637 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp137637 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp137638 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp137638 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp137639 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp137639 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp137640 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp137640 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp137641 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp137641 '())))
    (define pair::t
      (let ((__tmp137642 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp137642 '())))
    (define null::t
      (let ((__tmp137643 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp137643 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp137644 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp137644 '())))
    (define vector::t
      (let ((__tmp137645 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp137645 '())))
    (define string::t
      (let ((__tmp137646 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp137646 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp137647 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp137647 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp137648 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp137648 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp137649 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp137649 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp137650 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp137650 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp137651 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp137651 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp137652 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp137652 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp137653 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp137653 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp137654 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp137654 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp137655 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp137655 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp137656 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp137656 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp137657 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp137657 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp137658 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp137658 '())))
    (define box::t
      (let ((__tmp137659 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp137659 '())))
    (define frame::t
      (let ((__tmp137660 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp137660 '())))
    (define continuation::t
      (let ((__tmp137661 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp137661 '())))
    (define promise::t
      (let ((__tmp137662 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp137662 '())))
    (define weak::t
      (let ((__tmp137663 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp137663 '())))
    (define foreign::t
      (let ((__tmp137664 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp137664 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp137665 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp137665 '())))
    (define return::t
      (let ((__tmp137666 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp137666 '())))
    (define time::t
      (let ((__tmp137667 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp137667 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp137668 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp137668 '())))
    (define thread-group::t
      (let ((__tmp137669 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp137669 '())))
    (define mutex::t
      (let ((__tmp137670 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp137670 '())))
    (define condvar::t
      (let ((__tmp137671 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp137671 '())))
    (define port::t
      (let ((__tmp137672 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137672 '())))
    (define object-port::t
      (let ((__tmp137673 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137673 '())))
    (define character-port::t
      (let ((__tmp137674 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137674 '())))
    (define byte-port::t
      (let ((__tmp137675 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137675 '())))
    (define device-port::t
      (let ((__tmp137676 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137676 '())))
    (define vector-port::t
      (let ((__tmp137677 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137677 '())))
    (define string-port::t
      (let ((__tmp137678 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137678 '())))
    (define u8vector-port::t
      (let ((__tmp137679 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137679 '())))
    (define raw-device-port::t
      (let ((__tmp137680 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137680 '())))
    (define tcp-server-port::t
      (let ((__tmp137681 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137681 '())))
    (define udp-port::t
      (let ((__tmp137682 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137682 '())))
    (define directory-port::t
      (let ((__tmp137683 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137683 '())))
    (define event-queue-port::t
      (let ((__tmp137684 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp137684 '())))
    (define table::t
      (let ((__tmp137685 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp137685 '())))
    (define readenv::t
      (let ((__tmp137686 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp137686 '())))
    (define writeenv::t
      (let ((__tmp137687 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp137687 '())))
    (define readtable::t
      (let ((__tmp137688 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp137688 '())))
    (define processor::t
      (let ((__tmp137689 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp137689 '())))
    (define vm::t
      (let ((__tmp137690 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp137690 '())))
    (define file-info::t
      (let ((__tmp137691 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp137691 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp137692 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp137692 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp137693 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp137693 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj137606%_)
        (let ((_%$e137608%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj137606%_)))))
          (if _%$e137608%_
              _%$e137608%_
              (not (let ((__tmp137694
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj137606%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp137694 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj137604%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj137604%_))
            (builtin-object? _%obj137604%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj137602%_)
        (if (let () (declare (not safe)) (##structure? _%obj137602%_))
            (not (let ((__tmp137695
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj137602%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp137695 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj137600%_)
        (if (let () (declare (not safe)) (immediate? _%obj137600%_))
            (if (char? _%obj137600%_)
                '#f
                (if (fixnum? _%obj137600%_) '#f (not (flonum? _%obj137600%_))))
            '#f)))
    (define special?
      (lambda (_%obj137598%_)
        (let () (declare (not safe)) (##special? _%obj137598%_))))
    (define unbound? (lambda (_%obj137596%_) (eq? _%obj137596%_ '#!unbound)))
    (define unbound2? (lambda (_%obj137594%_) (eq? _%obj137594%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj137586%_)
        (let ((_%$e137588%_ (eq? _%obj137586%_ '#!key)))
          (if _%$e137588%_
              _%$e137588%_
              (let ((_%$e137591%_ (eq? _%obj137586%_ '#!optional)))
                (if _%$e137591%_ _%$e137591%_ (eq? _%obj137586%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj137584%_) (eq? _%obj137584%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj137582%_) (eq? _%obj137582%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj137580%_) (eq? _%obj137580%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj137578%_)
        (if (flonum? _%obj137578%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj137578%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj137576%_)
        (if (flonum? _%obj137576%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj137576%_))
            '#f)))
    (define sequence?
      (lambda (_%obj137568%_)
        (let ((_%$e137570%_ (vector? _%obj137568%_)))
          (if _%$e137570%_
              _%$e137570%_
              (let ((_%$e137573%_ (string? _%obj137568%_)))
                (if _%$e137573%_ _%$e137573%_ (hvector? _%obj137568%_)))))))
    (define hvector?
      (lambda (_%obj137539%_)
        (let ((_%$e137541%_ (u8vector? _%obj137539%_)))
          (if _%$e137541%_
              _%$e137541%_
              (let ((_%$e137544%_ (s8vector? _%obj137539%_)))
                (if _%$e137544%_
                    _%$e137544%_
                    (let ((_%$e137547%_ (u16vector? _%obj137539%_)))
                      (if _%$e137547%_
                          _%$e137547%_
                          (let ((_%$e137550%_ (s16vector? _%obj137539%_)))
                            (if _%$e137550%_
                                _%$e137550%_
                                (let ((_%$e137553%_
                                       (u32vector? _%obj137539%_)))
                                  (if _%$e137553%_
                                      _%$e137553%_
                                      (let ((_%$e137556%_
                                             (s32vector? _%obj137539%_)))
                                        (if _%$e137556%_
                                            _%$e137556%_
                                            (let ((_%$e137559%_
                                                   (u64vector? _%obj137539%_)))
                                              (if _%$e137559%_
                                                  _%$e137559%_
                                                  (let ((_%$e137562%_
                                                         (s64vector?
                                                          _%obj137539%_)))
                                                    (if _%$e137562%_
                                                        _%$e137562%_
                                                        (let ((_%$e137565%_
                                                               (f32vector?
                                                                _%obj137539%_)))
                                                          (if _%$e137565%_
                                                              _%$e137565%_
                                                              (f64vector?
                                                               _%obj137539%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj137537%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj137537%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj137537%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj137535%_)
        (let ((__tmp137696
               (let ((__tmp137697 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp137697))))
          (declare (not safe))
          (##structure-instance-of? _%obj137535%_ __tmp137696))))
    (define character-port?
      (lambda (_%obj137533%_)
        (let ((__tmp137698
               (let ((__tmp137699 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp137699))))
          (declare (not safe))
          (##structure-instance-of? _%obj137533%_ __tmp137698))))
    (define device-port?
      (lambda (_%obj137531%_)
        (let ((__tmp137700
               (let ((__tmp137701 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp137701))))
          (declare (not safe))
          (##structure-instance-of? _%obj137531%_ __tmp137700))))
    (define vector-port?
      (lambda (_%obj137529%_)
        (let ((__tmp137702
               (let ((__tmp137703 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp137703))))
          (declare (not safe))
          (##structure-instance-of? _%obj137529%_ __tmp137702))))
    (define string-port?
      (lambda (_%obj137527%_)
        (let ((__tmp137704
               (let ((__tmp137705 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp137705))))
          (declare (not safe))
          (##structure-instance-of? _%obj137527%_ __tmp137704))))
    (define u8vector-port?
      (lambda (_%obj137525%_)
        (let ((__tmp137706
               (let ((__tmp137707 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp137707))))
          (declare (not safe))
          (##structure-instance-of? _%obj137525%_ __tmp137706))))
    (define raw-device-port?
      (lambda (_%obj137523%_)
        (let ((__tmp137708
               (let ((__tmp137709 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp137709))))
          (declare (not safe))
          (##structure-instance-of? _%obj137523%_ __tmp137708))))
    (define tcp-server-port?
      (lambda (_%obj137521%_)
        (let ((__tmp137710
               (let ((__tmp137711 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp137711))))
          (declare (not safe))
          (##structure-instance-of? _%obj137521%_ __tmp137710))))
    (define udp-port?
      (lambda (_%obj137519%_)
        (let ((__tmp137712
               (let ((__tmp137713 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp137713))))
          (declare (not safe))
          (##structure-instance-of? _%obj137519%_ __tmp137712))))
    (define directory-port?
      (lambda (_%obj137517%_)
        (let ((__tmp137714
               (let ((__tmp137715 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp137715))))
          (declare (not safe))
          (##structure-instance-of? _%obj137517%_ __tmp137714))))
    (define event-queue-port?
      (lambda (_%obj137515%_)
        (let ((__tmp137716
               (let ((__tmp137717 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp137717))))
          (declare (not safe))
          (##structure-instance-of? _%obj137515%_ __tmp137716))))
    (define readenv?
      (lambda (_%obj137513%_)
        (let ((__tmp137718
               (let ((__tmp137719 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp137719))))
          (declare (not safe))
          (##structure-instance-of? _%obj137513%_ __tmp137718))))
    (define writeenv?
      (lambda (_%obj137511%_)
        (let ((__tmp137720
               (let ((__tmp137721 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp137721))))
          (declare (not safe))
          (##structure-instance-of? _%obj137511%_ __tmp137720))))
    (define vm?
      (lambda (_%obj137509%_)
        (let ((__tmp137722
               (let ((__tmp137723 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp137723))))
          (declare (not safe))
          (##structure-instance-of? _%obj137509%_ __tmp137722))))))
