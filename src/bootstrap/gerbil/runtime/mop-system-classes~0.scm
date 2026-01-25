(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1769382893)
  (begin
    (declare
      (not optimize-dead-definitions
           builtin::t
           subtyped::t
           record::t
           immediate::t
           char::t
           boolean::t
           atom::t
           void::t
           eof::t
           true::t
           false::t
           special::t
           number::t
           real::t
           integer::t
           fixnum::t
           bignum::t
           ratnum::t
           flonum::t
           haflonum::t
           stflonum::t
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
      (let ((__tmp112791 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp112791 '())))
    (define subtyped::t
      (let ((__tmp112792 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp112792 '())))
    (define structure::t
      (let ((__tmp112793 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp112793 '())))
    (define immediate::t
      (let ((__tmp112794 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp112794 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp112795 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp112795 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp112796 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp112796 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp112797 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp112797 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp112798 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp112798 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp112799 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp112799 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp112800 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp112800 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp112801 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp112801 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp112802 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp112802 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp112803 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp112803 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp112804 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp112804 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp112805 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp112805 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp112806 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp112806 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp112807 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp112807 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp112808 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp112808 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp112809 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp112809 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp112810 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp112810 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp112811 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp112811 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp112812 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp112812 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp112813 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp112813 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp112814 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp112814 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp112815 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp112815 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp112816 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp112816 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp112817 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp112817 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp112818 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp112818 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp112819 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp112819 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp112820 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp112820 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp112821 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp112821 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp112822 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp112822 '())))
    (define pair::t
      (let ((__tmp112823 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp112823 '())))
    (define null::t
      (let ((__tmp112824 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp112824 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp112825 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp112825 '())))
    (define vector::t
      (let ((__tmp112826 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp112826 '())))
    (define string::t
      (let ((__tmp112827 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp112827 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp112828 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp112828 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp112829 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp112829 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp112830 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp112830 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp112831 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp112831 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp112832 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp112832 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp112833 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp112833 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp112834 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp112834 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp112835 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp112835 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp112836 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp112836 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp112837 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp112837 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp112838 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp112838 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp112839 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp112839 '())))
    (define box::t
      (let ((__tmp112840 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp112840 '())))
    (define frame::t
      (let ((__tmp112841 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp112841 '())))
    (define continuation::t
      (let ((__tmp112842 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp112842 '())))
    (define promise::t
      (let ((__tmp112843 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp112843 '())))
    (define weak::t
      (let ((__tmp112844 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp112844 '())))
    (define foreign::t
      (let ((__tmp112845 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp112845 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp112846 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp112846 '())))
    (define return::t
      (let ((__tmp112847 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp112847 '())))
    (define time::t
      (let ((__tmp112848 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp112848 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp112849 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp112849 '())))
    (define thread-group::t
      (let ((__tmp112850 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp112850 '())))
    (define mutex::t
      (let ((__tmp112851 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp112851 '())))
    (define condvar::t
      (let ((__tmp112852 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp112852 '())))
    (define port::t
      (let ((__tmp112853 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112853 '())))
    (define object-port::t
      (let ((__tmp112854 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112854 '())))
    (define character-port::t
      (let ((__tmp112855 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112855 '())))
    (define byte-port::t
      (let ((__tmp112856 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112856 '())))
    (define device-port::t
      (let ((__tmp112857 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112857 '())))
    (define vector-port::t
      (let ((__tmp112858 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112858 '())))
    (define string-port::t
      (let ((__tmp112859 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112859 '())))
    (define u8vector-port::t
      (let ((__tmp112860 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112860 '())))
    (define raw-device-port::t
      (let ((__tmp112861 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112861 '())))
    (define tcp-server-port::t
      (let ((__tmp112862 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112862 '())))
    (define udp-port::t
      (let ((__tmp112863 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112863 '())))
    (define directory-port::t
      (let ((__tmp112864 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112864 '())))
    (define event-queue-port::t
      (let ((__tmp112865 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112865 '())))
    (define table::t
      (let ((__tmp112866 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp112866 '())))
    (define readenv::t
      (let ((__tmp112867 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112867 '())))
    (define writeenv::t
      (let ((__tmp112868 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112868 '())))
    (define readtable::t
      (let ((__tmp112869 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp112869 '())))
    (define processor::t
      (let ((__tmp112870 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp112870 '())))
    (define vm::t
      (let ((__tmp112871 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp112871 '())))
    (define file-info::t
      (let ((__tmp112872 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112872 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp112873 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112873 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp112874 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112874 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj112787%_)
        (let ((_%$e112789%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj112787%_)))))
          (if _%$e112789%_
              _%$e112789%_
              (not (let ((__tmp112875
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj112787%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp112875 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj112785%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj112785%_))
            (builtin-object? _%obj112785%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj112783%_)
        (if (let () (declare (not safe)) (##structure? _%obj112783%_))
            (not (let ((__tmp112876
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj112783%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp112876 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj112781%_)
        (if (let () (declare (not safe)) (immediate? _%obj112781%_))
            (if (char? _%obj112781%_)
                '#f
                (if (fixnum? _%obj112781%_) '#f (not (flonum? _%obj112781%_))))
            '#f)))
    (define special?
      (lambda (_%obj112779%_)
        (let () (declare (not safe)) (##special? _%obj112779%_))))
    (define stflonum?
      (lambda (_%obj112777%_)
        (if (flonum? _%obj112777%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj112777%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj112775%_)
        (if (flonum? _%obj112775%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj112775%_))
            '#f)))
    (define sequence?
      (lambda (_%obj112767%_)
        (let ((_%$e112769%_ (vector? _%obj112767%_)))
          (if _%$e112769%_
              _%$e112769%_
              (let ((_%$e112772%_ (string? _%obj112767%_)))
                (if _%$e112772%_ _%$e112772%_ (hvector? _%obj112767%_)))))))
    (define hvector?
      (lambda (_%obj112738%_)
        (let ((_%$e112740%_ (u8vector? _%obj112738%_)))
          (if _%$e112740%_
              _%$e112740%_
              (let ((_%$e112743%_ (s8vector? _%obj112738%_)))
                (if _%$e112743%_
                    _%$e112743%_
                    (let ((_%$e112746%_ (u16vector? _%obj112738%_)))
                      (if _%$e112746%_
                          _%$e112746%_
                          (let ((_%$e112749%_ (s16vector? _%obj112738%_)))
                            (if _%$e112749%_
                                _%$e112749%_
                                (let ((_%$e112752%_
                                       (u32vector? _%obj112738%_)))
                                  (if _%$e112752%_
                                      _%$e112752%_
                                      (let ((_%$e112755%_
                                             (s32vector? _%obj112738%_)))
                                        (if _%$e112755%_
                                            _%$e112755%_
                                            (let ((_%$e112758%_
                                                   (u64vector? _%obj112738%_)))
                                              (if _%$e112758%_
                                                  _%$e112758%_
                                                  (let ((_%$e112761%_
                                                         (s64vector?
                                                          _%obj112738%_)))
                                                    (if _%$e112761%_
                                                        _%$e112761%_
                                                        (let ((_%$e112764%_
                                                               (f32vector?
                                                                _%obj112738%_)))
                                                          (if _%$e112764%_
                                                              _%$e112764%_
                                                              (f64vector?
                                                               _%obj112738%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj112736%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj112736%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj112736%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj112734%_)
        (let ((__tmp112877
               (let ((__tmp112878 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp112878))))
          (declare (not safe))
          (##structure-instance-of? _%obj112734%_ __tmp112877))))
    (define character-port?
      (lambda (_%obj112732%_)
        (let ((__tmp112879
               (let ((__tmp112880 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp112880))))
          (declare (not safe))
          (##structure-instance-of? _%obj112732%_ __tmp112879))))
    (define device-port?
      (lambda (_%obj112730%_)
        (let ((__tmp112881
               (let ((__tmp112882 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112882))))
          (declare (not safe))
          (##structure-instance-of? _%obj112730%_ __tmp112881))))
    (define vector-port?
      (lambda (_%obj112728%_)
        (let ((__tmp112883
               (let ((__tmp112884 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112884))))
          (declare (not safe))
          (##structure-instance-of? _%obj112728%_ __tmp112883))))
    (define string-port?
      (lambda (_%obj112726%_)
        (let ((__tmp112885
               (let ((__tmp112886 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp112886))))
          (declare (not safe))
          (##structure-instance-of? _%obj112726%_ __tmp112885))))
    (define u8vector-port?
      (lambda (_%obj112724%_)
        (let ((__tmp112887
               (let ((__tmp112888 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112888))))
          (declare (not safe))
          (##structure-instance-of? _%obj112724%_ __tmp112887))))
    (define raw-device-port?
      (lambda (_%obj112722%_)
        (let ((__tmp112889
               (let ((__tmp112890 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112890))))
          (declare (not safe))
          (##structure-instance-of? _%obj112722%_ __tmp112889))))
    (define tcp-server-port?
      (lambda (_%obj112720%_)
        (let ((__tmp112891
               (let ((__tmp112892 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp112892))))
          (declare (not safe))
          (##structure-instance-of? _%obj112720%_ __tmp112891))))
    (define udp-port?
      (lambda (_%obj112718%_)
        (let ((__tmp112893
               (let ((__tmp112894 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp112894))))
          (declare (not safe))
          (##structure-instance-of? _%obj112718%_ __tmp112893))))
    (define directory-port?
      (lambda (_%obj112716%_)
        (let ((__tmp112895
               (let ((__tmp112896 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp112896))))
          (declare (not safe))
          (##structure-instance-of? _%obj112716%_ __tmp112895))))
    (define event-queue-port?
      (lambda (_%obj112714%_)
        (let ((__tmp112897
               (let ((__tmp112898 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp112898))))
          (declare (not safe))
          (##structure-instance-of? _%obj112714%_ __tmp112897))))
    (define readenv?
      (lambda (_%obj112712%_)
        (let ((__tmp112899
               (let ((__tmp112900 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp112900))))
          (declare (not safe))
          (##structure-instance-of? _%obj112712%_ __tmp112899))))
    (define writeenv?
      (lambda (_%obj112710%_)
        (let ((__tmp112901
               (let ((__tmp112902 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp112902))))
          (declare (not safe))
          (##structure-instance-of? _%obj112710%_ __tmp112901))))
    (define vm?
      (lambda (_%obj112708%_)
        (let ((__tmp112903
               (let ((__tmp112904 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp112904))))
          (declare (not safe))
          (##structure-instance-of? _%obj112708%_ __tmp112903))))))
