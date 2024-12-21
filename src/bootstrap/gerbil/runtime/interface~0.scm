(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1734357960)
  (begin
    (define CastError::t
      (let ((__tmp106208 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp106208
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args106201%_
        (apply make-instance CastError::t _%$args106201%_)))
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
      (lambda (_%where106075%_ _%message106076%_ . _%irritants106077%_)
        (let ((__tmp106209
               (let ((__obj106204
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj106204
                    _%message106076%_
                    'where:
                    _%where106075%_
                    'irritants:
                    _%irritants106077%_))
                 __obj106204)))
          (declare (not safe))
          (raise __tmp106209))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp106211 (list)) (__tmp106210 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp106211
         '(__object)
         __tmp106210
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
      (let ((__tmp106213 (list))
            (__tmp106212
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp106213
         '(type methods)
         __tmp106212
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args106072%_
        (apply make-instance interface-descriptor::t _%$args106072%_)))
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
      (lambda (_%key106070%_)
        (let ((__tmp106215
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key106070%_))))
              (__tmp106214
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key106070%_)))))
          (declare (not safe))
          (##fxxor __tmp106215 __tmp106214))))
    (define __interface-test-key
      (lambda (_%a106067%_ _%b106068%_)
        (if (let ((__tmp106217
                   (let () (declare (not safe)) (##car _%a106067%_)))
                  (__tmp106216
                   (let () (declare (not safe)) (##car _%b106068%_))))
              (declare (not safe))
              (##eq? __tmp106217 __tmp106216))
            (let ((__tmp106219
                   (let () (declare (not safe)) (##cdr _%a106067%_)))
                  (__tmp106218
                   (let () (declare (not safe)) (##cdr _%b106068%_))))
              (declare (not safe))
              (##eq? __tmp106219 __tmp106218))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint106048%_ _%seed106050%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint106048%_
           __interface-hash-key
           __interface-test-key
           _%seed106050%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint106056%_ '#f) (_%seed106058%_ '0))
          (make-prototype-table__% _%size-hint106056%_ _%seed106058%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint106060%_)
        (let ((_%seed106062%_ '0))
          (make-prototype-table__% _%size-hint106060%_ _%seed106062%_))))
    (define make-prototype-table
      (lambda _g106221_
        (let ((_g106220_ (let () (declare (not safe)) (##length _g106221_))))
          (cond ((let () (declare (not safe)) (##fx= _g106220_ 0))
                 (apply make-prototype-table__0 _g106221_))
                ((let () (declare (not safe)) (##fx= _g106220_ 1))
                 (apply make-prototype-table__1 _g106221_))
                ((let () (declare (not safe)) (##fx= _g106220_ 2))
                 (apply make-prototype-table__% _g106221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g106221_))))))
    (define prototype-table-ref
      (lambda (_%tab106001%_ _%key106002%_ _%default106003%_)
        (let ((_%table106005%_
               (let () (declare (not safe)) (&raw-table-table _%tab106001%_)))
              (_%seed106006%_
               (let () (declare (not safe)) (&raw-table-seed _%tab106001%_))))
          (let* ((_%h106008%_
                  (fxxor (__interface-hash-key _%key106002%_) _%seed106006%_))
                 (_%size106011%_ (vector-length _%table106005%_))
                 (_%entries106014%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size106011%_ '2)))
                 (_%start106017%_
                  (let ((__tmp106222
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h106008%_ _%entries106014%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106222 '1))))
            (let _%loop106021%_ ((_%probe106024%_ _%start106017%_)
                                 (_%i106026%_ '1)
                                 (_%deleted106028%_ '#f))
              (let ((_%k106031%_ (vector-ref _%table106005%_ _%probe106024%_)))
                (if (eq? _%k106031%_ (macro-unused-obj))
                    _%default106003%_
                    (if (eq? _%k106031%_ (macro-deleted-obj))
                        (_%loop106021%_
                         (let ((_%next-probe106036%_
                                (fx+ _%start106017%_
                                     _%i106026%_
                                     (fx* _%i106026%_ _%i106026%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe106036%_ _%size106011%_))
                         (let () (declare (not safe)) (##fx+ _%i106026%_ '1))
                         (let ((_%$e106039%_ _%deleted106028%_))
                           (if _%$e106039%_ _%$e106039%_ _%probe106024%_)))
                        (if (__interface-test-key _%key106002%_ _%k106031%_)
                            (vector-ref
                             _%table106005%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe106024%_ '1)))
                            (_%loop106021%_
                             (let ((_%next-probe106044%_
                                    (fx+ _%start106017%_
                                         _%i106026%_
                                         (fx* _%i106026%_ _%i106026%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe106044%_
                                _%size106011%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i106026%_ '1))
                             _%deleted106028%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab105997%_ _%key105998%_ _%value105999%_)
        (if (let ((__tmp106225
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105997%_)))
                  (__tmp106223
                   (let ((__tmp106224
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105997%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106224 '4))))
              (declare (not safe))
              (##fx< __tmp106225 __tmp106223))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105997%_))
            '#!void)
        (__prototype-table-set! _%tab105997%_ _%key105998%_ _%value105999%_)))
    (define __prototype-table-set!
      (lambda (_%tab105948%_ _%key105949%_ _%value105950%_)
        (let ((_%table105953%_
               (let () (declare (not safe)) (&raw-table-table _%tab105948%_)))
              (_%seed105954%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105948%_))))
          (let* ((_%h105956%_
                  (fxxor (__interface-hash-key _%key105949%_) _%seed105954%_))
                 (_%size105959%_ (vector-length _%table105953%_))
                 (_%entries105962%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105959%_ '2)))
                 (_%start105965%_
                  (let ((__tmp106226
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105956%_ _%entries105962%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106226 '1))))
            (let _%loop105969%_ ((_%probe105972%_ _%start105965%_)
                                 (_%i105974%_ '1)
                                 (_%deleted105976%_ '#f))
              (let ((_%k105979%_ (vector-ref _%table105953%_ _%probe105972%_)))
                (if (eq? _%k105979%_ (macro-unused-obj))
                    (if _%deleted105976%_
                        (begin
                          (vector-set!
                           _%table105953%_
                           _%deleted105976%_
                           _%key105949%_)
                          (vector-set!
                           _%table105953%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105976%_ '1))
                           _%value105950%_)
                          ((lambda ()
                             (let ((__tmp106227
                                    (let ((__tmp106228
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105948%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106228 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105948%_
                                __tmp106227)))))
                        (begin
                          (vector-set!
                           _%table105953%_
                           _%probe105972%_
                           _%key105949%_)
                          (vector-set!
                           _%table105953%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105972%_ '1))
                           _%value105950%_)
                          ((lambda ()
                             (let ((__tmp106229
                                    (let ((__tmp106230
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105948%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106230 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105948%_
                                __tmp106229))
                             (let ((__tmp106231
                                    (let ((__tmp106232
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105948%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106232 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105948%_
                                __tmp106231))))))
                    (if (eq? _%k105979%_ (macro-deleted-obj))
                        (_%loop105969%_
                         (let ((_%next-probe105986%_
                                (fx+ _%start105965%_
                                     _%i105974%_
                                     (fx* _%i105974%_ _%i105974%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105986%_ _%size105959%_))
                         (let () (declare (not safe)) (##fx+ _%i105974%_ '1))
                         (let ((_%$e105989%_ _%deleted105976%_))
                           (if _%$e105989%_ _%$e105989%_ _%probe105972%_)))
                        (if (__interface-test-key _%key105949%_ _%k105979%_)
                            (let ()
                              (vector-set!
                               _%table105953%_
                               _%probe105972%_
                               _%key105949%_)
                              (vector-set!
                               _%table105953%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105972%_ '1))
                               _%value105950%_))
                            (_%loop105969%_
                             (let ((_%next-probe105994%_
                                    (fx+ _%start105965%_
                                         _%i105974%_
                                         (fx* _%i105974%_ _%i105974%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105994%_
                                _%size105959%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105974%_ '1))
                             _%deleted105976%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab105943%_
               _%key105944%_
               _%prototype-table-update!105945%_
               _%default105946%_)
        (if (let ((__tmp106235
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105943%_)))
                  (__tmp106233
                   (let ((__tmp106234
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105943%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106234 '4))))
              (declare (not safe))
              (##fx< __tmp106235 __tmp106233))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105943%_))
            '#!void)
        (__prototype-table-update!
         _%tab105943%_
         _%key105944%_
         _%prototype-table-update!105945%_
         _%default105946%_)))
    (define __prototype-table-update!
      (lambda (_%tab105893%_
               _%key105894%_
               _%prototype-table-update!105895%_
               _%default105896%_)
        (let ((_%table105899%_
               (let () (declare (not safe)) (&raw-table-table _%tab105893%_)))
              (_%seed105900%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105893%_))))
          (let* ((_%h105902%_
                  (fxxor (__interface-hash-key _%key105894%_) _%seed105900%_))
                 (_%size105905%_ (vector-length _%table105899%_))
                 (_%entries105908%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105905%_ '2)))
                 (_%start105911%_
                  (let ((__tmp106236
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105902%_ _%entries105908%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106236 '1))))
            (let _%loop105915%_ ((_%probe105918%_ _%start105911%_)
                                 (_%i105920%_ '1)
                                 (_%deleted105922%_ '#f))
              (let ((_%k105925%_ (vector-ref _%table105899%_ _%probe105918%_)))
                (if (eq? _%k105925%_ (macro-unused-obj))
                    (if _%deleted105922%_
                        (begin
                          (vector-set!
                           _%table105899%_
                           _%deleted105922%_
                           _%key105894%_)
                          (vector-set!
                           _%table105899%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105922%_ '1))
                           (_%prototype-table-update!105895%_
                            _%default105896%_))
                          ((lambda ()
                             (let ((__tmp106237
                                    (let ((__tmp106238
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105893%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106238 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105893%_
                                __tmp106237)))))
                        (begin
                          (vector-set!
                           _%table105899%_
                           _%probe105918%_
                           _%key105894%_)
                          (vector-set!
                           _%table105899%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105918%_ '1))
                           (_%prototype-table-update!105895%_
                            _%default105896%_))
                          ((lambda ()
                             (let ((__tmp106239
                                    (let ((__tmp106240
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105893%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106240 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105893%_
                                __tmp106239))
                             (let ((__tmp106241
                                    (let ((__tmp106242
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105893%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106242 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105893%_
                                __tmp106241))))))
                    (if (eq? _%k105925%_ (macro-deleted-obj))
                        (_%loop105915%_
                         (let ((_%next-probe105932%_
                                (fx+ _%start105911%_
                                     _%i105920%_
                                     (fx* _%i105920%_ _%i105920%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105932%_ _%size105905%_))
                         (let () (declare (not safe)) (##fx+ _%i105920%_ '1))
                         (let ((_%$e105935%_ _%deleted105922%_))
                           (if _%$e105935%_ _%$e105935%_ _%probe105918%_)))
                        (if (__interface-test-key _%key105894%_ _%k105925%_)
                            (let ()
                              (vector-set!
                               _%table105899%_
                               _%probe105918%_
                               _%key105894%_)
                              (vector-set!
                               _%table105899%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105918%_ '1))
                               (_%prototype-table-update!105895%_
                                (vector-ref
                                 _%table105899%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe105918%_ '1))))))
                            (_%loop105915%_
                             (let ((_%next-probe105940%_
                                    (fx+ _%start105911%_
                                         _%i105920%_
                                         (fx* _%i105920%_ _%i105920%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105940%_
                                _%size105905%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105920%_ '1))
                             _%deleted105922%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab105848%_ _%key105850%_)
        (let ((_%table105853%_
               (let () (declare (not safe)) (&raw-table-table _%tab105848%_)))
              (_%seed105855%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105848%_))))
          (let* ((_%h105858%_
                  (fxxor (__interface-hash-key _%key105850%_) _%seed105855%_))
                 (_%size105861%_ (vector-length _%table105853%_))
                 (_%entries105864%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105861%_ '2)))
                 (_%start105867%_
                  (let ((__tmp106243
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105858%_ _%entries105864%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106243 '1))))
            (let _%loop105871%_ ((_%probe105874%_ _%start105867%_)
                                 (_%i105876%_ '1))
              (let ((_%k105879%_ (vector-ref _%table105853%_ _%probe105874%_)))
                (if (eq? _%k105879%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k105879%_ (macro-deleted-obj))
                        (_%loop105871%_
                         (let ((_%next-probe105884%_
                                (fx+ _%start105867%_
                                     _%i105876%_
                                     (fx* _%i105876%_ _%i105876%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105884%_ _%size105861%_))
                         (let () (declare (not safe)) (##fx+ _%i105876%_ '1)))
                        (if (__interface-test-key _%key105850%_ _%k105879%_)
                            (let ()
                              (vector-set!
                               _%table105853%_
                               _%probe105874%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table105853%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105874%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp106244
                                        (let ((__tmp106245
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab105848%_))))
                                          (declare (not safe))
                                          (##fx- __tmp106245 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab105848%_
                                    __tmp106244)))))
                            (_%loop105871%_
                             (let ((_%next-probe105890%_
                                    (fx+ _%start105867%_
                                         _%i105876%_
                                         (fx* _%i105876%_ _%i105876%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105890%_
                                _%size105861%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105876%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass105840%_)
        (let ((_%super105841105843%_
               (let () (declare (not safe)) (##type-super _%klass105840%_))))
          (if _%super105841105843%_
              (let ((_%super105846%_ _%super105841105843%_))
                (eq? (let () (declare (not safe)) (##type-id _%super105846%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor105674%_ _%klass105675%_ _%obj-klass105676%_)
        (let ((_%method-table105678%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105676%_))))
          (let _%loop105681%_ ((_%rest105684%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105674%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105686%_ '0)
                               (_%methods105688%_ '()))
            (let* ((_%rest105690105698%_ _%rest105684%_)
                   (_%else105692105760%_
                    (lambda ()
                      (let ((_%prototype105706%_
                             (let ((__obj106206
                                    (let ((__tmp106246
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105686%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105675%_
                                       __tmp106246))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106206 '#f))
                               __obj106206)))
                        (let _%loop105709%_ ((_%rest105711%_ _%methods105688%_)
                                             (_%off105712%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105686%_ '1))))
                          (let* ((_%rest105714105722%_ _%rest105711%_)
                                 (_%else105716105741%_
                                  (lambda ()
                                    (let ((_%prototype-key105730%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105675%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105676%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105735%_ ()
                                          (if (let ((__tmp106247
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106247 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105735%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105730%_
                                       _%prototype105706%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105739%_)
                                         _%prototype105739%_)
                                       _%prototype105706%_))))
                                 (_%K105718105748%_
                                  (lambda (_%rest105744%_ _%method105745%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105706%_
                                       _%method105745%_
                                       _%off105712%_
                                       _%klass105675%_
                                       '#f))
                                    (_%loop105709%_
                                     _%rest105744%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105712%_ '1))))))
                            (if (pair? _%rest105714105722%_)
                                (let ((_%hd105719105751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105714105722%_)))
                                      (_%tl105720105753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105714105722%_))))
                                  (let* ((_%method105756%_ _%hd105719105751%_)
                                         (_%rest105758%_ _%tl105720105753%_))
                                    (_%K105718105748%_
                                     _%rest105758%_
                                     _%method105756%_)))
                                (_%else105716105741%_)))))))
                   (_%K105694105828%_
                    (lambda (_%rest105763%_ _%method-spec105764%_)
                      (if (pair? _%method-spec105764%_)
                          (let _%loop-inner105768%_ ((_%methods-rest105771%_
                                                      _%method-spec105764%_))
                            (let* ((_%methods-rest105773105781%_
                                    _%methods-rest105771%_)
                                   (_%else105775105793%_
                                    (lambda ()
                                      ((lambda (_%klass105789%_
                                                _%obj-klass105790%_
                                                _%method-name105791%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass105789%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass105789%_))
                                          'class:
                                          _%obj-klass105790%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass105790%_))
                                          'method:
                                          _%method-name105791%_)
                                         '#!void)
                                       _%klass105675%_
                                       _%obj-klass105676%_
                                       _%method-spec105764%_)))
                                   (_%K105777105806%_
                                    (lambda (_%methods-rest105796%_
                                             _%method-name105797%_)
                                      (let ((_%$e105800%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105678%_
                                                _%method-name105797%_
                                                '#f))))
                                        (if _%$e105800%_
                                            ((lambda (_%method105803%_)
                                               (_%loop105681%_
                                                _%rest105763%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105686%_ '1))
                                                (cons _%method105803%_
                                                      _%methods105688%_)))
                                             _%$e105800%_)
                                            (_%loop-inner105768%_
                                             _%methods-rest105796%_))))))
                              (if (pair? _%methods-rest105773105781%_)
                                  (let ((_%hd105778105809%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105773105781%_)))
                                        (_%tl105779105811%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105773105781%_))))
                                    (let* ((_%method-name105814%_
                                            _%hd105778105809%_)
                                           (_%methods-rest105816%_
                                            _%tl105779105811%_))
                                      (_%K105777105806%_
                                       _%methods-rest105816%_
                                       _%method-name105814%_)))
                                  (_%else105775105793%_))))
                          (let ((_%$e105818%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105678%_
                                    _%method-spec105764%_
                                    '#f))))
                            (if _%$e105818%_
                                ((lambda (_%method105821%_)
                                   (_%loop105681%_
                                    _%rest105763%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105686%_ '1))
                                    (cons _%method105821%_ _%methods105688%_)))
                                 _%$e105818%_)
                                ((lambda (_%klass105824%_
                                          _%obj-klass105825%_
                                          _%method-name105826%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass105824%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass105824%_))
                                    'class:
                                    _%obj-klass105825%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass105825%_))
                                    'method:
                                    _%method-name105826%_)
                                   '#!void)
                                 _%klass105675%_
                                 _%obj-klass105676%_
                                 _%method-spec105764%_)))))))
              (if (pair? _%rest105690105698%_)
                  (let ((_%hd105695105831%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105690105698%_)))
                        (_%tl105696105833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105690105698%_))))
                    (let* ((_%method-spec105836%_ _%hd105695105831%_)
                           (_%rest105838%_ _%tl105696105833%_))
                      (_%K105694105828%_
                       _%rest105838%_
                       _%method-spec105836%_)))
                  (_%else105692105760%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor105508%_ _%klass105509%_ _%obj-klass105510%_)
        (let ((_%method-table105512%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105510%_))))
          (let _%loop105515%_ ((_%rest105518%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105508%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105520%_ '0)
                               (_%methods105522%_ '()))
            (let* ((_%rest105524105532%_ _%rest105518%_)
                   (_%else105526105594%_
                    (lambda ()
                      (let ((_%prototype105540%_
                             (let ((__obj106207
                                    (let ((__tmp106248
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105520%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105509%_
                                       __tmp106248))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106207 '#f))
                               __obj106207)))
                        (let _%loop105543%_ ((_%rest105545%_ _%methods105522%_)
                                             (_%off105546%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105520%_ '1))))
                          (let* ((_%rest105548105556%_ _%rest105545%_)
                                 (_%else105550105575%_
                                  (lambda ()
                                    (let ((_%prototype-key105564%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105509%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105510%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105569%_ ()
                                          (if (let ((__tmp106249
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106249 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105569%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105564%_
                                       _%prototype105540%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105573%_)
                                         _%prototype105573%_)
                                       _%prototype105540%_))))
                                 (_%K105552105582%_
                                  (lambda (_%rest105578%_ _%method105579%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105540%_
                                       _%method105579%_
                                       _%off105546%_
                                       _%klass105509%_
                                       '#f))
                                    (_%loop105543%_
                                     _%rest105578%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105546%_ '1))))))
                            (if (pair? _%rest105548105556%_)
                                (let ((_%hd105553105585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105548105556%_)))
                                      (_%tl105554105587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105548105556%_))))
                                  (let* ((_%method105590%_ _%hd105553105585%_)
                                         (_%rest105592%_ _%tl105554105587%_))
                                    (_%K105552105582%_
                                     _%rest105592%_
                                     _%method105590%_)))
                                (_%else105550105575%_)))))))
                   (_%K105528105662%_
                    (lambda (_%rest105597%_ _%method-spec105598%_)
                      (if (pair? _%method-spec105598%_)
                          (let _%loop-inner105602%_ ((_%methods-rest105605%_
                                                      _%method-spec105598%_))
                            (let* ((_%methods-rest105607105615%_
                                    _%methods-rest105605%_)
                                   (_%else105609105627%_
                                    (lambda ()
                                      ((lambda (_%klass105623%_
                                                _%obj-klass105624%_
                                                _%method-name105625%_)
                                         '#f)
                                       _%klass105509%_
                                       _%obj-klass105510%_
                                       _%method-spec105598%_)))
                                   (_%K105611105640%_
                                    (lambda (_%methods-rest105630%_
                                             _%method-name105631%_)
                                      (let ((_%$e105634%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105512%_
                                                _%method-name105631%_
                                                '#f))))
                                        (if _%$e105634%_
                                            ((lambda (_%method105637%_)
                                               (_%loop105515%_
                                                _%rest105597%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105520%_ '1))
                                                (cons _%method105637%_
                                                      _%methods105522%_)))
                                             _%$e105634%_)
                                            (_%loop-inner105602%_
                                             _%methods-rest105630%_))))))
                              (if (pair? _%methods-rest105607105615%_)
                                  (let ((_%hd105612105643%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105607105615%_)))
                                        (_%tl105613105645%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105607105615%_))))
                                    (let* ((_%method-name105648%_
                                            _%hd105612105643%_)
                                           (_%methods-rest105650%_
                                            _%tl105613105645%_))
                                      (_%K105611105640%_
                                       _%methods-rest105650%_
                                       _%method-name105648%_)))
                                  (_%else105609105627%_))))
                          (let ((_%$e105652%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105512%_
                                    _%method-spec105598%_
                                    '#f))))
                            (if _%$e105652%_
                                ((lambda (_%method105655%_)
                                   (_%loop105515%_
                                    _%rest105597%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105520%_ '1))
                                    (cons _%method105655%_ _%methods105522%_)))
                                 _%$e105652%_)
                                ((lambda (_%klass105658%_
                                          _%obj-klass105659%_
                                          _%method-name105660%_)
                                   '#f)
                                 _%klass105509%_
                                 _%obj-klass105510%_
                                 _%method-spec105598%_)))))))
              (if (pair? _%rest105524105532%_)
                  (let ((_%hd105529105665%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105524105532%_)))
                        (_%tl105530105667%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105524105532%_))))
                    (let* ((_%method-spec105670%_ _%hd105529105665%_)
                           (_%rest105672%_ _%tl105530105667%_))
                      (_%K105528105662%_
                       _%rest105672%_
                       _%method-spec105670%_)))
                  (_%else105526105594%_)))))))
    (define cast
      (lambda (_%descriptor105466%_ _%obj105468%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105472%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105466%_ '1 '#f '#f)))
               (_%klass-id105475%_
                (let () (declare (not safe)) (##type-id _%klass105472%_)))
               (_%obj-klass105478%_
                (let () (declare (not safe)) (class-of _%obj105468%_)))
               (_%obj-klass-id105481%_
                (let () (declare (not safe)) (##type-id _%obj-klass105478%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105475%_ _%obj-klass-id105481%_))
              _%obj105468%_
              (if (interface-subclass? _%obj-klass105478%_)
                  (cast _%descriptor105466%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj105468%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105490%_ ()
                        (if (let ((__tmp106250
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106250 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105490%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105475%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105481%_))
                    (let ((_%prototype105501%_
                           (let ((_%$e105494%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105494%_
                                 ((lambda (_%prototype105497%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105497%_)
                                  _%$e105494%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor105466%_
                                    _%klass105472%_
                                    _%obj-klass105478%_))))))
                      ((lambda (_%prototype105503%_ _%obj105504%_)
                         (let ((_%instance105506%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype105503%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance105506%_
                              _%obj105504%_
                              '1
                              '#f
                              'cast))
                           _%instance105506%_))
                       _%prototype105501%_
                       _%obj105468%_))))))))
    (define try-cast
      (lambda (_%descriptor105424%_ _%obj105426%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105430%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105424%_ '1 '#f '#f)))
               (_%klass-id105433%_
                (let () (declare (not safe)) (##type-id _%klass105430%_)))
               (_%obj-klass105436%_
                (let () (declare (not safe)) (class-of _%obj105426%_)))
               (_%obj-klass-id105439%_
                (let () (declare (not safe)) (##type-id _%obj-klass105436%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105433%_ _%obj-klass-id105439%_))
              _%obj105426%_
              (if (interface-subclass? _%obj-klass105436%_)
                  (try-cast
                   _%descriptor105424%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105426%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105448%_ ()
                        (if (let ((__tmp106251
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106251 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105448%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105433%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105439%_))
                    (let ((_%prototype105459%_
                           (let ((_%$e105452%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105452%_
                                 ((lambda (_%prototype105455%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105455%_)
                                  _%$e105452%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105424%_
                                    _%klass105430%_
                                    _%obj-klass105436%_))))))
                      ((lambda (_%prototype105461%_ _%obj105462%_)
                         (if _%prototype105461%_
                             (let ((_%instance105464%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype105461%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance105464%_
                                  _%obj105462%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance105464%_)
                             '#f))
                       _%prototype105459%_
                       _%obj105426%_))))))))
    (define satisfies?
      (lambda (_%descriptor105384%_ _%obj105386%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105390%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105384%_ '1 '#f '#f)))
               (_%klass-id105393%_
                (let () (declare (not safe)) (##type-id _%klass105390%_)))
               (_%obj-klass105396%_
                (let () (declare (not safe)) (class-of _%obj105386%_)))
               (_%obj-klass-id105399%_
                (let () (declare (not safe)) (##type-id _%obj-klass105396%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105393%_ _%obj-klass-id105399%_))
              _%obj105386%_
              (if (interface-subclass? _%obj-klass105396%_)
                  (satisfies?
                   _%descriptor105384%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105386%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105408%_ ()
                        (if (let ((__tmp106252
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106252 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105408%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105393%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105399%_))
                    (let ((_%prototype105419%_
                           (let ((_%$e105412%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105412%_
                                 ((lambda (_%prototype105415%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105415%_)
                                  _%$e105412%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105384%_
                                    _%klass105390%_
                                    _%obj-klass105396%_))))))
                      ((lambda (_%prototype105421%_ _%obj105422%_)
                         (if _%prototype105421%_ '#t '#f))
                       _%prototype105419%_
                       _%obj105386%_))))))))))
