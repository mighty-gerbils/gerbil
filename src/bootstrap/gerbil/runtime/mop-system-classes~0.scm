(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1771025395)
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
      (let ((__tmp138731 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp138731 '())))
    (define subtyped::t
      (let ((__tmp138732 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp138732 '())))
    (define structure::t
      (let ((__tmp138733 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp138733 '())))
    (define immediate::t
      (let ((__tmp138734 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp138734 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp138735 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp138735 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp138736 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp138736 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp138737 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp138737 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp138738 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp138738 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp138739 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp138739 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp138740 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp138740 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp138741 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp138741 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp138742 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp138742 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp138743 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp138743 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp138744 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp138744 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp138745 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp138745 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp138746 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp138746 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp138747 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp138747 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp138748 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp138748 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp138749 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp138749 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp138750 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp138750 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp138751 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp138751 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp138752 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp138752 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp138753 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp138753 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp138754 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp138754 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp138755 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp138755 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp138756 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp138756 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp138757 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp138757 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp138758 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp138758 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp138759 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp138759 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp138760 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp138760 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp138761 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp138761 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp138762 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp138762 '())))
    (define pair::t
      (let ((__tmp138763 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp138763 '())))
    (define null::t
      (let ((__tmp138764 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp138764 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp138765 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp138765 '())))
    (define vector::t
      (let ((__tmp138766 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp138766 '())))
    (define string::t
      (let ((__tmp138767 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp138767 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp138768 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp138768 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp138769 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp138769 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp138770 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp138770 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp138771 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp138771 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp138772 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp138772 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp138773 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp138773 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp138774 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp138774 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp138775 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp138775 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp138776 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp138776 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp138777 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp138777 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp138778 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp138778 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp138779 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp138779 '())))
    (define box::t
      (let ((__tmp138780 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp138780 '())))
    (define frame::t
      (let ((__tmp138781 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp138781 '())))
    (define continuation::t
      (let ((__tmp138782 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp138782 '())))
    (define promise::t
      (let ((__tmp138783 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp138783 '())))
    (define weak::t
      (let ((__tmp138784 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp138784 '())))
    (define foreign::t
      (let ((__tmp138785 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp138785 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp138786 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp138786 '())))
    (define return::t
      (let ((__tmp138787 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp138787 '())))
    (define time::t
      (let ((__tmp138788 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp138788 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp138789 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp138789 '())))
    (define thread-group::t
      (let ((__tmp138790 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp138790 '())))
    (define mutex::t
      (let ((__tmp138791 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp138791 '())))
    (define condvar::t
      (let ((__tmp138792 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp138792 '())))
    (define port::t
      (let ((__tmp138793 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138793 '())))
    (define object-port::t
      (let ((__tmp138794 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138794 '())))
    (define character-port::t
      (let ((__tmp138795 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138795 '())))
    (define byte-port::t
      (let ((__tmp138796 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138796 '())))
    (define device-port::t
      (let ((__tmp138797 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138797 '())))
    (define vector-port::t
      (let ((__tmp138798 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138798 '())))
    (define string-port::t
      (let ((__tmp138799 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138799 '())))
    (define u8vector-port::t
      (let ((__tmp138800 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138800 '())))
    (define raw-device-port::t
      (let ((__tmp138801 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138801 '())))
    (define tcp-server-port::t
      (let ((__tmp138802 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138802 '())))
    (define udp-port::t
      (let ((__tmp138803 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138803 '())))
    (define directory-port::t
      (let ((__tmp138804 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138804 '())))
    (define event-queue-port::t
      (let ((__tmp138805 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp138805 '())))
    (define table::t
      (let ((__tmp138806 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp138806 '())))
    (define readenv::t
      (let ((__tmp138807 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp138807 '())))
    (define writeenv::t
      (let ((__tmp138808 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp138808 '())))
    (define readtable::t
      (let ((__tmp138809 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp138809 '())))
    (define processor::t
      (let ((__tmp138810 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp138810 '())))
    (define vm::t
      (let ((__tmp138811 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp138811 '())))
    (define file-info::t
      (let ((__tmp138812 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp138812 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp138813 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp138813 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp138814 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp138814 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj138727%_)
        (let ((_%$e138729%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj138727%_)))))
          (if _%$e138729%_
              _%$e138729%_
              (not (let ((__tmp138815
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj138727%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp138815 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj138725%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj138725%_))
            (builtin-object? _%obj138725%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj138723%_)
        (if (let () (declare (not safe)) (##structure? _%obj138723%_))
            (not (let ((__tmp138816
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj138723%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp138816 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj138721%_)
        (if (let () (declare (not safe)) (immediate? _%obj138721%_))
            (if (char? _%obj138721%_)
                '#f
                (if (fixnum? _%obj138721%_) '#f (not (flonum? _%obj138721%_))))
            '#f)))
    (define special?
      (lambda (_%obj138719%_)
        (let () (declare (not safe)) (##special? _%obj138719%_))))
    (define unbound? (lambda (_%obj138717%_) (eq? _%obj138717%_ '#!unbound)))
    (define unbound2? (lambda (_%obj138715%_) (eq? _%obj138715%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj138707%_)
        (let ((_%$e138709%_ (eq? _%obj138707%_ '#!key)))
          (if _%$e138709%_
              _%$e138709%_
              (let ((_%$e138712%_ (eq? _%obj138707%_ '#!optional)))
                (if _%$e138712%_ _%$e138712%_ (eq? _%obj138707%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj138705%_) (eq? _%obj138705%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj138703%_) (eq? _%obj138703%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj138701%_) (eq? _%obj138701%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj138699%_)
        (if (flonum? _%obj138699%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj138699%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj138697%_)
        (if (flonum? _%obj138697%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj138697%_))
            '#f)))
    (define sequence?
      (lambda (_%obj138689%_)
        (let ((_%$e138691%_ (vector? _%obj138689%_)))
          (if _%$e138691%_
              _%$e138691%_
              (let ((_%$e138694%_ (string? _%obj138689%_)))
                (if _%$e138694%_ _%$e138694%_ (hvector? _%obj138689%_)))))))
    (define hvector?
      (lambda (_%obj138660%_)
        (let ((_%$e138662%_ (u8vector? _%obj138660%_)))
          (if _%$e138662%_
              _%$e138662%_
              (let ((_%$e138665%_ (s8vector? _%obj138660%_)))
                (if _%$e138665%_
                    _%$e138665%_
                    (let ((_%$e138668%_ (u16vector? _%obj138660%_)))
                      (if _%$e138668%_
                          _%$e138668%_
                          (let ((_%$e138671%_ (s16vector? _%obj138660%_)))
                            (if _%$e138671%_
                                _%$e138671%_
                                (let ((_%$e138674%_
                                       (u32vector? _%obj138660%_)))
                                  (if _%$e138674%_
                                      _%$e138674%_
                                      (let ((_%$e138677%_
                                             (s32vector? _%obj138660%_)))
                                        (if _%$e138677%_
                                            _%$e138677%_
                                            (let ((_%$e138680%_
                                                   (u64vector? _%obj138660%_)))
                                              (if _%$e138680%_
                                                  _%$e138680%_
                                                  (let ((_%$e138683%_
                                                         (s64vector?
                                                          _%obj138660%_)))
                                                    (if _%$e138683%_
                                                        _%$e138683%_
                                                        (let ((_%$e138686%_
                                                               (f32vector?
                                                                _%obj138660%_)))
                                                          (if _%$e138686%_
                                                              _%$e138686%_
                                                              (f64vector?
                                                               _%obj138660%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj138658%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj138658%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj138658%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj138656%_)
        (let ((__tmp138817
               (let ((__tmp138818 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp138818))))
          (declare (not safe))
          (##structure-instance-of? _%obj138656%_ __tmp138817))))
    (define character-port?
      (lambda (_%obj138654%_)
        (let ((__tmp138819
               (let ((__tmp138820 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp138820))))
          (declare (not safe))
          (##structure-instance-of? _%obj138654%_ __tmp138819))))
    (define device-port?
      (lambda (_%obj138652%_)
        (let ((__tmp138821
               (let ((__tmp138822 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp138822))))
          (declare (not safe))
          (##structure-instance-of? _%obj138652%_ __tmp138821))))
    (define vector-port?
      (lambda (_%obj138650%_)
        (let ((__tmp138823
               (let ((__tmp138824 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp138824))))
          (declare (not safe))
          (##structure-instance-of? _%obj138650%_ __tmp138823))))
    (define string-port?
      (lambda (_%obj138648%_)
        (let ((__tmp138825
               (let ((__tmp138826 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp138826))))
          (declare (not safe))
          (##structure-instance-of? _%obj138648%_ __tmp138825))))
    (define u8vector-port?
      (lambda (_%obj138646%_)
        (let ((__tmp138827
               (let ((__tmp138828 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp138828))))
          (declare (not safe))
          (##structure-instance-of? _%obj138646%_ __tmp138827))))
    (define raw-device-port?
      (lambda (_%obj138644%_)
        (let ((__tmp138829
               (let ((__tmp138830 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp138830))))
          (declare (not safe))
          (##structure-instance-of? _%obj138644%_ __tmp138829))))
    (define tcp-server-port?
      (lambda (_%obj138642%_)
        (let ((__tmp138831
               (let ((__tmp138832 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp138832))))
          (declare (not safe))
          (##structure-instance-of? _%obj138642%_ __tmp138831))))
    (define udp-port?
      (lambda (_%obj138640%_)
        (let ((__tmp138833
               (let ((__tmp138834 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp138834))))
          (declare (not safe))
          (##structure-instance-of? _%obj138640%_ __tmp138833))))
    (define directory-port?
      (lambda (_%obj138638%_)
        (let ((__tmp138835
               (let ((__tmp138836 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp138836))))
          (declare (not safe))
          (##structure-instance-of? _%obj138638%_ __tmp138835))))
    (define event-queue-port?
      (lambda (_%obj138636%_)
        (let ((__tmp138837
               (let ((__tmp138838 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp138838))))
          (declare (not safe))
          (##structure-instance-of? _%obj138636%_ __tmp138837))))
    (define readenv?
      (lambda (_%obj138634%_)
        (let ((__tmp138839
               (let ((__tmp138840 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp138840))))
          (declare (not safe))
          (##structure-instance-of? _%obj138634%_ __tmp138839))))
    (define writeenv?
      (lambda (_%obj138632%_)
        (let ((__tmp138841
               (let ((__tmp138842 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp138842))))
          (declare (not safe))
          (##structure-instance-of? _%obj138632%_ __tmp138841))))
    (define vm?
      (lambda (_%obj138630%_)
        (let ((__tmp138843
               (let ((__tmp138844 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp138844))))
          (declare (not safe))
          (##structure-instance-of? _%obj138630%_ __tmp138843))))))
