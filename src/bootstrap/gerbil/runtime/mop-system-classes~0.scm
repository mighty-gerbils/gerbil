(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1784279014)
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
      (let ((__tmp147027 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp147027 '())))
    (define subtyped::t
      (let ((__tmp147028 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp147028 '())))
    (define structure::t
      (let ((__tmp147029 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp147029 '())))
    (define immediate::t
      (let ((__tmp147030 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp147030 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp147031 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp147031 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp147032 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp147032 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp147033 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp147033 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp147034 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp147034 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp147035 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp147035 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp147036 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp147036 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp147037 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp147037 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp147038 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp147038 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp147039 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp147039 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp147040 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp147040 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp147041 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp147041 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp147042 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp147042 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp147043 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp147043 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp147044 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp147044 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp147045 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp147045 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp147046 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp147046 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp147047 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp147047 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp147048 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp147048 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp147049 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp147049 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp147050 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp147050 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp147051 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp147051 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp147052 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp147052 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp147053 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp147053 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp147054 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp147054 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp147055 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp147055 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp147056 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp147056 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp147057 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp147057 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp147058 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp147058 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp147059 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp147059 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp147060 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp147060 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp147061 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp147061 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp147062 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp147062 '())))
    (define pair::t
      (let ((__tmp147063 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp147063 '())))
    (define null::t
      (let ((__tmp147064 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp147064 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp147065 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp147065 '())))
    (define vector::t
      (let ((__tmp147066 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp147066 '())))
    (define string::t
      (let ((__tmp147067 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp147067 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp147068 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp147068 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp147069 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp147069 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp147070 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp147070 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp147071 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp147071 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp147072 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp147072 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp147073 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp147073 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp147074 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp147074 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp147075 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp147075 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp147076 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp147076 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp147077 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp147077 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp147078 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp147078 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp147079 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp147079 '())))
    (define values::t
      (let ((__tmp147080 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp147080 '())))
    (define box::t
      (let ((__tmp147081 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp147081 '())))
    (define frame::t
      (let ((__tmp147082 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp147082 '())))
    (define continuation::t
      (let ((__tmp147083 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp147083 '())))
    (define promise::t
      (let ((__tmp147084 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp147084 '())))
    (define weak::t
      (let ((__tmp147085 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp147085 '())))
    (define foreign::t
      (let ((__tmp147086 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp147086 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp147087 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp147087 '())))
    (define return::t
      (let ((__tmp147088 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp147088 '())))
    (define time::t
      (let ((__tmp147089 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp147089 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp147090 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp147090 '())))
    (define thread-group::t
      (let ((__tmp147091 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp147091 '())))
    (define mutex::t
      (let ((__tmp147092 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp147092 '())))
    (define condvar::t
      (let ((__tmp147093 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp147093 '())))
    (define port::t
      (let ((__tmp147094 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147094 '())))
    (define object-port::t
      (let ((__tmp147095 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147095 '())))
    (define character-port::t
      (let ((__tmp147096 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147096 '())))
    (define byte-port::t
      (let ((__tmp147097 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147097 '())))
    (define device-port::t
      (let ((__tmp147098 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147098 '())))
    (define vector-port::t
      (let ((__tmp147099 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147099 '())))
    (define string-port::t
      (let ((__tmp147100 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147100 '())))
    (define u8vector-port::t
      (let ((__tmp147101 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147101 '())))
    (define raw-device-port::t
      (let ((__tmp147102 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147102 '())))
    (define tcp-server-port::t
      (let ((__tmp147103 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147103 '())))
    (define udp-port::t
      (let ((__tmp147104 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147104 '())))
    (define directory-port::t
      (let ((__tmp147105 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147105 '())))
    (define event-queue-port::t
      (let ((__tmp147106 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147106 '())))
    (define table::t
      (let ((__tmp147107 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp147107 '())))
    (define readenv::t
      (let ((__tmp147108 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147108 '())))
    (define writeenv::t
      (let ((__tmp147109 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147109 '())))
    (define readtable::t
      (let ((__tmp147110 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp147110 '())))
    (define processor::t
      (let ((__tmp147111 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp147111 '())))
    (define vm::t
      (let ((__tmp147112 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp147112 '())))
    (define file-info::t
      (let ((__tmp147113 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147113 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp147114 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147114 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp147115 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147115 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj147023%_)
        (let ((_%$e147025%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj147023%_)))))
          (if _%$e147025%_
              _%$e147025%_
              (not (let ((__tmp147116
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj147023%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp147116 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj147021%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147021%_))
            (builtin-object? _%obj147021%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj147019%_)
        (if (let () (declare (not safe)) (##structure? _%obj147019%_))
            (not (let ((__tmp147117
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj147019%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp147117 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj147017%_)
        (if (let () (declare (not safe)) (##special? _%obj147017%_))
            (let ((__tmp147118
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj147017%_ '0))))
              (declare (not safe))
              (##fx< __tmp147118 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj147015%_)
        (let () (declare (not safe)) (##special? _%obj147015%_))))
    (define unbound-object?
      (lambda (_%obj147013%_) (eq? _%obj147013%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj147011%_) (eq? _%obj147011%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj147009%_) (eq? _%obj147009%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj147007%_) (eq? _%obj147007%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj147005%_) (eq? _%obj147005%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj146997%_)
        (let ((_%$e146999%_ (eq? _%obj146997%_ '#!key)))
          (if _%$e146999%_
              _%$e146999%_
              (let ((_%$e147002%_ (eq? _%obj146997%_ '#!optional)))
                (if _%$e147002%_ _%$e147002%_ (eq? _%obj146997%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj146995%_) (eq? _%obj146995%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj146993%_) (eq? _%obj146993%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj146991%_) (eq? _%obj146991%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj146989%_)
        (if (flonum? _%obj146989%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj146989%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj146987%_)
        (if (flonum? _%obj146987%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj146987%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec146984%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec146984%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-string) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec146984%_ (macro-subtype-f64vector) '#t)
        _%vec146984%_))
    (define sequence?
      (lambda (_%obj146982%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj146982%_))
            (let ((__tmp147119
                   (let () (declare (not safe)) (##subtype _%obj146982%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp147119))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec146979%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec146979%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec146979%_ (macro-subtype-f64vector) '#t)
        _%vec146979%_))
    (define hvector?
      (lambda (_%obj146977%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj146977%_))
            (let ((__tmp147120
                   (let () (declare (not safe)) (##subtype _%obj146977%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp147120))
            '#f)))
    (define weak?
      (lambda (_%obj146975%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj146975%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj146975%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj146973%_)
        (let ((__tmp147121
               (let ((__tmp147122 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp147122))))
          (declare (not safe))
          (##structure-instance-of? _%obj146973%_ __tmp147121))))
    (define character-port?
      (lambda (_%obj146971%_)
        (let ((__tmp147123
               (let ((__tmp147124 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp147124))))
          (declare (not safe))
          (##structure-instance-of? _%obj146971%_ __tmp147123))))
    (define byte-port?
      (lambda (_%obj146969%_)
        (let ((__tmp147125
               (let ((__tmp147126 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp147126))))
          (declare (not safe))
          (##structure-instance-of? _%obj146969%_ __tmp147125))))
    (define device-port?
      (lambda (_%obj146967%_)
        (let ((__tmp147127
               (let ((__tmp147128 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147128))))
          (declare (not safe))
          (##structure-instance-of? _%obj146967%_ __tmp147127))))
    (define vector-port?
      (lambda (_%obj146965%_)
        (let ((__tmp147129
               (let ((__tmp147130 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147130))))
          (declare (not safe))
          (##structure-instance-of? _%obj146965%_ __tmp147129))))
    (define string-port?
      (lambda (_%obj146963%_)
        (let ((__tmp147131
               (let ((__tmp147132 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp147132))))
          (declare (not safe))
          (##structure-instance-of? _%obj146963%_ __tmp147131))))
    (define u8vector-port?
      (lambda (_%obj146961%_)
        (let ((__tmp147133
               (let ((__tmp147134 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147134))))
          (declare (not safe))
          (##structure-instance-of? _%obj146961%_ __tmp147133))))
    (define raw-device-port?
      (lambda (_%obj146959%_)
        (let ((__tmp147135
               (let ((__tmp147136 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147136))))
          (declare (not safe))
          (##structure-instance-of? _%obj146959%_ __tmp147135))))
    (define tcp-server-port?
      (lambda (_%obj146957%_)
        (let ((__tmp147137
               (let ((__tmp147138 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp147138))))
          (declare (not safe))
          (##structure-instance-of? _%obj146957%_ __tmp147137))))
    (define udp-port?
      (lambda (_%obj146955%_)
        (let ((__tmp147139
               (let ((__tmp147140 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp147140))))
          (declare (not safe))
          (##structure-instance-of? _%obj146955%_ __tmp147139))))
    (define directory-port?
      (lambda (_%obj146953%_)
        (let ((__tmp147141
               (let ((__tmp147142 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp147142))))
          (declare (not safe))
          (##structure-instance-of? _%obj146953%_ __tmp147141))))
    (define event-queue-port?
      (lambda (_%obj146951%_)
        (let ((__tmp147143
               (let ((__tmp147144 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp147144))))
          (declare (not safe))
          (##structure-instance-of? _%obj146951%_ __tmp147143))))
    (define readenv?
      (lambda (_%obj146949%_)
        (let ((__tmp147145
               (let ((__tmp147146 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp147146))))
          (declare (not safe))
          (##structure-instance-of? _%obj146949%_ __tmp147145))))
    (define writeenv?
      (lambda (_%obj146947%_)
        (let ((__tmp147147
               (let ((__tmp147148 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp147148))))
          (declare (not safe))
          (##structure-instance-of? _%obj146947%_ __tmp147147))))
    (define vm?
      (lambda (_%obj146945%_)
        (let ((__tmp147149
               (let ((__tmp147150 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp147150))))
          (declare (not safe))
          (##structure-instance-of? _%obj146945%_ __tmp147149))))))
