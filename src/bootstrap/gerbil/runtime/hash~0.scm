(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1742222164)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp111120 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp111120
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args111100%_
        (apply make-instance UnboundKeyError::t _%$args111100%_)))
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
      (lambda (_%where110974%_ _%message110975%_ . _%irritants110976%_)
        (let ((__tmp111121
               (let ((__obj111114
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj111114
                    _%message110975%_
                    'where:
                    _%where110974%_
                    'irritants:
                    _%irritants110976%_))
                 __obj111114)))
          (declare (not safe))
          (raise __tmp111121))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp111122 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp111122
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTable::t
         '((HashTable::clear! clear!)
           (HashTable::copy copy)
           (HashTable::delete! delete!)
           (HashTable::for-each for-each)
           (HashTable::length length)
           (HashTable::ref ref)
           (HashTable::set! set!)
           (HashTable::update! update!)))))
    (define make-HashTable
      (lambda (_%obj110972%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj110972%_))))
    (define try-HashTable
      (lambda (_%obj110970%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj110970%_))))
    (define HashTable?
      (lambda (_%obj110968%_)
        (let ((__tmp111123
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110968%_ __tmp111123))))
    (define is-HashTable?
      (lambda (_%obj110966%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj110966%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self110950%_)
        (let* ((_%self110955%_
                (let ((_%$obj110952%_ _%self110950%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110952%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110952%_)))
                           '#t)
                      _%$obj110952%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110952%_)))))
               (_%self110957%_ _%self110955%_))
          (&HashTable-clear! _%self110957%_))))
    (define &HashTable-clear!
      (lambda (_%self110935%_)
        (let ((_%self110937%_ _%self110935%_))
          (declare (not safe))
          (let ((_%obj110947%_
                 (##unchecked-structure-ref _%self110937%_ '1 '#f 'clear!))
                (_%f110948%_
                 (##unchecked-structure-ref _%self110937%_ '2 '#f 'clear!)))
            (_%f110948%_ _%obj110947%_)))))
    (define HashTable-copy
      (lambda (_%self110919%_)
        (let* ((_%self110924%_
                (let ((_%$obj110921%_ _%self110919%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110921%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110921%_)))
                           '#t)
                      _%$obj110921%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110921%_)))))
               (_%self110926%_ _%self110924%_))
          (__HashTable-copy _%self110926%_))))
    (define __HashTable-copy
      (lambda (_%self110906%_)
        (let* ((_%self110908%_ _%self110906%_)
               (_%$obj110916%_ (&HashTable-copy _%self110908%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj110916%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj110916%_)))
                   '#t)
              _%$obj110916%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj110916%_))))))
    (define &HashTable-copy
      (lambda (_%self110891%_)
        (let ((_%self110893%_ _%self110891%_))
          (declare (not safe))
          (let ((_%obj110903%_
                 (##unchecked-structure-ref _%self110893%_ '1 '#f 'copy))
                (_%f110904%_
                 (##unchecked-structure-ref _%self110893%_ '3 '#f 'copy)))
            (_%f110904%_ _%obj110903%_)))))
    (define HashTable-delete!
      (lambda (_%self110874%_ _%key110875%_)
        (let* ((_%self110880%_
                (let ((_%$obj110877%_ _%self110874%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110877%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110877%_)))
                           '#t)
                      _%$obj110877%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110877%_)))))
               (_%self110882%_ _%self110880%_))
          (&HashTable-delete! _%self110882%_ _%key110875%_))))
    (define &HashTable-delete!
      (lambda (_%self110858%_ _%key110859%_)
        (let ((_%self110861%_ _%self110858%_))
          (declare (not safe))
          (let ((_%obj110871%_
                 (##unchecked-structure-ref _%self110861%_ '1 '#f 'delete!))
                (_%f110872%_
                 (##unchecked-structure-ref _%self110861%_ '4 '#f 'delete!)))
            (_%f110872%_ _%obj110871%_ _%key110859%_)))))
    (define HashTable-for-each
      (lambda (_%self110831%_ _%proc110832%_)
        (let* ((_%self110837%_
                (let ((_%$obj110834%_ _%self110831%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110834%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110834%_)))
                           '#t)
                      _%$obj110834%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110834%_)))))
               (_%self110839%_ _%self110837%_))
          (if (procedure? _%proc110832%_)
              (let ((_%proc110848%_ _%proc110832%_))
                (&HashTable-for-each _%self110839%_ _%proc110848%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110832%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self110807%_ _%proc110808%_)
        (let* ((_%self110810%_ _%self110807%_) (_%proc110817%_ _%proc110808%_))
          (declare (not safe))
          (let ((_%obj110828%_
                 (##unchecked-structure-ref _%self110810%_ '1 '#f 'for-each))
                (_%f110829%_
                 (##unchecked-structure-ref _%self110810%_ '5 '#f 'for-each)))
            (_%f110829%_ _%obj110828%_ _%proc110817%_)))))
    (define HashTable-length
      (lambda (_%self110791%_)
        (let* ((_%self110796%_
                (let ((_%$obj110793%_ _%self110791%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110793%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110793%_)))
                           '#t)
                      _%$obj110793%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110793%_)))))
               (_%self110798%_ _%self110796%_))
          (__HashTable-length _%self110798%_))))
    (define __HashTable-length
      (lambda (_%self110778%_)
        (let* ((_%self110780%_ _%self110778%_)
               (_%val110788%_ (&HashTable-length _%self110780%_)))
          _%val110788%_)))
    (define &HashTable-length
      (lambda (_%self110763%_)
        (let ((_%self110765%_ _%self110763%_))
          (declare (not safe))
          (let ((_%obj110775%_
                 (##unchecked-structure-ref _%self110765%_ '1 '#f 'length))
                (_%f110776%_
                 (##unchecked-structure-ref _%self110765%_ '6 '#f 'length)))
            (_%f110776%_ _%obj110775%_)))))
    (define HashTable-ref
      (lambda (_%self110745%_ _%key110746%_ _%default110747%_)
        (let* ((_%self110752%_
                (let ((_%$obj110749%_ _%self110745%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110749%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110749%_)))
                           '#t)
                      _%$obj110749%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110749%_)))))
               (_%self110754%_ _%self110752%_))
          (&HashTable-ref _%self110754%_ _%key110746%_ _%default110747%_))))
    (define &HashTable-ref
      (lambda (_%self110728%_ _%key110729%_ _%default110730%_)
        (let ((_%self110732%_ _%self110728%_))
          (declare (not safe))
          (let ((_%obj110742%_
                 (##unchecked-structure-ref _%self110732%_ '1 '#f 'ref))
                (_%f110743%_
                 (##unchecked-structure-ref _%self110732%_ '7 '#f 'ref)))
            (_%f110743%_ _%obj110742%_ _%key110729%_ _%default110730%_)))))
    (define HashTable-set!
      (lambda (_%self110710%_ _%key110711%_ _%value110712%_)
        (let* ((_%self110717%_
                (let ((_%$obj110714%_ _%self110710%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110714%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110714%_)))
                           '#t)
                      _%$obj110714%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110714%_)))))
               (_%self110719%_ _%self110717%_))
          (&HashTable-set! _%self110719%_ _%key110711%_ _%value110712%_))))
    (define &HashTable-set!
      (lambda (_%self110693%_ _%key110694%_ _%value110695%_)
        (let ((_%self110697%_ _%self110693%_))
          (declare (not safe))
          (let ((_%obj110707%_
                 (##unchecked-structure-ref _%self110697%_ '1 '#f 'set!))
                (_%f110708%_
                 (##unchecked-structure-ref _%self110697%_ '8 '#f 'set!)))
            (_%f110708%_ _%obj110707%_ _%key110694%_ _%value110695%_)))))
    (define HashTable-update!
      (lambda (_%self110664%_ _%key110665%_ _%proc110666%_ _%default110667%_)
        (let* ((_%self110672%_
                (let ((_%$obj110669%_ _%self110664%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110669%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110669%_)))
                           '#t)
                      _%$obj110669%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110669%_)))))
               (_%self110674%_ _%self110672%_))
          (if (procedure? _%proc110666%_)
              (let ((_%proc110683%_ _%proc110666%_))
                (&HashTable-update!
                 _%self110674%_
                 _%key110665%_
                 _%proc110683%_
                 _%default110667%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110666%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self110636%_ _%key110637%_ _%proc110638%_ _%default110639%_)
        (let* ((_%self110641%_ _%self110636%_) (_%proc110648%_ _%proc110638%_))
          (declare (not safe))
          (let ((_%obj110659%_
                 (##unchecked-structure-ref _%self110641%_ '1 '#f 'update!))
                (_%f110661%_
                 (##unchecked-structure-ref _%self110641%_ '9 '#f 'update!)))
            (_%f110661%_
             _%obj110659%_
             _%key110637%_
             _%proc110648%_
             _%default110639%_)))))
    (define Locker::t
      (let ((__tmp111124 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp111124
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         Locker::t
         '((Locker::read-lock! read-lock!)
           (Locker::read-unlock! read-unlock!)
           (Locker::write-lock! write-lock!)
           (Locker::write-unlock! write-unlock!)))))
    (define make-Locker
      (lambda (_%obj110634%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj110634%_))))
    (define try-Locker
      (lambda (_%obj110632%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj110632%_))))
    (define Locker?
      (lambda (_%obj110630%_)
        (let ((__tmp111125
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110630%_ __tmp111125))))
    (define is-Locker?
      (lambda (_%obj110628%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj110628%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self110612%_)
        (let* ((_%self110617%_
                (let ((_%$obj110614%_ _%self110612%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110614%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110614%_)))
                           '#t)
                      _%$obj110614%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110614%_)))))
               (_%self110619%_ _%self110617%_))
          (&Locker-read-lock! _%self110619%_))))
    (define &Locker-read-lock!
      (lambda (_%self110597%_)
        (let ((_%self110599%_ _%self110597%_))
          (declare (not safe))
          (let ((_%obj110609%_
                 (##unchecked-structure-ref _%self110599%_ '1 '#f 'read-lock!))
                (_%f110610%_
                 (##unchecked-structure-ref
                  _%self110599%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f110610%_ _%obj110609%_)))))
    (define Locker-read-unlock!
      (lambda (_%self110581%_)
        (let* ((_%self110586%_
                (let ((_%$obj110583%_ _%self110581%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110583%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110583%_)))
                           '#t)
                      _%$obj110583%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110583%_)))))
               (_%self110588%_ _%self110586%_))
          (&Locker-read-unlock! _%self110588%_))))
    (define &Locker-read-unlock!
      (lambda (_%self110566%_)
        (let ((_%self110568%_ _%self110566%_))
          (declare (not safe))
          (let ((_%obj110578%_
                 (##unchecked-structure-ref
                  _%self110568%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f110579%_
                 (##unchecked-structure-ref
                  _%self110568%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f110579%_ _%obj110578%_)))))
    (define Locker-write-lock!
      (lambda (_%self110550%_)
        (let* ((_%self110555%_
                (let ((_%$obj110552%_ _%self110550%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110552%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110552%_)))
                           '#t)
                      _%$obj110552%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110552%_)))))
               (_%self110557%_ _%self110555%_))
          (&Locker-write-lock! _%self110557%_))))
    (define &Locker-write-lock!
      (lambda (_%self110535%_)
        (let ((_%self110537%_ _%self110535%_))
          (declare (not safe))
          (let ((_%obj110547%_
                 (##unchecked-structure-ref
                  _%self110537%_
                  '1
                  '#f
                  'write-lock!))
                (_%f110548%_
                 (##unchecked-structure-ref
                  _%self110537%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f110548%_ _%obj110547%_)))))
    (define Locker-write-unlock!
      (lambda (_%self110519%_)
        (let* ((_%self110524%_
                (let ((_%$obj110521%_ _%self110519%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110521%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110521%_)))
                           '#t)
                      _%$obj110521%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110521%_)))))
               (_%self110526%_ _%self110524%_))
          (&Locker-write-unlock! _%self110526%_))))
    (define &Locker-write-unlock!
      (lambda (_%self110502%_)
        (let ((_%self110504%_ _%self110502%_))
          (declare (not safe))
          (let ((_%obj110514%_
                 (##unchecked-structure-ref
                  _%self110504%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f110516%_
                 (##unchecked-structure-ref
                  _%self110504%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f110516%_ _%obj110514%_)))))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::clear! gc-table-clear!))
    (define gambit-table-update!
      (lambda (_%table110495%_
               _%key110496%_
               _%update110497%_
               _%default110498%_)
        (let ((_%result110500%_
               (table-ref _%table110495%_ _%key110496%_ _%default110498%_)))
          (table-set!
           _%table110495%_
           _%key110496%_
           (_%update110497%_ _%default110498%_)))))
    (define gambit-table-for-each
      (lambda (_%table110492%_ _%proc110493%_)
        (table-for-each _%proc110493%_ _%table110492%_)))
    (define gambit-table-clear!
      (lambda (_%table110490%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table110490%_ '0 '5 '#f '#f))))
    (let ((__tmp111126 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111126 'HashTable::ref table-ref))
    (let ((__tmp111127 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111127 'HashTable::set! table-set!))
    (let ((__tmp111128 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111128 'HashTable::update! gambit-table-update!))
    (let ((__tmp111129 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111129 'HashTable::delete! table-set!))
    (let ((__tmp111130 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111130 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp111131 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111131 'HashTable::length table-length))
    (let ((__tmp111132 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111132 'HashTable::copy table-copy))
    (let ((__tmp111133 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111133 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots110472%_ '(table count free hash test seed))
             (_%slot-vector110474%_ (list->vector (cons '#f _%slots110472%_)))
             (_%slot-table110481%_
              (let ((_%slot-table110476%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111136
                       (lambda (_%slot110478%_ _%field110479%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110476%_
                            _%slot110478%_
                            _%field110479%_))
                         (let ((__tmp111137
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110478%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110476%_
                            __tmp111137
                            _%field110479%_))))
                      (__tmp111134
                       (let ((__tmp111135
                              (let ()
                                (declare (not safe))
                                (##length _%slots110472%_))))
                         (declare (not safe))
                         (##iota __tmp111135 '1))))
                  (declare (not safe))
                  (##for-each __tmp111136 _%slots110472%_ __tmp111134))
                _%slot-table110476%_))
             (_%flags110483%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110485%_ '#())
             (_%properties110487%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110472%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111138 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags110483%_
         __table::t
         _%fields110485%_
         __tmp111138
         _%slot-vector110474%_
         _%slot-table110481%_
         _%properties110487%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots110454%_ '(gcht immediate))
             (_%slot-vector110456%_ (list->vector (cons '#f _%slots110454%_)))
             (_%slot-table110463%_
              (let ((_%slot-table110458%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111141
                       (lambda (_%slot110460%_ _%field110461%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110458%_
                            _%slot110460%_
                            _%field110461%_))
                         (let ((__tmp111142
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110460%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110458%_
                            __tmp111142
                            _%field110461%_))))
                      (__tmp111139
                       (let ((__tmp111140
                              (let ()
                                (declare (not safe))
                                (##length _%slots110454%_))))
                         (declare (not safe))
                         (##iota __tmp111140 '1))))
                  (declare (not safe))
                  (##for-each __tmp111141 _%slots110454%_ __tmp111139))
                _%slot-table110458%_))
             (_%flags110465%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110467%_ '#())
             (_%properties110469%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110454%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111143 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags110465%_
         __gc-table::t
         _%fields110467%_
         __tmp111143
         _%slot-vector110456%_
         _%slot-table110463%_
         _%properties110469%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp111145 (list))
            (__tmp111144
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp111145
         '(table lock)
         __tmp111144
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args110451%_
        (apply make-instance locked-hash-table::t _%$args110451%_)))
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
      (let ((__tmp111147 (list))
            (__tmp111146
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp111147
         '(table key-check)
         __tmp111146
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args110448%_
        (apply make-instance checked-hash-table::t _%$args110448%_)))
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
      (let ((__tmp111149 (list hash-table::t))
            (__tmp111148 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp111149
         '()
         __tmp111148
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args110445%_
        (apply make-instance eq-hash-table::t _%$args110445%_)))
    (define eqv-hash-table::t
      (let ((__tmp111151 (list hash-table::t))
            (__tmp111150 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp111151
         '()
         __tmp111150
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args110442%_
        (apply make-instance eqv-hash-table::t _%$args110442%_)))
    (define symbol-hash-table::t
      (let ((__tmp111153 (list hash-table::t))
            (__tmp111152 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp111153
         '()
         __tmp111152
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args110439%_
        (apply make-instance symbol-hash-table::t _%$args110439%_)))
    (define string-hash-table::t
      (let ((__tmp111155 (list hash-table::t))
            (__tmp111154 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp111155
         '()
         __tmp111154
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args110436%_
        (apply make-instance string-hash-table::t _%$args110436%_)))
    (define immediate-hash-table::t
      (let ((__tmp111157 (list hash-table::t))
            (__tmp111156 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp111157
         '()
         __tmp111156
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args110433%_
        (apply make-instance immediate-hash-table::t _%$args110433%_)))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::ref eq-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::set! eq-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::update! eq-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::delete! eq-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'HashTable::ref eqv-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'HashTable::set! eqv-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       eqv-hash-table::t
       'HashTable::update!
       eqv-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       eqv-hash-table::t
       'HashTable::delete!
       eqv-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::ref
       symbolic-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::set!
       symbolic-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::update!
       symbolic-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::delete!
       symbolic-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'HashTable::ref string-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::set!
       string-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::update!
       string-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::delete!
       string-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::ref
       immediate-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::set!
       immediate-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::update!
       immediate-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::delete!
       immediate-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       gc-hash-table::t
       'HashTable::for-each
       gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::clear! gc-table-clear!))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref106433%_
      (lambda (_%self106432110407%_ _%key110409%_ _%default110410%_)
        (let* ((_%self110412%_ _%self106432110407%_)
               (_%self110415%_ _%self110412%_))
          (let ((_%h110425%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110415%_ '1 '#f '#f)))
                (_%l110427%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110415%_ '2 '#f '#f))))
            (let ((__tmp111160 (lambda () (&Locker-read-lock! _%l110427%_)))
                  (__tmp111159
                   (lambda ()
                     (&HashTable-ref
                      _%h110425%_
                      _%key110409%_
                      _%default110410%_)))
                  (__tmp111158 (lambda () (&Locker-read-unlock! _%l110427%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111160 __tmp111159 __tmp111158))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref106433%_
       '#f))
    (define _%locked-hash-table::HashTable::set!106436%_
      (lambda (_%self106435110258%_ _%key110260%_ _%value110261%_)
        (let* ((_%self110263%_ _%self106435110258%_)
               (_%self110266%_ _%self110263%_))
          (let ((_%h110276%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110266%_ '1 '#f '#f)))
                (_%l110278%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110266%_ '2 '#f '#f))))
            (let ((__tmp111163 (lambda () (&Locker-write-lock! _%l110278%_)))
                  (__tmp111162
                   (lambda ()
                     (&HashTable-set!
                      _%h110276%_
                      _%key110260%_
                      _%value110261%_)))
                  (__tmp111161
                   (lambda () (&Locker-write-unlock! _%l110278%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111163 __tmp111162 __tmp111161))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!106436%_
       '#f))
    (define _%locked-hash-table::HashTable::update!106439%_
      (lambda (_%self106438110108%_
               _%key110110%_
               _%update110111%_
               _%default110112%_)
        (let* ((_%self110114%_ _%self106438110108%_)
               (_%self110117%_ _%self110114%_))
          (let ((_%h110127%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110117%_ '1 '#f '#f)))
                (_%l110129%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110117%_ '2 '#f '#f))))
            (let ((__tmp111166 (lambda () (&Locker-write-lock! _%l110129%_)))
                  (__tmp111165
                   (lambda ()
                     (&HashTable-update!
                      _%h110127%_
                      _%key110110%_
                      _%update110111%_
                      _%default110112%_)))
                  (__tmp111164
                   (lambda () (&Locker-write-unlock! _%l110129%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111166 __tmp111165 __tmp111164))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!106439%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!106442%_
      (lambda (_%self106441109960%_ _%key109962%_)
        (let* ((_%self109964%_ _%self106441109960%_)
               (_%self109967%_ _%self109964%_))
          (let ((_%h109977%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109967%_ '1 '#f '#f)))
                (_%l109979%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109967%_ '2 '#f '#f))))
            (let ((__tmp111169 (lambda () (&Locker-write-lock! _%l109979%_)))
                  (__tmp111168
                   (lambda () (&HashTable-delete! _%h109977%_ _%key109962%_)))
                  (__tmp111167
                   (lambda () (&Locker-write-unlock! _%l109979%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111169 __tmp111168 __tmp111167))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!106442%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each106445%_
      (lambda (_%self106444109812%_ _%proc109814%_)
        (let* ((_%self109816%_ _%self106444109812%_)
               (_%self109819%_ _%self109816%_))
          (let ((_%h109829%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109819%_ '1 '#f '#f)))
                (_%l109831%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109819%_ '2 '#f '#f))))
            (let ((__tmp111172 (lambda () (&Locker-read-lock! _%l109831%_)))
                  (__tmp111171
                   (lambda ()
                     (&HashTable-for-each _%h109829%_ _%proc109814%_)))
                  (__tmp111170 (lambda () (&Locker-read-unlock! _%l109831%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111172 __tmp111171 __tmp111170))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each106445%_
       '#f))
    (define _%locked-hash-table::HashTable::length106448%_
      (lambda (_%self106447109665%_)
        (let* ((_%self109668%_ _%self106447109665%_)
               (_%self109671%_ _%self109668%_))
          (let ((_%h109681%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109671%_ '1 '#f '#f)))
                (_%l109683%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109671%_ '2 '#f '#f))))
            (let ((__tmp111175 (lambda () (&Locker-read-lock! _%l109683%_)))
                  (__tmp111174 (lambda () (&HashTable-length _%h109681%_)))
                  (__tmp111173 (lambda () (&Locker-read-unlock! _%l109683%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111175 __tmp111174 __tmp111173))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length106448%_
       '#f))
    (define _%locked-hash-table::HashTable::copy106451%_
      (lambda (_%self106450109518%_)
        (let* ((_%self109521%_ _%self106450109518%_)
               (_%self109524%_ _%self109521%_))
          (let ((_%h109534%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109524%_ '1 '#f '#f)))
                (_%l109536%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109524%_ '2 '#f '#f))))
            (let ((__tmp111178 (lambda () (&Locker-read-lock! _%l109536%_)))
                  (__tmp111177 (lambda () (&HashTable-copy _%h109534%_)))
                  (__tmp111176 (lambda () (&Locker-read-unlock! _%l109536%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111178 __tmp111177 __tmp111176))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy106451%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!106454%_
      (lambda (_%self106453109371%_)
        (let* ((_%self109374%_ _%self106453109371%_)
               (_%self109377%_ _%self109374%_))
          (let ((_%h109387%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109377%_ '1 '#f '#f)))
                (_%l109389%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109377%_ '2 '#f '#f))))
            (let ((__tmp111181 (lambda () (&Locker-write-lock! _%l109389%_)))
                  (__tmp111180 (lambda () (&HashTable-clear! _%h109387%_)))
                  (__tmp111179
                   (lambda () (&Locker-write-unlock! _%l109389%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111181 __tmp111180 __tmp111179))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!106454%_
       '#f))
    (let ((__tmp111182 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111182 'Locker::read-lock! mutex-lock!))
    (let ((__tmp111183 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111183 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp111184 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111184 'Locker::write-lock! mutex-lock!))
    (let ((__tmp111185 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111185 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref106668%_
      (lambda (_%self106667109221%_ _%key109223%_ _%default109224%_)
        (let* ((_%self109226%_ _%self106667109221%_)
               (_%self109228%_ _%self109226%_))
          (declare (not safe))
          (let ((_%h109239%_
                 (##unchecked-structure-ref _%self109228%_ '1 '#f '#f))
                (_%key?109241%_
                 (##unchecked-structure-ref _%self109228%_ '2 '#f '#f)))
            (if ((lambda (_%key?109244%_ _%key109245%_ _%default109246%_)
                   (_%key?109244%_ _%key109245%_))
                 _%key?109241%_
                 _%key109223%_
                 _%default109224%_)
                (&HashTable-ref _%h109239%_ _%key109223%_ _%default109224%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key109223%_ (cons _%default109224%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref106668%_
       '#f))
    (define _%checked-hash-table::HashTable::set!106671%_
      (lambda (_%self106670109071%_ _%key109073%_ _%value109074%_)
        (let* ((_%self109076%_ _%self106670109071%_)
               (_%self109078%_ _%self109076%_))
          (declare (not safe))
          (let ((_%h109089%_
                 (##unchecked-structure-ref _%self109078%_ '1 '#f '#f))
                (_%key?109091%_
                 (##unchecked-structure-ref _%self109078%_ '2 '#f '#f)))
            (if ((lambda (_%key?109094%_ _%key109095%_ _%value109096%_)
                   (_%key?109094%_ _%key109095%_))
                 _%key?109091%_
                 _%key109073%_
                 _%value109074%_)
                (&HashTable-set! _%h109089%_ _%key109073%_ _%value109074%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key109073%_ (cons _%value109074%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!106671%_
       '#f))
    (define _%checked-hash-table::HashTable::update!106674%_
      (lambda (_%self106673108919%_
               _%key108921%_
               _%update108922%_
               _%default108923%_)
        (let* ((_%self108925%_ _%self106673108919%_)
               (_%self108927%_ _%self108925%_))
          (declare (not safe))
          (let ((_%h108938%_
                 (##unchecked-structure-ref _%self108927%_ '1 '#f '#f))
                (_%key?108940%_
                 (##unchecked-structure-ref _%self108927%_ '2 '#f '#f)))
            (if ((lambda (_%key?108943%_
                          _%key108944%_
                          _%update108945%_
                          _%default108946%_)
                   (_%key?108943%_ _%key108944%_))
                 _%key?108940%_
                 _%key108921%_
                 _%update108922%_
                 _%default108923%_)
                (&HashTable-update!
                 _%h108938%_
                 _%key108921%_
                 _%update108922%_
                 _%default108923%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key108921%_
                         (cons _%update108922%_ (cons _%default108923%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!106674%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!106677%_
      (lambda (_%self106676108771%_ _%key108773%_)
        (let* ((_%self108775%_ _%self106676108771%_)
               (_%self108777%_ _%self108775%_))
          (declare (not safe))
          (let ((_%h108788%_
                 (##unchecked-structure-ref _%self108777%_ '1 '#f '#f))
                (_%key?108790%_
                 (##unchecked-structure-ref _%self108777%_ '2 '#f '#f)))
            (if ((lambda (_%key?108793%_ _%key108794%_)
                   (_%key?108793%_ _%key108794%_))
                 _%key?108790%_
                 _%key108773%_)
                (&HashTable-delete! _%h108788%_ _%key108773%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key108773%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!106677%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each106680%_
      (lambda (_%self106679108623%_ _%proc108625%_)
        (let* ((_%self108627%_ _%self106679108623%_)
               (_%self108629%_ _%self108627%_))
          (declare (not safe))
          (let ((_%h108640%_
                 (##unchecked-structure-ref _%self108629%_ '1 '#f '#f))
                (_%key?108642%_
                 (##unchecked-structure-ref _%self108629%_ '2 '#f '#f)))
            (if ((lambda (_%key?108645%_ _%proc108646%_) '#t)
                 _%key?108642%_
                 _%proc108625%_)
                (&HashTable-for-each _%h108640%_ _%proc108625%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc108625%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each106680%_
       '#f))
    (define _%checked-hash-table::HashTable::length106683%_
      (lambda (_%self106682108479%_)
        (let* ((_%self108482%_ _%self106682108479%_)
               (_%self108484%_ _%self108482%_))
          (declare (not safe))
          (let ((_%h108495%_
                 (##unchecked-structure-ref _%self108484%_ '1 '#f '#f))
                (_%key?108497%_
                 (##unchecked-structure-ref _%self108484%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h108495%_)
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
       'HashTable::length
       _%checked-hash-table::HashTable::length106683%_
       '#f))
    (define _%checked-hash-table::HashTable::copy106686%_
      (lambda (_%self106685108335%_)
        (let* ((_%self108338%_ _%self106685108335%_)
               (_%self108340%_ _%self108338%_))
          (declare (not safe))
          (let ((_%h108351%_
                 (##unchecked-structure-ref _%self108340%_ '1 '#f '#f))
                (_%key?108353%_
                 (##unchecked-structure-ref _%self108340%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h108351%_)
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
       'HashTable::copy
       _%checked-hash-table::HashTable::copy106686%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!106689%_
      (lambda (_%self106688108191%_)
        (let* ((_%self108194%_ _%self106688108191%_)
               (_%self108196%_ _%self108194%_))
          (declare (not safe))
          (let ((_%h108207%_
                 (##unchecked-structure-ref _%self108196%_ '1 '#f '#f))
                (_%key?108209%_
                 (##unchecked-structure-ref _%self108196%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h108207%_)
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
       'HashTable::clear!
       _%checked-hash-table::HashTable::clear!106689%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table108061%_
               _%count108062%_
               _%free108063%_
               _%hash108064%_
               _%test108065%_
               _%seed108066%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table108061%_
           _%count108062%_
           _%free108063%_
           _%hash108064%_
           _%test108065%_
           _%seed108066%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords107822%_
               _%size-hint107812107823%_
               _%seed107813107825%_
               _%test107814107827%_
               _%hash107815107829%_
               _%lock107816107831%_
               _%check107817107833%_
               _%weak-keys107818107835%_
               _%weak-values107819107837%_)
        (let* ((_%size-hint107840%_
                (if (eq? _%size-hint107812107823%_ absent-value)
                    '#f
                    _%size-hint107812107823%_))
               (_%seed107842%_
                (if (eq? _%seed107813107825%_ absent-value)
                    '#f
                    _%seed107813107825%_))
               (_%test107844%_
                (if (eq? _%test107814107827%_ absent-value)
                    equal?
                    _%test107814107827%_))
               (_%hash107846%_
                (if (eq? _%hash107815107829%_ absent-value)
                    '#f
                    _%hash107815107829%_))
               (_%lock107848%_
                (if (eq? _%lock107816107831%_ absent-value)
                    '#f
                    _%lock107816107831%_))
               (_%check107850%_
                (if (eq? _%check107817107833%_ absent-value)
                    '#f
                    _%check107817107833%_))
               (_%weak-keys107852%_
                (if (eq? _%weak-keys107818107835%_ absent-value)
                    '#f
                    _%weak-keys107818107835%_))
               (_%weak-values107854%_
                (if (eq? _%weak-values107819107837%_ absent-value)
                    '#f
                    _%weak-values107819107837%_)))
          (letrec ((_%table-seed107857%_
                    (lambda ()
                      (if (fixnum? _%seed107842%_)
                          _%seed107842%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock107858%_
                    (lambda (_%ht108035%_)
                      (let ((_%ht108038%_ _%ht108035%_))
                        (_%__wrap-lock107859%_ _%ht108038%_))))
                   (_%__wrap-lock107859%_
                    (lambda (_%ht108017%_)
                      (let ((_%ht108020%_ _%ht108017%_))
                        (if _%lock107848%_
                            (let ((_%$obj108032%_
                                   (let ((__tmp111186
                                          (let ((_%$obj108029%_
                                                 _%lock107848%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj108029%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj108029%_)))
                                                     '#t)
                                                _%$obj108029%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj108029%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht108020%_
                                      __tmp111186))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj108032%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj108032%_)))
                                       '#t)
                                  _%$obj108032%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj108032%_))))
                            _%ht108020%_))))
                   (_%wrap-checked107860%_
                    (lambda (_%ht108004%_ _%implicit108005%_)
                      (let ((_%ht108008%_ _%ht108004%_))
                        (_%__wrap-checked107861%_
                         _%ht108008%_
                         _%implicit108005%_))))
                   (_%__wrap-checked107861%_
                    (lambda (_%ht107977%_ _%implicit107978%_)
                      (let ((_%ht107981%_ _%ht107977%_))
                        (if _%check107850%_
                            (let ((_%$obj108001%_
                                   (let ((__tmp111187
                                          (if (procedure? _%check107850%_)
                                              _%check107850%_
                                              _%implicit107978%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht107981%_
                                      __tmp111187))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj108001%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj108001%_)))
                                       '#t)
                                  _%$obj108001%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj108001%_))))
                            _%ht107981%_))))
                   (_%make107862%_
                    (lambda (_%kons107961%_
                             _%key?107962%_
                             _%hash107963%_
                             _%test107964%_)
                      (let* ((_%size107967%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint107840%_)))
                             (_%table107969%_
                              (let ((__tmp111188 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size107967%_ __tmp111188)))
                             (_%ht107974%_
                              (let ((_%$obj107971%_
                                     (_%kons107961%_
                                      _%table107969%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size107967%_ '2))
                                      _%hash107963%_
                                      _%test107964%_
                                      (_%table-seed107857%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107971%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107971%_)))
                                         '#t)
                                    _%$obj107971%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107971%_))))))
                        (_%__wrap-checked107861%_
                         (_%__wrap-lock107859%_ _%ht107974%_)
                         _%key?107962%_))))
                   (_%make-gc-hash-table107863%_
                    (lambda ()
                      (let ((_%ht107959%_
                             (let ((_%$obj107956%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint107840%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj107956%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj107956%_)))
                                        '#t)
                                   _%$obj107956%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj107956%_))))))
                        (_%__wrap-checked107861%_
                         (_%__wrap-lock107859%_ _%ht107959%_)
                         true))))
                   (_%make-gambit-table107864%_
                    (lambda ()
                      (let* ((_%size107933%_
                              (let ((_%$e107930%_ _%size-hint107840%_))
                                (if _%$e107930%_
                                    _%$e107930%_
                                    (macro-absent-obj))))
                             (_%test107938%_
                              (let ((_%$e107935%_ _%test107844%_))
                                (if _%$e107935%_ _%$e107935%_ equal?)))
                             (_%hash107946%_
                              (let ((_%$e107940%_ _%hash107846%_))
                                (if _%$e107940%_
                                    _%$e107940%_
                                    (if (eq? _%test107938%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test107938%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht107951%_
                              (let ((_%$obj107948%_
                                     (make-table
                                      'size:
                                      _%size107933%_
                                      'test:
                                      _%test107938%_
                                      'hash:
                                      _%hash107946%_
                                      'weak-keys:
                                      _%weak-keys107852%_
                                      'weak-values:
                                      _%weak-values107854%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107948%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107948%_)))
                                         '#t)
                                    _%$obj107948%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107948%_))))))
                        (_%__wrap-checked107861%_
                         (_%__wrap-lock107859%_ _%ht107951%_)
                         true)))))
            (if (or _%weak-keys107852%_ _%weak-values107854%_)
                (_%make-gambit-table107864%_)
                (if (and (or (eq? _%test107844%_ eq?)
                             (eq? _%test107844%_ ##eq?))
                         (or (not _%hash107846%_)
                             (eq? _%hash107846%_ eq?-hash)
                             (eq? _%hash107846%_ eq-hash))
                         (not _%seed107842%_))
                    (_%make-gc-hash-table107863%_)
                    (if (and (or (eq? _%test107844%_ eq?)
                                 (eq? _%test107844%_ ##eq?))
                             (or (not _%hash107846%_)
                                 (eq? _%hash107846%_ eq?-hash)
                                 (eq? _%hash107846%_ eq-hash)))
                        (_%make107862%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test107844%_ eqv?)
                                     (eq? _%test107844%_ ##eqv?))
                                 (or (not _%hash107846%_)
                                     (eq? _%hash107846%_ eqv?-hash)
                                     (eq? _%hash107846%_ eqv-hash)))
                            (_%make107862%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test107844%_ eq?)
                                         (eq? _%test107844%_ ##eq?))
                                     (or (eq? _%hash107846%_ symbolic-hash)
                                         (eq? _%hash107846%_ ##symbol-hash)))
                                (_%make107862%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test107844%_ eq?)
                                             (eq? _%test107844%_ ##eq?))
                                         (eq? _%hash107846%_ immediate-hash))
                                    (_%make107862%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test107844%_ equal?)
                                                 (eq? _%test107844%_ ##equal?)
                                                 (eq? _%test107844%_ string=?)
                                                 (eq? _%test107844%_
                                                      ##string=?))
                                             (or (eq? _%hash107846%_
                                                      string-hash)
                                                 (eq? _%hash107846%_
                                                      ##string=?-hash)))
                                        (_%make107862%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test107844%_ equal?)
                                                 (not _%hash107846%_))
                                            (_%make107862%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test107844%_)
                                                (if (procedure? _%hash107846%_)
                                                    (_%make107862%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash107846%_
                                                     _%test107844%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash107846%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test107844%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords108051%_ . _%args108052%_)
        (apply make-hash-table__%
               _%@@keywords108051%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108051%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108051%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108051%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108051%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108051%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108051%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108051%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108051%_
                  'weak-values:
                  absent-value))
               _%args108052%_)))
    (define make-hash-table
      (lambda _%args107820108058%_
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
               _%args107820108058%_)))
    (define make-hash-table-eq
      (lambda _%args107809%_
        (apply make-hash-table 'test: eq? _%args107809%_)))
    (define make-hash-table-eqv
      (lambda _%args107807%_
        (apply make-hash-table 'test: eqv? _%args107807%_)))
    (define make-hash-table-symbolic
      (lambda _%args107805%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args107805%_)))
    (define make-hash-table-string
      (lambda _%args107803%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args107803%_)))
    (define make-hash-table-immediate
      (lambda _%args107801%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args107801%_)))
    (define list->hash-table
      (lambda (_%lst107798%_ . _%args107799%_)
        (list->hash-table!
         _%lst107798%_
         (apply make-hash-table
                'size:
                (length _%lst107798%_)
                _%args107799%_))))
    (define list->hash-table-eq
      (lambda (_%lst107795%_ . _%args107796%_)
        (list->hash-table!
         _%lst107795%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107795%_)
                _%args107796%_))))
    (define list->hash-table-eqv
      (lambda (_%lst107792%_ . _%args107793%_)
        (list->hash-table!
         _%lst107792%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107792%_)
                _%args107793%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst107789%_ . _%args107790%_)
        (list->hash-table!
         _%lst107789%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107789%_)
                _%args107790%_))))
    (define list->hash-table-string
      (lambda (_%lst107786%_ . _%args107787%_)
        (list->hash-table!
         _%lst107786%_
         (apply make-hash-table-string
                'size:
                (length _%lst107786%_)
                _%args107787%_))))
    (define list->hash-table-immediate
      (lambda (_%lst107783%_ . _%args107784%_)
        (list->hash-table!
         _%lst107783%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107783%_)
                _%args107784%_))))
    (define list->hash-table!
      (lambda (_%lst107750%_ _%h107751%_)
        (for-each
         (lambda (_%el107753%_)
           (let* ((_%el107754107761%_ _%el107753%_)
                  (_%E107756107765%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el107754107761%_
                              '([k . v])))
                     '#!void))
                  (_%K107757107771%_
                   (lambda (_%v107768%_ _%k107769%_)
                     (&HashTable-set! _%h107751%_ _%k107769%_ _%v107768%_))))
             (if (pair? _%el107754107761%_)
                 (let ((_%hd107758107774%_
                        (let ()
                          (declare (not safe))
                          (##car _%el107754107761%_)))
                       (_%tl107759107776%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el107754107761%_))))
                   (let* ((_%k107779%_ _%hd107758107774%_)
                          (_%v107781%_ _%tl107759107776%_))
                     (_%K107757107771%_ _%v107781%_ _%k107779%_)))
                 (_%E107756107765%_))))
         _%lst107750%_)
        _%h107751%_))
    (define plist->hash-table
      (lambda (_%lst107747%_ . _%args107748%_)
        (plist->hash-table!
         _%lst107747%_
         (apply make-hash-table
                'size:
                (length _%lst107747%_)
                _%args107748%_))))
    (define plist->hash-table-eq
      (lambda (_%lst107744%_ . _%args107745%_)
        (plist->hash-table!
         _%lst107744%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107744%_)
                _%args107745%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst107741%_ . _%args107742%_)
        (plist->hash-table!
         _%lst107741%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107741%_)
                _%args107742%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst107738%_ . _%args107739%_)
        (plist->hash-table!
         _%lst107738%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107738%_)
                _%args107739%_))))
    (define plist->hash-table-string
      (lambda (_%lst107735%_ . _%args107736%_)
        (plist->hash-table!
         _%lst107735%_
         (apply make-hash-table-string
                'size:
                (length _%lst107735%_)
                _%args107736%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst107732%_ . _%args107733%_)
        (plist->hash-table!
         _%lst107732%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107732%_)
                _%args107733%_))))
    (define plist->hash-table!
      (lambda (_%lst107672%_ _%h107673%_)
        (let _%loop107675%_ ((_%rest107677%_ _%lst107672%_))
          (let* ((_%rest107678107690%_ _%rest107677%_)
                 (_%else107681107698%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst107672%_)))))
            (let ((_%K107684107713%_
                   (lambda (_%rest107709%_ _%val107710%_ _%key107711%_)
                     (&HashTable-set! _%h107673%_ _%key107711%_ _%val107710%_)
                     (_%loop107675%_ _%rest107709%_)))
                  (_%K107683107703%_ (lambda () _%h107673%_)))
              (let ((_%try-match107680107706%_
                     (lambda ()
                       (if (null? _%rest107678107690%_)
                           (_%K107683107703%_)
                           (_%else107681107698%_)))))
                (if (pair? _%rest107678107690%_)
                    (let ((_%tl107686107718%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest107678107690%_)))
                          (_%hd107685107716%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest107678107690%_))))
                      (if (pair? _%tl107686107718%_)
                          (let ((_%tl107688107725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl107686107718%_)))
                                (_%hd107687107723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl107686107718%_))))
                            (let ((_%key107721%_ _%hd107685107716%_)
                                  (_%val107728%_ _%hd107687107723%_)
                                  (_%rest107730%_ _%tl107688107725%_))
                              (_%K107684107713%_
                               _%rest107730%_
                               _%val107728%_
                               _%key107721%_)))
                          (_%else107681107698%_)))
                    (_%try-match107680107706%_))))))))
    (define hash-length
      (lambda (_%h107654%_)
        (let* ((_%h107660%_
                (let ((_%$obj107657%_ _%h107654%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107657%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107657%_)))
                           '#t)
                      _%$obj107657%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107657%_)))))
               (_%h107662%_ _%h107660%_))
          (__hash-length _%h107662%_))))
    (define __hash-length
      (lambda (_%h107642%_)
        (let ((_%h107645%_ _%h107642%_)) (__HashTable-length _%h107645%_))))
    (define hash-ref__%
      (lambda (_%h107610%_ _%key107611%_ _%default107612%_)
        (let* ((_%h107618%_
                (let ((_%$obj107615%_ _%h107610%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107615%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107615%_)))
                           '#t)
                      _%$obj107615%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107615%_)))))
               (_%h107620%_ _%h107618%_))
          (__hash-ref__% _%h107620%_ _%key107611%_ _%default107612%_))))
    (define hash-ref__0
      (lambda (_%h107633%_ _%key107634%_)
        (let ((_%default107636%_ (macro-absent-obj)))
          (hash-ref__% _%h107633%_ _%key107634%_ _%default107636%_))))
    (define hash-ref
      (lambda _g111190_
        (let ((_g111189_ (let () (declare (not safe)) (##length _g111190_))))
          (cond ((let () (declare (not safe)) (##fx= _g111189_ 2))
                 (apply hash-ref__0 _g111190_))
                ((let () (declare (not safe)) (##fx= _g111189_ 3))
                 (apply hash-ref__% _g111190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g111190_))))))
    (define __hash-ref__%
      (lambda (_%h107581%_ _%key107582%_ _%default107583%_)
        (let* ((_%h107586%_ _%h107581%_)
               (_%result107595%_
                (&HashTable-ref _%h107586%_ _%key107582%_ _%default107583%_)))
          (if (eq? _%result107595%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h107586%_
               'key:
               _%key107582%_)
              _%result107595%_))))
    (define __hash-ref__0
      (lambda (_%h107600%_ _%key107601%_)
        (let ((_%default107603%_ (macro-absent-obj)))
          (__hash-ref__% _%h107600%_ _%key107601%_ _%default107603%_))))
    (define __hash-ref
      (lambda _g111192_
        (let ((_g111191_ (let () (declare (not safe)) (##length _g111192_))))
          (cond ((let () (declare (not safe)) (##fx= _g111191_ 2))
                 (apply __hash-ref__0 _g111192_))
                ((let () (declare (not safe)) (##fx= _g111191_ 3))
                 (apply __hash-ref__% _g111192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g111192_))))))
    (define hash-get
      (lambda (_%h107561%_ _%key107562%_)
        (let* ((_%h107568%_
                (let ((_%$obj107565%_ _%h107561%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107565%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107565%_)))
                           '#t)
                      _%$obj107565%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107565%_)))))
               (_%h107570%_ _%h107568%_))
          (__hash-get _%h107570%_ _%key107562%_))))
    (define __hash-get
      (lambda (_%h107548%_ _%key107549%_)
        (let ((_%h107552%_ _%h107548%_))
          (&HashTable-ref _%h107552%_ _%key107549%_ '#f))))
    (define hash-put!
      (lambda (_%h107528%_ _%key107529%_ _%value107530%_)
        (let* ((_%h107536%_
                (let ((_%$obj107533%_ _%h107528%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107533%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107533%_)))
                           '#t)
                      _%$obj107533%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107533%_)))))
               (_%h107538%_ _%h107536%_))
          (__hash-put! _%h107538%_ _%key107529%_ _%value107530%_))))
    (define __hash-put!
      (lambda (_%h107514%_ _%key107515%_ _%value107516%_)
        (let ((_%h107519%_ _%h107514%_))
          (&HashTable-set! _%h107519%_ _%key107515%_ _%value107516%_))))
    (define hash-update!__%
      (lambda (_%h107479%_ _%key107480%_ _%update107481%_ _%default107482%_)
        (let* ((_%h107488%_
                (let ((_%$obj107485%_ _%h107479%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107485%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107485%_)))
                           '#t)
                      _%$obj107485%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107485%_)))))
               (_%h107490%_ _%h107488%_))
          (__hash-update!__%
           _%h107490%_
           _%key107480%_
           _%update107481%_
           _%default107482%_))))
    (define hash-update!__0
      (lambda (_%h107503%_ _%key107504%_ _%update107505%_)
        (let ((_%default107507%_ '#!void))
          (hash-update!__%
           _%h107503%_
           _%key107504%_
           _%update107505%_
           _%default107507%_))))
    (define hash-update!
      (lambda _g111194_
        (let ((_g111193_ (let () (declare (not safe)) (##length _g111194_))))
          (cond ((let () (declare (not safe)) (##fx= _g111193_ 3))
                 (apply hash-update!__0 _g111194_))
                ((let () (declare (not safe)) (##fx= _g111193_ 4))
                 (apply hash-update!__% _g111194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g111194_))))))
    (define __hash-update!__%
      (lambda (_%h107449%_ _%key107450%_ _%update107451%_ _%default107452%_)
        (let ((_%h107455%_ _%h107449%_))
          (HashTable-update!
           _%h107455%_
           _%key107450%_
           _%update107451%_
           _%default107452%_))))
    (define __hash-update!__0
      (lambda (_%h107467%_ _%key107468%_ _%update107469%_)
        (let ((_%default107471%_ '#!void))
          (__hash-update!__%
           _%h107467%_
           _%key107468%_
           _%update107469%_
           _%default107471%_))))
    (define __hash-update!
      (lambda _g111196_
        (let ((_g111195_ (let () (declare (not safe)) (##length _g111196_))))
          (cond ((let () (declare (not safe)) (##fx= _g111195_ 3))
                 (apply __hash-update!__0 _g111196_))
                ((let () (declare (not safe)) (##fx= _g111195_ 4))
                 (apply __hash-update!__% _g111196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g111196_))))))
    (define hash-remove!
      (lambda (_%h107429%_ _%key107430%_)
        (let* ((_%h107436%_
                (let ((_%$obj107433%_ _%h107429%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107433%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107433%_)))
                           '#t)
                      _%$obj107433%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107433%_)))))
               (_%h107438%_ _%h107436%_))
          (__hash-remove! _%h107438%_ _%key107430%_))))
    (define __hash-remove!
      (lambda (_%h107416%_ _%key107417%_)
        (let ((_%h107420%_ _%h107416%_))
          (&HashTable-delete! _%h107420%_ _%key107417%_))))
    (define hash-key?
      (lambda (_%h107397%_ _%k107398%_)
        (let* ((_%h107404%_
                (let ((_%$obj107401%_ _%h107397%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107401%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107401%_)))
                           '#t)
                      _%$obj107401%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107401%_)))))
               (_%h107406%_ _%h107404%_))
          (__hash-key? _%h107406%_ _%k107398%_))))
    (define __hash-key?
      (lambda (_%h107384%_ _%k107385%_)
        (let ((_%h107388%_ _%h107384%_))
          (not (eq? (&HashTable-ref _%h107388%_ _%k107385%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h107366%_)
        (let* ((_%h107372%_
                (let ((_%$obj107369%_ _%h107366%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107369%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107369%_)))
                           '#t)
                      _%$obj107369%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107369%_)))))
               (_%h107374%_ _%h107372%_))
          (__hash->list _%h107374%_))))
    (define __hash->list
      (lambda (_%h107349%_)
        (let* ((_%h107352%_ _%h107349%_) (_%lst107361%_ '()))
          (&HashTable-for-each
           _%h107352%_
           (lambda (_%k107363%_ _%v107364%_)
             (set! _%lst107361%_
                   (cons (cons _%k107363%_ _%v107364%_) _%lst107361%_))))
          _%lst107361%_)))
    (define hash->plist
      (lambda (_%h107331%_)
        (let* ((_%h107337%_
                (let ((_%$obj107334%_ _%h107331%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107334%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107334%_)))
                           '#t)
                      _%$obj107334%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107334%_)))))
               (_%h107339%_ _%h107337%_))
          (__hash->plist _%h107339%_))))
    (define __hash->plist
      (lambda (_%h107314%_)
        (let* ((_%h107317%_ _%h107314%_) (_%lst107326%_ '()))
          (&HashTable-for-each
           _%h107317%_
           (lambda (_%k107328%_ _%v107329%_)
             (set! _%lst107326%_
                   (cons _%k107328%_ (cons _%v107329%_ _%lst107326%_)))))
          _%lst107326%_)))
    (define hash-for-each
      (lambda (_%proc107285%_ _%h107286%_)
        (if (procedure? _%proc107285%_)
            (let* ((_%proc107290%_ _%proc107285%_)
                   (_%h107302%_
                    (let ((_%$obj107299%_ _%h107286%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107299%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107299%_)))
                               '#t)
                          _%$obj107299%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107299%_)))))
                   (_%h107304%_ _%h107302%_))
              (__hash-for-each _%proc107290%_ _%h107304%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@569.22-569.26"
               'contract:
               'procedure?
               'value:
               _%proc107285%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc107264%_ _%h107265%_)
        (let* ((_%proc107268%_ _%proc107264%_) (_%h107276%_ _%h107265%_))
          (&HashTable-for-each _%h107276%_ _%proc107268%_))))
    (define hash-map
      (lambda (_%proc107235%_ _%h107236%_)
        (if (procedure? _%proc107235%_)
            (let* ((_%proc107240%_ _%proc107235%_)
                   (_%h107252%_
                    (let ((_%$obj107249%_ _%h107236%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107249%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107249%_)))
                               '#t)
                          _%$obj107249%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107249%_)))))
                   (_%h107254%_ _%h107252%_))
              (__hash-map _%proc107240%_ _%h107254%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@572.17-572.21"
               'contract:
               'procedure?
               'value:
               _%proc107235%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc107209%_ _%h107210%_)
        (let* ((_%proc107213%_ _%proc107209%_)
               (_%h107221%_ _%h107210%_)
               (_%result107230%_ '()))
          (&HashTable-for-each
           _%h107221%_
           (lambda (_%k107232%_ _%v107233%_)
             (set! _%result107230%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc107213%_ _%k107232%_ _%v107233%_))
                         _%result107230%_))))
          _%result107230%_)))
    (define hash-fold
      (lambda (_%proc107179%_ _%iv107180%_ _%h107181%_)
        (if (procedure? _%proc107179%_)
            (let* ((_%proc107185%_ _%proc107179%_)
                   (_%h107197%_
                    (let ((_%$obj107194%_ _%h107181%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107194%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107194%_)))
                               '#t)
                          _%$obj107194%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107194%_)))))
                   (_%h107199%_ _%h107197%_))
              (__hash-fold _%proc107185%_ _%iv107180%_ _%h107199%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@577.18-577.22"
               'contract:
               'procedure?
               'value:
               _%proc107179%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc107152%_ _%iv107153%_ _%h107154%_)
        (let* ((_%proc107157%_ _%proc107152%_)
               (_%h107165%_ _%h107154%_)
               (_%result107174%_ _%iv107153%_))
          (&HashTable-for-each
           _%h107165%_
           (lambda (_%k107176%_ _%v107177%_)
             (set! _%result107174%_
                   (let ()
                     (declare (not safe))
                     (_%proc107157%_
                      _%k107176%_
                      _%v107177%_
                      _%result107174%_)))))
          _%result107174%_)))
    (define hash-find__%
      (lambda (_%proc107110%_ _%h107111%_ _%default-value107112%_)
        (if (procedure? _%proc107110%_)
            (let* ((_%proc107116%_ _%proc107110%_)
                   (_%h107128%_
                    (let ((_%$obj107125%_ _%h107111%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107125%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107125%_)))
                               '#t)
                          _%$obj107125%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107125%_)))))
                   (_%h107130%_ _%h107128%_))
              (__hash-find__%
               _%proc107116%_
               _%h107130%_
               _%default-value107112%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@582.18-582.22"
               'contract:
               'procedure?
               'value:
               _%proc107110%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc107143%_ _%h107144%_)
        (let ((_%default-value107146%_ '#f))
          (hash-find__% _%proc107143%_ _%h107144%_ _%default-value107146%_))))
    (define hash-find
      (lambda _g111198_
        (let ((_g111197_ (let () (declare (not safe)) (##length _g111198_))))
          (cond ((let () (declare (not safe)) (##fx= _g111197_ 2))
                 (apply hash-find__0 _g111198_))
                ((let () (declare (not safe)) (##fx= _g111197_ 3))
                 (apply hash-find__% _g111198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g111198_))))))
    (define __hash-find__%
      (lambda (_%proc107067%_ _%h107068%_ _%default-value107069%_)
        (let* ((_%proc107072%_ _%proc107067%_)
               (_%h107080%_ _%h107068%_)
               (__tmp111199
                (lambda (_%return107089%_)
                  (&HashTable-for-each
                   _%h107080%_
                   (lambda (_%k107091%_ _%v107092%_)
                     (let ((_%$e107094%_
                            (let ()
                              (declare (not safe))
                              (_%proc107072%_ _%k107091%_ _%v107092%_))))
                       (if _%$e107094%_
                           (_%return107089%_ _%$e107094%_)
                           '#!void))))
                  _%default-value107069%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp111199))))
    (define __hash-find__0
      (lambda (_%proc107100%_ _%h107101%_)
        (let ((_%default-value107103%_ '#f))
          (__hash-find__%
           _%proc107100%_
           _%h107101%_
           _%default-value107103%_))))
    (define __hash-find
      (lambda _g111201_
        (let ((_g111200_ (let () (declare (not safe)) (##length _g111201_))))
          (cond ((let () (declare (not safe)) (##fx= _g111200_ 2))
                 (apply __hash-find__0 _g111201_))
                ((let () (declare (not safe)) (##fx= _g111200_ 3))
                 (apply __hash-find__% _g111201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g111201_))))))
    (define hash-keys
      (lambda (_%h107048%_)
        (let* ((_%h107054%_
                (let ((_%$obj107051%_ _%h107048%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107051%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107051%_)))
                           '#t)
                      _%$obj107051%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107051%_)))))
               (_%h107056%_ _%h107054%_))
          (__hash-keys _%h107056%_))))
    (define __hash-keys
      (lambda (_%h107031%_)
        (let* ((_%h107034%_ _%h107031%_) (_%result107043%_ '()))
          (&HashTable-for-each
           _%h107034%_
           (lambda (_%k107045%_ _%v107046%_)
             (set! _%result107043%_ (cons _%k107045%_ _%result107043%_))))
          _%result107043%_)))
    (define hash-values
      (lambda (_%h107013%_)
        (let* ((_%h107019%_
                (let ((_%$obj107016%_ _%h107013%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107016%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107016%_)))
                           '#t)
                      _%$obj107016%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107016%_)))))
               (_%h107021%_ _%h107019%_))
          (__hash-values _%h107021%_))))
    (define __hash-values
      (lambda (_%h106996%_)
        (let* ((_%h106999%_ _%h106996%_) (_%result107008%_ '()))
          (&HashTable-for-each
           _%h106999%_
           (lambda (_%k107010%_ _%v107011%_)
             (set! _%result107008%_ (cons _%v107011%_ _%result107008%_))))
          _%result107008%_)))
    (define hash-copy
      (lambda (_%h106978%_)
        (let* ((_%h106984%_
                (let ((_%$obj106981%_ _%h106978%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106981%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106981%_)))
                           '#t)
                      _%$obj106981%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106981%_)))))
               (_%h106986%_ _%h106984%_))
          (__hash-copy _%h106986%_))))
    (define __hash-copy
      (lambda (_%h106966%_)
        (let ((_%h106969%_ _%h106966%_)) (__HashTable-copy _%h106969%_))))
    (define hash-clear!
      (lambda (_%h106948%_)
        (let* ((_%h106954%_
                (let ((_%$obj106951%_ _%h106948%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106951%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106951%_)))
                           '#t)
                      _%$obj106951%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106951%_)))))
               (_%h106956%_ _%h106954%_))
          (__hash-clear! _%h106956%_))))
    (define __hash-clear!
      (lambda (_%h106936%_)
        (let ((_%h106939%_ _%h106936%_)) (&HashTable-clear! _%h106939%_))))
    (define hash-merge
      (lambda (_%h106917%_ . _%rest106918%_)
        (let* ((_%h106924%_
                (let ((_%$obj106921%_ _%h106917%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106921%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106921%_)))
                           '#t)
                      _%$obj106921%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106921%_)))))
               (_%h106926%_ _%h106924%_))
          (declare (not safe))
          (##apply __hash-merge _%h106926%_ _%rest106918%_))))
    (define __hash-merge
      (lambda (_%h106902%_ . _%rest106903%_)
        (let* ((_%h106906%_ _%h106902%_)
               (_%copy106915%_ (__HashTable-copy _%h106906%_)))
          (apply hash-merge! _%copy106915%_ _%rest106903%_)
          _%copy106915%_)))
    (define hash-merge!
      (lambda (_%h106883%_ . _%rest106884%_)
        (let* ((_%h106890%_
                (let ((_%$obj106887%_ _%h106883%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106887%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106887%_)))
                           '#t)
                      _%$obj106887%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106887%_)))))
               (_%h106892%_ _%h106890%_))
          (declare (not safe))
          (##apply __hash-merge! _%h106892%_ _%rest106884%_))))
    (define __hash-merge!
      (lambda (_%h106846%_ . _%rest106847%_)
        (let ((_%h106850%_ _%h106846%_))
          (let ((__tmp111202
                 (lambda (_%hr106859%_)
                   (let* ((_%hr106865%_
                           (let ((_%$obj106862%_ _%hr106859%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj106862%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj106862%_)))
                                      '#t)
                                 _%$obj106862%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj106862%_)))))
                          (_%hr106867%_ _%hr106865%_))
                     (&HashTable-for-each
                      _%hr106867%_
                      (lambda (_%k106880%_ _%v106881%_)
                        (if (__hash-key? _%h106850%_ _%k106880%_)
                            '#!void
                            (&HashTable-set!
                             _%h106850%_
                             _%k106880%_
                             _%v106881%_))))))))
            (declare (not safe))
            (##for-each __tmp111202 _%rest106847%_))
          _%h106850%_)))))
