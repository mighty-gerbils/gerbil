(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1742223872)
  (begin
    (define CastError::t
      (let ((__tmp106142 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp106142
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args106135%_
        (apply make-instance CastError::t _%$args106135%_)))
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
      (lambda (_%where106009%_ _%message106010%_ . _%irritants106011%_)
        (let ((__tmp106143
               (let ((__obj106138
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj106138
                    _%message106010%_
                    'where:
                    _%where106009%_
                    'irritants:
                    _%irritants106011%_))
                 __obj106138)))
          (declare (not safe))
          (raise __tmp106143))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp106145 (list)) (__tmp106144 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp106145
         '(__object)
         __tmp106144
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
      (let ((__tmp106147 (list))
            (__tmp106146
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp106147
         '(type methods)
         __tmp106146
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args106006%_
        (apply make-instance interface-descriptor::t _%$args106006%_)))
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
      (lambda (_%key106004%_)
        (let ((__tmp106150
               (let ((__tmp106151
                      (let () (declare (not safe)) (##car _%key106004%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp106151)))
              (__tmp106148
               (let ((__tmp106149
                      (let () (declare (not safe)) (##cdr _%key106004%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp106149))))
          (declare (not safe))
          (##fxxor __tmp106150 __tmp106148))))
    (define __interface-test-key
      (lambda (_%a106001%_ _%b106002%_)
        (if (let ((__tmp106153
                   (let () (declare (not safe)) (##car _%a106001%_)))
                  (__tmp106152
                   (let () (declare (not safe)) (##car _%b106002%_))))
              (declare (not safe))
              (##eq? __tmp106153 __tmp106152))
            (let ((__tmp106155
                   (let () (declare (not safe)) (##cdr _%a106001%_)))
                  (__tmp106154
                   (let () (declare (not safe)) (##cdr _%b106002%_))))
              (declare (not safe))
              (##eq? __tmp106155 __tmp106154))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint105982%_ _%seed105984%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint105982%_
           __interface-hash-key
           __interface-test-key
           _%seed105984%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint105990%_ '#f) (_%seed105992%_ '0))
          (make-prototype-table__% _%size-hint105990%_ _%seed105992%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint105994%_)
        (let ((_%seed105996%_ '0))
          (make-prototype-table__% _%size-hint105994%_ _%seed105996%_))))
    (define make-prototype-table
      (lambda _g106157_
        (let ((_g106156_ (let () (declare (not safe)) (##length _g106157_))))
          (cond ((let () (declare (not safe)) (##fx= _g106156_ 0))
                 (apply make-prototype-table__0 _g106157_))
                ((let () (declare (not safe)) (##fx= _g106156_ 1))
                 (apply make-prototype-table__1 _g106157_))
                ((let () (declare (not safe)) (##fx= _g106156_ 2))
                 (apply make-prototype-table__% _g106157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g106157_))))))
    (define prototype-table-ref
      (lambda (_%tab105935%_ _%key105936%_ _%default105937%_)
        (let ((_%table105939%_
               (let () (declare (not safe)) (&raw-table-table _%tab105935%_)))
              (_%seed105940%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105935%_))))
          (let* ((_%h105942%_
                  (fxxor (__interface-hash-key _%key105936%_) _%seed105940%_))
                 (_%size105945%_ (vector-length _%table105939%_))
                 (_%entries105948%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105945%_ '2)))
                 (_%start105951%_
                  (let ((__tmp106158
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105942%_ _%entries105948%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106158 '1))))
            (let _%loop105955%_ ((_%probe105958%_ _%start105951%_)
                                 (_%i105960%_ '1)
                                 (_%deleted105962%_ '#f))
              (let ((_%k105965%_ (vector-ref _%table105939%_ _%probe105958%_)))
                (if (eq? _%k105965%_ (macro-unused-obj))
                    _%default105937%_
                    (if (eq? _%k105965%_ (macro-deleted-obj))
                        (_%loop105955%_
                         (let ((_%next-probe105970%_
                                (fx+ _%start105951%_
                                     _%i105960%_
                                     (fx* _%i105960%_ _%i105960%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105970%_ _%size105945%_))
                         (let () (declare (not safe)) (##fx+ _%i105960%_ '1))
                         (let ((_%$e105973%_ _%deleted105962%_))
                           (if _%$e105973%_ _%$e105973%_ _%probe105958%_)))
                        (if (__interface-test-key _%key105936%_ _%k105965%_)
                            (vector-ref
                             _%table105939%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105958%_ '1)))
                            (_%loop105955%_
                             (let ((_%next-probe105978%_
                                    (fx+ _%start105951%_
                                         _%i105960%_
                                         (fx* _%i105960%_ _%i105960%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105978%_
                                _%size105945%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105960%_ '1))
                             _%deleted105962%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab105931%_ _%key105932%_ _%value105933%_)
        (if (let ((__tmp106161
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105931%_)))
                  (__tmp106159
                   (let ((__tmp106160
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105931%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106160 '4))))
              (declare (not safe))
              (##fx< __tmp106161 __tmp106159))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105931%_))
            '#!void)
        (__prototype-table-set! _%tab105931%_ _%key105932%_ _%value105933%_)))
    (define __prototype-table-set!
      (lambda (_%tab105882%_ _%key105883%_ _%value105884%_)
        (let ((_%table105887%_
               (let () (declare (not safe)) (&raw-table-table _%tab105882%_)))
              (_%seed105888%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105882%_))))
          (let* ((_%h105890%_
                  (fxxor (__interface-hash-key _%key105883%_) _%seed105888%_))
                 (_%size105893%_ (vector-length _%table105887%_))
                 (_%entries105896%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105893%_ '2)))
                 (_%start105899%_
                  (let ((__tmp106162
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105890%_ _%entries105896%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106162 '1))))
            (let _%loop105903%_ ((_%probe105906%_ _%start105899%_)
                                 (_%i105908%_ '1)
                                 (_%deleted105910%_ '#f))
              (let ((_%k105913%_ (vector-ref _%table105887%_ _%probe105906%_)))
                (if (eq? _%k105913%_ (macro-unused-obj))
                    (if _%deleted105910%_
                        (begin
                          (vector-set!
                           _%table105887%_
                           _%deleted105910%_
                           _%key105883%_)
                          (vector-set!
                           _%table105887%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105910%_ '1))
                           _%value105884%_)
                          ((lambda ()
                             (let ((__tmp106163
                                    (let ((__tmp106164
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105882%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106164 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105882%_
                                __tmp106163)))))
                        (begin
                          (vector-set!
                           _%table105887%_
                           _%probe105906%_
                           _%key105883%_)
                          (vector-set!
                           _%table105887%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105906%_ '1))
                           _%value105884%_)
                          ((lambda ()
                             (let ((__tmp106165
                                    (let ((__tmp106166
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105882%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106166 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105882%_
                                __tmp106165))
                             (let ((__tmp106167
                                    (let ((__tmp106168
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105882%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106168 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105882%_
                                __tmp106167))))))
                    (if (eq? _%k105913%_ (macro-deleted-obj))
                        (_%loop105903%_
                         (let ((_%next-probe105920%_
                                (fx+ _%start105899%_
                                     _%i105908%_
                                     (fx* _%i105908%_ _%i105908%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105920%_ _%size105893%_))
                         (let () (declare (not safe)) (##fx+ _%i105908%_ '1))
                         (let ((_%$e105923%_ _%deleted105910%_))
                           (if _%$e105923%_ _%$e105923%_ _%probe105906%_)))
                        (if (__interface-test-key _%key105883%_ _%k105913%_)
                            (let ()
                              (vector-set!
                               _%table105887%_
                               _%probe105906%_
                               _%key105883%_)
                              (vector-set!
                               _%table105887%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105906%_ '1))
                               _%value105884%_))
                            (_%loop105903%_
                             (let ((_%next-probe105928%_
                                    (fx+ _%start105899%_
                                         _%i105908%_
                                         (fx* _%i105908%_ _%i105908%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105928%_
                                _%size105893%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105908%_ '1))
                             _%deleted105910%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab105877%_
               _%key105878%_
               _%prototype-table-update!105879%_
               _%default105880%_)
        (if (let ((__tmp106171
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105877%_)))
                  (__tmp106169
                   (let ((__tmp106170
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105877%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106170 '4))))
              (declare (not safe))
              (##fx< __tmp106171 __tmp106169))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105877%_))
            '#!void)
        (__prototype-table-update!
         _%tab105877%_
         _%key105878%_
         _%prototype-table-update!105879%_
         _%default105880%_)))
    (define __prototype-table-update!
      (lambda (_%tab105827%_
               _%key105828%_
               _%prototype-table-update!105829%_
               _%default105830%_)
        (let ((_%table105833%_
               (let () (declare (not safe)) (&raw-table-table _%tab105827%_)))
              (_%seed105834%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105827%_))))
          (let* ((_%h105836%_
                  (fxxor (__interface-hash-key _%key105828%_) _%seed105834%_))
                 (_%size105839%_ (vector-length _%table105833%_))
                 (_%entries105842%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105839%_ '2)))
                 (_%start105845%_
                  (let ((__tmp106172
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105836%_ _%entries105842%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106172 '1))))
            (let _%loop105849%_ ((_%probe105852%_ _%start105845%_)
                                 (_%i105854%_ '1)
                                 (_%deleted105856%_ '#f))
              (let ((_%k105859%_ (vector-ref _%table105833%_ _%probe105852%_)))
                (if (eq? _%k105859%_ (macro-unused-obj))
                    (if _%deleted105856%_
                        (begin
                          (vector-set!
                           _%table105833%_
                           _%deleted105856%_
                           _%key105828%_)
                          (vector-set!
                           _%table105833%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105856%_ '1))
                           (_%prototype-table-update!105829%_
                            _%default105830%_))
                          ((lambda ()
                             (let ((__tmp106173
                                    (let ((__tmp106174
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105827%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106174 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105827%_
                                __tmp106173)))))
                        (begin
                          (vector-set!
                           _%table105833%_
                           _%probe105852%_
                           _%key105828%_)
                          (vector-set!
                           _%table105833%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105852%_ '1))
                           (_%prototype-table-update!105829%_
                            _%default105830%_))
                          ((lambda ()
                             (let ((__tmp106175
                                    (let ((__tmp106176
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105827%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106176 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105827%_
                                __tmp106175))
                             (let ((__tmp106177
                                    (let ((__tmp106178
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105827%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106178 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105827%_
                                __tmp106177))))))
                    (if (eq? _%k105859%_ (macro-deleted-obj))
                        (_%loop105849%_
                         (let ((_%next-probe105866%_
                                (fx+ _%start105845%_
                                     _%i105854%_
                                     (fx* _%i105854%_ _%i105854%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105866%_ _%size105839%_))
                         (let () (declare (not safe)) (##fx+ _%i105854%_ '1))
                         (let ((_%$e105869%_ _%deleted105856%_))
                           (if _%$e105869%_ _%$e105869%_ _%probe105852%_)))
                        (if (__interface-test-key _%key105828%_ _%k105859%_)
                            (let ()
                              (vector-set!
                               _%table105833%_
                               _%probe105852%_
                               _%key105828%_)
                              (vector-set!
                               _%table105833%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105852%_ '1))
                               (_%prototype-table-update!105829%_
                                (vector-ref
                                 _%table105833%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe105852%_ '1))))))
                            (_%loop105849%_
                             (let ((_%next-probe105874%_
                                    (fx+ _%start105845%_
                                         _%i105854%_
                                         (fx* _%i105854%_ _%i105854%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105874%_
                                _%size105839%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105854%_ '1))
                             _%deleted105856%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab105782%_ _%key105784%_)
        (let ((_%table105787%_
               (let () (declare (not safe)) (&raw-table-table _%tab105782%_)))
              (_%seed105789%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105782%_))))
          (let* ((_%h105792%_
                  (fxxor (__interface-hash-key _%key105784%_) _%seed105789%_))
                 (_%size105795%_ (vector-length _%table105787%_))
                 (_%entries105798%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105795%_ '2)))
                 (_%start105801%_
                  (let ((__tmp106179
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105792%_ _%entries105798%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106179 '1))))
            (let _%loop105805%_ ((_%probe105808%_ _%start105801%_)
                                 (_%i105810%_ '1))
              (let ((_%k105813%_ (vector-ref _%table105787%_ _%probe105808%_)))
                (if (eq? _%k105813%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k105813%_ (macro-deleted-obj))
                        (_%loop105805%_
                         (let ((_%next-probe105818%_
                                (fx+ _%start105801%_
                                     _%i105810%_
                                     (fx* _%i105810%_ _%i105810%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105818%_ _%size105795%_))
                         (let () (declare (not safe)) (##fx+ _%i105810%_ '1)))
                        (if (__interface-test-key _%key105784%_ _%k105813%_)
                            (let ()
                              (vector-set!
                               _%table105787%_
                               _%probe105808%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table105787%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105808%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp106180
                                        (let ((__tmp106181
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab105782%_))))
                                          (declare (not safe))
                                          (##fx- __tmp106181 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab105782%_
                                    __tmp106180)))))
                            (_%loop105805%_
                             (let ((_%next-probe105824%_
                                    (fx+ _%start105801%_
                                         _%i105810%_
                                         (fx* _%i105810%_ _%i105810%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105824%_
                                _%size105795%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105810%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass105774%_)
        (let ((_%super105775105777%_
               (let () (declare (not safe)) (##type-super _%klass105774%_))))
          (if _%super105775105777%_
              (let ((_%super105780%_ _%super105775105777%_))
                (eq? (let () (declare (not safe)) (##type-id _%super105780%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor105608%_ _%klass105609%_ _%obj-klass105610%_)
        (let ((_%method-table105612%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105610%_))))
          (let _%loop105615%_ ((_%rest105618%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105608%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105620%_ '0)
                               (_%methods105622%_ '()))
            (let* ((_%rest105624105632%_ _%rest105618%_)
                   (_%else105626105694%_
                    (lambda ()
                      (let ((_%prototype105640%_
                             (let ((__obj106140
                                    (let ((__tmp106182
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105620%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105609%_
                                       __tmp106182))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106140 '#f))
                               __obj106140)))
                        (let _%loop105643%_ ((_%rest105645%_ _%methods105622%_)
                                             (_%off105646%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105620%_ '1))))
                          (let* ((_%rest105648105656%_ _%rest105645%_)
                                 (_%else105650105675%_
                                  (lambda ()
                                    (let ((_%prototype-key105664%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105609%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105610%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105669%_ ()
                                          (if (let ((__tmp106183
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106183 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105669%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105664%_
                                       _%prototype105640%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105673%_)
                                         _%prototype105673%_)
                                       _%prototype105640%_))))
                                 (_%K105652105682%_
                                  (lambda (_%rest105678%_ _%method105679%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105640%_
                                       _%method105679%_
                                       _%off105646%_
                                       _%klass105609%_
                                       '#f))
                                    (_%loop105643%_
                                     _%rest105678%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105646%_ '1))))))
                            (if (pair? _%rest105648105656%_)
                                (let ((_%hd105653105685%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105648105656%_)))
                                      (_%tl105654105687%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105648105656%_))))
                                  (let* ((_%method105690%_ _%hd105653105685%_)
                                         (_%rest105692%_ _%tl105654105687%_))
                                    (_%K105652105682%_
                                     _%rest105692%_
                                     _%method105690%_)))
                                (_%else105650105675%_)))))))
                   (_%K105628105762%_
                    (lambda (_%rest105697%_ _%method-spec105698%_)
                      (if (pair? _%method-spec105698%_)
                          (let _%loop-inner105702%_ ((_%methods-rest105705%_
                                                      _%method-spec105698%_))
                            (let* ((_%methods-rest105707105715%_
                                    _%methods-rest105705%_)
                                   (_%else105709105727%_
                                    (lambda ()
                                      ((lambda (_%klass105723%_
                                                _%obj-klass105724%_
                                                _%method-name105725%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass105723%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass105723%_))
                                          'class:
                                          _%obj-klass105724%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass105724%_))
                                          'method:
                                          _%method-name105725%_)
                                         '#!void)
                                       _%klass105609%_
                                       _%obj-klass105610%_
                                       _%method-spec105698%_)))
                                   (_%K105711105740%_
                                    (lambda (_%methods-rest105730%_
                                             _%method-name105731%_)
                                      (let ((_%$e105734%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105612%_
                                                _%method-name105731%_
                                                '#f))))
                                        (if _%$e105734%_
                                            ((lambda (_%method105737%_)
                                               (_%loop105615%_
                                                _%rest105697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105620%_ '1))
                                                (cons _%method105737%_
                                                      _%methods105622%_)))
                                             _%$e105734%_)
                                            (_%loop-inner105702%_
                                             _%methods-rest105730%_))))))
                              (if (pair? _%methods-rest105707105715%_)
                                  (let ((_%hd105712105743%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105707105715%_)))
                                        (_%tl105713105745%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105707105715%_))))
                                    (let* ((_%method-name105748%_
                                            _%hd105712105743%_)
                                           (_%methods-rest105750%_
                                            _%tl105713105745%_))
                                      (_%K105711105740%_
                                       _%methods-rest105750%_
                                       _%method-name105748%_)))
                                  (_%else105709105727%_))))
                          (let ((_%$e105752%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105612%_
                                    _%method-spec105698%_
                                    '#f))))
                            (if _%$e105752%_
                                ((lambda (_%method105755%_)
                                   (_%loop105615%_
                                    _%rest105697%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105620%_ '1))
                                    (cons _%method105755%_ _%methods105622%_)))
                                 _%$e105752%_)
                                ((lambda (_%klass105758%_
                                          _%obj-klass105759%_
                                          _%method-name105760%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass105758%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass105758%_))
                                    'class:
                                    _%obj-klass105759%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass105759%_))
                                    'method:
                                    _%method-name105760%_)
                                   '#!void)
                                 _%klass105609%_
                                 _%obj-klass105610%_
                                 _%method-spec105698%_)))))))
              (if (pair? _%rest105624105632%_)
                  (let ((_%hd105629105765%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105624105632%_)))
                        (_%tl105630105767%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105624105632%_))))
                    (let* ((_%method-spec105770%_ _%hd105629105765%_)
                           (_%rest105772%_ _%tl105630105767%_))
                      (_%K105628105762%_
                       _%rest105772%_
                       _%method-spec105770%_)))
                  (_%else105626105694%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor105442%_ _%klass105443%_ _%obj-klass105444%_)
        (let ((_%method-table105446%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105444%_))))
          (let _%loop105449%_ ((_%rest105452%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105442%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105454%_ '0)
                               (_%methods105456%_ '()))
            (let* ((_%rest105458105466%_ _%rest105452%_)
                   (_%else105460105528%_
                    (lambda ()
                      (let ((_%prototype105474%_
                             (let ((__obj106141
                                    (let ((__tmp106184
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105454%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105443%_
                                       __tmp106184))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106141 '#f))
                               __obj106141)))
                        (let _%loop105477%_ ((_%rest105479%_ _%methods105456%_)
                                             (_%off105480%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105454%_ '1))))
                          (let* ((_%rest105482105490%_ _%rest105479%_)
                                 (_%else105484105509%_
                                  (lambda ()
                                    (let ((_%prototype-key105498%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105443%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105444%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105503%_ ()
                                          (if (let ((__tmp106185
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106185 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105503%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105498%_
                                       _%prototype105474%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105507%_)
                                         _%prototype105507%_)
                                       _%prototype105474%_))))
                                 (_%K105486105516%_
                                  (lambda (_%rest105512%_ _%method105513%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105474%_
                                       _%method105513%_
                                       _%off105480%_
                                       _%klass105443%_
                                       '#f))
                                    (_%loop105477%_
                                     _%rest105512%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105480%_ '1))))))
                            (if (pair? _%rest105482105490%_)
                                (let ((_%hd105487105519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105482105490%_)))
                                      (_%tl105488105521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105482105490%_))))
                                  (let* ((_%method105524%_ _%hd105487105519%_)
                                         (_%rest105526%_ _%tl105488105521%_))
                                    (_%K105486105516%_
                                     _%rest105526%_
                                     _%method105524%_)))
                                (_%else105484105509%_)))))))
                   (_%K105462105596%_
                    (lambda (_%rest105531%_ _%method-spec105532%_)
                      (if (pair? _%method-spec105532%_)
                          (let _%loop-inner105536%_ ((_%methods-rest105539%_
                                                      _%method-spec105532%_))
                            (let* ((_%methods-rest105541105549%_
                                    _%methods-rest105539%_)
                                   (_%else105543105561%_
                                    (lambda ()
                                      ((lambda (_%klass105557%_
                                                _%obj-klass105558%_
                                                _%method-name105559%_)
                                         '#f)
                                       _%klass105443%_
                                       _%obj-klass105444%_
                                       _%method-spec105532%_)))
                                   (_%K105545105574%_
                                    (lambda (_%methods-rest105564%_
                                             _%method-name105565%_)
                                      (let ((_%$e105568%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105446%_
                                                _%method-name105565%_
                                                '#f))))
                                        (if _%$e105568%_
                                            ((lambda (_%method105571%_)
                                               (_%loop105449%_
                                                _%rest105531%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105454%_ '1))
                                                (cons _%method105571%_
                                                      _%methods105456%_)))
                                             _%$e105568%_)
                                            (_%loop-inner105536%_
                                             _%methods-rest105564%_))))))
                              (if (pair? _%methods-rest105541105549%_)
                                  (let ((_%hd105546105577%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105541105549%_)))
                                        (_%tl105547105579%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105541105549%_))))
                                    (let* ((_%method-name105582%_
                                            _%hd105546105577%_)
                                           (_%methods-rest105584%_
                                            _%tl105547105579%_))
                                      (_%K105545105574%_
                                       _%methods-rest105584%_
                                       _%method-name105582%_)))
                                  (_%else105543105561%_))))
                          (let ((_%$e105586%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105446%_
                                    _%method-spec105532%_
                                    '#f))))
                            (if _%$e105586%_
                                ((lambda (_%method105589%_)
                                   (_%loop105449%_
                                    _%rest105531%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105454%_ '1))
                                    (cons _%method105589%_ _%methods105456%_)))
                                 _%$e105586%_)
                                ((lambda (_%klass105592%_
                                          _%obj-klass105593%_
                                          _%method-name105594%_)
                                   '#f)
                                 _%klass105443%_
                                 _%obj-klass105444%_
                                 _%method-spec105532%_)))))))
              (if (pair? _%rest105458105466%_)
                  (let ((_%hd105463105599%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105458105466%_)))
                        (_%tl105464105601%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105458105466%_))))
                    (let* ((_%method-spec105604%_ _%hd105463105599%_)
                           (_%rest105606%_ _%tl105464105601%_))
                      (_%K105462105596%_
                       _%rest105606%_
                       _%method-spec105604%_)))
                  (_%else105460105528%_)))))))
    (define cast
      (lambda (_%descriptor105400%_ _%obj105402%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105406%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105400%_ '1 '#f '#f)))
               (_%klass-id105409%_
                (let () (declare (not safe)) (##type-id _%klass105406%_)))
               (_%obj-klass105412%_
                (let () (declare (not safe)) (class-of _%obj105402%_)))
               (_%obj-klass-id105415%_
                (let () (declare (not safe)) (##type-id _%obj-klass105412%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105409%_ _%obj-klass-id105415%_))
              _%obj105402%_
              (if (interface-subclass? _%obj-klass105412%_)
                  (cast _%descriptor105400%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj105402%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105424%_ ()
                        (if (let ((__tmp106186
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106186 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105424%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105409%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105415%_))
                    (let ((_%prototype105435%_
                           (let ((_%$e105428%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105428%_
                                 ((lambda (_%prototype105431%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105431%_)
                                  _%$e105428%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor105400%_
                                    _%klass105406%_
                                    _%obj-klass105412%_))))))
                      ((lambda (_%prototype105437%_ _%obj105438%_)
                         (let ((_%instance105440%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype105437%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance105440%_
                              _%obj105438%_
                              '1
                              '#f
                              'cast))
                           _%instance105440%_))
                       _%prototype105435%_
                       _%obj105402%_))))))))
    (define try-cast
      (lambda (_%descriptor105358%_ _%obj105360%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105364%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105358%_ '1 '#f '#f)))
               (_%klass-id105367%_
                (let () (declare (not safe)) (##type-id _%klass105364%_)))
               (_%obj-klass105370%_
                (let () (declare (not safe)) (class-of _%obj105360%_)))
               (_%obj-klass-id105373%_
                (let () (declare (not safe)) (##type-id _%obj-klass105370%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105367%_ _%obj-klass-id105373%_))
              _%obj105360%_
              (if (interface-subclass? _%obj-klass105370%_)
                  (try-cast
                   _%descriptor105358%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105360%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105382%_ ()
                        (if (let ((__tmp106187
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106187 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105382%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105367%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105373%_))
                    (let ((_%prototype105393%_
                           (let ((_%$e105386%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105386%_
                                 ((lambda (_%prototype105389%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105389%_)
                                  _%$e105386%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105358%_
                                    _%klass105364%_
                                    _%obj-klass105370%_))))))
                      ((lambda (_%prototype105395%_ _%obj105396%_)
                         (if _%prototype105395%_
                             (let ((_%instance105398%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype105395%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance105398%_
                                  _%obj105396%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance105398%_)
                             '#f))
                       _%prototype105393%_
                       _%obj105360%_))))))))
    (define satisfies?
      (lambda (_%descriptor105318%_ _%obj105320%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105324%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105318%_ '1 '#f '#f)))
               (_%klass-id105327%_
                (let () (declare (not safe)) (##type-id _%klass105324%_)))
               (_%obj-klass105330%_
                (let () (declare (not safe)) (class-of _%obj105320%_)))
               (_%obj-klass-id105333%_
                (let () (declare (not safe)) (##type-id _%obj-klass105330%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105327%_ _%obj-klass-id105333%_))
              _%obj105320%_
              (if (interface-subclass? _%obj-klass105330%_)
                  (satisfies?
                   _%descriptor105318%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105320%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105342%_ ()
                        (if (let ((__tmp106188
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106188 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105342%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105327%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105333%_))
                    (let ((_%prototype105353%_
                           (let ((_%$e105346%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105346%_
                                 ((lambda (_%prototype105349%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105349%_)
                                  _%$e105346%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105318%_
                                    _%klass105324%_
                                    _%obj-klass105330%_))))))
                      ((lambda (_%prototype105355%_ _%obj105356%_)
                         (if _%prototype105355%_ '#t '#f))
                       _%prototype105353%_
                       _%obj105320%_))))))))))
