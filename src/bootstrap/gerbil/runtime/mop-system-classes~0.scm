(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1771178562)
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
      (let ((__tmp139787 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp139787 '())))
    (define subtyped::t
      (let ((__tmp139788 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp139788 '())))
    (define structure::t
      (let ((__tmp139789 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp139789 '())))
    (define immediate::t
      (let ((__tmp139790 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp139790 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp139791 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp139791 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp139792 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp139792 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp139793 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp139793 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp139794 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp139794 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp139795 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp139795 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp139796 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp139796 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp139797 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp139797 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp139798 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp139798 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp139799 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp139799 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp139800 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp139800 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp139801 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp139801 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp139802 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp139802 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp139803 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp139803 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp139804 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp139804 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp139805 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp139805 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp139806 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp139806 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp139807 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp139807 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp139808 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp139808 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp139809 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp139809 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp139810 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp139810 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp139811 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp139811 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp139812 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp139812 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp139813 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp139813 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp139814 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp139814 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp139815 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp139815 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp139816 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp139816 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp139817 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp139817 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp139818 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp139818 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp139819 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp139819 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp139820 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp139820 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp139821 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp139821 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp139822 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp139822 '())))
    (define pair::t
      (let ((__tmp139823 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp139823 '())))
    (define null::t
      (let ((__tmp139824 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp139824 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp139825 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp139825 '())))
    (define vector::t
      (let ((__tmp139826 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp139826 '())))
    (define string::t
      (let ((__tmp139827 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp139827 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp139828 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp139828 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp139829 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp139829 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp139830 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp139830 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp139831 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp139831 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp139832 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp139832 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp139833 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp139833 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp139834 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp139834 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp139835 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp139835 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp139836 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp139836 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp139837 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp139837 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp139838 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp139838 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp139839 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp139839 '())))
    (define values::t
      (let ((__tmp139840 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp139840 '())))
    (define box::t
      (let ((__tmp139841 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp139841 '())))
    (define frame::t
      (let ((__tmp139842 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp139842 '())))
    (define continuation::t
      (let ((__tmp139843 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp139843 '())))
    (define promise::t
      (let ((__tmp139844 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp139844 '())))
    (define weak::t
      (let ((__tmp139845 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp139845 '())))
    (define foreign::t
      (let ((__tmp139846 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp139846 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp139847 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp139847 '())))
    (define return::t
      (let ((__tmp139848 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp139848 '())))
    (define time::t
      (let ((__tmp139849 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp139849 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp139850 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp139850 '())))
    (define thread-group::t
      (let ((__tmp139851 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp139851 '())))
    (define mutex::t
      (let ((__tmp139852 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp139852 '())))
    (define condvar::t
      (let ((__tmp139853 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp139853 '())))
    (define port::t
      (let ((__tmp139854 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139854 '())))
    (define object-port::t
      (let ((__tmp139855 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139855 '())))
    (define character-port::t
      (let ((__tmp139856 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139856 '())))
    (define byte-port::t
      (let ((__tmp139857 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139857 '())))
    (define device-port::t
      (let ((__tmp139858 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139858 '())))
    (define vector-port::t
      (let ((__tmp139859 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139859 '())))
    (define string-port::t
      (let ((__tmp139860 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139860 '())))
    (define u8vector-port::t
      (let ((__tmp139861 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139861 '())))
    (define raw-device-port::t
      (let ((__tmp139862 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139862 '())))
    (define tcp-server-port::t
      (let ((__tmp139863 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139863 '())))
    (define udp-port::t
      (let ((__tmp139864 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139864 '())))
    (define directory-port::t
      (let ((__tmp139865 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139865 '())))
    (define event-queue-port::t
      (let ((__tmp139866 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139866 '())))
    (define table::t
      (let ((__tmp139867 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp139867 '())))
    (define readenv::t
      (let ((__tmp139868 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp139868 '())))
    (define writeenv::t
      (let ((__tmp139869 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp139869 '())))
    (define readtable::t
      (let ((__tmp139870 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp139870 '())))
    (define processor::t
      (let ((__tmp139871 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp139871 '())))
    (define vm::t
      (let ((__tmp139872 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp139872 '())))
    (define file-info::t
      (let ((__tmp139873 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139873 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp139874 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139874 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp139875 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139875 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj139783%_)
        (let ((_%$e139785%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj139783%_)))))
          (if _%$e139785%_
              _%$e139785%_
              (not (let ((__tmp139876
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj139783%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp139876 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj139781%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139781%_))
            (builtin-object? _%obj139781%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj139779%_)
        (if (let () (declare (not safe)) (##structure? _%obj139779%_))
            (not (let ((__tmp139877
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj139779%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp139877 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj139777%_)
        (if (let () (declare (not safe)) (##special? _%obj139777%_))
            (let ((__tmp139878
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj139777%_ '0))))
              (declare (not safe))
              (##fx< __tmp139878 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj139775%_)
        (let () (declare (not safe)) (##special? _%obj139775%_))))
    (define unbound-object?
      (lambda (_%obj139773%_) (eq? _%obj139773%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj139771%_) (eq? _%obj139771%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj139769%_) (eq? _%obj139769%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj139767%_) (eq? _%obj139767%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj139765%_) (eq? _%obj139765%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj139757%_)
        (let ((_%$e139759%_ (eq? _%obj139757%_ '#!key)))
          (if _%$e139759%_
              _%$e139759%_
              (let ((_%$e139762%_ (eq? _%obj139757%_ '#!optional)))
                (if _%$e139762%_ _%$e139762%_ (eq? _%obj139757%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj139755%_) (eq? _%obj139755%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj139753%_) (eq? _%obj139753%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj139751%_) (eq? _%obj139751%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj139749%_)
        (if (flonum? _%obj139749%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj139749%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj139747%_)
        (if (flonum? _%obj139747%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj139747%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec139744%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec139744%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-string) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec139744%_ (macro-subtype-f64vector) '#t)
        _%vec139744%_))
    (define sequence?
      (lambda (_%obj139742%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139742%_))
            (let ((__tmp139879
                   (let () (declare (not safe)) (##subtype _%obj139742%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp139879))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec139739%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec139739%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec139739%_ (macro-subtype-f64vector) '#t)
        _%vec139739%_))
    (define hvector?
      (lambda (_%obj139737%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139737%_))
            (let ((__tmp139880
                   (let () (declare (not safe)) (##subtype _%obj139737%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp139880))
            '#f)))
    (define weak?
      (lambda (_%obj139735%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139735%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj139735%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj139733%_)
        (let ((__tmp139881
               (let ((__tmp139882 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp139882))))
          (declare (not safe))
          (##structure-instance-of? _%obj139733%_ __tmp139881))))
    (define character-port?
      (lambda (_%obj139731%_)
        (let ((__tmp139883
               (let ((__tmp139884 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp139884))))
          (declare (not safe))
          (##structure-instance-of? _%obj139731%_ __tmp139883))))
    (define byte-port?
      (lambda (_%obj139729%_)
        (let ((__tmp139885
               (let ((__tmp139886 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp139886))))
          (declare (not safe))
          (##structure-instance-of? _%obj139729%_ __tmp139885))))
    (define device-port?
      (lambda (_%obj139727%_)
        (let ((__tmp139887
               (let ((__tmp139888 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp139888))))
          (declare (not safe))
          (##structure-instance-of? _%obj139727%_ __tmp139887))))
    (define vector-port?
      (lambda (_%obj139725%_)
        (let ((__tmp139889
               (let ((__tmp139890 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp139890))))
          (declare (not safe))
          (##structure-instance-of? _%obj139725%_ __tmp139889))))
    (define string-port?
      (lambda (_%obj139723%_)
        (let ((__tmp139891
               (let ((__tmp139892 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp139892))))
          (declare (not safe))
          (##structure-instance-of? _%obj139723%_ __tmp139891))))
    (define u8vector-port?
      (lambda (_%obj139721%_)
        (let ((__tmp139893
               (let ((__tmp139894 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp139894))))
          (declare (not safe))
          (##structure-instance-of? _%obj139721%_ __tmp139893))))
    (define raw-device-port?
      (lambda (_%obj139719%_)
        (let ((__tmp139895
               (let ((__tmp139896 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp139896))))
          (declare (not safe))
          (##structure-instance-of? _%obj139719%_ __tmp139895))))
    (define tcp-server-port?
      (lambda (_%obj139717%_)
        (let ((__tmp139897
               (let ((__tmp139898 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp139898))))
          (declare (not safe))
          (##structure-instance-of? _%obj139717%_ __tmp139897))))
    (define udp-port?
      (lambda (_%obj139715%_)
        (let ((__tmp139899
               (let ((__tmp139900 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp139900))))
          (declare (not safe))
          (##structure-instance-of? _%obj139715%_ __tmp139899))))
    (define directory-port?
      (lambda (_%obj139713%_)
        (let ((__tmp139901
               (let ((__tmp139902 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp139902))))
          (declare (not safe))
          (##structure-instance-of? _%obj139713%_ __tmp139901))))
    (define event-queue-port?
      (lambda (_%obj139711%_)
        (let ((__tmp139903
               (let ((__tmp139904 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp139904))))
          (declare (not safe))
          (##structure-instance-of? _%obj139711%_ __tmp139903))))
    (define readenv?
      (lambda (_%obj139709%_)
        (let ((__tmp139905
               (let ((__tmp139906 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp139906))))
          (declare (not safe))
          (##structure-instance-of? _%obj139709%_ __tmp139905))))
    (define writeenv?
      (lambda (_%obj139707%_)
        (let ((__tmp139907
               (let ((__tmp139908 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp139908))))
          (declare (not safe))
          (##structure-instance-of? _%obj139707%_ __tmp139907))))
    (define vm?
      (lambda (_%obj139705%_)
        (let ((__tmp139909
               (let ((__tmp139910 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp139910))))
          (declare (not safe))
          (##structure-instance-of? _%obj139705%_ __tmp139909))))))
