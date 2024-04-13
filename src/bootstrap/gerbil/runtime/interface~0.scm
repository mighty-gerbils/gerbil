(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712993615)
  (begin
    (define CastError::t
      (let ((__tmp103162 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp103162
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args103155%_
        (apply make-instance CastError::t _%$args103155%_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where103029%_ _%message103030%_ . _%irritants103031%_)
        (let ((__tmp103163
               (let ((__obj103158
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj103158
                    _%message103030%_
                    'where:
                    _%where103029%_
                    'irritants:
                    _%irritants103031%_))
                 __obj103158)))
          (declare (not safe))
          (raise __tmp103163))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp103165 (list)) (__tmp103164 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp103165
         '(__object)
         __tmp103164
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t '__object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t '__object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-instance::t
         '__object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t '__object)))
    (define interface-descriptor::t
      (let ((__tmp103167 (list))
            (__tmp103166
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp103167
         '(type methods)
         __tmp103166
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args103026%_
        (apply make-instance interface-descriptor::t _%$args103026%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         interface-descriptor::t
         'methods)))
    (define __interface-hash-key
      (lambda (_%key103024%_)
        (let ((__tmp103169
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key103024%_))))
              (__tmp103168
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key103024%_)))))
          (declare (not safe))
          (##fxxor __tmp103169 __tmp103168))))
    (define __interface-test-key
      (lambda (_%a103021%_ _%b103022%_)
        (if (let ((__tmp103171
                   (let () (declare (not safe)) (##car _%a103021%_)))
                  (__tmp103170
                   (let () (declare (not safe)) (##car _%b103022%_))))
              (declare (not safe))
              (##eq? __tmp103171 __tmp103170))
            (let ((__tmp103173
                   (let () (declare (not safe)) (##cdr _%a103021%_)))
                  (__tmp103172
                   (let () (declare (not safe)) (##cdr _%b103022%_))))
              (declare (not safe))
              (##eq? __tmp103173 __tmp103172))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint103002%_ _%seed103004%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint103002%_
           __interface-hash-key
           __interface-test-key
           _%seed103004%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint103010%_ '#f) (_%seed103012%_ '0))
          (make-prototype-table__% _%size-hint103010%_ _%seed103012%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint103014%_)
        (let ((_%seed103016%_ '0))
          (make-prototype-table__% _%size-hint103014%_ _%seed103016%_))))
    (define make-prototype-table
      (lambda _g103175_
        (let ((_g103174_ (let () (declare (not safe)) (##length _g103175_))))
          (cond ((let () (declare (not safe)) (##fx= _g103174_ 0))
                 (apply make-prototype-table__0 _g103175_))
                ((let () (declare (not safe)) (##fx= _g103174_ 1))
                 (apply make-prototype-table__1 _g103175_))
                ((let () (declare (not safe)) (##fx= _g103174_ 2))
                 (apply make-prototype-table__% _g103175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g103175_))))))
    (define prototype-table-ref
      (lambda (_%tab102955%_ _%key102956%_ _%default102957%_)
        (let ((_%table102959%_
               (let () (declare (not safe)) (&raw-table-table _%tab102955%_)))
              (_%seed102960%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102955%_))))
          (let* ((_%h102962%_
                  (fxxor (__interface-hash-key _%key102956%_) _%seed102960%_))
                 (_%size102965%_ (vector-length _%table102959%_))
                 (_%entries102968%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102965%_ '2)))
                 (_%start102971%_
                  (let ((__tmp103176
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102962%_ _%entries102968%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103176 '1))))
            (let _%loop102975%_ ((_%probe102978%_ _%start102971%_)
                                 (_%i102980%_ '1)
                                 (_%deleted102982%_ '#f))
              (let ((_%k102985%_ (vector-ref _%table102959%_ _%probe102978%_)))
                (if (eq? _%k102985%_ (macro-unused-obj))
                    _%default102957%_
                    (if (eq? _%k102985%_ (macro-deleted-obj))
                        (_%loop102975%_
                         (let ((_%next-probe102990%_
                                (fx+ _%start102971%_
                                     _%i102980%_
                                     (fx* _%i102980%_ _%i102980%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102990%_ _%size102965%_))
                         (let () (declare (not safe)) (##fx+ _%i102980%_ '1))
                         (let ((_%$e102993%_ _%deleted102982%_))
                           (if _%$e102993%_ _%$e102993%_ _%probe102978%_)))
                        (if (__interface-test-key _%key102956%_ _%k102985%_)
                            (vector-ref
                             _%table102959%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe102978%_ '1)))
                            (_%loop102975%_
                             (let ((_%next-probe102998%_
                                    (fx+ _%start102971%_
                                         _%i102980%_
                                         (fx* _%i102980%_ _%i102980%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102998%_
                                _%size102965%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102980%_ '1))
                             _%deleted102982%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab102951%_ _%key102952%_ _%value102953%_)
        (if (let ((__tmp103179
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab102951%_)))
                  (__tmp103177
                   (let ((__tmp103178
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab102951%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103178 '4))))
              (declare (not safe))
              (##fx< __tmp103179 __tmp103177))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab102951%_))
            '#!void)
        (__prototype-table-set! _%tab102951%_ _%key102952%_ _%value102953%_)))
    (define __prototype-table-set!
      (lambda (_%tab102902%_ _%key102903%_ _%value102904%_)
        (let ((_%table102907%_
               (let () (declare (not safe)) (&raw-table-table _%tab102902%_)))
              (_%seed102908%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102902%_))))
          (let* ((_%h102910%_
                  (fxxor (__interface-hash-key _%key102903%_) _%seed102908%_))
                 (_%size102913%_ (vector-length _%table102907%_))
                 (_%entries102916%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102913%_ '2)))
                 (_%start102919%_
                  (let ((__tmp103180
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102910%_ _%entries102916%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103180 '1))))
            (let _%loop102923%_ ((_%probe102926%_ _%start102919%_)
                                 (_%i102928%_ '1)
                                 (_%deleted102930%_ '#f))
              (let ((_%k102933%_ (vector-ref _%table102907%_ _%probe102926%_)))
                (if (eq? _%k102933%_ (macro-unused-obj))
                    (if _%deleted102930%_
                        (begin
                          (vector-set!
                           _%table102907%_
                           _%deleted102930%_
                           _%key102903%_)
                          (vector-set!
                           _%table102907%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted102930%_ '1))
                           _%value102904%_)
                          ((lambda ()
                             (let ((__tmp103181
                                    (let ((__tmp103182
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102902%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103182 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102902%_
                                __tmp103181)))))
                        (begin
                          (vector-set!
                           _%table102907%_
                           _%probe102926%_
                           _%key102903%_)
                          (vector-set!
                           _%table102907%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe102926%_ '1))
                           _%value102904%_)
                          ((lambda ()
                             (let ((__tmp103183
                                    (let ((__tmp103184
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab102902%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103184 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab102902%_
                                __tmp103183))
                             (let ((__tmp103185
                                    (let ((__tmp103186
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102902%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103186 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102902%_
                                __tmp103185))))))
                    (if (eq? _%k102933%_ (macro-deleted-obj))
                        (_%loop102923%_
                         (let ((_%next-probe102940%_
                                (fx+ _%start102919%_
                                     _%i102928%_
                                     (fx* _%i102928%_ _%i102928%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102940%_ _%size102913%_))
                         (let () (declare (not safe)) (##fx+ _%i102928%_ '1))
                         (let ((_%$e102943%_ _%deleted102930%_))
                           (if _%$e102943%_ _%$e102943%_ _%probe102926%_)))
                        (if (__interface-test-key _%key102903%_ _%k102933%_)
                            (let ()
                              (vector-set!
                               _%table102907%_
                               _%probe102926%_
                               _%key102903%_)
                              (vector-set!
                               _%table102907%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102926%_ '1))
                               _%value102904%_))
                            (_%loop102923%_
                             (let ((_%next-probe102948%_
                                    (fx+ _%start102919%_
                                         _%i102928%_
                                         (fx* _%i102928%_ _%i102928%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102948%_
                                _%size102913%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102928%_ '1))
                             _%deleted102930%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab102897%_
               _%key102898%_
               _%prototype-table-update!102899%_
               _%default102900%_)
        (if (let ((__tmp103189
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab102897%_)))
                  (__tmp103187
                   (let ((__tmp103188
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab102897%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103188 '4))))
              (declare (not safe))
              (##fx< __tmp103189 __tmp103187))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab102897%_))
            '#!void)
        (__prototype-table-update!
         _%tab102897%_
         _%key102898%_
         _%prototype-table-update!102899%_
         _%default102900%_)))
    (define __prototype-table-update!
      (lambda (_%tab102847%_
               _%key102848%_
               _%prototype-table-update!102849%_
               _%default102850%_)
        (let ((_%table102853%_
               (let () (declare (not safe)) (&raw-table-table _%tab102847%_)))
              (_%seed102854%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102847%_))))
          (let* ((_%h102856%_
                  (fxxor (__interface-hash-key _%key102848%_) _%seed102854%_))
                 (_%size102859%_ (vector-length _%table102853%_))
                 (_%entries102862%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102859%_ '2)))
                 (_%start102865%_
                  (let ((__tmp103190
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102856%_ _%entries102862%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103190 '1))))
            (let _%loop102869%_ ((_%probe102872%_ _%start102865%_)
                                 (_%i102874%_ '1)
                                 (_%deleted102876%_ '#f))
              (let ((_%k102879%_ (vector-ref _%table102853%_ _%probe102872%_)))
                (if (eq? _%k102879%_ (macro-unused-obj))
                    (if _%deleted102876%_
                        (begin
                          (vector-set!
                           _%table102853%_
                           _%deleted102876%_
                           _%key102848%_)
                          (vector-set!
                           _%table102853%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted102876%_ '1))
                           (_%prototype-table-update!102849%_
                            _%default102850%_))
                          ((lambda ()
                             (let ((__tmp103191
                                    (let ((__tmp103192
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102847%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103192 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102847%_
                                __tmp103191)))))
                        (begin
                          (vector-set!
                           _%table102853%_
                           _%probe102872%_
                           _%key102848%_)
                          (vector-set!
                           _%table102853%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe102872%_ '1))
                           (_%prototype-table-update!102849%_
                            _%default102850%_))
                          ((lambda ()
                             (let ((__tmp103193
                                    (let ((__tmp103194
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab102847%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103194 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab102847%_
                                __tmp103193))
                             (let ((__tmp103195
                                    (let ((__tmp103196
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102847%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103196 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102847%_
                                __tmp103195))))))
                    (if (eq? _%k102879%_ (macro-deleted-obj))
                        (_%loop102869%_
                         (let ((_%next-probe102886%_
                                (fx+ _%start102865%_
                                     _%i102874%_
                                     (fx* _%i102874%_ _%i102874%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102886%_ _%size102859%_))
                         (let () (declare (not safe)) (##fx+ _%i102874%_ '1))
                         (let ((_%$e102889%_ _%deleted102876%_))
                           (if _%$e102889%_ _%$e102889%_ _%probe102872%_)))
                        (if (__interface-test-key _%key102848%_ _%k102879%_)
                            (let ()
                              (vector-set!
                               _%table102853%_
                               _%probe102872%_
                               _%key102848%_)
                              (vector-set!
                               _%table102853%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102872%_ '1))
                               (_%prototype-table-update!102849%_
                                (vector-ref
                                 _%table102853%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe102872%_ '1))))))
                            (_%loop102869%_
                             (let ((_%next-probe102894%_
                                    (fx+ _%start102865%_
                                         _%i102874%_
                                         (fx* _%i102874%_ _%i102874%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102894%_
                                _%size102859%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102874%_ '1))
                             _%deleted102876%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab102802%_ _%key102804%_)
        (let ((_%table102807%_
               (let () (declare (not safe)) (&raw-table-table _%tab102802%_)))
              (_%seed102809%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102802%_))))
          (let* ((_%h102812%_
                  (fxxor (__interface-hash-key _%key102804%_) _%seed102809%_))
                 (_%size102815%_ (vector-length _%table102807%_))
                 (_%entries102818%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102815%_ '2)))
                 (_%start102821%_
                  (let ((__tmp103197
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102812%_ _%entries102818%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103197 '1))))
            (let _%loop102825%_ ((_%probe102828%_ _%start102821%_)
                                 (_%i102830%_ '1))
              (let ((_%k102833%_ (vector-ref _%table102807%_ _%probe102828%_)))
                (if (eq? _%k102833%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102833%_ (macro-deleted-obj))
                        (_%loop102825%_
                         (let ((_%next-probe102838%_
                                (fx+ _%start102821%_
                                     _%i102830%_
                                     (fx* _%i102830%_ _%i102830%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102838%_ _%size102815%_))
                         (let () (declare (not safe)) (##fx+ _%i102830%_ '1)))
                        (if (__interface-test-key _%key102804%_ _%k102833%_)
                            (let ()
                              (vector-set!
                               _%table102807%_
                               _%probe102828%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102807%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102828%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp103198
                                        (let ((__tmp103199
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab102802%_))))
                                          (declare (not safe))
                                          (##fx- __tmp103199 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab102802%_
                                    __tmp103198)))))
                            (_%loop102825%_
                             (let ((_%next-probe102844%_
                                    (fx+ _%start102821%_
                                         _%i102830%_
                                         (fx* _%i102830%_ _%i102830%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102844%_
                                _%size102815%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102830%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass102794%_)
        (let ((_%super102795102797%_
               (let () (declare (not safe)) (##type-super _%klass102794%_))))
          (if _%super102795102797%_
              (let ((_%super102800%_ _%super102795102797%_))
                (eq? (let () (declare (not safe)) (##type-id _%super102800%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor102679%_ _%klass102680%_ _%obj-klass102681%_)
        (let ((_%method-table102683%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass102681%_))))
          (let _%loop102686%_ ((_%rest102689%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor102679%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count102691%_ '0)
                               (_%methods102693%_ '()))
            (let* ((_%rest102695102703%_ _%rest102689%_)
                   (_%else102697102765%_
                    (lambda ()
                      (let ((_%prototype102711%_
                             (let ((__obj103160
                                    (let ((__tmp103200
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count102691%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass102680%_
                                       __tmp103200))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103160 '#f))
                               __obj103160)))
                        (let _%loop102714%_ ((_%rest102716%_ _%methods102693%_)
                                             (_%off102717%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count102691%_ '1))))
                          (let* ((_%rest102719102727%_ _%rest102716%_)
                                 (_%else102721102746%_
                                  (lambda ()
                                    (let ((_%prototype-key102735%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass102680%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass102681%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again102740%_ ()
                                          (if (let ((__tmp103201
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103201 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again102740%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key102735%_
                                       _%prototype102711%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype102744%_)
                                         _%prototype102744%_)
                                       _%prototype102711%_))))
                                 (_%K102723102753%_
                                  (lambda (_%rest102749%_ _%method102750%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype102711%_
                                       _%method102750%_
                                       _%off102717%_
                                       _%klass102680%_
                                       '#f))
                                    (_%loop102714%_
                                     _%rest102749%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off102717%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest102719102727%_))
                                (let ((_%hd102724102756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest102719102727%_)))
                                      (_%tl102725102758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest102719102727%_))))
                                  (let* ((_%method102761%_ _%hd102724102756%_)
                                         (_%rest102763%_ _%tl102725102758%_))
                                    (_%K102723102753%_
                                     _%rest102763%_
                                     _%method102761%_)))
                                (_%else102721102746%_)))))))
                   (_%K102699102782%_
                    (lambda (_%rest102768%_ _%method-name102769%_)
                      (let ((_%$e102772%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table102683%_
                                _%method-name102769%_
                                '#f))))
                        (if _%$e102772%_
                            ((lambda (_%method102775%_)
                               (_%loop102686%_
                                _%rest102768%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count102691%_ '1))
                                (cons _%method102775%_ _%methods102693%_)))
                             _%$e102772%_)
                            ((lambda (_%klass102778%_
                                      _%obj-klass102779%_
                                      _%method-name102780%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass102778%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass102778%_))
                                'class:
                                _%obj-klass102779%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass102779%_))
                                'method:
                                _%method-name102780%_)
                               '#!void)
                             _%klass102680%_
                             _%obj-klass102681%_
                             _%method-name102769%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest102695102703%_))
                  (let ((_%hd102700102785%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102695102703%_)))
                        (_%tl102701102787%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102695102703%_))))
                    (let* ((_%method-name102790%_ _%hd102700102785%_)
                           (_%rest102792%_ _%tl102701102787%_))
                      (_%K102699102782%_
                       _%rest102792%_
                       _%method-name102790%_)))
                  (_%else102697102765%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor102564%_ _%klass102565%_ _%obj-klass102566%_)
        (let ((_%method-table102568%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass102566%_))))
          (let _%loop102571%_ ((_%rest102574%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor102564%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count102576%_ '0)
                               (_%methods102578%_ '()))
            (let* ((_%rest102580102588%_ _%rest102574%_)
                   (_%else102582102650%_
                    (lambda ()
                      (let ((_%prototype102596%_
                             (let ((__obj103161
                                    (let ((__tmp103202
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count102576%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass102565%_
                                       __tmp103202))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103161 '#f))
                               __obj103161)))
                        (let _%loop102599%_ ((_%rest102601%_ _%methods102578%_)
                                             (_%off102602%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count102576%_ '1))))
                          (let* ((_%rest102604102612%_ _%rest102601%_)
                                 (_%else102606102631%_
                                  (lambda ()
                                    (let ((_%prototype-key102620%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass102565%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass102566%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again102625%_ ()
                                          (if (let ((__tmp103203
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103203 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again102625%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key102620%_
                                       _%prototype102596%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype102629%_)
                                         _%prototype102629%_)
                                       _%prototype102596%_))))
                                 (_%K102608102638%_
                                  (lambda (_%rest102634%_ _%method102635%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype102596%_
                                       _%method102635%_
                                       _%off102602%_
                                       _%klass102565%_
                                       '#f))
                                    (_%loop102599%_
                                     _%rest102634%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off102602%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest102604102612%_))
                                (let ((_%hd102609102641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest102604102612%_)))
                                      (_%tl102610102643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest102604102612%_))))
                                  (let* ((_%method102646%_ _%hd102609102641%_)
                                         (_%rest102648%_ _%tl102610102643%_))
                                    (_%K102608102638%_
                                     _%rest102648%_
                                     _%method102646%_)))
                                (_%else102606102631%_)))))))
                   (_%K102584102667%_
                    (lambda (_%rest102653%_ _%method-name102654%_)
                      (let ((_%$e102657%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table102568%_
                                _%method-name102654%_
                                '#f))))
                        (if _%$e102657%_
                            ((lambda (_%method102660%_)
                               (_%loop102571%_
                                _%rest102653%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count102576%_ '1))
                                (cons _%method102660%_ _%methods102578%_)))
                             _%$e102657%_)
                            ((lambda (_%klass102663%_
                                      _%obj-klass102664%_
                                      _%method-name102665%_)
                               '#f)
                             _%klass102565%_
                             _%obj-klass102566%_
                             _%method-name102654%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest102580102588%_))
                  (let ((_%hd102585102670%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102580102588%_)))
                        (_%tl102586102672%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102580102588%_))))
                    (let* ((_%method-name102675%_ _%hd102585102670%_)
                           (_%rest102677%_ _%tl102586102672%_))
                      (_%K102584102667%_
                       _%rest102677%_
                       _%method-name102675%_)))
                  (_%else102582102650%_)))))))
    (define cast
      (lambda (_%descriptor102522%_ _%obj102524%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102528%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102522%_ '1 '#f '#f)))
               (_%klass-id102531%_
                (let () (declare (not safe)) (##type-id _%klass102528%_)))
               (_%obj-klass102534%_
                (let () (declare (not safe)) (class-of _%obj102524%_)))
               (_%obj-klass-id102537%_
                (let () (declare (not safe)) (##type-id _%obj-klass102534%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102531%_ _%obj-klass-id102537%_))
              _%obj102524%_
              (if (interface-subclass? _%obj-klass102534%_)
                  (cast _%descriptor102522%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj102524%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102546%_ ()
                        (if (let ((__tmp103204
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103204 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102546%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102531%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102537%_))
                    (let ((_%prototype102557%_
                           (let ((_%$e102550%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102550%_
                                 ((lambda (_%prototype102553%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102553%_)
                                  _%$e102550%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor102522%_
                                    _%klass102528%_
                                    _%obj-klass102534%_))))))
                      ((lambda (_%prototype102559%_ _%obj102560%_)
                         (let ((_%instance102562%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype102559%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance102562%_
                              _%obj102560%_
                              '1
                              '#f
                              'cast))
                           _%instance102562%_))
                       _%prototype102557%_
                       _%obj102524%_))))))))
    (define try-cast
      (lambda (_%descriptor102480%_ _%obj102482%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102486%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102480%_ '1 '#f '#f)))
               (_%klass-id102489%_
                (let () (declare (not safe)) (##type-id _%klass102486%_)))
               (_%obj-klass102492%_
                (let () (declare (not safe)) (class-of _%obj102482%_)))
               (_%obj-klass-id102495%_
                (let () (declare (not safe)) (##type-id _%obj-klass102492%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102489%_ _%obj-klass-id102495%_))
              _%obj102482%_
              (if (interface-subclass? _%obj-klass102492%_)
                  (try-cast
                   _%descriptor102480%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj102482%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102504%_ ()
                        (if (let ((__tmp103205
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103205 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102504%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102489%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102495%_))
                    (let ((_%prototype102515%_
                           (let ((_%$e102508%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102508%_
                                 ((lambda (_%prototype102511%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102511%_)
                                  _%$e102508%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor102480%_
                                    _%klass102486%_
                                    _%obj-klass102492%_))))))
                      ((lambda (_%prototype102517%_ _%obj102518%_)
                         (if _%prototype102517%_
                             (let ((_%instance102520%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype102517%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance102520%_
                                  _%obj102518%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance102520%_)
                             '#f))
                       _%prototype102515%_
                       _%obj102482%_))))))))
    (define satisfies?
      (lambda (_%descriptor102440%_ _%obj102442%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102446%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102440%_ '1 '#f '#f)))
               (_%klass-id102449%_
                (let () (declare (not safe)) (##type-id _%klass102446%_)))
               (_%obj-klass102452%_
                (let () (declare (not safe)) (class-of _%obj102442%_)))
               (_%obj-klass-id102455%_
                (let () (declare (not safe)) (##type-id _%obj-klass102452%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102449%_ _%obj-klass-id102455%_))
              _%obj102442%_
              (if (interface-subclass? _%obj-klass102452%_)
                  (satisfies?
                   _%descriptor102440%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj102442%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102464%_ ()
                        (if (let ((__tmp103206
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103206 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102464%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102449%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102455%_))
                    (let ((_%prototype102475%_
                           (let ((_%$e102468%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102468%_
                                 ((lambda (_%prototype102471%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102471%_)
                                  _%$e102468%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor102440%_
                                    _%klass102446%_
                                    _%obj-klass102452%_))))))
                      ((lambda (_%prototype102477%_ _%obj102478%_)
                         (if _%prototype102477%_ '#t '#f))
                       _%prototype102475%_
                       _%obj102442%_))))))))))
