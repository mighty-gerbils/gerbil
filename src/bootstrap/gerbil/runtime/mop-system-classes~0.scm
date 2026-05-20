(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1779289636)
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
      (let ((__tmp141105 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp141105 '())))
    (define subtyped::t
      (let ((__tmp141106 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp141106 '())))
    (define structure::t
      (let ((__tmp141107 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp141107 '())))
    (define immediate::t
      (let ((__tmp141108 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp141108 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp141109 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp141109 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp141110 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp141110 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp141111 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp141111 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp141112 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp141112 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp141113 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp141113 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp141114 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp141114 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp141115 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp141115 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp141116 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp141116 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp141117 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp141117 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp141118 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp141118 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp141119 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp141119 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp141120 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp141120 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp141121 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp141121 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp141122 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp141122 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp141123 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp141123 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp141124 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp141124 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp141125 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp141125 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp141126 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp141126 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp141127 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp141127 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp141128 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp141128 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp141129 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp141129 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp141130 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp141130 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp141131 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp141131 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp141132 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp141132 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp141133 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp141133 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp141134 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp141134 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp141135 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp141135 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp141136 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp141136 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp141137 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp141137 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp141138 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp141138 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp141139 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp141139 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp141140 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp141140 '())))
    (define pair::t
      (let ((__tmp141141 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp141141 '())))
    (define null::t
      (let ((__tmp141142 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp141142 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp141143 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp141143 '())))
    (define vector::t
      (let ((__tmp141144 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp141144 '())))
    (define string::t
      (let ((__tmp141145 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp141145 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp141146 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp141146 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp141147 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp141147 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp141148 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp141148 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp141149 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp141149 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp141150 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp141150 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp141151 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp141151 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp141152 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp141152 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp141153 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp141153 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp141154 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp141154 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp141155 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp141155 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp141156 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp141156 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp141157 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp141157 '())))
    (define values::t
      (let ((__tmp141158 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp141158 '())))
    (define box::t
      (let ((__tmp141159 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp141159 '())))
    (define frame::t
      (let ((__tmp141160 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp141160 '())))
    (define continuation::t
      (let ((__tmp141161 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp141161 '())))
    (define promise::t
      (let ((__tmp141162 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp141162 '())))
    (define weak::t
      (let ((__tmp141163 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp141163 '())))
    (define foreign::t
      (let ((__tmp141164 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp141164 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp141165 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp141165 '())))
    (define return::t
      (let ((__tmp141166 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp141166 '())))
    (define time::t
      (let ((__tmp141167 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp141167 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp141168 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp141168 '())))
    (define thread-group::t
      (let ((__tmp141169 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp141169 '())))
    (define mutex::t
      (let ((__tmp141170 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp141170 '())))
    (define condvar::t
      (let ((__tmp141171 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp141171 '())))
    (define port::t
      (let ((__tmp141172 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141172 '())))
    (define object-port::t
      (let ((__tmp141173 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141173 '())))
    (define character-port::t
      (let ((__tmp141174 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141174 '())))
    (define byte-port::t
      (let ((__tmp141175 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141175 '())))
    (define device-port::t
      (let ((__tmp141176 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141176 '())))
    (define vector-port::t
      (let ((__tmp141177 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141177 '())))
    (define string-port::t
      (let ((__tmp141178 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141178 '())))
    (define u8vector-port::t
      (let ((__tmp141179 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141179 '())))
    (define raw-device-port::t
      (let ((__tmp141180 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141180 '())))
    (define tcp-server-port::t
      (let ((__tmp141181 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141181 '())))
    (define udp-port::t
      (let ((__tmp141182 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141182 '())))
    (define directory-port::t
      (let ((__tmp141183 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141183 '())))
    (define event-queue-port::t
      (let ((__tmp141184 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp141184 '())))
    (define table::t
      (let ((__tmp141185 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp141185 '())))
    (define readenv::t
      (let ((__tmp141186 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp141186 '())))
    (define writeenv::t
      (let ((__tmp141187 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp141187 '())))
    (define readtable::t
      (let ((__tmp141188 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp141188 '())))
    (define processor::t
      (let ((__tmp141189 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp141189 '())))
    (define vm::t
      (let ((__tmp141190 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp141190 '())))
    (define file-info::t
      (let ((__tmp141191 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141191 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp141192 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141192 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp141193 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp141193 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj141101%_)
        (let ((_%$e141103%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj141101%_)))))
          (if _%$e141103%_
              _%$e141103%_
              (not (let ((__tmp141194
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj141101%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp141194 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj141099%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141099%_))
            (builtin-object? _%obj141099%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj141097%_)
        (if (let () (declare (not safe)) (##structure? _%obj141097%_))
            (not (let ((__tmp141195
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj141097%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp141195 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj141095%_)
        (if (let () (declare (not safe)) (##special? _%obj141095%_))
            (let ((__tmp141196
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj141095%_ '0))))
              (declare (not safe))
              (##fx< __tmp141196 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj141093%_)
        (let () (declare (not safe)) (##special? _%obj141093%_))))
    (define unbound-object?
      (lambda (_%obj141091%_) (eq? _%obj141091%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj141089%_) (eq? _%obj141089%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj141087%_) (eq? _%obj141087%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj141085%_) (eq? _%obj141085%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj141083%_) (eq? _%obj141083%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj141075%_)
        (let ((_%$e141077%_ (eq? _%obj141075%_ '#!key)))
          (if _%$e141077%_
              _%$e141077%_
              (let ((_%$e141080%_ (eq? _%obj141075%_ '#!optional)))
                (if _%$e141080%_ _%$e141080%_ (eq? _%obj141075%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj141073%_) (eq? _%obj141073%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj141071%_) (eq? _%obj141071%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj141069%_) (eq? _%obj141069%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj141067%_)
        (if (flonum? _%obj141067%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj141067%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj141065%_)
        (if (flonum? _%obj141065%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj141065%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec141062%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec141062%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-string) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec141062%_ (macro-subtype-f64vector) '#t)
        _%vec141062%_))
    (define sequence?
      (lambda (_%obj141060%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141060%_))
            (let ((__tmp141197
                   (let () (declare (not safe)) (##subtype _%obj141060%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp141197))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec141057%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec141057%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec141057%_ (macro-subtype-f64vector) '#t)
        _%vec141057%_))
    (define hvector?
      (lambda (_%obj141055%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141055%_))
            (let ((__tmp141198
                   (let () (declare (not safe)) (##subtype _%obj141055%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp141198))
            '#f)))
    (define weak?
      (lambda (_%obj141053%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj141053%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj141053%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj141051%_)
        (let ((__tmp141199
               (let ((__tmp141200 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp141200))))
          (declare (not safe))
          (##structure-instance-of? _%obj141051%_ __tmp141199))))
    (define character-port?
      (lambda (_%obj141049%_)
        (let ((__tmp141201
               (let ((__tmp141202 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp141202))))
          (declare (not safe))
          (##structure-instance-of? _%obj141049%_ __tmp141201))))
    (define byte-port?
      (lambda (_%obj141047%_)
        (let ((__tmp141203
               (let ((__tmp141204 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp141204))))
          (declare (not safe))
          (##structure-instance-of? _%obj141047%_ __tmp141203))))
    (define device-port?
      (lambda (_%obj141045%_)
        (let ((__tmp141205
               (let ((__tmp141206 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp141206))))
          (declare (not safe))
          (##structure-instance-of? _%obj141045%_ __tmp141205))))
    (define vector-port?
      (lambda (_%obj141043%_)
        (let ((__tmp141207
               (let ((__tmp141208 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp141208))))
          (declare (not safe))
          (##structure-instance-of? _%obj141043%_ __tmp141207))))
    (define string-port?
      (lambda (_%obj141041%_)
        (let ((__tmp141209
               (let ((__tmp141210 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp141210))))
          (declare (not safe))
          (##structure-instance-of? _%obj141041%_ __tmp141209))))
    (define u8vector-port?
      (lambda (_%obj141039%_)
        (let ((__tmp141211
               (let ((__tmp141212 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp141212))))
          (declare (not safe))
          (##structure-instance-of? _%obj141039%_ __tmp141211))))
    (define raw-device-port?
      (lambda (_%obj141037%_)
        (let ((__tmp141213
               (let ((__tmp141214 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp141214))))
          (declare (not safe))
          (##structure-instance-of? _%obj141037%_ __tmp141213))))
    (define tcp-server-port?
      (lambda (_%obj141035%_)
        (let ((__tmp141215
               (let ((__tmp141216 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp141216))))
          (declare (not safe))
          (##structure-instance-of? _%obj141035%_ __tmp141215))))
    (define udp-port?
      (lambda (_%obj141033%_)
        (let ((__tmp141217
               (let ((__tmp141218 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp141218))))
          (declare (not safe))
          (##structure-instance-of? _%obj141033%_ __tmp141217))))
    (define directory-port?
      (lambda (_%obj141031%_)
        (let ((__tmp141219
               (let ((__tmp141220 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp141220))))
          (declare (not safe))
          (##structure-instance-of? _%obj141031%_ __tmp141219))))
    (define event-queue-port?
      (lambda (_%obj141029%_)
        (let ((__tmp141221
               (let ((__tmp141222 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp141222))))
          (declare (not safe))
          (##structure-instance-of? _%obj141029%_ __tmp141221))))
    (define readenv?
      (lambda (_%obj141027%_)
        (let ((__tmp141223
               (let ((__tmp141224 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp141224))))
          (declare (not safe))
          (##structure-instance-of? _%obj141027%_ __tmp141223))))
    (define writeenv?
      (lambda (_%obj141025%_)
        (let ((__tmp141225
               (let ((__tmp141226 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp141226))))
          (declare (not safe))
          (##structure-instance-of? _%obj141025%_ __tmp141225))))
    (define vm?
      (lambda (_%obj141023%_)
        (let ((__tmp141227
               (let ((__tmp141228 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp141228))))
          (declare (not safe))
          (##structure-instance-of? _%obj141023%_ __tmp141227))))))
