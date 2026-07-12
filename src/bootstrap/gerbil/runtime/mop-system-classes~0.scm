(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1783878475)
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
      (let ((__tmp144230 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp144230 '())))
    (define subtyped::t
      (let ((__tmp144231 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp144231 '())))
    (define structure::t
      (let ((__tmp144232 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp144232 '())))
    (define immediate::t
      (let ((__tmp144233 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp144233 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp144234 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp144234 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp144235 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp144235 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp144236 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp144236 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp144237 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp144237 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp144238 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp144238 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp144239 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp144239 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp144240 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp144240 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp144241 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp144241 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp144242 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp144242 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp144243 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp144243 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp144244 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp144244 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp144245 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp144245 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp144246 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp144246 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp144247 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp144247 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp144248 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp144248 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp144249 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp144249 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp144250 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp144250 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp144251 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp144251 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp144252 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp144252 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp144253 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp144253 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp144254 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp144254 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp144255 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp144255 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp144256 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp144256 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp144257 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp144257 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp144258 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp144258 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp144259 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp144259 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp144260 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp144260 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp144261 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp144261 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp144262 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp144262 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp144263 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp144263 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp144264 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp144264 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp144265 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp144265 '())))
    (define pair::t
      (let ((__tmp144266 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp144266 '())))
    (define null::t
      (let ((__tmp144267 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp144267 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp144268 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp144268 '())))
    (define vector::t
      (let ((__tmp144269 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp144269 '())))
    (define string::t
      (let ((__tmp144270 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp144270 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp144271 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp144271 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp144272 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp144272 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp144273 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp144273 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp144274 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp144274 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp144275 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp144275 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp144276 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp144276 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp144277 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp144277 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp144278 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp144278 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp144279 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp144279 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp144280 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp144280 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp144281 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp144281 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp144282 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp144282 '())))
    (define values::t
      (let ((__tmp144283 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp144283 '())))
    (define box::t
      (let ((__tmp144284 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp144284 '())))
    (define frame::t
      (let ((__tmp144285 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp144285 '())))
    (define continuation::t
      (let ((__tmp144286 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp144286 '())))
    (define promise::t
      (let ((__tmp144287 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp144287 '())))
    (define weak::t
      (let ((__tmp144288 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp144288 '())))
    (define foreign::t
      (let ((__tmp144289 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp144289 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp144290 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp144290 '())))
    (define return::t
      (let ((__tmp144291 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp144291 '())))
    (define time::t
      (let ((__tmp144292 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp144292 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp144293 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp144293 '())))
    (define thread-group::t
      (let ((__tmp144294 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp144294 '())))
    (define mutex::t
      (let ((__tmp144295 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp144295 '())))
    (define condvar::t
      (let ((__tmp144296 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp144296 '())))
    (define port::t
      (let ((__tmp144297 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144297 '())))
    (define object-port::t
      (let ((__tmp144298 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144298 '())))
    (define character-port::t
      (let ((__tmp144299 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144299 '())))
    (define byte-port::t
      (let ((__tmp144300 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144300 '())))
    (define device-port::t
      (let ((__tmp144301 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144301 '())))
    (define vector-port::t
      (let ((__tmp144302 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144302 '())))
    (define string-port::t
      (let ((__tmp144303 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144303 '())))
    (define u8vector-port::t
      (let ((__tmp144304 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144304 '())))
    (define raw-device-port::t
      (let ((__tmp144305 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144305 '())))
    (define tcp-server-port::t
      (let ((__tmp144306 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144306 '())))
    (define udp-port::t
      (let ((__tmp144307 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144307 '())))
    (define directory-port::t
      (let ((__tmp144308 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144308 '())))
    (define event-queue-port::t
      (let ((__tmp144309 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144309 '())))
    (define table::t
      (let ((__tmp144310 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp144310 '())))
    (define readenv::t
      (let ((__tmp144311 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp144311 '())))
    (define writeenv::t
      (let ((__tmp144312 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp144312 '())))
    (define readtable::t
      (let ((__tmp144313 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp144313 '())))
    (define processor::t
      (let ((__tmp144314 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp144314 '())))
    (define vm::t
      (let ((__tmp144315 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp144315 '())))
    (define file-info::t
      (let ((__tmp144316 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp144316 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp144317 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp144317 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp144318 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp144318 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj144226%_)
        (let ((_%$e144228%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj144226%_)))))
          (if _%$e144228%_
              _%$e144228%_
              (not (let ((__tmp144319
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj144226%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp144319 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj144224%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj144224%_))
            (builtin-object? _%obj144224%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj144222%_)
        (if (let () (declare (not safe)) (##structure? _%obj144222%_))
            (not (let ((__tmp144320
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj144222%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp144320 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj144220%_)
        (if (let () (declare (not safe)) (##special? _%obj144220%_))
            (let ((__tmp144321
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj144220%_ '0))))
              (declare (not safe))
              (##fx< __tmp144321 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj144218%_)
        (let () (declare (not safe)) (##special? _%obj144218%_))))
    (define unbound-object?
      (lambda (_%obj144216%_) (eq? _%obj144216%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj144214%_) (eq? _%obj144214%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj144212%_) (eq? _%obj144212%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj144210%_) (eq? _%obj144210%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj144208%_) (eq? _%obj144208%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj144200%_)
        (let ((_%$e144202%_ (eq? _%obj144200%_ '#!key)))
          (if _%$e144202%_
              _%$e144202%_
              (let ((_%$e144205%_ (eq? _%obj144200%_ '#!optional)))
                (if _%$e144205%_ _%$e144205%_ (eq? _%obj144200%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj144198%_) (eq? _%obj144198%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj144196%_) (eq? _%obj144196%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj144194%_) (eq? _%obj144194%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj144192%_)
        (if (flonum? _%obj144192%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj144192%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj144190%_)
        (if (flonum? _%obj144190%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj144190%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec144187%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec144187%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-string) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec144187%_ (macro-subtype-f64vector) '#t)
        _%vec144187%_))
    (define sequence?
      (lambda (_%obj144185%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj144185%_))
            (let ((__tmp144322
                   (let () (declare (not safe)) (##subtype _%obj144185%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp144322))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec144182%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec144182%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec144182%_ (macro-subtype-f64vector) '#t)
        _%vec144182%_))
    (define hvector?
      (lambda (_%obj144180%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj144180%_))
            (let ((__tmp144323
                   (let () (declare (not safe)) (##subtype _%obj144180%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp144323))
            '#f)))
    (define weak?
      (lambda (_%obj144178%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj144178%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj144178%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj144176%_)
        (let ((__tmp144324
               (let ((__tmp144325 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp144325))))
          (declare (not safe))
          (##structure-instance-of? _%obj144176%_ __tmp144324))))
    (define character-port?
      (lambda (_%obj144174%_)
        (let ((__tmp144326
               (let ((__tmp144327 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp144327))))
          (declare (not safe))
          (##structure-instance-of? _%obj144174%_ __tmp144326))))
    (define byte-port?
      (lambda (_%obj144172%_)
        (let ((__tmp144328
               (let ((__tmp144329 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp144329))))
          (declare (not safe))
          (##structure-instance-of? _%obj144172%_ __tmp144328))))
    (define device-port?
      (lambda (_%obj144170%_)
        (let ((__tmp144330
               (let ((__tmp144331 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp144331))))
          (declare (not safe))
          (##structure-instance-of? _%obj144170%_ __tmp144330))))
    (define vector-port?
      (lambda (_%obj144168%_)
        (let ((__tmp144332
               (let ((__tmp144333 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp144333))))
          (declare (not safe))
          (##structure-instance-of? _%obj144168%_ __tmp144332))))
    (define string-port?
      (lambda (_%obj144166%_)
        (let ((__tmp144334
               (let ((__tmp144335 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp144335))))
          (declare (not safe))
          (##structure-instance-of? _%obj144166%_ __tmp144334))))
    (define u8vector-port?
      (lambda (_%obj144164%_)
        (let ((__tmp144336
               (let ((__tmp144337 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp144337))))
          (declare (not safe))
          (##structure-instance-of? _%obj144164%_ __tmp144336))))
    (define raw-device-port?
      (lambda (_%obj144162%_)
        (let ((__tmp144338
               (let ((__tmp144339 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp144339))))
          (declare (not safe))
          (##structure-instance-of? _%obj144162%_ __tmp144338))))
    (define tcp-server-port?
      (lambda (_%obj144160%_)
        (let ((__tmp144340
               (let ((__tmp144341 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp144341))))
          (declare (not safe))
          (##structure-instance-of? _%obj144160%_ __tmp144340))))
    (define udp-port?
      (lambda (_%obj144158%_)
        (let ((__tmp144342
               (let ((__tmp144343 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp144343))))
          (declare (not safe))
          (##structure-instance-of? _%obj144158%_ __tmp144342))))
    (define directory-port?
      (lambda (_%obj144156%_)
        (let ((__tmp144344
               (let ((__tmp144345 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp144345))))
          (declare (not safe))
          (##structure-instance-of? _%obj144156%_ __tmp144344))))
    (define event-queue-port?
      (lambda (_%obj144154%_)
        (let ((__tmp144346
               (let ((__tmp144347 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp144347))))
          (declare (not safe))
          (##structure-instance-of? _%obj144154%_ __tmp144346))))
    (define readenv?
      (lambda (_%obj144152%_)
        (let ((__tmp144348
               (let ((__tmp144349 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp144349))))
          (declare (not safe))
          (##structure-instance-of? _%obj144152%_ __tmp144348))))
    (define writeenv?
      (lambda (_%obj144150%_)
        (let ((__tmp144350
               (let ((__tmp144351 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp144351))))
          (declare (not safe))
          (##structure-instance-of? _%obj144150%_ __tmp144350))))
    (define vm?
      (lambda (_%obj144148%_)
        (let ((__tmp144352
               (let ((__tmp144353 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp144353))))
          (declare (not safe))
          (##structure-instance-of? _%obj144148%_ __tmp144352))))))
