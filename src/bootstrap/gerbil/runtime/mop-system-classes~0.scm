(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1781697558)
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
      (let ((__tmp142989 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp142989 '())))
    (define subtyped::t
      (let ((__tmp142990 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp142990 '())))
    (define structure::t
      (let ((__tmp142991 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp142991 '())))
    (define immediate::t
      (let ((__tmp142992 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp142992 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp142993 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp142993 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp142994 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp142994 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp142995 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp142995 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp142996 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp142996 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp142997 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp142997 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp142998 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp142998 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp142999 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp142999 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp143000 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp143000 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp143001 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp143001 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp143002 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp143002 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp143003 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp143003 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp143004 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp143004 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp143005 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp143005 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp143006 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp143006 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp143007 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp143007 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp143008 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp143008 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp143009 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp143009 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp143010 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp143010 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp143011 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp143011 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp143012 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp143012 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp143013 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp143013 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp143014 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp143014 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp143015 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp143015 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp143016 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp143016 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp143017 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp143017 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp143018 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp143018 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp143019 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp143019 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp143020 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp143020 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp143021 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp143021 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp143022 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp143022 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp143023 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp143023 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp143024 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp143024 '())))
    (define pair::t
      (let ((__tmp143025 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp143025 '())))
    (define null::t
      (let ((__tmp143026 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp143026 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp143027 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp143027 '())))
    (define vector::t
      (let ((__tmp143028 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp143028 '())))
    (define string::t
      (let ((__tmp143029 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp143029 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp143030 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp143030 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp143031 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp143031 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp143032 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp143032 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp143033 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp143033 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp143034 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp143034 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp143035 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp143035 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp143036 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp143036 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp143037 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp143037 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp143038 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp143038 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp143039 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp143039 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp143040 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp143040 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp143041 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp143041 '())))
    (define values::t
      (let ((__tmp143042 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp143042 '())))
    (define box::t
      (let ((__tmp143043 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp143043 '())))
    (define frame::t
      (let ((__tmp143044 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp143044 '())))
    (define continuation::t
      (let ((__tmp143045 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp143045 '())))
    (define promise::t
      (let ((__tmp143046 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp143046 '())))
    (define weak::t
      (let ((__tmp143047 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp143047 '())))
    (define foreign::t
      (let ((__tmp143048 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp143048 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp143049 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp143049 '())))
    (define return::t
      (let ((__tmp143050 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp143050 '())))
    (define time::t
      (let ((__tmp143051 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp143051 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp143052 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp143052 '())))
    (define thread-group::t
      (let ((__tmp143053 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp143053 '())))
    (define mutex::t
      (let ((__tmp143054 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp143054 '())))
    (define condvar::t
      (let ((__tmp143055 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp143055 '())))
    (define port::t
      (let ((__tmp143056 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143056 '())))
    (define object-port::t
      (let ((__tmp143057 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143057 '())))
    (define character-port::t
      (let ((__tmp143058 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143058 '())))
    (define byte-port::t
      (let ((__tmp143059 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143059 '())))
    (define device-port::t
      (let ((__tmp143060 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143060 '())))
    (define vector-port::t
      (let ((__tmp143061 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143061 '())))
    (define string-port::t
      (let ((__tmp143062 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143062 '())))
    (define u8vector-port::t
      (let ((__tmp143063 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143063 '())))
    (define raw-device-port::t
      (let ((__tmp143064 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143064 '())))
    (define tcp-server-port::t
      (let ((__tmp143065 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143065 '())))
    (define udp-port::t
      (let ((__tmp143066 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143066 '())))
    (define directory-port::t
      (let ((__tmp143067 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143067 '())))
    (define event-queue-port::t
      (let ((__tmp143068 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp143068 '())))
    (define table::t
      (let ((__tmp143069 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp143069 '())))
    (define readenv::t
      (let ((__tmp143070 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp143070 '())))
    (define writeenv::t
      (let ((__tmp143071 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp143071 '())))
    (define readtable::t
      (let ((__tmp143072 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp143072 '())))
    (define processor::t
      (let ((__tmp143073 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp143073 '())))
    (define vm::t
      (let ((__tmp143074 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp143074 '())))
    (define file-info::t
      (let ((__tmp143075 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp143075 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp143076 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp143076 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp143077 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp143077 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj142985%_)
        (let ((_%$e142987%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj142985%_)))))
          (if _%$e142987%_
              _%$e142987%_
              (not (let ((__tmp143078
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj142985%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp143078 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj142983%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj142983%_))
            (builtin-object? _%obj142983%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj142981%_)
        (if (let () (declare (not safe)) (##structure? _%obj142981%_))
            (not (let ((__tmp143079
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj142981%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp143079 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj142979%_)
        (if (let () (declare (not safe)) (##special? _%obj142979%_))
            (let ((__tmp143080
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj142979%_ '0))))
              (declare (not safe))
              (##fx< __tmp143080 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj142977%_)
        (let () (declare (not safe)) (##special? _%obj142977%_))))
    (define unbound-object?
      (lambda (_%obj142975%_) (eq? _%obj142975%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj142973%_) (eq? _%obj142973%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj142971%_) (eq? _%obj142971%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj142969%_) (eq? _%obj142969%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj142967%_) (eq? _%obj142967%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj142959%_)
        (let ((_%$e142961%_ (eq? _%obj142959%_ '#!key)))
          (if _%$e142961%_
              _%$e142961%_
              (let ((_%$e142964%_ (eq? _%obj142959%_ '#!optional)))
                (if _%$e142964%_ _%$e142964%_ (eq? _%obj142959%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj142957%_) (eq? _%obj142957%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj142955%_) (eq? _%obj142955%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj142953%_) (eq? _%obj142953%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj142951%_)
        (if (flonum? _%obj142951%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj142951%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj142949%_)
        (if (flonum? _%obj142949%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj142949%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec142946%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec142946%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-string) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec142946%_ (macro-subtype-f64vector) '#t)
        _%vec142946%_))
    (define sequence?
      (lambda (_%obj142944%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj142944%_))
            (let ((__tmp143081
                   (let () (declare (not safe)) (##subtype _%obj142944%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp143081))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec142941%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec142941%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec142941%_ (macro-subtype-f64vector) '#t)
        _%vec142941%_))
    (define hvector?
      (lambda (_%obj142939%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj142939%_))
            (let ((__tmp143082
                   (let () (declare (not safe)) (##subtype _%obj142939%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp143082))
            '#f)))
    (define weak?
      (lambda (_%obj142937%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj142937%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj142937%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj142935%_)
        (let ((__tmp143083
               (let ((__tmp143084 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp143084))))
          (declare (not safe))
          (##structure-instance-of? _%obj142935%_ __tmp143083))))
    (define character-port?
      (lambda (_%obj142933%_)
        (let ((__tmp143085
               (let ((__tmp143086 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp143086))))
          (declare (not safe))
          (##structure-instance-of? _%obj142933%_ __tmp143085))))
    (define byte-port?
      (lambda (_%obj142931%_)
        (let ((__tmp143087
               (let ((__tmp143088 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp143088))))
          (declare (not safe))
          (##structure-instance-of? _%obj142931%_ __tmp143087))))
    (define device-port?
      (lambda (_%obj142929%_)
        (let ((__tmp143089
               (let ((__tmp143090 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp143090))))
          (declare (not safe))
          (##structure-instance-of? _%obj142929%_ __tmp143089))))
    (define vector-port?
      (lambda (_%obj142927%_)
        (let ((__tmp143091
               (let ((__tmp143092 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp143092))))
          (declare (not safe))
          (##structure-instance-of? _%obj142927%_ __tmp143091))))
    (define string-port?
      (lambda (_%obj142925%_)
        (let ((__tmp143093
               (let ((__tmp143094 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp143094))))
          (declare (not safe))
          (##structure-instance-of? _%obj142925%_ __tmp143093))))
    (define u8vector-port?
      (lambda (_%obj142923%_)
        (let ((__tmp143095
               (let ((__tmp143096 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp143096))))
          (declare (not safe))
          (##structure-instance-of? _%obj142923%_ __tmp143095))))
    (define raw-device-port?
      (lambda (_%obj142921%_)
        (let ((__tmp143097
               (let ((__tmp143098 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp143098))))
          (declare (not safe))
          (##structure-instance-of? _%obj142921%_ __tmp143097))))
    (define tcp-server-port?
      (lambda (_%obj142919%_)
        (let ((__tmp143099
               (let ((__tmp143100 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp143100))))
          (declare (not safe))
          (##structure-instance-of? _%obj142919%_ __tmp143099))))
    (define udp-port?
      (lambda (_%obj142917%_)
        (let ((__tmp143101
               (let ((__tmp143102 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp143102))))
          (declare (not safe))
          (##structure-instance-of? _%obj142917%_ __tmp143101))))
    (define directory-port?
      (lambda (_%obj142915%_)
        (let ((__tmp143103
               (let ((__tmp143104 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp143104))))
          (declare (not safe))
          (##structure-instance-of? _%obj142915%_ __tmp143103))))
    (define event-queue-port?
      (lambda (_%obj142913%_)
        (let ((__tmp143105
               (let ((__tmp143106 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp143106))))
          (declare (not safe))
          (##structure-instance-of? _%obj142913%_ __tmp143105))))
    (define readenv?
      (lambda (_%obj142911%_)
        (let ((__tmp143107
               (let ((__tmp143108 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp143108))))
          (declare (not safe))
          (##structure-instance-of? _%obj142911%_ __tmp143107))))
    (define writeenv?
      (lambda (_%obj142909%_)
        (let ((__tmp143109
               (let ((__tmp143110 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp143110))))
          (declare (not safe))
          (##structure-instance-of? _%obj142909%_ __tmp143109))))
    (define vm?
      (lambda (_%obj142907%_)
        (let ((__tmp143111
               (let ((__tmp143112 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp143112))))
          (declare (not safe))
          (##structure-instance-of? _%obj142907%_ __tmp143111))))))
