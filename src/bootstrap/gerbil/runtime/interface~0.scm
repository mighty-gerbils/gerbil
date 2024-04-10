(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712757954)
  (begin
    (define CastError::t
      (let ((__tmp101728 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101728
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101721%_
        (apply make-instance CastError::t _%$args101721%_)))
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
      (__bind-method! CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where101595%_ _%message101596%_ . _%irritants101597%_)
        (let ((__tmp101729
               (let ((__obj101724
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101724
                  _%message101596%_
                  'where:
                  _%where101595%_
                  'irritants:
                  _%irritants101597%_)
                 __obj101724)))
          (declare (not safe))
          (raise __tmp101729))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101731 (list)) (__tmp101730 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101731
         '(__object)
         __tmp101730
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
      (let ((__tmp101733 (list))
            (__tmp101732
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101733
         '(type methods)
         __tmp101732
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101592%_
        (apply make-instance interface-descriptor::t _%$args101592%_)))
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
      (lambda (_%key101590%_)
        (let ((__tmp101735
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101590%_))))
              (__tmp101734
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101590%_)))))
          (declare (not safe))
          (##fxxor __tmp101735 __tmp101734))))
    (define __interface-test-key
      (lambda (_%a101587%_ _%b101588%_)
        (if (let ((__tmp101737
                   (let () (declare (not safe)) (##car _%a101587%_)))
                  (__tmp101736
                   (let () (declare (not safe)) (##car _%b101588%_))))
              (declare (not safe))
              (##eq? __tmp101737 __tmp101736))
            (let ((__tmp101739
                   (let () (declare (not safe)) (##cdr _%a101587%_)))
                  (__tmp101738
                   (let () (declare (not safe)) (##cdr _%b101588%_))))
              (declare (not safe))
              (##eq? __tmp101739 __tmp101738))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101568%_ _%seed101570%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101568%_
           __interface-hash-key
           __interface-test-key
           _%seed101570%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101576%_ '#f) (_%seed101578%_ '0))
          (make-prototype-table__% _%size-hint101576%_ _%seed101578%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101580%_)
        (let ((_%seed101582%_ '0))
          (make-prototype-table__% _%size-hint101580%_ _%seed101582%_))))
    (define make-prototype-table
      (lambda _g101741_
        (let ((_g101740_ (let () (declare (not safe)) (##length _g101741_))))
          (cond ((let () (declare (not safe)) (##fx= _g101740_ 0))
                 (apply make-prototype-table__0 _g101741_))
                ((let () (declare (not safe)) (##fx= _g101740_ 1))
                 (apply make-prototype-table__1 _g101741_))
                ((let () (declare (not safe)) (##fx= _g101740_ 2))
                 (apply make-prototype-table__% _g101741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101741_))))))
    (define prototype-table-ref
      (lambda (_%tab101521%_ _%key101522%_ _%default101523%_)
        (let ((_%table101525%_
               (let () (declare (not safe)) (&raw-table-table _%tab101521%_)))
              (_%seed101526%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101521%_))))
          (let* ((_%h101528%_
                  (fxxor (__interface-hash-key _%key101522%_) _%seed101526%_))
                 (_%size101531%_ (vector-length _%table101525%_))
                 (_%entries101534%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101531%_ '2)))
                 (_%start101537%_
                  (let ((__tmp101742
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101528%_ _%entries101534%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101742 '1))))
            (let _%loop101541%_ ((_%probe101544%_ _%start101537%_)
                                 (_%i101546%_ '1)
                                 (_%deleted101548%_ '#f))
              (let ((_%k101551%_ (vector-ref _%table101525%_ _%probe101544%_)))
                (if (eq? _%k101551%_ (macro-unused-obj))
                    _%default101523%_
                    (if (eq? _%k101551%_ (macro-deleted-obj))
                        (_%loop101541%_
                         (let ((_%next-probe101556%_
                                (fx+ _%start101537%_
                                     _%i101546%_
                                     (fx* _%i101546%_ _%i101546%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101556%_ _%size101531%_))
                         (let () (declare (not safe)) (##fx+ _%i101546%_ '1))
                         (let ((_%$e101559%_ _%deleted101548%_))
                           (if _%$e101559%_ _%$e101559%_ _%probe101544%_)))
                        (if (__interface-test-key _%key101522%_ _%k101551%_)
                            (vector-ref
                             _%table101525%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101544%_ '1)))
                            (_%loop101541%_
                             (let ((_%next-probe101564%_
                                    (fx+ _%start101537%_
                                         _%i101546%_
                                         (fx* _%i101546%_ _%i101546%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101564%_
                                _%size101531%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101546%_ '1))
                             _%deleted101548%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab101517%_ _%key101518%_ _%value101519%_)
        (if (let ((__tmp101745
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101517%_)))
                  (__tmp101743
                   (let ((__tmp101744
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101517%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101744 '4))))
              (declare (not safe))
              (##fx< __tmp101745 __tmp101743))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101517%_))
            '#!void)
        (__prototype-table-set! _%tab101517%_ _%key101518%_ _%value101519%_)))
    (define __prototype-table-set!
      (lambda (_%tab101468%_ _%key101469%_ _%value101470%_)
        (let ((_%table101473%_
               (let () (declare (not safe)) (&raw-table-table _%tab101468%_)))
              (_%seed101474%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101468%_))))
          (let* ((_%h101476%_
                  (fxxor (__interface-hash-key _%key101469%_) _%seed101474%_))
                 (_%size101479%_ (vector-length _%table101473%_))
                 (_%entries101482%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101479%_ '2)))
                 (_%start101485%_
                  (let ((__tmp101746
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101476%_ _%entries101482%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101746 '1))))
            (let _%loop101489%_ ((_%probe101492%_ _%start101485%_)
                                 (_%i101494%_ '1)
                                 (_%deleted101496%_ '#f))
              (let ((_%k101499%_ (vector-ref _%table101473%_ _%probe101492%_)))
                (if (eq? _%k101499%_ (macro-unused-obj))
                    (if _%deleted101496%_
                        (begin
                          (vector-set!
                           _%table101473%_
                           _%deleted101496%_
                           _%key101469%_)
                          (vector-set!
                           _%table101473%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101496%_ '1))
                           _%value101470%_)
                          ((lambda ()
                             (let ((__tmp101747
                                    (let ((__tmp101748
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101468%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101748 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101468%_
                                __tmp101747)))))
                        (begin
                          (vector-set!
                           _%table101473%_
                           _%probe101492%_
                           _%key101469%_)
                          (vector-set!
                           _%table101473%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101492%_ '1))
                           _%value101470%_)
                          ((lambda ()
                             (let ((__tmp101749
                                    (let ((__tmp101750
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101468%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101750 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101468%_
                                __tmp101749))
                             (let ((__tmp101751
                                    (let ((__tmp101752
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101468%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101752 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101468%_
                                __tmp101751))))))
                    (if (eq? _%k101499%_ (macro-deleted-obj))
                        (_%loop101489%_
                         (let ((_%next-probe101506%_
                                (fx+ _%start101485%_
                                     _%i101494%_
                                     (fx* _%i101494%_ _%i101494%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101506%_ _%size101479%_))
                         (let () (declare (not safe)) (##fx+ _%i101494%_ '1))
                         (let ((_%$e101509%_ _%deleted101496%_))
                           (if _%$e101509%_ _%$e101509%_ _%probe101492%_)))
                        (if (__interface-test-key _%key101469%_ _%k101499%_)
                            (let ()
                              (vector-set!
                               _%table101473%_
                               _%probe101492%_
                               _%key101469%_)
                              (vector-set!
                               _%table101473%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101492%_ '1))
                               _%value101470%_))
                            (_%loop101489%_
                             (let ((_%next-probe101514%_
                                    (fx+ _%start101485%_
                                         _%i101494%_
                                         (fx* _%i101494%_ _%i101494%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101514%_
                                _%size101479%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101494%_ '1))
                             _%deleted101496%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab101463%_
               _%key101464%_
               _%prototype-table-update!101465%_
               _%default101466%_)
        (if (let ((__tmp101755
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101463%_)))
                  (__tmp101753
                   (let ((__tmp101754
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101463%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101754 '4))))
              (declare (not safe))
              (##fx< __tmp101755 __tmp101753))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101463%_))
            '#!void)
        (__prototype-table-update!
         _%tab101463%_
         _%key101464%_
         _%prototype-table-update!101465%_
         _%default101466%_)))
    (define __prototype-table-update!
      (lambda (_%tab101413%_
               _%key101414%_
               _%prototype-table-update!101415%_
               _%default101416%_)
        (let ((_%table101419%_
               (let () (declare (not safe)) (&raw-table-table _%tab101413%_)))
              (_%seed101420%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101413%_))))
          (let* ((_%h101422%_
                  (fxxor (__interface-hash-key _%key101414%_) _%seed101420%_))
                 (_%size101425%_ (vector-length _%table101419%_))
                 (_%entries101428%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101425%_ '2)))
                 (_%start101431%_
                  (let ((__tmp101756
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101422%_ _%entries101428%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101756 '1))))
            (let _%loop101435%_ ((_%probe101438%_ _%start101431%_)
                                 (_%i101440%_ '1)
                                 (_%deleted101442%_ '#f))
              (let ((_%k101445%_ (vector-ref _%table101419%_ _%probe101438%_)))
                (if (eq? _%k101445%_ (macro-unused-obj))
                    (if _%deleted101442%_
                        (begin
                          (vector-set!
                           _%table101419%_
                           _%deleted101442%_
                           _%key101414%_)
                          (vector-set!
                           _%table101419%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101442%_ '1))
                           (_%prototype-table-update!101415%_
                            _%default101416%_))
                          ((lambda ()
                             (let ((__tmp101757
                                    (let ((__tmp101758
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101413%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101758 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101413%_
                                __tmp101757)))))
                        (begin
                          (vector-set!
                           _%table101419%_
                           _%probe101438%_
                           _%key101414%_)
                          (vector-set!
                           _%table101419%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101438%_ '1))
                           (_%prototype-table-update!101415%_
                            _%default101416%_))
                          ((lambda ()
                             (let ((__tmp101759
                                    (let ((__tmp101760
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101413%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101760 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101413%_
                                __tmp101759))
                             (let ((__tmp101761
                                    (let ((__tmp101762
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101413%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101762 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101413%_
                                __tmp101761))))))
                    (if (eq? _%k101445%_ (macro-deleted-obj))
                        (_%loop101435%_
                         (let ((_%next-probe101452%_
                                (fx+ _%start101431%_
                                     _%i101440%_
                                     (fx* _%i101440%_ _%i101440%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101452%_ _%size101425%_))
                         (let () (declare (not safe)) (##fx+ _%i101440%_ '1))
                         (let ((_%$e101455%_ _%deleted101442%_))
                           (if _%$e101455%_ _%$e101455%_ _%probe101438%_)))
                        (if (__interface-test-key _%key101414%_ _%k101445%_)
                            (let ()
                              (vector-set!
                               _%table101419%_
                               _%probe101438%_
                               _%key101414%_)
                              (vector-set!
                               _%table101419%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101438%_ '1))
                               (_%prototype-table-update!101415%_
                                (vector-ref
                                 _%table101419%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101438%_ '1))))))
                            (_%loop101435%_
                             (let ((_%next-probe101460%_
                                    (fx+ _%start101431%_
                                         _%i101440%_
                                         (fx* _%i101440%_ _%i101440%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101460%_
                                _%size101425%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101440%_ '1))
                             _%deleted101442%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab101368%_ _%key101370%_)
        (let ((_%table101373%_
               (let () (declare (not safe)) (&raw-table-table _%tab101368%_)))
              (_%seed101375%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101368%_))))
          (let* ((_%h101378%_
                  (fxxor (__interface-hash-key _%key101370%_) _%seed101375%_))
                 (_%size101381%_ (vector-length _%table101373%_))
                 (_%entries101384%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101381%_ '2)))
                 (_%start101387%_
                  (let ((__tmp101763
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101378%_ _%entries101384%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101763 '1))))
            (let _%loop101391%_ ((_%probe101394%_ _%start101387%_)
                                 (_%i101396%_ '1))
              (let ((_%k101399%_ (vector-ref _%table101373%_ _%probe101394%_)))
                (if (eq? _%k101399%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101399%_ (macro-deleted-obj))
                        (_%loop101391%_
                         (let ((_%next-probe101404%_
                                (fx+ _%start101387%_
                                     _%i101396%_
                                     (fx* _%i101396%_ _%i101396%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101404%_ _%size101381%_))
                         (let () (declare (not safe)) (##fx+ _%i101396%_ '1)))
                        (if (__interface-test-key _%key101370%_ _%k101399%_)
                            (let ()
                              (vector-set!
                               _%table101373%_
                               _%probe101394%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101373%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101394%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101764
                                        (let ((__tmp101765
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101368%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101765 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101368%_
                                    __tmp101764)))))
                            (_%loop101391%_
                             (let ((_%next-probe101410%_
                                    (fx+ _%start101387%_
                                         _%i101396%_
                                         (fx* _%i101396%_ _%i101396%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101410%_
                                _%size101381%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101396%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass101360%_)
        (let ((_%super101361101363%_
               (let () (declare (not safe)) (##type-super _%klass101360%_))))
          (if _%super101361101363%_
              (let ((_%super101366%_ _%super101361101363%_))
                (eq? (let () (declare (not safe)) (##type-id _%super101366%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor101245%_ _%klass101246%_ _%obj-klass101247%_)
        (let ((_%method-table101249%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101247%_))))
          (let _%loop101252%_ ((_%rest101255%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101245%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101257%_ '0)
                               (_%methods101259%_ '()))
            (let* ((_%rest101261101269%_ _%rest101255%_)
                   (_%else101263101331%_
                    (lambda ()
                      (let ((_%prototype101277%_
                             (let ((__obj101726
                                    (let ((__tmp101766
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101257%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101246%_
                                       __tmp101766))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101726 '#f))
                               __obj101726)))
                        (let _%loop101280%_ ((_%rest101282%_ _%methods101259%_)
                                             (_%off101283%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101257%_ '1))))
                          (let* ((_%rest101285101293%_ _%rest101282%_)
                                 (_%else101287101312%_
                                  (lambda ()
                                    (let ((_%prototype-key101301%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101246%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101247%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101306%_ ()
                                          (if (let ((__tmp101767
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101767 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again101306%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key101301%_
                                       _%prototype101277%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101310%_)
                                         _%prototype101310%_)
                                       _%prototype101277%_))))
                                 (_%K101289101319%_
                                  (lambda (_%rest101315%_ _%method101316%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101277%_
                                       _%method101316%_
                                       _%off101283%_
                                       _%klass101246%_
                                       '#f))
                                    (_%loop101280%_
                                     _%rest101315%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off101283%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101285101293%_))
                                (let ((_%hd101290101322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101285101293%_)))
                                      (_%tl101291101324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101285101293%_))))
                                  (let* ((_%method101327%_ _%hd101290101322%_)
                                         (_%rest101329%_ _%tl101291101324%_))
                                    (_%K101289101319%_
                                     _%rest101329%_
                                     _%method101327%_)))
                                (_%else101287101312%_)))))))
                   (_%K101265101348%_
                    (lambda (_%rest101334%_ _%method-name101335%_)
                      (let ((_%$e101338%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101249%_
                                _%method-name101335%_
                                '#f))))
                        (if _%$e101338%_
                            ((lambda (_%method101341%_)
                               (_%loop101252%_
                                _%rest101334%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count101257%_ '1))
                                (cons _%method101341%_ _%methods101259%_)))
                             _%$e101338%_)
                            ((lambda (_%klass101344%_
                                      _%obj-klass101345%_
                                      _%method-name101346%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass101344%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass101344%_))
                                'class:
                                _%obj-klass101345%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass101345%_))
                                'method:
                                _%method-name101346%_)
                               '#!void)
                             _%klass101246%_
                             _%obj-klass101247%_
                             _%method-name101335%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest101261101269%_))
                  (let ((_%hd101266101351%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101261101269%_)))
                        (_%tl101267101353%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101261101269%_))))
                    (let* ((_%method-name101356%_ _%hd101266101351%_)
                           (_%rest101358%_ _%tl101267101353%_))
                      (_%K101265101348%_
                       _%rest101358%_
                       _%method-name101356%_)))
                  (_%else101263101331%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor101130%_ _%klass101131%_ _%obj-klass101132%_)
        (let ((_%method-table101134%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101132%_))))
          (let _%loop101137%_ ((_%rest101140%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101130%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101142%_ '0)
                               (_%methods101144%_ '()))
            (let* ((_%rest101146101154%_ _%rest101140%_)
                   (_%else101148101216%_
                    (lambda ()
                      (let ((_%prototype101162%_
                             (let ((__obj101727
                                    (let ((__tmp101768
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101142%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101131%_
                                       __tmp101768))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101727 '#f))
                               __obj101727)))
                        (let _%loop101165%_ ((_%rest101167%_ _%methods101144%_)
                                             (_%off101168%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101142%_ '1))))
                          (let* ((_%rest101170101178%_ _%rest101167%_)
                                 (_%else101172101197%_
                                  (lambda ()
                                    (let ((_%prototype-key101186%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101131%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101132%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101191%_ ()
                                          (if (let ((__tmp101769
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101769 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again101191%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key101186%_
                                       _%prototype101162%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101195%_)
                                         _%prototype101195%_)
                                       _%prototype101162%_))))
                                 (_%K101174101204%_
                                  (lambda (_%rest101200%_ _%method101201%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101162%_
                                       _%method101201%_
                                       _%off101168%_
                                       _%klass101131%_
                                       '#f))
                                    (_%loop101165%_
                                     _%rest101200%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off101168%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101170101178%_))
                                (let ((_%hd101175101207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101170101178%_)))
                                      (_%tl101176101209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101170101178%_))))
                                  (let* ((_%method101212%_ _%hd101175101207%_)
                                         (_%rest101214%_ _%tl101176101209%_))
                                    (_%K101174101204%_
                                     _%rest101214%_
                                     _%method101212%_)))
                                (_%else101172101197%_)))))))
                   (_%K101150101233%_
                    (lambda (_%rest101219%_ _%method-name101220%_)
                      (let ((_%$e101223%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101134%_
                                _%method-name101220%_
                                '#f))))
                        (if _%$e101223%_
                            ((lambda (_%method101226%_)
                               (_%loop101137%_
                                _%rest101219%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count101142%_ '1))
                                (cons _%method101226%_ _%methods101144%_)))
                             _%$e101223%_)
                            ((lambda (_%klass101229%_
                                      _%obj-klass101230%_
                                      _%method-name101231%_)
                               '#f)
                             _%klass101131%_
                             _%obj-klass101132%_
                             _%method-name101220%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest101146101154%_))
                  (let ((_%hd101151101236%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101146101154%_)))
                        (_%tl101152101238%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101146101154%_))))
                    (let* ((_%method-name101241%_ _%hd101151101236%_)
                           (_%rest101243%_ _%tl101152101238%_))
                      (_%K101150101233%_
                       _%rest101243%_
                       _%method-name101241%_)))
                  (_%else101148101216%_)))))))
    (define cast
      (lambda (_%descriptor101088%_ _%obj101090%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101094%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101088%_ '1 '#f '#f)))
               (_%klass-id101097%_
                (let () (declare (not safe)) (##type-id _%klass101094%_)))
               (_%obj-klass101100%_
                (let () (declare (not safe)) (class-of _%obj101090%_)))
               (_%obj-klass-id101103%_
                (let () (declare (not safe)) (##type-id _%obj-klass101100%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101097%_ _%obj-klass-id101103%_))
              _%obj101090%_
              (if (interface-subclass? _%obj-klass101100%_)
                  (cast _%descriptor101088%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj101090%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101112%_ ()
                        (if (let ((__tmp101770
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101770 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101112%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101097%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101103%_))
                    (let ((_%prototype101123%_
                           (let ((_%$e101116%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101116%_
                                 ((lambda (_%prototype101119%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101119%_)
                                  _%$e101116%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor101088%_
                                    _%klass101094%_
                                    _%obj-klass101100%_))))))
                      ((lambda (_%prototype101125%_ _%obj101126%_)
                         (let ((_%instance101128%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype101125%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance101128%_
                              _%obj101126%_
                              '1
                              '#f
                              'cast))
                           _%instance101128%_))
                       _%prototype101123%_
                       _%obj101090%_))))))))
    (define try-cast
      (lambda (_%descriptor101046%_ _%obj101048%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101052%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101046%_ '1 '#f '#f)))
               (_%klass-id101055%_
                (let () (declare (not safe)) (##type-id _%klass101052%_)))
               (_%obj-klass101058%_
                (let () (declare (not safe)) (class-of _%obj101048%_)))
               (_%obj-klass-id101061%_
                (let () (declare (not safe)) (##type-id _%obj-klass101058%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101055%_ _%obj-klass-id101061%_))
              _%obj101048%_
              (if (interface-subclass? _%obj-klass101058%_)
                  (try-cast
                   _%descriptor101046%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj101048%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101070%_ ()
                        (if (let ((__tmp101771
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101771 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101070%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101055%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101061%_))
                    (let ((_%prototype101081%_
                           (let ((_%$e101074%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101074%_
                                 ((lambda (_%prototype101077%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101077%_)
                                  _%$e101074%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor101046%_
                                    _%klass101052%_
                                    _%obj-klass101058%_))))))
                      ((lambda (_%prototype101083%_ _%obj101084%_)
                         (if _%prototype101083%_
                             (let ((_%instance101086%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype101083%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance101086%_
                                  _%obj101084%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance101086%_)
                             '#f))
                       _%prototype101081%_
                       _%obj101048%_))))))))
    (define satisfies?
      (lambda (_%descriptor101006%_ _%obj101008%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101012%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101006%_ '1 '#f '#f)))
               (_%klass-id101015%_
                (let () (declare (not safe)) (##type-id _%klass101012%_)))
               (_%obj-klass101018%_
                (let () (declare (not safe)) (class-of _%obj101008%_)))
               (_%obj-klass-id101021%_
                (let () (declare (not safe)) (##type-id _%obj-klass101018%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101015%_ _%obj-klass-id101021%_))
              _%obj101008%_
              (if (interface-subclass? _%obj-klass101018%_)
                  (satisfies?
                   _%descriptor101006%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj101008%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101030%_ ()
                        (if (let ((__tmp101772
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101772 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101030%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101015%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101021%_))
                    (let ((_%prototype101041%_
                           (let ((_%$e101034%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101034%_
                                 ((lambda (_%prototype101037%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101037%_)
                                  _%$e101034%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor101006%_
                                    _%klass101012%_
                                    _%obj-klass101018%_))))))
                      ((lambda (_%prototype101043%_ _%obj101044%_)
                         (if _%prototype101043%_ '#t '#f))
                       _%prototype101041%_
                       _%obj101008%_))))))))))
