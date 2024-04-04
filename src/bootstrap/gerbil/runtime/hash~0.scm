(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712269045)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106824 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106824
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106804%_
        (apply make-instance UnboundKeyError::t _%$args106804%_)))
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
      (__bind-method! UnboundKeyError::t ':init! UnboundKeyError:::init! '#f))
    (define raise-unbound-key-error
      (lambda (_%where106678%_ _%message106679%_ . _%irritants106680%_)
        (let ((__tmp106825
               (let ((__obj106818
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106818
                  _%message106679%_
                  'where:
                  _%where106678%_
                  'irritants:
                  _%irritants106680%_)
                 __obj106818)))
          (declare (not safe))
          (raise __tmp106825))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106826 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106826
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
      (lambda (_%obj106676%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106676%_))))
    (define try-HashTable
      (lambda (_%obj106674%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106674%_))))
    (define HashTable?
      (lambda (_%obj106672%_)
        (let ((__tmp106827
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106672%_ __tmp106827))))
    (define is-HashTable?
      (lambda (_%obj106670%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106670%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106654%_)
        (let* ((_%self106659%_
                (let ((_%$obj106656%_ _%self106654%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106656%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106656%_)))
                           '#t)
                      _%$obj106656%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106656%_)))))
               (_%self106661%_ _%self106659%_))
          (declare (not safe))
          (&HashTable-clear! _%self106661%_))))
    (define &HashTable-clear!
      (lambda (_%self106639%_)
        (let ((_%self106641%_ _%self106639%_))
          (declare (not safe))
          (let ((_%obj106651%_
                 (##unchecked-structure-ref _%self106641%_ '1 '#f 'clear!))
                (_%f106652%_
                 (##unchecked-structure-ref _%self106641%_ '2 '#f 'clear!)))
            (_%f106652%_ _%obj106651%_)))))
    (define HashTable-copy
      (lambda (_%self106623%_)
        (let* ((_%self106628%_
                (let ((_%$obj106625%_ _%self106623%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106625%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106625%_)))
                           '#t)
                      _%$obj106625%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106625%_)))))
               (_%self106630%_ _%self106628%_))
          (declare (not safe))
          (__HashTable-copy _%self106630%_))))
    (define __HashTable-copy
      (lambda (_%self106610%_)
        (let* ((_%self106612%_ _%self106610%_)
               (_%$obj106620%_
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%self106612%_))))
          (if (and (let () (declare (not safe)) (##structure? _%$obj106620%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj106620%_)))
                   '#t)
              _%$obj106620%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj106620%_))))))
    (define &HashTable-copy
      (lambda (_%self106595%_)
        (let ((_%self106597%_ _%self106595%_))
          (declare (not safe))
          (let ((_%obj106607%_
                 (##unchecked-structure-ref _%self106597%_ '1 '#f 'copy))
                (_%f106608%_
                 (##unchecked-structure-ref _%self106597%_ '3 '#f 'copy)))
            (_%f106608%_ _%obj106607%_)))))
    (define HashTable-delete!
      (lambda (_%self106578%_ _%key106579%_)
        (let* ((_%self106584%_
                (let ((_%$obj106581%_ _%self106578%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106581%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106581%_)))
                           '#t)
                      _%$obj106581%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106581%_)))))
               (_%self106586%_ _%self106584%_))
          (declare (not safe))
          (&HashTable-delete! _%self106586%_ _%key106579%_))))
    (define &HashTable-delete!
      (lambda (_%self106562%_ _%key106563%_)
        (let ((_%self106565%_ _%self106562%_))
          (declare (not safe))
          (let ((_%obj106575%_
                 (##unchecked-structure-ref _%self106565%_ '1 '#f 'delete!))
                (_%f106576%_
                 (##unchecked-structure-ref _%self106565%_ '4 '#f 'delete!)))
            (_%f106576%_ _%obj106575%_ _%key106563%_)))))
    (define HashTable-for-each
      (lambda (_%self106535%_ _%proc106536%_)
        (let* ((_%self106541%_
                (let ((_%$obj106538%_ _%self106535%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106538%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106538%_)))
                           '#t)
                      _%$obj106538%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106538%_)))))
               (_%self106543%_ _%self106541%_))
          (if (let () (declare (not safe)) (procedure? _%proc106536%_))
              (let ((_%proc106552%_ _%proc106536%_))
                (declare (not safe))
                (&HashTable-for-each _%self106543%_ _%proc106552%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106536%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self106511%_ _%proc106512%_)
        (let* ((_%self106514%_ _%self106511%_) (_%proc106521%_ _%proc106512%_))
          (declare (not safe))
          (let ((_%obj106532%_
                 (##unchecked-structure-ref _%self106514%_ '1 '#f 'for-each))
                (_%f106533%_
                 (##unchecked-structure-ref _%self106514%_ '5 '#f 'for-each)))
            (_%f106533%_ _%obj106532%_ _%proc106521%_)))))
    (define HashTable-length
      (lambda (_%self106495%_)
        (let* ((_%self106500%_
                (let ((_%$obj106497%_ _%self106495%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106497%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106497%_)))
                           '#t)
                      _%$obj106497%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106497%_)))))
               (_%self106502%_ _%self106500%_))
          (declare (not safe))
          (__HashTable-length _%self106502%_))))
    (define __HashTable-length
      (lambda (_%self106482%_)
        (let* ((_%self106484%_ _%self106482%_)
               (_%val106492%_
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%self106484%_))))
          (if (let () (declare (not safe)) (fixnum? _%val106492%_))
              _%val106492%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val106492%_))))))
    (define &HashTable-length
      (lambda (_%self106467%_)
        (let ((_%self106469%_ _%self106467%_))
          (declare (not safe))
          (let ((_%obj106479%_
                 (##unchecked-structure-ref _%self106469%_ '1 '#f 'length))
                (_%f106480%_
                 (##unchecked-structure-ref _%self106469%_ '6 '#f 'length)))
            (_%f106480%_ _%obj106479%_)))))
    (define HashTable-ref
      (lambda (_%self106449%_ _%key106450%_ _%default106451%_)
        (let* ((_%self106456%_
                (let ((_%$obj106453%_ _%self106449%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106453%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106453%_)))
                           '#t)
                      _%$obj106453%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106453%_)))))
               (_%self106458%_ _%self106456%_))
          (declare (not safe))
          (&HashTable-ref _%self106458%_ _%key106450%_ _%default106451%_))))
    (define &HashTable-ref
      (lambda (_%self106432%_ _%key106433%_ _%default106434%_)
        (let ((_%self106436%_ _%self106432%_))
          (declare (not safe))
          (let ((_%obj106446%_
                 (##unchecked-structure-ref _%self106436%_ '1 '#f 'ref))
                (_%f106447%_
                 (##unchecked-structure-ref _%self106436%_ '7 '#f 'ref)))
            (_%f106447%_ _%obj106446%_ _%key106433%_ _%default106434%_)))))
    (define HashTable-set!
      (lambda (_%self106414%_ _%key106415%_ _%value106416%_)
        (let* ((_%self106421%_
                (let ((_%$obj106418%_ _%self106414%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106418%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106418%_)))
                           '#t)
                      _%$obj106418%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106418%_)))))
               (_%self106423%_ _%self106421%_))
          (declare (not safe))
          (&HashTable-set! _%self106423%_ _%key106415%_ _%value106416%_))))
    (define &HashTable-set!
      (lambda (_%self106397%_ _%key106398%_ _%value106399%_)
        (let ((_%self106401%_ _%self106397%_))
          (declare (not safe))
          (let ((_%obj106411%_
                 (##unchecked-structure-ref _%self106401%_ '1 '#f 'set!))
                (_%f106412%_
                 (##unchecked-structure-ref _%self106401%_ '8 '#f 'set!)))
            (_%f106412%_ _%obj106411%_ _%key106398%_ _%value106399%_)))))
    (define HashTable-update!
      (lambda (_%self106368%_ _%key106369%_ _%proc106370%_ _%default106371%_)
        (let* ((_%self106376%_
                (let ((_%$obj106373%_ _%self106368%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106373%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106373%_)))
                           '#t)
                      _%$obj106373%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106373%_)))))
               (_%self106378%_ _%self106376%_))
          (if (let () (declare (not safe)) (procedure? _%proc106370%_))
              (let ((_%proc106387%_ _%proc106370%_))
                (declare (not safe))
                (&HashTable-update!
                 _%self106378%_
                 _%key106369%_
                 _%proc106387%_
                 _%default106371%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106370%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self106340%_ _%key106341%_ _%proc106342%_ _%default106343%_)
        (let* ((_%self106345%_ _%self106340%_) (_%proc106352%_ _%proc106342%_))
          (declare (not safe))
          (let ((_%obj106363%_
                 (##unchecked-structure-ref _%self106345%_ '1 '#f 'update!))
                (_%f106365%_
                 (##unchecked-structure-ref _%self106345%_ '9 '#f 'update!)))
            (_%f106365%_
             _%obj106363%_
             _%key106341%_
             _%proc106352%_
             _%default106343%_)))))
    (define Locker::t
      (let ((__tmp106828 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106828
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
      (lambda (_%obj106338%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj106338%_))))
    (define try-Locker
      (lambda (_%obj106336%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj106336%_))))
    (define Locker?
      (lambda (_%obj106334%_)
        (let ((__tmp106829
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106334%_ __tmp106829))))
    (define is-Locker?
      (lambda (_%obj106332%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj106332%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self106316%_)
        (let* ((_%self106321%_
                (let ((_%$obj106318%_ _%self106316%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106318%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106318%_)))
                           '#t)
                      _%$obj106318%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106318%_)))))
               (_%self106323%_ _%self106321%_))
          (declare (not safe))
          (&Locker-read-lock! _%self106323%_))))
    (define &Locker-read-lock!
      (lambda (_%self106301%_)
        (let ((_%self106303%_ _%self106301%_))
          (declare (not safe))
          (let ((_%obj106313%_
                 (##unchecked-structure-ref _%self106303%_ '1 '#f 'read-lock!))
                (_%f106314%_
                 (##unchecked-structure-ref
                  _%self106303%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f106314%_ _%obj106313%_)))))
    (define Locker-read-unlock!
      (lambda (_%self106285%_)
        (let* ((_%self106290%_
                (let ((_%$obj106287%_ _%self106285%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106287%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106287%_)))
                           '#t)
                      _%$obj106287%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106287%_)))))
               (_%self106292%_ _%self106290%_))
          (declare (not safe))
          (&Locker-read-unlock! _%self106292%_))))
    (define &Locker-read-unlock!
      (lambda (_%self106270%_)
        (let ((_%self106272%_ _%self106270%_))
          (declare (not safe))
          (let ((_%obj106282%_
                 (##unchecked-structure-ref
                  _%self106272%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f106283%_
                 (##unchecked-structure-ref
                  _%self106272%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f106283%_ _%obj106282%_)))))
    (define Locker-write-lock!
      (lambda (_%self106254%_)
        (let* ((_%self106259%_
                (let ((_%$obj106256%_ _%self106254%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106256%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106256%_)))
                           '#t)
                      _%$obj106256%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106256%_)))))
               (_%self106261%_ _%self106259%_))
          (declare (not safe))
          (&Locker-write-lock! _%self106261%_))))
    (define &Locker-write-lock!
      (lambda (_%self106239%_)
        (let ((_%self106241%_ _%self106239%_))
          (declare (not safe))
          (let ((_%obj106251%_
                 (##unchecked-structure-ref
                  _%self106241%_
                  '1
                  '#f
                  'write-lock!))
                (_%f106252%_
                 (##unchecked-structure-ref
                  _%self106241%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f106252%_ _%obj106251%_)))))
    (define Locker-write-unlock!
      (lambda (_%self106223%_)
        (let* ((_%self106228%_
                (let ((_%$obj106225%_ _%self106223%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106225%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106225%_)))
                           '#t)
                      _%$obj106225%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106225%_)))))
               (_%self106230%_ _%self106228%_))
          (declare (not safe))
          (&Locker-write-unlock! _%self106230%_))))
    (define &Locker-write-unlock!
      (lambda (_%self106206%_)
        (let ((_%self106208%_ _%self106206%_))
          (declare (not safe))
          (let ((_%obj106218%_
                 (##unchecked-structure-ref
                  _%self106208%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f106220%_
                 (##unchecked-structure-ref
                  _%self106208%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f106220%_ _%obj106218%_)))))
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
      (lambda (_%table106199%_
               _%key106200%_
               _%update106201%_
               _%default106202%_)
        (let ((_%result106204%_
               (table-ref _%table106199%_ _%key106200%_ _%default106202%_)))
          (table-set!
           _%table106199%_
           _%key106200%_
           (_%update106201%_ _%default106202%_)))))
    (define gambit-table-for-each
      (lambda (_%table106196%_ _%proc106197%_)
        (table-for-each _%proc106197%_ _%table106196%_)))
    (define gambit-table-clear!
      (lambda (_%table106194%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table106194%_ '0 '5 '#f '#f))))
    (let ((__tmp106830 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106830 'ref table-ref))
    (let ((__tmp106831 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106831 'set! table-set!))
    (let ((__tmp106832 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106832 'update! gambit-table-update!))
    (let ((__tmp106833 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106833 'delete! table-set!))
    (let ((__tmp106834 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106834 'for-each gambit-table-for-each))
    (let ((__tmp106835 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106835 'length table-length))
    (let ((__tmp106836 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106836 'copy table-copy))
    (let ((__tmp106837 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106837 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots106176%_ '(table count free hash test seed))
             (_%slot-vector106178%_ (list->vector (cons '#f _%slots106176%_)))
             (_%slot-table106185%_
              (let ((_%slot-table106180%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106840
                       (lambda (_%slot106182%_ _%field106183%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106180%_
                            _%slot106182%_
                            _%field106183%_))
                         (let ((__tmp106841
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106182%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106180%_
                            __tmp106841
                            _%field106183%_))))
                      (__tmp106838
                       (let ((__tmp106839
                              (let ()
                                (declare (not safe))
                                (##length _%slots106176%_))))
                         (declare (not safe))
                         (##iota __tmp106839 '1))))
                  (declare (not safe))
                  (##for-each __tmp106840 _%slots106176%_ __tmp106838))
                _%slot-table106180%_))
             (_%flags106187%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106189%_ '#())
             (_%properties106191%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106176%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106842 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags106187%_
         __table::t
         _%fields106189%_
         __tmp106842
         _%slot-vector106178%_
         _%slot-table106185%_
         _%properties106191%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots106158%_ '(gcht immediate))
             (_%slot-vector106160%_ (list->vector (cons '#f _%slots106158%_)))
             (_%slot-table106167%_
              (let ((_%slot-table106162%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106845
                       (lambda (_%slot106164%_ _%field106165%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106162%_
                            _%slot106164%_
                            _%field106165%_))
                         (let ((__tmp106846
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106164%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106162%_
                            __tmp106846
                            _%field106165%_))))
                      (__tmp106843
                       (let ((__tmp106844
                              (let ()
                                (declare (not safe))
                                (##length _%slots106158%_))))
                         (declare (not safe))
                         (##iota __tmp106844 '1))))
                  (declare (not safe))
                  (##for-each __tmp106845 _%slots106158%_ __tmp106843))
                _%slot-table106162%_))
             (_%flags106169%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106171%_ '#())
             (_%properties106173%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106158%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106847 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags106169%_
         __gc-table::t
         _%fields106171%_
         __tmp106847
         _%slot-vector106160%_
         _%slot-table106167%_
         _%properties106173%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp106849 (list))
            (__tmp106848
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106849
         '(table lock)
         __tmp106848
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args106155%_
        (apply make-instance locked-hash-table::t _%$args106155%_)))
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
      (let ((__tmp106851 (list))
            (__tmp106850
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106851
         '(table key-check)
         __tmp106850
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args106152%_
        (apply make-instance checked-hash-table::t _%$args106152%_)))
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
      (let ((__tmp106853 (list hash-table::t))
            (__tmp106852 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106853
         '()
         __tmp106852
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args106149%_
        (apply make-instance eq-hash-table::t _%$args106149%_)))
    (define eqv-hash-table::t
      (let ((__tmp106855 (list hash-table::t))
            (__tmp106854 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106855
         '()
         __tmp106854
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args106146%_
        (apply make-instance eqv-hash-table::t _%$args106146%_)))
    (define symbol-hash-table::t
      (let ((__tmp106857 (list hash-table::t))
            (__tmp106856 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106857
         '()
         __tmp106856
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args106143%_
        (apply make-instance symbol-hash-table::t _%$args106143%_)))
    (define string-hash-table::t
      (let ((__tmp106859 (list hash-table::t))
            (__tmp106858 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106859
         '()
         __tmp106858
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args106140%_
        (apply make-instance string-hash-table::t _%$args106140%_)))
    (define immediate-hash-table::t
      (let ((__tmp106861 (list hash-table::t))
            (__tmp106860 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106861
         '()
         __tmp106860
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args106137%_
        (apply make-instance immediate-hash-table::t _%$args106137%_)))
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
    (define hash-table?
      (lambda (_%obj106135%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj106135%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj106133%_)
        (let () (declare (not safe)) (is-HashTable? _%obj106133%_))))
    (define _%locked-hash-table::ref102188%_
      (lambda (_%self106109%_ _%key106111%_ _%default106112%_)
        (let ((_%self106115%_ _%self106109%_))
          (let ((_%h106125%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106115%_ '1 '#f '#f)))
                (_%l106127%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106115%_ '2 '#f '#f))))
            (let ((__tmp106864
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l106127%_))))
                  (__tmp106863
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h106125%_
                        _%key106111%_
                        _%default106112%_))))
                  (__tmp106862
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l106127%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106864 __tmp106863 __tmp106862))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref102188%_
       '#f))
    (define _%locked-hash-table::set!102190%_
      (lambda (_%self105962%_ _%key105964%_ _%value105965%_)
        (let ((_%self105968%_ _%self105962%_))
          (let ((_%h105978%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105968%_ '1 '#f '#f)))
                (_%l105980%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105968%_ '2 '#f '#f))))
            (let ((__tmp106867
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105980%_))))
                  (__tmp106866
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h105978%_
                        _%key105964%_
                        _%value105965%_))))
                  (__tmp106865
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105980%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106867 __tmp106866 __tmp106865))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!102190%_
       '#f))
    (define _%locked-hash-table::update!102192%_
      (lambda (_%self105814%_ _%key105816%_ _%update105817%_ _%default105818%_)
        (let ((_%self105821%_ _%self105814%_))
          (let ((_%h105831%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105821%_ '1 '#f '#f)))
                (_%l105833%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105821%_ '2 '#f '#f))))
            (let ((__tmp106870
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105833%_))))
                  (__tmp106869
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-update!
                        _%h105831%_
                        _%key105816%_
                        _%update105817%_
                        _%default105818%_))))
                  (__tmp106868
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105833%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106870 __tmp106869 __tmp106868))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!102192%_
       '#f))
    (define _%locked-hash-table::delete!102194%_
      (lambda (_%self105668%_ _%key105670%_)
        (let ((_%self105673%_ _%self105668%_))
          (let ((_%h105683%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105673%_ '1 '#f '#f)))
                (_%l105685%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105673%_ '2 '#f '#f))))
            (let ((__tmp106873
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105685%_))))
                  (__tmp106872
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-delete! _%h105683%_ _%key105670%_))))
                  (__tmp106871
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105685%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106873 __tmp106872 __tmp106871))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!102194%_
       '#f))
    (define _%locked-hash-table::for-each102196%_
      (lambda (_%self105522%_ _%proc105524%_)
        (let ((_%self105527%_ _%self105522%_))
          (let ((_%h105537%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105527%_ '1 '#f '#f)))
                (_%l105539%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105527%_ '2 '#f '#f))))
            (let ((__tmp106876
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105539%_))))
                  (__tmp106875
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-for-each _%h105537%_ _%proc105524%_))))
                  (__tmp106874
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105539%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106876 __tmp106875 __tmp106874))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each102196%_
       '#f))
    (define _%locked-hash-table::length102198%_
      (lambda (_%self105377%_)
        (let ((_%self105381%_ _%self105377%_))
          (let ((_%h105391%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105381%_ '1 '#f '#f)))
                (_%l105393%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105381%_ '2 '#f '#f))))
            (let ((__tmp106879
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105393%_))))
                  (__tmp106878
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-length _%h105391%_))))
                  (__tmp106877
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105393%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106879 __tmp106878 __tmp106877))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length102198%_
       '#f))
    (define _%locked-hash-table::copy102200%_
      (lambda (_%self105232%_)
        (let ((_%self105236%_ _%self105232%_))
          (let ((_%h105246%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105236%_ '1 '#f '#f)))
                (_%l105248%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105236%_ '2 '#f '#f))))
            (let ((__tmp106882
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105248%_))))
                  (__tmp106881
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h105246%_))))
                  (__tmp106880
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105248%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106882 __tmp106881 __tmp106880))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy102200%_
       '#f))
    (define _%locked-hash-table::clear!102202%_
      (lambda (_%self105087%_)
        (let ((_%self105091%_ _%self105087%_))
          (let ((_%h105101%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105091%_ '1 '#f '#f)))
                (_%l105103%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105091%_ '2 '#f '#f))))
            (let ((__tmp106885
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105103%_))))
                  (__tmp106884
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-clear! _%h105101%_))))
                  (__tmp106883
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105103%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106885 __tmp106884 __tmp106883))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!102202%_
       '#f))
    (let ((__tmp106886 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106886 'read-lock! mutex-lock!))
    (let ((__tmp106887 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106887 'read-unlock! mutex-unlock!))
    (let ((__tmp106888 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106888 'write-lock! mutex-lock!))
    (let ((__tmp106889 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106889 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref102480%_
      (lambda (_%self104940%_ _%key104941%_ _%default104942%_)
        (let ((_%self104945%_ _%self104940%_))
          (let ((_%h104955%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104945%_ '1 '#f '#f)))
                (_%key?104957%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104945%_ '2 '#f '#f))))
            ((lambda (_%g104959104961%_)
               (if (_%g104959104961%_ _%key104941%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104941%_))))
             _%key?104957%_)
            (let ()
              (declare (not safe))
              (&HashTable-ref _%h104955%_ _%key104941%_ _%default104942%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref102480%_
       '#f))
    (define _%checked-hash-table::set!102482%_
      (lambda (_%self104793%_ _%key104794%_ _%value104795%_)
        (let ((_%self104798%_ _%self104793%_))
          (let ((_%h104808%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104798%_ '1 '#f '#f)))
                (_%key?104810%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104798%_ '2 '#f '#f))))
            ((lambda (_%g104812104814%_)
               (if (_%g104812104814%_ _%key104794%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104794%_))))
             _%key?104810%_)
            (let ()
              (declare (not safe))
              (&HashTable-set! _%h104808%_ _%key104794%_ _%value104795%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!102482%_
       '#f))
    (define _%checked-hash-table::update!102484%_
      (lambda (_%self104647%_ _%key104648%_ _%update104649%_ _%default104650%_)
        (let ((_%self104653%_ _%self104647%_))
          (let ((_%h104663%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104653%_ '1 '#f '#f)))
                (_%key?104665%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104653%_ '2 '#f '#f))))
            ((lambda (_%key?104668%_)
               (if (_%key?104668%_ _%key104648%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104648%_)))
               (if (let () (declare (not safe)) (procedure? _%update104649%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104649%_))))
             _%key?104665%_)
            (let ()
              (declare (not safe))
              (&HashTable-update!
               _%h104663%_
               _%key104648%_
               _%update104649%_
               _%default104650%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!102484%_
       '#f))
    (define _%checked-hash-table::delete!102486%_
      (lambda (_%self104501%_ _%key104502%_)
        (let ((_%self104505%_ _%self104501%_))
          (let ((_%h104515%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104505%_ '1 '#f '#f)))
                (_%key?104517%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104505%_ '2 '#f '#f))))
            ((lambda (_%g104519104521%_)
               (if (_%g104519104521%_ _%key104502%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104502%_))))
             _%key?104517%_)
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%h104515%_ _%key104502%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!102486%_
       '#f))
    (define _%checked-hash-table::for-each102488%_
      (lambda (_%self104357%_ _%proc104358%_)
        (let ((_%self104361%_ _%self104357%_))
          (let ((_%h104371%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104361%_ '1 '#f '#f)))
                (_%key?104373%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104361%_ '2 '#f '#f))))
            ((lambda (_%_104376%_)
               (if (let () (declare (not safe)) (procedure? _%proc104358%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc104358%_))))
             _%key?104373%_)
            (let ()
              (declare (not safe))
              (&HashTable-for-each _%h104371%_ _%proc104358%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each102488%_
       '#f))
    (define _%checked-hash-table::length102490%_
      (lambda (_%self104216%_)
        (let ((_%self104219%_ _%self104216%_))
          (let ((_%h104229%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104219%_ '1 '#f '#f)))
                (_%key?104231%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104219%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-length _%h104229%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length102490%_
       '#f))
    (define _%checked-hash-table::copy102492%_
      (lambda (_%self104075%_)
        (let ((_%self104078%_ _%self104075%_))
          (let ((_%h104088%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104078%_ '1 '#f '#f)))
                (_%key?104090%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104078%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-copy _%h104088%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy102492%_
       '#f))
    (define _%checked-hash-table::clear!102494%_
      (lambda (_%self103934%_)
        (let ((_%self103937%_ _%self103934%_))
          (let ((_%h103947%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103937%_ '1 '#f '#f)))
                (_%key?103949%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103937%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-clear! _%h103947%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!102494%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103804%_
               _%count103805%_
               _%free103806%_
               _%hash103807%_
               _%test103808%_
               _%seed103809%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103804%_
           _%count103805%_
           _%free103806%_
           _%hash103807%_
           _%test103808%_
           _%seed103809%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords103627%_
               _%size-hint103617103628%_
               _%seed103618103630%_
               _%test103619103632%_
               _%hash103620103634%_
               _%lock103621103636%_
               _%check103622103638%_
               _%weak-keys103623103640%_
               _%weak-values103624103642%_)
        (let* ((_%size-hint103645%_
                (if (eq? _%size-hint103617103628%_ absent-value)
                    '#f
                    _%size-hint103617103628%_))
               (_%seed103647%_
                (if (eq? _%seed103618103630%_ absent-value)
                    '#f
                    _%seed103618103630%_))
               (_%test103649%_
                (if (eq? _%test103619103632%_ absent-value)
                    equal?
                    _%test103619103632%_))
               (_%hash103651%_
                (if (eq? _%hash103620103634%_ absent-value)
                    '#f
                    _%hash103620103634%_))
               (_%lock103653%_
                (if (eq? _%lock103621103636%_ absent-value)
                    '#f
                    _%lock103621103636%_))
               (_%check103655%_
                (if (eq? _%check103622103638%_ absent-value)
                    '#f
                    _%check103622103638%_))
               (_%weak-keys103657%_
                (if (eq? _%weak-keys103623103640%_ absent-value)
                    '#f
                    _%weak-keys103623103640%_))
               (_%weak-values103659%_
                (if (eq? _%weak-values103624103642%_ absent-value)
                    '#f
                    _%weak-values103624103642%_)))
          (letrec ((_%table-seed103661%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103647%_))
                          _%seed103647%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103662%_
                    (lambda (_%ht103782%_)
                      (if _%lock103653%_
                          (let ((_%$obj103787%_
                                 (let ((__tmp106890
                                        (let ((_%$obj103784%_ _%lock103653%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103784%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103784%_)))
                                                   '#t)
                                              _%$obj103784%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103784%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103782%_
                                    __tmp106890))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103787%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103787%_)))
                                     '#t)
                                _%$obj103787%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103787%_))))
                          _%ht103782%_)))
                   (_%wrap-checked103663%_
                    (lambda (_%ht103776%_ _%implicit103777%_)
                      (if _%check103655%_
                          (let ((_%$obj103779%_
                                 (let ((__tmp106891
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103655%_))
                                            _%check103655%_
                                            _%implicit103777%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103776%_
                                    __tmp106891))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103779%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103779%_)))
                                     '#t)
                                _%$obj103779%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103779%_))))
                          _%ht103776%_)))
                   (_%make103664%_
                    (lambda (_%kons103761%_
                             _%key?103762%_
                             _%hash103763%_
                             _%test103764%_)
                      (let* ((_%size103766%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103645%_)))
                             (_%table103768%_
                              (let ((__tmp106892 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103766%_ __tmp106892)))
                             (_%ht103773%_
                              (let ((_%$obj103770%_
                                     (_%kons103761%_
                                      _%table103768%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103766%_ '2))
                                      _%hash103763%_
                                      _%test103764%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103661%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103770%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103770%_)))
                                         '#t)
                                    _%$obj103770%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103770%_)))))
                             (__tmp106893
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103662%_ _%ht103773%_))))
                        (declare (not safe))
                        (_%wrap-checked103663%_ __tmp106893 _%key?103762%_))))
                   (_%make-gc-hash-table103665%_
                    (lambda ()
                      (let* ((_%ht103759%_
                              (let ((_%$obj103756%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103645%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103756%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103756%_)))
                                         '#t)
                                    _%$obj103756%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103756%_)))))
                             (__tmp106894
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103662%_ _%ht103759%_))))
                        (declare (not safe))
                        (_%wrap-checked103663%_ __tmp106894 true))))
                   (_%make-gambit-table103666%_
                    (lambda ()
                      (let* ((_%size103734%_
                              (let ((_%$e103731%_ _%size-hint103645%_))
                                (if _%$e103731%_
                                    _%$e103731%_
                                    (macro-absent-obj))))
                             (_%test103739%_
                              (let ((_%$e103736%_ _%test103649%_))
                                (if _%$e103736%_ _%$e103736%_ equal?)))
                             (_%hash103747%_
                              (let ((_%$e103741%_ _%hash103651%_))
                                (if _%$e103741%_
                                    _%$e103741%_
                                    (if (eq? _%test103739%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103739%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103752%_
                              (let ((_%$obj103749%_
                                     (make-table
                                      'size:
                                      _%size103734%_
                                      'test:
                                      _%test103739%_
                                      'hash:
                                      _%hash103747%_
                                      'weak-keys:
                                      _%weak-keys103657%_
                                      'weak-values:
                                      _%weak-values103659%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103749%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103749%_)))
                                         '#t)
                                    _%$obj103749%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103749%_)))))
                             (__tmp106895
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103662%_ _%ht103752%_))))
                        (declare (not safe))
                        (_%wrap-checked103663%_ __tmp106895 true)))))
            (if (or _%weak-keys103657%_ _%weak-values103659%_)
                (let () (declare (not safe)) (_%make-gambit-table103666%_))
                (if (and (or (eq? _%test103649%_ eq?)
                             (eq? _%test103649%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103651%_))
                             (eq? _%hash103651%_ eq?-hash)
                             (eq? _%hash103651%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103647%_)))
                    (let ()
                      (declare (not safe))
                      (_%make-gc-hash-table103665%_))
                    (if (and (or (eq? _%test103649%_ eq?)
                                 (eq? _%test103649%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103651%_))
                                 (eq? _%hash103651%_ eq?-hash)
                                 (eq? _%hash103651%_ eq-hash)))
                        (let ()
                          (declare (not safe))
                          (_%make103664%_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (eq? _%test103649%_ eqv?)
                                     (eq? _%test103649%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103651%_))
                                     (eq? _%hash103651%_ eqv?-hash)
                                     (eq? _%hash103651%_ eqv-hash)))
                            (let ()
                              (declare (not safe))
                              (_%make103664%_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (eq? _%test103649%_ eq?)
                                         (eq? _%test103649%_ ##eq?))
                                     (or (eq? _%hash103651%_ symbolic-hash)
                                         (eq? _%hash103651%_ ##symbol-hash)))
                                (let ()
                                  (declare (not safe))
                                  (_%make103664%_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (eq? _%test103649%_ eq?)
                                             (eq? _%test103649%_ ##eq?))
                                         (eq? _%hash103651%_ immediate-hash))
                                    (let ()
                                      (declare (not safe))
                                      (_%make103664%_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (eq? _%test103649%_ equal?)
                                                 (eq? _%test103649%_ ##equal?)
                                                 (eq? _%test103649%_ string=?)
                                                 (eq? _%test103649%_
                                                      ##string=?))
                                             (or (eq? _%hash103651%_
                                                      string-hash)
                                                 (eq? _%hash103651%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (declare (not safe))
                                          (_%make103664%_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (eq? _%test103649%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103651%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%make103664%_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp106896
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103649%_))))
                                                  (declare (not safe))
                                                  (not __tmp106896))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103649%_))
                                                (if (let ((__tmp106897
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103651%_))))
                                                      (declare (not safe))
                                                      (not __tmp106897))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103651%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%make103664%_
                                                       make-generic-hash-table
                                                       true
                                                       _%hash103651%_
                                                       _%test103649%_))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103794%_ . _%args103795%_)
        (apply make-hash-table__%
               _%@@keywords103794%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103794%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103794%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103794%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103794%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103794%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103794%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103794%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103794%_
                  'weak-values:
                  absent-value))
               _%args103795%_)))
    (define make-hash-table
      (lambda _%args103625103801%_
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
               _%args103625103801%_)))
    (define make-hash-table-eq
      (lambda _%args103614%_
        (apply make-hash-table 'test: eq? _%args103614%_)))
    (define make-hash-table-eqv
      (lambda _%args103612%_
        (apply make-hash-table 'test: eqv? _%args103612%_)))
    (define make-hash-table-symbolic
      (lambda _%args103610%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103610%_)))
    (define make-hash-table-string
      (lambda _%args103608%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103608%_)))
    (define make-hash-table-immediate
      (lambda _%args103606%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103606%_)))
    (define list->hash-table
      (lambda (_%lst103603%_ . _%args103604%_)
        (let ((__tmp106898
               (apply make-hash-table
                      'size:
                      (length _%lst103603%_)
                      _%args103604%_)))
          (declare (not safe))
          (list->hash-table! _%lst103603%_ __tmp106898))))
    (define list->hash-table-eq
      (lambda (_%lst103600%_ . _%args103601%_)
        (let ((__tmp106899
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103600%_)
                      _%args103601%_)))
          (declare (not safe))
          (list->hash-table! _%lst103600%_ __tmp106899))))
    (define list->hash-table-eqv
      (lambda (_%lst103597%_ . _%args103598%_)
        (let ((__tmp106900
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103597%_)
                      _%args103598%_)))
          (declare (not safe))
          (list->hash-table! _%lst103597%_ __tmp106900))))
    (define list->hash-table-symbolic
      (lambda (_%lst103594%_ . _%args103595%_)
        (let ((__tmp106901
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103594%_)
                      _%args103595%_)))
          (declare (not safe))
          (list->hash-table! _%lst103594%_ __tmp106901))))
    (define list->hash-table-string
      (lambda (_%lst103591%_ . _%args103592%_)
        (let ((__tmp106902
               (apply make-hash-table-string
                      'size:
                      (length _%lst103591%_)
                      _%args103592%_)))
          (declare (not safe))
          (list->hash-table! _%lst103591%_ __tmp106902))))
    (define list->hash-table-immediate
      (lambda (_%lst103588%_ . _%args103589%_)
        (let ((__tmp106903
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103588%_)
                      _%args103589%_)))
          (declare (not safe))
          (list->hash-table! _%lst103588%_ __tmp106903))))
    (define list->hash-table!
      (lambda (_%lst103555%_ _%h103556%_)
        (for-each
         (lambda (_%el103558%_)
           (let* ((_%el103559103566%_ _%el103558%_)
                  (_%E103561103570%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103559103566%_
                              '([k . v])))
                     '#!void))
                  (_%K103562103576%_
                   (lambda (_%v103573%_ _%k103574%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103556%_
                        _%k103574%_
                        _%v103573%_)))))
             (if (let () (declare (not safe)) (##pair? _%el103559103566%_))
                 (let ((_%hd103563103579%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103559103566%_)))
                       (_%tl103564103581%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103559103566%_))))
                   (let* ((_%k103584%_ _%hd103563103579%_)
                          (_%v103586%_ _%tl103564103581%_))
                     (declare (not safe))
                     (_%K103562103576%_ _%v103586%_ _%k103584%_)))
                 (let () (declare (not safe)) (_%E103561103570%_)))))
         _%lst103555%_)
        _%h103556%_))
    (define plist->hash-table
      (lambda (_%lst103552%_ . _%args103553%_)
        (let ((__tmp106904
               (apply make-hash-table
                      'size:
                      (length _%lst103552%_)
                      _%args103553%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103552%_ __tmp106904))))
    (define plist->hash-table-eq
      (lambda (_%lst103549%_ . _%args103550%_)
        (let ((__tmp106905
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103549%_)
                      _%args103550%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103549%_ __tmp106905))))
    (define plist->hash-table-eqv
      (lambda (_%lst103546%_ . _%args103547%_)
        (let ((__tmp106906
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103546%_)
                      _%args103547%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103546%_ __tmp106906))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103543%_ . _%args103544%_)
        (let ((__tmp106907
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103543%_)
                      _%args103544%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103543%_ __tmp106907))))
    (define plist->hash-table-string
      (lambda (_%lst103540%_ . _%args103541%_)
        (let ((__tmp106908
               (apply make-hash-table-string
                      'size:
                      (length _%lst103540%_)
                      _%args103541%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103540%_ __tmp106908))))
    (define plist->hash-table-immediate
      (lambda (_%lst103537%_ . _%args103538%_)
        (let ((__tmp106909
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103537%_)
                      _%args103538%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103537%_ __tmp106909))))
    (define plist->hash-table!
      (lambda (_%lst103477%_ _%h103478%_)
        (let _%loop103480%_ ((_%rest103482%_ _%lst103477%_))
          (let* ((_%rest103483103495%_ _%rest103482%_)
                 (_%else103486103503%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst103477%_)))))
            (let ((_%K103489103518%_
                   (lambda (_%rest103514%_ _%val103515%_ _%key103516%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103478%_
                        _%key103516%_
                        _%val103515%_))
                     (let ()
                       (declare (not safe))
                       (_%loop103480%_ _%rest103514%_))))
                  (_%K103488103508%_ (lambda () _%h103478%_)))
              (let ((_%try-match103485103511%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest103483103495%_))
                           (let () (declare (not safe)) (_%K103488103508%_))
                           (let ()
                             (declare (not safe))
                             (_%else103486103503%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest103483103495%_))
                    (let ((_%tl103491103523%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest103483103495%_)))
                          (_%hd103490103521%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest103483103495%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl103491103523%_))
                          (let ((_%tl103493103530%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl103491103523%_)))
                                (_%hd103492103528%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl103491103523%_))))
                            (let ((_%key103526%_ _%hd103490103521%_)
                                  (_%val103533%_ _%hd103492103528%_)
                                  (_%rest103535%_ _%tl103493103530%_))
                              (let ()
                                (declare (not safe))
                                (_%K103489103518%_
                                 _%rest103535%_
                                 _%val103533%_
                                 _%key103526%_))))
                          (let ()
                            (declare (not safe))
                            (_%else103486103503%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match103485103511%_)))))))))
    (define hash-length
      (lambda (_%h103459%_)
        (let ()
          (let* ((_%h103465%_
                  (let ((_%$obj103462%_ _%h103459%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103462%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103462%_)))
                             '#t)
                        _%$obj103462%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103462%_)))))
                 (_%h103467%_ _%h103465%_))
            (declare (not safe))
            (__hash-length _%h103467%_)))))
    (define __hash-length
      (lambda (_%h103447%_)
        (let ((_%h103450%_ _%h103447%_))
          (declare (not safe))
          (__HashTable-length _%h103450%_))))
    (define hash-ref__%
      (lambda (_%h103415%_ _%key103416%_ _%default103417%_)
        (let ()
          (let* ((_%h103423%_
                  (let ((_%$obj103420%_ _%h103415%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103420%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103420%_)))
                             '#t)
                        _%$obj103420%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103420%_)))))
                 (_%h103425%_ _%h103423%_))
            (declare (not safe))
            (__hash-ref__% _%h103425%_ _%key103416%_ _%default103417%_)))))
    (define hash-ref__0
      (lambda (_%h103438%_ _%key103439%_)
        (let ((_%default103441%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h103438%_ _%key103439%_ _%default103441%_))))
    (define hash-ref
      (lambda _g106911_
        (let ((_g106910_ (let () (declare (not safe)) (##length _g106911_))))
          (cond ((let () (declare (not safe)) (##fx= _g106910_ 2))
                 (apply (lambda (_%h103438%_ _%key103439%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h103438%_ _%key103439%_)))
                        _g106911_))
                ((let () (declare (not safe)) (##fx= _g106910_ 3))
                 (apply (lambda (_%h103443%_ _%key103444%_ _%default103445%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h103443%_
                             _%key103444%_
                             _%default103445%_)))
                        _g106911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106911_))))))
    (define __hash-ref__%
      (lambda (_%h103386%_ _%key103387%_ _%default103388%_)
        (let ()
          (let* ((_%h103391%_ _%h103386%_)
                 (_%result103400%_
                  (let ()
                    (declare (not safe))
                    (&HashTable-ref
                     _%h103391%_
                     _%key103387%_
                     _%default103388%_))))
            (if (eq? _%result103400%_ (macro-absent-obj))
                (let ()
                  (declare (not safe))
                  (raise-unbound-key-error
                   'hash-ref
                   '"unknown hash key"
                   'hash:
                   _%h103391%_
                   'key:
                   _%key103387%_))
                _%result103400%_)))))
    (define __hash-ref__0
      (lambda (_%h103405%_ _%key103406%_)
        (let ((_%default103408%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h103405%_ _%key103406%_ _%default103408%_))))
    (define __hash-ref
      (lambda _g106913_
        (let ((_g106912_ (let () (declare (not safe)) (##length _g106913_))))
          (cond ((let () (declare (not safe)) (##fx= _g106912_ 2))
                 (apply (lambda (_%h103405%_ _%key103406%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h103405%_ _%key103406%_)))
                        _g106913_))
                ((let () (declare (not safe)) (##fx= _g106912_ 3))
                 (apply (lambda (_%h103410%_ _%key103411%_ _%default103412%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h103410%_
                             _%key103411%_
                             _%default103412%_)))
                        _g106913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106913_))))))
    (define hash-get
      (lambda (_%h103366%_ _%key103367%_)
        (let ()
          (let* ((_%h103373%_
                  (let ((_%$obj103370%_ _%h103366%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103370%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103370%_)))
                             '#t)
                        _%$obj103370%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103370%_)))))
                 (_%h103375%_ _%h103373%_))
            (declare (not safe))
            (__hash-get _%h103375%_ _%key103367%_)))))
    (define __hash-get
      (lambda (_%h103353%_ _%key103354%_)
        (let ((_%h103357%_ _%h103353%_))
          (declare (not safe))
          (&HashTable-ref _%h103357%_ _%key103354%_ '#f))))
    (define hash-put!
      (lambda (_%h103333%_ _%key103334%_ _%value103335%_)
        (let ()
          (let* ((_%h103341%_
                  (let ((_%$obj103338%_ _%h103333%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103338%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103338%_)))
                             '#t)
                        _%$obj103338%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103338%_)))))
                 (_%h103343%_ _%h103341%_))
            (declare (not safe))
            (__hash-put! _%h103343%_ _%key103334%_ _%value103335%_)))))
    (define __hash-put!
      (lambda (_%h103319%_ _%key103320%_ _%value103321%_)
        (let ((_%h103324%_ _%h103319%_))
          (declare (not safe))
          (&HashTable-set! _%h103324%_ _%key103320%_ _%value103321%_))))
    (define hash-update!__%
      (lambda (_%h103284%_ _%key103285%_ _%update103286%_ _%default103287%_)
        (let ()
          (let* ((_%h103293%_
                  (let ((_%$obj103290%_ _%h103284%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103290%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103290%_)))
                             '#t)
                        _%$obj103290%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103290%_)))))
                 (_%h103295%_ _%h103293%_))
            (declare (not safe))
            (__hash-update!__%
             _%h103295%_
             _%key103285%_
             _%update103286%_
             _%default103287%_)))))
    (define hash-update!__0
      (lambda (_%h103308%_ _%key103309%_ _%update103310%_)
        (let ((_%default103312%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h103308%_
           _%key103309%_
           _%update103310%_
           _%default103312%_))))
    (define hash-update!
      (lambda _g106915_
        (let ((_g106914_ (let () (declare (not safe)) (##length _g106915_))))
          (cond ((let () (declare (not safe)) (##fx= _g106914_ 3))
                 (apply (lambda (_%h103308%_ _%key103309%_ _%update103310%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h103308%_
                             _%key103309%_
                             _%update103310%_)))
                        _g106915_))
                ((let () (declare (not safe)) (##fx= _g106914_ 4))
                 (apply (lambda (_%h103314%_
                                 _%key103315%_
                                 _%update103316%_
                                 _%default103317%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h103314%_
                             _%key103315%_
                             _%update103316%_
                             _%default103317%_)))
                        _g106915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106915_))))))
    (define __hash-update!__%
      (lambda (_%h103254%_ _%key103255%_ _%update103256%_ _%default103257%_)
        (let ((_%h103260%_ _%h103254%_))
          (declare (not safe))
          (HashTable-update!
           _%h103260%_
           _%key103255%_
           _%update103256%_
           _%default103257%_))))
    (define __hash-update!__0
      (lambda (_%h103272%_ _%key103273%_ _%update103274%_)
        (let ((_%default103276%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h103272%_
           _%key103273%_
           _%update103274%_
           _%default103276%_))))
    (define __hash-update!
      (lambda _g106917_
        (let ((_g106916_ (let () (declare (not safe)) (##length _g106917_))))
          (cond ((let () (declare (not safe)) (##fx= _g106916_ 3))
                 (apply (lambda (_%h103272%_ _%key103273%_ _%update103274%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h103272%_
                             _%key103273%_
                             _%update103274%_)))
                        _g106917_))
                ((let () (declare (not safe)) (##fx= _g106916_ 4))
                 (apply (lambda (_%h103278%_
                                 _%key103279%_
                                 _%update103280%_
                                 _%default103281%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h103278%_
                             _%key103279%_
                             _%update103280%_
                             _%default103281%_)))
                        _g106917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106917_))))))
    (define hash-remove!
      (lambda (_%h103234%_ _%key103235%_)
        (let ()
          (let* ((_%h103241%_
                  (let ((_%$obj103238%_ _%h103234%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103238%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103238%_)))
                             '#t)
                        _%$obj103238%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103238%_)))))
                 (_%h103243%_ _%h103241%_))
            (declare (not safe))
            (__hash-remove! _%h103243%_ _%key103235%_)))))
    (define __hash-remove!
      (lambda (_%h103221%_ _%key103222%_)
        (let ((_%h103225%_ _%h103221%_))
          (declare (not safe))
          (&HashTable-delete! _%h103225%_ _%key103222%_))))
    (define hash-key?
      (lambda (_%h103202%_ _%k103203%_)
        (let ()
          (let* ((_%h103209%_
                  (let ((_%$obj103206%_ _%h103202%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103206%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103206%_)))
                             '#t)
                        _%$obj103206%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103206%_)))))
                 (_%h103211%_ _%h103209%_))
            (declare (not safe))
            (__hash-key? _%h103211%_ _%k103203%_)))))
    (define __hash-key?
      (lambda (_%h103189%_ _%k103190%_)
        (let ()
          (let* ((_%h103193%_ _%h103189%_)
                 (__tmp106918
                  (eq? (let ()
                         (declare (not safe))
                         (&HashTable-ref _%h103193%_ _%k103190%_ absent-value))
                       absent-value)))
            (declare (not safe))
            (not __tmp106918)))))
    (define hash->list
      (lambda (_%h103171%_)
        (let ()
          (let* ((_%h103177%_
                  (let ((_%$obj103174%_ _%h103171%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103174%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103174%_)))
                             '#t)
                        _%$obj103174%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103174%_)))))
                 (_%h103179%_ _%h103177%_))
            (declare (not safe))
            (__hash->list _%h103179%_)))))
    (define __hash->list
      (lambda (_%h103154%_)
        (let ()
          (let* ((_%h103157%_ _%h103154%_) (_%lst103166%_ '()))
            (let ((__tmp106919
                   (lambda (_%k103168%_ _%v103169%_)
                     (set! _%lst103166%_
                           (cons (cons _%k103168%_ _%v103169%_)
                                 _%lst103166%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103157%_ __tmp106919))
            _%lst103166%_))))
    (define hash->plist
      (lambda (_%h103136%_)
        (let ()
          (let* ((_%h103142%_
                  (let ((_%$obj103139%_ _%h103136%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103139%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103139%_)))
                             '#t)
                        _%$obj103139%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103139%_)))))
                 (_%h103144%_ _%h103142%_))
            (declare (not safe))
            (__hash->plist _%h103144%_)))))
    (define __hash->plist
      (lambda (_%h103119%_)
        (let ()
          (let* ((_%h103122%_ _%h103119%_) (_%lst103131%_ '()))
            (let ((__tmp106920
                   (lambda (_%k103133%_ _%v103134%_)
                     (set! _%lst103131%_
                           (let ((__tmp106921
                                  (let ()
                                    (declare (not safe))
                                    (cons _%v103134%_ _%lst103131%_))))
                             (declare (not safe))
                             (cons _%k103133%_ __tmp106921))))))
              (declare (not safe))
              (&HashTable-for-each _%h103122%_ __tmp106920))
            _%lst103131%_))))
    (define hash-for-each
      (lambda (_%proc103090%_ _%h103091%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103090%_))
              (let ((_%proc103095%_ _%proc103090%_))
                (let* ((_%h103107%_
                        (let ((_%$obj103104%_ _%h103091%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103104%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103104%_)))
                                   '#t)
                              _%$obj103104%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103104%_)))))
                       (_%h103109%_ _%h103107%_))
                  (declare (not safe))
                  (__hash-for-each _%proc103095%_ _%h103109%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103090%_)
                '#!void)))))
    (define __hash-for-each
      (lambda (_%proc103069%_ _%h103070%_)
        (let ()
          (let* ((_%proc103073%_ _%proc103069%_) (_%h103081%_ _%h103070%_))
            (declare (not safe))
            (&HashTable-for-each _%h103081%_ _%proc103073%_)))))
    (define hash-map
      (lambda (_%proc103040%_ _%h103041%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103040%_))
              (let ((_%proc103045%_ _%proc103040%_))
                (let* ((_%h103057%_
                        (let ((_%$obj103054%_ _%h103041%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103054%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103054%_)))
                                   '#t)
                              _%$obj103054%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103054%_)))))
                       (_%h103059%_ _%h103057%_))
                  (declare (not safe))
                  (__hash-map _%proc103045%_ _%h103059%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103040%_)
                '#!void)))))
    (define __hash-map
      (lambda (_%proc103014%_ _%h103015%_)
        (let ((_%proc103018%_ _%proc103014%_))
          (let* ((_%h103026%_ _%h103015%_) (_%result103035%_ '()))
            (let ((__tmp106922
                   (lambda (_%k103037%_ _%v103038%_)
                     (set! _%result103035%_
                           (cons (let ()
                                   (declare (not safe))
                                   (_%proc103018%_ _%k103037%_ _%v103038%_))
                                 _%result103035%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103026%_ __tmp106922))
            _%result103035%_))))
    (define hash-fold
      (lambda (_%proc102984%_ _%iv102985%_ _%h102986%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102984%_))
              (let ((_%proc102990%_ _%proc102984%_))
                (let* ((_%h103002%_
                        (let ((_%$obj102999%_ _%h102986%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj102999%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj102999%_)))
                                   '#t)
                              _%$obj102999%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj102999%_)))))
                       (_%h103004%_ _%h103002%_))
                  (declare (not safe))
                  (__hash-fold _%proc102990%_ _%iv102985%_ _%h103004%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102984%_)
                '#!void)))))
    (define __hash-fold
      (lambda (_%proc102957%_ _%iv102958%_ _%h102959%_)
        (let ((_%proc102962%_ _%proc102957%_))
          (let* ((_%h102970%_ _%h102959%_) (_%result102979%_ _%iv102958%_))
            (let ((__tmp106923
                   (lambda (_%k102981%_ _%v102982%_)
                     (set! _%result102979%_
                           (let ()
                             (declare (not safe))
                             (_%proc102962%_
                              _%k102981%_
                              _%v102982%_
                              _%result102979%_))))))
              (declare (not safe))
              (&HashTable-for-each _%h102970%_ __tmp106923))
            _%result102979%_))))
    (define hash-find__%
      (lambda (_%proc102915%_ _%h102916%_ _%default-value102917%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102915%_))
              (let ((_%proc102921%_ _%proc102915%_))
                (let* ((_%h102933%_
                        (let ((_%$obj102930%_ _%h102916%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj102930%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj102930%_)))
                                   '#t)
                              _%$obj102930%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj102930%_)))))
                       (_%h102935%_ _%h102933%_))
                  (declare (not safe))
                  (__hash-find__%
                   _%proc102921%_
                   _%h102935%_
                   _%default-value102917%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102915%_)
                '#!void)))))
    (define hash-find__0
      (lambda (_%proc102948%_ _%h102949%_)
        (let ((_%default-value102951%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc102948%_ _%h102949%_ _%default-value102951%_))))
    (define hash-find
      (lambda _g106925_
        (let ((_g106924_ (let () (declare (not safe)) (##length _g106925_))))
          (cond ((let () (declare (not safe)) (##fx= _g106924_ 2))
                 (apply (lambda (_%proc102948%_ _%h102949%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc102948%_ _%h102949%_)))
                        _g106925_))
                ((let () (declare (not safe)) (##fx= _g106924_ 3))
                 (apply (lambda (_%proc102953%_
                                 _%h102954%_
                                 _%default-value102955%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc102953%_
                             _%h102954%_
                             _%default-value102955%_)))
                        _g106925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106925_))))))
    (define __hash-find__%
      (lambda (_%proc102872%_ _%h102873%_ _%default-value102874%_)
        (let ((_%proc102877%_ _%proc102872%_))
          (let* ((_%h102885%_ _%h102873%_)
                 (__tmp106926
                  (lambda (_%return102894%_)
                    (let ((__tmp106927
                           (lambda (_%k102896%_ _%v102897%_)
                             (let ((_%$e102899%_
                                    (let ()
                                      (declare (not safe))
                                      (_%proc102877%_
                                       _%k102896%_
                                       _%v102897%_))))
                               (if _%$e102899%_
                                   (_%return102894%_ _%$e102899%_)
                                   '#!void)))))
                      (declare (not safe))
                      (&HashTable-for-each _%h102885%_ __tmp106927))
                    _%default-value102874%_)))
            (declare (not safe))
            (##call-with-current-continuation __tmp106926)))))
    (define __hash-find__0
      (lambda (_%proc102905%_ _%h102906%_)
        (let ((_%default-value102908%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102905%_
           _%h102906%_
           _%default-value102908%_))))
    (define __hash-find
      (lambda _g106929_
        (let ((_g106928_ (let () (declare (not safe)) (##length _g106929_))))
          (cond ((let () (declare (not safe)) (##fx= _g106928_ 2))
                 (apply (lambda (_%proc102905%_ _%h102906%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102905%_ _%h102906%_)))
                        _g106929_))
                ((let () (declare (not safe)) (##fx= _g106928_ 3))
                 (apply (lambda (_%proc102910%_
                                 _%h102911%_
                                 _%default-value102912%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102910%_
                             _%h102911%_
                             _%default-value102912%_)))
                        _g106929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106929_))))))
    (define hash-keys
      (lambda (_%h102853%_)
        (let ()
          (let* ((_%h102859%_
                  (let ((_%$obj102856%_ _%h102853%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102856%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102856%_)))
                             '#t)
                        _%$obj102856%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102856%_)))))
                 (_%h102861%_ _%h102859%_))
            (declare (not safe))
            (__hash-keys _%h102861%_)))))
    (define __hash-keys
      (lambda (_%h102836%_)
        (let ()
          (let* ((_%h102839%_ _%h102836%_) (_%result102848%_ '()))
            (let ((__tmp106930
                   (lambda (_%k102850%_ _%v102851%_)
                     (set! _%result102848%_
                           (cons _%k102850%_ _%result102848%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102839%_ __tmp106930))
            _%result102848%_))))
    (define hash-values
      (lambda (_%h102818%_)
        (let ()
          (let* ((_%h102824%_
                  (let ((_%$obj102821%_ _%h102818%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102821%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102821%_)))
                             '#t)
                        _%$obj102821%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102821%_)))))
                 (_%h102826%_ _%h102824%_))
            (declare (not safe))
            (__hash-values _%h102826%_)))))
    (define __hash-values
      (lambda (_%h102801%_)
        (let ()
          (let* ((_%h102804%_ _%h102801%_) (_%result102813%_ '()))
            (let ((__tmp106931
                   (lambda (_%k102815%_ _%v102816%_)
                     (set! _%result102813%_
                           (cons _%v102816%_ _%result102813%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102804%_ __tmp106931))
            _%result102813%_))))
    (define hash-copy
      (lambda (_%h102783%_)
        (let ()
          (let* ((_%h102789%_
                  (let ((_%$obj102786%_ _%h102783%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102786%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102786%_)))
                             '#t)
                        _%$obj102786%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102786%_)))))
                 (_%h102791%_ _%h102789%_))
            (declare (not safe))
            (__hash-copy _%h102791%_)))))
    (define __hash-copy
      (lambda (_%h102771%_)
        (let ((_%h102774%_ _%h102771%_))
          (declare (not safe))
          (__HashTable-copy _%h102774%_))))
    (define hash-clear!
      (lambda (_%h102753%_)
        (let ()
          (let* ((_%h102759%_
                  (let ((_%$obj102756%_ _%h102753%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102756%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102756%_)))
                             '#t)
                        _%$obj102756%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102756%_)))))
                 (_%h102761%_ _%h102759%_))
            (declare (not safe))
            (__hash-clear! _%h102761%_)))))
    (define __hash-clear!
      (lambda (_%h102741%_)
        (let ((_%h102744%_ _%h102741%_))
          (declare (not safe))
          (&HashTable-clear! _%h102744%_))))
    (define hash-merge
      (lambda (_%h102722%_ . _%rest102723%_)
        (let ()
          (let* ((_%h102729%_
                  (let ((_%$obj102726%_ _%h102722%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102726%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102726%_)))
                             '#t)
                        _%$obj102726%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102726%_)))))
                 (_%h102731%_ _%h102729%_))
            (declare (not safe))
            (##apply __hash-merge _%h102731%_ _%rest102723%_)))))
    (define __hash-merge
      (lambda (_%h102707%_ . _%rest102708%_)
        (let ()
          (let* ((_%h102711%_ _%h102707%_)
                 (_%copy102720%_
                  (let ()
                    (declare (not safe))
                    (__HashTable-copy _%h102711%_))))
            (apply hash-merge! _%copy102720%_ _%rest102708%_)
            _%copy102720%_))))
    (define hash-merge!
      (lambda (_%h102688%_ . _%rest102689%_)
        (let ()
          (let* ((_%h102695%_
                  (let ((_%$obj102692%_ _%h102688%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102692%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102692%_)))
                             '#t)
                        _%$obj102692%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102692%_)))))
                 (_%h102697%_ _%h102695%_))
            (declare (not safe))
            (##apply __hash-merge! _%h102697%_ _%rest102689%_)))))
    (define __hash-merge!
      (lambda (_%h102651%_ . _%rest102652%_)
        (let ((_%h102655%_ _%h102651%_))
          (for-each
           (lambda (_%hr102664%_)
             (let ()
               (let* ((_%hr102670%_
                       (let ((_%$obj102667%_ _%hr102664%_))
                         (if (and (let ()
                                    (declare (not safe))
                                    (##structure? _%$obj102667%_))
                                  (eq? HashTable::t
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _%$obj102667%_)))
                                  '#t)
                             _%$obj102667%_
                             (let ()
                               (declare (not safe))
                               (cast HashTable::interface _%$obj102667%_)))))
                      (_%hr102672%_ _%hr102670%_)
                      (__tmp106932
                       (lambda (_%k102685%_ _%v102686%_)
                         (if (let ()
                               (declare (not safe))
                               (__hash-key? _%h102655%_ _%k102685%_))
                             '#!void
                             (let ()
                               (declare (not safe))
                               (&HashTable-set!
                                _%h102655%_
                                _%k102685%_
                                _%v102686%_))))))
                 (declare (not safe))
                 (&HashTable-for-each _%hr102672%_ __tmp106932))))
           _%rest102652%_)
          _%h102655%_)))))
