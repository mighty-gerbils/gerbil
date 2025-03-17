(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1742226230)
  (begin
    (define CastError::t
      (let ((__tmp106161 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp106161
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args106154%_
        (apply make-instance CastError::t _%$args106154%_)))
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
      (lambda (_%where106028%_ _%message106029%_ . _%irritants106030%_)
        (let ((__tmp106162
               (let ((__obj106157
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj106157
                    _%message106029%_
                    'where:
                    _%where106028%_
                    'irritants:
                    _%irritants106030%_))
                 __obj106157)))
          (declare (not safe))
          (raise __tmp106162))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp106164 (list)) (__tmp106163 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp106164
         '(__object)
         __tmp106163
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
      (let ((__tmp106166 (list))
            (__tmp106165
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp106166
         '(type methods)
         __tmp106165
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args106025%_
        (apply make-instance interface-descriptor::t _%$args106025%_)))
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
      (lambda (_%key106023%_)
        (let ((__tmp106169
               (let ((__tmp106170
                      (let () (declare (not safe)) (##car _%key106023%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp106170)))
              (__tmp106167
               (let ((__tmp106168
                      (let () (declare (not safe)) (##cdr _%key106023%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp106168))))
          (declare (not safe))
          (##fxxor __tmp106169 __tmp106167))))
    (define __interface-test-key
      (lambda (_%a106020%_ _%b106021%_)
        (if (let ((__tmp106172
                   (let () (declare (not safe)) (##car _%a106020%_)))
                  (__tmp106171
                   (let () (declare (not safe)) (##car _%b106021%_))))
              (declare (not safe))
              (##eq? __tmp106172 __tmp106171))
            (let ((__tmp106174
                   (let () (declare (not safe)) (##cdr _%a106020%_)))
                  (__tmp106173
                   (let () (declare (not safe)) (##cdr _%b106021%_))))
              (declare (not safe))
              (##eq? __tmp106174 __tmp106173))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint106001%_ _%seed106003%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint106001%_
           __interface-hash-key
           __interface-test-key
           _%seed106003%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint106009%_ '#f) (_%seed106011%_ '0))
          (make-prototype-table__% _%size-hint106009%_ _%seed106011%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint106013%_)
        (let ((_%seed106015%_ '0))
          (make-prototype-table__% _%size-hint106013%_ _%seed106015%_))))
    (define make-prototype-table
      (lambda _g106176_
        (let ((_g106175_ (let () (declare (not safe)) (##length _g106176_))))
          (cond ((let () (declare (not safe)) (##fx= _g106175_ 0))
                 (apply make-prototype-table__0 _g106176_))
                ((let () (declare (not safe)) (##fx= _g106175_ 1))
                 (apply make-prototype-table__1 _g106176_))
                ((let () (declare (not safe)) (##fx= _g106175_ 2))
                 (apply make-prototype-table__% _g106176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g106176_))))))
    (define prototype-table-ref
      (lambda (_%tab105954%_ _%key105955%_ _%default105956%_)
        (let ((_%table105958%_
               (let () (declare (not safe)) (&raw-table-table _%tab105954%_)))
              (_%seed105959%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105954%_))))
          (let* ((_%h105961%_
                  (fxxor (__interface-hash-key _%key105955%_) _%seed105959%_))
                 (_%size105964%_ (vector-length _%table105958%_))
                 (_%entries105967%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105964%_ '2)))
                 (_%start105970%_
                  (let ((__tmp106177
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105961%_ _%entries105967%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106177 '1))))
            (let _%loop105974%_ ((_%probe105977%_ _%start105970%_)
                                 (_%i105979%_ '1)
                                 (_%deleted105981%_ '#f))
              (let ((_%k105984%_ (vector-ref _%table105958%_ _%probe105977%_)))
                (if (eq? _%k105984%_ (macro-unused-obj))
                    _%default105956%_
                    (if (eq? _%k105984%_ (macro-deleted-obj))
                        (_%loop105974%_
                         (let ((_%next-probe105989%_
                                (fx+ _%start105970%_
                                     _%i105979%_
                                     (fx* _%i105979%_ _%i105979%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105989%_ _%size105964%_))
                         (let () (declare (not safe)) (##fx+ _%i105979%_ '1))
                         (let ((_%$e105992%_ _%deleted105981%_))
                           (if _%$e105992%_ _%$e105992%_ _%probe105977%_)))
                        (if (__interface-test-key _%key105955%_ _%k105984%_)
                            (vector-ref
                             _%table105958%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105977%_ '1)))
                            (_%loop105974%_
                             (let ((_%next-probe105997%_
                                    (fx+ _%start105970%_
                                         _%i105979%_
                                         (fx* _%i105979%_ _%i105979%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105997%_
                                _%size105964%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105979%_ '1))
                             _%deleted105981%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab105950%_ _%key105951%_ _%value105952%_)
        (if (let ((__tmp106180
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105950%_)))
                  (__tmp106178
                   (let ((__tmp106179
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105950%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106179 '4))))
              (declare (not safe))
              (##fx< __tmp106180 __tmp106178))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105950%_))
            '#!void)
        (__prototype-table-set! _%tab105950%_ _%key105951%_ _%value105952%_)))
    (define __prototype-table-set!
      (lambda (_%tab105901%_ _%key105902%_ _%value105903%_)
        (let ((_%table105906%_
               (let () (declare (not safe)) (&raw-table-table _%tab105901%_)))
              (_%seed105907%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105901%_))))
          (let* ((_%h105909%_
                  (fxxor (__interface-hash-key _%key105902%_) _%seed105907%_))
                 (_%size105912%_ (vector-length _%table105906%_))
                 (_%entries105915%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105912%_ '2)))
                 (_%start105918%_
                  (let ((__tmp106181
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105909%_ _%entries105915%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106181 '1))))
            (let _%loop105922%_ ((_%probe105925%_ _%start105918%_)
                                 (_%i105927%_ '1)
                                 (_%deleted105929%_ '#f))
              (let ((_%k105932%_ (vector-ref _%table105906%_ _%probe105925%_)))
                (if (eq? _%k105932%_ (macro-unused-obj))
                    (if _%deleted105929%_
                        (begin
                          (vector-set!
                           _%table105906%_
                           _%deleted105929%_
                           _%key105902%_)
                          (vector-set!
                           _%table105906%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105929%_ '1))
                           _%value105903%_)
                          ((lambda ()
                             (let ((__tmp106182
                                    (let ((__tmp106183
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105901%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106183 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105901%_
                                __tmp106182)))))
                        (begin
                          (vector-set!
                           _%table105906%_
                           _%probe105925%_
                           _%key105902%_)
                          (vector-set!
                           _%table105906%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105925%_ '1))
                           _%value105903%_)
                          ((lambda ()
                             (let ((__tmp106184
                                    (let ((__tmp106185
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105901%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106185 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105901%_
                                __tmp106184))
                             (let ((__tmp106186
                                    (let ((__tmp106187
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105901%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106187 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105901%_
                                __tmp106186))))))
                    (if (eq? _%k105932%_ (macro-deleted-obj))
                        (_%loop105922%_
                         (let ((_%next-probe105939%_
                                (fx+ _%start105918%_
                                     _%i105927%_
                                     (fx* _%i105927%_ _%i105927%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105939%_ _%size105912%_))
                         (let () (declare (not safe)) (##fx+ _%i105927%_ '1))
                         (let ((_%$e105942%_ _%deleted105929%_))
                           (if _%$e105942%_ _%$e105942%_ _%probe105925%_)))
                        (if (__interface-test-key _%key105902%_ _%k105932%_)
                            (let ()
                              (vector-set!
                               _%table105906%_
                               _%probe105925%_
                               _%key105902%_)
                              (vector-set!
                               _%table105906%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105925%_ '1))
                               _%value105903%_))
                            (_%loop105922%_
                             (let ((_%next-probe105947%_
                                    (fx+ _%start105918%_
                                         _%i105927%_
                                         (fx* _%i105927%_ _%i105927%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105947%_
                                _%size105912%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105927%_ '1))
                             _%deleted105929%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab105896%_
               _%key105897%_
               _%prototype-table-update!105898%_
               _%default105899%_)
        (if (let ((__tmp106190
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105896%_)))
                  (__tmp106188
                   (let ((__tmp106189
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105896%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106189 '4))))
              (declare (not safe))
              (##fx< __tmp106190 __tmp106188))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105896%_))
            '#!void)
        (__prototype-table-update!
         _%tab105896%_
         _%key105897%_
         _%prototype-table-update!105898%_
         _%default105899%_)))
    (define __prototype-table-update!
      (lambda (_%tab105846%_
               _%key105847%_
               _%prototype-table-update!105848%_
               _%default105849%_)
        (let ((_%table105852%_
               (let () (declare (not safe)) (&raw-table-table _%tab105846%_)))
              (_%seed105853%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105846%_))))
          (let* ((_%h105855%_
                  (fxxor (__interface-hash-key _%key105847%_) _%seed105853%_))
                 (_%size105858%_ (vector-length _%table105852%_))
                 (_%entries105861%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105858%_ '2)))
                 (_%start105864%_
                  (let ((__tmp106191
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105855%_ _%entries105861%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106191 '1))))
            (let _%loop105868%_ ((_%probe105871%_ _%start105864%_)
                                 (_%i105873%_ '1)
                                 (_%deleted105875%_ '#f))
              (let ((_%k105878%_ (vector-ref _%table105852%_ _%probe105871%_)))
                (if (eq? _%k105878%_ (macro-unused-obj))
                    (if _%deleted105875%_
                        (begin
                          (vector-set!
                           _%table105852%_
                           _%deleted105875%_
                           _%key105847%_)
                          (vector-set!
                           _%table105852%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105875%_ '1))
                           (_%prototype-table-update!105848%_
                            _%default105849%_))
                          ((lambda ()
                             (let ((__tmp106192
                                    (let ((__tmp106193
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105846%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106193 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105846%_
                                __tmp106192)))))
                        (begin
                          (vector-set!
                           _%table105852%_
                           _%probe105871%_
                           _%key105847%_)
                          (vector-set!
                           _%table105852%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105871%_ '1))
                           (_%prototype-table-update!105848%_
                            _%default105849%_))
                          ((lambda ()
                             (let ((__tmp106194
                                    (let ((__tmp106195
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105846%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106195 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105846%_
                                __tmp106194))
                             (let ((__tmp106196
                                    (let ((__tmp106197
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105846%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106197 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105846%_
                                __tmp106196))))))
                    (if (eq? _%k105878%_ (macro-deleted-obj))
                        (_%loop105868%_
                         (let ((_%next-probe105885%_
                                (fx+ _%start105864%_
                                     _%i105873%_
                                     (fx* _%i105873%_ _%i105873%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105885%_ _%size105858%_))
                         (let () (declare (not safe)) (##fx+ _%i105873%_ '1))
                         (let ((_%$e105888%_ _%deleted105875%_))
                           (if _%$e105888%_ _%$e105888%_ _%probe105871%_)))
                        (if (__interface-test-key _%key105847%_ _%k105878%_)
                            (let ()
                              (vector-set!
                               _%table105852%_
                               _%probe105871%_
                               _%key105847%_)
                              (vector-set!
                               _%table105852%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105871%_ '1))
                               (_%prototype-table-update!105848%_
                                (vector-ref
                                 _%table105852%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe105871%_ '1))))))
                            (_%loop105868%_
                             (let ((_%next-probe105893%_
                                    (fx+ _%start105864%_
                                         _%i105873%_
                                         (fx* _%i105873%_ _%i105873%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105893%_
                                _%size105858%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105873%_ '1))
                             _%deleted105875%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab105801%_ _%key105803%_)
        (let ((_%table105806%_
               (let () (declare (not safe)) (&raw-table-table _%tab105801%_)))
              (_%seed105808%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105801%_))))
          (let* ((_%h105811%_
                  (fxxor (__interface-hash-key _%key105803%_) _%seed105808%_))
                 (_%size105814%_ (vector-length _%table105806%_))
                 (_%entries105817%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105814%_ '2)))
                 (_%start105820%_
                  (let ((__tmp106198
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105811%_ _%entries105817%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106198 '1))))
            (let _%loop105824%_ ((_%probe105827%_ _%start105820%_)
                                 (_%i105829%_ '1))
              (let ((_%k105832%_ (vector-ref _%table105806%_ _%probe105827%_)))
                (if (eq? _%k105832%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k105832%_ (macro-deleted-obj))
                        (_%loop105824%_
                         (let ((_%next-probe105837%_
                                (fx+ _%start105820%_
                                     _%i105829%_
                                     (fx* _%i105829%_ _%i105829%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105837%_ _%size105814%_))
                         (let () (declare (not safe)) (##fx+ _%i105829%_ '1)))
                        (if (__interface-test-key _%key105803%_ _%k105832%_)
                            (let ()
                              (vector-set!
                               _%table105806%_
                               _%probe105827%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table105806%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105827%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp106199
                                        (let ((__tmp106200
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab105801%_))))
                                          (declare (not safe))
                                          (##fx- __tmp106200 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab105801%_
                                    __tmp106199)))))
                            (_%loop105824%_
                             (let ((_%next-probe105843%_
                                    (fx+ _%start105820%_
                                         _%i105829%_
                                         (fx* _%i105829%_ _%i105829%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105843%_
                                _%size105814%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105829%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass105793%_)
        (let ((_%super105794105796%_
               (let () (declare (not safe)) (##type-super _%klass105793%_))))
          (if _%super105794105796%_
              (let ((_%super105799%_ _%super105794105796%_))
                (eq? (let () (declare (not safe)) (##type-id _%super105799%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor105627%_ _%klass105628%_ _%obj-klass105629%_)
        (let ((_%method-table105631%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105629%_))))
          (let _%loop105634%_ ((_%rest105637%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105627%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105639%_ '0)
                               (_%methods105641%_ '()))
            (let* ((_%rest105643105651%_ _%rest105637%_)
                   (_%else105645105713%_
                    (lambda ()
                      (let ((_%prototype105659%_
                             (let ((__obj106159
                                    (let ((__tmp106201
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105639%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105628%_
                                       __tmp106201))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106159 '#f))
                               __obj106159)))
                        (let _%loop105662%_ ((_%rest105664%_ _%methods105641%_)
                                             (_%off105665%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105639%_ '1))))
                          (let* ((_%rest105667105675%_ _%rest105664%_)
                                 (_%else105669105694%_
                                  (lambda ()
                                    (let ((_%prototype-key105683%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105628%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105629%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105688%_ ()
                                          (if (let ((__tmp106202
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106202 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105688%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105683%_
                                       _%prototype105659%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105692%_)
                                         _%prototype105692%_)
                                       _%prototype105659%_))))
                                 (_%K105671105701%_
                                  (lambda (_%rest105697%_ _%method105698%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105659%_
                                       _%method105698%_
                                       _%off105665%_
                                       _%klass105628%_
                                       '#f))
                                    (_%loop105662%_
                                     _%rest105697%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105665%_ '1))))))
                            (if (pair? _%rest105667105675%_)
                                (let ((_%hd105672105704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105667105675%_)))
                                      (_%tl105673105706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105667105675%_))))
                                  (let* ((_%method105709%_ _%hd105672105704%_)
                                         (_%rest105711%_ _%tl105673105706%_))
                                    (_%K105671105701%_
                                     _%rest105711%_
                                     _%method105709%_)))
                                (_%else105669105694%_)))))))
                   (_%K105647105781%_
                    (lambda (_%rest105716%_ _%method-spec105717%_)
                      (if (pair? _%method-spec105717%_)
                          (let _%loop-inner105721%_ ((_%methods-rest105724%_
                                                      _%method-spec105717%_))
                            (let* ((_%methods-rest105726105734%_
                                    _%methods-rest105724%_)
                                   (_%else105728105746%_
                                    (lambda ()
                                      ((lambda (_%klass105742%_
                                                _%obj-klass105743%_
                                                _%method-name105744%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass105742%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass105742%_))
                                          'class:
                                          _%obj-klass105743%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass105743%_))
                                          'method:
                                          _%method-name105744%_)
                                         '#!void)
                                       _%klass105628%_
                                       _%obj-klass105629%_
                                       _%method-spec105717%_)))
                                   (_%K105730105759%_
                                    (lambda (_%methods-rest105749%_
                                             _%method-name105750%_)
                                      (let ((_%$e105753%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105631%_
                                                _%method-name105750%_
                                                '#f))))
                                        (if _%$e105753%_
                                            ((lambda (_%method105756%_)
                                               (_%loop105634%_
                                                _%rest105716%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105639%_ '1))
                                                (cons _%method105756%_
                                                      _%methods105641%_)))
                                             _%$e105753%_)
                                            (_%loop-inner105721%_
                                             _%methods-rest105749%_))))))
                              (if (pair? _%methods-rest105726105734%_)
                                  (let ((_%hd105731105762%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105726105734%_)))
                                        (_%tl105732105764%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105726105734%_))))
                                    (let* ((_%method-name105767%_
                                            _%hd105731105762%_)
                                           (_%methods-rest105769%_
                                            _%tl105732105764%_))
                                      (_%K105730105759%_
                                       _%methods-rest105769%_
                                       _%method-name105767%_)))
                                  (_%else105728105746%_))))
                          (let ((_%$e105771%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105631%_
                                    _%method-spec105717%_
                                    '#f))))
                            (if _%$e105771%_
                                ((lambda (_%method105774%_)
                                   (_%loop105634%_
                                    _%rest105716%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105639%_ '1))
                                    (cons _%method105774%_ _%methods105641%_)))
                                 _%$e105771%_)
                                ((lambda (_%klass105777%_
                                          _%obj-klass105778%_
                                          _%method-name105779%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass105777%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass105777%_))
                                    'class:
                                    _%obj-klass105778%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass105778%_))
                                    'method:
                                    _%method-name105779%_)
                                   '#!void)
                                 _%klass105628%_
                                 _%obj-klass105629%_
                                 _%method-spec105717%_)))))))
              (if (pair? _%rest105643105651%_)
                  (let ((_%hd105648105784%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105643105651%_)))
                        (_%tl105649105786%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105643105651%_))))
                    (let* ((_%method-spec105789%_ _%hd105648105784%_)
                           (_%rest105791%_ _%tl105649105786%_))
                      (_%K105647105781%_
                       _%rest105791%_
                       _%method-spec105789%_)))
                  (_%else105645105713%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor105461%_ _%klass105462%_ _%obj-klass105463%_)
        (let ((_%method-table105465%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105463%_))))
          (let _%loop105468%_ ((_%rest105471%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105461%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105473%_ '0)
                               (_%methods105475%_ '()))
            (let* ((_%rest105477105485%_ _%rest105471%_)
                   (_%else105479105547%_
                    (lambda ()
                      (let ((_%prototype105493%_
                             (let ((__obj106160
                                    (let ((__tmp106203
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105473%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105462%_
                                       __tmp106203))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106160 '#f))
                               __obj106160)))
                        (let _%loop105496%_ ((_%rest105498%_ _%methods105475%_)
                                             (_%off105499%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105473%_ '1))))
                          (let* ((_%rest105501105509%_ _%rest105498%_)
                                 (_%else105503105528%_
                                  (lambda ()
                                    (let ((_%prototype-key105517%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105462%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105463%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105522%_ ()
                                          (if (let ((__tmp106204
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106204 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105522%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105517%_
                                       _%prototype105493%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105526%_)
                                         _%prototype105526%_)
                                       _%prototype105493%_))))
                                 (_%K105505105535%_
                                  (lambda (_%rest105531%_ _%method105532%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105493%_
                                       _%method105532%_
                                       _%off105499%_
                                       _%klass105462%_
                                       '#f))
                                    (_%loop105496%_
                                     _%rest105531%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105499%_ '1))))))
                            (if (pair? _%rest105501105509%_)
                                (let ((_%hd105506105538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105501105509%_)))
                                      (_%tl105507105540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105501105509%_))))
                                  (let* ((_%method105543%_ _%hd105506105538%_)
                                         (_%rest105545%_ _%tl105507105540%_))
                                    (_%K105505105535%_
                                     _%rest105545%_
                                     _%method105543%_)))
                                (_%else105503105528%_)))))))
                   (_%K105481105615%_
                    (lambda (_%rest105550%_ _%method-spec105551%_)
                      (if (pair? _%method-spec105551%_)
                          (let _%loop-inner105555%_ ((_%methods-rest105558%_
                                                      _%method-spec105551%_))
                            (let* ((_%methods-rest105560105568%_
                                    _%methods-rest105558%_)
                                   (_%else105562105580%_
                                    (lambda ()
                                      ((lambda (_%klass105576%_
                                                _%obj-klass105577%_
                                                _%method-name105578%_)
                                         '#f)
                                       _%klass105462%_
                                       _%obj-klass105463%_
                                       _%method-spec105551%_)))
                                   (_%K105564105593%_
                                    (lambda (_%methods-rest105583%_
                                             _%method-name105584%_)
                                      (let ((_%$e105587%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105465%_
                                                _%method-name105584%_
                                                '#f))))
                                        (if _%$e105587%_
                                            ((lambda (_%method105590%_)
                                               (_%loop105468%_
                                                _%rest105550%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105473%_ '1))
                                                (cons _%method105590%_
                                                      _%methods105475%_)))
                                             _%$e105587%_)
                                            (_%loop-inner105555%_
                                             _%methods-rest105583%_))))))
                              (if (pair? _%methods-rest105560105568%_)
                                  (let ((_%hd105565105596%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105560105568%_)))
                                        (_%tl105566105598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105560105568%_))))
                                    (let* ((_%method-name105601%_
                                            _%hd105565105596%_)
                                           (_%methods-rest105603%_
                                            _%tl105566105598%_))
                                      (_%K105564105593%_
                                       _%methods-rest105603%_
                                       _%method-name105601%_)))
                                  (_%else105562105580%_))))
                          (let ((_%$e105605%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105465%_
                                    _%method-spec105551%_
                                    '#f))))
                            (if _%$e105605%_
                                ((lambda (_%method105608%_)
                                   (_%loop105468%_
                                    _%rest105550%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105473%_ '1))
                                    (cons _%method105608%_ _%methods105475%_)))
                                 _%$e105605%_)
                                ((lambda (_%klass105611%_
                                          _%obj-klass105612%_
                                          _%method-name105613%_)
                                   '#f)
                                 _%klass105462%_
                                 _%obj-klass105463%_
                                 _%method-spec105551%_)))))))
              (if (pair? _%rest105477105485%_)
                  (let ((_%hd105482105618%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105477105485%_)))
                        (_%tl105483105620%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105477105485%_))))
                    (let* ((_%method-spec105623%_ _%hd105482105618%_)
                           (_%rest105625%_ _%tl105483105620%_))
                      (_%K105481105615%_
                       _%rest105625%_
                       _%method-spec105623%_)))
                  (_%else105479105547%_)))))))
    (define cast
      (lambda (_%descriptor105419%_ _%obj105421%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105425%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105419%_ '1 '#f '#f)))
               (_%klass-id105428%_
                (let () (declare (not safe)) (##type-id _%klass105425%_)))
               (_%obj-klass105431%_
                (let () (declare (not safe)) (class-of _%obj105421%_)))
               (_%obj-klass-id105434%_
                (let () (declare (not safe)) (##type-id _%obj-klass105431%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105428%_ _%obj-klass-id105434%_))
              _%obj105421%_
              (if (interface-subclass? _%obj-klass105431%_)
                  (cast _%descriptor105419%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj105421%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105443%_ ()
                        (if (let ((__tmp106205
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106205 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105443%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105428%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105434%_))
                    (let ((_%prototype105454%_
                           (let ((_%$e105447%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105447%_
                                 ((lambda (_%prototype105450%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105450%_)
                                  _%$e105447%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor105419%_
                                    _%klass105425%_
                                    _%obj-klass105431%_))))))
                      ((lambda (_%prototype105456%_ _%obj105457%_)
                         (let ((_%instance105459%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype105456%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance105459%_
                              _%obj105457%_
                              '1
                              '#f
                              'cast))
                           _%instance105459%_))
                       _%prototype105454%_
                       _%obj105421%_))))))))
    (define try-cast
      (lambda (_%descriptor105377%_ _%obj105379%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105383%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105377%_ '1 '#f '#f)))
               (_%klass-id105386%_
                (let () (declare (not safe)) (##type-id _%klass105383%_)))
               (_%obj-klass105389%_
                (let () (declare (not safe)) (class-of _%obj105379%_)))
               (_%obj-klass-id105392%_
                (let () (declare (not safe)) (##type-id _%obj-klass105389%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105386%_ _%obj-klass-id105392%_))
              _%obj105379%_
              (if (interface-subclass? _%obj-klass105389%_)
                  (try-cast
                   _%descriptor105377%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105379%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105401%_ ()
                        (if (let ((__tmp106206
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106206 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105401%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105386%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105392%_))
                    (let ((_%prototype105412%_
                           (let ((_%$e105405%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105405%_
                                 ((lambda (_%prototype105408%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105408%_)
                                  _%$e105405%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105377%_
                                    _%klass105383%_
                                    _%obj-klass105389%_))))))
                      ((lambda (_%prototype105414%_ _%obj105415%_)
                         (if _%prototype105414%_
                             (let ((_%instance105417%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype105414%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance105417%_
                                  _%obj105415%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance105417%_)
                             '#f))
                       _%prototype105412%_
                       _%obj105379%_))))))))
    (define satisfies?
      (lambda (_%descriptor105337%_ _%obj105339%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105343%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105337%_ '1 '#f '#f)))
               (_%klass-id105346%_
                (let () (declare (not safe)) (##type-id _%klass105343%_)))
               (_%obj-klass105349%_
                (let () (declare (not safe)) (class-of _%obj105339%_)))
               (_%obj-klass-id105352%_
                (let () (declare (not safe)) (##type-id _%obj-klass105349%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105346%_ _%obj-klass-id105352%_))
              _%obj105339%_
              (if (interface-subclass? _%obj-klass105349%_)
                  (satisfies?
                   _%descriptor105337%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105339%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105361%_ ()
                        (if (let ((__tmp106207
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106207 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105361%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105346%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105352%_))
                    (let ((_%prototype105372%_
                           (let ((_%$e105365%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105365%_
                                 ((lambda (_%prototype105368%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105368%_)
                                  _%$e105365%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105337%_
                                    _%klass105343%_
                                    _%obj-klass105349%_))))))
                      ((lambda (_%prototype105374%_ _%obj105375%_)
                         (if _%prototype105374%_ '#t '#f))
                       _%prototype105372%_
                       _%obj105339%_))))))))))
