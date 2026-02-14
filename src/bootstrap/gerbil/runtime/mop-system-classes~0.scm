(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1771104503)
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
      (let ((__tmp139838 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp139838 '())))
    (define subtyped::t
      (let ((__tmp139839 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp139839 '())))
    (define structure::t
      (let ((__tmp139840 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp139840 '())))
    (define immediate::t
      (let ((__tmp139841 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp139841 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp139842 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp139842 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp139843 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp139843 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp139844 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp139844 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp139845 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp139845 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp139846 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp139846 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp139847 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp139847 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp139848 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp139848 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp139849 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp139849 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp139850 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp139850 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp139851 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp139851 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp139852 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp139852 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp139853 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp139853 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp139854 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp139854 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp139855 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp139855 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp139856 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp139856 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp139857 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp139857 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp139858 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp139858 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp139859 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp139859 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp139860 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp139860 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp139861 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp139861 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp139862 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp139862 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp139863 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp139863 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp139864 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp139864 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp139865 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp139865 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp139866 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp139866 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp139867 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp139867 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp139868 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp139868 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp139869 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp139869 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp139870 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp139870 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp139871 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp139871 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp139872 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp139872 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp139873 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp139873 '())))
    (define pair::t
      (let ((__tmp139874 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp139874 '())))
    (define null::t
      (let ((__tmp139875 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp139875 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp139876 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp139876 '())))
    (define vector::t
      (let ((__tmp139877 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp139877 '())))
    (define string::t
      (let ((__tmp139878 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp139878 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp139879 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp139879 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp139880 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp139880 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp139881 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp139881 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp139882 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp139882 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp139883 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp139883 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp139884 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp139884 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp139885 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp139885 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp139886 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp139886 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp139887 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp139887 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp139888 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp139888 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp139889 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp139889 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp139890 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp139890 '())))
    (define values::t
      (let ((__tmp139891 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp139891 '())))
    (define box::t
      (let ((__tmp139892 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp139892 '())))
    (define frame::t
      (let ((__tmp139893 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp139893 '())))
    (define continuation::t
      (let ((__tmp139894 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp139894 '())))
    (define promise::t
      (let ((__tmp139895 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp139895 '())))
    (define weak::t
      (let ((__tmp139896 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp139896 '())))
    (define foreign::t
      (let ((__tmp139897 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp139897 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp139898 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp139898 '())))
    (define return::t
      (let ((__tmp139899 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp139899 '())))
    (define time::t
      (let ((__tmp139900 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp139900 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp139901 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp139901 '())))
    (define thread-group::t
      (let ((__tmp139902 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp139902 '())))
    (define mutex::t
      (let ((__tmp139903 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp139903 '())))
    (define condvar::t
      (let ((__tmp139904 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp139904 '())))
    (define port::t
      (let ((__tmp139905 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139905 '())))
    (define object-port::t
      (let ((__tmp139906 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139906 '())))
    (define character-port::t
      (let ((__tmp139907 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139907 '())))
    (define byte-port::t
      (let ((__tmp139908 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139908 '())))
    (define device-port::t
      (let ((__tmp139909 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139909 '())))
    (define vector-port::t
      (let ((__tmp139910 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139910 '())))
    (define string-port::t
      (let ((__tmp139911 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139911 '())))
    (define u8vector-port::t
      (let ((__tmp139912 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139912 '())))
    (define raw-device-port::t
      (let ((__tmp139913 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139913 '())))
    (define tcp-server-port::t
      (let ((__tmp139914 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139914 '())))
    (define udp-port::t
      (let ((__tmp139915 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139915 '())))
    (define directory-port::t
      (let ((__tmp139916 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139916 '())))
    (define event-queue-port::t
      (let ((__tmp139917 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp139917 '())))
    (define table::t
      (let ((__tmp139918 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp139918 '())))
    (define readenv::t
      (let ((__tmp139919 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp139919 '())))
    (define writeenv::t
      (let ((__tmp139920 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp139920 '())))
    (define readtable::t
      (let ((__tmp139921 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp139921 '())))
    (define processor::t
      (let ((__tmp139922 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp139922 '())))
    (define vm::t
      (let ((__tmp139923 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp139923 '())))
    (define file-info::t
      (let ((__tmp139924 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139924 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp139925 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139925 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp139926 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp139926 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj139834%_)
        (let ((_%$e139836%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj139834%_)))))
          (if _%$e139836%_
              _%$e139836%_
              (not (let ((__tmp139927
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj139834%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp139927 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj139832%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139832%_))
            (builtin-object? _%obj139832%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj139830%_)
        (if (let () (declare (not safe)) (##structure? _%obj139830%_))
            (not (let ((__tmp139928
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj139830%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp139928 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj139828%_)
        (if (let () (declare (not safe)) (##special? _%obj139828%_))
            (let ((__tmp139929
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj139828%_ '0))))
              (declare (not safe))
              (##fx< __tmp139929 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj139826%_)
        (let () (declare (not safe)) (##special? _%obj139826%_))))
    (define unbound-object?
      (lambda (_%obj139824%_) (eq? _%obj139824%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj139822%_) (eq? _%obj139822%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj139820%_) (eq? _%obj139820%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj139818%_) (eq? _%obj139818%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj139816%_) (eq? _%obj139816%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj139808%_)
        (let ((_%$e139810%_ (eq? _%obj139808%_ '#!key)))
          (if _%$e139810%_
              _%$e139810%_
              (let ((_%$e139813%_ (eq? _%obj139808%_ '#!optional)))
                (if _%$e139813%_ _%$e139813%_ (eq? _%obj139808%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj139806%_) (eq? _%obj139806%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj139804%_) (eq? _%obj139804%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj139802%_) (eq? _%obj139802%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj139800%_)
        (if (flonum? _%obj139800%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj139800%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj139798%_)
        (if (flonum? _%obj139798%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj139798%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec139795%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec139795%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-string) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec139795%_ (macro-subtype-f64vector) '#t)
        _%vec139795%_))
    (define sequence?
      (lambda (_%obj139793%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139793%_))
            (let ((__tmp139930
                   (let () (declare (not safe)) (##subtype _%obj139793%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp139930))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec139790%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec139790%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec139790%_ (macro-subtype-f64vector) '#t)
        _%vec139790%_))
    (define hvector?
      (lambda (_%obj139788%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139788%_))
            (let ((__tmp139931
                   (let () (declare (not safe)) (##subtype _%obj139788%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp139931))
            '#f)))
    (define weak?
      (lambda (_%obj139786%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj139786%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj139786%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj139784%_)
        (let ((__tmp139932
               (let ((__tmp139933 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp139933))))
          (declare (not safe))
          (##structure-instance-of? _%obj139784%_ __tmp139932))))
    (define character-port?
      (lambda (_%obj139782%_)
        (let ((__tmp139934
               (let ((__tmp139935 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp139935))))
          (declare (not safe))
          (##structure-instance-of? _%obj139782%_ __tmp139934))))
    (define byte-port?
      (lambda (_%obj139780%_)
        (let ((__tmp139936
               (let ((__tmp139937 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp139937))))
          (declare (not safe))
          (##structure-instance-of? _%obj139780%_ __tmp139936))))
    (define device-port?
      (lambda (_%obj139778%_)
        (let ((__tmp139938
               (let ((__tmp139939 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp139939))))
          (declare (not safe))
          (##structure-instance-of? _%obj139778%_ __tmp139938))))
    (define vector-port?
      (lambda (_%obj139776%_)
        (let ((__tmp139940
               (let ((__tmp139941 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp139941))))
          (declare (not safe))
          (##structure-instance-of? _%obj139776%_ __tmp139940))))
    (define string-port?
      (lambda (_%obj139774%_)
        (let ((__tmp139942
               (let ((__tmp139943 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp139943))))
          (declare (not safe))
          (##structure-instance-of? _%obj139774%_ __tmp139942))))
    (define u8vector-port?
      (lambda (_%obj139772%_)
        (let ((__tmp139944
               (let ((__tmp139945 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp139945))))
          (declare (not safe))
          (##structure-instance-of? _%obj139772%_ __tmp139944))))
    (define raw-device-port?
      (lambda (_%obj139770%_)
        (let ((__tmp139946
               (let ((__tmp139947 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp139947))))
          (declare (not safe))
          (##structure-instance-of? _%obj139770%_ __tmp139946))))
    (define tcp-server-port?
      (lambda (_%obj139768%_)
        (let ((__tmp139948
               (let ((__tmp139949 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp139949))))
          (declare (not safe))
          (##structure-instance-of? _%obj139768%_ __tmp139948))))
    (define udp-port?
      (lambda (_%obj139766%_)
        (let ((__tmp139950
               (let ((__tmp139951 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp139951))))
          (declare (not safe))
          (##structure-instance-of? _%obj139766%_ __tmp139950))))
    (define directory-port?
      (lambda (_%obj139764%_)
        (let ((__tmp139952
               (let ((__tmp139953 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp139953))))
          (declare (not safe))
          (##structure-instance-of? _%obj139764%_ __tmp139952))))
    (define event-queue-port?
      (lambda (_%obj139762%_)
        (let ((__tmp139954
               (let ((__tmp139955 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp139955))))
          (declare (not safe))
          (##structure-instance-of? _%obj139762%_ __tmp139954))))
    (define readenv?
      (lambda (_%obj139760%_)
        (let ((__tmp139956
               (let ((__tmp139957 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp139957))))
          (declare (not safe))
          (##structure-instance-of? _%obj139760%_ __tmp139956))))
    (define writeenv?
      (lambda (_%obj139758%_)
        (let ((__tmp139958
               (let ((__tmp139959 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp139959))))
          (declare (not safe))
          (##structure-instance-of? _%obj139758%_ __tmp139958))))
    (define vm?
      (lambda (_%obj139756%_)
        (let ((__tmp139960
               (let ((__tmp139961 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp139961))))
          (declare (not safe))
          (##structure-instance-of? _%obj139756%_ __tmp139960))))))
