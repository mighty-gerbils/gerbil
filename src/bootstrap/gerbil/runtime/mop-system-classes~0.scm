(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1771036670)
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
      (let ((__tmp322143 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp322143 '())))
    (define subtyped::t
      (let ((__tmp322144 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp322144 '())))
    (define structure::t
      (let ((__tmp322145 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp322145 '())))
    (define immediate::t
      (let ((__tmp322146 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp322146 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp322147 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp322147 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp322148 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp322148 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp322149 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp322149 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp322150 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp322150 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp322151 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp322151 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp322152 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp322152 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp322153 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp322153 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp322154 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp322154 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp322155 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp322155 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp322156 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp322156 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp322157 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp322157 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp322158 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp322158 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp322159 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp322159 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp322160 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp322160 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp322161 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp322161 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp322162 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp322162 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp322163 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp322163 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp322164 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp322164 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp322165 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp322165 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp322166 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp322166 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp322167 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp322167 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp322168 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp322168 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp322169 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp322169 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp322170 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp322170 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp322171 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp322171 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp322172 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp322172 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp322173 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp322173 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp322174 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp322174 '())))
    (define pair::t
      (let ((__tmp322175 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp322175 '())))
    (define null::t
      (let ((__tmp322176 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp322176 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp322177 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp322177 '())))
    (define vector::t
      (let ((__tmp322178 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp322178 '())))
    (define string::t
      (let ((__tmp322179 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp322179 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp322180 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp322180 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp322181 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp322181 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp322182 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp322182 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp322183 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp322183 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp322184 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp322184 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp322185 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp322185 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp322186 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp322186 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp322187 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp322187 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp322188 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp322188 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp322189 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp322189 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp322190 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp322190 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp322191 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp322191 '())))
    (define box::t
      (let ((__tmp322192 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp322192 '())))
    (define frame::t
      (let ((__tmp322193 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp322193 '())))
    (define continuation::t
      (let ((__tmp322194 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp322194 '())))
    (define promise::t
      (let ((__tmp322195 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp322195 '())))
    (define weak::t
      (let ((__tmp322196 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp322196 '())))
    (define foreign::t
      (let ((__tmp322197 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp322197 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp322198 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp322198 '())))
    (define return::t
      (let ((__tmp322199 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp322199 '())))
    (define time::t
      (let ((__tmp322200 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp322200 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp322201 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp322201 '())))
    (define thread-group::t
      (let ((__tmp322202 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp322202 '())))
    (define mutex::t
      (let ((__tmp322203 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp322203 '())))
    (define condvar::t
      (let ((__tmp322204 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp322204 '())))
    (define port::t
      (let ((__tmp322205 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322205 '())))
    (define object-port::t
      (let ((__tmp322206 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322206 '())))
    (define character-port::t
      (let ((__tmp322207 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322207 '())))
    (define byte-port::t
      (let ((__tmp322208 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322208 '())))
    (define device-port::t
      (let ((__tmp322209 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322209 '())))
    (define vector-port::t
      (let ((__tmp322210 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322210 '())))
    (define string-port::t
      (let ((__tmp322211 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322211 '())))
    (define u8vector-port::t
      (let ((__tmp322212 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322212 '())))
    (define raw-device-port::t
      (let ((__tmp322213 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322213 '())))
    (define tcp-server-port::t
      (let ((__tmp322214 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322214 '())))
    (define udp-port::t
      (let ((__tmp322215 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322215 '())))
    (define directory-port::t
      (let ((__tmp322216 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322216 '())))
    (define event-queue-port::t
      (let ((__tmp322217 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp322217 '())))
    (define table::t
      (let ((__tmp322218 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp322218 '())))
    (define readenv::t
      (let ((__tmp322219 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp322219 '())))
    (define writeenv::t
      (let ((__tmp322220 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp322220 '())))
    (define readtable::t
      (let ((__tmp322221 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp322221 '())))
    (define processor::t
      (let ((__tmp322222 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp322222 '())))
    (define vm::t
      (let ((__tmp322223 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp322223 '())))
    (define file-info::t
      (let ((__tmp322224 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp322224 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp322225 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp322225 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp322226 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp322226 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj322139%_)
        (let ((_%$e322141%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj322139%_)))))
          (if _%$e322141%_
              _%$e322141%_
              (not (let ((__tmp322227
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj322139%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp322227 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj322137%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj322137%_))
            (builtin-object? _%obj322137%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj322135%_)
        (if (let () (declare (not safe)) (##structure? _%obj322135%_))
            (not (let ((__tmp322228
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj322135%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp322228 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj322133%_)
        (if (let () (declare (not safe)) (immediate? _%obj322133%_))
            (if (char? _%obj322133%_)
                '#f
                (if (fixnum? _%obj322133%_) '#f (not (flonum? _%obj322133%_))))
            '#f)))
    (define special?
      (lambda (_%obj322131%_)
        (let () (declare (not safe)) (##special? _%obj322131%_))))
    (define unbound? (lambda (_%obj322129%_) (eq? _%obj322129%_ '#!unbound)))
    (define unbound2? (lambda (_%obj322127%_) (eq? _%obj322127%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj322119%_)
        (let ((_%$e322121%_ (eq? _%obj322119%_ '#!key)))
          (if _%$e322121%_
              _%$e322121%_
              (let ((_%$e322124%_ (eq? _%obj322119%_ '#!optional)))
                (if _%$e322124%_ _%$e322124%_ (eq? _%obj322119%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj322117%_) (eq? _%obj322117%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj322115%_) (eq? _%obj322115%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj322113%_) (eq? _%obj322113%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj322111%_)
        (if (flonum? _%obj322111%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj322111%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj322109%_)
        (if (flonum? _%obj322109%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj322109%_))
            '#f)))
    (define sequence?
      (lambda (_%obj322101%_)
        (let ((_%$e322103%_ (vector? _%obj322101%_)))
          (if _%$e322103%_
              _%$e322103%_
              (let ((_%$e322106%_ (string? _%obj322101%_)))
                (if _%$e322106%_ _%$e322106%_ (hvector? _%obj322101%_)))))))
    (define hvector?
      (lambda (_%obj322072%_)
        (let ((_%$e322074%_ (u8vector? _%obj322072%_)))
          (if _%$e322074%_
              _%$e322074%_
              (let ((_%$e322077%_ (s8vector? _%obj322072%_)))
                (if _%$e322077%_
                    _%$e322077%_
                    (let ((_%$e322080%_ (u16vector? _%obj322072%_)))
                      (if _%$e322080%_
                          _%$e322080%_
                          (let ((_%$e322083%_ (s16vector? _%obj322072%_)))
                            (if _%$e322083%_
                                _%$e322083%_
                                (let ((_%$e322086%_
                                       (u32vector? _%obj322072%_)))
                                  (if _%$e322086%_
                                      _%$e322086%_
                                      (let ((_%$e322089%_
                                             (s32vector? _%obj322072%_)))
                                        (if _%$e322089%_
                                            _%$e322089%_
                                            (let ((_%$e322092%_
                                                   (u64vector? _%obj322072%_)))
                                              (if _%$e322092%_
                                                  _%$e322092%_
                                                  (let ((_%$e322095%_
                                                         (s64vector?
                                                          _%obj322072%_)))
                                                    (if _%$e322095%_
                                                        _%$e322095%_
                                                        (let ((_%$e322098%_
                                                               (f32vector?
                                                                _%obj322072%_)))
                                                          (if _%$e322098%_
                                                              _%$e322098%_
                                                              (f64vector?
                                                               _%obj322072%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj322070%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj322070%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj322070%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj322068%_)
        (let ((__tmp322229
               (let ((__tmp322230 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp322230))))
          (declare (not safe))
          (##structure-instance-of? _%obj322068%_ __tmp322229))))
    (define character-port?
      (lambda (_%obj322066%_)
        (let ((__tmp322231
               (let ((__tmp322232 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp322232))))
          (declare (not safe))
          (##structure-instance-of? _%obj322066%_ __tmp322231))))
    (define device-port?
      (lambda (_%obj322064%_)
        (let ((__tmp322233
               (let ((__tmp322234 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp322234))))
          (declare (not safe))
          (##structure-instance-of? _%obj322064%_ __tmp322233))))
    (define vector-port?
      (lambda (_%obj322062%_)
        (let ((__tmp322235
               (let ((__tmp322236 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp322236))))
          (declare (not safe))
          (##structure-instance-of? _%obj322062%_ __tmp322235))))
    (define string-port?
      (lambda (_%obj322060%_)
        (let ((__tmp322237
               (let ((__tmp322238 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp322238))))
          (declare (not safe))
          (##structure-instance-of? _%obj322060%_ __tmp322237))))
    (define u8vector-port?
      (lambda (_%obj322058%_)
        (let ((__tmp322239
               (let ((__tmp322240 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp322240))))
          (declare (not safe))
          (##structure-instance-of? _%obj322058%_ __tmp322239))))
    (define raw-device-port?
      (lambda (_%obj322056%_)
        (let ((__tmp322241
               (let ((__tmp322242 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp322242))))
          (declare (not safe))
          (##structure-instance-of? _%obj322056%_ __tmp322241))))
    (define tcp-server-port?
      (lambda (_%obj322054%_)
        (let ((__tmp322243
               (let ((__tmp322244 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp322244))))
          (declare (not safe))
          (##structure-instance-of? _%obj322054%_ __tmp322243))))
    (define udp-port?
      (lambda (_%obj322052%_)
        (let ((__tmp322245
               (let ((__tmp322246 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp322246))))
          (declare (not safe))
          (##structure-instance-of? _%obj322052%_ __tmp322245))))
    (define directory-port?
      (lambda (_%obj322050%_)
        (let ((__tmp322247
               (let ((__tmp322248 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp322248))))
          (declare (not safe))
          (##structure-instance-of? _%obj322050%_ __tmp322247))))
    (define event-queue-port?
      (lambda (_%obj322048%_)
        (let ((__tmp322249
               (let ((__tmp322250 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp322250))))
          (declare (not safe))
          (##structure-instance-of? _%obj322048%_ __tmp322249))))
    (define readenv?
      (lambda (_%obj322046%_)
        (let ((__tmp322251
               (let ((__tmp322252 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp322252))))
          (declare (not safe))
          (##structure-instance-of? _%obj322046%_ __tmp322251))))
    (define writeenv?
      (lambda (_%obj322044%_)
        (let ((__tmp322253
               (let ((__tmp322254 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp322254))))
          (declare (not safe))
          (##structure-instance-of? _%obj322044%_ __tmp322253))))
    (define vm?
      (lambda (_%obj322042%_)
        (let ((__tmp322255
               (let ((__tmp322256 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp322256))))
          (declare (not safe))
          (##structure-instance-of? _%obj322042%_ __tmp322255))))))
