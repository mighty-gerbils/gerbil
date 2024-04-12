(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712949841)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108192 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108192
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args108172%_
        (apply make-instance UnboundKeyError::t _%$args108172%_)))
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
      (lambda (_%where108046%_ _%message108047%_ . _%irritants108048%_)
        (let ((__tmp108193
               (let ((__obj108186
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj108186
                    _%message108047%_
                    'where:
                    _%where108046%_
                    'irritants:
                    _%irritants108048%_))
                 __obj108186)))
          (declare (not safe))
          (raise __tmp108193))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108194 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp108194
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
      (lambda (_%obj108044%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj108044%_))))
    (define try-HashTable
      (lambda (_%obj108042%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj108042%_))))
    (define HashTable?
      (lambda (_%obj108040%_)
        (let ((__tmp108195
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108040%_ __tmp108195))))
    (define is-HashTable?
      (lambda (_%obj108038%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj108038%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self108022%_)
        (let* ((_%self108027%_
                (let ((_%$obj108024%_ _%self108022%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108024%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108024%_)))
                           '#t)
                      _%$obj108024%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108024%_)))))
               (_%self108029%_ _%self108027%_))
          (&HashTable-clear! _%self108029%_))))
    (define &HashTable-clear!
      (lambda (_%self108007%_)
        (let ((_%self108009%_ _%self108007%_))
          (declare (not safe))
          (let ((_%obj108019%_
                 (##unchecked-structure-ref _%self108009%_ '1 '#f 'clear!))
                (_%f108020%_
                 (##unchecked-structure-ref _%self108009%_ '2 '#f 'clear!)))
            (_%f108020%_ _%obj108019%_)))))
    (define HashTable-copy
      (lambda (_%self107991%_)
        (let* ((_%self107996%_
                (let ((_%$obj107993%_ _%self107991%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107993%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107993%_)))
                           '#t)
                      _%$obj107993%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107993%_)))))
               (_%self107998%_ _%self107996%_))
          (__HashTable-copy _%self107998%_))))
    (define __HashTable-copy
      (lambda (_%self107978%_)
        (let* ((_%self107980%_ _%self107978%_)
               (_%$obj107988%_ (&HashTable-copy _%self107980%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj107988%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj107988%_)))
                   '#t)
              _%$obj107988%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj107988%_))))))
    (define &HashTable-copy
      (lambda (_%self107963%_)
        (let ((_%self107965%_ _%self107963%_))
          (declare (not safe))
          (let ((_%obj107975%_
                 (##unchecked-structure-ref _%self107965%_ '1 '#f 'copy))
                (_%f107976%_
                 (##unchecked-structure-ref _%self107965%_ '3 '#f 'copy)))
            (_%f107976%_ _%obj107975%_)))))
    (define HashTable-delete!
      (lambda (_%self107946%_ _%key107947%_)
        (let* ((_%self107952%_
                (let ((_%$obj107949%_ _%self107946%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107949%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107949%_)))
                           '#t)
                      _%$obj107949%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107949%_)))))
               (_%self107954%_ _%self107952%_))
          (&HashTable-delete! _%self107954%_ _%key107947%_))))
    (define &HashTable-delete!
      (lambda (_%self107930%_ _%key107931%_)
        (let ((_%self107933%_ _%self107930%_))
          (declare (not safe))
          (let ((_%obj107943%_
                 (##unchecked-structure-ref _%self107933%_ '1 '#f 'delete!))
                (_%f107944%_
                 (##unchecked-structure-ref _%self107933%_ '4 '#f 'delete!)))
            (_%f107944%_ _%obj107943%_ _%key107931%_)))))
    (define HashTable-for-each
      (lambda (_%self107903%_ _%proc107904%_)
        (let* ((_%self107909%_
                (let ((_%$obj107906%_ _%self107903%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107906%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107906%_)))
                           '#t)
                      _%$obj107906%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107906%_)))))
               (_%self107911%_ _%self107909%_))
          (if (procedure? _%proc107904%_)
              (let ((_%proc107920%_ _%proc107904%_))
                (&HashTable-for-each _%self107911%_ _%proc107920%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc107904%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self107879%_ _%proc107880%_)
        (let* ((_%self107882%_ _%self107879%_) (_%proc107889%_ _%proc107880%_))
          (declare (not safe))
          (let ((_%obj107900%_
                 (##unchecked-structure-ref _%self107882%_ '1 '#f 'for-each))
                (_%f107901%_
                 (##unchecked-structure-ref _%self107882%_ '5 '#f 'for-each)))
            (_%f107901%_ _%obj107900%_ _%proc107889%_)))))
    (define HashTable-length
      (lambda (_%self107863%_)
        (let* ((_%self107868%_
                (let ((_%$obj107865%_ _%self107863%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107865%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107865%_)))
                           '#t)
                      _%$obj107865%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107865%_)))))
               (_%self107870%_ _%self107868%_))
          (__HashTable-length _%self107870%_))))
    (define __HashTable-length
      (lambda (_%self107850%_)
        (let* ((_%self107852%_ _%self107850%_)
               (_%val107860%_ (&HashTable-length _%self107852%_)))
          _%val107860%_)))
    (define &HashTable-length
      (lambda (_%self107835%_)
        (let ((_%self107837%_ _%self107835%_))
          (declare (not safe))
          (let ((_%obj107847%_
                 (##unchecked-structure-ref _%self107837%_ '1 '#f 'length))
                (_%f107848%_
                 (##unchecked-structure-ref _%self107837%_ '6 '#f 'length)))
            (_%f107848%_ _%obj107847%_)))))
    (define HashTable-ref
      (lambda (_%self107817%_ _%key107818%_ _%default107819%_)
        (let* ((_%self107824%_
                (let ((_%$obj107821%_ _%self107817%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107821%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107821%_)))
                           '#t)
                      _%$obj107821%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107821%_)))))
               (_%self107826%_ _%self107824%_))
          (&HashTable-ref _%self107826%_ _%key107818%_ _%default107819%_))))
    (define &HashTable-ref
      (lambda (_%self107800%_ _%key107801%_ _%default107802%_)
        (let ((_%self107804%_ _%self107800%_))
          (declare (not safe))
          (let ((_%obj107814%_
                 (##unchecked-structure-ref _%self107804%_ '1 '#f 'ref))
                (_%f107815%_
                 (##unchecked-structure-ref _%self107804%_ '7 '#f 'ref)))
            (_%f107815%_ _%obj107814%_ _%key107801%_ _%default107802%_)))))
    (define HashTable-set!
      (lambda (_%self107782%_ _%key107783%_ _%value107784%_)
        (let* ((_%self107789%_
                (let ((_%$obj107786%_ _%self107782%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107786%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107786%_)))
                           '#t)
                      _%$obj107786%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107786%_)))))
               (_%self107791%_ _%self107789%_))
          (&HashTable-set! _%self107791%_ _%key107783%_ _%value107784%_))))
    (define &HashTable-set!
      (lambda (_%self107765%_ _%key107766%_ _%value107767%_)
        (let ((_%self107769%_ _%self107765%_))
          (declare (not safe))
          (let ((_%obj107779%_
                 (##unchecked-structure-ref _%self107769%_ '1 '#f 'set!))
                (_%f107780%_
                 (##unchecked-structure-ref _%self107769%_ '8 '#f 'set!)))
            (_%f107780%_ _%obj107779%_ _%key107766%_ _%value107767%_)))))
    (define HashTable-update!
      (lambda (_%self107736%_ _%key107737%_ _%proc107738%_ _%default107739%_)
        (let* ((_%self107744%_
                (let ((_%$obj107741%_ _%self107736%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107741%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107741%_)))
                           '#t)
                      _%$obj107741%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107741%_)))))
               (_%self107746%_ _%self107744%_))
          (if (procedure? _%proc107738%_)
              (let ((_%proc107755%_ _%proc107738%_))
                (&HashTable-update!
                 _%self107746%_
                 _%key107737%_
                 _%proc107755%_
                 _%default107739%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc107738%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self107708%_ _%key107709%_ _%proc107710%_ _%default107711%_)
        (let* ((_%self107713%_ _%self107708%_) (_%proc107720%_ _%proc107710%_))
          (declare (not safe))
          (let ((_%obj107731%_
                 (##unchecked-structure-ref _%self107713%_ '1 '#f 'update!))
                (_%f107733%_
                 (##unchecked-structure-ref _%self107713%_ '9 '#f 'update!)))
            (_%f107733%_
             _%obj107731%_
             _%key107709%_
             _%proc107720%_
             _%default107711%_)))))
    (define Locker::t
      (let ((__tmp108196 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp108196
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
      (lambda (_%obj107706%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj107706%_))))
    (define try-Locker
      (lambda (_%obj107704%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj107704%_))))
    (define Locker?
      (lambda (_%obj107702%_)
        (let ((__tmp108197
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj107702%_ __tmp108197))))
    (define is-Locker?
      (lambda (_%obj107700%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj107700%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self107684%_)
        (let* ((_%self107689%_
                (let ((_%$obj107686%_ _%self107684%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107686%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107686%_)))
                           '#t)
                      _%$obj107686%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107686%_)))))
               (_%self107691%_ _%self107689%_))
          (&Locker-read-lock! _%self107691%_))))
    (define &Locker-read-lock!
      (lambda (_%self107669%_)
        (let ((_%self107671%_ _%self107669%_))
          (declare (not safe))
          (let ((_%obj107681%_
                 (##unchecked-structure-ref _%self107671%_ '1 '#f 'read-lock!))
                (_%f107682%_
                 (##unchecked-structure-ref
                  _%self107671%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f107682%_ _%obj107681%_)))))
    (define Locker-read-unlock!
      (lambda (_%self107653%_)
        (let* ((_%self107658%_
                (let ((_%$obj107655%_ _%self107653%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107655%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107655%_)))
                           '#t)
                      _%$obj107655%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107655%_)))))
               (_%self107660%_ _%self107658%_))
          (&Locker-read-unlock! _%self107660%_))))
    (define &Locker-read-unlock!
      (lambda (_%self107638%_)
        (let ((_%self107640%_ _%self107638%_))
          (declare (not safe))
          (let ((_%obj107650%_
                 (##unchecked-structure-ref
                  _%self107640%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f107651%_
                 (##unchecked-structure-ref
                  _%self107640%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f107651%_ _%obj107650%_)))))
    (define Locker-write-lock!
      (lambda (_%self107622%_)
        (let* ((_%self107627%_
                (let ((_%$obj107624%_ _%self107622%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107624%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107624%_)))
                           '#t)
                      _%$obj107624%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107624%_)))))
               (_%self107629%_ _%self107627%_))
          (&Locker-write-lock! _%self107629%_))))
    (define &Locker-write-lock!
      (lambda (_%self107607%_)
        (let ((_%self107609%_ _%self107607%_))
          (declare (not safe))
          (let ((_%obj107619%_
                 (##unchecked-structure-ref
                  _%self107609%_
                  '1
                  '#f
                  'write-lock!))
                (_%f107620%_
                 (##unchecked-structure-ref
                  _%self107609%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f107620%_ _%obj107619%_)))))
    (define Locker-write-unlock!
      (lambda (_%self107591%_)
        (let* ((_%self107596%_
                (let ((_%$obj107593%_ _%self107591%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107593%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107593%_)))
                           '#t)
                      _%$obj107593%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107593%_)))))
               (_%self107598%_ _%self107596%_))
          (&Locker-write-unlock! _%self107598%_))))
    (define &Locker-write-unlock!
      (lambda (_%self107574%_)
        (let ((_%self107576%_ _%self107574%_))
          (declare (not safe))
          (let ((_%obj107586%_
                 (##unchecked-structure-ref
                  _%self107576%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f107588%_
                 (##unchecked-structure-ref
                  _%self107576%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f107588%_ _%obj107586%_)))))
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
      (lambda (_%table107567%_
               _%key107568%_
               _%update107569%_
               _%default107570%_)
        (let ((_%result107572%_
               (table-ref _%table107567%_ _%key107568%_ _%default107570%_)))
          (table-set!
           _%table107567%_
           _%key107568%_
           (_%update107569%_ _%default107570%_)))))
    (define gambit-table-for-each
      (lambda (_%table107564%_ _%proc107565%_)
        (table-for-each _%proc107565%_ _%table107564%_)))
    (define gambit-table-clear!
      (lambda (_%table107562%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table107562%_ '0 '5 '#f '#f))))
    (let ((__tmp108198 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108198 'ref table-ref))
    (let ((__tmp108199 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108199 'set! table-set!))
    (let ((__tmp108200 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108200 'update! gambit-table-update!))
    (let ((__tmp108201 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108201 'delete! table-set!))
    (let ((__tmp108202 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108202 'for-each gambit-table-for-each))
    (let ((__tmp108203 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108203 'length table-length))
    (let ((__tmp108204 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108204 'copy table-copy))
    (let ((__tmp108205 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108205 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots107544%_ '(table count free hash test seed))
             (_%slot-vector107546%_ (list->vector (cons '#f _%slots107544%_)))
             (_%slot-table107553%_
              (let ((_%slot-table107548%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108208
                       (lambda (_%slot107550%_ _%field107551%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107548%_
                            _%slot107550%_
                            _%field107551%_))
                         (let ((__tmp108209
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107550%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107548%_
                            __tmp108209
                            _%field107551%_))))
                      (__tmp108206
                       (let ((__tmp108207
                              (let ()
                                (declare (not safe))
                                (##length _%slots107544%_))))
                         (declare (not safe))
                         (##iota __tmp108207 '1))))
                  (declare (not safe))
                  (##for-each __tmp108208 _%slots107544%_ __tmp108206))
                _%slot-table107548%_))
             (_%flags107555%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107557%_ '#())
             (_%properties107559%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107544%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108210 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags107555%_
         __table::t
         _%fields107557%_
         __tmp108210
         _%slot-vector107546%_
         _%slot-table107553%_
         _%properties107559%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots107526%_ '(gcht immediate))
             (_%slot-vector107528%_ (list->vector (cons '#f _%slots107526%_)))
             (_%slot-table107535%_
              (let ((_%slot-table107530%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108213
                       (lambda (_%slot107532%_ _%field107533%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107530%_
                            _%slot107532%_
                            _%field107533%_))
                         (let ((__tmp108214
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107532%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107530%_
                            __tmp108214
                            _%field107533%_))))
                      (__tmp108211
                       (let ((__tmp108212
                              (let ()
                                (declare (not safe))
                                (##length _%slots107526%_))))
                         (declare (not safe))
                         (##iota __tmp108212 '1))))
                  (declare (not safe))
                  (##for-each __tmp108213 _%slots107526%_ __tmp108211))
                _%slot-table107530%_))
             (_%flags107537%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107539%_ '#())
             (_%properties107541%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107526%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108215 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags107537%_
         __gc-table::t
         _%fields107539%_
         __tmp108215
         _%slot-vector107528%_
         _%slot-table107535%_
         _%properties107541%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp108217 (list))
            (__tmp108216
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108217
         '(table lock)
         __tmp108216
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args107523%_
        (apply make-instance locked-hash-table::t _%$args107523%_)))
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
      (let ((__tmp108219 (list))
            (__tmp108218
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp108219
         '(table key-check)
         __tmp108218
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args107520%_
        (apply make-instance checked-hash-table::t _%$args107520%_)))
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
      (let ((__tmp108221 (list hash-table::t))
            (__tmp108220 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108221
         '()
         __tmp108220
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args107517%_
        (apply make-instance eq-hash-table::t _%$args107517%_)))
    (define eqv-hash-table::t
      (let ((__tmp108223 (list hash-table::t))
            (__tmp108222 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108223
         '()
         __tmp108222
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args107514%_
        (apply make-instance eqv-hash-table::t _%$args107514%_)))
    (define symbol-hash-table::t
      (let ((__tmp108225 (list hash-table::t))
            (__tmp108224 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108225
         '()
         __tmp108224
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args107511%_
        (apply make-instance symbol-hash-table::t _%$args107511%_)))
    (define string-hash-table::t
      (let ((__tmp108227 (list hash-table::t))
            (__tmp108226 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108227
         '()
         __tmp108226
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args107508%_
        (apply make-instance string-hash-table::t _%$args107508%_)))
    (define immediate-hash-table::t
      (let ((__tmp108229 (list hash-table::t))
            (__tmp108228 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp108229
         '()
         __tmp108228
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args107505%_
        (apply make-instance immediate-hash-table::t _%$args107505%_)))
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
    (define _%locked-hash-table::ref103451%_
      (lambda (_%self103450107479%_ _%key107481%_ _%default107482%_)
        (let* ((_%self107484%_ _%self103450107479%_)
               (_%self107487%_ _%self107484%_))
          (let ((_%h107497%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107487%_ '1 '#f '#f)))
                (_%l107499%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107487%_ '2 '#f '#f))))
            (let ((__tmp108232 (lambda () (&Locker-read-lock! _%l107499%_)))
                  (__tmp108231
                   (lambda ()
                     (&HashTable-ref
                      _%h107497%_
                      _%key107481%_
                      _%default107482%_)))
                  (__tmp108230 (lambda () (&Locker-read-unlock! _%l107499%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108232 __tmp108231 __tmp108230))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref103451%_
       '#f))
    (define _%locked-hash-table::set!103454%_
      (lambda (_%self103453107330%_ _%key107332%_ _%value107333%_)
        (let* ((_%self107335%_ _%self103453107330%_)
               (_%self107338%_ _%self107335%_))
          (let ((_%h107348%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107338%_ '1 '#f '#f)))
                (_%l107350%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107338%_ '2 '#f '#f))))
            (let ((__tmp108235 (lambda () (&Locker-write-lock! _%l107350%_)))
                  (__tmp108234
                   (lambda ()
                     (&HashTable-set!
                      _%h107348%_
                      _%key107332%_
                      _%value107333%_)))
                  (__tmp108233
                   (lambda () (&Locker-write-unlock! _%l107350%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108235 __tmp108234 __tmp108233))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!103454%_
       '#f))
    (define _%locked-hash-table::update!103457%_
      (lambda (_%self103456107180%_
               _%key107182%_
               _%update107183%_
               _%default107184%_)
        (let* ((_%self107186%_ _%self103456107180%_)
               (_%self107189%_ _%self107186%_))
          (let ((_%h107199%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107189%_ '1 '#f '#f)))
                (_%l107201%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107189%_ '2 '#f '#f))))
            (let ((__tmp108238 (lambda () (&Locker-write-lock! _%l107201%_)))
                  (__tmp108237
                   (lambda ()
                     (&HashTable-update!
                      _%h107199%_
                      _%key107182%_
                      _%update107183%_
                      _%default107184%_)))
                  (__tmp108236
                   (lambda () (&Locker-write-unlock! _%l107201%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108238 __tmp108237 __tmp108236))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!103457%_
       '#f))
    (define _%locked-hash-table::delete!103460%_
      (lambda (_%self103459107032%_ _%key107034%_)
        (let* ((_%self107036%_ _%self103459107032%_)
               (_%self107039%_ _%self107036%_))
          (let ((_%h107049%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107039%_ '1 '#f '#f)))
                (_%l107051%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107039%_ '2 '#f '#f))))
            (let ((__tmp108241 (lambda () (&Locker-write-lock! _%l107051%_)))
                  (__tmp108240
                   (lambda () (&HashTable-delete! _%h107049%_ _%key107034%_)))
                  (__tmp108239
                   (lambda () (&Locker-write-unlock! _%l107051%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108241 __tmp108240 __tmp108239))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!103460%_
       '#f))
    (define _%locked-hash-table::for-each103463%_
      (lambda (_%self103462106884%_ _%proc106886%_)
        (let* ((_%self106888%_ _%self103462106884%_)
               (_%self106891%_ _%self106888%_))
          (let ((_%h106901%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106891%_ '1 '#f '#f)))
                (_%l106903%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106891%_ '2 '#f '#f))))
            (let ((__tmp108244 (lambda () (&Locker-read-lock! _%l106903%_)))
                  (__tmp108243
                   (lambda ()
                     (&HashTable-for-each _%h106901%_ _%proc106886%_)))
                  (__tmp108242 (lambda () (&Locker-read-unlock! _%l106903%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108244 __tmp108243 __tmp108242))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each103463%_
       '#f))
    (define _%locked-hash-table::length103466%_
      (lambda (_%self103465106737%_)
        (let* ((_%self106740%_ _%self103465106737%_)
               (_%self106743%_ _%self106740%_))
          (let ((_%h106753%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106743%_ '1 '#f '#f)))
                (_%l106755%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106743%_ '2 '#f '#f))))
            (let ((__tmp108247 (lambda () (&Locker-read-lock! _%l106755%_)))
                  (__tmp108246 (lambda () (&HashTable-length _%h106753%_)))
                  (__tmp108245 (lambda () (&Locker-read-unlock! _%l106755%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108247 __tmp108246 __tmp108245))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length103466%_
       '#f))
    (define _%locked-hash-table::copy103469%_
      (lambda (_%self103468106590%_)
        (let* ((_%self106593%_ _%self103468106590%_)
               (_%self106596%_ _%self106593%_))
          (let ((_%h106606%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106596%_ '1 '#f '#f)))
                (_%l106608%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106596%_ '2 '#f '#f))))
            (let ((__tmp108250 (lambda () (&Locker-read-lock! _%l106608%_)))
                  (__tmp108249 (lambda () (&HashTable-copy _%h106606%_)))
                  (__tmp108248 (lambda () (&Locker-read-unlock! _%l106608%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108250 __tmp108249 __tmp108248))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy103469%_
       '#f))
    (define _%locked-hash-table::clear!103472%_
      (lambda (_%self103471106443%_)
        (let* ((_%self106446%_ _%self103471106443%_)
               (_%self106449%_ _%self106446%_))
          (let ((_%h106459%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106449%_ '1 '#f '#f)))
                (_%l106461%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106449%_ '2 '#f '#f))))
            (let ((__tmp108253 (lambda () (&Locker-write-lock! _%l106461%_)))
                  (__tmp108252 (lambda () (&HashTable-clear! _%h106459%_)))
                  (__tmp108251
                   (lambda () (&Locker-write-unlock! _%l106461%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108253 __tmp108252 __tmp108251))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!103472%_
       '#f))
    (let ((__tmp108254 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108254 'read-lock! mutex-lock!))
    (let ((__tmp108255 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108255 'read-unlock! mutex-unlock!))
    (let ((__tmp108256 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108256 'write-lock! mutex-lock!))
    (let ((__tmp108257 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108257 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref103751%_
      (lambda (_%self103750106294%_ _%key106296%_ _%default106297%_)
        (let* ((_%self106299%_ _%self103750106294%_)
               (_%self106301%_ _%self106299%_))
          (let ((_%h106311%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106301%_ '1 '#f '#f)))
                (_%key?106313%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106301%_ '2 '#f '#f))))
            ((lambda (_%g106315106317%_)
               (if (_%g106315106317%_ _%key106296%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106296%_))))
             _%key?106313%_)
            (&HashTable-ref _%h106311%_ _%key106296%_ _%default106297%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref103751%_
       '#f))
    (define _%checked-hash-table::set!103754%_
      (lambda (_%self103753106145%_ _%key106147%_ _%value106148%_)
        (let* ((_%self106150%_ _%self103753106145%_)
               (_%self106152%_ _%self106150%_))
          (let ((_%h106162%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106152%_ '1 '#f '#f)))
                (_%key?106164%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106152%_ '2 '#f '#f))))
            ((lambda (_%g106166106168%_)
               (if (_%g106166106168%_ _%key106147%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106147%_))))
             _%key?106164%_)
            (&HashTable-set! _%h106162%_ _%key106147%_ _%value106148%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!103754%_
       '#f))
    (define _%checked-hash-table::update!103757%_
      (lambda (_%self103756105997%_
               _%key105999%_
               _%update106000%_
               _%default106001%_)
        (let* ((_%self106003%_ _%self103756105997%_)
               (_%self106005%_ _%self106003%_))
          (let ((_%h106015%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106005%_ '1 '#f '#f)))
                (_%key?106017%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106005%_ '2 '#f '#f))))
            ((lambda (_%key?106020%_)
               (if (_%key?106020%_ _%key105999%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105999%_)))
               (if (procedure? _%update106000%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update106000%_))))
             _%key?106017%_)
            (&HashTable-update!
             _%h106015%_
             _%key105999%_
             _%update106000%_
             _%default106001%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!103757%_
       '#f))
    (define _%checked-hash-table::delete!103760%_
      (lambda (_%self103759105849%_ _%key105851%_)
        (let* ((_%self105853%_ _%self103759105849%_)
               (_%self105855%_ _%self105853%_))
          (let ((_%h105865%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105855%_ '1 '#f '#f)))
                (_%key?105867%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105855%_ '2 '#f '#f))))
            ((lambda (_%g105869105871%_)
               (if (_%g105869105871%_ _%key105851%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105851%_))))
             _%key?105867%_)
            (&HashTable-delete! _%h105865%_ _%key105851%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!103760%_
       '#f))
    (define _%checked-hash-table::for-each103763%_
      (lambda (_%self103762105703%_ _%proc105705%_)
        (let* ((_%self105707%_ _%self103762105703%_)
               (_%self105709%_ _%self105707%_))
          (let ((_%h105719%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105709%_ '1 '#f '#f)))
                (_%key?105721%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105709%_ '2 '#f '#f))))
            ((lambda (_%_105724%_)
               (if (procedure? _%proc105705%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc105705%_))))
             _%key?105721%_)
            (&HashTable-for-each _%h105719%_ _%proc105705%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each103763%_
       '#f))
    (define _%checked-hash-table::length103766%_
      (lambda (_%self103765105560%_)
        (let* ((_%self105563%_ _%self103765105560%_)
               (_%self105565%_ _%self105563%_))
          (let ((_%h105575%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105565%_ '1 '#f '#f)))
                (_%key?105577%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105565%_ '2 '#f '#f))))
            (&HashTable-length _%h105575%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'length
       _%checked-hash-table::length103766%_
       '#f))
    (define _%checked-hash-table::copy103769%_
      (lambda (_%self103768105417%_)
        (let* ((_%self105420%_ _%self103768105417%_)
               (_%self105422%_ _%self105420%_))
          (let ((_%h105432%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105422%_ '1 '#f '#f)))
                (_%key?105434%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105422%_ '2 '#f '#f))))
            (&HashTable-copy _%h105432%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy103769%_
       '#f))
    (define _%checked-hash-table::clear!103772%_
      (lambda (_%self103771105274%_)
        (let* ((_%self105277%_ _%self103771105274%_)
               (_%self105279%_ _%self105277%_))
          (let ((_%h105289%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105279%_ '1 '#f '#f)))
                (_%key?105291%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105279%_ '2 '#f '#f))))
            (&HashTable-clear! _%h105289%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!103772%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table105144%_
               _%count105145%_
               _%free105146%_
               _%hash105147%_
               _%test105148%_
               _%seed105149%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table105144%_
           _%count105145%_
           _%free105146%_
           _%hash105147%_
           _%test105148%_
           _%seed105149%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords104905%_
               _%size-hint104895104906%_
               _%seed104896104908%_
               _%test104897104910%_
               _%hash104898104912%_
               _%lock104899104914%_
               _%check104900104916%_
               _%weak-keys104901104918%_
               _%weak-values104902104920%_)
        (let* ((_%size-hint104923%_
                (if (eq? _%size-hint104895104906%_ absent-value)
                    '#f
                    _%size-hint104895104906%_))
               (_%seed104925%_
                (if (eq? _%seed104896104908%_ absent-value)
                    '#f
                    _%seed104896104908%_))
               (_%test104927%_
                (if (eq? _%test104897104910%_ absent-value)
                    equal?
                    _%test104897104910%_))
               (_%hash104929%_
                (if (eq? _%hash104898104912%_ absent-value)
                    '#f
                    _%hash104898104912%_))
               (_%lock104931%_
                (if (eq? _%lock104899104914%_ absent-value)
                    '#f
                    _%lock104899104914%_))
               (_%check104933%_
                (if (eq? _%check104900104916%_ absent-value)
                    '#f
                    _%check104900104916%_))
               (_%weak-keys104935%_
                (if (eq? _%weak-keys104901104918%_ absent-value)
                    '#f
                    _%weak-keys104901104918%_))
               (_%weak-values104937%_
                (if (eq? _%weak-values104902104920%_ absent-value)
                    '#f
                    _%weak-values104902104920%_)))
          (letrec ((_%table-seed104940%_
                    (lambda ()
                      (if (fixnum? _%seed104925%_)
                          _%seed104925%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock104941%_
                    (lambda (_%ht105118%_)
                      (let ((_%ht105121%_ _%ht105118%_))
                        (_%__wrap-lock104942%_ _%ht105121%_))))
                   (_%__wrap-lock104942%_
                    (lambda (_%ht105100%_)
                      (let ((_%ht105103%_ _%ht105100%_))
                        (if _%lock104931%_
                            (let ((_%$obj105115%_
                                   (let ((__tmp108258
                                          (let ((_%$obj105112%_
                                                 _%lock104931%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj105112%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj105112%_)))
                                                     '#t)
                                                _%$obj105112%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj105112%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht105103%_
                                      __tmp108258))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105115%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105115%_)))
                                       '#t)
                                  _%$obj105115%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105115%_))))
                            _%ht105103%_))))
                   (_%wrap-checked104943%_
                    (lambda (_%ht105087%_ _%implicit105088%_)
                      (let ((_%ht105091%_ _%ht105087%_))
                        (_%__wrap-checked104944%_
                         _%ht105091%_
                         _%implicit105088%_))))
                   (_%__wrap-checked104944%_
                    (lambda (_%ht105060%_ _%implicit105061%_)
                      (let ((_%ht105064%_ _%ht105060%_))
                        (if _%check104933%_
                            (let ((_%$obj105084%_
                                   (let ((__tmp108259
                                          (if (procedure? _%check104933%_)
                                              _%check104933%_
                                              _%implicit105061%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht105064%_
                                      __tmp108259))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105084%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105084%_)))
                                       '#t)
                                  _%$obj105084%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105084%_))))
                            _%ht105064%_))))
                   (_%make104945%_
                    (lambda (_%kons105044%_
                             _%key?105045%_
                             _%hash105046%_
                             _%test105047%_)
                      (let* ((_%size105050%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint104923%_)))
                             (_%table105052%_
                              (let ((__tmp108260 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size105050%_ __tmp108260)))
                             (_%ht105057%_
                              (let ((_%$obj105054%_
                                     (_%kons105044%_
                                      _%table105052%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size105050%_ '2))
                                      _%hash105046%_
                                      _%test105047%_
                                      (_%table-seed104940%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105054%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105054%_)))
                                         '#t)
                                    _%$obj105054%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105054%_))))))
                        (_%__wrap-checked104944%_
                         (_%__wrap-lock104942%_ _%ht105057%_)
                         _%key?105045%_))))
                   (_%make-gc-hash-table104946%_
                    (lambda ()
                      (let ((_%ht105042%_
                             (let ((_%$obj105039%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint104923%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj105039%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj105039%_)))
                                        '#t)
                                   _%$obj105039%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj105039%_))))))
                        (_%__wrap-checked104944%_
                         (_%__wrap-lock104942%_ _%ht105042%_)
                         true))))
                   (_%make-gambit-table104947%_
                    (lambda ()
                      (let* ((_%size105016%_
                              (let ((_%$e105013%_ _%size-hint104923%_))
                                (if _%$e105013%_
                                    _%$e105013%_
                                    (macro-absent-obj))))
                             (_%test105021%_
                              (let ((_%$e105018%_ _%test104927%_))
                                (if _%$e105018%_ _%$e105018%_ equal?)))
                             (_%hash105029%_
                              (let ((_%$e105023%_ _%hash104929%_))
                                (if _%$e105023%_
                                    _%$e105023%_
                                    (if (eq? _%test105021%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test105021%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht105034%_
                              (let ((_%$obj105031%_
                                     (make-table
                                      'size:
                                      _%size105016%_
                                      'test:
                                      _%test105021%_
                                      'hash:
                                      _%hash105029%_
                                      'weak-keys:
                                      _%weak-keys104935%_
                                      'weak-values:
                                      _%weak-values104937%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105031%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105031%_)))
                                         '#t)
                                    _%$obj105031%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105031%_))))))
                        (_%__wrap-checked104944%_
                         (_%__wrap-lock104942%_ _%ht105034%_)
                         true)))))
            (if (or _%weak-keys104935%_ _%weak-values104937%_)
                (_%make-gambit-table104947%_)
                (if (and (or (eq? _%test104927%_ eq?)
                             (eq? _%test104927%_ ##eq?))
                         (or (not _%hash104929%_)
                             (eq? _%hash104929%_ eq?-hash)
                             (eq? _%hash104929%_ eq-hash))
                         (not _%seed104925%_))
                    (_%make-gc-hash-table104946%_)
                    (if (and (or (eq? _%test104927%_ eq?)
                                 (eq? _%test104927%_ ##eq?))
                             (or (not _%hash104929%_)
                                 (eq? _%hash104929%_ eq?-hash)
                                 (eq? _%hash104929%_ eq-hash)))
                        (_%make104945%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test104927%_ eqv?)
                                     (eq? _%test104927%_ ##eqv?))
                                 (or (not _%hash104929%_)
                                     (eq? _%hash104929%_ eqv?-hash)
                                     (eq? _%hash104929%_ eqv-hash)))
                            (_%make104945%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test104927%_ eq?)
                                         (eq? _%test104927%_ ##eq?))
                                     (or (eq? _%hash104929%_ symbolic-hash)
                                         (eq? _%hash104929%_ ##symbol-hash)))
                                (_%make104945%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test104927%_ eq?)
                                             (eq? _%test104927%_ ##eq?))
                                         (eq? _%hash104929%_ immediate-hash))
                                    (_%make104945%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test104927%_ equal?)
                                                 (eq? _%test104927%_ ##equal?)
                                                 (eq? _%test104927%_ string=?)
                                                 (eq? _%test104927%_
                                                      ##string=?))
                                             (or (eq? _%hash104929%_
                                                      string-hash)
                                                 (eq? _%hash104929%_
                                                      ##string=?-hash)))
                                        (_%make104945%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test104927%_ equal?)
                                                 (not _%hash104929%_))
                                            (_%make104945%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test104927%_)
                                                (if (procedure? _%hash104929%_)
                                                    (_%make104945%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash104929%_
                                                     _%test104927%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash104929%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test104927%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords105134%_ . _%args105135%_)
        (apply make-hash-table__%
               _%@@keywords105134%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105134%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105134%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105134%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105134%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105134%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105134%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105134%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105134%_
                  'weak-values:
                  absent-value))
               _%args105135%_)))
    (define make-hash-table
      (lambda _%args104903105141%_
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
               _%args104903105141%_)))
    (define make-hash-table-eq
      (lambda _%args104892%_
        (apply make-hash-table 'test: eq? _%args104892%_)))
    (define make-hash-table-eqv
      (lambda _%args104890%_
        (apply make-hash-table 'test: eqv? _%args104890%_)))
    (define make-hash-table-symbolic
      (lambda _%args104888%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args104888%_)))
    (define make-hash-table-string
      (lambda _%args104886%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args104886%_)))
    (define make-hash-table-immediate
      (lambda _%args104884%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args104884%_)))
    (define list->hash-table
      (lambda (_%lst104881%_ . _%args104882%_)
        (list->hash-table!
         _%lst104881%_
         (apply make-hash-table
                'size:
                (length _%lst104881%_)
                _%args104882%_))))
    (define list->hash-table-eq
      (lambda (_%lst104878%_ . _%args104879%_)
        (list->hash-table!
         _%lst104878%_
         (apply make-hash-table-eq
                'size:
                (length _%lst104878%_)
                _%args104879%_))))
    (define list->hash-table-eqv
      (lambda (_%lst104875%_ . _%args104876%_)
        (list->hash-table!
         _%lst104875%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst104875%_)
                _%args104876%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst104872%_ . _%args104873%_)
        (list->hash-table!
         _%lst104872%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst104872%_)
                _%args104873%_))))
    (define list->hash-table-string
      (lambda (_%lst104869%_ . _%args104870%_)
        (list->hash-table!
         _%lst104869%_
         (apply make-hash-table-string
                'size:
                (length _%lst104869%_)
                _%args104870%_))))
    (define list->hash-table-immediate
      (lambda (_%lst104866%_ . _%args104867%_)
        (list->hash-table!
         _%lst104866%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst104866%_)
                _%args104867%_))))
    (define list->hash-table!
      (lambda (_%lst104833%_ _%h104834%_)
        (for-each
         (lambda (_%el104836%_)
           (let* ((_%el104837104844%_ _%el104836%_)
                  (_%E104839104848%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el104837104844%_
                              '([k . v])))
                     '#!void))
                  (_%K104840104854%_
                   (lambda (_%v104851%_ _%k104852%_)
                     (&HashTable-set! _%h104834%_ _%k104852%_ _%v104851%_))))
             (if (let () (declare (not safe)) (##pair? _%el104837104844%_))
                 (let ((_%hd104841104857%_
                        (let ()
                          (declare (not safe))
                          (##car _%el104837104844%_)))
                       (_%tl104842104859%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el104837104844%_))))
                   (let* ((_%k104862%_ _%hd104841104857%_)
                          (_%v104864%_ _%tl104842104859%_))
                     (_%K104840104854%_ _%v104864%_ _%k104862%_)))
                 (_%E104839104848%_))))
         _%lst104833%_)
        _%h104834%_))
    (define plist->hash-table
      (lambda (_%lst104830%_ . _%args104831%_)
        (plist->hash-table!
         _%lst104830%_
         (apply make-hash-table
                'size:
                (length _%lst104830%_)
                _%args104831%_))))
    (define plist->hash-table-eq
      (lambda (_%lst104827%_ . _%args104828%_)
        (plist->hash-table!
         _%lst104827%_
         (apply make-hash-table-eq
                'size:
                (length _%lst104827%_)
                _%args104828%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst104824%_ . _%args104825%_)
        (plist->hash-table!
         _%lst104824%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst104824%_)
                _%args104825%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst104821%_ . _%args104822%_)
        (plist->hash-table!
         _%lst104821%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst104821%_)
                _%args104822%_))))
    (define plist->hash-table-string
      (lambda (_%lst104818%_ . _%args104819%_)
        (plist->hash-table!
         _%lst104818%_
         (apply make-hash-table-string
                'size:
                (length _%lst104818%_)
                _%args104819%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst104815%_ . _%args104816%_)
        (plist->hash-table!
         _%lst104815%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst104815%_)
                _%args104816%_))))
    (define plist->hash-table!
      (lambda (_%lst104755%_ _%h104756%_)
        (let _%loop104758%_ ((_%rest104760%_ _%lst104755%_))
          (let* ((_%rest104761104773%_ _%rest104760%_)
                 (_%else104764104781%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst104755%_)))))
            (let ((_%K104767104796%_
                   (lambda (_%rest104792%_ _%val104793%_ _%key104794%_)
                     (&HashTable-set! _%h104756%_ _%key104794%_ _%val104793%_)
                     (_%loop104758%_ _%rest104792%_)))
                  (_%K104766104786%_ (lambda () _%h104756%_)))
              (let ((_%try-match104763104789%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest104761104773%_))
                           (_%K104766104786%_)
                           (_%else104764104781%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest104761104773%_))
                    (let ((_%tl104769104801%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest104761104773%_)))
                          (_%hd104768104799%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest104761104773%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl104769104801%_))
                          (let ((_%tl104771104808%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl104769104801%_)))
                                (_%hd104770104806%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl104769104801%_))))
                            (let ((_%key104804%_ _%hd104768104799%_)
                                  (_%val104811%_ _%hd104770104806%_)
                                  (_%rest104813%_ _%tl104771104808%_))
                              (_%K104767104796%_
                               _%rest104813%_
                               _%val104811%_
                               _%key104804%_)))
                          (_%else104764104781%_)))
                    (_%try-match104763104789%_))))))))
    (define hash-length
      (lambda (_%h104737%_)
        (let* ((_%h104743%_
                (let ((_%$obj104740%_ _%h104737%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104740%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104740%_)))
                           '#t)
                      _%$obj104740%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104740%_)))))
               (_%h104745%_ _%h104743%_))
          (__hash-length _%h104745%_))))
    (define __hash-length
      (lambda (_%h104725%_)
        (let ((_%h104728%_ _%h104725%_)) (__HashTable-length _%h104728%_))))
    (define hash-ref__%
      (lambda (_%h104693%_ _%key104694%_ _%default104695%_)
        (let* ((_%h104701%_
                (let ((_%$obj104698%_ _%h104693%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104698%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104698%_)))
                           '#t)
                      _%$obj104698%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104698%_)))))
               (_%h104703%_ _%h104701%_))
          (__hash-ref__% _%h104703%_ _%key104694%_ _%default104695%_))))
    (define hash-ref__0
      (lambda (_%h104716%_ _%key104717%_)
        (let ((_%default104719%_ (macro-absent-obj)))
          (hash-ref__% _%h104716%_ _%key104717%_ _%default104719%_))))
    (define hash-ref
      (lambda _g108262_
        (let ((_g108261_ (let () (declare (not safe)) (##length _g108262_))))
          (cond ((let () (declare (not safe)) (##fx= _g108261_ 2))
                 (apply hash-ref__0 _g108262_))
                ((let () (declare (not safe)) (##fx= _g108261_ 3))
                 (apply hash-ref__% _g108262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108262_))))))
    (define __hash-ref__%
      (lambda (_%h104664%_ _%key104665%_ _%default104666%_)
        (let* ((_%h104669%_ _%h104664%_)
               (_%result104678%_
                (&HashTable-ref _%h104669%_ _%key104665%_ _%default104666%_)))
          (if (eq? _%result104678%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h104669%_
               'key:
               _%key104665%_)
              _%result104678%_))))
    (define __hash-ref__0
      (lambda (_%h104683%_ _%key104684%_)
        (let ((_%default104686%_ (macro-absent-obj)))
          (__hash-ref__% _%h104683%_ _%key104684%_ _%default104686%_))))
    (define __hash-ref
      (lambda _g108264_
        (let ((_g108263_ (let () (declare (not safe)) (##length _g108264_))))
          (cond ((let () (declare (not safe)) (##fx= _g108263_ 2))
                 (apply __hash-ref__0 _g108264_))
                ((let () (declare (not safe)) (##fx= _g108263_ 3))
                 (apply __hash-ref__% _g108264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g108264_))))))
    (define hash-get
      (lambda (_%h104644%_ _%key104645%_)
        (let* ((_%h104651%_
                (let ((_%$obj104648%_ _%h104644%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104648%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104648%_)))
                           '#t)
                      _%$obj104648%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104648%_)))))
               (_%h104653%_ _%h104651%_))
          (__hash-get _%h104653%_ _%key104645%_))))
    (define __hash-get
      (lambda (_%h104631%_ _%key104632%_)
        (let ((_%h104635%_ _%h104631%_))
          (&HashTable-ref _%h104635%_ _%key104632%_ '#f))))
    (define hash-put!
      (lambda (_%h104611%_ _%key104612%_ _%value104613%_)
        (let* ((_%h104619%_
                (let ((_%$obj104616%_ _%h104611%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104616%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104616%_)))
                           '#t)
                      _%$obj104616%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104616%_)))))
               (_%h104621%_ _%h104619%_))
          (__hash-put! _%h104621%_ _%key104612%_ _%value104613%_))))
    (define __hash-put!
      (lambda (_%h104597%_ _%key104598%_ _%value104599%_)
        (let ((_%h104602%_ _%h104597%_))
          (&HashTable-set! _%h104602%_ _%key104598%_ _%value104599%_))))
    (define hash-update!__%
      (lambda (_%h104562%_ _%key104563%_ _%update104564%_ _%default104565%_)
        (let* ((_%h104571%_
                (let ((_%$obj104568%_ _%h104562%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104568%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104568%_)))
                           '#t)
                      _%$obj104568%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104568%_)))))
               (_%h104573%_ _%h104571%_))
          (__hash-update!__%
           _%h104573%_
           _%key104563%_
           _%update104564%_
           _%default104565%_))))
    (define hash-update!__0
      (lambda (_%h104586%_ _%key104587%_ _%update104588%_)
        (let ((_%default104590%_ '#!void))
          (hash-update!__%
           _%h104586%_
           _%key104587%_
           _%update104588%_
           _%default104590%_))))
    (define hash-update!
      (lambda _g108266_
        (let ((_g108265_ (let () (declare (not safe)) (##length _g108266_))))
          (cond ((let () (declare (not safe)) (##fx= _g108265_ 3))
                 (apply hash-update!__0 _g108266_))
                ((let () (declare (not safe)) (##fx= _g108265_ 4))
                 (apply hash-update!__% _g108266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108266_))))))
    (define __hash-update!__%
      (lambda (_%h104532%_ _%key104533%_ _%update104534%_ _%default104535%_)
        (let ((_%h104538%_ _%h104532%_))
          (HashTable-update!
           _%h104538%_
           _%key104533%_
           _%update104534%_
           _%default104535%_))))
    (define __hash-update!__0
      (lambda (_%h104550%_ _%key104551%_ _%update104552%_)
        (let ((_%default104554%_ '#!void))
          (__hash-update!__%
           _%h104550%_
           _%key104551%_
           _%update104552%_
           _%default104554%_))))
    (define __hash-update!
      (lambda _g108268_
        (let ((_g108267_ (let () (declare (not safe)) (##length _g108268_))))
          (cond ((let () (declare (not safe)) (##fx= _g108267_ 3))
                 (apply __hash-update!__0 _g108268_))
                ((let () (declare (not safe)) (##fx= _g108267_ 4))
                 (apply __hash-update!__% _g108268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g108268_))))))
    (define hash-remove!
      (lambda (_%h104512%_ _%key104513%_)
        (let* ((_%h104519%_
                (let ((_%$obj104516%_ _%h104512%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104516%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104516%_)))
                           '#t)
                      _%$obj104516%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104516%_)))))
               (_%h104521%_ _%h104519%_))
          (__hash-remove! _%h104521%_ _%key104513%_))))
    (define __hash-remove!
      (lambda (_%h104499%_ _%key104500%_)
        (let ((_%h104503%_ _%h104499%_))
          (&HashTable-delete! _%h104503%_ _%key104500%_))))
    (define hash-key?
      (lambda (_%h104480%_ _%k104481%_)
        (let* ((_%h104487%_
                (let ((_%$obj104484%_ _%h104480%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104484%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104484%_)))
                           '#t)
                      _%$obj104484%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104484%_)))))
               (_%h104489%_ _%h104487%_))
          (__hash-key? _%h104489%_ _%k104481%_))))
    (define __hash-key?
      (lambda (_%h104467%_ _%k104468%_)
        (let ((_%h104471%_ _%h104467%_))
          (not (eq? (&HashTable-ref _%h104471%_ _%k104468%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h104449%_)
        (let* ((_%h104455%_
                (let ((_%$obj104452%_ _%h104449%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104452%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104452%_)))
                           '#t)
                      _%$obj104452%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104452%_)))))
               (_%h104457%_ _%h104455%_))
          (__hash->list _%h104457%_))))
    (define __hash->list
      (lambda (_%h104432%_)
        (let* ((_%h104435%_ _%h104432%_) (_%lst104444%_ '()))
          (&HashTable-for-each
           _%h104435%_
           (lambda (_%k104446%_ _%v104447%_)
             (set! _%lst104444%_
                   (cons (cons _%k104446%_ _%v104447%_) _%lst104444%_))))
          _%lst104444%_)))
    (define hash->plist
      (lambda (_%h104414%_)
        (let* ((_%h104420%_
                (let ((_%$obj104417%_ _%h104414%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104417%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104417%_)))
                           '#t)
                      _%$obj104417%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104417%_)))))
               (_%h104422%_ _%h104420%_))
          (__hash->plist _%h104422%_))))
    (define __hash->plist
      (lambda (_%h104397%_)
        (let* ((_%h104400%_ _%h104397%_) (_%lst104409%_ '()))
          (&HashTable-for-each
           _%h104400%_
           (lambda (_%k104411%_ _%v104412%_)
             (set! _%lst104409%_
                   (cons _%k104411%_ (cons _%v104412%_ _%lst104409%_)))))
          _%lst104409%_)))
    (define hash-for-each
      (lambda (_%proc104368%_ _%h104369%_)
        (if (procedure? _%proc104368%_)
            (let* ((_%proc104373%_ _%proc104368%_)
                   (_%h104385%_
                    (let ((_%$obj104382%_ _%h104369%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104382%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104382%_)))
                               '#t)
                          _%$obj104382%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104382%_)))))
                   (_%h104387%_ _%h104385%_))
              (__hash-for-each _%proc104373%_ _%h104387%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.22-568.26"
               'contract:
               'procedure?
               'value:
               _%proc104368%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc104347%_ _%h104348%_)
        (let* ((_%proc104351%_ _%proc104347%_) (_%h104359%_ _%h104348%_))
          (&HashTable-for-each _%h104359%_ _%proc104351%_))))
    (define hash-map
      (lambda (_%proc104318%_ _%h104319%_)
        (if (procedure? _%proc104318%_)
            (let* ((_%proc104323%_ _%proc104318%_)
                   (_%h104335%_
                    (let ((_%$obj104332%_ _%h104319%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104332%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104332%_)))
                               '#t)
                          _%$obj104332%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104332%_)))))
                   (_%h104337%_ _%h104335%_))
              (__hash-map _%proc104323%_ _%h104337%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@571.17-571.21"
               'contract:
               'procedure?
               'value:
               _%proc104318%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc104292%_ _%h104293%_)
        (let* ((_%proc104296%_ _%proc104292%_)
               (_%h104304%_ _%h104293%_)
               (_%result104313%_ '()))
          (&HashTable-for-each
           _%h104304%_
           (lambda (_%k104315%_ _%v104316%_)
             (set! _%result104313%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc104296%_ _%k104315%_ _%v104316%_))
                         _%result104313%_))))
          _%result104313%_)))
    (define hash-fold
      (lambda (_%proc104262%_ _%iv104263%_ _%h104264%_)
        (if (procedure? _%proc104262%_)
            (let* ((_%proc104268%_ _%proc104262%_)
                   (_%h104280%_
                    (let ((_%$obj104277%_ _%h104264%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104277%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104277%_)))
                               '#t)
                          _%$obj104277%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104277%_)))))
                   (_%h104282%_ _%h104280%_))
              (__hash-fold _%proc104268%_ _%iv104263%_ _%h104282%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@576.18-576.22"
               'contract:
               'procedure?
               'value:
               _%proc104262%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc104235%_ _%iv104236%_ _%h104237%_)
        (let* ((_%proc104240%_ _%proc104235%_)
               (_%h104248%_ _%h104237%_)
               (_%result104257%_ _%iv104236%_))
          (&HashTable-for-each
           _%h104248%_
           (lambda (_%k104259%_ _%v104260%_)
             (set! _%result104257%_
                   (let ()
                     (declare (not safe))
                     (_%proc104240%_
                      _%k104259%_
                      _%v104260%_
                      _%result104257%_)))))
          _%result104257%_)))
    (define hash-find__%
      (lambda (_%proc104193%_ _%h104194%_ _%default-value104195%_)
        (if (procedure? _%proc104193%_)
            (let* ((_%proc104199%_ _%proc104193%_)
                   (_%h104211%_
                    (let ((_%$obj104208%_ _%h104194%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104208%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104208%_)))
                               '#t)
                          _%$obj104208%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104208%_)))))
                   (_%h104213%_ _%h104211%_))
              (__hash-find__%
               _%proc104199%_
               _%h104213%_
               _%default-value104195%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@581.18-581.22"
               'contract:
               'procedure?
               'value:
               _%proc104193%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc104226%_ _%h104227%_)
        (let ((_%default-value104229%_ '#f))
          (hash-find__% _%proc104226%_ _%h104227%_ _%default-value104229%_))))
    (define hash-find
      (lambda _g108270_
        (let ((_g108269_ (let () (declare (not safe)) (##length _g108270_))))
          (cond ((let () (declare (not safe)) (##fx= _g108269_ 2))
                 (apply hash-find__0 _g108270_))
                ((let () (declare (not safe)) (##fx= _g108269_ 3))
                 (apply hash-find__% _g108270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108270_))))))
    (define __hash-find__%
      (lambda (_%proc104150%_ _%h104151%_ _%default-value104152%_)
        (let* ((_%proc104155%_ _%proc104150%_)
               (_%h104163%_ _%h104151%_)
               (__tmp108271
                (lambda (_%return104172%_)
                  (&HashTable-for-each
                   _%h104163%_
                   (lambda (_%k104174%_ _%v104175%_)
                     (let ((_%$e104177%_
                            (let ()
                              (declare (not safe))
                              (_%proc104155%_ _%k104174%_ _%v104175%_))))
                       (if _%$e104177%_
                           (_%return104172%_ _%$e104177%_)
                           '#!void))))
                  _%default-value104152%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp108271))))
    (define __hash-find__0
      (lambda (_%proc104183%_ _%h104184%_)
        (let ((_%default-value104186%_ '#f))
          (__hash-find__%
           _%proc104183%_
           _%h104184%_
           _%default-value104186%_))))
    (define __hash-find
      (lambda _g108273_
        (let ((_g108272_ (let () (declare (not safe)) (##length _g108273_))))
          (cond ((let () (declare (not safe)) (##fx= _g108272_ 2))
                 (apply __hash-find__0 _g108273_))
                ((let () (declare (not safe)) (##fx= _g108272_ 3))
                 (apply __hash-find__% _g108273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g108273_))))))
    (define hash-keys
      (lambda (_%h104131%_)
        (let* ((_%h104137%_
                (let ((_%$obj104134%_ _%h104131%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104134%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104134%_)))
                           '#t)
                      _%$obj104134%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104134%_)))))
               (_%h104139%_ _%h104137%_))
          (__hash-keys _%h104139%_))))
    (define __hash-keys
      (lambda (_%h104114%_)
        (let* ((_%h104117%_ _%h104114%_) (_%result104126%_ '()))
          (&HashTable-for-each
           _%h104117%_
           (lambda (_%k104128%_ _%v104129%_)
             (set! _%result104126%_ (cons _%k104128%_ _%result104126%_))))
          _%result104126%_)))
    (define hash-values
      (lambda (_%h104096%_)
        (let* ((_%h104102%_
                (let ((_%$obj104099%_ _%h104096%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104099%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104099%_)))
                           '#t)
                      _%$obj104099%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104099%_)))))
               (_%h104104%_ _%h104102%_))
          (__hash-values _%h104104%_))))
    (define __hash-values
      (lambda (_%h104079%_)
        (let* ((_%h104082%_ _%h104079%_) (_%result104091%_ '()))
          (&HashTable-for-each
           _%h104082%_
           (lambda (_%k104093%_ _%v104094%_)
             (set! _%result104091%_ (cons _%v104094%_ _%result104091%_))))
          _%result104091%_)))
    (define hash-copy
      (lambda (_%h104061%_)
        (let* ((_%h104067%_
                (let ((_%$obj104064%_ _%h104061%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104064%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104064%_)))
                           '#t)
                      _%$obj104064%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104064%_)))))
               (_%h104069%_ _%h104067%_))
          (__hash-copy _%h104069%_))))
    (define __hash-copy
      (lambda (_%h104049%_)
        (let ((_%h104052%_ _%h104049%_)) (__HashTable-copy _%h104052%_))))
    (define hash-clear!
      (lambda (_%h104031%_)
        (let* ((_%h104037%_
                (let ((_%$obj104034%_ _%h104031%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104034%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104034%_)))
                           '#t)
                      _%$obj104034%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104034%_)))))
               (_%h104039%_ _%h104037%_))
          (__hash-clear! _%h104039%_))))
    (define __hash-clear!
      (lambda (_%h104019%_)
        (let ((_%h104022%_ _%h104019%_)) (&HashTable-clear! _%h104022%_))))
    (define hash-merge
      (lambda (_%h104000%_ . _%rest104001%_)
        (let* ((_%h104007%_
                (let ((_%$obj104004%_ _%h104000%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104004%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104004%_)))
                           '#t)
                      _%$obj104004%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104004%_)))))
               (_%h104009%_ _%h104007%_))
          (declare (not safe))
          (##apply __hash-merge _%h104009%_ _%rest104001%_))))
    (define __hash-merge
      (lambda (_%h103985%_ . _%rest103986%_)
        (let* ((_%h103989%_ _%h103985%_)
               (_%copy103998%_ (__HashTable-copy _%h103989%_)))
          (apply hash-merge! _%copy103998%_ _%rest103986%_)
          _%copy103998%_)))
    (define hash-merge!
      (lambda (_%h103966%_ . _%rest103967%_)
        (let* ((_%h103973%_
                (let ((_%$obj103970%_ _%h103966%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103970%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103970%_)))
                           '#t)
                      _%$obj103970%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103970%_)))))
               (_%h103975%_ _%h103973%_))
          (declare (not safe))
          (##apply __hash-merge! _%h103975%_ _%rest103967%_))))
    (define __hash-merge!
      (lambda (_%h103929%_ . _%rest103930%_)
        (let ((_%h103933%_ _%h103929%_))
          (let ((__tmp108274
                 (lambda (_%hr103942%_)
                   (let* ((_%hr103948%_
                           (let ((_%$obj103945%_ _%hr103942%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj103945%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj103945%_)))
                                      '#t)
                                 _%$obj103945%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj103945%_)))))
                          (_%hr103950%_ _%hr103948%_))
                     (&HashTable-for-each
                      _%hr103950%_
                      (lambda (_%k103963%_ _%v103964%_)
                        (if (__hash-key? _%h103933%_ _%k103963%_)
                            '#!void
                            (&HashTable-set!
                             _%h103933%_
                             _%k103963%_
                             _%v103964%_))))))))
            (declare (not safe))
            (##for-each __tmp108274 _%rest103930%_))
          _%h103933%_)))))
