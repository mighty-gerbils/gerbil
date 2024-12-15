(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1734225193)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp111095 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp111095
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args111075%_
        (apply make-instance UnboundKeyError::t _%$args111075%_)))
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
      (lambda (_%where110949%_ _%message110950%_ . _%irritants110951%_)
        (let ((__tmp111096
               (let ((__obj111089
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj111089
                    _%message110950%_
                    'where:
                    _%where110949%_
                    'irritants:
                    _%irritants110951%_))
                 __obj111089)))
          (declare (not safe))
          (raise __tmp111096))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp111097 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp111097
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
      (lambda (_%obj110947%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj110947%_))))
    (define try-HashTable
      (lambda (_%obj110945%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj110945%_))))
    (define HashTable?
      (lambda (_%obj110943%_)
        (let ((__tmp111098
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110943%_ __tmp111098))))
    (define is-HashTable?
      (lambda (_%obj110941%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj110941%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self110925%_)
        (let* ((_%self110930%_
                (let ((_%$obj110927%_ _%self110925%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110927%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110927%_)))
                           '#t)
                      _%$obj110927%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110927%_)))))
               (_%self110932%_ _%self110930%_))
          (&HashTable-clear! _%self110932%_))))
    (define &HashTable-clear!
      (lambda (_%self110910%_)
        (let ((_%self110912%_ _%self110910%_))
          (declare (not safe))
          (let ((_%obj110922%_
                 (##unchecked-structure-ref _%self110912%_ '1 '#f 'clear!))
                (_%f110923%_
                 (##unchecked-structure-ref _%self110912%_ '2 '#f 'clear!)))
            (_%f110923%_ _%obj110922%_)))))
    (define HashTable-copy
      (lambda (_%self110894%_)
        (let* ((_%self110899%_
                (let ((_%$obj110896%_ _%self110894%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110896%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110896%_)))
                           '#t)
                      _%$obj110896%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110896%_)))))
               (_%self110901%_ _%self110899%_))
          (__HashTable-copy _%self110901%_))))
    (define __HashTable-copy
      (lambda (_%self110881%_)
        (let* ((_%self110883%_ _%self110881%_)
               (_%$obj110891%_ (&HashTable-copy _%self110883%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj110891%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj110891%_)))
                   '#t)
              _%$obj110891%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj110891%_))))))
    (define &HashTable-copy
      (lambda (_%self110866%_)
        (let ((_%self110868%_ _%self110866%_))
          (declare (not safe))
          (let ((_%obj110878%_
                 (##unchecked-structure-ref _%self110868%_ '1 '#f 'copy))
                (_%f110879%_
                 (##unchecked-structure-ref _%self110868%_ '3 '#f 'copy)))
            (_%f110879%_ _%obj110878%_)))))
    (define HashTable-delete!
      (lambda (_%self110849%_ _%key110850%_)
        (let* ((_%self110855%_
                (let ((_%$obj110852%_ _%self110849%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110852%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110852%_)))
                           '#t)
                      _%$obj110852%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110852%_)))))
               (_%self110857%_ _%self110855%_))
          (&HashTable-delete! _%self110857%_ _%key110850%_))))
    (define &HashTable-delete!
      (lambda (_%self110833%_ _%key110834%_)
        (let ((_%self110836%_ _%self110833%_))
          (declare (not safe))
          (let ((_%obj110846%_
                 (##unchecked-structure-ref _%self110836%_ '1 '#f 'delete!))
                (_%f110847%_
                 (##unchecked-structure-ref _%self110836%_ '4 '#f 'delete!)))
            (_%f110847%_ _%obj110846%_ _%key110834%_)))))
    (define HashTable-for-each
      (lambda (_%self110806%_ _%proc110807%_)
        (let* ((_%self110812%_
                (let ((_%$obj110809%_ _%self110806%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110809%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110809%_)))
                           '#t)
                      _%$obj110809%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110809%_)))))
               (_%self110814%_ _%self110812%_))
          (if (procedure? _%proc110807%_)
              (let ((_%proc110823%_ _%proc110807%_))
                (&HashTable-for-each _%self110814%_ _%proc110823%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110807%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self110782%_ _%proc110783%_)
        (let* ((_%self110785%_ _%self110782%_) (_%proc110792%_ _%proc110783%_))
          (declare (not safe))
          (let ((_%obj110803%_
                 (##unchecked-structure-ref _%self110785%_ '1 '#f 'for-each))
                (_%f110804%_
                 (##unchecked-structure-ref _%self110785%_ '5 '#f 'for-each)))
            (_%f110804%_ _%obj110803%_ _%proc110792%_)))))
    (define HashTable-length
      (lambda (_%self110766%_)
        (let* ((_%self110771%_
                (let ((_%$obj110768%_ _%self110766%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110768%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110768%_)))
                           '#t)
                      _%$obj110768%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110768%_)))))
               (_%self110773%_ _%self110771%_))
          (__HashTable-length _%self110773%_))))
    (define __HashTable-length
      (lambda (_%self110753%_)
        (let* ((_%self110755%_ _%self110753%_)
               (_%val110763%_ (&HashTable-length _%self110755%_)))
          _%val110763%_)))
    (define &HashTable-length
      (lambda (_%self110738%_)
        (let ((_%self110740%_ _%self110738%_))
          (declare (not safe))
          (let ((_%obj110750%_
                 (##unchecked-structure-ref _%self110740%_ '1 '#f 'length))
                (_%f110751%_
                 (##unchecked-structure-ref _%self110740%_ '6 '#f 'length)))
            (_%f110751%_ _%obj110750%_)))))
    (define HashTable-ref
      (lambda (_%self110720%_ _%key110721%_ _%default110722%_)
        (let* ((_%self110727%_
                (let ((_%$obj110724%_ _%self110720%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110724%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110724%_)))
                           '#t)
                      _%$obj110724%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110724%_)))))
               (_%self110729%_ _%self110727%_))
          (&HashTable-ref _%self110729%_ _%key110721%_ _%default110722%_))))
    (define &HashTable-ref
      (lambda (_%self110703%_ _%key110704%_ _%default110705%_)
        (let ((_%self110707%_ _%self110703%_))
          (declare (not safe))
          (let ((_%obj110717%_
                 (##unchecked-structure-ref _%self110707%_ '1 '#f 'ref))
                (_%f110718%_
                 (##unchecked-structure-ref _%self110707%_ '7 '#f 'ref)))
            (_%f110718%_ _%obj110717%_ _%key110704%_ _%default110705%_)))))
    (define HashTable-set!
      (lambda (_%self110685%_ _%key110686%_ _%value110687%_)
        (let* ((_%self110692%_
                (let ((_%$obj110689%_ _%self110685%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110689%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110689%_)))
                           '#t)
                      _%$obj110689%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110689%_)))))
               (_%self110694%_ _%self110692%_))
          (&HashTable-set! _%self110694%_ _%key110686%_ _%value110687%_))))
    (define &HashTable-set!
      (lambda (_%self110668%_ _%key110669%_ _%value110670%_)
        (let ((_%self110672%_ _%self110668%_))
          (declare (not safe))
          (let ((_%obj110682%_
                 (##unchecked-structure-ref _%self110672%_ '1 '#f 'set!))
                (_%f110683%_
                 (##unchecked-structure-ref _%self110672%_ '8 '#f 'set!)))
            (_%f110683%_ _%obj110682%_ _%key110669%_ _%value110670%_)))))
    (define HashTable-update!
      (lambda (_%self110639%_ _%key110640%_ _%proc110641%_ _%default110642%_)
        (let* ((_%self110647%_
                (let ((_%$obj110644%_ _%self110639%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110644%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110644%_)))
                           '#t)
                      _%$obj110644%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110644%_)))))
               (_%self110649%_ _%self110647%_))
          (if (procedure? _%proc110641%_)
              (let ((_%proc110658%_ _%proc110641%_))
                (&HashTable-update!
                 _%self110649%_
                 _%key110640%_
                 _%proc110658%_
                 _%default110642%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110641%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self110611%_ _%key110612%_ _%proc110613%_ _%default110614%_)
        (let* ((_%self110616%_ _%self110611%_) (_%proc110623%_ _%proc110613%_))
          (declare (not safe))
          (let ((_%obj110634%_
                 (##unchecked-structure-ref _%self110616%_ '1 '#f 'update!))
                (_%f110636%_
                 (##unchecked-structure-ref _%self110616%_ '9 '#f 'update!)))
            (_%f110636%_
             _%obj110634%_
             _%key110612%_
             _%proc110623%_
             _%default110614%_)))))
    (define Locker::t
      (let ((__tmp111099 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp111099
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
      (lambda (_%obj110609%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj110609%_))))
    (define try-Locker
      (lambda (_%obj110607%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj110607%_))))
    (define Locker?
      (lambda (_%obj110605%_)
        (let ((__tmp111100
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110605%_ __tmp111100))))
    (define is-Locker?
      (lambda (_%obj110603%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj110603%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self110587%_)
        (let* ((_%self110592%_
                (let ((_%$obj110589%_ _%self110587%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110589%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110589%_)))
                           '#t)
                      _%$obj110589%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110589%_)))))
               (_%self110594%_ _%self110592%_))
          (&Locker-read-lock! _%self110594%_))))
    (define &Locker-read-lock!
      (lambda (_%self110572%_)
        (let ((_%self110574%_ _%self110572%_))
          (declare (not safe))
          (let ((_%obj110584%_
                 (##unchecked-structure-ref _%self110574%_ '1 '#f 'read-lock!))
                (_%f110585%_
                 (##unchecked-structure-ref
                  _%self110574%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f110585%_ _%obj110584%_)))))
    (define Locker-read-unlock!
      (lambda (_%self110556%_)
        (let* ((_%self110561%_
                (let ((_%$obj110558%_ _%self110556%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110558%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110558%_)))
                           '#t)
                      _%$obj110558%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110558%_)))))
               (_%self110563%_ _%self110561%_))
          (&Locker-read-unlock! _%self110563%_))))
    (define &Locker-read-unlock!
      (lambda (_%self110541%_)
        (let ((_%self110543%_ _%self110541%_))
          (declare (not safe))
          (let ((_%obj110553%_
                 (##unchecked-structure-ref
                  _%self110543%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f110554%_
                 (##unchecked-structure-ref
                  _%self110543%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f110554%_ _%obj110553%_)))))
    (define Locker-write-lock!
      (lambda (_%self110525%_)
        (let* ((_%self110530%_
                (let ((_%$obj110527%_ _%self110525%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110527%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110527%_)))
                           '#t)
                      _%$obj110527%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110527%_)))))
               (_%self110532%_ _%self110530%_))
          (&Locker-write-lock! _%self110532%_))))
    (define &Locker-write-lock!
      (lambda (_%self110510%_)
        (let ((_%self110512%_ _%self110510%_))
          (declare (not safe))
          (let ((_%obj110522%_
                 (##unchecked-structure-ref
                  _%self110512%_
                  '1
                  '#f
                  'write-lock!))
                (_%f110523%_
                 (##unchecked-structure-ref
                  _%self110512%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f110523%_ _%obj110522%_)))))
    (define Locker-write-unlock!
      (lambda (_%self110494%_)
        (let* ((_%self110499%_
                (let ((_%$obj110496%_ _%self110494%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110496%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110496%_)))
                           '#t)
                      _%$obj110496%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110496%_)))))
               (_%self110501%_ _%self110499%_))
          (&Locker-write-unlock! _%self110501%_))))
    (define &Locker-write-unlock!
      (lambda (_%self110477%_)
        (let ((_%self110479%_ _%self110477%_))
          (declare (not safe))
          (let ((_%obj110489%_
                 (##unchecked-structure-ref
                  _%self110479%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f110491%_
                 (##unchecked-structure-ref
                  _%self110479%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f110491%_ _%obj110489%_)))))
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
      (lambda (_%table110470%_
               _%key110471%_
               _%update110472%_
               _%default110473%_)
        (let ((_%result110475%_
               (table-ref _%table110470%_ _%key110471%_ _%default110473%_)))
          (table-set!
           _%table110470%_
           _%key110471%_
           (_%update110472%_ _%default110473%_)))))
    (define gambit-table-for-each
      (lambda (_%table110467%_ _%proc110468%_)
        (table-for-each _%proc110468%_ _%table110467%_)))
    (define gambit-table-clear!
      (lambda (_%table110465%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table110465%_ '0 '5 '#f '#f))))
    (let ((__tmp111101 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111101 'HashTable::ref table-ref))
    (let ((__tmp111102 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111102 'HashTable::set! table-set!))
    (let ((__tmp111103 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111103 'HashTable::update! gambit-table-update!))
    (let ((__tmp111104 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111104 'HashTable::delete! table-set!))
    (let ((__tmp111105 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111105 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp111106 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111106 'HashTable::length table-length))
    (let ((__tmp111107 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111107 'HashTable::copy table-copy))
    (let ((__tmp111108 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111108 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots110447%_ '(table count free hash test seed))
             (_%slot-vector110449%_ (list->vector (cons '#f _%slots110447%_)))
             (_%slot-table110456%_
              (let ((_%slot-table110451%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111111
                       (lambda (_%slot110453%_ _%field110454%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110451%_
                            _%slot110453%_
                            _%field110454%_))
                         (let ((__tmp111112
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110453%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110451%_
                            __tmp111112
                            _%field110454%_))))
                      (__tmp111109
                       (let ((__tmp111110
                              (let ()
                                (declare (not safe))
                                (##length _%slots110447%_))))
                         (declare (not safe))
                         (##iota __tmp111110 '1))))
                  (declare (not safe))
                  (##for-each __tmp111111 _%slots110447%_ __tmp111109))
                _%slot-table110451%_))
             (_%flags110458%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110460%_ '#())
             (_%properties110462%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110447%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111113 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags110458%_
         __table::t
         _%fields110460%_
         __tmp111113
         _%slot-vector110449%_
         _%slot-table110456%_
         _%properties110462%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots110429%_ '(gcht immediate))
             (_%slot-vector110431%_ (list->vector (cons '#f _%slots110429%_)))
             (_%slot-table110438%_
              (let ((_%slot-table110433%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111116
                       (lambda (_%slot110435%_ _%field110436%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110433%_
                            _%slot110435%_
                            _%field110436%_))
                         (let ((__tmp111117
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110435%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110433%_
                            __tmp111117
                            _%field110436%_))))
                      (__tmp111114
                       (let ((__tmp111115
                              (let ()
                                (declare (not safe))
                                (##length _%slots110429%_))))
                         (declare (not safe))
                         (##iota __tmp111115 '1))))
                  (declare (not safe))
                  (##for-each __tmp111116 _%slots110429%_ __tmp111114))
                _%slot-table110433%_))
             (_%flags110440%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110442%_ '#())
             (_%properties110444%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110429%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111118 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags110440%_
         __gc-table::t
         _%fields110442%_
         __tmp111118
         _%slot-vector110431%_
         _%slot-table110438%_
         _%properties110444%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp111120 (list))
            (__tmp111119
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp111120
         '(table lock)
         __tmp111119
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args110426%_
        (apply make-instance locked-hash-table::t _%$args110426%_)))
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
      (let ((__tmp111122 (list))
            (__tmp111121
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp111122
         '(table key-check)
         __tmp111121
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args110423%_
        (apply make-instance checked-hash-table::t _%$args110423%_)))
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
      (let ((__tmp111124 (list hash-table::t))
            (__tmp111123 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp111124
         '()
         __tmp111123
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args110420%_
        (apply make-instance eq-hash-table::t _%$args110420%_)))
    (define eqv-hash-table::t
      (let ((__tmp111126 (list hash-table::t))
            (__tmp111125 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp111126
         '()
         __tmp111125
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args110417%_
        (apply make-instance eqv-hash-table::t _%$args110417%_)))
    (define symbol-hash-table::t
      (let ((__tmp111128 (list hash-table::t))
            (__tmp111127 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp111128
         '()
         __tmp111127
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args110414%_
        (apply make-instance symbol-hash-table::t _%$args110414%_)))
    (define string-hash-table::t
      (let ((__tmp111130 (list hash-table::t))
            (__tmp111129 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp111130
         '()
         __tmp111129
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args110411%_
        (apply make-instance string-hash-table::t _%$args110411%_)))
    (define immediate-hash-table::t
      (let ((__tmp111132 (list hash-table::t))
            (__tmp111131 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp111132
         '()
         __tmp111131
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args110408%_
        (apply make-instance immediate-hash-table::t _%$args110408%_)))
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
    (define _%locked-hash-table::HashTable::ref106408%_
      (lambda (_%self106407110382%_ _%key110384%_ _%default110385%_)
        (let* ((_%self110387%_ _%self106407110382%_)
               (_%self110390%_ _%self110387%_))
          (let ((_%h110400%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110390%_ '1 '#f '#f)))
                (_%l110402%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110390%_ '2 '#f '#f))))
            (let ((__tmp111135 (lambda () (&Locker-read-lock! _%l110402%_)))
                  (__tmp111134
                   (lambda ()
                     (&HashTable-ref
                      _%h110400%_
                      _%key110384%_
                      _%default110385%_)))
                  (__tmp111133 (lambda () (&Locker-read-unlock! _%l110402%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111135 __tmp111134 __tmp111133))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref106408%_
       '#f))
    (define _%locked-hash-table::HashTable::set!106411%_
      (lambda (_%self106410110233%_ _%key110235%_ _%value110236%_)
        (let* ((_%self110238%_ _%self106410110233%_)
               (_%self110241%_ _%self110238%_))
          (let ((_%h110251%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110241%_ '1 '#f '#f)))
                (_%l110253%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110241%_ '2 '#f '#f))))
            (let ((__tmp111138 (lambda () (&Locker-write-lock! _%l110253%_)))
                  (__tmp111137
                   (lambda ()
                     (&HashTable-set!
                      _%h110251%_
                      _%key110235%_
                      _%value110236%_)))
                  (__tmp111136
                   (lambda () (&Locker-write-unlock! _%l110253%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111138 __tmp111137 __tmp111136))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!106411%_
       '#f))
    (define _%locked-hash-table::HashTable::update!106414%_
      (lambda (_%self106413110083%_
               _%key110085%_
               _%update110086%_
               _%default110087%_)
        (let* ((_%self110089%_ _%self106413110083%_)
               (_%self110092%_ _%self110089%_))
          (let ((_%h110102%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110092%_ '1 '#f '#f)))
                (_%l110104%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110092%_ '2 '#f '#f))))
            (let ((__tmp111141 (lambda () (&Locker-write-lock! _%l110104%_)))
                  (__tmp111140
                   (lambda ()
                     (&HashTable-update!
                      _%h110102%_
                      _%key110085%_
                      _%update110086%_
                      _%default110087%_)))
                  (__tmp111139
                   (lambda () (&Locker-write-unlock! _%l110104%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111141 __tmp111140 __tmp111139))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!106414%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!106417%_
      (lambda (_%self106416109935%_ _%key109937%_)
        (let* ((_%self109939%_ _%self106416109935%_)
               (_%self109942%_ _%self109939%_))
          (let ((_%h109952%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109942%_ '1 '#f '#f)))
                (_%l109954%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109942%_ '2 '#f '#f))))
            (let ((__tmp111144 (lambda () (&Locker-write-lock! _%l109954%_)))
                  (__tmp111143
                   (lambda () (&HashTable-delete! _%h109952%_ _%key109937%_)))
                  (__tmp111142
                   (lambda () (&Locker-write-unlock! _%l109954%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111144 __tmp111143 __tmp111142))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!106417%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each106420%_
      (lambda (_%self106419109787%_ _%proc109789%_)
        (let* ((_%self109791%_ _%self106419109787%_)
               (_%self109794%_ _%self109791%_))
          (let ((_%h109804%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109794%_ '1 '#f '#f)))
                (_%l109806%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109794%_ '2 '#f '#f))))
            (let ((__tmp111147 (lambda () (&Locker-read-lock! _%l109806%_)))
                  (__tmp111146
                   (lambda ()
                     (&HashTable-for-each _%h109804%_ _%proc109789%_)))
                  (__tmp111145 (lambda () (&Locker-read-unlock! _%l109806%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111147 __tmp111146 __tmp111145))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each106420%_
       '#f))
    (define _%locked-hash-table::HashTable::length106423%_
      (lambda (_%self106422109640%_)
        (let* ((_%self109643%_ _%self106422109640%_)
               (_%self109646%_ _%self109643%_))
          (let ((_%h109656%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109646%_ '1 '#f '#f)))
                (_%l109658%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109646%_ '2 '#f '#f))))
            (let ((__tmp111150 (lambda () (&Locker-read-lock! _%l109658%_)))
                  (__tmp111149 (lambda () (&HashTable-length _%h109656%_)))
                  (__tmp111148 (lambda () (&Locker-read-unlock! _%l109658%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111150 __tmp111149 __tmp111148))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length106423%_
       '#f))
    (define _%locked-hash-table::HashTable::copy106426%_
      (lambda (_%self106425109493%_)
        (let* ((_%self109496%_ _%self106425109493%_)
               (_%self109499%_ _%self109496%_))
          (let ((_%h109509%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109499%_ '1 '#f '#f)))
                (_%l109511%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109499%_ '2 '#f '#f))))
            (let ((__tmp111153 (lambda () (&Locker-read-lock! _%l109511%_)))
                  (__tmp111152 (lambda () (&HashTable-copy _%h109509%_)))
                  (__tmp111151 (lambda () (&Locker-read-unlock! _%l109511%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111153 __tmp111152 __tmp111151))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy106426%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!106429%_
      (lambda (_%self106428109346%_)
        (let* ((_%self109349%_ _%self106428109346%_)
               (_%self109352%_ _%self109349%_))
          (let ((_%h109362%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109352%_ '1 '#f '#f)))
                (_%l109364%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109352%_ '2 '#f '#f))))
            (let ((__tmp111156 (lambda () (&Locker-write-lock! _%l109364%_)))
                  (__tmp111155 (lambda () (&HashTable-clear! _%h109362%_)))
                  (__tmp111154
                   (lambda () (&Locker-write-unlock! _%l109364%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111156 __tmp111155 __tmp111154))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!106429%_
       '#f))
    (let ((__tmp111157 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111157 'Locker::read-lock! mutex-lock!))
    (let ((__tmp111158 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111158 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp111159 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111159 'Locker::write-lock! mutex-lock!))
    (let ((__tmp111160 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111160 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref106643%_
      (lambda (_%self106642109196%_ _%key109198%_ _%default109199%_)
        (let* ((_%self109201%_ _%self106642109196%_)
               (_%self109203%_ _%self109201%_))
          (declare (not safe))
          (let ((_%h109214%_
                 (##unchecked-structure-ref _%self109203%_ '1 '#f '#f))
                (_%key?109216%_
                 (##unchecked-structure-ref _%self109203%_ '2 '#f '#f)))
            (if ((lambda (_%key?109219%_ _%key109220%_ _%default109221%_)
                   (_%key?109219%_ _%key109220%_))
                 _%key?109216%_
                 _%key109198%_
                 _%default109199%_)
                (&HashTable-ref _%h109214%_ _%key109198%_ _%default109199%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key109198%_ (cons _%default109199%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref106643%_
       '#f))
    (define _%checked-hash-table::HashTable::set!106646%_
      (lambda (_%self106645109046%_ _%key109048%_ _%value109049%_)
        (let* ((_%self109051%_ _%self106645109046%_)
               (_%self109053%_ _%self109051%_))
          (declare (not safe))
          (let ((_%h109064%_
                 (##unchecked-structure-ref _%self109053%_ '1 '#f '#f))
                (_%key?109066%_
                 (##unchecked-structure-ref _%self109053%_ '2 '#f '#f)))
            (if ((lambda (_%key?109069%_ _%key109070%_ _%value109071%_)
                   (_%key?109069%_ _%key109070%_))
                 _%key?109066%_
                 _%key109048%_
                 _%value109049%_)
                (&HashTable-set! _%h109064%_ _%key109048%_ _%value109049%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key109048%_ (cons _%value109049%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!106646%_
       '#f))
    (define _%checked-hash-table::HashTable::update!106649%_
      (lambda (_%self106648108894%_
               _%key108896%_
               _%update108897%_
               _%default108898%_)
        (let* ((_%self108900%_ _%self106648108894%_)
               (_%self108902%_ _%self108900%_))
          (declare (not safe))
          (let ((_%h108913%_
                 (##unchecked-structure-ref _%self108902%_ '1 '#f '#f))
                (_%key?108915%_
                 (##unchecked-structure-ref _%self108902%_ '2 '#f '#f)))
            (if ((lambda (_%key?108918%_
                          _%key108919%_
                          _%update108920%_
                          _%default108921%_)
                   (_%key?108918%_ _%key108919%_))
                 _%key?108915%_
                 _%key108896%_
                 _%update108897%_
                 _%default108898%_)
                (&HashTable-update!
                 _%h108913%_
                 _%key108896%_
                 _%update108897%_
                 _%default108898%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key108896%_
                         (cons _%update108897%_ (cons _%default108898%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!106649%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!106652%_
      (lambda (_%self106651108746%_ _%key108748%_)
        (let* ((_%self108750%_ _%self106651108746%_)
               (_%self108752%_ _%self108750%_))
          (declare (not safe))
          (let ((_%h108763%_
                 (##unchecked-structure-ref _%self108752%_ '1 '#f '#f))
                (_%key?108765%_
                 (##unchecked-structure-ref _%self108752%_ '2 '#f '#f)))
            (if ((lambda (_%key?108768%_ _%key108769%_)
                   (_%key?108768%_ _%key108769%_))
                 _%key?108765%_
                 _%key108748%_)
                (&HashTable-delete! _%h108763%_ _%key108748%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key108748%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!106652%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each106655%_
      (lambda (_%self106654108598%_ _%proc108600%_)
        (let* ((_%self108602%_ _%self106654108598%_)
               (_%self108604%_ _%self108602%_))
          (declare (not safe))
          (let ((_%h108615%_
                 (##unchecked-structure-ref _%self108604%_ '1 '#f '#f))
                (_%key?108617%_
                 (##unchecked-structure-ref _%self108604%_ '2 '#f '#f)))
            (if ((lambda (_%key?108620%_ _%proc108621%_) '#t)
                 _%key?108617%_
                 _%proc108600%_)
                (&HashTable-for-each _%h108615%_ _%proc108600%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc108600%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each106655%_
       '#f))
    (define _%checked-hash-table::HashTable::length106658%_
      (lambda (_%self106657108454%_)
        (let* ((_%self108457%_ _%self106657108454%_)
               (_%self108459%_ _%self108457%_))
          (declare (not safe))
          (let ((_%h108470%_
                 (##unchecked-structure-ref _%self108459%_ '1 '#f '#f))
                (_%key?108472%_
                 (##unchecked-structure-ref _%self108459%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h108470%_)
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
       _%checked-hash-table::HashTable::length106658%_
       '#f))
    (define _%checked-hash-table::HashTable::copy106661%_
      (lambda (_%self106660108310%_)
        (let* ((_%self108313%_ _%self106660108310%_)
               (_%self108315%_ _%self108313%_))
          (declare (not safe))
          (let ((_%h108326%_
                 (##unchecked-structure-ref _%self108315%_ '1 '#f '#f))
                (_%key?108328%_
                 (##unchecked-structure-ref _%self108315%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h108326%_)
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
       _%checked-hash-table::HashTable::copy106661%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!106664%_
      (lambda (_%self106663108166%_)
        (let* ((_%self108169%_ _%self106663108166%_)
               (_%self108171%_ _%self108169%_))
          (declare (not safe))
          (let ((_%h108182%_
                 (##unchecked-structure-ref _%self108171%_ '1 '#f '#f))
                (_%key?108184%_
                 (##unchecked-structure-ref _%self108171%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h108182%_)
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
       _%checked-hash-table::HashTable::clear!106664%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table108036%_
               _%count108037%_
               _%free108038%_
               _%hash108039%_
               _%test108040%_
               _%seed108041%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table108036%_
           _%count108037%_
           _%free108038%_
           _%hash108039%_
           _%test108040%_
           _%seed108041%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords107797%_
               _%size-hint107787107798%_
               _%seed107788107800%_
               _%test107789107802%_
               _%hash107790107804%_
               _%lock107791107806%_
               _%check107792107808%_
               _%weak-keys107793107810%_
               _%weak-values107794107812%_)
        (let* ((_%size-hint107815%_
                (if (eq? _%size-hint107787107798%_ absent-value)
                    '#f
                    _%size-hint107787107798%_))
               (_%seed107817%_
                (if (eq? _%seed107788107800%_ absent-value)
                    '#f
                    _%seed107788107800%_))
               (_%test107819%_
                (if (eq? _%test107789107802%_ absent-value)
                    equal?
                    _%test107789107802%_))
               (_%hash107821%_
                (if (eq? _%hash107790107804%_ absent-value)
                    '#f
                    _%hash107790107804%_))
               (_%lock107823%_
                (if (eq? _%lock107791107806%_ absent-value)
                    '#f
                    _%lock107791107806%_))
               (_%check107825%_
                (if (eq? _%check107792107808%_ absent-value)
                    '#f
                    _%check107792107808%_))
               (_%weak-keys107827%_
                (if (eq? _%weak-keys107793107810%_ absent-value)
                    '#f
                    _%weak-keys107793107810%_))
               (_%weak-values107829%_
                (if (eq? _%weak-values107794107812%_ absent-value)
                    '#f
                    _%weak-values107794107812%_)))
          (letrec ((_%table-seed107832%_
                    (lambda ()
                      (if (fixnum? _%seed107817%_)
                          _%seed107817%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock107833%_
                    (lambda (_%ht108010%_)
                      (let ((_%ht108013%_ _%ht108010%_))
                        (_%__wrap-lock107834%_ _%ht108013%_))))
                   (_%__wrap-lock107834%_
                    (lambda (_%ht107992%_)
                      (let ((_%ht107995%_ _%ht107992%_))
                        (if _%lock107823%_
                            (let ((_%$obj108007%_
                                   (let ((__tmp111161
                                          (let ((_%$obj108004%_
                                                 _%lock107823%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj108004%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj108004%_)))
                                                     '#t)
                                                _%$obj108004%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj108004%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht107995%_
                                      __tmp111161))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj108007%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj108007%_)))
                                       '#t)
                                  _%$obj108007%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj108007%_))))
                            _%ht107995%_))))
                   (_%wrap-checked107835%_
                    (lambda (_%ht107979%_ _%implicit107980%_)
                      (let ((_%ht107983%_ _%ht107979%_))
                        (_%__wrap-checked107836%_
                         _%ht107983%_
                         _%implicit107980%_))))
                   (_%__wrap-checked107836%_
                    (lambda (_%ht107952%_ _%implicit107953%_)
                      (let ((_%ht107956%_ _%ht107952%_))
                        (if _%check107825%_
                            (let ((_%$obj107976%_
                                   (let ((__tmp111162
                                          (if (procedure? _%check107825%_)
                                              _%check107825%_
                                              _%implicit107953%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht107956%_
                                      __tmp111162))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107976%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107976%_)))
                                       '#t)
                                  _%$obj107976%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107976%_))))
                            _%ht107956%_))))
                   (_%make107837%_
                    (lambda (_%kons107936%_
                             _%key?107937%_
                             _%hash107938%_
                             _%test107939%_)
                      (let* ((_%size107942%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint107815%_)))
                             (_%table107944%_
                              (let ((__tmp111163 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size107942%_ __tmp111163)))
                             (_%ht107949%_
                              (let ((_%$obj107946%_
                                     (_%kons107936%_
                                      _%table107944%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size107942%_ '2))
                                      _%hash107938%_
                                      _%test107939%_
                                      (_%table-seed107832%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107946%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107946%_)))
                                         '#t)
                                    _%$obj107946%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107946%_))))))
                        (_%__wrap-checked107836%_
                         (_%__wrap-lock107834%_ _%ht107949%_)
                         _%key?107937%_))))
                   (_%make-gc-hash-table107838%_
                    (lambda ()
                      (let ((_%ht107934%_
                             (let ((_%$obj107931%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint107815%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj107931%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj107931%_)))
                                        '#t)
                                   _%$obj107931%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj107931%_))))))
                        (_%__wrap-checked107836%_
                         (_%__wrap-lock107834%_ _%ht107934%_)
                         true))))
                   (_%make-gambit-table107839%_
                    (lambda ()
                      (let* ((_%size107908%_
                              (let ((_%$e107905%_ _%size-hint107815%_))
                                (if _%$e107905%_
                                    _%$e107905%_
                                    (macro-absent-obj))))
                             (_%test107913%_
                              (let ((_%$e107910%_ _%test107819%_))
                                (if _%$e107910%_ _%$e107910%_ equal?)))
                             (_%hash107921%_
                              (let ((_%$e107915%_ _%hash107821%_))
                                (if _%$e107915%_
                                    _%$e107915%_
                                    (if (eq? _%test107913%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test107913%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht107926%_
                              (let ((_%$obj107923%_
                                     (make-table
                                      'size:
                                      _%size107908%_
                                      'test:
                                      _%test107913%_
                                      'hash:
                                      _%hash107921%_
                                      'weak-keys:
                                      _%weak-keys107827%_
                                      'weak-values:
                                      _%weak-values107829%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107923%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107923%_)))
                                         '#t)
                                    _%$obj107923%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107923%_))))))
                        (_%__wrap-checked107836%_
                         (_%__wrap-lock107834%_ _%ht107926%_)
                         true)))))
            (if (or _%weak-keys107827%_ _%weak-values107829%_)
                (_%make-gambit-table107839%_)
                (if (and (or (eq? _%test107819%_ eq?)
                             (eq? _%test107819%_ ##eq?))
                         (or (not _%hash107821%_)
                             (eq? _%hash107821%_ eq?-hash)
                             (eq? _%hash107821%_ eq-hash))
                         (not _%seed107817%_))
                    (_%make-gc-hash-table107838%_)
                    (if (and (or (eq? _%test107819%_ eq?)
                                 (eq? _%test107819%_ ##eq?))
                             (or (not _%hash107821%_)
                                 (eq? _%hash107821%_ eq?-hash)
                                 (eq? _%hash107821%_ eq-hash)))
                        (_%make107837%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test107819%_ eqv?)
                                     (eq? _%test107819%_ ##eqv?))
                                 (or (not _%hash107821%_)
                                     (eq? _%hash107821%_ eqv?-hash)
                                     (eq? _%hash107821%_ eqv-hash)))
                            (_%make107837%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test107819%_ eq?)
                                         (eq? _%test107819%_ ##eq?))
                                     (or (eq? _%hash107821%_ symbolic-hash)
                                         (eq? _%hash107821%_ ##symbol-hash)))
                                (_%make107837%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test107819%_ eq?)
                                             (eq? _%test107819%_ ##eq?))
                                         (eq? _%hash107821%_ immediate-hash))
                                    (_%make107837%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test107819%_ equal?)
                                                 (eq? _%test107819%_ ##equal?)
                                                 (eq? _%test107819%_ string=?)
                                                 (eq? _%test107819%_
                                                      ##string=?))
                                             (or (eq? _%hash107821%_
                                                      string-hash)
                                                 (eq? _%hash107821%_
                                                      ##string=?-hash)))
                                        (_%make107837%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test107819%_ equal?)
                                                 (not _%hash107821%_))
                                            (_%make107837%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test107819%_)
                                                (if (procedure? _%hash107821%_)
                                                    (_%make107837%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash107821%_
                                                     _%test107819%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash107821%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test107819%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords108026%_ . _%args108027%_)
        (apply make-hash-table__%
               _%@@keywords108026%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108026%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108026%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108026%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108026%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108026%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108026%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108026%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108026%_
                  'weak-values:
                  absent-value))
               _%args108027%_)))
    (define make-hash-table
      (lambda _%args107795108033%_
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
               _%args107795108033%_)))
    (define make-hash-table-eq
      (lambda _%args107784%_
        (apply make-hash-table 'test: eq? _%args107784%_)))
    (define make-hash-table-eqv
      (lambda _%args107782%_
        (apply make-hash-table 'test: eqv? _%args107782%_)))
    (define make-hash-table-symbolic
      (lambda _%args107780%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args107780%_)))
    (define make-hash-table-string
      (lambda _%args107778%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args107778%_)))
    (define make-hash-table-immediate
      (lambda _%args107776%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args107776%_)))
    (define list->hash-table
      (lambda (_%lst107773%_ . _%args107774%_)
        (list->hash-table!
         _%lst107773%_
         (apply make-hash-table
                'size:
                (length _%lst107773%_)
                _%args107774%_))))
    (define list->hash-table-eq
      (lambda (_%lst107770%_ . _%args107771%_)
        (list->hash-table!
         _%lst107770%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107770%_)
                _%args107771%_))))
    (define list->hash-table-eqv
      (lambda (_%lst107767%_ . _%args107768%_)
        (list->hash-table!
         _%lst107767%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107767%_)
                _%args107768%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst107764%_ . _%args107765%_)
        (list->hash-table!
         _%lst107764%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107764%_)
                _%args107765%_))))
    (define list->hash-table-string
      (lambda (_%lst107761%_ . _%args107762%_)
        (list->hash-table!
         _%lst107761%_
         (apply make-hash-table-string
                'size:
                (length _%lst107761%_)
                _%args107762%_))))
    (define list->hash-table-immediate
      (lambda (_%lst107758%_ . _%args107759%_)
        (list->hash-table!
         _%lst107758%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107758%_)
                _%args107759%_))))
    (define list->hash-table!
      (lambda (_%lst107725%_ _%h107726%_)
        (for-each
         (lambda (_%el107728%_)
           (let* ((_%el107729107736%_ _%el107728%_)
                  (_%E107731107740%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el107729107736%_
                              '([k . v])))
                     '#!void))
                  (_%K107732107746%_
                   (lambda (_%v107743%_ _%k107744%_)
                     (&HashTable-set! _%h107726%_ _%k107744%_ _%v107743%_))))
             (if (pair? _%el107729107736%_)
                 (let ((_%hd107733107749%_
                        (let ()
                          (declare (not safe))
                          (##car _%el107729107736%_)))
                       (_%tl107734107751%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el107729107736%_))))
                   (let* ((_%k107754%_ _%hd107733107749%_)
                          (_%v107756%_ _%tl107734107751%_))
                     (_%K107732107746%_ _%v107756%_ _%k107754%_)))
                 (_%E107731107740%_))))
         _%lst107725%_)
        _%h107726%_))
    (define plist->hash-table
      (lambda (_%lst107722%_ . _%args107723%_)
        (plist->hash-table!
         _%lst107722%_
         (apply make-hash-table
                'size:
                (length _%lst107722%_)
                _%args107723%_))))
    (define plist->hash-table-eq
      (lambda (_%lst107719%_ . _%args107720%_)
        (plist->hash-table!
         _%lst107719%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107719%_)
                _%args107720%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst107716%_ . _%args107717%_)
        (plist->hash-table!
         _%lst107716%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107716%_)
                _%args107717%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst107713%_ . _%args107714%_)
        (plist->hash-table!
         _%lst107713%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107713%_)
                _%args107714%_))))
    (define plist->hash-table-string
      (lambda (_%lst107710%_ . _%args107711%_)
        (plist->hash-table!
         _%lst107710%_
         (apply make-hash-table-string
                'size:
                (length _%lst107710%_)
                _%args107711%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst107707%_ . _%args107708%_)
        (plist->hash-table!
         _%lst107707%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107707%_)
                _%args107708%_))))
    (define plist->hash-table!
      (lambda (_%lst107647%_ _%h107648%_)
        (let _%loop107650%_ ((_%rest107652%_ _%lst107647%_))
          (let* ((_%rest107653107665%_ _%rest107652%_)
                 (_%else107656107673%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst107647%_)))))
            (let ((_%K107659107688%_
                   (lambda (_%rest107684%_ _%val107685%_ _%key107686%_)
                     (&HashTable-set! _%h107648%_ _%key107686%_ _%val107685%_)
                     (_%loop107650%_ _%rest107684%_)))
                  (_%K107658107678%_ (lambda () _%h107648%_)))
              (let ((_%try-match107655107681%_
                     (lambda ()
                       (if (null? _%rest107653107665%_)
                           (_%K107658107678%_)
                           (_%else107656107673%_)))))
                (if (pair? _%rest107653107665%_)
                    (let ((_%tl107661107693%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest107653107665%_)))
                          (_%hd107660107691%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest107653107665%_))))
                      (if (pair? _%tl107661107693%_)
                          (let ((_%tl107663107700%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl107661107693%_)))
                                (_%hd107662107698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl107661107693%_))))
                            (let ((_%key107696%_ _%hd107660107691%_)
                                  (_%val107703%_ _%hd107662107698%_)
                                  (_%rest107705%_ _%tl107663107700%_))
                              (_%K107659107688%_
                               _%rest107705%_
                               _%val107703%_
                               _%key107696%_)))
                          (_%else107656107673%_)))
                    (_%try-match107655107681%_))))))))
    (define hash-length
      (lambda (_%h107629%_)
        (let* ((_%h107635%_
                (let ((_%$obj107632%_ _%h107629%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107632%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107632%_)))
                           '#t)
                      _%$obj107632%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107632%_)))))
               (_%h107637%_ _%h107635%_))
          (__hash-length _%h107637%_))))
    (define __hash-length
      (lambda (_%h107617%_)
        (let ((_%h107620%_ _%h107617%_)) (__HashTable-length _%h107620%_))))
    (define hash-ref__%
      (lambda (_%h107585%_ _%key107586%_ _%default107587%_)
        (let* ((_%h107593%_
                (let ((_%$obj107590%_ _%h107585%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107590%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107590%_)))
                           '#t)
                      _%$obj107590%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107590%_)))))
               (_%h107595%_ _%h107593%_))
          (__hash-ref__% _%h107595%_ _%key107586%_ _%default107587%_))))
    (define hash-ref__0
      (lambda (_%h107608%_ _%key107609%_)
        (let ((_%default107611%_ (macro-absent-obj)))
          (hash-ref__% _%h107608%_ _%key107609%_ _%default107611%_))))
    (define hash-ref
      (lambda _g111165_
        (let ((_g111164_ (let () (declare (not safe)) (##length _g111165_))))
          (cond ((let () (declare (not safe)) (##fx= _g111164_ 2))
                 (apply hash-ref__0 _g111165_))
                ((let () (declare (not safe)) (##fx= _g111164_ 3))
                 (apply hash-ref__% _g111165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g111165_))))))
    (define __hash-ref__%
      (lambda (_%h107556%_ _%key107557%_ _%default107558%_)
        (let* ((_%h107561%_ _%h107556%_)
               (_%result107570%_
                (&HashTable-ref _%h107561%_ _%key107557%_ _%default107558%_)))
          (if (eq? _%result107570%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h107561%_
               'key:
               _%key107557%_)
              _%result107570%_))))
    (define __hash-ref__0
      (lambda (_%h107575%_ _%key107576%_)
        (let ((_%default107578%_ (macro-absent-obj)))
          (__hash-ref__% _%h107575%_ _%key107576%_ _%default107578%_))))
    (define __hash-ref
      (lambda _g111167_
        (let ((_g111166_ (let () (declare (not safe)) (##length _g111167_))))
          (cond ((let () (declare (not safe)) (##fx= _g111166_ 2))
                 (apply __hash-ref__0 _g111167_))
                ((let () (declare (not safe)) (##fx= _g111166_ 3))
                 (apply __hash-ref__% _g111167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g111167_))))))
    (define hash-get
      (lambda (_%h107536%_ _%key107537%_)
        (let* ((_%h107543%_
                (let ((_%$obj107540%_ _%h107536%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107540%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107540%_)))
                           '#t)
                      _%$obj107540%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107540%_)))))
               (_%h107545%_ _%h107543%_))
          (__hash-get _%h107545%_ _%key107537%_))))
    (define __hash-get
      (lambda (_%h107523%_ _%key107524%_)
        (let ((_%h107527%_ _%h107523%_))
          (&HashTable-ref _%h107527%_ _%key107524%_ '#f))))
    (define hash-put!
      (lambda (_%h107503%_ _%key107504%_ _%value107505%_)
        (let* ((_%h107511%_
                (let ((_%$obj107508%_ _%h107503%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107508%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107508%_)))
                           '#t)
                      _%$obj107508%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107508%_)))))
               (_%h107513%_ _%h107511%_))
          (__hash-put! _%h107513%_ _%key107504%_ _%value107505%_))))
    (define __hash-put!
      (lambda (_%h107489%_ _%key107490%_ _%value107491%_)
        (let ((_%h107494%_ _%h107489%_))
          (&HashTable-set! _%h107494%_ _%key107490%_ _%value107491%_))))
    (define hash-update!__%
      (lambda (_%h107454%_ _%key107455%_ _%update107456%_ _%default107457%_)
        (let* ((_%h107463%_
                (let ((_%$obj107460%_ _%h107454%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107460%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107460%_)))
                           '#t)
                      _%$obj107460%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107460%_)))))
               (_%h107465%_ _%h107463%_))
          (__hash-update!__%
           _%h107465%_
           _%key107455%_
           _%update107456%_
           _%default107457%_))))
    (define hash-update!__0
      (lambda (_%h107478%_ _%key107479%_ _%update107480%_)
        (let ((_%default107482%_ '#!void))
          (hash-update!__%
           _%h107478%_
           _%key107479%_
           _%update107480%_
           _%default107482%_))))
    (define hash-update!
      (lambda _g111169_
        (let ((_g111168_ (let () (declare (not safe)) (##length _g111169_))))
          (cond ((let () (declare (not safe)) (##fx= _g111168_ 3))
                 (apply hash-update!__0 _g111169_))
                ((let () (declare (not safe)) (##fx= _g111168_ 4))
                 (apply hash-update!__% _g111169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g111169_))))))
    (define __hash-update!__%
      (lambda (_%h107424%_ _%key107425%_ _%update107426%_ _%default107427%_)
        (let ((_%h107430%_ _%h107424%_))
          (HashTable-update!
           _%h107430%_
           _%key107425%_
           _%update107426%_
           _%default107427%_))))
    (define __hash-update!__0
      (lambda (_%h107442%_ _%key107443%_ _%update107444%_)
        (let ((_%default107446%_ '#!void))
          (__hash-update!__%
           _%h107442%_
           _%key107443%_
           _%update107444%_
           _%default107446%_))))
    (define __hash-update!
      (lambda _g111171_
        (let ((_g111170_ (let () (declare (not safe)) (##length _g111171_))))
          (cond ((let () (declare (not safe)) (##fx= _g111170_ 3))
                 (apply __hash-update!__0 _g111171_))
                ((let () (declare (not safe)) (##fx= _g111170_ 4))
                 (apply __hash-update!__% _g111171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g111171_))))))
    (define hash-remove!
      (lambda (_%h107404%_ _%key107405%_)
        (let* ((_%h107411%_
                (let ((_%$obj107408%_ _%h107404%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107408%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107408%_)))
                           '#t)
                      _%$obj107408%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107408%_)))))
               (_%h107413%_ _%h107411%_))
          (__hash-remove! _%h107413%_ _%key107405%_))))
    (define __hash-remove!
      (lambda (_%h107391%_ _%key107392%_)
        (let ((_%h107395%_ _%h107391%_))
          (&HashTable-delete! _%h107395%_ _%key107392%_))))
    (define hash-key?
      (lambda (_%h107372%_ _%k107373%_)
        (let* ((_%h107379%_
                (let ((_%$obj107376%_ _%h107372%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107376%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107376%_)))
                           '#t)
                      _%$obj107376%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107376%_)))))
               (_%h107381%_ _%h107379%_))
          (__hash-key? _%h107381%_ _%k107373%_))))
    (define __hash-key?
      (lambda (_%h107359%_ _%k107360%_)
        (let ((_%h107363%_ _%h107359%_))
          (not (eq? (&HashTable-ref _%h107363%_ _%k107360%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h107341%_)
        (let* ((_%h107347%_
                (let ((_%$obj107344%_ _%h107341%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107344%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107344%_)))
                           '#t)
                      _%$obj107344%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107344%_)))))
               (_%h107349%_ _%h107347%_))
          (__hash->list _%h107349%_))))
    (define __hash->list
      (lambda (_%h107324%_)
        (let* ((_%h107327%_ _%h107324%_) (_%lst107336%_ '()))
          (&HashTable-for-each
           _%h107327%_
           (lambda (_%k107338%_ _%v107339%_)
             (set! _%lst107336%_
                   (cons (cons _%k107338%_ _%v107339%_) _%lst107336%_))))
          _%lst107336%_)))
    (define hash->plist
      (lambda (_%h107306%_)
        (let* ((_%h107312%_
                (let ((_%$obj107309%_ _%h107306%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107309%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107309%_)))
                           '#t)
                      _%$obj107309%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107309%_)))))
               (_%h107314%_ _%h107312%_))
          (__hash->plist _%h107314%_))))
    (define __hash->plist
      (lambda (_%h107289%_)
        (let* ((_%h107292%_ _%h107289%_) (_%lst107301%_ '()))
          (&HashTable-for-each
           _%h107292%_
           (lambda (_%k107303%_ _%v107304%_)
             (set! _%lst107301%_
                   (cons _%k107303%_ (cons _%v107304%_ _%lst107301%_)))))
          _%lst107301%_)))
    (define hash-for-each
      (lambda (_%proc107260%_ _%h107261%_)
        (if (procedure? _%proc107260%_)
            (let* ((_%proc107265%_ _%proc107260%_)
                   (_%h107277%_
                    (let ((_%$obj107274%_ _%h107261%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107274%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107274%_)))
                               '#t)
                          _%$obj107274%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107274%_)))))
                   (_%h107279%_ _%h107277%_))
              (__hash-for-each _%proc107265%_ _%h107279%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@569.22-569.26"
               'contract:
               'procedure?
               'value:
               _%proc107260%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc107239%_ _%h107240%_)
        (let* ((_%proc107243%_ _%proc107239%_) (_%h107251%_ _%h107240%_))
          (&HashTable-for-each _%h107251%_ _%proc107243%_))))
    (define hash-map
      (lambda (_%proc107210%_ _%h107211%_)
        (if (procedure? _%proc107210%_)
            (let* ((_%proc107215%_ _%proc107210%_)
                   (_%h107227%_
                    (let ((_%$obj107224%_ _%h107211%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107224%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107224%_)))
                               '#t)
                          _%$obj107224%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107224%_)))))
                   (_%h107229%_ _%h107227%_))
              (__hash-map _%proc107215%_ _%h107229%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@572.17-572.21"
               'contract:
               'procedure?
               'value:
               _%proc107210%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc107184%_ _%h107185%_)
        (let* ((_%proc107188%_ _%proc107184%_)
               (_%h107196%_ _%h107185%_)
               (_%result107205%_ '()))
          (&HashTable-for-each
           _%h107196%_
           (lambda (_%k107207%_ _%v107208%_)
             (set! _%result107205%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc107188%_ _%k107207%_ _%v107208%_))
                         _%result107205%_))))
          _%result107205%_)))
    (define hash-fold
      (lambda (_%proc107154%_ _%iv107155%_ _%h107156%_)
        (if (procedure? _%proc107154%_)
            (let* ((_%proc107160%_ _%proc107154%_)
                   (_%h107172%_
                    (let ((_%$obj107169%_ _%h107156%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107169%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107169%_)))
                               '#t)
                          _%$obj107169%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107169%_)))))
                   (_%h107174%_ _%h107172%_))
              (__hash-fold _%proc107160%_ _%iv107155%_ _%h107174%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@577.18-577.22"
               'contract:
               'procedure?
               'value:
               _%proc107154%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc107127%_ _%iv107128%_ _%h107129%_)
        (let* ((_%proc107132%_ _%proc107127%_)
               (_%h107140%_ _%h107129%_)
               (_%result107149%_ _%iv107128%_))
          (&HashTable-for-each
           _%h107140%_
           (lambda (_%k107151%_ _%v107152%_)
             (set! _%result107149%_
                   (let ()
                     (declare (not safe))
                     (_%proc107132%_
                      _%k107151%_
                      _%v107152%_
                      _%result107149%_)))))
          _%result107149%_)))
    (define hash-find__%
      (lambda (_%proc107085%_ _%h107086%_ _%default-value107087%_)
        (if (procedure? _%proc107085%_)
            (let* ((_%proc107091%_ _%proc107085%_)
                   (_%h107103%_
                    (let ((_%$obj107100%_ _%h107086%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107100%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107100%_)))
                               '#t)
                          _%$obj107100%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107100%_)))))
                   (_%h107105%_ _%h107103%_))
              (__hash-find__%
               _%proc107091%_
               _%h107105%_
               _%default-value107087%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@582.18-582.22"
               'contract:
               'procedure?
               'value:
               _%proc107085%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc107118%_ _%h107119%_)
        (let ((_%default-value107121%_ '#f))
          (hash-find__% _%proc107118%_ _%h107119%_ _%default-value107121%_))))
    (define hash-find
      (lambda _g111173_
        (let ((_g111172_ (let () (declare (not safe)) (##length _g111173_))))
          (cond ((let () (declare (not safe)) (##fx= _g111172_ 2))
                 (apply hash-find__0 _g111173_))
                ((let () (declare (not safe)) (##fx= _g111172_ 3))
                 (apply hash-find__% _g111173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g111173_))))))
    (define __hash-find__%
      (lambda (_%proc107042%_ _%h107043%_ _%default-value107044%_)
        (let* ((_%proc107047%_ _%proc107042%_)
               (_%h107055%_ _%h107043%_)
               (__tmp111174
                (lambda (_%return107064%_)
                  (&HashTable-for-each
                   _%h107055%_
                   (lambda (_%k107066%_ _%v107067%_)
                     (let ((_%$e107069%_
                            (let ()
                              (declare (not safe))
                              (_%proc107047%_ _%k107066%_ _%v107067%_))))
                       (if _%$e107069%_
                           (_%return107064%_ _%$e107069%_)
                           '#!void))))
                  _%default-value107044%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp111174))))
    (define __hash-find__0
      (lambda (_%proc107075%_ _%h107076%_)
        (let ((_%default-value107078%_ '#f))
          (__hash-find__%
           _%proc107075%_
           _%h107076%_
           _%default-value107078%_))))
    (define __hash-find
      (lambda _g111176_
        (let ((_g111175_ (let () (declare (not safe)) (##length _g111176_))))
          (cond ((let () (declare (not safe)) (##fx= _g111175_ 2))
                 (apply __hash-find__0 _g111176_))
                ((let () (declare (not safe)) (##fx= _g111175_ 3))
                 (apply __hash-find__% _g111176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g111176_))))))
    (define hash-keys
      (lambda (_%h107023%_)
        (let* ((_%h107029%_
                (let ((_%$obj107026%_ _%h107023%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107026%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107026%_)))
                           '#t)
                      _%$obj107026%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107026%_)))))
               (_%h107031%_ _%h107029%_))
          (__hash-keys _%h107031%_))))
    (define __hash-keys
      (lambda (_%h107006%_)
        (let* ((_%h107009%_ _%h107006%_) (_%result107018%_ '()))
          (&HashTable-for-each
           _%h107009%_
           (lambda (_%k107020%_ _%v107021%_)
             (set! _%result107018%_ (cons _%k107020%_ _%result107018%_))))
          _%result107018%_)))
    (define hash-values
      (lambda (_%h106988%_)
        (let* ((_%h106994%_
                (let ((_%$obj106991%_ _%h106988%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106991%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106991%_)))
                           '#t)
                      _%$obj106991%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106991%_)))))
               (_%h106996%_ _%h106994%_))
          (__hash-values _%h106996%_))))
    (define __hash-values
      (lambda (_%h106971%_)
        (let* ((_%h106974%_ _%h106971%_) (_%result106983%_ '()))
          (&HashTable-for-each
           _%h106974%_
           (lambda (_%k106985%_ _%v106986%_)
             (set! _%result106983%_ (cons _%v106986%_ _%result106983%_))))
          _%result106983%_)))
    (define hash-copy
      (lambda (_%h106953%_)
        (let* ((_%h106959%_
                (let ((_%$obj106956%_ _%h106953%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106956%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106956%_)))
                           '#t)
                      _%$obj106956%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106956%_)))))
               (_%h106961%_ _%h106959%_))
          (__hash-copy _%h106961%_))))
    (define __hash-copy
      (lambda (_%h106941%_)
        (let ((_%h106944%_ _%h106941%_)) (__HashTable-copy _%h106944%_))))
    (define hash-clear!
      (lambda (_%h106923%_)
        (let* ((_%h106929%_
                (let ((_%$obj106926%_ _%h106923%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106926%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106926%_)))
                           '#t)
                      _%$obj106926%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106926%_)))))
               (_%h106931%_ _%h106929%_))
          (__hash-clear! _%h106931%_))))
    (define __hash-clear!
      (lambda (_%h106911%_)
        (let ((_%h106914%_ _%h106911%_)) (&HashTable-clear! _%h106914%_))))
    (define hash-merge
      (lambda (_%h106892%_ . _%rest106893%_)
        (let* ((_%h106899%_
                (let ((_%$obj106896%_ _%h106892%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106896%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106896%_)))
                           '#t)
                      _%$obj106896%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106896%_)))))
               (_%h106901%_ _%h106899%_))
          (declare (not safe))
          (##apply __hash-merge _%h106901%_ _%rest106893%_))))
    (define __hash-merge
      (lambda (_%h106877%_ . _%rest106878%_)
        (let* ((_%h106881%_ _%h106877%_)
               (_%copy106890%_ (__HashTable-copy _%h106881%_)))
          (apply hash-merge! _%copy106890%_ _%rest106878%_)
          _%copy106890%_)))
    (define hash-merge!
      (lambda (_%h106858%_ . _%rest106859%_)
        (let* ((_%h106865%_
                (let ((_%$obj106862%_ _%h106858%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106862%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106862%_)))
                           '#t)
                      _%$obj106862%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106862%_)))))
               (_%h106867%_ _%h106865%_))
          (declare (not safe))
          (##apply __hash-merge! _%h106867%_ _%rest106859%_))))
    (define __hash-merge!
      (lambda (_%h106821%_ . _%rest106822%_)
        (let ((_%h106825%_ _%h106821%_))
          (let ((__tmp111177
                 (lambda (_%hr106834%_)
                   (let* ((_%hr106840%_
                           (let ((_%$obj106837%_ _%hr106834%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj106837%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj106837%_)))
                                      '#t)
                                 _%$obj106837%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj106837%_)))))
                          (_%hr106842%_ _%hr106840%_))
                     (&HashTable-for-each
                      _%hr106842%_
                      (lambda (_%k106855%_ _%v106856%_)
                        (if (__hash-key? _%h106825%_ _%k106855%_)
                            '#!void
                            (&HashTable-set!
                             _%h106825%_
                             _%k106855%_
                             _%v106856%_))))))))
            (declare (not safe))
            (##for-each __tmp111177 _%rest106822%_))
          _%h106825%_)))))
