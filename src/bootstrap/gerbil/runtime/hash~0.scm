(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1713631265)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp109934 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp109934
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args109914%_
        (apply make-instance UnboundKeyError::t _%$args109914%_)))
    (define UnboundKeyError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'continuation)))
    (define UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'continuation)))
    (define &UnboundKeyError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         UnboundKeyError::t
         'continuation)))
    (define &UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         UnboundKeyError::t
         'continuation)))
    (define UnboundKeyError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       UnboundKeyError::t
       ':init!
       UnboundKeyError:::init!
       '#f))
    (define raise-unbound-key-error
      (lambda (_%where109788%_ _%message109789%_ . _%irritants109790%_)
        (let ((__tmp109935
               (let ((__obj109928
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj109928
                    _%message109789%_
                    'where:
                    _%where109788%_
                    'irritants:
                    _%irritants109790%_))
                 __obj109928)))
          (declare (not safe))
          (raise __tmp109935))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp109936 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp109936
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTable::t
         '(clear! copy delete! for-each length ref set! update!))))
    (define make-HashTable
      (lambda (_%obj109786%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj109786%_))))
    (define try-HashTable
      (lambda (_%obj109784%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj109784%_))))
    (define HashTable?
      (lambda (_%obj109782%_)
        (let ((__tmp109937
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj109782%_ __tmp109937))))
    (define is-HashTable?
      (lambda (_%obj109780%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj109780%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self109764%_)
        (let* ((_%self109769%_
                (let ((_%$obj109766%_ _%self109764%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109766%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109766%_)))
                           '#t)
                      _%$obj109766%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109766%_)))))
               (_%self109771%_ _%self109769%_))
          (&HashTable-clear! _%self109771%_))))
    (define &HashTable-clear!
      (lambda (_%self109749%_)
        (let ((_%self109751%_ _%self109749%_))
          (declare (not safe))
          (let ((_%obj109761%_
                 (##unchecked-structure-ref _%self109751%_ '1 '#f 'clear!))
                (_%f109762%_
                 (##unchecked-structure-ref _%self109751%_ '2 '#f 'clear!)))
            (_%f109762%_ _%obj109761%_)))))
    (define HashTable-copy
      (lambda (_%self109733%_)
        (let* ((_%self109738%_
                (let ((_%$obj109735%_ _%self109733%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109735%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109735%_)))
                           '#t)
                      _%$obj109735%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109735%_)))))
               (_%self109740%_ _%self109738%_))
          (__HashTable-copy _%self109740%_))))
    (define __HashTable-copy
      (lambda (_%self109720%_)
        (let* ((_%self109722%_ _%self109720%_)
               (_%$obj109730%_ (&HashTable-copy _%self109722%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj109730%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj109730%_)))
                   '#t)
              _%$obj109730%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj109730%_))))))
    (define &HashTable-copy
      (lambda (_%self109705%_)
        (let ((_%self109707%_ _%self109705%_))
          (declare (not safe))
          (let ((_%obj109717%_
                 (##unchecked-structure-ref _%self109707%_ '1 '#f 'copy))
                (_%f109718%_
                 (##unchecked-structure-ref _%self109707%_ '3 '#f 'copy)))
            (_%f109718%_ _%obj109717%_)))))
    (define HashTable-delete!
      (lambda (_%self109688%_ _%key109689%_)
        (let* ((_%self109694%_
                (let ((_%$obj109691%_ _%self109688%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109691%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109691%_)))
                           '#t)
                      _%$obj109691%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109691%_)))))
               (_%self109696%_ _%self109694%_))
          (&HashTable-delete! _%self109696%_ _%key109689%_))))
    (define &HashTable-delete!
      (lambda (_%self109672%_ _%key109673%_)
        (let ((_%self109675%_ _%self109672%_))
          (declare (not safe))
          (let ((_%obj109685%_
                 (##unchecked-structure-ref _%self109675%_ '1 '#f 'delete!))
                (_%f109686%_
                 (##unchecked-structure-ref _%self109675%_ '4 '#f 'delete!)))
            (_%f109686%_ _%obj109685%_ _%key109673%_)))))
    (define HashTable-for-each
      (lambda (_%self109645%_ _%proc109646%_)
        (let* ((_%self109651%_
                (let ((_%$obj109648%_ _%self109645%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109648%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109648%_)))
                           '#t)
                      _%$obj109648%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109648%_)))))
               (_%self109653%_ _%self109651%_))
          (if (procedure? _%proc109646%_)
              (let ((_%proc109662%_ _%proc109646%_))
                (&HashTable-for-each _%self109653%_ _%proc109662%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc109646%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self109621%_ _%proc109622%_)
        (let* ((_%self109624%_ _%self109621%_) (_%proc109631%_ _%proc109622%_))
          (declare (not safe))
          (let ((_%obj109642%_
                 (##unchecked-structure-ref _%self109624%_ '1 '#f 'for-each))
                (_%f109643%_
                 (##unchecked-structure-ref _%self109624%_ '5 '#f 'for-each)))
            (_%f109643%_ _%obj109642%_ _%proc109631%_)))))
    (define HashTable-length
      (lambda (_%self109605%_)
        (let* ((_%self109610%_
                (let ((_%$obj109607%_ _%self109605%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109607%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109607%_)))
                           '#t)
                      _%$obj109607%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109607%_)))))
               (_%self109612%_ _%self109610%_))
          (__HashTable-length _%self109612%_))))
    (define __HashTable-length
      (lambda (_%self109592%_)
        (let* ((_%self109594%_ _%self109592%_)
               (_%val109602%_ (&HashTable-length _%self109594%_)))
          _%val109602%_)))
    (define &HashTable-length
      (lambda (_%self109577%_)
        (let ((_%self109579%_ _%self109577%_))
          (declare (not safe))
          (let ((_%obj109589%_
                 (##unchecked-structure-ref _%self109579%_ '1 '#f 'length))
                (_%f109590%_
                 (##unchecked-structure-ref _%self109579%_ '6 '#f 'length)))
            (_%f109590%_ _%obj109589%_)))))
    (define HashTable-ref
      (lambda (_%self109559%_ _%key109560%_ _%default109561%_)
        (let* ((_%self109566%_
                (let ((_%$obj109563%_ _%self109559%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109563%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109563%_)))
                           '#t)
                      _%$obj109563%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109563%_)))))
               (_%self109568%_ _%self109566%_))
          (&HashTable-ref _%self109568%_ _%key109560%_ _%default109561%_))))
    (define &HashTable-ref
      (lambda (_%self109542%_ _%key109543%_ _%default109544%_)
        (let ((_%self109546%_ _%self109542%_))
          (declare (not safe))
          (let ((_%obj109556%_
                 (##unchecked-structure-ref _%self109546%_ '1 '#f 'ref))
                (_%f109557%_
                 (##unchecked-structure-ref _%self109546%_ '7 '#f 'ref)))
            (_%f109557%_ _%obj109556%_ _%key109543%_ _%default109544%_)))))
    (define HashTable-set!
      (lambda (_%self109524%_ _%key109525%_ _%value109526%_)
        (let* ((_%self109531%_
                (let ((_%$obj109528%_ _%self109524%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109528%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109528%_)))
                           '#t)
                      _%$obj109528%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109528%_)))))
               (_%self109533%_ _%self109531%_))
          (&HashTable-set! _%self109533%_ _%key109525%_ _%value109526%_))))
    (define &HashTable-set!
      (lambda (_%self109507%_ _%key109508%_ _%value109509%_)
        (let ((_%self109511%_ _%self109507%_))
          (declare (not safe))
          (let ((_%obj109521%_
                 (##unchecked-structure-ref _%self109511%_ '1 '#f 'set!))
                (_%f109522%_
                 (##unchecked-structure-ref _%self109511%_ '8 '#f 'set!)))
            (_%f109522%_ _%obj109521%_ _%key109508%_ _%value109509%_)))))
    (define HashTable-update!
      (lambda (_%self109478%_ _%key109479%_ _%proc109480%_ _%default109481%_)
        (let* ((_%self109486%_
                (let ((_%$obj109483%_ _%self109478%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109483%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109483%_)))
                           '#t)
                      _%$obj109483%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109483%_)))))
               (_%self109488%_ _%self109486%_))
          (if (procedure? _%proc109480%_)
              (let ((_%proc109497%_ _%proc109480%_))
                (&HashTable-update!
                 _%self109488%_
                 _%key109479%_
                 _%proc109497%_
                 _%default109481%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc109480%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self109450%_ _%key109451%_ _%proc109452%_ _%default109453%_)
        (let* ((_%self109455%_ _%self109450%_) (_%proc109462%_ _%proc109452%_))
          (declare (not safe))
          (let ((_%obj109473%_
                 (##unchecked-structure-ref _%self109455%_ '1 '#f 'update!))
                (_%f109475%_
                 (##unchecked-structure-ref _%self109455%_ '9 '#f 'update!)))
            (_%f109475%_
             _%obj109473%_
             _%key109451%_
             _%proc109462%_
             _%default109453%_)))))
    (define Locker::t
      (let ((__tmp109938 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp109938
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         Locker::t
         '(read-lock! read-unlock! write-lock! write-unlock!))))
    (define make-Locker
      (lambda (_%obj109448%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj109448%_))))
    (define try-Locker
      (lambda (_%obj109446%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj109446%_))))
    (define Locker?
      (lambda (_%obj109444%_)
        (let ((__tmp109939
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj109444%_ __tmp109939))))
    (define is-Locker?
      (lambda (_%obj109442%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj109442%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self109426%_)
        (let* ((_%self109431%_
                (let ((_%$obj109428%_ _%self109426%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109428%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109428%_)))
                           '#t)
                      _%$obj109428%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109428%_)))))
               (_%self109433%_ _%self109431%_))
          (&Locker-read-lock! _%self109433%_))))
    (define &Locker-read-lock!
      (lambda (_%self109411%_)
        (let ((_%self109413%_ _%self109411%_))
          (declare (not safe))
          (let ((_%obj109423%_
                 (##unchecked-structure-ref _%self109413%_ '1 '#f 'read-lock!))
                (_%f109424%_
                 (##unchecked-structure-ref
                  _%self109413%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f109424%_ _%obj109423%_)))))
    (define Locker-read-unlock!
      (lambda (_%self109395%_)
        (let* ((_%self109400%_
                (let ((_%$obj109397%_ _%self109395%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109397%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109397%_)))
                           '#t)
                      _%$obj109397%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109397%_)))))
               (_%self109402%_ _%self109400%_))
          (&Locker-read-unlock! _%self109402%_))))
    (define &Locker-read-unlock!
      (lambda (_%self109380%_)
        (let ((_%self109382%_ _%self109380%_))
          (declare (not safe))
          (let ((_%obj109392%_
                 (##unchecked-structure-ref
                  _%self109382%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f109393%_
                 (##unchecked-structure-ref
                  _%self109382%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f109393%_ _%obj109392%_)))))
    (define Locker-write-lock!
      (lambda (_%self109364%_)
        (let* ((_%self109369%_
                (let ((_%$obj109366%_ _%self109364%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109366%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109366%_)))
                           '#t)
                      _%$obj109366%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109366%_)))))
               (_%self109371%_ _%self109369%_))
          (&Locker-write-lock! _%self109371%_))))
    (define &Locker-write-lock!
      (lambda (_%self109349%_)
        (let ((_%self109351%_ _%self109349%_))
          (declare (not safe))
          (let ((_%obj109361%_
                 (##unchecked-structure-ref
                  _%self109351%_
                  '1
                  '#f
                  'write-lock!))
                (_%f109362%_
                 (##unchecked-structure-ref
                  _%self109351%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f109362%_ _%obj109361%_)))))
    (define Locker-write-unlock!
      (lambda (_%self109333%_)
        (let* ((_%self109338%_
                (let ((_%$obj109335%_ _%self109333%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109335%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109335%_)))
                           '#t)
                      _%$obj109335%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109335%_)))))
               (_%self109340%_ _%self109338%_))
          (&Locker-write-unlock! _%self109340%_))))
    (define &Locker-write-unlock!
      (lambda (_%self109316%_)
        (let ((_%self109318%_ _%self109316%_))
          (declare (not safe))
          (let ((_%obj109328%_
                 (##unchecked-structure-ref
                  _%self109318%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f109330%_
                 (##unchecked-structure-ref
                  _%self109318%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f109330%_ _%obj109328%_)))))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'clear! gc-table-clear!))
    (define gambit-table-update!
      (lambda (_%table109309%_
               _%key109310%_
               _%update109311%_
               _%default109312%_)
        (let ((_%result109314%_
               (table-ref _%table109309%_ _%key109310%_ _%default109312%_)))
          (table-set!
           _%table109309%_
           _%key109310%_
           (_%update109311%_ _%default109312%_)))))
    (define gambit-table-for-each
      (lambda (_%table109306%_ _%proc109307%_)
        (table-for-each _%proc109307%_ _%table109306%_)))
    (define gambit-table-clear!
      (lambda (_%table109304%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table109304%_ '0 '5 '#f '#f))))
    (let ((__tmp109940 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109940 'ref table-ref))
    (let ((__tmp109941 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109941 'set! table-set!))
    (let ((__tmp109942 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109942 'update! gambit-table-update!))
    (let ((__tmp109943 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109943 'delete! table-set!))
    (let ((__tmp109944 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109944 'for-each gambit-table-for-each))
    (let ((__tmp109945 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109945 'length table-length))
    (let ((__tmp109946 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109946 'copy table-copy))
    (let ((__tmp109947 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109947 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots109286%_ '(table count free hash test seed))
             (_%slot-vector109288%_ (list->vector (cons '#f _%slots109286%_)))
             (_%slot-table109295%_
              (let ((_%slot-table109290%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp109950
                       (lambda (_%slot109292%_ _%field109293%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109290%_
                            _%slot109292%_
                            _%field109293%_))
                         (let ((__tmp109951
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot109292%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109290%_
                            __tmp109951
                            _%field109293%_))))
                      (__tmp109948
                       (let ((__tmp109949
                              (let ()
                                (declare (not safe))
                                (##length _%slots109286%_))))
                         (declare (not safe))
                         (##iota __tmp109949 '1))))
                  (declare (not safe))
                  (##for-each __tmp109950 _%slots109286%_ __tmp109948))
                _%slot-table109290%_))
             (_%flags109297%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields109299%_ '#())
             (_%properties109301%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots109286%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp109952 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags109297%_
         __table::t
         _%fields109299%_
         __tmp109952
         _%slot-vector109288%_
         _%slot-table109295%_
         _%properties109301%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots109268%_ '(gcht immediate))
             (_%slot-vector109270%_ (list->vector (cons '#f _%slots109268%_)))
             (_%slot-table109277%_
              (let ((_%slot-table109272%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp109955
                       (lambda (_%slot109274%_ _%field109275%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109272%_
                            _%slot109274%_
                            _%field109275%_))
                         (let ((__tmp109956
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot109274%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109272%_
                            __tmp109956
                            _%field109275%_))))
                      (__tmp109953
                       (let ((__tmp109954
                              (let ()
                                (declare (not safe))
                                (##length _%slots109268%_))))
                         (declare (not safe))
                         (##iota __tmp109954 '1))))
                  (declare (not safe))
                  (##for-each __tmp109955 _%slots109268%_ __tmp109953))
                _%slot-table109272%_))
             (_%flags109279%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields109281%_ '#())
             (_%properties109283%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots109268%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp109957 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags109279%_
         __gc-table::t
         _%fields109281%_
         __tmp109957
         _%slot-vector109270%_
         _%slot-table109277%_
         _%properties109283%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp109959 (list))
            (__tmp109958
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp109959
         '(table lock)
         __tmp109958
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args109265%_
        (apply make-instance locked-hash-table::t _%$args109265%_)))
    (define locked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor locked-hash-table::t 'table)))
    (define locked-hash-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor locked-hash-table::t 'lock)))
    (define locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator locked-hash-table::t 'table)))
    (define locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator locked-hash-table::t 'lock)))
    (define &locked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor locked-hash-table::t 'table)))
    (define &locked-hash-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor locked-hash-table::t 'lock)))
    (define &locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator locked-hash-table::t 'table)))
    (define &locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator locked-hash-table::t 'lock)))
    (define checked-hash-table::t
      (let ((__tmp109961 (list))
            (__tmp109960
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp109961
         '(table key-check)
         __tmp109960
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args109262%_
        (apply make-instance checked-hash-table::t _%$args109262%_)))
    (define checked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor checked-hash-table::t 'table)))
    (define checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor checked-hash-table::t 'key-check)))
    (define checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator checked-hash-table::t 'table)))
    (define checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator checked-hash-table::t 'key-check)))
    (define &checked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         checked-hash-table::t
         'key-check)))
    (define &checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         checked-hash-table::t
         'key-check)))
    (define eq-hash-table::t
      (let ((__tmp109963 (list hash-table::t))
            (__tmp109962 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp109963
         '()
         __tmp109962
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args109259%_
        (apply make-instance eq-hash-table::t _%$args109259%_)))
    (define eqv-hash-table::t
      (let ((__tmp109965 (list hash-table::t))
            (__tmp109964 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp109965
         '()
         __tmp109964
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args109256%_
        (apply make-instance eqv-hash-table::t _%$args109256%_)))
    (define symbol-hash-table::t
      (let ((__tmp109967 (list hash-table::t))
            (__tmp109966 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp109967
         '()
         __tmp109966
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args109253%_
        (apply make-instance symbol-hash-table::t _%$args109253%_)))
    (define string-hash-table::t
      (let ((__tmp109969 (list hash-table::t))
            (__tmp109968 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp109969
         '()
         __tmp109968
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args109250%_
        (apply make-instance string-hash-table::t _%$args109250%_)))
    (define immediate-hash-table::t
      (let ((__tmp109971 (list hash-table::t))
            (__tmp109970 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp109971
         '()
         __tmp109970
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args109247%_
        (apply make-instance immediate-hash-table::t _%$args109247%_)))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'ref eq-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'set! eq-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'update! eq-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'delete! eq-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'ref eqv-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'set! eqv-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'update! eqv-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'delete! eqv-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 symbol-hash-table::t 'ref symbolic-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 symbol-hash-table::t 'set! symbolic-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 symbol-hash-table::t 'update! symbolic-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 symbol-hash-table::t 'delete! symbolic-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'ref string-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'set! string-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'update! string-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'delete! string-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 immediate-hash-table::t 'ref immediate-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 immediate-hash-table::t 'set! immediate-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'update!
       immediate-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'delete!
       immediate-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'clear! gc-table-clear!))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::ref105247%_
      (lambda (_%self105246109221%_ _%key109223%_ _%default109224%_)
        (let* ((_%self109226%_ _%self105246109221%_)
               (_%self109229%_ _%self109226%_))
          (let ((_%h109239%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109229%_ '1 '#f '#f)))
                (_%l109241%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109229%_ '2 '#f '#f))))
            (let ((__tmp109974 (lambda () (&Locker-read-lock! _%l109241%_)))
                  (__tmp109973
                   (lambda ()
                     (&HashTable-ref
                      _%h109239%_
                      _%key109223%_
                      _%default109224%_)))
                  (__tmp109972 (lambda () (&Locker-read-unlock! _%l109241%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109974 __tmp109973 __tmp109972))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref105247%_
       '#f))
    (define _%locked-hash-table::set!105250%_
      (lambda (_%self105249109072%_ _%key109074%_ _%value109075%_)
        (let* ((_%self109077%_ _%self105249109072%_)
               (_%self109080%_ _%self109077%_))
          (let ((_%h109090%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109080%_ '1 '#f '#f)))
                (_%l109092%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109080%_ '2 '#f '#f))))
            (let ((__tmp109977 (lambda () (&Locker-write-lock! _%l109092%_)))
                  (__tmp109976
                   (lambda ()
                     (&HashTable-set!
                      _%h109090%_
                      _%key109074%_
                      _%value109075%_)))
                  (__tmp109975
                   (lambda () (&Locker-write-unlock! _%l109092%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109977 __tmp109976 __tmp109975))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!105250%_
       '#f))
    (define _%locked-hash-table::update!105253%_
      (lambda (_%self105252108922%_
               _%key108924%_
               _%update108925%_
               _%default108926%_)
        (let* ((_%self108928%_ _%self105252108922%_)
               (_%self108931%_ _%self108928%_))
          (let ((_%h108941%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108931%_ '1 '#f '#f)))
                (_%l108943%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108931%_ '2 '#f '#f))))
            (let ((__tmp109980 (lambda () (&Locker-write-lock! _%l108943%_)))
                  (__tmp109979
                   (lambda ()
                     (&HashTable-update!
                      _%h108941%_
                      _%key108924%_
                      _%update108925%_
                      _%default108926%_)))
                  (__tmp109978
                   (lambda () (&Locker-write-unlock! _%l108943%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109980 __tmp109979 __tmp109978))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!105253%_
       '#f))
    (define _%locked-hash-table::delete!105256%_
      (lambda (_%self105255108774%_ _%key108776%_)
        (let* ((_%self108778%_ _%self105255108774%_)
               (_%self108781%_ _%self108778%_))
          (let ((_%h108791%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108781%_ '1 '#f '#f)))
                (_%l108793%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108781%_ '2 '#f '#f))))
            (let ((__tmp109983 (lambda () (&Locker-write-lock! _%l108793%_)))
                  (__tmp109982
                   (lambda () (&HashTable-delete! _%h108791%_ _%key108776%_)))
                  (__tmp109981
                   (lambda () (&Locker-write-unlock! _%l108793%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109983 __tmp109982 __tmp109981))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!105256%_
       '#f))
    (define _%locked-hash-table::for-each105259%_
      (lambda (_%self105258108626%_ _%proc108628%_)
        (let* ((_%self108630%_ _%self105258108626%_)
               (_%self108633%_ _%self108630%_))
          (let ((_%h108643%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108633%_ '1 '#f '#f)))
                (_%l108645%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108633%_ '2 '#f '#f))))
            (let ((__tmp109986 (lambda () (&Locker-read-lock! _%l108645%_)))
                  (__tmp109985
                   (lambda ()
                     (&HashTable-for-each _%h108643%_ _%proc108628%_)))
                  (__tmp109984 (lambda () (&Locker-read-unlock! _%l108645%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109986 __tmp109985 __tmp109984))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each105259%_
       '#f))
    (define _%locked-hash-table::length105262%_
      (lambda (_%self105261108479%_)
        (let* ((_%self108482%_ _%self105261108479%_)
               (_%self108485%_ _%self108482%_))
          (let ((_%h108495%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108485%_ '1 '#f '#f)))
                (_%l108497%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108485%_ '2 '#f '#f))))
            (let ((__tmp109989 (lambda () (&Locker-read-lock! _%l108497%_)))
                  (__tmp109988 (lambda () (&HashTable-length _%h108495%_)))
                  (__tmp109987 (lambda () (&Locker-read-unlock! _%l108497%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109989 __tmp109988 __tmp109987))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length105262%_
       '#f))
    (define _%locked-hash-table::copy105265%_
      (lambda (_%self105264108332%_)
        (let* ((_%self108335%_ _%self105264108332%_)
               (_%self108338%_ _%self108335%_))
          (let ((_%h108348%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108338%_ '1 '#f '#f)))
                (_%l108350%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108338%_ '2 '#f '#f))))
            (let ((__tmp109992 (lambda () (&Locker-read-lock! _%l108350%_)))
                  (__tmp109991 (lambda () (&HashTable-copy _%h108348%_)))
                  (__tmp109990 (lambda () (&Locker-read-unlock! _%l108350%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109992 __tmp109991 __tmp109990))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy105265%_
       '#f))
    (define _%locked-hash-table::clear!105268%_
      (lambda (_%self105267108185%_)
        (let* ((_%self108188%_ _%self105267108185%_)
               (_%self108191%_ _%self108188%_))
          (let ((_%h108201%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108191%_ '1 '#f '#f)))
                (_%l108203%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108191%_ '2 '#f '#f))))
            (let ((__tmp109995 (lambda () (&Locker-write-lock! _%l108203%_)))
                  (__tmp109994 (lambda () (&HashTable-clear! _%h108201%_)))
                  (__tmp109993
                   (lambda () (&Locker-write-unlock! _%l108203%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109995 __tmp109994 __tmp109993))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!105268%_
       '#f))
    (let ((__tmp109996 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp109996 'read-lock! mutex-lock!))
    (let ((__tmp109997 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp109997 'read-unlock! mutex-unlock!))
    (let ((__tmp109998 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp109998 'write-lock! mutex-lock!))
    (let ((__tmp109999 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp109999 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref105482%_
      (lambda (_%self105481108035%_ _%key108037%_ _%default108038%_)
        (let* ((_%self108040%_ _%self105481108035%_)
               (_%self108042%_ _%self108040%_))
          (declare (not safe))
          (let ((_%h108053%_
                 (##unchecked-structure-ref _%self108042%_ '1 '#f '#f))
                (_%key?108055%_
                 (##unchecked-structure-ref _%self108042%_ '2 '#f '#f)))
            (if ((lambda (_%key?108058%_ _%key108059%_ _%default108060%_)
                   (_%key?108058%_ _%key108059%_))
                 _%key?108055%_
                 _%key108037%_
                 _%default108038%_)
                (&HashTable-ref _%h108053%_ _%key108037%_ _%default108038%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key108037%_ (cons _%default108038%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref105482%_
       '#f))
    (define _%checked-hash-table::set!105485%_
      (lambda (_%self105484107885%_ _%key107887%_ _%value107888%_)
        (let* ((_%self107890%_ _%self105484107885%_)
               (_%self107892%_ _%self107890%_))
          (declare (not safe))
          (let ((_%h107903%_
                 (##unchecked-structure-ref _%self107892%_ '1 '#f '#f))
                (_%key?107905%_
                 (##unchecked-structure-ref _%self107892%_ '2 '#f '#f)))
            (if ((lambda (_%key?107908%_ _%key107909%_ _%value107910%_)
                   (_%key?107908%_ _%key107909%_))
                 _%key?107905%_
                 _%key107887%_
                 _%value107888%_)
                (&HashTable-set! _%h107903%_ _%key107887%_ _%value107888%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key107887%_ (cons _%value107888%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!105485%_
       '#f))
    (define _%checked-hash-table::update!105488%_
      (lambda (_%self105487107733%_
               _%key107735%_
               _%update107736%_
               _%default107737%_)
        (let* ((_%self107739%_ _%self105487107733%_)
               (_%self107741%_ _%self107739%_))
          (declare (not safe))
          (let ((_%h107752%_
                 (##unchecked-structure-ref _%self107741%_ '1 '#f '#f))
                (_%key?107754%_
                 (##unchecked-structure-ref _%self107741%_ '2 '#f '#f)))
            (if ((lambda (_%key?107757%_
                          _%key107758%_
                          _%update107759%_
                          _%default107760%_)
                   (_%key?107757%_ _%key107758%_))
                 _%key?107754%_
                 _%key107735%_
                 _%update107736%_
                 _%default107737%_)
                (&HashTable-update!
                 _%h107752%_
                 _%key107735%_
                 _%update107736%_
                 _%default107737%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key107735%_
                         (cons _%update107736%_ (cons _%default107737%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!105488%_
       '#f))
    (define _%checked-hash-table::delete!105491%_
      (lambda (_%self105490107585%_ _%key107587%_)
        (let* ((_%self107589%_ _%self105490107585%_)
               (_%self107591%_ _%self107589%_))
          (declare (not safe))
          (let ((_%h107602%_
                 (##unchecked-structure-ref _%self107591%_ '1 '#f '#f))
                (_%key?107604%_
                 (##unchecked-structure-ref _%self107591%_ '2 '#f '#f)))
            (if ((lambda (_%key?107607%_ _%key107608%_)
                   (_%key?107607%_ _%key107608%_))
                 _%key?107604%_
                 _%key107587%_)
                (&HashTable-delete! _%h107602%_ _%key107587%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key107587%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!105491%_
       '#f))
    (define _%checked-hash-table::for-each105494%_
      (lambda (_%self105493107437%_ _%proc107439%_)
        (let* ((_%self107441%_ _%self105493107437%_)
               (_%self107443%_ _%self107441%_))
          (declare (not safe))
          (let ((_%h107454%_
                 (##unchecked-structure-ref _%self107443%_ '1 '#f '#f))
                (_%key?107456%_
                 (##unchecked-structure-ref _%self107443%_ '2 '#f '#f)))
            (if ((lambda (_%key?107459%_ _%proc107460%_) '#t)
                 _%key?107456%_
                 _%proc107439%_)
                (&HashTable-for-each _%h107454%_ _%proc107439%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc107439%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each105494%_
       '#f))
    (define _%checked-hash-table::length105497%_
      (lambda (_%self105496107293%_)
        (let* ((_%self107296%_ _%self105496107293%_)
               (_%self107298%_ _%self107296%_))
          (declare (not safe))
          (let ((_%h107309%_
                 (##unchecked-structure-ref _%self107298%_ '1 '#f '#f))
                (_%key?107311%_
                 (##unchecked-structure-ref _%self107298%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h107309%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-length
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'length
       _%checked-hash-table::length105497%_
       '#f))
    (define _%checked-hash-table::copy105500%_
      (lambda (_%self105499107149%_)
        (let* ((_%self107152%_ _%self105499107149%_)
               (_%self107154%_ _%self107152%_))
          (declare (not safe))
          (let ((_%h107165%_
                 (##unchecked-structure-ref _%self107154%_ '1 '#f '#f))
                (_%key?107167%_
                 (##unchecked-structure-ref _%self107154%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h107165%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-copy
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy105500%_
       '#f))
    (define _%checked-hash-table::clear!105503%_
      (lambda (_%self105502107005%_)
        (let* ((_%self107008%_ _%self105502107005%_)
               (_%self107010%_ _%self107008%_))
          (declare (not safe))
          (let ((_%h107021%_
                 (##unchecked-structure-ref _%self107010%_ '1 '#f '#f))
                (_%key?107023%_
                 (##unchecked-structure-ref _%self107010%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h107021%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-clear!
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!105503%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table106875%_
               _%count106876%_
               _%free106877%_
               _%hash106878%_
               _%test106879%_
               _%seed106880%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table106875%_
           _%count106876%_
           _%free106877%_
           _%hash106878%_
           _%test106879%_
           _%seed106880%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords106636%_
               _%size-hint106626106637%_
               _%seed106627106639%_
               _%test106628106641%_
               _%hash106629106643%_
               _%lock106630106645%_
               _%check106631106647%_
               _%weak-keys106632106649%_
               _%weak-values106633106651%_)
        (let* ((_%size-hint106654%_
                (if (eq? _%size-hint106626106637%_ absent-value)
                    '#f
                    _%size-hint106626106637%_))
               (_%seed106656%_
                (if (eq? _%seed106627106639%_ absent-value)
                    '#f
                    _%seed106627106639%_))
               (_%test106658%_
                (if (eq? _%test106628106641%_ absent-value)
                    equal?
                    _%test106628106641%_))
               (_%hash106660%_
                (if (eq? _%hash106629106643%_ absent-value)
                    '#f
                    _%hash106629106643%_))
               (_%lock106662%_
                (if (eq? _%lock106630106645%_ absent-value)
                    '#f
                    _%lock106630106645%_))
               (_%check106664%_
                (if (eq? _%check106631106647%_ absent-value)
                    '#f
                    _%check106631106647%_))
               (_%weak-keys106666%_
                (if (eq? _%weak-keys106632106649%_ absent-value)
                    '#f
                    _%weak-keys106632106649%_))
               (_%weak-values106668%_
                (if (eq? _%weak-values106633106651%_ absent-value)
                    '#f
                    _%weak-values106633106651%_)))
          (letrec ((_%table-seed106671%_
                    (lambda ()
                      (if (fixnum? _%seed106656%_)
                          _%seed106656%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock106672%_
                    (lambda (_%ht106849%_)
                      (let ((_%ht106852%_ _%ht106849%_))
                        (_%__wrap-lock106673%_ _%ht106852%_))))
                   (_%__wrap-lock106673%_
                    (lambda (_%ht106831%_)
                      (let ((_%ht106834%_ _%ht106831%_))
                        (if _%lock106662%_
                            (let ((_%$obj106846%_
                                   (let ((__tmp110000
                                          (let ((_%$obj106843%_
                                                 _%lock106662%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj106843%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj106843%_)))
                                                     '#t)
                                                _%$obj106843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj106843%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht106834%_
                                      __tmp110000))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj106846%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj106846%_)))
                                       '#t)
                                  _%$obj106846%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj106846%_))))
                            _%ht106834%_))))
                   (_%wrap-checked106674%_
                    (lambda (_%ht106818%_ _%implicit106819%_)
                      (let ((_%ht106822%_ _%ht106818%_))
                        (_%__wrap-checked106675%_
                         _%ht106822%_
                         _%implicit106819%_))))
                   (_%__wrap-checked106675%_
                    (lambda (_%ht106791%_ _%implicit106792%_)
                      (let ((_%ht106795%_ _%ht106791%_))
                        (if _%check106664%_
                            (let ((_%$obj106815%_
                                   (let ((__tmp110001
                                          (if (procedure? _%check106664%_)
                                              _%check106664%_
                                              _%implicit106792%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht106795%_
                                      __tmp110001))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj106815%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj106815%_)))
                                       '#t)
                                  _%$obj106815%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj106815%_))))
                            _%ht106795%_))))
                   (_%make106676%_
                    (lambda (_%kons106775%_
                             _%key?106776%_
                             _%hash106777%_
                             _%test106778%_)
                      (let* ((_%size106781%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint106654%_)))
                             (_%table106783%_
                              (let ((__tmp110002 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size106781%_ __tmp110002)))
                             (_%ht106788%_
                              (let ((_%$obj106785%_
                                     (_%kons106775%_
                                      _%table106783%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size106781%_ '2))
                                      _%hash106777%_
                                      _%test106778%_
                                      (_%table-seed106671%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj106785%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj106785%_)))
                                         '#t)
                                    _%$obj106785%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj106785%_))))))
                        (_%__wrap-checked106675%_
                         (_%__wrap-lock106673%_ _%ht106788%_)
                         _%key?106776%_))))
                   (_%make-gc-hash-table106677%_
                    (lambda ()
                      (let ((_%ht106773%_
                             (let ((_%$obj106770%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint106654%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj106770%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj106770%_)))
                                        '#t)
                                   _%$obj106770%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj106770%_))))))
                        (_%__wrap-checked106675%_
                         (_%__wrap-lock106673%_ _%ht106773%_)
                         true))))
                   (_%make-gambit-table106678%_
                    (lambda ()
                      (let* ((_%size106747%_
                              (let ((_%$e106744%_ _%size-hint106654%_))
                                (if _%$e106744%_
                                    _%$e106744%_
                                    (macro-absent-obj))))
                             (_%test106752%_
                              (let ((_%$e106749%_ _%test106658%_))
                                (if _%$e106749%_ _%$e106749%_ equal?)))
                             (_%hash106760%_
                              (let ((_%$e106754%_ _%hash106660%_))
                                (if _%$e106754%_
                                    _%$e106754%_
                                    (if (eq? _%test106752%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test106752%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht106765%_
                              (let ((_%$obj106762%_
                                     (make-table
                                      'size:
                                      _%size106747%_
                                      'test:
                                      _%test106752%_
                                      'hash:
                                      _%hash106760%_
                                      'weak-keys:
                                      _%weak-keys106666%_
                                      'weak-values:
                                      _%weak-values106668%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj106762%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj106762%_)))
                                         '#t)
                                    _%$obj106762%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj106762%_))))))
                        (_%__wrap-checked106675%_
                         (_%__wrap-lock106673%_ _%ht106765%_)
                         true)))))
            (if (or _%weak-keys106666%_ _%weak-values106668%_)
                (_%make-gambit-table106678%_)
                (if (and (or (eq? _%test106658%_ eq?)
                             (eq? _%test106658%_ ##eq?))
                         (or (not _%hash106660%_)
                             (eq? _%hash106660%_ eq?-hash)
                             (eq? _%hash106660%_ eq-hash))
                         (not _%seed106656%_))
                    (_%make-gc-hash-table106677%_)
                    (if (and (or (eq? _%test106658%_ eq?)
                                 (eq? _%test106658%_ ##eq?))
                             (or (not _%hash106660%_)
                                 (eq? _%hash106660%_ eq?-hash)
                                 (eq? _%hash106660%_ eq-hash)))
                        (_%make106676%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test106658%_ eqv?)
                                     (eq? _%test106658%_ ##eqv?))
                                 (or (not _%hash106660%_)
                                     (eq? _%hash106660%_ eqv?-hash)
                                     (eq? _%hash106660%_ eqv-hash)))
                            (_%make106676%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test106658%_ eq?)
                                         (eq? _%test106658%_ ##eq?))
                                     (or (eq? _%hash106660%_ symbolic-hash)
                                         (eq? _%hash106660%_ ##symbol-hash)))
                                (_%make106676%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test106658%_ eq?)
                                             (eq? _%test106658%_ ##eq?))
                                         (eq? _%hash106660%_ immediate-hash))
                                    (_%make106676%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test106658%_ equal?)
                                                 (eq? _%test106658%_ ##equal?)
                                                 (eq? _%test106658%_ string=?)
                                                 (eq? _%test106658%_
                                                      ##string=?))
                                             (or (eq? _%hash106660%_
                                                      string-hash)
                                                 (eq? _%hash106660%_
                                                      ##string=?-hash)))
                                        (_%make106676%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test106658%_ equal?)
                                                 (not _%hash106660%_))
                                            (_%make106676%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test106658%_)
                                                (if (procedure? _%hash106660%_)
                                                    (_%make106676%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash106660%_
                                                     _%test106658%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash106660%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test106658%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords106865%_ . _%args106866%_)
        (apply make-hash-table__%
               _%@@keywords106865%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106865%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106865%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106865%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106865%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106865%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords106865%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords106865%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords106865%_
                  'weak-values:
                  absent-value))
               _%args106866%_)))
    (define make-hash-table
      (lambda _%args106634106872%_
        (apply keyword-dispatch
               '#(#f
                  #f
                  weak-values:
                  #f
                  #f
                  test:
                  #f
                  #f
                  #f
                  hash:
                  #f
                  #f
                  size:
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  seed:
                  #f
                  #f
                  #f
                  weak-keys:
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  check:
                  #f
                  #f
                  lock:
                  #f
                  #f
                  #f
                  #f
                  #f)
               make-hash-table__@
               _%args106634106872%_)))
    (define make-hash-table-eq
      (lambda _%args106623%_
        (apply make-hash-table 'test: eq? _%args106623%_)))
    (define make-hash-table-eqv
      (lambda _%args106621%_
        (apply make-hash-table 'test: eqv? _%args106621%_)))
    (define make-hash-table-symbolic
      (lambda _%args106619%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args106619%_)))
    (define make-hash-table-string
      (lambda _%args106617%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args106617%_)))
    (define make-hash-table-immediate
      (lambda _%args106615%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args106615%_)))
    (define list->hash-table
      (lambda (_%lst106612%_ . _%args106613%_)
        (list->hash-table!
         _%lst106612%_
         (apply make-hash-table
                'size:
                (length _%lst106612%_)
                _%args106613%_))))
    (define list->hash-table-eq
      (lambda (_%lst106609%_ . _%args106610%_)
        (list->hash-table!
         _%lst106609%_
         (apply make-hash-table-eq
                'size:
                (length _%lst106609%_)
                _%args106610%_))))
    (define list->hash-table-eqv
      (lambda (_%lst106606%_ . _%args106607%_)
        (list->hash-table!
         _%lst106606%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst106606%_)
                _%args106607%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst106603%_ . _%args106604%_)
        (list->hash-table!
         _%lst106603%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst106603%_)
                _%args106604%_))))
    (define list->hash-table-string
      (lambda (_%lst106600%_ . _%args106601%_)
        (list->hash-table!
         _%lst106600%_
         (apply make-hash-table-string
                'size:
                (length _%lst106600%_)
                _%args106601%_))))
    (define list->hash-table-immediate
      (lambda (_%lst106597%_ . _%args106598%_)
        (list->hash-table!
         _%lst106597%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst106597%_)
                _%args106598%_))))
    (define list->hash-table!
      (lambda (_%lst106564%_ _%h106565%_)
        (for-each
         (lambda (_%el106567%_)
           (let* ((_%el106568106575%_ _%el106567%_)
                  (_%E106570106579%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el106568106575%_
                              '([k . v])))
                     '#!void))
                  (_%K106571106585%_
                   (lambda (_%v106582%_ _%k106583%_)
                     (&HashTable-set! _%h106565%_ _%k106583%_ _%v106582%_))))
             (if (pair? _%el106568106575%_)
                 (let ((_%hd106572106588%_
                        (let ()
                          (declare (not safe))
                          (##car _%el106568106575%_)))
                       (_%tl106573106590%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el106568106575%_))))
                   (let* ((_%k106593%_ _%hd106572106588%_)
                          (_%v106595%_ _%tl106573106590%_))
                     (_%K106571106585%_ _%v106595%_ _%k106593%_)))
                 (_%E106570106579%_))))
         _%lst106564%_)
        _%h106565%_))
    (define plist->hash-table
      (lambda (_%lst106561%_ . _%args106562%_)
        (plist->hash-table!
         _%lst106561%_
         (apply make-hash-table
                'size:
                (length _%lst106561%_)
                _%args106562%_))))
    (define plist->hash-table-eq
      (lambda (_%lst106558%_ . _%args106559%_)
        (plist->hash-table!
         _%lst106558%_
         (apply make-hash-table-eq
                'size:
                (length _%lst106558%_)
                _%args106559%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst106555%_ . _%args106556%_)
        (plist->hash-table!
         _%lst106555%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst106555%_)
                _%args106556%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst106552%_ . _%args106553%_)
        (plist->hash-table!
         _%lst106552%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst106552%_)
                _%args106553%_))))
    (define plist->hash-table-string
      (lambda (_%lst106549%_ . _%args106550%_)
        (plist->hash-table!
         _%lst106549%_
         (apply make-hash-table-string
                'size:
                (length _%lst106549%_)
                _%args106550%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst106546%_ . _%args106547%_)
        (plist->hash-table!
         _%lst106546%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst106546%_)
                _%args106547%_))))
    (define plist->hash-table!
      (lambda (_%lst106486%_ _%h106487%_)
        (let _%loop106489%_ ((_%rest106491%_ _%lst106486%_))
          (let* ((_%rest106492106504%_ _%rest106491%_)
                 (_%else106495106512%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst106486%_)))))
            (let ((_%K106498106527%_
                   (lambda (_%rest106523%_ _%val106524%_ _%key106525%_)
                     (&HashTable-set! _%h106487%_ _%key106525%_ _%val106524%_)
                     (_%loop106489%_ _%rest106523%_)))
                  (_%K106497106517%_ (lambda () _%h106487%_)))
              (let ((_%try-match106494106520%_
                     (lambda ()
                       (if (null? _%rest106492106504%_)
                           (_%K106497106517%_)
                           (_%else106495106512%_)))))
                (if (pair? _%rest106492106504%_)
                    (let ((_%tl106500106532%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest106492106504%_)))
                          (_%hd106499106530%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest106492106504%_))))
                      (if (pair? _%tl106500106532%_)
                          (let ((_%tl106502106539%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl106500106532%_)))
                                (_%hd106501106537%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl106500106532%_))))
                            (let ((_%key106535%_ _%hd106499106530%_)
                                  (_%val106542%_ _%hd106501106537%_)
                                  (_%rest106544%_ _%tl106502106539%_))
                              (_%K106498106527%_
                               _%rest106544%_
                               _%val106542%_
                               _%key106535%_)))
                          (_%else106495106512%_)))
                    (_%try-match106494106520%_))))))))
    (define hash-length
      (lambda (_%h106468%_)
        (let* ((_%h106474%_
                (let ((_%$obj106471%_ _%h106468%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106471%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106471%_)))
                           '#t)
                      _%$obj106471%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106471%_)))))
               (_%h106476%_ _%h106474%_))
          (__hash-length _%h106476%_))))
    (define __hash-length
      (lambda (_%h106456%_)
        (let ((_%h106459%_ _%h106456%_)) (__HashTable-length _%h106459%_))))
    (define hash-ref__%
      (lambda (_%h106424%_ _%key106425%_ _%default106426%_)
        (let* ((_%h106432%_
                (let ((_%$obj106429%_ _%h106424%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106429%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106429%_)))
                           '#t)
                      _%$obj106429%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106429%_)))))
               (_%h106434%_ _%h106432%_))
          (__hash-ref__% _%h106434%_ _%key106425%_ _%default106426%_))))
    (define hash-ref__0
      (lambda (_%h106447%_ _%key106448%_)
        (let ((_%default106450%_ (macro-absent-obj)))
          (hash-ref__% _%h106447%_ _%key106448%_ _%default106450%_))))
    (define hash-ref
      (lambda _g110004_
        (let ((_g110003_ (let () (declare (not safe)) (##length _g110004_))))
          (cond ((let () (declare (not safe)) (##fx= _g110003_ 2))
                 (apply hash-ref__0 _g110004_))
                ((let () (declare (not safe)) (##fx= _g110003_ 3))
                 (apply hash-ref__% _g110004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g110004_))))))
    (define __hash-ref__%
      (lambda (_%h106395%_ _%key106396%_ _%default106397%_)
        (let* ((_%h106400%_ _%h106395%_)
               (_%result106409%_
                (&HashTable-ref _%h106400%_ _%key106396%_ _%default106397%_)))
          (if (eq? _%result106409%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h106400%_
               'key:
               _%key106396%_)
              _%result106409%_))))
    (define __hash-ref__0
      (lambda (_%h106414%_ _%key106415%_)
        (let ((_%default106417%_ (macro-absent-obj)))
          (__hash-ref__% _%h106414%_ _%key106415%_ _%default106417%_))))
    (define __hash-ref
      (lambda _g110006_
        (let ((_g110005_ (let () (declare (not safe)) (##length _g110006_))))
          (cond ((let () (declare (not safe)) (##fx= _g110005_ 2))
                 (apply __hash-ref__0 _g110006_))
                ((let () (declare (not safe)) (##fx= _g110005_ 3))
                 (apply __hash-ref__% _g110006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g110006_))))))
    (define hash-get
      (lambda (_%h106375%_ _%key106376%_)
        (let* ((_%h106382%_
                (let ((_%$obj106379%_ _%h106375%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106379%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106379%_)))
                           '#t)
                      _%$obj106379%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106379%_)))))
               (_%h106384%_ _%h106382%_))
          (__hash-get _%h106384%_ _%key106376%_))))
    (define __hash-get
      (lambda (_%h106362%_ _%key106363%_)
        (let ((_%h106366%_ _%h106362%_))
          (&HashTable-ref _%h106366%_ _%key106363%_ '#f))))
    (define hash-put!
      (lambda (_%h106342%_ _%key106343%_ _%value106344%_)
        (let* ((_%h106350%_
                (let ((_%$obj106347%_ _%h106342%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106347%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106347%_)))
                           '#t)
                      _%$obj106347%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106347%_)))))
               (_%h106352%_ _%h106350%_))
          (__hash-put! _%h106352%_ _%key106343%_ _%value106344%_))))
    (define __hash-put!
      (lambda (_%h106328%_ _%key106329%_ _%value106330%_)
        (let ((_%h106333%_ _%h106328%_))
          (&HashTable-set! _%h106333%_ _%key106329%_ _%value106330%_))))
    (define hash-update!__%
      (lambda (_%h106293%_ _%key106294%_ _%update106295%_ _%default106296%_)
        (let* ((_%h106302%_
                (let ((_%$obj106299%_ _%h106293%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106299%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106299%_)))
                           '#t)
                      _%$obj106299%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106299%_)))))
               (_%h106304%_ _%h106302%_))
          (__hash-update!__%
           _%h106304%_
           _%key106294%_
           _%update106295%_
           _%default106296%_))))
    (define hash-update!__0
      (lambda (_%h106317%_ _%key106318%_ _%update106319%_)
        (let ((_%default106321%_ '#!void))
          (hash-update!__%
           _%h106317%_
           _%key106318%_
           _%update106319%_
           _%default106321%_))))
    (define hash-update!
      (lambda _g110008_
        (let ((_g110007_ (let () (declare (not safe)) (##length _g110008_))))
          (cond ((let () (declare (not safe)) (##fx= _g110007_ 3))
                 (apply hash-update!__0 _g110008_))
                ((let () (declare (not safe)) (##fx= _g110007_ 4))
                 (apply hash-update!__% _g110008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g110008_))))))
    (define __hash-update!__%
      (lambda (_%h106263%_ _%key106264%_ _%update106265%_ _%default106266%_)
        (let ((_%h106269%_ _%h106263%_))
          (HashTable-update!
           _%h106269%_
           _%key106264%_
           _%update106265%_
           _%default106266%_))))
    (define __hash-update!__0
      (lambda (_%h106281%_ _%key106282%_ _%update106283%_)
        (let ((_%default106285%_ '#!void))
          (__hash-update!__%
           _%h106281%_
           _%key106282%_
           _%update106283%_
           _%default106285%_))))
    (define __hash-update!
      (lambda _g110010_
        (let ((_g110009_ (let () (declare (not safe)) (##length _g110010_))))
          (cond ((let () (declare (not safe)) (##fx= _g110009_ 3))
                 (apply __hash-update!__0 _g110010_))
                ((let () (declare (not safe)) (##fx= _g110009_ 4))
                 (apply __hash-update!__% _g110010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g110010_))))))
    (define hash-remove!
      (lambda (_%h106243%_ _%key106244%_)
        (let* ((_%h106250%_
                (let ((_%$obj106247%_ _%h106243%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106247%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106247%_)))
                           '#t)
                      _%$obj106247%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106247%_)))))
               (_%h106252%_ _%h106250%_))
          (__hash-remove! _%h106252%_ _%key106244%_))))
    (define __hash-remove!
      (lambda (_%h106230%_ _%key106231%_)
        (let ((_%h106234%_ _%h106230%_))
          (&HashTable-delete! _%h106234%_ _%key106231%_))))
    (define hash-key?
      (lambda (_%h106211%_ _%k106212%_)
        (let* ((_%h106218%_
                (let ((_%$obj106215%_ _%h106211%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106215%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106215%_)))
                           '#t)
                      _%$obj106215%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106215%_)))))
               (_%h106220%_ _%h106218%_))
          (__hash-key? _%h106220%_ _%k106212%_))))
    (define __hash-key?
      (lambda (_%h106198%_ _%k106199%_)
        (let ((_%h106202%_ _%h106198%_))
          (not (eq? (&HashTable-ref _%h106202%_ _%k106199%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h106180%_)
        (let* ((_%h106186%_
                (let ((_%$obj106183%_ _%h106180%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106183%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106183%_)))
                           '#t)
                      _%$obj106183%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106183%_)))))
               (_%h106188%_ _%h106186%_))
          (__hash->list _%h106188%_))))
    (define __hash->list
      (lambda (_%h106163%_)
        (let* ((_%h106166%_ _%h106163%_) (_%lst106175%_ '()))
          (&HashTable-for-each
           _%h106166%_
           (lambda (_%k106177%_ _%v106178%_)
             (set! _%lst106175%_
                   (cons (cons _%k106177%_ _%v106178%_) _%lst106175%_))))
          _%lst106175%_)))
    (define hash->plist
      (lambda (_%h106145%_)
        (let* ((_%h106151%_
                (let ((_%$obj106148%_ _%h106145%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106148%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106148%_)))
                           '#t)
                      _%$obj106148%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106148%_)))))
               (_%h106153%_ _%h106151%_))
          (__hash->plist _%h106153%_))))
    (define __hash->plist
      (lambda (_%h106128%_)
        (let* ((_%h106131%_ _%h106128%_) (_%lst106140%_ '()))
          (&HashTable-for-each
           _%h106131%_
           (lambda (_%k106142%_ _%v106143%_)
             (set! _%lst106140%_
                   (cons _%k106142%_ (cons _%v106143%_ _%lst106140%_)))))
          _%lst106140%_)))
    (define hash-for-each
      (lambda (_%proc106099%_ _%h106100%_)
        (if (procedure? _%proc106099%_)
            (let* ((_%proc106104%_ _%proc106099%_)
                   (_%h106116%_
                    (let ((_%$obj106113%_ _%h106100%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106113%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106113%_)))
                               '#t)
                          _%$obj106113%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106113%_)))))
                   (_%h106118%_ _%h106116%_))
              (__hash-for-each _%proc106104%_ _%h106118%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@567.22-567.26"
               'contract:
               'procedure?
               'value:
               _%proc106099%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc106078%_ _%h106079%_)
        (let* ((_%proc106082%_ _%proc106078%_) (_%h106090%_ _%h106079%_))
          (&HashTable-for-each _%h106090%_ _%proc106082%_))))
    (define hash-map
      (lambda (_%proc106049%_ _%h106050%_)
        (if (procedure? _%proc106049%_)
            (let* ((_%proc106054%_ _%proc106049%_)
                   (_%h106066%_
                    (let ((_%$obj106063%_ _%h106050%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106063%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106063%_)))
                               '#t)
                          _%$obj106063%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106063%_)))))
                   (_%h106068%_ _%h106066%_))
              (__hash-map _%proc106054%_ _%h106068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@570.17-570.21"
               'contract:
               'procedure?
               'value:
               _%proc106049%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc106023%_ _%h106024%_)
        (let* ((_%proc106027%_ _%proc106023%_)
               (_%h106035%_ _%h106024%_)
               (_%result106044%_ '()))
          (&HashTable-for-each
           _%h106035%_
           (lambda (_%k106046%_ _%v106047%_)
             (set! _%result106044%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc106027%_ _%k106046%_ _%v106047%_))
                         _%result106044%_))))
          _%result106044%_)))
    (define hash-fold
      (lambda (_%proc105993%_ _%iv105994%_ _%h105995%_)
        (if (procedure? _%proc105993%_)
            (let* ((_%proc105999%_ _%proc105993%_)
                   (_%h106011%_
                    (let ((_%$obj106008%_ _%h105995%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106008%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106008%_)))
                               '#t)
                          _%$obj106008%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106008%_)))))
                   (_%h106013%_ _%h106011%_))
              (__hash-fold _%proc105999%_ _%iv105994%_ _%h106013%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@575.18-575.22"
               'contract:
               'procedure?
               'value:
               _%proc105993%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc105966%_ _%iv105967%_ _%h105968%_)
        (let* ((_%proc105971%_ _%proc105966%_)
               (_%h105979%_ _%h105968%_)
               (_%result105988%_ _%iv105967%_))
          (&HashTable-for-each
           _%h105979%_
           (lambda (_%k105990%_ _%v105991%_)
             (set! _%result105988%_
                   (let ()
                     (declare (not safe))
                     (_%proc105971%_
                      _%k105990%_
                      _%v105991%_
                      _%result105988%_)))))
          _%result105988%_)))
    (define hash-find__%
      (lambda (_%proc105924%_ _%h105925%_ _%default-value105926%_)
        (if (procedure? _%proc105924%_)
            (let* ((_%proc105930%_ _%proc105924%_)
                   (_%h105942%_
                    (let ((_%$obj105939%_ _%h105925%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj105939%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj105939%_)))
                               '#t)
                          _%$obj105939%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj105939%_)))))
                   (_%h105944%_ _%h105942%_))
              (__hash-find__%
               _%proc105930%_
               _%h105944%_
               _%default-value105926%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@580.18-580.22"
               'contract:
               'procedure?
               'value:
               _%proc105924%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc105957%_ _%h105958%_)
        (let ((_%default-value105960%_ '#f))
          (hash-find__% _%proc105957%_ _%h105958%_ _%default-value105960%_))))
    (define hash-find
      (lambda _g110012_
        (let ((_g110011_ (let () (declare (not safe)) (##length _g110012_))))
          (cond ((let () (declare (not safe)) (##fx= _g110011_ 2))
                 (apply hash-find__0 _g110012_))
                ((let () (declare (not safe)) (##fx= _g110011_ 3))
                 (apply hash-find__% _g110012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g110012_))))))
    (define __hash-find__%
      (lambda (_%proc105881%_ _%h105882%_ _%default-value105883%_)
        (let* ((_%proc105886%_ _%proc105881%_)
               (_%h105894%_ _%h105882%_)
               (__tmp110013
                (lambda (_%return105903%_)
                  (&HashTable-for-each
                   _%h105894%_
                   (lambda (_%k105905%_ _%v105906%_)
                     (let ((_%$e105908%_
                            (let ()
                              (declare (not safe))
                              (_%proc105886%_ _%k105905%_ _%v105906%_))))
                       (if _%$e105908%_
                           (_%return105903%_ _%$e105908%_)
                           '#!void))))
                  _%default-value105883%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp110013))))
    (define __hash-find__0
      (lambda (_%proc105914%_ _%h105915%_)
        (let ((_%default-value105917%_ '#f))
          (__hash-find__%
           _%proc105914%_
           _%h105915%_
           _%default-value105917%_))))
    (define __hash-find
      (lambda _g110015_
        (let ((_g110014_ (let () (declare (not safe)) (##length _g110015_))))
          (cond ((let () (declare (not safe)) (##fx= _g110014_ 2))
                 (apply __hash-find__0 _g110015_))
                ((let () (declare (not safe)) (##fx= _g110014_ 3))
                 (apply __hash-find__% _g110015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g110015_))))))
    (define hash-keys
      (lambda (_%h105862%_)
        (let* ((_%h105868%_
                (let ((_%$obj105865%_ _%h105862%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105865%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105865%_)))
                           '#t)
                      _%$obj105865%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105865%_)))))
               (_%h105870%_ _%h105868%_))
          (__hash-keys _%h105870%_))))
    (define __hash-keys
      (lambda (_%h105845%_)
        (let* ((_%h105848%_ _%h105845%_) (_%result105857%_ '()))
          (&HashTable-for-each
           _%h105848%_
           (lambda (_%k105859%_ _%v105860%_)
             (set! _%result105857%_ (cons _%k105859%_ _%result105857%_))))
          _%result105857%_)))
    (define hash-values
      (lambda (_%h105827%_)
        (let* ((_%h105833%_
                (let ((_%$obj105830%_ _%h105827%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105830%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105830%_)))
                           '#t)
                      _%$obj105830%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105830%_)))))
               (_%h105835%_ _%h105833%_))
          (__hash-values _%h105835%_))))
    (define __hash-values
      (lambda (_%h105810%_)
        (let* ((_%h105813%_ _%h105810%_) (_%result105822%_ '()))
          (&HashTable-for-each
           _%h105813%_
           (lambda (_%k105824%_ _%v105825%_)
             (set! _%result105822%_ (cons _%v105825%_ _%result105822%_))))
          _%result105822%_)))
    (define hash-copy
      (lambda (_%h105792%_)
        (let* ((_%h105798%_
                (let ((_%$obj105795%_ _%h105792%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105795%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105795%_)))
                           '#t)
                      _%$obj105795%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105795%_)))))
               (_%h105800%_ _%h105798%_))
          (__hash-copy _%h105800%_))))
    (define __hash-copy
      (lambda (_%h105780%_)
        (let ((_%h105783%_ _%h105780%_)) (__HashTable-copy _%h105783%_))))
    (define hash-clear!
      (lambda (_%h105762%_)
        (let* ((_%h105768%_
                (let ((_%$obj105765%_ _%h105762%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105765%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105765%_)))
                           '#t)
                      _%$obj105765%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105765%_)))))
               (_%h105770%_ _%h105768%_))
          (__hash-clear! _%h105770%_))))
    (define __hash-clear!
      (lambda (_%h105750%_)
        (let ((_%h105753%_ _%h105750%_)) (&HashTable-clear! _%h105753%_))))
    (define hash-merge
      (lambda (_%h105731%_ . _%rest105732%_)
        (let* ((_%h105738%_
                (let ((_%$obj105735%_ _%h105731%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105735%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105735%_)))
                           '#t)
                      _%$obj105735%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105735%_)))))
               (_%h105740%_ _%h105738%_))
          (declare (not safe))
          (##apply __hash-merge _%h105740%_ _%rest105732%_))))
    (define __hash-merge
      (lambda (_%h105716%_ . _%rest105717%_)
        (let* ((_%h105720%_ _%h105716%_)
               (_%copy105729%_ (__HashTable-copy _%h105720%_)))
          (apply hash-merge! _%copy105729%_ _%rest105717%_)
          _%copy105729%_)))
    (define hash-merge!
      (lambda (_%h105697%_ . _%rest105698%_)
        (let* ((_%h105704%_
                (let ((_%$obj105701%_ _%h105697%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105701%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105701%_)))
                           '#t)
                      _%$obj105701%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105701%_)))))
               (_%h105706%_ _%h105704%_))
          (declare (not safe))
          (##apply __hash-merge! _%h105706%_ _%rest105698%_))))
    (define __hash-merge!
      (lambda (_%h105660%_ . _%rest105661%_)
        (let ((_%h105664%_ _%h105660%_))
          (let ((__tmp110016
                 (lambda (_%hr105673%_)
                   (let* ((_%hr105679%_
                           (let ((_%$obj105676%_ _%hr105673%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj105676%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj105676%_)))
                                      '#t)
                                 _%$obj105676%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj105676%_)))))
                          (_%hr105681%_ _%hr105679%_))
                     (&HashTable-for-each
                      _%hr105681%_
                      (lambda (_%k105694%_ _%v105695%_)
                        (if (__hash-key? _%h105664%_ _%k105694%_)
                            '#!void
                            (&HashTable-set!
                             _%h105664%_
                             _%k105694%_
                             _%v105695%_))))))))
            (declare (not safe))
            (##for-each __tmp110016 _%rest105661%_))
          _%h105664%_)))))
