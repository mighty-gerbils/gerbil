(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712823026)
  (begin
    (define CastError::t
      (let ((__tmp103160 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp103160
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args103153%_
        (apply make-instance CastError::t _%$args103153%_)))
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
      (lambda (_%where103027%_ _%message103028%_ . _%irritants103029%_)
        (let ((__tmp103161
               (let ((__obj103156
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj103156
                    _%message103028%_
                    'where:
                    _%where103027%_
                    'irritants:
                    _%irritants103029%_))
                 __obj103156)))
          (declare (not safe))
          (raise __tmp103161))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp103163 (list)) (__tmp103162 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp103163
         '(__object)
         __tmp103162
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
      (let ((__tmp103165 (list))
            (__tmp103164
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp103165
         '(type methods)
         __tmp103164
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args103024%_
        (apply make-instance interface-descriptor::t _%$args103024%_)))
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
      (lambda (_%key103022%_)
        (let ((__tmp103167
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key103022%_))))
              (__tmp103166
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key103022%_)))))
          (declare (not safe))
          (##fxxor __tmp103167 __tmp103166))))
    (define __interface-test-key
      (lambda (_%a103019%_ _%b103020%_)
        (if (let ((__tmp103169
                   (let () (declare (not safe)) (##car _%a103019%_)))
                  (__tmp103168
                   (let () (declare (not safe)) (##car _%b103020%_))))
              (declare (not safe))
              (##eq? __tmp103169 __tmp103168))
            (let ((__tmp103171
                   (let () (declare (not safe)) (##cdr _%a103019%_)))
                  (__tmp103170
                   (let () (declare (not safe)) (##cdr _%b103020%_))))
              (declare (not safe))
              (##eq? __tmp103171 __tmp103170))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint103000%_ _%seed103002%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint103000%_
           __interface-hash-key
           __interface-test-key
           _%seed103002%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint103008%_ '#f) (_%seed103010%_ '0))
          (make-prototype-table__% _%size-hint103008%_ _%seed103010%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint103012%_)
        (let ((_%seed103014%_ '0))
          (make-prototype-table__% _%size-hint103012%_ _%seed103014%_))))
    (define make-prototype-table
      (lambda _g103173_
        (let ((_g103172_ (let () (declare (not safe)) (##length _g103173_))))
          (cond ((let () (declare (not safe)) (##fx= _g103172_ 0))
                 (apply make-prototype-table__0 _g103173_))
                ((let () (declare (not safe)) (##fx= _g103172_ 1))
                 (apply make-prototype-table__1 _g103173_))
                ((let () (declare (not safe)) (##fx= _g103172_ 2))
                 (apply make-prototype-table__% _g103173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g103173_))))))
    (define prototype-table-ref
      (lambda (_%tab102953%_ _%key102954%_ _%default102955%_)
        (let ((_%table102957%_
               (let () (declare (not safe)) (&raw-table-table _%tab102953%_)))
              (_%seed102958%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102953%_))))
          (let* ((_%h102960%_
                  (fxxor (__interface-hash-key _%key102954%_) _%seed102958%_))
                 (_%size102963%_ (vector-length _%table102957%_))
                 (_%entries102966%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102963%_ '2)))
                 (_%start102969%_
                  (let ((__tmp103174
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102960%_ _%entries102966%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103174 '1))))
            (let _%loop102973%_ ((_%probe102976%_ _%start102969%_)
                                 (_%i102978%_ '1)
                                 (_%deleted102980%_ '#f))
              (let ((_%k102983%_ (vector-ref _%table102957%_ _%probe102976%_)))
                (if (eq? _%k102983%_ (macro-unused-obj))
                    _%default102955%_
                    (if (eq? _%k102983%_ (macro-deleted-obj))
                        (_%loop102973%_
                         (let ((_%next-probe102988%_
                                (fx+ _%start102969%_
                                     _%i102978%_
                                     (fx* _%i102978%_ _%i102978%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102988%_ _%size102963%_))
                         (let () (declare (not safe)) (##fx+ _%i102978%_ '1))
                         (let ((_%$e102991%_ _%deleted102980%_))
                           (if _%$e102991%_ _%$e102991%_ _%probe102976%_)))
                        (if (__interface-test-key _%key102954%_ _%k102983%_)
                            (vector-ref
                             _%table102957%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe102976%_ '1)))
                            (_%loop102973%_
                             (let ((_%next-probe102996%_
                                    (fx+ _%start102969%_
                                         _%i102978%_
                                         (fx* _%i102978%_ _%i102978%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102996%_
                                _%size102963%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102978%_ '1))
                             _%deleted102980%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab102949%_ _%key102950%_ _%value102951%_)
        (if (let ((__tmp103177
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab102949%_)))
                  (__tmp103175
                   (let ((__tmp103176
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab102949%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103176 '4))))
              (declare (not safe))
              (##fx< __tmp103177 __tmp103175))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab102949%_))
            '#!void)
        (__prototype-table-set! _%tab102949%_ _%key102950%_ _%value102951%_)))
    (define __prototype-table-set!
      (lambda (_%tab102900%_ _%key102901%_ _%value102902%_)
        (let ((_%table102905%_
               (let () (declare (not safe)) (&raw-table-table _%tab102900%_)))
              (_%seed102906%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102900%_))))
          (let* ((_%h102908%_
                  (fxxor (__interface-hash-key _%key102901%_) _%seed102906%_))
                 (_%size102911%_ (vector-length _%table102905%_))
                 (_%entries102914%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102911%_ '2)))
                 (_%start102917%_
                  (let ((__tmp103178
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102908%_ _%entries102914%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103178 '1))))
            (let _%loop102921%_ ((_%probe102924%_ _%start102917%_)
                                 (_%i102926%_ '1)
                                 (_%deleted102928%_ '#f))
              (let ((_%k102931%_ (vector-ref _%table102905%_ _%probe102924%_)))
                (if (eq? _%k102931%_ (macro-unused-obj))
                    (if _%deleted102928%_
                        (begin
                          (vector-set!
                           _%table102905%_
                           _%deleted102928%_
                           _%key102901%_)
                          (vector-set!
                           _%table102905%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted102928%_ '1))
                           _%value102902%_)
                          ((lambda ()
                             (let ((__tmp103179
                                    (let ((__tmp103180
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102900%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103180 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102900%_
                                __tmp103179)))))
                        (begin
                          (vector-set!
                           _%table102905%_
                           _%probe102924%_
                           _%key102901%_)
                          (vector-set!
                           _%table102905%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe102924%_ '1))
                           _%value102902%_)
                          ((lambda ()
                             (let ((__tmp103181
                                    (let ((__tmp103182
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab102900%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103182 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab102900%_
                                __tmp103181))
                             (let ((__tmp103183
                                    (let ((__tmp103184
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102900%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103184 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102900%_
                                __tmp103183))))))
                    (if (eq? _%k102931%_ (macro-deleted-obj))
                        (_%loop102921%_
                         (let ((_%next-probe102938%_
                                (fx+ _%start102917%_
                                     _%i102926%_
                                     (fx* _%i102926%_ _%i102926%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102938%_ _%size102911%_))
                         (let () (declare (not safe)) (##fx+ _%i102926%_ '1))
                         (let ((_%$e102941%_ _%deleted102928%_))
                           (if _%$e102941%_ _%$e102941%_ _%probe102924%_)))
                        (if (__interface-test-key _%key102901%_ _%k102931%_)
                            (let ()
                              (vector-set!
                               _%table102905%_
                               _%probe102924%_
                               _%key102901%_)
                              (vector-set!
                               _%table102905%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102924%_ '1))
                               _%value102902%_))
                            (_%loop102921%_
                             (let ((_%next-probe102946%_
                                    (fx+ _%start102917%_
                                         _%i102926%_
                                         (fx* _%i102926%_ _%i102926%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102946%_
                                _%size102911%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102926%_ '1))
                             _%deleted102928%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab102895%_
               _%key102896%_
               _%prototype-table-update!102897%_
               _%default102898%_)
        (if (let ((__tmp103187
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab102895%_)))
                  (__tmp103185
                   (let ((__tmp103186
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab102895%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103186 '4))))
              (declare (not safe))
              (##fx< __tmp103187 __tmp103185))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab102895%_))
            '#!void)
        (__prototype-table-update!
         _%tab102895%_
         _%key102896%_
         _%prototype-table-update!102897%_
         _%default102898%_)))
    (define __prototype-table-update!
      (lambda (_%tab102845%_
               _%key102846%_
               _%prototype-table-update!102847%_
               _%default102848%_)
        (let ((_%table102851%_
               (let () (declare (not safe)) (&raw-table-table _%tab102845%_)))
              (_%seed102852%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102845%_))))
          (let* ((_%h102854%_
                  (fxxor (__interface-hash-key _%key102846%_) _%seed102852%_))
                 (_%size102857%_ (vector-length _%table102851%_))
                 (_%entries102860%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102857%_ '2)))
                 (_%start102863%_
                  (let ((__tmp103188
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102854%_ _%entries102860%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103188 '1))))
            (let _%loop102867%_ ((_%probe102870%_ _%start102863%_)
                                 (_%i102872%_ '1)
                                 (_%deleted102874%_ '#f))
              (let ((_%k102877%_ (vector-ref _%table102851%_ _%probe102870%_)))
                (if (eq? _%k102877%_ (macro-unused-obj))
                    (if _%deleted102874%_
                        (begin
                          (vector-set!
                           _%table102851%_
                           _%deleted102874%_
                           _%key102846%_)
                          (vector-set!
                           _%table102851%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted102874%_ '1))
                           (_%prototype-table-update!102847%_
                            _%default102848%_))
                          ((lambda ()
                             (let ((__tmp103189
                                    (let ((__tmp103190
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102845%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103190 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102845%_
                                __tmp103189)))))
                        (begin
                          (vector-set!
                           _%table102851%_
                           _%probe102870%_
                           _%key102846%_)
                          (vector-set!
                           _%table102851%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe102870%_ '1))
                           (_%prototype-table-update!102847%_
                            _%default102848%_))
                          ((lambda ()
                             (let ((__tmp103191
                                    (let ((__tmp103192
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab102845%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103192 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab102845%_
                                __tmp103191))
                             (let ((__tmp103193
                                    (let ((__tmp103194
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102845%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103194 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102845%_
                                __tmp103193))))))
                    (if (eq? _%k102877%_ (macro-deleted-obj))
                        (_%loop102867%_
                         (let ((_%next-probe102884%_
                                (fx+ _%start102863%_
                                     _%i102872%_
                                     (fx* _%i102872%_ _%i102872%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102884%_ _%size102857%_))
                         (let () (declare (not safe)) (##fx+ _%i102872%_ '1))
                         (let ((_%$e102887%_ _%deleted102874%_))
                           (if _%$e102887%_ _%$e102887%_ _%probe102870%_)))
                        (if (__interface-test-key _%key102846%_ _%k102877%_)
                            (let ()
                              (vector-set!
                               _%table102851%_
                               _%probe102870%_
                               _%key102846%_)
                              (vector-set!
                               _%table102851%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102870%_ '1))
                               (_%prototype-table-update!102847%_
                                (vector-ref
                                 _%table102851%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe102870%_ '1))))))
                            (_%loop102867%_
                             (let ((_%next-probe102892%_
                                    (fx+ _%start102863%_
                                         _%i102872%_
                                         (fx* _%i102872%_ _%i102872%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102892%_
                                _%size102857%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102872%_ '1))
                             _%deleted102874%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab102800%_ _%key102802%_)
        (let ((_%table102805%_
               (let () (declare (not safe)) (&raw-table-table _%tab102800%_)))
              (_%seed102807%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102800%_))))
          (let* ((_%h102810%_
                  (fxxor (__interface-hash-key _%key102802%_) _%seed102807%_))
                 (_%size102813%_ (vector-length _%table102805%_))
                 (_%entries102816%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102813%_ '2)))
                 (_%start102819%_
                  (let ((__tmp103195
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102810%_ _%entries102816%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103195 '1))))
            (let _%loop102823%_ ((_%probe102826%_ _%start102819%_)
                                 (_%i102828%_ '1))
              (let ((_%k102831%_ (vector-ref _%table102805%_ _%probe102826%_)))
                (if (eq? _%k102831%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102831%_ (macro-deleted-obj))
                        (_%loop102823%_
                         (let ((_%next-probe102836%_
                                (fx+ _%start102819%_
                                     _%i102828%_
                                     (fx* _%i102828%_ _%i102828%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102836%_ _%size102813%_))
                         (let () (declare (not safe)) (##fx+ _%i102828%_ '1)))
                        (if (__interface-test-key _%key102802%_ _%k102831%_)
                            (let ()
                              (vector-set!
                               _%table102805%_
                               _%probe102826%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102805%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102826%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp103196
                                        (let ((__tmp103197
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab102800%_))))
                                          (declare (not safe))
                                          (##fx- __tmp103197 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab102800%_
                                    __tmp103196)))))
                            (_%loop102823%_
                             (let ((_%next-probe102842%_
                                    (fx+ _%start102819%_
                                         _%i102828%_
                                         (fx* _%i102828%_ _%i102828%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102842%_
                                _%size102813%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102828%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass102792%_)
        (let ((_%super102793102795%_
               (let () (declare (not safe)) (##type-super _%klass102792%_))))
          (if _%super102793102795%_
              (let ((_%super102798%_ _%super102793102795%_))
                (eq? (let () (declare (not safe)) (##type-id _%super102798%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor102677%_ _%klass102678%_ _%obj-klass102679%_)
        (let ((_%method-table102681%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass102679%_))))
          (let _%loop102684%_ ((_%rest102687%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor102677%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count102689%_ '0)
                               (_%methods102691%_ '()))
            (let* ((_%rest102693102701%_ _%rest102687%_)
                   (_%else102695102763%_
                    (lambda ()
                      (let ((_%prototype102709%_
                             (let ((__obj103158
                                    (let ((__tmp103198
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count102689%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass102678%_
                                       __tmp103198))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103158 '#f))
                               __obj103158)))
                        (let _%loop102712%_ ((_%rest102714%_ _%methods102691%_)
                                             (_%off102715%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count102689%_ '1))))
                          (let* ((_%rest102717102725%_ _%rest102714%_)
                                 (_%else102719102744%_
                                  (lambda ()
                                    (let ((_%prototype-key102733%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass102678%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass102679%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again102738%_ ()
                                          (if (let ((__tmp103199
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103199 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again102738%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key102733%_
                                       _%prototype102709%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype102742%_)
                                         _%prototype102742%_)
                                       _%prototype102709%_))))
                                 (_%K102721102751%_
                                  (lambda (_%rest102747%_ _%method102748%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype102709%_
                                       _%method102748%_
                                       _%off102715%_
                                       _%klass102678%_
                                       '#f))
                                    (_%loop102712%_
                                     _%rest102747%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off102715%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest102717102725%_))
                                (let ((_%hd102722102754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest102717102725%_)))
                                      (_%tl102723102756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest102717102725%_))))
                                  (let* ((_%method102759%_ _%hd102722102754%_)
                                         (_%rest102761%_ _%tl102723102756%_))
                                    (_%K102721102751%_
                                     _%rest102761%_
                                     _%method102759%_)))
                                (_%else102719102744%_)))))))
                   (_%K102697102780%_
                    (lambda (_%rest102766%_ _%method-name102767%_)
                      (let ((_%$e102770%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table102681%_
                                _%method-name102767%_
                                '#f))))
                        (if _%$e102770%_
                            ((lambda (_%method102773%_)
                               (_%loop102684%_
                                _%rest102766%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count102689%_ '1))
                                (cons _%method102773%_ _%methods102691%_)))
                             _%$e102770%_)
                            ((lambda (_%klass102776%_
                                      _%obj-klass102777%_
                                      _%method-name102778%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass102776%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass102776%_))
                                'class:
                                _%obj-klass102777%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass102777%_))
                                'method:
                                _%method-name102778%_)
                               '#!void)
                             _%klass102678%_
                             _%obj-klass102679%_
                             _%method-name102767%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest102693102701%_))
                  (let ((_%hd102698102783%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102693102701%_)))
                        (_%tl102699102785%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102693102701%_))))
                    (let* ((_%method-name102788%_ _%hd102698102783%_)
                           (_%rest102790%_ _%tl102699102785%_))
                      (_%K102697102780%_
                       _%rest102790%_
                       _%method-name102788%_)))
                  (_%else102695102763%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor102562%_ _%klass102563%_ _%obj-klass102564%_)
        (let ((_%method-table102566%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass102564%_))))
          (let _%loop102569%_ ((_%rest102572%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor102562%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count102574%_ '0)
                               (_%methods102576%_ '()))
            (let* ((_%rest102578102586%_ _%rest102572%_)
                   (_%else102580102648%_
                    (lambda ()
                      (let ((_%prototype102594%_
                             (let ((__obj103159
                                    (let ((__tmp103200
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count102574%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass102563%_
                                       __tmp103200))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103159 '#f))
                               __obj103159)))
                        (let _%loop102597%_ ((_%rest102599%_ _%methods102576%_)
                                             (_%off102600%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count102574%_ '1))))
                          (let* ((_%rest102602102610%_ _%rest102599%_)
                                 (_%else102604102629%_
                                  (lambda ()
                                    (let ((_%prototype-key102618%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass102563%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass102564%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again102623%_ ()
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
                                                (_%again102623%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key102618%_
                                       _%prototype102594%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype102627%_)
                                         _%prototype102627%_)
                                       _%prototype102594%_))))
                                 (_%K102606102636%_
                                  (lambda (_%rest102632%_ _%method102633%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype102594%_
                                       _%method102633%_
                                       _%off102600%_
                                       _%klass102563%_
                                       '#f))
                                    (_%loop102597%_
                                     _%rest102632%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off102600%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest102602102610%_))
                                (let ((_%hd102607102639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest102602102610%_)))
                                      (_%tl102608102641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest102602102610%_))))
                                  (let* ((_%method102644%_ _%hd102607102639%_)
                                         (_%rest102646%_ _%tl102608102641%_))
                                    (_%K102606102636%_
                                     _%rest102646%_
                                     _%method102644%_)))
                                (_%else102604102629%_)))))))
                   (_%K102582102665%_
                    (lambda (_%rest102651%_ _%method-name102652%_)
                      (let ((_%$e102655%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table102566%_
                                _%method-name102652%_
                                '#f))))
                        (if _%$e102655%_
                            ((lambda (_%method102658%_)
                               (_%loop102569%_
                                _%rest102651%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count102574%_ '1))
                                (cons _%method102658%_ _%methods102576%_)))
                             _%$e102655%_)
                            ((lambda (_%klass102661%_
                                      _%obj-klass102662%_
                                      _%method-name102663%_)
                               '#f)
                             _%klass102563%_
                             _%obj-klass102564%_
                             _%method-name102652%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest102578102586%_))
                  (let ((_%hd102583102668%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102578102586%_)))
                        (_%tl102584102670%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102578102586%_))))
                    (let* ((_%method-name102673%_ _%hd102583102668%_)
                           (_%rest102675%_ _%tl102584102670%_))
                      (_%K102582102665%_
                       _%rest102675%_
                       _%method-name102673%_)))
                  (_%else102580102648%_)))))))
    (define cast
      (lambda (_%descriptor102520%_ _%obj102522%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102526%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102520%_ '1 '#f '#f)))
               (_%klass-id102529%_
                (let () (declare (not safe)) (##type-id _%klass102526%_)))
               (_%obj-klass102532%_
                (let () (declare (not safe)) (class-of _%obj102522%_)))
               (_%obj-klass-id102535%_
                (let () (declare (not safe)) (##type-id _%obj-klass102532%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102529%_ _%obj-klass-id102535%_))
              _%obj102522%_
              (if (interface-subclass? _%obj-klass102532%_)
                  (cast _%descriptor102520%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj102522%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102544%_ ()
                        (if (let ((__tmp103202
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103202 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102544%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102529%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102535%_))
                    (let ((_%prototype102555%_
                           (let ((_%$e102548%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102548%_
                                 ((lambda (_%prototype102551%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102551%_)
                                  _%$e102548%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor102520%_
                                    _%klass102526%_
                                    _%obj-klass102532%_))))))
                      ((lambda (_%prototype102557%_ _%obj102558%_)
                         (let ((_%instance102560%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype102557%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance102560%_
                              _%obj102558%_
                              '1
                              '#f
                              'cast))
                           _%instance102560%_))
                       _%prototype102555%_
                       _%obj102522%_))))))))
    (define try-cast
      (lambda (_%descriptor102478%_ _%obj102480%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102484%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102478%_ '1 '#f '#f)))
               (_%klass-id102487%_
                (let () (declare (not safe)) (##type-id _%klass102484%_)))
               (_%obj-klass102490%_
                (let () (declare (not safe)) (class-of _%obj102480%_)))
               (_%obj-klass-id102493%_
                (let () (declare (not safe)) (##type-id _%obj-klass102490%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102487%_ _%obj-klass-id102493%_))
              _%obj102480%_
              (if (interface-subclass? _%obj-klass102490%_)
                  (try-cast
                   _%descriptor102478%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj102480%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102502%_ ()
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
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102502%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102487%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102493%_))
                    (let ((_%prototype102513%_
                           (let ((_%$e102506%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102506%_
                                 ((lambda (_%prototype102509%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102509%_)
                                  _%$e102506%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor102478%_
                                    _%klass102484%_
                                    _%obj-klass102490%_))))))
                      ((lambda (_%prototype102515%_ _%obj102516%_)
                         (if _%prototype102515%_
                             (let ((_%instance102518%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype102515%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance102518%_
                                  _%obj102516%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance102518%_)
                             '#f))
                       _%prototype102513%_
                       _%obj102480%_))))))))
    (define satisfies?
      (lambda (_%descriptor102438%_ _%obj102440%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102444%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102438%_ '1 '#f '#f)))
               (_%klass-id102447%_
                (let () (declare (not safe)) (##type-id _%klass102444%_)))
               (_%obj-klass102450%_
                (let () (declare (not safe)) (class-of _%obj102440%_)))
               (_%obj-klass-id102453%_
                (let () (declare (not safe)) (##type-id _%obj-klass102450%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102447%_ _%obj-klass-id102453%_))
              _%obj102440%_
              (if (interface-subclass? _%obj-klass102450%_)
                  (satisfies?
                   _%descriptor102438%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj102440%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102462%_ ()
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
                              (_%again102462%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102447%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102453%_))
                    (let ((_%prototype102473%_
                           (let ((_%$e102466%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102466%_
                                 ((lambda (_%prototype102469%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102469%_)
                                  _%$e102466%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor102438%_
                                    _%klass102444%_
                                    _%obj-klass102450%_))))))
                      ((lambda (_%prototype102475%_ _%obj102476%_)
                         (if _%prototype102475%_ '#t '#f))
                       _%prototype102473%_
                       _%obj102440%_))))))))))
