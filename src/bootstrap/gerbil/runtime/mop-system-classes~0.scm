(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1769384627)
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
      (let ((__tmp112847 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp112847 '())))
    (define subtyped::t
      (let ((__tmp112848 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp112848 '())))
    (define structure::t
      (let ((__tmp112849 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp112849 '())))
    (define immediate::t
      (let ((__tmp112850 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp112850 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp112851 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp112851 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp112852 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp112852 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp112853 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp112853 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp112854 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp112854 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp112855 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp112855 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp112856 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp112856 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp112857 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp112857 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp112858 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp112858 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp112859 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp112859 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp112860 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp112860 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp112861 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp112861 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp112862 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp112862 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp112863 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp112863 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp112864 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp112864 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp112865 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp112865 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp112866 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp112866 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp112867 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp112867 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp112868 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp112868 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp112869 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp112869 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp112870 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp112870 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp112871 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp112871 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp112872 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp112872 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp112873 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp112873 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp112874 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp112874 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp112875 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp112875 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp112876 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp112876 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp112877 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp112877 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp112878 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp112878 '())))
    (define pair::t
      (let ((__tmp112879 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp112879 '())))
    (define null::t
      (let ((__tmp112880 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp112880 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp112881 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp112881 '())))
    (define vector::t
      (let ((__tmp112882 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp112882 '())))
    (define string::t
      (let ((__tmp112883 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp112883 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp112884 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp112884 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp112885 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp112885 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp112886 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp112886 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp112887 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp112887 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp112888 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp112888 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp112889 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp112889 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp112890 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp112890 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp112891 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp112891 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp112892 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp112892 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp112893 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp112893 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp112894 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp112894 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp112895 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp112895 '())))
    (define box::t
      (let ((__tmp112896 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp112896 '())))
    (define frame::t
      (let ((__tmp112897 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp112897 '())))
    (define continuation::t
      (let ((__tmp112898 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp112898 '())))
    (define promise::t
      (let ((__tmp112899 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp112899 '())))
    (define weak::t
      (let ((__tmp112900 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp112900 '())))
    (define foreign::t
      (let ((__tmp112901 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp112901 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp112902 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp112902 '())))
    (define return::t
      (let ((__tmp112903 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp112903 '())))
    (define time::t
      (let ((__tmp112904 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp112904 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp112905 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp112905 '())))
    (define thread-group::t
      (let ((__tmp112906 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp112906 '())))
    (define mutex::t
      (let ((__tmp112907 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp112907 '())))
    (define condvar::t
      (let ((__tmp112908 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp112908 '())))
    (define port::t
      (let ((__tmp112909 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112909 '())))
    (define object-port::t
      (let ((__tmp112910 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112910 '())))
    (define character-port::t
      (let ((__tmp112911 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112911 '())))
    (define byte-port::t
      (let ((__tmp112912 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112912 '())))
    (define device-port::t
      (let ((__tmp112913 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112913 '())))
    (define vector-port::t
      (let ((__tmp112914 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112914 '())))
    (define string-port::t
      (let ((__tmp112915 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112915 '())))
    (define u8vector-port::t
      (let ((__tmp112916 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112916 '())))
    (define raw-device-port::t
      (let ((__tmp112917 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112917 '())))
    (define tcp-server-port::t
      (let ((__tmp112918 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112918 '())))
    (define udp-port::t
      (let ((__tmp112919 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112919 '())))
    (define directory-port::t
      (let ((__tmp112920 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112920 '())))
    (define event-queue-port::t
      (let ((__tmp112921 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp112921 '())))
    (define table::t
      (let ((__tmp112922 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp112922 '())))
    (define readenv::t
      (let ((__tmp112923 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112923 '())))
    (define writeenv::t
      (let ((__tmp112924 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp112924 '())))
    (define readtable::t
      (let ((__tmp112925 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp112925 '())))
    (define processor::t
      (let ((__tmp112926 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp112926 '())))
    (define vm::t
      (let ((__tmp112927 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp112927 '())))
    (define file-info::t
      (let ((__tmp112928 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112928 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp112929 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112929 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp112930 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp112930 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj112843%_)
        (let ((_%$e112845%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj112843%_)))))
          (if _%$e112845%_
              _%$e112845%_
              (not (let ((__tmp112931
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj112843%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp112931 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj112841%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj112841%_))
            (builtin-object? _%obj112841%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj112839%_)
        (if (let () (declare (not safe)) (##structure? _%obj112839%_))
            (not (let ((__tmp112932
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj112839%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp112932 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj112837%_)
        (if (let () (declare (not safe)) (immediate? _%obj112837%_))
            (if (char? _%obj112837%_)
                '#f
                (if (fixnum? _%obj112837%_) '#f (not (flonum? _%obj112837%_))))
            '#f)))
    (define special?
      (lambda (_%obj112835%_)
        (let () (declare (not safe)) (##special? _%obj112835%_))))
    (define unbound? (lambda (_%obj112833%_) (eq? _%obj112833%_ '#!unbound)))
    (define unbound2? (lambda (_%obj112831%_) (eq? _%obj112831%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj112823%_)
        (let ((_%$e112825%_ (eq? _%obj112823%_ '#!key)))
          (if _%$e112825%_
              _%$e112825%_
              (let ((_%$e112828%_ (eq? _%obj112823%_ '#!optional)))
                (if _%$e112828%_ _%$e112828%_ (eq? _%obj112823%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj112821%_) (eq? _%obj112821%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj112819%_) (eq? _%obj112819%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj112817%_) (eq? _%obj112817%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj112815%_)
        (if (flonum? _%obj112815%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj112815%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj112813%_)
        (if (flonum? _%obj112813%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj112813%_))
            '#f)))
    (define sequence?
      (lambda (_%obj112805%_)
        (let ((_%$e112807%_ (vector? _%obj112805%_)))
          (if _%$e112807%_
              _%$e112807%_
              (let ((_%$e112810%_ (string? _%obj112805%_)))
                (if _%$e112810%_ _%$e112810%_ (hvector? _%obj112805%_)))))))
    (define hvector?
      (lambda (_%obj112776%_)
        (let ((_%$e112778%_ (u8vector? _%obj112776%_)))
          (if _%$e112778%_
              _%$e112778%_
              (let ((_%$e112781%_ (s8vector? _%obj112776%_)))
                (if _%$e112781%_
                    _%$e112781%_
                    (let ((_%$e112784%_ (u16vector? _%obj112776%_)))
                      (if _%$e112784%_
                          _%$e112784%_
                          (let ((_%$e112787%_ (s16vector? _%obj112776%_)))
                            (if _%$e112787%_
                                _%$e112787%_
                                (let ((_%$e112790%_
                                       (u32vector? _%obj112776%_)))
                                  (if _%$e112790%_
                                      _%$e112790%_
                                      (let ((_%$e112793%_
                                             (s32vector? _%obj112776%_)))
                                        (if _%$e112793%_
                                            _%$e112793%_
                                            (let ((_%$e112796%_
                                                   (u64vector? _%obj112776%_)))
                                              (if _%$e112796%_
                                                  _%$e112796%_
                                                  (let ((_%$e112799%_
                                                         (s64vector?
                                                          _%obj112776%_)))
                                                    (if _%$e112799%_
                                                        _%$e112799%_
                                                        (let ((_%$e112802%_
                                                               (f32vector?
                                                                _%obj112776%_)))
                                                          (if _%$e112802%_
                                                              _%$e112802%_
                                                              (f64vector?
                                                               _%obj112776%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj112774%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj112774%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj112774%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj112772%_)
        (let ((__tmp112933
               (let ((__tmp112934 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp112934))))
          (declare (not safe))
          (##structure-instance-of? _%obj112772%_ __tmp112933))))
    (define character-port?
      (lambda (_%obj112770%_)
        (let ((__tmp112935
               (let ((__tmp112936 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp112936))))
          (declare (not safe))
          (##structure-instance-of? _%obj112770%_ __tmp112935))))
    (define device-port?
      (lambda (_%obj112768%_)
        (let ((__tmp112937
               (let ((__tmp112938 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112938))))
          (declare (not safe))
          (##structure-instance-of? _%obj112768%_ __tmp112937))))
    (define vector-port?
      (lambda (_%obj112766%_)
        (let ((__tmp112939
               (let ((__tmp112940 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112940))))
          (declare (not safe))
          (##structure-instance-of? _%obj112766%_ __tmp112939))))
    (define string-port?
      (lambda (_%obj112764%_)
        (let ((__tmp112941
               (let ((__tmp112942 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp112942))))
          (declare (not safe))
          (##structure-instance-of? _%obj112764%_ __tmp112941))))
    (define u8vector-port?
      (lambda (_%obj112762%_)
        (let ((__tmp112943
               (let ((__tmp112944 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp112944))))
          (declare (not safe))
          (##structure-instance-of? _%obj112762%_ __tmp112943))))
    (define raw-device-port?
      (lambda (_%obj112760%_)
        (let ((__tmp112945
               (let ((__tmp112946 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp112946))))
          (declare (not safe))
          (##structure-instance-of? _%obj112760%_ __tmp112945))))
    (define tcp-server-port?
      (lambda (_%obj112758%_)
        (let ((__tmp112947
               (let ((__tmp112948 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp112948))))
          (declare (not safe))
          (##structure-instance-of? _%obj112758%_ __tmp112947))))
    (define udp-port?
      (lambda (_%obj112756%_)
        (let ((__tmp112949
               (let ((__tmp112950 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp112950))))
          (declare (not safe))
          (##structure-instance-of? _%obj112756%_ __tmp112949))))
    (define directory-port?
      (lambda (_%obj112754%_)
        (let ((__tmp112951
               (let ((__tmp112952 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp112952))))
          (declare (not safe))
          (##structure-instance-of? _%obj112754%_ __tmp112951))))
    (define event-queue-port?
      (lambda (_%obj112752%_)
        (let ((__tmp112953
               (let ((__tmp112954 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp112954))))
          (declare (not safe))
          (##structure-instance-of? _%obj112752%_ __tmp112953))))
    (define readenv?
      (lambda (_%obj112750%_)
        (let ((__tmp112955
               (let ((__tmp112956 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp112956))))
          (declare (not safe))
          (##structure-instance-of? _%obj112750%_ __tmp112955))))
    (define writeenv?
      (lambda (_%obj112748%_)
        (let ((__tmp112957
               (let ((__tmp112958 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp112958))))
          (declare (not safe))
          (##structure-instance-of? _%obj112748%_ __tmp112957))))
    (define vm?
      (lambda (_%obj112746%_)
        (let ((__tmp112959
               (let ((__tmp112960 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp112960))))
          (declare (not safe))
          (##structure-instance-of? _%obj112746%_ __tmp112959))))))
