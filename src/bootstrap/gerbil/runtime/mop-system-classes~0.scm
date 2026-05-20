(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1779274768)
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
      (let ((__tmp140658 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp140658 '())))
    (define subtyped::t
      (let ((__tmp140659 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp140659 '())))
    (define structure::t
      (let ((__tmp140660 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp140660 '())))
    (define immediate::t
      (let ((__tmp140661 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp140661 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp140662 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp140662 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp140663 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp140663 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp140664 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp140664 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp140665 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp140665 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp140666 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp140666 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp140667 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp140667 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp140668 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp140668 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp140669 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp140669 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp140670 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp140670 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp140671 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp140671 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp140672 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp140672 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp140673 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp140673 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp140674 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp140674 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp140675 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp140675 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp140676 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp140676 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp140677 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp140677 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp140678 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp140678 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp140679 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp140679 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp140680 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp140680 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp140681 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp140681 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp140682 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp140682 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp140683 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp140683 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp140684 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp140684 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp140685 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp140685 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp140686 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp140686 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp140687 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp140687 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp140688 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp140688 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp140689 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp140689 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp140690 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp140690 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp140691 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp140691 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp140692 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp140692 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp140693 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp140693 '())))
    (define pair::t
      (let ((__tmp140694 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp140694 '())))
    (define null::t
      (let ((__tmp140695 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp140695 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp140696 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp140696 '())))
    (define vector::t
      (let ((__tmp140697 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp140697 '())))
    (define string::t
      (let ((__tmp140698 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp140698 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp140699 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp140699 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp140700 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp140700 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp140701 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp140701 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp140702 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp140702 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp140703 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp140703 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp140704 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp140704 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp140705 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp140705 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp140706 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp140706 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp140707 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp140707 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp140708 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp140708 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp140709 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp140709 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp140710 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp140710 '())))
    (define values::t
      (let ((__tmp140711 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp140711 '())))
    (define box::t
      (let ((__tmp140712 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp140712 '())))
    (define frame::t
      (let ((__tmp140713 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp140713 '())))
    (define continuation::t
      (let ((__tmp140714 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp140714 '())))
    (define promise::t
      (let ((__tmp140715 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp140715 '())))
    (define weak::t
      (let ((__tmp140716 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp140716 '())))
    (define foreign::t
      (let ((__tmp140717 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp140717 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp140718 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp140718 '())))
    (define return::t
      (let ((__tmp140719 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp140719 '())))
    (define time::t
      (let ((__tmp140720 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp140720 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp140721 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp140721 '())))
    (define thread-group::t
      (let ((__tmp140722 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp140722 '())))
    (define mutex::t
      (let ((__tmp140723 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp140723 '())))
    (define condvar::t
      (let ((__tmp140724 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp140724 '())))
    (define port::t
      (let ((__tmp140725 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140725 '())))
    (define object-port::t
      (let ((__tmp140726 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140726 '())))
    (define character-port::t
      (let ((__tmp140727 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140727 '())))
    (define byte-port::t
      (let ((__tmp140728 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140728 '())))
    (define device-port::t
      (let ((__tmp140729 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140729 '())))
    (define vector-port::t
      (let ((__tmp140730 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140730 '())))
    (define string-port::t
      (let ((__tmp140731 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140731 '())))
    (define u8vector-port::t
      (let ((__tmp140732 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140732 '())))
    (define raw-device-port::t
      (let ((__tmp140733 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140733 '())))
    (define tcp-server-port::t
      (let ((__tmp140734 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140734 '())))
    (define udp-port::t
      (let ((__tmp140735 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140735 '())))
    (define directory-port::t
      (let ((__tmp140736 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140736 '())))
    (define event-queue-port::t
      (let ((__tmp140737 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp140737 '())))
    (define table::t
      (let ((__tmp140738 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp140738 '())))
    (define readenv::t
      (let ((__tmp140739 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp140739 '())))
    (define writeenv::t
      (let ((__tmp140740 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp140740 '())))
    (define readtable::t
      (let ((__tmp140741 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp140741 '())))
    (define processor::t
      (let ((__tmp140742 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp140742 '())))
    (define vm::t
      (let ((__tmp140743 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp140743 '())))
    (define file-info::t
      (let ((__tmp140744 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140744 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp140745 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140745 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp140746 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp140746 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj140654%_)
        (let ((_%$e140656%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj140654%_)))))
          (if _%$e140656%_
              _%$e140656%_
              (not (let ((__tmp140747
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj140654%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp140747 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj140652%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140652%_))
            (builtin-object? _%obj140652%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj140650%_)
        (if (let () (declare (not safe)) (##structure? _%obj140650%_))
            (not (let ((__tmp140748
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj140650%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp140748 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj140648%_)
        (if (let () (declare (not safe)) (##special? _%obj140648%_))
            (let ((__tmp140749
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj140648%_ '0))))
              (declare (not safe))
              (##fx< __tmp140749 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj140646%_)
        (let () (declare (not safe)) (##special? _%obj140646%_))))
    (define unbound-object?
      (lambda (_%obj140644%_) (eq? _%obj140644%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj140642%_) (eq? _%obj140642%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj140640%_) (eq? _%obj140640%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj140638%_) (eq? _%obj140638%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj140636%_) (eq? _%obj140636%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj140628%_)
        (let ((_%$e140630%_ (eq? _%obj140628%_ '#!key)))
          (if _%$e140630%_
              _%$e140630%_
              (let ((_%$e140633%_ (eq? _%obj140628%_ '#!optional)))
                (if _%$e140633%_ _%$e140633%_ (eq? _%obj140628%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj140626%_) (eq? _%obj140626%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj140624%_) (eq? _%obj140624%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj140622%_) (eq? _%obj140622%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj140620%_)
        (if (flonum? _%obj140620%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj140620%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj140618%_)
        (if (flonum? _%obj140618%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj140618%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec140615%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec140615%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-string) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec140615%_ (macro-subtype-f64vector) '#t)
        _%vec140615%_))
    (define sequence?
      (lambda (_%obj140613%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140613%_))
            (let ((__tmp140750
                   (let () (declare (not safe)) (##subtype _%obj140613%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp140750))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec140610%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec140610%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec140610%_ (macro-subtype-f64vector) '#t)
        _%vec140610%_))
    (define hvector?
      (lambda (_%obj140608%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140608%_))
            (let ((__tmp140751
                   (let () (declare (not safe)) (##subtype _%obj140608%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp140751))
            '#f)))
    (define weak?
      (lambda (_%obj140606%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj140606%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj140606%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj140604%_)
        (let ((__tmp140752
               (let ((__tmp140753 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp140753))))
          (declare (not safe))
          (##structure-instance-of? _%obj140604%_ __tmp140752))))
    (define character-port?
      (lambda (_%obj140602%_)
        (let ((__tmp140754
               (let ((__tmp140755 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp140755))))
          (declare (not safe))
          (##structure-instance-of? _%obj140602%_ __tmp140754))))
    (define byte-port?
      (lambda (_%obj140600%_)
        (let ((__tmp140756
               (let ((__tmp140757 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp140757))))
          (declare (not safe))
          (##structure-instance-of? _%obj140600%_ __tmp140756))))
    (define device-port?
      (lambda (_%obj140598%_)
        (let ((__tmp140758
               (let ((__tmp140759 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp140759))))
          (declare (not safe))
          (##structure-instance-of? _%obj140598%_ __tmp140758))))
    (define vector-port?
      (lambda (_%obj140596%_)
        (let ((__tmp140760
               (let ((__tmp140761 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp140761))))
          (declare (not safe))
          (##structure-instance-of? _%obj140596%_ __tmp140760))))
    (define string-port?
      (lambda (_%obj140594%_)
        (let ((__tmp140762
               (let ((__tmp140763 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp140763))))
          (declare (not safe))
          (##structure-instance-of? _%obj140594%_ __tmp140762))))
    (define u8vector-port?
      (lambda (_%obj140592%_)
        (let ((__tmp140764
               (let ((__tmp140765 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp140765))))
          (declare (not safe))
          (##structure-instance-of? _%obj140592%_ __tmp140764))))
    (define raw-device-port?
      (lambda (_%obj140590%_)
        (let ((__tmp140766
               (let ((__tmp140767 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp140767))))
          (declare (not safe))
          (##structure-instance-of? _%obj140590%_ __tmp140766))))
    (define tcp-server-port?
      (lambda (_%obj140588%_)
        (let ((__tmp140768
               (let ((__tmp140769 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp140769))))
          (declare (not safe))
          (##structure-instance-of? _%obj140588%_ __tmp140768))))
    (define udp-port?
      (lambda (_%obj140586%_)
        (let ((__tmp140770
               (let ((__tmp140771 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp140771))))
          (declare (not safe))
          (##structure-instance-of? _%obj140586%_ __tmp140770))))
    (define directory-port?
      (lambda (_%obj140584%_)
        (let ((__tmp140772
               (let ((__tmp140773 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp140773))))
          (declare (not safe))
          (##structure-instance-of? _%obj140584%_ __tmp140772))))
    (define event-queue-port?
      (lambda (_%obj140582%_)
        (let ((__tmp140774
               (let ((__tmp140775 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp140775))))
          (declare (not safe))
          (##structure-instance-of? _%obj140582%_ __tmp140774))))
    (define readenv?
      (lambda (_%obj140580%_)
        (let ((__tmp140776
               (let ((__tmp140777 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp140777))))
          (declare (not safe))
          (##structure-instance-of? _%obj140580%_ __tmp140776))))
    (define writeenv?
      (lambda (_%obj140578%_)
        (let ((__tmp140778
               (let ((__tmp140779 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp140779))))
          (declare (not safe))
          (##structure-instance-of? _%obj140578%_ __tmp140778))))
    (define vm?
      (lambda (_%obj140576%_)
        (let ((__tmp140780
               (let ((__tmp140781 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp140781))))
          (declare (not safe))
          (##structure-instance-of? _%obj140576%_ __tmp140780))))))
