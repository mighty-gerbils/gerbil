(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1783939346)
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
      (let ((__tmp144285 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp144285 '())))
    (define subtyped::t
      (let ((__tmp144286 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp144286 '())))
    (define structure::t
      (let ((__tmp144287 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp144287 '())))
    (define immediate::t
      (let ((__tmp144288 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp144288 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp144289 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp144289 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp144290 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp144290 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp144291 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp144291 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp144292 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp144292 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp144293 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp144293 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp144294 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp144294 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp144295 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp144295 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp144296 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp144296 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp144297 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp144297 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp144298 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp144298 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp144299 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp144299 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp144300 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp144300 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp144301 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp144301 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp144302 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp144302 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp144303 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp144303 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp144304 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp144304 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp144305 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp144305 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp144306 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp144306 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp144307 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp144307 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp144308 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp144308 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp144309 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp144309 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp144310 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp144310 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp144311 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp144311 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp144312 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp144312 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp144313 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp144313 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp144314 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp144314 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp144315 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp144315 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp144316 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp144316 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp144317 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp144317 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp144318 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp144318 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp144319 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp144319 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp144320 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp144320 '())))
    (define pair::t
      (let ((__tmp144321 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp144321 '())))
    (define null::t
      (let ((__tmp144322 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp144322 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp144323 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp144323 '())))
    (define vector::t
      (let ((__tmp144324 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp144324 '())))
    (define string::t
      (let ((__tmp144325 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp144325 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp144326 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp144326 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp144327 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp144327 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp144328 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp144328 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp144329 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp144329 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp144330 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp144330 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp144331 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp144331 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp144332 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp144332 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp144333 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp144333 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp144334 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp144334 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp144335 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp144335 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp144336 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp144336 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp144337 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp144337 '())))
    (define values::t
      (let ((__tmp144338 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp144338 '())))
    (define box::t
      (let ((__tmp144339 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp144339 '())))
    (define frame::t
      (let ((__tmp144340 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp144340 '())))
    (define continuation::t
      (let ((__tmp144341 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp144341 '())))
    (define promise::t
      (let ((__tmp144342 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp144342 '())))
    (define weak::t
      (let ((__tmp144343 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp144343 '())))
    (define foreign::t
      (let ((__tmp144344 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp144344 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp144345 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp144345 '())))
    (define return::t
      (let ((__tmp144346 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp144346 '())))
    (define time::t
      (let ((__tmp144347 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp144347 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp144348 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp144348 '())))
    (define thread-group::t
      (let ((__tmp144349 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp144349 '())))
    (define mutex::t
      (let ((__tmp144350 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp144350 '())))
    (define condvar::t
      (let ((__tmp144351 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp144351 '())))
    (define port::t
      (let ((__tmp144352 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144352 '())))
    (define object-port::t
      (let ((__tmp144353 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144353 '())))
    (define character-port::t
      (let ((__tmp144354 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144354 '())))
    (define byte-port::t
      (let ((__tmp144355 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144355 '())))
    (define device-port::t
      (let ((__tmp144356 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144356 '())))
    (define vector-port::t
      (let ((__tmp144357 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144357 '())))
    (define string-port::t
      (let ((__tmp144358 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144358 '())))
    (define u8vector-port::t
      (let ((__tmp144359 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144359 '())))
    (define raw-device-port::t
      (let ((__tmp144360 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144360 '())))
    (define tcp-server-port::t
      (let ((__tmp144361 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144361 '())))
    (define udp-port::t
      (let ((__tmp144362 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144362 '())))
    (define directory-port::t
      (let ((__tmp144363 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144363 '())))
    (define event-queue-port::t
      (let ((__tmp144364 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp144364 '())))
    (define table::t
      (let ((__tmp144365 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp144365 '())))
    (define readenv::t
      (let ((__tmp144366 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp144366 '())))
    (define writeenv::t
      (let ((__tmp144367 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp144367 '())))
    (define readtable::t
      (let ((__tmp144368 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp144368 '())))
    (define processor::t
      (let ((__tmp144369 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp144369 '())))
    (define vm::t
      (let ((__tmp144370 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp144370 '())))
    (define file-info::t
      (let ((__tmp144371 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp144371 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp144372 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp144372 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp144373 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp144373 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj144281%_)
        (let ((_%$e144283%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj144281%_)))))
          (if _%$e144283%_
              _%$e144283%_
              (not (let ((__tmp144374
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj144281%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp144374 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj144279%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj144279%_))
            (builtin-object? _%obj144279%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj144277%_)
        (if (let () (declare (not safe)) (##structure? _%obj144277%_))
            (not (let ((__tmp144375
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj144277%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp144375 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj144275%_)
        (if (let () (declare (not safe)) (##special? _%obj144275%_))
            (let ((__tmp144376
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj144275%_ '0))))
              (declare (not safe))
              (##fx< __tmp144376 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj144273%_)
        (let () (declare (not safe)) (##special? _%obj144273%_))))
    (define unbound-object?
      (lambda (_%obj144271%_) (eq? _%obj144271%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj144269%_) (eq? _%obj144269%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj144267%_) (eq? _%obj144267%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj144265%_) (eq? _%obj144265%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj144263%_) (eq? _%obj144263%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj144255%_)
        (let ((_%$e144257%_ (eq? _%obj144255%_ '#!key)))
          (if _%$e144257%_
              _%$e144257%_
              (let ((_%$e144260%_ (eq? _%obj144255%_ '#!optional)))
                (if _%$e144260%_ _%$e144260%_ (eq? _%obj144255%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj144253%_) (eq? _%obj144253%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj144251%_) (eq? _%obj144251%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj144249%_) (eq? _%obj144249%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj144247%_)
        (if (flonum? _%obj144247%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj144247%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj144245%_)
        (if (flonum? _%obj144245%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj144245%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec144242%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec144242%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-string) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec144242%_ (macro-subtype-f64vector) '#t)
        _%vec144242%_))
    (define sequence?
      (lambda (_%obj144240%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj144240%_))
            (let ((__tmp144377
                   (let () (declare (not safe)) (##subtype _%obj144240%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp144377))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec144237%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec144237%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec144237%_ (macro-subtype-f64vector) '#t)
        _%vec144237%_))
    (define hvector?
      (lambda (_%obj144235%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj144235%_))
            (let ((__tmp144378
                   (let () (declare (not safe)) (##subtype _%obj144235%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp144378))
            '#f)))
    (define weak?
      (lambda (_%obj144233%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj144233%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj144233%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj144231%_)
        (let ((__tmp144379
               (let ((__tmp144380 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp144380))))
          (declare (not safe))
          (##structure-instance-of? _%obj144231%_ __tmp144379))))
    (define character-port?
      (lambda (_%obj144229%_)
        (let ((__tmp144381
               (let ((__tmp144382 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp144382))))
          (declare (not safe))
          (##structure-instance-of? _%obj144229%_ __tmp144381))))
    (define byte-port?
      (lambda (_%obj144227%_)
        (let ((__tmp144383
               (let ((__tmp144384 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp144384))))
          (declare (not safe))
          (##structure-instance-of? _%obj144227%_ __tmp144383))))
    (define device-port?
      (lambda (_%obj144225%_)
        (let ((__tmp144385
               (let ((__tmp144386 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp144386))))
          (declare (not safe))
          (##structure-instance-of? _%obj144225%_ __tmp144385))))
    (define vector-port?
      (lambda (_%obj144223%_)
        (let ((__tmp144387
               (let ((__tmp144388 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp144388))))
          (declare (not safe))
          (##structure-instance-of? _%obj144223%_ __tmp144387))))
    (define string-port?
      (lambda (_%obj144221%_)
        (let ((__tmp144389
               (let ((__tmp144390 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp144390))))
          (declare (not safe))
          (##structure-instance-of? _%obj144221%_ __tmp144389))))
    (define u8vector-port?
      (lambda (_%obj144219%_)
        (let ((__tmp144391
               (let ((__tmp144392 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp144392))))
          (declare (not safe))
          (##structure-instance-of? _%obj144219%_ __tmp144391))))
    (define raw-device-port?
      (lambda (_%obj144217%_)
        (let ((__tmp144393
               (let ((__tmp144394 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp144394))))
          (declare (not safe))
          (##structure-instance-of? _%obj144217%_ __tmp144393))))
    (define tcp-server-port?
      (lambda (_%obj144215%_)
        (let ((__tmp144395
               (let ((__tmp144396 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp144396))))
          (declare (not safe))
          (##structure-instance-of? _%obj144215%_ __tmp144395))))
    (define udp-port?
      (lambda (_%obj144213%_)
        (let ((__tmp144397
               (let ((__tmp144398 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp144398))))
          (declare (not safe))
          (##structure-instance-of? _%obj144213%_ __tmp144397))))
    (define directory-port?
      (lambda (_%obj144211%_)
        (let ((__tmp144399
               (let ((__tmp144400 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp144400))))
          (declare (not safe))
          (##structure-instance-of? _%obj144211%_ __tmp144399))))
    (define event-queue-port?
      (lambda (_%obj144209%_)
        (let ((__tmp144401
               (let ((__tmp144402 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp144402))))
          (declare (not safe))
          (##structure-instance-of? _%obj144209%_ __tmp144401))))
    (define readenv?
      (lambda (_%obj144207%_)
        (let ((__tmp144403
               (let ((__tmp144404 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp144404))))
          (declare (not safe))
          (##structure-instance-of? _%obj144207%_ __tmp144403))))
    (define writeenv?
      (lambda (_%obj144205%_)
        (let ((__tmp144405
               (let ((__tmp144406 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp144406))))
          (declare (not safe))
          (##structure-instance-of? _%obj144205%_ __tmp144405))))
    (define vm?
      (lambda (_%obj144203%_)
        (let ((__tmp144407
               (let ((__tmp144408 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp144408))))
          (declare (not safe))
          (##structure-instance-of? _%obj144203%_ __tmp144407))))))
