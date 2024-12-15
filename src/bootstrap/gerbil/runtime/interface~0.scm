(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1734278443)
  (begin
    (define CastError::t
      (let ((__tmp106115 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp106115
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args106108%_
        (apply make-instance CastError::t _%$args106108%_)))
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
      (lambda (_%where105982%_ _%message105983%_ . _%irritants105984%_)
        (let ((__tmp106116
               (let ((__obj106111
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj106111
                    _%message105983%_
                    'where:
                    _%where105982%_
                    'irritants:
                    _%irritants105984%_))
                 __obj106111)))
          (declare (not safe))
          (raise __tmp106116))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp106118 (list)) (__tmp106117 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp106118
         '(__object)
         __tmp106117
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
      (let ((__tmp106120 (list))
            (__tmp106119
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp106120
         '(type methods)
         __tmp106119
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args105979%_
        (apply make-instance interface-descriptor::t _%$args105979%_)))
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
      (lambda (_%key105977%_)
        (let ((__tmp106122
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key105977%_))))
              (__tmp106121
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key105977%_)))))
          (declare (not safe))
          (##fxxor __tmp106122 __tmp106121))))
    (define __interface-test-key
      (lambda (_%a105974%_ _%b105975%_)
        (if (let ((__tmp106124
                   (let () (declare (not safe)) (##car _%a105974%_)))
                  (__tmp106123
                   (let () (declare (not safe)) (##car _%b105975%_))))
              (declare (not safe))
              (##eq? __tmp106124 __tmp106123))
            (let ((__tmp106126
                   (let () (declare (not safe)) (##cdr _%a105974%_)))
                  (__tmp106125
                   (let () (declare (not safe)) (##cdr _%b105975%_))))
              (declare (not safe))
              (##eq? __tmp106126 __tmp106125))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint105955%_ _%seed105957%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint105955%_
           __interface-hash-key
           __interface-test-key
           _%seed105957%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint105963%_ '#f) (_%seed105965%_ '0))
          (make-prototype-table__% _%size-hint105963%_ _%seed105965%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint105967%_)
        (let ((_%seed105969%_ '0))
          (make-prototype-table__% _%size-hint105967%_ _%seed105969%_))))
    (define make-prototype-table
      (lambda _g106128_
        (let ((_g106127_ (let () (declare (not safe)) (##length _g106128_))))
          (cond ((let () (declare (not safe)) (##fx= _g106127_ 0))
                 (apply make-prototype-table__0 _g106128_))
                ((let () (declare (not safe)) (##fx= _g106127_ 1))
                 (apply make-prototype-table__1 _g106128_))
                ((let () (declare (not safe)) (##fx= _g106127_ 2))
                 (apply make-prototype-table__% _g106128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g106128_))))))
    (define prototype-table-ref
      (lambda (_%tab105908%_ _%key105909%_ _%default105910%_)
        (let ((_%table105912%_
               (let () (declare (not safe)) (&raw-table-table _%tab105908%_)))
              (_%seed105913%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105908%_))))
          (let* ((_%h105915%_
                  (fxxor (__interface-hash-key _%key105909%_) _%seed105913%_))
                 (_%size105918%_ (vector-length _%table105912%_))
                 (_%entries105921%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105918%_ '2)))
                 (_%start105924%_
                  (let ((__tmp106129
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105915%_ _%entries105921%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106129 '1))))
            (let _%loop105928%_ ((_%probe105931%_ _%start105924%_)
                                 (_%i105933%_ '1)
                                 (_%deleted105935%_ '#f))
              (let ((_%k105938%_ (vector-ref _%table105912%_ _%probe105931%_)))
                (if (eq? _%k105938%_ (macro-unused-obj))
                    _%default105910%_
                    (if (eq? _%k105938%_ (macro-deleted-obj))
                        (_%loop105928%_
                         (let ((_%next-probe105943%_
                                (fx+ _%start105924%_
                                     _%i105933%_
                                     (fx* _%i105933%_ _%i105933%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105943%_ _%size105918%_))
                         (let () (declare (not safe)) (##fx+ _%i105933%_ '1))
                         (let ((_%$e105946%_ _%deleted105935%_))
                           (if _%$e105946%_ _%$e105946%_ _%probe105931%_)))
                        (if (__interface-test-key _%key105909%_ _%k105938%_)
                            (vector-ref
                             _%table105912%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105931%_ '1)))
                            (_%loop105928%_
                             (let ((_%next-probe105951%_
                                    (fx+ _%start105924%_
                                         _%i105933%_
                                         (fx* _%i105933%_ _%i105933%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105951%_
                                _%size105918%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105933%_ '1))
                             _%deleted105935%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab105904%_ _%key105905%_ _%value105906%_)
        (if (let ((__tmp106132
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105904%_)))
                  (__tmp106130
                   (let ((__tmp106131
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105904%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106131 '4))))
              (declare (not safe))
              (##fx< __tmp106132 __tmp106130))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105904%_))
            '#!void)
        (__prototype-table-set! _%tab105904%_ _%key105905%_ _%value105906%_)))
    (define __prototype-table-set!
      (lambda (_%tab105855%_ _%key105856%_ _%value105857%_)
        (let ((_%table105860%_
               (let () (declare (not safe)) (&raw-table-table _%tab105855%_)))
              (_%seed105861%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105855%_))))
          (let* ((_%h105863%_
                  (fxxor (__interface-hash-key _%key105856%_) _%seed105861%_))
                 (_%size105866%_ (vector-length _%table105860%_))
                 (_%entries105869%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105866%_ '2)))
                 (_%start105872%_
                  (let ((__tmp106133
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105863%_ _%entries105869%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106133 '1))))
            (let _%loop105876%_ ((_%probe105879%_ _%start105872%_)
                                 (_%i105881%_ '1)
                                 (_%deleted105883%_ '#f))
              (let ((_%k105886%_ (vector-ref _%table105860%_ _%probe105879%_)))
                (if (eq? _%k105886%_ (macro-unused-obj))
                    (if _%deleted105883%_
                        (begin
                          (vector-set!
                           _%table105860%_
                           _%deleted105883%_
                           _%key105856%_)
                          (vector-set!
                           _%table105860%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105883%_ '1))
                           _%value105857%_)
                          ((lambda ()
                             (let ((__tmp106134
                                    (let ((__tmp106135
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105855%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106135 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105855%_
                                __tmp106134)))))
                        (begin
                          (vector-set!
                           _%table105860%_
                           _%probe105879%_
                           _%key105856%_)
                          (vector-set!
                           _%table105860%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105879%_ '1))
                           _%value105857%_)
                          ((lambda ()
                             (let ((__tmp106136
                                    (let ((__tmp106137
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105855%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106137 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105855%_
                                __tmp106136))
                             (let ((__tmp106138
                                    (let ((__tmp106139
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105855%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106139 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105855%_
                                __tmp106138))))))
                    (if (eq? _%k105886%_ (macro-deleted-obj))
                        (_%loop105876%_
                         (let ((_%next-probe105893%_
                                (fx+ _%start105872%_
                                     _%i105881%_
                                     (fx* _%i105881%_ _%i105881%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105893%_ _%size105866%_))
                         (let () (declare (not safe)) (##fx+ _%i105881%_ '1))
                         (let ((_%$e105896%_ _%deleted105883%_))
                           (if _%$e105896%_ _%$e105896%_ _%probe105879%_)))
                        (if (__interface-test-key _%key105856%_ _%k105886%_)
                            (let ()
                              (vector-set!
                               _%table105860%_
                               _%probe105879%_
                               _%key105856%_)
                              (vector-set!
                               _%table105860%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105879%_ '1))
                               _%value105857%_))
                            (_%loop105876%_
                             (let ((_%next-probe105901%_
                                    (fx+ _%start105872%_
                                         _%i105881%_
                                         (fx* _%i105881%_ _%i105881%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105901%_
                                _%size105866%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105881%_ '1))
                             _%deleted105883%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab105850%_
               _%key105851%_
               _%prototype-table-update!105852%_
               _%default105853%_)
        (if (let ((__tmp106142
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105850%_)))
                  (__tmp106140
                   (let ((__tmp106141
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105850%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106141 '4))))
              (declare (not safe))
              (##fx< __tmp106142 __tmp106140))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105850%_))
            '#!void)
        (__prototype-table-update!
         _%tab105850%_
         _%key105851%_
         _%prototype-table-update!105852%_
         _%default105853%_)))
    (define __prototype-table-update!
      (lambda (_%tab105800%_
               _%key105801%_
               _%prototype-table-update!105802%_
               _%default105803%_)
        (let ((_%table105806%_
               (let () (declare (not safe)) (&raw-table-table _%tab105800%_)))
              (_%seed105807%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105800%_))))
          (let* ((_%h105809%_
                  (fxxor (__interface-hash-key _%key105801%_) _%seed105807%_))
                 (_%size105812%_ (vector-length _%table105806%_))
                 (_%entries105815%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105812%_ '2)))
                 (_%start105818%_
                  (let ((__tmp106143
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105809%_ _%entries105815%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106143 '1))))
            (let _%loop105822%_ ((_%probe105825%_ _%start105818%_)
                                 (_%i105827%_ '1)
                                 (_%deleted105829%_ '#f))
              (let ((_%k105832%_ (vector-ref _%table105806%_ _%probe105825%_)))
                (if (eq? _%k105832%_ (macro-unused-obj))
                    (if _%deleted105829%_
                        (begin
                          (vector-set!
                           _%table105806%_
                           _%deleted105829%_
                           _%key105801%_)
                          (vector-set!
                           _%table105806%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105829%_ '1))
                           (_%prototype-table-update!105802%_
                            _%default105803%_))
                          ((lambda ()
                             (let ((__tmp106144
                                    (let ((__tmp106145
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105800%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106145 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105800%_
                                __tmp106144)))))
                        (begin
                          (vector-set!
                           _%table105806%_
                           _%probe105825%_
                           _%key105801%_)
                          (vector-set!
                           _%table105806%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105825%_ '1))
                           (_%prototype-table-update!105802%_
                            _%default105803%_))
                          ((lambda ()
                             (let ((__tmp106146
                                    (let ((__tmp106147
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105800%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106147 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105800%_
                                __tmp106146))
                             (let ((__tmp106148
                                    (let ((__tmp106149
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105800%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106149 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105800%_
                                __tmp106148))))))
                    (if (eq? _%k105832%_ (macro-deleted-obj))
                        (_%loop105822%_
                         (let ((_%next-probe105839%_
                                (fx+ _%start105818%_
                                     _%i105827%_
                                     (fx* _%i105827%_ _%i105827%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105839%_ _%size105812%_))
                         (let () (declare (not safe)) (##fx+ _%i105827%_ '1))
                         (let ((_%$e105842%_ _%deleted105829%_))
                           (if _%$e105842%_ _%$e105842%_ _%probe105825%_)))
                        (if (__interface-test-key _%key105801%_ _%k105832%_)
                            (let ()
                              (vector-set!
                               _%table105806%_
                               _%probe105825%_
                               _%key105801%_)
                              (vector-set!
                               _%table105806%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105825%_ '1))
                               (_%prototype-table-update!105802%_
                                (vector-ref
                                 _%table105806%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe105825%_ '1))))))
                            (_%loop105822%_
                             (let ((_%next-probe105847%_
                                    (fx+ _%start105818%_
                                         _%i105827%_
                                         (fx* _%i105827%_ _%i105827%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105847%_
                                _%size105812%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105827%_ '1))
                             _%deleted105829%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab105755%_ _%key105757%_)
        (let ((_%table105760%_
               (let () (declare (not safe)) (&raw-table-table _%tab105755%_)))
              (_%seed105762%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105755%_))))
          (let* ((_%h105765%_
                  (fxxor (__interface-hash-key _%key105757%_) _%seed105762%_))
                 (_%size105768%_ (vector-length _%table105760%_))
                 (_%entries105771%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105768%_ '2)))
                 (_%start105774%_
                  (let ((__tmp106150
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105765%_ _%entries105771%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106150 '1))))
            (let _%loop105778%_ ((_%probe105781%_ _%start105774%_)
                                 (_%i105783%_ '1))
              (let ((_%k105786%_ (vector-ref _%table105760%_ _%probe105781%_)))
                (if (eq? _%k105786%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k105786%_ (macro-deleted-obj))
                        (_%loop105778%_
                         (let ((_%next-probe105791%_
                                (fx+ _%start105774%_
                                     _%i105783%_
                                     (fx* _%i105783%_ _%i105783%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105791%_ _%size105768%_))
                         (let () (declare (not safe)) (##fx+ _%i105783%_ '1)))
                        (if (__interface-test-key _%key105757%_ _%k105786%_)
                            (let ()
                              (vector-set!
                               _%table105760%_
                               _%probe105781%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table105760%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105781%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp106151
                                        (let ((__tmp106152
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab105755%_))))
                                          (declare (not safe))
                                          (##fx- __tmp106152 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab105755%_
                                    __tmp106151)))))
                            (_%loop105778%_
                             (let ((_%next-probe105797%_
                                    (fx+ _%start105774%_
                                         _%i105783%_
                                         (fx* _%i105783%_ _%i105783%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105797%_
                                _%size105768%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105783%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass105747%_)
        (let ((_%super105748105750%_
               (let () (declare (not safe)) (##type-super _%klass105747%_))))
          (if _%super105748105750%_
              (let ((_%super105753%_ _%super105748105750%_))
                (eq? (let () (declare (not safe)) (##type-id _%super105753%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor105581%_ _%klass105582%_ _%obj-klass105583%_)
        (let ((_%method-table105585%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105583%_))))
          (let _%loop105588%_ ((_%rest105591%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105581%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105593%_ '0)
                               (_%methods105595%_ '()))
            (let* ((_%rest105597105605%_ _%rest105591%_)
                   (_%else105599105667%_
                    (lambda ()
                      (let ((_%prototype105613%_
                             (let ((__obj106113
                                    (let ((__tmp106153
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105593%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105582%_
                                       __tmp106153))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106113 '#f))
                               __obj106113)))
                        (let _%loop105616%_ ((_%rest105618%_ _%methods105595%_)
                                             (_%off105619%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105593%_ '1))))
                          (let* ((_%rest105621105629%_ _%rest105618%_)
                                 (_%else105623105648%_
                                  (lambda ()
                                    (let ((_%prototype-key105637%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105582%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105583%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105642%_ ()
                                          (if (let ((__tmp106154
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106154 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105642%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105637%_
                                       _%prototype105613%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105646%_)
                                         _%prototype105646%_)
                                       _%prototype105613%_))))
                                 (_%K105625105655%_
                                  (lambda (_%rest105651%_ _%method105652%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105613%_
                                       _%method105652%_
                                       _%off105619%_
                                       _%klass105582%_
                                       '#f))
                                    (_%loop105616%_
                                     _%rest105651%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105619%_ '1))))))
                            (if (pair? _%rest105621105629%_)
                                (let ((_%hd105626105658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105621105629%_)))
                                      (_%tl105627105660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105621105629%_))))
                                  (let* ((_%method105663%_ _%hd105626105658%_)
                                         (_%rest105665%_ _%tl105627105660%_))
                                    (_%K105625105655%_
                                     _%rest105665%_
                                     _%method105663%_)))
                                (_%else105623105648%_)))))))
                   (_%K105601105735%_
                    (lambda (_%rest105670%_ _%method-spec105671%_)
                      (if (pair? _%method-spec105671%_)
                          (let _%loop-inner105675%_ ((_%methods-rest105678%_
                                                      _%method-spec105671%_))
                            (let* ((_%methods-rest105680105688%_
                                    _%methods-rest105678%_)
                                   (_%else105682105700%_
                                    (lambda ()
                                      ((lambda (_%klass105696%_
                                                _%obj-klass105697%_
                                                _%method-name105698%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass105696%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass105696%_))
                                          'class:
                                          _%obj-klass105697%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass105697%_))
                                          'method:
                                          _%method-name105698%_)
                                         '#!void)
                                       _%klass105582%_
                                       _%obj-klass105583%_
                                       _%method-spec105671%_)))
                                   (_%K105684105713%_
                                    (lambda (_%methods-rest105703%_
                                             _%method-name105704%_)
                                      (let ((_%$e105707%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105585%_
                                                _%method-name105704%_
                                                '#f))))
                                        (if _%$e105707%_
                                            ((lambda (_%method105710%_)
                                               (_%loop105588%_
                                                _%rest105670%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105593%_ '1))
                                                (cons _%method105710%_
                                                      _%methods105595%_)))
                                             _%$e105707%_)
                                            (_%loop-inner105675%_
                                             _%methods-rest105703%_))))))
                              (if (pair? _%methods-rest105680105688%_)
                                  (let ((_%hd105685105716%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105680105688%_)))
                                        (_%tl105686105718%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105680105688%_))))
                                    (let* ((_%method-name105721%_
                                            _%hd105685105716%_)
                                           (_%methods-rest105723%_
                                            _%tl105686105718%_))
                                      (_%K105684105713%_
                                       _%methods-rest105723%_
                                       _%method-name105721%_)))
                                  (_%else105682105700%_))))
                          (let ((_%$e105725%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105585%_
                                    _%method-spec105671%_
                                    '#f))))
                            (if _%$e105725%_
                                ((lambda (_%method105728%_)
                                   (_%loop105588%_
                                    _%rest105670%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105593%_ '1))
                                    (cons _%method105728%_ _%methods105595%_)))
                                 _%$e105725%_)
                                ((lambda (_%klass105731%_
                                          _%obj-klass105732%_
                                          _%method-name105733%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass105731%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass105731%_))
                                    'class:
                                    _%obj-klass105732%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass105732%_))
                                    'method:
                                    _%method-name105733%_)
                                   '#!void)
                                 _%klass105582%_
                                 _%obj-klass105583%_
                                 _%method-spec105671%_)))))))
              (if (pair? _%rest105597105605%_)
                  (let ((_%hd105602105738%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105597105605%_)))
                        (_%tl105603105740%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105597105605%_))))
                    (let* ((_%method-spec105743%_ _%hd105602105738%_)
                           (_%rest105745%_ _%tl105603105740%_))
                      (_%K105601105735%_
                       _%rest105745%_
                       _%method-spec105743%_)))
                  (_%else105599105667%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor105415%_ _%klass105416%_ _%obj-klass105417%_)
        (let ((_%method-table105419%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105417%_))))
          (let _%loop105422%_ ((_%rest105425%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105415%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105427%_ '0)
                               (_%methods105429%_ '()))
            (let* ((_%rest105431105439%_ _%rest105425%_)
                   (_%else105433105501%_
                    (lambda ()
                      (let ((_%prototype105447%_
                             (let ((__obj106114
                                    (let ((__tmp106155
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105427%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105416%_
                                       __tmp106155))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106114 '#f))
                               __obj106114)))
                        (let _%loop105450%_ ((_%rest105452%_ _%methods105429%_)
                                             (_%off105453%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105427%_ '1))))
                          (let* ((_%rest105455105463%_ _%rest105452%_)
                                 (_%else105457105482%_
                                  (lambda ()
                                    (let ((_%prototype-key105471%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105416%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105417%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105476%_ ()
                                          (if (let ((__tmp106156
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106156 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105476%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105471%_
                                       _%prototype105447%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105480%_)
                                         _%prototype105480%_)
                                       _%prototype105447%_))))
                                 (_%K105459105489%_
                                  (lambda (_%rest105485%_ _%method105486%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105447%_
                                       _%method105486%_
                                       _%off105453%_
                                       _%klass105416%_
                                       '#f))
                                    (_%loop105450%_
                                     _%rest105485%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105453%_ '1))))))
                            (if (pair? _%rest105455105463%_)
                                (let ((_%hd105460105492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105455105463%_)))
                                      (_%tl105461105494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105455105463%_))))
                                  (let* ((_%method105497%_ _%hd105460105492%_)
                                         (_%rest105499%_ _%tl105461105494%_))
                                    (_%K105459105489%_
                                     _%rest105499%_
                                     _%method105497%_)))
                                (_%else105457105482%_)))))))
                   (_%K105435105569%_
                    (lambda (_%rest105504%_ _%method-spec105505%_)
                      (if (pair? _%method-spec105505%_)
                          (let _%loop-inner105509%_ ((_%methods-rest105512%_
                                                      _%method-spec105505%_))
                            (let* ((_%methods-rest105514105522%_
                                    _%methods-rest105512%_)
                                   (_%else105516105534%_
                                    (lambda ()
                                      ((lambda (_%klass105530%_
                                                _%obj-klass105531%_
                                                _%method-name105532%_)
                                         '#f)
                                       _%klass105416%_
                                       _%obj-klass105417%_
                                       _%method-spec105505%_)))
                                   (_%K105518105547%_
                                    (lambda (_%methods-rest105537%_
                                             _%method-name105538%_)
                                      (let ((_%$e105541%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105419%_
                                                _%method-name105538%_
                                                '#f))))
                                        (if _%$e105541%_
                                            ((lambda (_%method105544%_)
                                               (_%loop105422%_
                                                _%rest105504%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105427%_ '1))
                                                (cons _%method105544%_
                                                      _%methods105429%_)))
                                             _%$e105541%_)
                                            (_%loop-inner105509%_
                                             _%methods-rest105537%_))))))
                              (if (pair? _%methods-rest105514105522%_)
                                  (let ((_%hd105519105550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105514105522%_)))
                                        (_%tl105520105552%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105514105522%_))))
                                    (let* ((_%method-name105555%_
                                            _%hd105519105550%_)
                                           (_%methods-rest105557%_
                                            _%tl105520105552%_))
                                      (_%K105518105547%_
                                       _%methods-rest105557%_
                                       _%method-name105555%_)))
                                  (_%else105516105534%_))))
                          (let ((_%$e105559%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105419%_
                                    _%method-spec105505%_
                                    '#f))))
                            (if _%$e105559%_
                                ((lambda (_%method105562%_)
                                   (_%loop105422%_
                                    _%rest105504%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105427%_ '1))
                                    (cons _%method105562%_ _%methods105429%_)))
                                 _%$e105559%_)
                                ((lambda (_%klass105565%_
                                          _%obj-klass105566%_
                                          _%method-name105567%_)
                                   '#f)
                                 _%klass105416%_
                                 _%obj-klass105417%_
                                 _%method-spec105505%_)))))))
              (if (pair? _%rest105431105439%_)
                  (let ((_%hd105436105572%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105431105439%_)))
                        (_%tl105437105574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105431105439%_))))
                    (let* ((_%method-spec105577%_ _%hd105436105572%_)
                           (_%rest105579%_ _%tl105437105574%_))
                      (_%K105435105569%_
                       _%rest105579%_
                       _%method-spec105577%_)))
                  (_%else105433105501%_)))))))
    (define cast
      (lambda (_%descriptor105373%_ _%obj105375%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105379%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105373%_ '1 '#f '#f)))
               (_%klass-id105382%_
                (let () (declare (not safe)) (##type-id _%klass105379%_)))
               (_%obj-klass105385%_
                (let () (declare (not safe)) (class-of _%obj105375%_)))
               (_%obj-klass-id105388%_
                (let () (declare (not safe)) (##type-id _%obj-klass105385%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105382%_ _%obj-klass-id105388%_))
              _%obj105375%_
              (if (interface-subclass? _%obj-klass105385%_)
                  (cast _%descriptor105373%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj105375%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105397%_ ()
                        (if (let ((__tmp106157
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106157 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105397%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105382%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105388%_))
                    (let ((_%prototype105408%_
                           (let ((_%$e105401%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105401%_
                                 ((lambda (_%prototype105404%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105404%_)
                                  _%$e105401%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor105373%_
                                    _%klass105379%_
                                    _%obj-klass105385%_))))))
                      ((lambda (_%prototype105410%_ _%obj105411%_)
                         (let ((_%instance105413%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype105410%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance105413%_
                              _%obj105411%_
                              '1
                              '#f
                              'cast))
                           _%instance105413%_))
                       _%prototype105408%_
                       _%obj105375%_))))))))
    (define try-cast
      (lambda (_%descriptor105331%_ _%obj105333%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105337%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105331%_ '1 '#f '#f)))
               (_%klass-id105340%_
                (let () (declare (not safe)) (##type-id _%klass105337%_)))
               (_%obj-klass105343%_
                (let () (declare (not safe)) (class-of _%obj105333%_)))
               (_%obj-klass-id105346%_
                (let () (declare (not safe)) (##type-id _%obj-klass105343%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105340%_ _%obj-klass-id105346%_))
              _%obj105333%_
              (if (interface-subclass? _%obj-klass105343%_)
                  (try-cast
                   _%descriptor105331%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105333%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105355%_ ()
                        (if (let ((__tmp106158
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106158 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105355%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105340%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105346%_))
                    (let ((_%prototype105366%_
                           (let ((_%$e105359%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105359%_
                                 ((lambda (_%prototype105362%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105362%_)
                                  _%$e105359%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105331%_
                                    _%klass105337%_
                                    _%obj-klass105343%_))))))
                      ((lambda (_%prototype105368%_ _%obj105369%_)
                         (if _%prototype105368%_
                             (let ((_%instance105371%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype105368%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance105371%_
                                  _%obj105369%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance105371%_)
                             '#f))
                       _%prototype105366%_
                       _%obj105333%_))))))))
    (define satisfies?
      (lambda (_%descriptor105291%_ _%obj105293%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105297%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105291%_ '1 '#f '#f)))
               (_%klass-id105300%_
                (let () (declare (not safe)) (##type-id _%klass105297%_)))
               (_%obj-klass105303%_
                (let () (declare (not safe)) (class-of _%obj105293%_)))
               (_%obj-klass-id105306%_
                (let () (declare (not safe)) (##type-id _%obj-klass105303%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105300%_ _%obj-klass-id105306%_))
              _%obj105293%_
              (if (interface-subclass? _%obj-klass105303%_)
                  (satisfies?
                   _%descriptor105291%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105293%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105315%_ ()
                        (if (let ((__tmp106159
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106159 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105315%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105300%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105306%_))
                    (let ((_%prototype105326%_
                           (let ((_%$e105319%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105319%_
                                 ((lambda (_%prototype105322%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105322%_)
                                  _%$e105319%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105291%_
                                    _%klass105297%_
                                    _%obj-klass105303%_))))))
                      ((lambda (_%prototype105328%_ _%obj105329%_)
                         (if _%prototype105328%_ '#t '#f))
                       _%prototype105326%_
                       _%obj105293%_))))))))))
