(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1771101396)
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
      (let ((__tmp139742 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp139742 '())))
    (define subtyped::t
      (let ((__tmp139743 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp139743 '())))
    (define structure::t
      (let ((__tmp139744 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp139744 '())))
    (define immediate::t
      (let ((__tmp139745 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp139745 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp139746 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp139746 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp139747 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp139747 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp139748 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp139748 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp139749 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp139749 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp139750 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp139750 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp139751 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp139751 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp139752 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp139752 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp139753 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp139753 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp139754 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp139754 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp139755 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp139755 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp139756 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp139756 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp139757 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp139757 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp139758 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp139758 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp139759 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp139759 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp139760 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp139760 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp139761 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp139761 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp139762 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp139762 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp139763 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp139763 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp139764 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp139764 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp139765 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp139765 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp139766 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp139766 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp139767 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp139767 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp139768 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp139768 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp139769 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp139769 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp139770 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp139770 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp139771 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp139771 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp139772 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp139772 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp139773 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp139773 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp139774 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp139774 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp139775 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp139775 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp139776 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp139776 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp139777 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp139777 '())))
    (define pair::t
      (let ((__tmp139778 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp139778 '())))
    (define null::t
      (let ((__tmp139779 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp139779 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp139780 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp139780 '())))
    (define vector::t
      (let ((__tmp139781 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp139781 '())))
    (define string::t
      (let ((__tmp139782 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp139782 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp139783 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp139783 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp139784 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp139784 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp139785 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp139785 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp139786 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp139786 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp139787 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp139787 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp139788 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp139788 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp139789 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp139789 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp139790 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp139790 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp139791 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp139791 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp139792 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp139792 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp139793 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp139793 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp139794 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp139794 '())))
    (define box::t
      (let ((__tmp139795 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp139795 '())))
    (define frame::t
      (let ((__tmp139796 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp139796 '())))
    (define continuation::t
      (let ((__tmp139797 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp139797 '())))
    (define promise::t
      (let ((__tmp139798 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp139798 '())))
    (define weak::t
      (let ((__tmp139799 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp139799 '())))
    (define foreign::t
      (let ((__tmp139800 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp139800 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp139801 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp139801 '())))
    (define return::t
      (let ((__tmp139802 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp139802 '())))
    (define time::t
      (let ((__tmp139803 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp139803 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp139804 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp139804 '())))
    (define thread-group::t
      (let ((__tmp139805 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp139805 '())))
    (define mutex::t
      (let ((__tmp139806 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp139806 '())))
    (define condvar::t
      (let ((__tmp139807 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp139807 '())))
    (define port::t
      (let ((__tmp139808 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139808 '())))
    (define object-port::t
      (let ((__tmp139809 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139809 '())))
    (define character-port::t
      (let ((__tmp139810 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139810 '())))
    (define byte-port::t
      (let ((__tmp139811 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139811 '())))
    (define device-port::t
      (let ((__tmp139812 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139812 '())))
    (define vector-port::t
      (let ((__tmp139813 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139813 '())))
    (define string-port::t
      (let ((__tmp139814 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139814 '())))
    (define u8vector-port::t
      (let ((__tmp139815 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139815 '())))
    (define raw-device-port::t
      (let ((__tmp139816 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139816 '())))
    (define tcp-server-port::t
      (let ((__tmp139817 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139817 '())))
    (define udp-port::t
      (let ((__tmp139818 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139818 '())))
    (define directory-port::t
      (let ((__tmp139819 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139819 '())))
    (define event-queue-port::t
      (let ((__tmp139820 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139820 '())))
    (define table::t
      (let ((__tmp139821 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp139821 '())))
    (define readenv::t
      (let ((__tmp139822 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp139822 '())))
    (define writeenv::t
      (let ((__tmp139823 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp139823 '())))
    (define readtable::t
      (let ((__tmp139824 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp139824 '())))
    (define processor::t
      (let ((__tmp139825 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp139825 '())))
    (define vm::t
      (let ((__tmp139826 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp139826 '())))
    (define file-info::t
      (let ((__tmp139827 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139827 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp139828 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139828 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp139829 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139829 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj139738%_)
        (let ((_%$e139740%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj139738%_)))))
          (if _%$e139740%_
              _%$e139740%_
              (not (let ((__tmp139830
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj139738%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp139830 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj139736%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139736%_))
            (builtin-object? _%obj139736%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj139734%_)
        (if (let () (declare (not safe)) (##structure? _%obj139734%_))
            (not (let ((__tmp139831
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj139734%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp139831 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj139732%_)
        (if (let () (declare (not safe)) (immediate? _%obj139732%_))
            (if (char? _%obj139732%_)
                '#f
                (if (fixnum? _%obj139732%_) '#f (not (flonum? _%obj139732%_))))
            '#f)))
    (define special?
      (lambda (_%obj139730%_)
        (let () (declare (not safe)) (##special? _%obj139730%_))))
    (define unbound? (lambda (_%obj139728%_) (eq? _%obj139728%_ '#!unbound)))
    (define unbound2? (lambda (_%obj139726%_) (eq? _%obj139726%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj139718%_)
        (let ((_%$e139720%_ (eq? _%obj139718%_ '#!key)))
          (if _%$e139720%_
              _%$e139720%_
              (let ((_%$e139723%_ (eq? _%obj139718%_ '#!optional)))
                (if _%$e139723%_ _%$e139723%_ (eq? _%obj139718%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj139716%_) (eq? _%obj139716%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj139714%_) (eq? _%obj139714%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj139712%_) (eq? _%obj139712%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj139710%_)
        (if (flonum? _%obj139710%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj139710%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj139708%_)
        (if (flonum? _%obj139708%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj139708%_))
            '#f)))
    (define sequence?
      (lambda (_%obj139700%_)
        (let ((_%$e139702%_ (vector? _%obj139700%_)))
          (if _%$e139702%_
              _%$e139702%_
              (let ((_%$e139705%_ (string? _%obj139700%_)))
                (if _%$e139705%_ _%$e139705%_ (hvector? _%obj139700%_)))))))
    (define hvector?
      (lambda (_%obj139671%_)
        (let ((_%$e139673%_ (u8vector? _%obj139671%_)))
          (if _%$e139673%_
              _%$e139673%_
              (let ((_%$e139676%_ (s8vector? _%obj139671%_)))
                (if _%$e139676%_
                    _%$e139676%_
                    (let ((_%$e139679%_ (u16vector? _%obj139671%_)))
                      (if _%$e139679%_
                          _%$e139679%_
                          (let ((_%$e139682%_ (s16vector? _%obj139671%_)))
                            (if _%$e139682%_
                                _%$e139682%_
                                (let ((_%$e139685%_
                                       (u32vector? _%obj139671%_)))
                                  (if _%$e139685%_
                                      _%$e139685%_
                                      (let ((_%$e139688%_
                                             (s32vector? _%obj139671%_)))
                                        (if _%$e139688%_
                                            _%$e139688%_
                                            (let ((_%$e139691%_
                                                   (u64vector? _%obj139671%_)))
                                              (if _%$e139691%_
                                                  _%$e139691%_
                                                  (let ((_%$e139694%_
                                                         (s64vector?
                                                          _%obj139671%_)))
                                                    (if _%$e139694%_
                                                        _%$e139694%_
                                                        (let ((_%$e139697%_
                                                               (f32vector?
                                                                _%obj139671%_)))
                                                          (if _%$e139697%_
                                                              _%$e139697%_
                                                              (f64vector?
                                                               _%obj139671%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj139669%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139669%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj139669%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj139667%_)
        (let ((__tmp139832
               (let ((__tmp139833 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp139833))))
          (declare (not safe))
          (##structure-instance-of? _%obj139667%_ __tmp139832))))
    (define character-port?
      (lambda (_%obj139665%_)
        (let ((__tmp139834
               (let ((__tmp139835 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp139835))))
          (declare (not safe))
          (##structure-instance-of? _%obj139665%_ __tmp139834))))
    (define byte-port?
      (lambda (_%obj139663%_)
        (let ((__tmp139836
               (let ((__tmp139837 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp139837))))
          (declare (not safe))
          (##structure-instance-of? _%obj139663%_ __tmp139836))))
    (define device-port?
      (lambda (_%obj139661%_)
        (let ((__tmp139838
               (let ((__tmp139839 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp139839))))
          (declare (not safe))
          (##structure-instance-of? _%obj139661%_ __tmp139838))))
    (define vector-port?
      (lambda (_%obj139659%_)
        (let ((__tmp139840
               (let ((__tmp139841 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp139841))))
          (declare (not safe))
          (##structure-instance-of? _%obj139659%_ __tmp139840))))
    (define string-port?
      (lambda (_%obj139657%_)
        (let ((__tmp139842
               (let ((__tmp139843 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp139843))))
          (declare (not safe))
          (##structure-instance-of? _%obj139657%_ __tmp139842))))
    (define u8vector-port?
      (lambda (_%obj139655%_)
        (let ((__tmp139844
               (let ((__tmp139845 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp139845))))
          (declare (not safe))
          (##structure-instance-of? _%obj139655%_ __tmp139844))))
    (define raw-device-port?
      (lambda (_%obj139653%_)
        (let ((__tmp139846
               (let ((__tmp139847 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp139847))))
          (declare (not safe))
          (##structure-instance-of? _%obj139653%_ __tmp139846))))
    (define tcp-server-port?
      (lambda (_%obj139651%_)
        (let ((__tmp139848
               (let ((__tmp139849 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp139849))))
          (declare (not safe))
          (##structure-instance-of? _%obj139651%_ __tmp139848))))
    (define udp-port?
      (lambda (_%obj139649%_)
        (let ((__tmp139850
               (let ((__tmp139851 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp139851))))
          (declare (not safe))
          (##structure-instance-of? _%obj139649%_ __tmp139850))))
    (define directory-port?
      (lambda (_%obj139647%_)
        (let ((__tmp139852
               (let ((__tmp139853 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp139853))))
          (declare (not safe))
          (##structure-instance-of? _%obj139647%_ __tmp139852))))
    (define event-queue-port?
      (lambda (_%obj139645%_)
        (let ((__tmp139854
               (let ((__tmp139855 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp139855))))
          (declare (not safe))
          (##structure-instance-of? _%obj139645%_ __tmp139854))))
    (define readenv?
      (lambda (_%obj139643%_)
        (let ((__tmp139856
               (let ((__tmp139857 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp139857))))
          (declare (not safe))
          (##structure-instance-of? _%obj139643%_ __tmp139856))))
    (define writeenv?
      (lambda (_%obj139641%_)
        (let ((__tmp139858
               (let ((__tmp139859 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp139859))))
          (declare (not safe))
          (##structure-instance-of? _%obj139641%_ __tmp139858))))
    (define vm?
      (lambda (_%obj139639%_)
        (let ((__tmp139860
               (let ((__tmp139861 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp139861))))
          (declare (not safe))
          (##structure-instance-of? _%obj139639%_ __tmp139860))))))
