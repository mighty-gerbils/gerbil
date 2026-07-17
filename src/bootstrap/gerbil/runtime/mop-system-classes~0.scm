(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1784471377)
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
      (let ((__tmp147160 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp147160 '())))
    (define subtyped::t
      (let ((__tmp147161 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp147161 '())))
    (define structure::t
      (let ((__tmp147162 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp147162 '())))
    (define immediate::t
      (let ((__tmp147163 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp147163 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp147164 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp147164 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp147165 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp147165 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp147166 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp147166 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp147167 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp147167 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp147168 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp147168 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp147169 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp147169 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp147170 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp147170 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp147171 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp147171 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp147172 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp147172 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp147173 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp147173 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp147174 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp147174 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp147175 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp147175 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp147176 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp147176 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp147177 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp147177 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp147178 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp147178 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp147179 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp147179 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp147180 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp147180 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp147181 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp147181 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp147182 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp147182 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp147183 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp147183 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp147184 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp147184 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp147185 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp147185 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp147186 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp147186 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp147187 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp147187 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp147188 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp147188 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp147189 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp147189 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp147190 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp147190 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp147191 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp147191 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp147192 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp147192 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp147193 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp147193 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp147194 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp147194 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp147195 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp147195 '())))
    (define pair::t
      (let ((__tmp147196 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp147196 '())))
    (define null::t
      (let ((__tmp147197 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp147197 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp147198 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp147198 '())))
    (define vector::t
      (let ((__tmp147199 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp147199 '())))
    (define string::t
      (let ((__tmp147200 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp147200 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp147201 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp147201 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp147202 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp147202 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp147203 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp147203 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp147204 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp147204 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp147205 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp147205 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp147206 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp147206 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp147207 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp147207 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp147208 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp147208 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp147209 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp147209 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp147210 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp147210 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp147211 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp147211 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp147212 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp147212 '())))
    (define values::t
      (let ((__tmp147213 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp147213 '())))
    (define box::t
      (let ((__tmp147214 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp147214 '())))
    (define frame::t
      (let ((__tmp147215 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp147215 '())))
    (define continuation::t
      (let ((__tmp147216 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp147216 '())))
    (define promise::t
      (let ((__tmp147217 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp147217 '())))
    (define weak::t
      (let ((__tmp147218 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp147218 '())))
    (define foreign::t
      (let ((__tmp147219 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp147219 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp147220 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp147220 '())))
    (define return::t
      (let ((__tmp147221 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp147221 '())))
    (define time::t
      (let ((__tmp147222 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp147222 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp147223 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp147223 '())))
    (define thread-group::t
      (let ((__tmp147224 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp147224 '())))
    (define mutex::t
      (let ((__tmp147225 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp147225 '())))
    (define condvar::t
      (let ((__tmp147226 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp147226 '())))
    (define port::t
      (let ((__tmp147227 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147227 '())))
    (define object-port::t
      (let ((__tmp147228 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147228 '())))
    (define character-port::t
      (let ((__tmp147229 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147229 '())))
    (define byte-port::t
      (let ((__tmp147230 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147230 '())))
    (define device-port::t
      (let ((__tmp147231 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147231 '())))
    (define vector-port::t
      (let ((__tmp147232 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147232 '())))
    (define string-port::t
      (let ((__tmp147233 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147233 '())))
    (define u8vector-port::t
      (let ((__tmp147234 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147234 '())))
    (define raw-device-port::t
      (let ((__tmp147235 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147235 '())))
    (define tcp-server-port::t
      (let ((__tmp147236 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147236 '())))
    (define udp-port::t
      (let ((__tmp147237 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147237 '())))
    (define directory-port::t
      (let ((__tmp147238 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147238 '())))
    (define event-queue-port::t
      (let ((__tmp147239 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147239 '())))
    (define table::t
      (let ((__tmp147240 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp147240 '())))
    (define readenv::t
      (let ((__tmp147241 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147241 '())))
    (define writeenv::t
      (let ((__tmp147242 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147242 '())))
    (define readtable::t
      (let ((__tmp147243 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp147243 '())))
    (define processor::t
      (let ((__tmp147244 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp147244 '())))
    (define vm::t
      (let ((__tmp147245 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp147245 '())))
    (define file-info::t
      (let ((__tmp147246 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147246 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp147247 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147247 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp147248 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147248 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj147156%_)
        (let ((_%$e147158%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj147156%_)))))
          (if _%$e147158%_
              _%$e147158%_
              (not (let ((__tmp147249
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj147156%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp147249 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj147154%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147154%_))
            (builtin-object? _%obj147154%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj147152%_)
        (if (let () (declare (not safe)) (##structure? _%obj147152%_))
            (not (let ((__tmp147250
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj147152%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp147250 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj147150%_)
        (if (let () (declare (not safe)) (##special? _%obj147150%_))
            (let ((__tmp147251
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj147150%_ '0))))
              (declare (not safe))
              (##fx< __tmp147251 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj147148%_)
        (let () (declare (not safe)) (##special? _%obj147148%_))))
    (define unbound-object?
      (lambda (_%obj147146%_) (eq? _%obj147146%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj147144%_) (eq? _%obj147144%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj147142%_) (eq? _%obj147142%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj147140%_) (eq? _%obj147140%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj147138%_) (eq? _%obj147138%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj147130%_)
        (let ((_%$e147132%_ (eq? _%obj147130%_ '#!key)))
          (if _%$e147132%_
              _%$e147132%_
              (let ((_%$e147135%_ (eq? _%obj147130%_ '#!optional)))
                (if _%$e147135%_ _%$e147135%_ (eq? _%obj147130%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj147128%_) (eq? _%obj147128%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj147126%_) (eq? _%obj147126%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj147124%_) (eq? _%obj147124%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj147122%_)
        (if (flonum? _%obj147122%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj147122%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj147120%_)
        (if (flonum? _%obj147120%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj147120%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec147117%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec147117%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-string) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec147117%_ (macro-subtype-f64vector) '#t)
        _%vec147117%_))
    (define sequence?
      (lambda (_%obj147115%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147115%_))
            (let ((__tmp147252
                   (let () (declare (not safe)) (##subtype _%obj147115%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp147252))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec147112%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec147112%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec147112%_ (macro-subtype-f64vector) '#t)
        _%vec147112%_))
    (define hvector?
      (lambda (_%obj147110%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147110%_))
            (let ((__tmp147253
                   (let () (declare (not safe)) (##subtype _%obj147110%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp147253))
            '#f)))
    (define weak?
      (lambda (_%obj147108%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147108%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj147108%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj147106%_)
        (let ((__tmp147254
               (let ((__tmp147255 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp147255))))
          (declare (not safe))
          (##structure-instance-of? _%obj147106%_ __tmp147254))))
    (define character-port?
      (lambda (_%obj147104%_)
        (let ((__tmp147256
               (let ((__tmp147257 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp147257))))
          (declare (not safe))
          (##structure-instance-of? _%obj147104%_ __tmp147256))))
    (define byte-port?
      (lambda (_%obj147102%_)
        (let ((__tmp147258
               (let ((__tmp147259 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp147259))))
          (declare (not safe))
          (##structure-instance-of? _%obj147102%_ __tmp147258))))
    (define device-port?
      (lambda (_%obj147100%_)
        (let ((__tmp147260
               (let ((__tmp147261 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147261))))
          (declare (not safe))
          (##structure-instance-of? _%obj147100%_ __tmp147260))))
    (define vector-port?
      (lambda (_%obj147098%_)
        (let ((__tmp147262
               (let ((__tmp147263 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147263))))
          (declare (not safe))
          (##structure-instance-of? _%obj147098%_ __tmp147262))))
    (define string-port?
      (lambda (_%obj147096%_)
        (let ((__tmp147264
               (let ((__tmp147265 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp147265))))
          (declare (not safe))
          (##structure-instance-of? _%obj147096%_ __tmp147264))))
    (define u8vector-port?
      (lambda (_%obj147094%_)
        (let ((__tmp147266
               (let ((__tmp147267 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147267))))
          (declare (not safe))
          (##structure-instance-of? _%obj147094%_ __tmp147266))))
    (define raw-device-port?
      (lambda (_%obj147092%_)
        (let ((__tmp147268
               (let ((__tmp147269 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147269))))
          (declare (not safe))
          (##structure-instance-of? _%obj147092%_ __tmp147268))))
    (define tcp-server-port?
      (lambda (_%obj147090%_)
        (let ((__tmp147270
               (let ((__tmp147271 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp147271))))
          (declare (not safe))
          (##structure-instance-of? _%obj147090%_ __tmp147270))))
    (define udp-port?
      (lambda (_%obj147088%_)
        (let ((__tmp147272
               (let ((__tmp147273 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp147273))))
          (declare (not safe))
          (##structure-instance-of? _%obj147088%_ __tmp147272))))
    (define directory-port?
      (lambda (_%obj147086%_)
        (let ((__tmp147274
               (let ((__tmp147275 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp147275))))
          (declare (not safe))
          (##structure-instance-of? _%obj147086%_ __tmp147274))))
    (define event-queue-port?
      (lambda (_%obj147084%_)
        (let ((__tmp147276
               (let ((__tmp147277 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp147277))))
          (declare (not safe))
          (##structure-instance-of? _%obj147084%_ __tmp147276))))
    (define readenv?
      (lambda (_%obj147082%_)
        (let ((__tmp147278
               (let ((__tmp147279 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp147279))))
          (declare (not safe))
          (##structure-instance-of? _%obj147082%_ __tmp147278))))
    (define writeenv?
      (lambda (_%obj147080%_)
        (let ((__tmp147280
               (let ((__tmp147281 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp147281))))
          (declare (not safe))
          (##structure-instance-of? _%obj147080%_ __tmp147280))))
    (define vm?
      (lambda (_%obj147078%_)
        (let ((__tmp147282
               (let ((__tmp147283 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp147283))))
          (declare (not safe))
          (##structure-instance-of? _%obj147078%_ __tmp147282))))))
