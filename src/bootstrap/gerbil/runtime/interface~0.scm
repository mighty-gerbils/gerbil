(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1713453199)
  (begin
    (define CastError::t
      (let ((__tmp103826 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp103826
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args103819%_
        (apply make-instance CastError::t _%$args103819%_)))
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
      (lambda (_%where103693%_ _%message103694%_ . _%irritants103695%_)
        (let ((__tmp103827
               (let ((__obj103822
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj103822
                    _%message103694%_
                    'where:
                    _%where103693%_
                    'irritants:
                    _%irritants103695%_))
                 __obj103822)))
          (declare (not safe))
          (raise __tmp103827))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp103829 (list)) (__tmp103828 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp103829
         '(__object)
         __tmp103828
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
      (let ((__tmp103831 (list))
            (__tmp103830
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp103831
         '(type methods)
         __tmp103830
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args103690%_
        (apply make-instance interface-descriptor::t _%$args103690%_)))
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
      (lambda (_%key103688%_)
        (let ((__tmp103833
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key103688%_))))
              (__tmp103832
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key103688%_)))))
          (declare (not safe))
          (##fxxor __tmp103833 __tmp103832))))
    (define __interface-test-key
      (lambda (_%a103685%_ _%b103686%_)
        (if (let ((__tmp103835
                   (let () (declare (not safe)) (##car _%a103685%_)))
                  (__tmp103834
                   (let () (declare (not safe)) (##car _%b103686%_))))
              (declare (not safe))
              (##eq? __tmp103835 __tmp103834))
            (let ((__tmp103837
                   (let () (declare (not safe)) (##cdr _%a103685%_)))
                  (__tmp103836
                   (let () (declare (not safe)) (##cdr _%b103686%_))))
              (declare (not safe))
              (##eq? __tmp103837 __tmp103836))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint103666%_ _%seed103668%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint103666%_
           __interface-hash-key
           __interface-test-key
           _%seed103668%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint103674%_ '#f) (_%seed103676%_ '0))
          (make-prototype-table__% _%size-hint103674%_ _%seed103676%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint103678%_)
        (let ((_%seed103680%_ '0))
          (make-prototype-table__% _%size-hint103678%_ _%seed103680%_))))
    (define make-prototype-table
      (lambda _g103839_
        (let ((_g103838_ (let () (declare (not safe)) (##length _g103839_))))
          (cond ((let () (declare (not safe)) (##fx= _g103838_ 0))
                 (apply make-prototype-table__0 _g103839_))
                ((let () (declare (not safe)) (##fx= _g103838_ 1))
                 (apply make-prototype-table__1 _g103839_))
                ((let () (declare (not safe)) (##fx= _g103838_ 2))
                 (apply make-prototype-table__% _g103839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g103839_))))))
    (define prototype-table-ref
      (lambda (_%tab103619%_ _%key103620%_ _%default103621%_)
        (let ((_%table103623%_
               (let () (declare (not safe)) (&raw-table-table _%tab103619%_)))
              (_%seed103624%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103619%_))))
          (let* ((_%h103626%_
                  (fxxor (__interface-hash-key _%key103620%_) _%seed103624%_))
                 (_%size103629%_ (vector-length _%table103623%_))
                 (_%entries103632%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103629%_ '2)))
                 (_%start103635%_
                  (let ((__tmp103840
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103626%_ _%entries103632%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103840 '1))))
            (let _%loop103639%_ ((_%probe103642%_ _%start103635%_)
                                 (_%i103644%_ '1)
                                 (_%deleted103646%_ '#f))
              (let ((_%k103649%_ (vector-ref _%table103623%_ _%probe103642%_)))
                (if (eq? _%k103649%_ (macro-unused-obj))
                    _%default103621%_
                    (if (eq? _%k103649%_ (macro-deleted-obj))
                        (_%loop103639%_
                         (let ((_%next-probe103654%_
                                (fx+ _%start103635%_
                                     _%i103644%_
                                     (fx* _%i103644%_ _%i103644%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103654%_ _%size103629%_))
                         (let () (declare (not safe)) (##fx+ _%i103644%_ '1))
                         (let ((_%$e103657%_ _%deleted103646%_))
                           (if _%$e103657%_ _%$e103657%_ _%probe103642%_)))
                        (if (__interface-test-key _%key103620%_ _%k103649%_)
                            (vector-ref
                             _%table103623%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe103642%_ '1)))
                            (_%loop103639%_
                             (let ((_%next-probe103662%_
                                    (fx+ _%start103635%_
                                         _%i103644%_
                                         (fx* _%i103644%_ _%i103644%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103662%_
                                _%size103629%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103644%_ '1))
                             _%deleted103646%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab103615%_ _%key103616%_ _%value103617%_)
        (if (let ((__tmp103843
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103615%_)))
                  (__tmp103841
                   (let ((__tmp103842
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103615%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103842 '4))))
              (declare (not safe))
              (##fx< __tmp103843 __tmp103841))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103615%_))
            '#!void)
        (__prototype-table-set! _%tab103615%_ _%key103616%_ _%value103617%_)))
    (define __prototype-table-set!
      (lambda (_%tab103566%_ _%key103567%_ _%value103568%_)
        (let ((_%table103571%_
               (let () (declare (not safe)) (&raw-table-table _%tab103566%_)))
              (_%seed103572%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103566%_))))
          (let* ((_%h103574%_
                  (fxxor (__interface-hash-key _%key103567%_) _%seed103572%_))
                 (_%size103577%_ (vector-length _%table103571%_))
                 (_%entries103580%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103577%_ '2)))
                 (_%start103583%_
                  (let ((__tmp103844
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103574%_ _%entries103580%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103844 '1))))
            (let _%loop103587%_ ((_%probe103590%_ _%start103583%_)
                                 (_%i103592%_ '1)
                                 (_%deleted103594%_ '#f))
              (let ((_%k103597%_ (vector-ref _%table103571%_ _%probe103590%_)))
                (if (eq? _%k103597%_ (macro-unused-obj))
                    (if _%deleted103594%_
                        (begin
                          (vector-set!
                           _%table103571%_
                           _%deleted103594%_
                           _%key103567%_)
                          (vector-set!
                           _%table103571%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103594%_ '1))
                           _%value103568%_)
                          ((lambda ()
                             (let ((__tmp103845
                                    (let ((__tmp103846
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103566%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103846 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103566%_
                                __tmp103845)))))
                        (begin
                          (vector-set!
                           _%table103571%_
                           _%probe103590%_
                           _%key103567%_)
                          (vector-set!
                           _%table103571%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103590%_ '1))
                           _%value103568%_)
                          ((lambda ()
                             (let ((__tmp103847
                                    (let ((__tmp103848
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103566%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103848 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103566%_
                                __tmp103847))
                             (let ((__tmp103849
                                    (let ((__tmp103850
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103566%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103850 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103566%_
                                __tmp103849))))))
                    (if (eq? _%k103597%_ (macro-deleted-obj))
                        (_%loop103587%_
                         (let ((_%next-probe103604%_
                                (fx+ _%start103583%_
                                     _%i103592%_
                                     (fx* _%i103592%_ _%i103592%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103604%_ _%size103577%_))
                         (let () (declare (not safe)) (##fx+ _%i103592%_ '1))
                         (let ((_%$e103607%_ _%deleted103594%_))
                           (if _%$e103607%_ _%$e103607%_ _%probe103590%_)))
                        (if (__interface-test-key _%key103567%_ _%k103597%_)
                            (let ()
                              (vector-set!
                               _%table103571%_
                               _%probe103590%_
                               _%key103567%_)
                              (vector-set!
                               _%table103571%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103590%_ '1))
                               _%value103568%_))
                            (_%loop103587%_
                             (let ((_%next-probe103612%_
                                    (fx+ _%start103583%_
                                         _%i103592%_
                                         (fx* _%i103592%_ _%i103592%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103612%_
                                _%size103577%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103592%_ '1))
                             _%deleted103594%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab103561%_
               _%key103562%_
               _%prototype-table-update!103563%_
               _%default103564%_)
        (if (let ((__tmp103853
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103561%_)))
                  (__tmp103851
                   (let ((__tmp103852
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103561%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103852 '4))))
              (declare (not safe))
              (##fx< __tmp103853 __tmp103851))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103561%_))
            '#!void)
        (__prototype-table-update!
         _%tab103561%_
         _%key103562%_
         _%prototype-table-update!103563%_
         _%default103564%_)))
    (define __prototype-table-update!
      (lambda (_%tab103511%_
               _%key103512%_
               _%prototype-table-update!103513%_
               _%default103514%_)
        (let ((_%table103517%_
               (let () (declare (not safe)) (&raw-table-table _%tab103511%_)))
              (_%seed103518%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103511%_))))
          (let* ((_%h103520%_
                  (fxxor (__interface-hash-key _%key103512%_) _%seed103518%_))
                 (_%size103523%_ (vector-length _%table103517%_))
                 (_%entries103526%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103523%_ '2)))
                 (_%start103529%_
                  (let ((__tmp103854
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103520%_ _%entries103526%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103854 '1))))
            (let _%loop103533%_ ((_%probe103536%_ _%start103529%_)
                                 (_%i103538%_ '1)
                                 (_%deleted103540%_ '#f))
              (let ((_%k103543%_ (vector-ref _%table103517%_ _%probe103536%_)))
                (if (eq? _%k103543%_ (macro-unused-obj))
                    (if _%deleted103540%_
                        (begin
                          (vector-set!
                           _%table103517%_
                           _%deleted103540%_
                           _%key103512%_)
                          (vector-set!
                           _%table103517%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103540%_ '1))
                           (_%prototype-table-update!103513%_
                            _%default103514%_))
                          ((lambda ()
                             (let ((__tmp103855
                                    (let ((__tmp103856
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103511%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103856 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103511%_
                                __tmp103855)))))
                        (begin
                          (vector-set!
                           _%table103517%_
                           _%probe103536%_
                           _%key103512%_)
                          (vector-set!
                           _%table103517%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103536%_ '1))
                           (_%prototype-table-update!103513%_
                            _%default103514%_))
                          ((lambda ()
                             (let ((__tmp103857
                                    (let ((__tmp103858
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103511%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103858 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103511%_
                                __tmp103857))
                             (let ((__tmp103859
                                    (let ((__tmp103860
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103511%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103860 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103511%_
                                __tmp103859))))))
                    (if (eq? _%k103543%_ (macro-deleted-obj))
                        (_%loop103533%_
                         (let ((_%next-probe103550%_
                                (fx+ _%start103529%_
                                     _%i103538%_
                                     (fx* _%i103538%_ _%i103538%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103550%_ _%size103523%_))
                         (let () (declare (not safe)) (##fx+ _%i103538%_ '1))
                         (let ((_%$e103553%_ _%deleted103540%_))
                           (if _%$e103553%_ _%$e103553%_ _%probe103536%_)))
                        (if (__interface-test-key _%key103512%_ _%k103543%_)
                            (let ()
                              (vector-set!
                               _%table103517%_
                               _%probe103536%_
                               _%key103512%_)
                              (vector-set!
                               _%table103517%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103536%_ '1))
                               (_%prototype-table-update!103513%_
                                (vector-ref
                                 _%table103517%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe103536%_ '1))))))
                            (_%loop103533%_
                             (let ((_%next-probe103558%_
                                    (fx+ _%start103529%_
                                         _%i103538%_
                                         (fx* _%i103538%_ _%i103538%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103558%_
                                _%size103523%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103538%_ '1))
                             _%deleted103540%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab103466%_ _%key103468%_)
        (let ((_%table103471%_
               (let () (declare (not safe)) (&raw-table-table _%tab103466%_)))
              (_%seed103473%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103466%_))))
          (let* ((_%h103476%_
                  (fxxor (__interface-hash-key _%key103468%_) _%seed103473%_))
                 (_%size103479%_ (vector-length _%table103471%_))
                 (_%entries103482%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103479%_ '2)))
                 (_%start103485%_
                  (let ((__tmp103861
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103476%_ _%entries103482%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103861 '1))))
            (let _%loop103489%_ ((_%probe103492%_ _%start103485%_)
                                 (_%i103494%_ '1))
              (let ((_%k103497%_ (vector-ref _%table103471%_ _%probe103492%_)))
                (if (eq? _%k103497%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103497%_ (macro-deleted-obj))
                        (_%loop103489%_
                         (let ((_%next-probe103502%_
                                (fx+ _%start103485%_
                                     _%i103494%_
                                     (fx* _%i103494%_ _%i103494%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103502%_ _%size103479%_))
                         (let () (declare (not safe)) (##fx+ _%i103494%_ '1)))
                        (if (__interface-test-key _%key103468%_ _%k103497%_)
                            (let ()
                              (vector-set!
                               _%table103471%_
                               _%probe103492%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103471%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103492%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp103862
                                        (let ((__tmp103863
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab103466%_))))
                                          (declare (not safe))
                                          (##fx- __tmp103863 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab103466%_
                                    __tmp103862)))))
                            (_%loop103489%_
                             (let ((_%next-probe103508%_
                                    (fx+ _%start103485%_
                                         _%i103494%_
                                         (fx* _%i103494%_ _%i103494%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103508%_
                                _%size103479%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103494%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass103458%_)
        (let ((_%super103459103461%_
               (let () (declare (not safe)) (##type-super _%klass103458%_))))
          (if _%super103459103461%_
              (let ((_%super103464%_ _%super103459103461%_))
                (eq? (let () (declare (not safe)) (##type-id _%super103464%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor103343%_ _%klass103344%_ _%obj-klass103345%_)
        (let ((_%method-table103347%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass103345%_))))
          (let _%loop103350%_ ((_%rest103353%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor103343%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count103355%_ '0)
                               (_%methods103357%_ '()))
            (let* ((_%rest103359103367%_ _%rest103353%_)
                   (_%else103361103429%_
                    (lambda ()
                      (let ((_%prototype103375%_
                             (let ((__obj103824
                                    (let ((__tmp103864
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count103355%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass103344%_
                                       __tmp103864))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103824 '#f))
                               __obj103824)))
                        (let _%loop103378%_ ((_%rest103380%_ _%methods103357%_)
                                             (_%off103381%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count103355%_ '1))))
                          (let* ((_%rest103383103391%_ _%rest103380%_)
                                 (_%else103385103410%_
                                  (lambda ()
                                    (let ((_%prototype-key103399%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass103344%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass103345%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again103404%_ ()
                                          (if (let ((__tmp103865
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103865 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again103404%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key103399%_
                                       _%prototype103375%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype103408%_)
                                         _%prototype103408%_)
                                       _%prototype103375%_))))
                                 (_%K103387103417%_
                                  (lambda (_%rest103413%_ _%method103414%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype103375%_
                                       _%method103414%_
                                       _%off103381%_
                                       _%klass103344%_
                                       '#f))
                                    (_%loop103378%_
                                     _%rest103413%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off103381%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest103383103391%_))
                                (let ((_%hd103388103420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest103383103391%_)))
                                      (_%tl103389103422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest103383103391%_))))
                                  (let* ((_%method103425%_ _%hd103388103420%_)
                                         (_%rest103427%_ _%tl103389103422%_))
                                    (_%K103387103417%_
                                     _%rest103427%_
                                     _%method103425%_)))
                                (_%else103385103410%_)))))))
                   (_%K103363103446%_
                    (lambda (_%rest103432%_ _%method-name103433%_)
                      (let ((_%$e103436%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table103347%_
                                _%method-name103433%_
                                '#f))))
                        (if _%$e103436%_
                            ((lambda (_%method103439%_)
                               (_%loop103350%_
                                _%rest103432%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count103355%_ '1))
                                (cons _%method103439%_ _%methods103357%_)))
                             _%$e103436%_)
                            ((lambda (_%klass103442%_
                                      _%obj-klass103443%_
                                      _%method-name103444%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass103442%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass103442%_))
                                'class:
                                _%obj-klass103443%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass103443%_))
                                'method:
                                _%method-name103444%_)
                               '#!void)
                             _%klass103344%_
                             _%obj-klass103345%_
                             _%method-name103433%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest103359103367%_))
                  (let ((_%hd103364103449%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest103359103367%_)))
                        (_%tl103365103451%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest103359103367%_))))
                    (let* ((_%method-name103454%_ _%hd103364103449%_)
                           (_%rest103456%_ _%tl103365103451%_))
                      (_%K103363103446%_
                       _%rest103456%_
                       _%method-name103454%_)))
                  (_%else103361103429%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor103228%_ _%klass103229%_ _%obj-klass103230%_)
        (let ((_%method-table103232%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass103230%_))))
          (let _%loop103235%_ ((_%rest103238%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor103228%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count103240%_ '0)
                               (_%methods103242%_ '()))
            (let* ((_%rest103244103252%_ _%rest103238%_)
                   (_%else103246103314%_
                    (lambda ()
                      (let ((_%prototype103260%_
                             (let ((__obj103825
                                    (let ((__tmp103866
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count103240%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass103229%_
                                       __tmp103866))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103825 '#f))
                               __obj103825)))
                        (let _%loop103263%_ ((_%rest103265%_ _%methods103242%_)
                                             (_%off103266%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count103240%_ '1))))
                          (let* ((_%rest103268103276%_ _%rest103265%_)
                                 (_%else103270103295%_
                                  (lambda ()
                                    (let ((_%prototype-key103284%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass103229%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass103230%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again103289%_ ()
                                          (if (let ((__tmp103867
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103867 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again103289%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key103284%_
                                       _%prototype103260%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype103293%_)
                                         _%prototype103293%_)
                                       _%prototype103260%_))))
                                 (_%K103272103302%_
                                  (lambda (_%rest103298%_ _%method103299%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype103260%_
                                       _%method103299%_
                                       _%off103266%_
                                       _%klass103229%_
                                       '#f))
                                    (_%loop103263%_
                                     _%rest103298%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off103266%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest103268103276%_))
                                (let ((_%hd103273103305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest103268103276%_)))
                                      (_%tl103274103307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest103268103276%_))))
                                  (let* ((_%method103310%_ _%hd103273103305%_)
                                         (_%rest103312%_ _%tl103274103307%_))
                                    (_%K103272103302%_
                                     _%rest103312%_
                                     _%method103310%_)))
                                (_%else103270103295%_)))))))
                   (_%K103248103331%_
                    (lambda (_%rest103317%_ _%method-name103318%_)
                      (let ((_%$e103321%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table103232%_
                                _%method-name103318%_
                                '#f))))
                        (if _%$e103321%_
                            ((lambda (_%method103324%_)
                               (_%loop103235%_
                                _%rest103317%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count103240%_ '1))
                                (cons _%method103324%_ _%methods103242%_)))
                             _%$e103321%_)
                            ((lambda (_%klass103327%_
                                      _%obj-klass103328%_
                                      _%method-name103329%_)
                               '#f)
                             _%klass103229%_
                             _%obj-klass103230%_
                             _%method-name103318%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest103244103252%_))
                  (let ((_%hd103249103334%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest103244103252%_)))
                        (_%tl103250103336%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest103244103252%_))))
                    (let* ((_%method-name103339%_ _%hd103249103334%_)
                           (_%rest103341%_ _%tl103250103336%_))
                      (_%K103248103331%_
                       _%rest103341%_
                       _%method-name103339%_)))
                  (_%else103246103314%_)))))))
    (define cast
      (lambda (_%descriptor103186%_ _%obj103188%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass103192%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor103186%_ '1 '#f '#f)))
               (_%klass-id103195%_
                (let () (declare (not safe)) (##type-id _%klass103192%_)))
               (_%obj-klass103198%_
                (let () (declare (not safe)) (class-of _%obj103188%_)))
               (_%obj-klass-id103201%_
                (let () (declare (not safe)) (##type-id _%obj-klass103198%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id103195%_ _%obj-klass-id103201%_))
              _%obj103188%_
              (if (interface-subclass? _%obj-klass103198%_)
                  (cast _%descriptor103186%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj103188%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again103210%_ ()
                        (if (let ((__tmp103868
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103868 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again103210%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id103195%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id103201%_))
                    (let ((_%prototype103221%_
                           (let ((_%$e103214%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e103214%_
                                 ((lambda (_%prototype103217%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype103217%_)
                                  _%$e103214%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor103186%_
                                    _%klass103192%_
                                    _%obj-klass103198%_))))))
                      ((lambda (_%prototype103223%_ _%obj103224%_)
                         (let ((_%instance103226%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype103223%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance103226%_
                              _%obj103224%_
                              '1
                              '#f
                              'cast))
                           _%instance103226%_))
                       _%prototype103221%_
                       _%obj103188%_))))))))
    (define try-cast
      (lambda (_%descriptor103144%_ _%obj103146%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass103150%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor103144%_ '1 '#f '#f)))
               (_%klass-id103153%_
                (let () (declare (not safe)) (##type-id _%klass103150%_)))
               (_%obj-klass103156%_
                (let () (declare (not safe)) (class-of _%obj103146%_)))
               (_%obj-klass-id103159%_
                (let () (declare (not safe)) (##type-id _%obj-klass103156%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id103153%_ _%obj-klass-id103159%_))
              _%obj103146%_
              (if (interface-subclass? _%obj-klass103156%_)
                  (try-cast
                   _%descriptor103144%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj103146%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again103168%_ ()
                        (if (let ((__tmp103869
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103869 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again103168%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id103153%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id103159%_))
                    (let ((_%prototype103179%_
                           (let ((_%$e103172%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e103172%_
                                 ((lambda (_%prototype103175%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype103175%_)
                                  _%$e103172%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor103144%_
                                    _%klass103150%_
                                    _%obj-klass103156%_))))))
                      ((lambda (_%prototype103181%_ _%obj103182%_)
                         (if _%prototype103181%_
                             (let ((_%instance103184%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype103181%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance103184%_
                                  _%obj103182%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance103184%_)
                             '#f))
                       _%prototype103179%_
                       _%obj103146%_))))))))
    (define satisfies?
      (lambda (_%descriptor103104%_ _%obj103106%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass103110%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor103104%_ '1 '#f '#f)))
               (_%klass-id103113%_
                (let () (declare (not safe)) (##type-id _%klass103110%_)))
               (_%obj-klass103116%_
                (let () (declare (not safe)) (class-of _%obj103106%_)))
               (_%obj-klass-id103119%_
                (let () (declare (not safe)) (##type-id _%obj-klass103116%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id103113%_ _%obj-klass-id103119%_))
              _%obj103106%_
              (if (interface-subclass? _%obj-klass103116%_)
                  (satisfies?
                   _%descriptor103104%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj103106%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again103128%_ ()
                        (if (let ((__tmp103870
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103870 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again103128%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id103113%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id103119%_))
                    (let ((_%prototype103139%_
                           (let ((_%$e103132%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e103132%_
                                 ((lambda (_%prototype103135%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype103135%_)
                                  _%$e103132%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor103104%_
                                    _%klass103110%_
                                    _%obj-klass103116%_))))))
                      ((lambda (_%prototype103141%_ _%obj103142%_)
                         (if _%prototype103141%_ '#t '#f))
                       _%prototype103139%_
                       _%obj103106%_))))))))))
