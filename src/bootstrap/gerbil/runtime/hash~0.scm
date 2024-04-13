(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1713001406)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108472 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108472
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args108452%_
        (apply make-instance UnboundKeyError::t _%$args108452%_)))
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
      (lambda (_%where108326%_ _%message108327%_ . _%irritants108328%_)
        (let ((__tmp108473
               (let ((__obj108466
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj108466
                    _%message108327%_
                    'where:
                    _%where108326%_
                    'irritants:
                    _%irritants108328%_))
                 __obj108466)))
          (declare (not safe))
          (raise __tmp108473))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108474 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp108474
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
      (lambda (_%obj108324%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj108324%_))))
    (define try-HashTable
      (lambda (_%obj108322%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj108322%_))))
    (define HashTable?
      (lambda (_%obj108320%_)
        (let ((__tmp108475
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108320%_ __tmp108475))))
    (define is-HashTable?
      (lambda (_%obj108318%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj108318%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self108302%_)
        (let* ((_%self108307%_
                (let ((_%$obj108304%_ _%self108302%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108304%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108304%_)))
                           '#t)
                      _%$obj108304%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108304%_)))))
               (_%self108309%_ _%self108307%_))
          (&HashTable-clear! _%self108309%_))))
    (define &HashTable-clear!
      (lambda (_%self108287%_)
        (let ((_%self108289%_ _%self108287%_))
          (declare (not safe))
          (let ((_%obj108299%_
                 (##unchecked-structure-ref _%self108289%_ '1 '#f 'clear!))
                (_%f108300%_
                 (##unchecked-structure-ref _%self108289%_ '2 '#f 'clear!)))
            (_%f108300%_ _%obj108299%_)))))
    (define HashTable-copy
      (lambda (_%self108271%_)
        (let* ((_%self108276%_
                (let ((_%$obj108273%_ _%self108271%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108273%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108273%_)))
                           '#t)
                      _%$obj108273%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108273%_)))))
               (_%self108278%_ _%self108276%_))
          (__HashTable-copy _%self108278%_))))
    (define __HashTable-copy
      (lambda (_%self108258%_)
        (let* ((_%self108260%_ _%self108258%_)
               (_%$obj108268%_ (&HashTable-copy _%self108260%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj108268%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj108268%_)))
                   '#t)
              _%$obj108268%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj108268%_))))))
    (define &HashTable-copy
      (lambda (_%self108243%_)
        (let ((_%self108245%_ _%self108243%_))
          (declare (not safe))
          (let ((_%obj108255%_
                 (##unchecked-structure-ref _%self108245%_ '1 '#f 'copy))
                (_%f108256%_
                 (##unchecked-structure-ref _%self108245%_ '3 '#f 'copy)))
            (_%f108256%_ _%obj108255%_)))))
    (define HashTable-delete!
      (lambda (_%self108226%_ _%key108227%_)
        (let* ((_%self108232%_
                (let ((_%$obj108229%_ _%self108226%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108229%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108229%_)))
                           '#t)
                      _%$obj108229%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108229%_)))))
               (_%self108234%_ _%self108232%_))
          (&HashTable-delete! _%self108234%_ _%key108227%_))))
    (define &HashTable-delete!
      (lambda (_%self108210%_ _%key108211%_)
        (let ((_%self108213%_ _%self108210%_))
          (declare (not safe))
          (let ((_%obj108223%_
                 (##unchecked-structure-ref _%self108213%_ '1 '#f 'delete!))
                (_%f108224%_
                 (##unchecked-structure-ref _%self108213%_ '4 '#f 'delete!)))
            (_%f108224%_ _%obj108223%_ _%key108211%_)))))
    (define HashTable-for-each
      (lambda (_%self108183%_ _%proc108184%_)
        (let* ((_%self108189%_
                (let ((_%$obj108186%_ _%self108183%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108186%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108186%_)))
                           '#t)
                      _%$obj108186%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108186%_)))))
               (_%self108191%_ _%self108189%_))
          (if (procedure? _%proc108184%_)
              (let ((_%proc108200%_ _%proc108184%_))
                (&HashTable-for-each _%self108191%_ _%proc108200%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108184%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self108159%_ _%proc108160%_)
        (let* ((_%self108162%_ _%self108159%_) (_%proc108169%_ _%proc108160%_))
          (declare (not safe))
          (let ((_%obj108180%_
                 (##unchecked-structure-ref _%self108162%_ '1 '#f 'for-each))
                (_%f108181%_
                 (##unchecked-structure-ref _%self108162%_ '5 '#f 'for-each)))
            (_%f108181%_ _%obj108180%_ _%proc108169%_)))))
    (define HashTable-length
      (lambda (_%self108143%_)
        (let* ((_%self108148%_
                (let ((_%$obj108145%_ _%self108143%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108145%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108145%_)))
                           '#t)
                      _%$obj108145%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108145%_)))))
               (_%self108150%_ _%self108148%_))
          (__HashTable-length _%self108150%_))))
    (define __HashTable-length
      (lambda (_%self108130%_)
        (let* ((_%self108132%_ _%self108130%_)
               (_%val108140%_ (&HashTable-length _%self108132%_)))
          _%val108140%_)))
    (define &HashTable-length
      (lambda (_%self108115%_)
        (let ((_%self108117%_ _%self108115%_))
          (declare (not safe))
          (let ((_%obj108127%_
                 (##unchecked-structure-ref _%self108117%_ '1 '#f 'length))
                (_%f108128%_
                 (##unchecked-structure-ref _%self108117%_ '6 '#f 'length)))
            (_%f108128%_ _%obj108127%_)))))
    (define HashTable-ref
      (lambda (_%self108097%_ _%key108098%_ _%default108099%_)
        (let* ((_%self108104%_
                (let ((_%$obj108101%_ _%self108097%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108101%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108101%_)))
                           '#t)
                      _%$obj108101%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108101%_)))))
               (_%self108106%_ _%self108104%_))
          (&HashTable-ref _%self108106%_ _%key108098%_ _%default108099%_))))
    (define &HashTable-ref
      (lambda (_%self108080%_ _%key108081%_ _%default108082%_)
        (let ((_%self108084%_ _%self108080%_))
          (declare (not safe))
          (let ((_%obj108094%_
                 (##unchecked-structure-ref _%self108084%_ '1 '#f 'ref))
                (_%f108095%_
                 (##unchecked-structure-ref _%self108084%_ '7 '#f 'ref)))
            (_%f108095%_ _%obj108094%_ _%key108081%_ _%default108082%_)))))
    (define HashTable-set!
      (lambda (_%self108062%_ _%key108063%_ _%value108064%_)
        (let* ((_%self108069%_
                (let ((_%$obj108066%_ _%self108062%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108066%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108066%_)))
                           '#t)
                      _%$obj108066%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108066%_)))))
               (_%self108071%_ _%self108069%_))
          (&HashTable-set! _%self108071%_ _%key108063%_ _%value108064%_))))
    (define &HashTable-set!
      (lambda (_%self108045%_ _%key108046%_ _%value108047%_)
        (let ((_%self108049%_ _%self108045%_))
          (declare (not safe))
          (let ((_%obj108059%_
                 (##unchecked-structure-ref _%self108049%_ '1 '#f 'set!))
                (_%f108060%_
                 (##unchecked-structure-ref _%self108049%_ '8 '#f 'set!)))
            (_%f108060%_ _%obj108059%_ _%key108046%_ _%value108047%_)))))
    (define HashTable-update!
      (lambda (_%self108016%_ _%key108017%_ _%proc108018%_ _%default108019%_)
        (let* ((_%self108024%_
                (let ((_%$obj108021%_ _%self108016%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108021%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108021%_)))
                           '#t)
                      _%$obj108021%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108021%_)))))
               (_%self108026%_ _%self108024%_))
          (if (procedure? _%proc108018%_)
              (let ((_%proc108035%_ _%proc108018%_))
                (&HashTable-update!
                 _%self108026%_
                 _%key108017%_
                 _%proc108035%_
                 _%default108019%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108018%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self107988%_ _%key107989%_ _%proc107990%_ _%default107991%_)
        (let* ((_%self107993%_ _%self107988%_) (_%proc108000%_ _%proc107990%_))
          (declare (not safe))
          (let ((_%obj108011%_
                 (##unchecked-structure-ref _%self107993%_ '1 '#f 'update!))
                (_%f108013%_
                 (##unchecked-structure-ref _%self107993%_ '9 '#f 'update!)))
            (_%f108013%_
             _%obj108011%_
             _%key107989%_
             _%proc108000%_
             _%default107991%_)))))
    (define Locker::t
      (let ((__tmp108476 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp108476
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
      (lambda (_%obj107986%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj107986%_))))
    (define try-Locker
      (lambda (_%obj107984%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj107984%_))))
    (define Locker?
      (lambda (_%obj107982%_)
        (let ((__tmp108477
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj107982%_ __tmp108477))))
    (define is-Locker?
      (lambda (_%obj107980%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj107980%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self107964%_)
        (let* ((_%self107969%_
                (let ((_%$obj107966%_ _%self107964%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107966%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107966%_)))
                           '#t)
                      _%$obj107966%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107966%_)))))
               (_%self107971%_ _%self107969%_))
          (&Locker-read-lock! _%self107971%_))))
    (define &Locker-read-lock!
      (lambda (_%self107949%_)
        (let ((_%self107951%_ _%self107949%_))
          (declare (not safe))
          (let ((_%obj107961%_
                 (##unchecked-structure-ref _%self107951%_ '1 '#f 'read-lock!))
                (_%f107962%_
                 (##unchecked-structure-ref
                  _%self107951%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f107962%_ _%obj107961%_)))))
    (define Locker-read-unlock!
      (lambda (_%self107933%_)
        (let* ((_%self107938%_
                (let ((_%$obj107935%_ _%self107933%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107935%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107935%_)))
                           '#t)
                      _%$obj107935%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107935%_)))))
               (_%self107940%_ _%self107938%_))
          (&Locker-read-unlock! _%self107940%_))))
    (define &Locker-read-unlock!
      (lambda (_%self107918%_)
        (let ((_%self107920%_ _%self107918%_))
          (declare (not safe))
          (let ((_%obj107930%_
                 (##unchecked-structure-ref
                  _%self107920%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f107931%_
                 (##unchecked-structure-ref
                  _%self107920%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f107931%_ _%obj107930%_)))))
    (define Locker-write-lock!
      (lambda (_%self107902%_)
        (let* ((_%self107907%_
                (let ((_%$obj107904%_ _%self107902%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107904%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107904%_)))
                           '#t)
                      _%$obj107904%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107904%_)))))
               (_%self107909%_ _%self107907%_))
          (&Locker-write-lock! _%self107909%_))))
    (define &Locker-write-lock!
      (lambda (_%self107887%_)
        (let ((_%self107889%_ _%self107887%_))
          (declare (not safe))
          (let ((_%obj107899%_
                 (##unchecked-structure-ref
                  _%self107889%_
                  '1
                  '#f
                  'write-lock!))
                (_%f107900%_
                 (##unchecked-structure-ref
                  _%self107889%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f107900%_ _%obj107899%_)))))
    (define Locker-write-unlock!
      (lambda (_%self107871%_)
        (let* ((_%self107876%_
                (let ((_%$obj107873%_ _%self107871%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107873%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107873%_)))
                           '#t)
                      _%$obj107873%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107873%_)))))
               (_%self107878%_ _%self107876%_))
          (&Locker-write-unlock! _%self107878%_))))
    (define &Locker-write-unlock!
      (lambda (_%self107854%_)
        (let ((_%self107856%_ _%self107854%_))
          (declare (not safe))
          (let ((_%obj107866%_
                 (##unchecked-structure-ref
                  _%self107856%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f107868%_
                 (##unchecked-structure-ref
                  _%self107856%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f107868%_ _%obj107866%_)))))
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
      (lambda (_%table107847%_
               _%key107848%_
               _%update107849%_
               _%default107850%_)
        (let ((_%result107852%_
               (table-ref _%table107847%_ _%key107848%_ _%default107850%_)))
          (table-set!
           _%table107847%_
           _%key107848%_
           (_%update107849%_ _%default107850%_)))))
    (define gambit-table-for-each
      (lambda (_%table107844%_ _%proc107845%_)
        (table-for-each _%proc107845%_ _%table107844%_)))
    (define gambit-table-clear!
      (lambda (_%table107842%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table107842%_ '0 '5 '#f '#f))))
    (let ((__tmp108478 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108478 'ref table-ref))
    (let ((__tmp108479 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108479 'set! table-set!))
    (let ((__tmp108480 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108480 'update! gambit-table-update!))
    (let ((__tmp108481 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108481 'delete! table-set!))
    (let ((__tmp108482 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108482 'for-each gambit-table-for-each))
    (let ((__tmp108483 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108483 'length table-length))
    (let ((__tmp108484 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108484 'copy table-copy))
    (let ((__tmp108485 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108485 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots107824%_ '(table count free hash test seed))
             (_%slot-vector107826%_ (list->vector (cons '#f _%slots107824%_)))
             (_%slot-table107833%_
              (let ((_%slot-table107828%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108488
                       (lambda (_%slot107830%_ _%field107831%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107828%_
                            _%slot107830%_
                            _%field107831%_))
                         (let ((__tmp108489
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107830%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107828%_
                            __tmp108489
                            _%field107831%_))))
                      (__tmp108486
                       (let ((__tmp108487
                              (let ()
                                (declare (not safe))
                                (##length _%slots107824%_))))
                         (declare (not safe))
                         (##iota __tmp108487 '1))))
                  (declare (not safe))
                  (##for-each __tmp108488 _%slots107824%_ __tmp108486))
                _%slot-table107828%_))
             (_%flags107835%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107837%_ '#())
             (_%properties107839%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107824%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108490 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags107835%_
         __table::t
         _%fields107837%_
         __tmp108490
         _%slot-vector107826%_
         _%slot-table107833%_
         _%properties107839%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots107806%_ '(gcht immediate))
             (_%slot-vector107808%_ (list->vector (cons '#f _%slots107806%_)))
             (_%slot-table107815%_
              (let ((_%slot-table107810%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108493
                       (lambda (_%slot107812%_ _%field107813%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107810%_
                            _%slot107812%_
                            _%field107813%_))
                         (let ((__tmp108494
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107812%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107810%_
                            __tmp108494
                            _%field107813%_))))
                      (__tmp108491
                       (let ((__tmp108492
                              (let ()
                                (declare (not safe))
                                (##length _%slots107806%_))))
                         (declare (not safe))
                         (##iota __tmp108492 '1))))
                  (declare (not safe))
                  (##for-each __tmp108493 _%slots107806%_ __tmp108491))
                _%slot-table107810%_))
             (_%flags107817%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107819%_ '#())
             (_%properties107821%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107806%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108495 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags107817%_
         __gc-table::t
         _%fields107819%_
         __tmp108495
         _%slot-vector107808%_
         _%slot-table107815%_
         _%properties107821%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp108497 (list))
            (__tmp108496
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108497
         '(table lock)
         __tmp108496
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args107803%_
        (apply make-instance locked-hash-table::t _%$args107803%_)))
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
      (let ((__tmp108499 (list))
            (__tmp108498
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp108499
         '(table key-check)
         __tmp108498
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args107800%_
        (apply make-instance checked-hash-table::t _%$args107800%_)))
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
      (let ((__tmp108501 (list hash-table::t))
            (__tmp108500 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108501
         '()
         __tmp108500
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args107797%_
        (apply make-instance eq-hash-table::t _%$args107797%_)))
    (define eqv-hash-table::t
      (let ((__tmp108503 (list hash-table::t))
            (__tmp108502 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108503
         '()
         __tmp108502
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args107794%_
        (apply make-instance eqv-hash-table::t _%$args107794%_)))
    (define symbol-hash-table::t
      (let ((__tmp108505 (list hash-table::t))
            (__tmp108504 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108505
         '()
         __tmp108504
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args107791%_
        (apply make-instance symbol-hash-table::t _%$args107791%_)))
    (define string-hash-table::t
      (let ((__tmp108507 (list hash-table::t))
            (__tmp108506 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108507
         '()
         __tmp108506
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args107788%_
        (apply make-instance string-hash-table::t _%$args107788%_)))
    (define immediate-hash-table::t
      (let ((__tmp108509 (list hash-table::t))
            (__tmp108508 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp108509
         '()
         __tmp108508
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args107785%_
        (apply make-instance immediate-hash-table::t _%$args107785%_)))
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
    (define _%locked-hash-table::ref103731%_
      (lambda (_%self103730107759%_ _%key107761%_ _%default107762%_)
        (let* ((_%self107764%_ _%self103730107759%_)
               (_%self107767%_ _%self107764%_))
          (let ((_%h107777%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107767%_ '1 '#f '#f)))
                (_%l107779%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107767%_ '2 '#f '#f))))
            (let ((__tmp108512 (lambda () (&Locker-read-lock! _%l107779%_)))
                  (__tmp108511
                   (lambda ()
                     (&HashTable-ref
                      _%h107777%_
                      _%key107761%_
                      _%default107762%_)))
                  (__tmp108510 (lambda () (&Locker-read-unlock! _%l107779%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108512 __tmp108511 __tmp108510))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref103731%_
       '#f))
    (define _%locked-hash-table::set!103734%_
      (lambda (_%self103733107610%_ _%key107612%_ _%value107613%_)
        (let* ((_%self107615%_ _%self103733107610%_)
               (_%self107618%_ _%self107615%_))
          (let ((_%h107628%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107618%_ '1 '#f '#f)))
                (_%l107630%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107618%_ '2 '#f '#f))))
            (let ((__tmp108515 (lambda () (&Locker-write-lock! _%l107630%_)))
                  (__tmp108514
                   (lambda ()
                     (&HashTable-set!
                      _%h107628%_
                      _%key107612%_
                      _%value107613%_)))
                  (__tmp108513
                   (lambda () (&Locker-write-unlock! _%l107630%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108515 __tmp108514 __tmp108513))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!103734%_
       '#f))
    (define _%locked-hash-table::update!103737%_
      (lambda (_%self103736107460%_
               _%key107462%_
               _%update107463%_
               _%default107464%_)
        (let* ((_%self107466%_ _%self103736107460%_)
               (_%self107469%_ _%self107466%_))
          (let ((_%h107479%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107469%_ '1 '#f '#f)))
                (_%l107481%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107469%_ '2 '#f '#f))))
            (let ((__tmp108518 (lambda () (&Locker-write-lock! _%l107481%_)))
                  (__tmp108517
                   (lambda ()
                     (&HashTable-update!
                      _%h107479%_
                      _%key107462%_
                      _%update107463%_
                      _%default107464%_)))
                  (__tmp108516
                   (lambda () (&Locker-write-unlock! _%l107481%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108518 __tmp108517 __tmp108516))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!103737%_
       '#f))
    (define _%locked-hash-table::delete!103740%_
      (lambda (_%self103739107312%_ _%key107314%_)
        (let* ((_%self107316%_ _%self103739107312%_)
               (_%self107319%_ _%self107316%_))
          (let ((_%h107329%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107319%_ '1 '#f '#f)))
                (_%l107331%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107319%_ '2 '#f '#f))))
            (let ((__tmp108521 (lambda () (&Locker-write-lock! _%l107331%_)))
                  (__tmp108520
                   (lambda () (&HashTable-delete! _%h107329%_ _%key107314%_)))
                  (__tmp108519
                   (lambda () (&Locker-write-unlock! _%l107331%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108521 __tmp108520 __tmp108519))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!103740%_
       '#f))
    (define _%locked-hash-table::for-each103743%_
      (lambda (_%self103742107164%_ _%proc107166%_)
        (let* ((_%self107168%_ _%self103742107164%_)
               (_%self107171%_ _%self107168%_))
          (let ((_%h107181%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107171%_ '1 '#f '#f)))
                (_%l107183%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107171%_ '2 '#f '#f))))
            (let ((__tmp108524 (lambda () (&Locker-read-lock! _%l107183%_)))
                  (__tmp108523
                   (lambda ()
                     (&HashTable-for-each _%h107181%_ _%proc107166%_)))
                  (__tmp108522 (lambda () (&Locker-read-unlock! _%l107183%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108524 __tmp108523 __tmp108522))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each103743%_
       '#f))
    (define _%locked-hash-table::length103746%_
      (lambda (_%self103745107017%_)
        (let* ((_%self107020%_ _%self103745107017%_)
               (_%self107023%_ _%self107020%_))
          (let ((_%h107033%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107023%_ '1 '#f '#f)))
                (_%l107035%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107023%_ '2 '#f '#f))))
            (let ((__tmp108527 (lambda () (&Locker-read-lock! _%l107035%_)))
                  (__tmp108526 (lambda () (&HashTable-length _%h107033%_)))
                  (__tmp108525 (lambda () (&Locker-read-unlock! _%l107035%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108527 __tmp108526 __tmp108525))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length103746%_
       '#f))
    (define _%locked-hash-table::copy103749%_
      (lambda (_%self103748106870%_)
        (let* ((_%self106873%_ _%self103748106870%_)
               (_%self106876%_ _%self106873%_))
          (let ((_%h106886%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106876%_ '1 '#f '#f)))
                (_%l106888%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106876%_ '2 '#f '#f))))
            (let ((__tmp108530 (lambda () (&Locker-read-lock! _%l106888%_)))
                  (__tmp108529 (lambda () (&HashTable-copy _%h106886%_)))
                  (__tmp108528 (lambda () (&Locker-read-unlock! _%l106888%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108530 __tmp108529 __tmp108528))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy103749%_
       '#f))
    (define _%locked-hash-table::clear!103752%_
      (lambda (_%self103751106723%_)
        (let* ((_%self106726%_ _%self103751106723%_)
               (_%self106729%_ _%self106726%_))
          (let ((_%h106739%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106729%_ '1 '#f '#f)))
                (_%l106741%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106729%_ '2 '#f '#f))))
            (let ((__tmp108533 (lambda () (&Locker-write-lock! _%l106741%_)))
                  (__tmp108532 (lambda () (&HashTable-clear! _%h106739%_)))
                  (__tmp108531
                   (lambda () (&Locker-write-unlock! _%l106741%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108533 __tmp108532 __tmp108531))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!103752%_
       '#f))
    (let ((__tmp108534 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108534 'read-lock! mutex-lock!))
    (let ((__tmp108535 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108535 'read-unlock! mutex-unlock!))
    (let ((__tmp108536 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108536 'write-lock! mutex-lock!))
    (let ((__tmp108537 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108537 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref104031%_
      (lambda (_%self104030106574%_ _%key106576%_ _%default106577%_)
        (let* ((_%self106579%_ _%self104030106574%_)
               (_%self106581%_ _%self106579%_))
          (let ((_%h106591%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106581%_ '1 '#f '#f)))
                (_%key?106593%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106581%_ '2 '#f '#f))))
            ((lambda (_%g106595106597%_)
               (if (_%g106595106597%_ _%key106576%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106576%_))))
             _%key?106593%_)
            (&HashTable-ref _%h106591%_ _%key106576%_ _%default106577%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref104031%_
       '#f))
    (define _%checked-hash-table::set!104034%_
      (lambda (_%self104033106425%_ _%key106427%_ _%value106428%_)
        (let* ((_%self106430%_ _%self104033106425%_)
               (_%self106432%_ _%self106430%_))
          (let ((_%h106442%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106432%_ '1 '#f '#f)))
                (_%key?106444%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106432%_ '2 '#f '#f))))
            ((lambda (_%g106446106448%_)
               (if (_%g106446106448%_ _%key106427%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106427%_))))
             _%key?106444%_)
            (&HashTable-set! _%h106442%_ _%key106427%_ _%value106428%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!104034%_
       '#f))
    (define _%checked-hash-table::update!104037%_
      (lambda (_%self104036106277%_
               _%key106279%_
               _%update106280%_
               _%default106281%_)
        (let* ((_%self106283%_ _%self104036106277%_)
               (_%self106285%_ _%self106283%_))
          (let ((_%h106295%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106285%_ '1 '#f '#f)))
                (_%key?106297%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106285%_ '2 '#f '#f))))
            ((lambda (_%key?106300%_)
               (if (_%key?106300%_ _%key106279%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106279%_)))
               (if (procedure? _%update106280%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update106280%_))))
             _%key?106297%_)
            (&HashTable-update!
             _%h106295%_
             _%key106279%_
             _%update106280%_
             _%default106281%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!104037%_
       '#f))
    (define _%checked-hash-table::delete!104040%_
      (lambda (_%self104039106129%_ _%key106131%_)
        (let* ((_%self106133%_ _%self104039106129%_)
               (_%self106135%_ _%self106133%_))
          (let ((_%h106145%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106135%_ '1 '#f '#f)))
                (_%key?106147%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106135%_ '2 '#f '#f))))
            ((lambda (_%g106149106151%_)
               (if (_%g106149106151%_ _%key106131%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106131%_))))
             _%key?106147%_)
            (&HashTable-delete! _%h106145%_ _%key106131%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!104040%_
       '#f))
    (define _%checked-hash-table::for-each104043%_
      (lambda (_%self104042105983%_ _%proc105985%_)
        (let* ((_%self105987%_ _%self104042105983%_)
               (_%self105989%_ _%self105987%_))
          (let ((_%h105999%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105989%_ '1 '#f '#f)))
                (_%key?106001%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105989%_ '2 '#f '#f))))
            ((lambda (_%_106004%_)
               (if (procedure? _%proc105985%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc105985%_))))
             _%key?106001%_)
            (&HashTable-for-each _%h105999%_ _%proc105985%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each104043%_
       '#f))
    (define _%checked-hash-table::length104046%_
      (lambda (_%self104045105840%_)
        (let* ((_%self105843%_ _%self104045105840%_)
               (_%self105845%_ _%self105843%_))
          (let ((_%h105855%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105845%_ '1 '#f '#f)))
                (_%key?105857%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105845%_ '2 '#f '#f))))
            (&HashTable-length _%h105855%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'length
       _%checked-hash-table::length104046%_
       '#f))
    (define _%checked-hash-table::copy104049%_
      (lambda (_%self104048105697%_)
        (let* ((_%self105700%_ _%self104048105697%_)
               (_%self105702%_ _%self105700%_))
          (let ((_%h105712%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105702%_ '1 '#f '#f)))
                (_%key?105714%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105702%_ '2 '#f '#f))))
            (&HashTable-copy _%h105712%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy104049%_
       '#f))
    (define _%checked-hash-table::clear!104052%_
      (lambda (_%self104051105554%_)
        (let* ((_%self105557%_ _%self104051105554%_)
               (_%self105559%_ _%self105557%_))
          (let ((_%h105569%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105559%_ '1 '#f '#f)))
                (_%key?105571%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105559%_ '2 '#f '#f))))
            (&HashTable-clear! _%h105569%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!104052%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table105424%_
               _%count105425%_
               _%free105426%_
               _%hash105427%_
               _%test105428%_
               _%seed105429%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table105424%_
           _%count105425%_
           _%free105426%_
           _%hash105427%_
           _%test105428%_
           _%seed105429%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords105185%_
               _%size-hint105175105186%_
               _%seed105176105188%_
               _%test105177105190%_
               _%hash105178105192%_
               _%lock105179105194%_
               _%check105180105196%_
               _%weak-keys105181105198%_
               _%weak-values105182105200%_)
        (let* ((_%size-hint105203%_
                (if (eq? _%size-hint105175105186%_ absent-value)
                    '#f
                    _%size-hint105175105186%_))
               (_%seed105205%_
                (if (eq? _%seed105176105188%_ absent-value)
                    '#f
                    _%seed105176105188%_))
               (_%test105207%_
                (if (eq? _%test105177105190%_ absent-value)
                    equal?
                    _%test105177105190%_))
               (_%hash105209%_
                (if (eq? _%hash105178105192%_ absent-value)
                    '#f
                    _%hash105178105192%_))
               (_%lock105211%_
                (if (eq? _%lock105179105194%_ absent-value)
                    '#f
                    _%lock105179105194%_))
               (_%check105213%_
                (if (eq? _%check105180105196%_ absent-value)
                    '#f
                    _%check105180105196%_))
               (_%weak-keys105215%_
                (if (eq? _%weak-keys105181105198%_ absent-value)
                    '#f
                    _%weak-keys105181105198%_))
               (_%weak-values105217%_
                (if (eq? _%weak-values105182105200%_ absent-value)
                    '#f
                    _%weak-values105182105200%_)))
          (letrec ((_%table-seed105220%_
                    (lambda ()
                      (if (fixnum? _%seed105205%_)
                          _%seed105205%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock105221%_
                    (lambda (_%ht105398%_)
                      (let ((_%ht105401%_ _%ht105398%_))
                        (_%__wrap-lock105222%_ _%ht105401%_))))
                   (_%__wrap-lock105222%_
                    (lambda (_%ht105380%_)
                      (let ((_%ht105383%_ _%ht105380%_))
                        (if _%lock105211%_
                            (let ((_%$obj105395%_
                                   (let ((__tmp108538
                                          (let ((_%$obj105392%_
                                                 _%lock105211%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj105392%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj105392%_)))
                                                     '#t)
                                                _%$obj105392%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj105392%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht105383%_
                                      __tmp108538))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105395%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105395%_)))
                                       '#t)
                                  _%$obj105395%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105395%_))))
                            _%ht105383%_))))
                   (_%wrap-checked105223%_
                    (lambda (_%ht105367%_ _%implicit105368%_)
                      (let ((_%ht105371%_ _%ht105367%_))
                        (_%__wrap-checked105224%_
                         _%ht105371%_
                         _%implicit105368%_))))
                   (_%__wrap-checked105224%_
                    (lambda (_%ht105340%_ _%implicit105341%_)
                      (let ((_%ht105344%_ _%ht105340%_))
                        (if _%check105213%_
                            (let ((_%$obj105364%_
                                   (let ((__tmp108539
                                          (if (procedure? _%check105213%_)
                                              _%check105213%_
                                              _%implicit105341%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht105344%_
                                      __tmp108539))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105364%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105364%_)))
                                       '#t)
                                  _%$obj105364%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105364%_))))
                            _%ht105344%_))))
                   (_%make105225%_
                    (lambda (_%kons105324%_
                             _%key?105325%_
                             _%hash105326%_
                             _%test105327%_)
                      (let* ((_%size105330%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint105203%_)))
                             (_%table105332%_
                              (let ((__tmp108540 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size105330%_ __tmp108540)))
                             (_%ht105337%_
                              (let ((_%$obj105334%_
                                     (_%kons105324%_
                                      _%table105332%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size105330%_ '2))
                                      _%hash105326%_
                                      _%test105327%_
                                      (_%table-seed105220%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105334%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105334%_)))
                                         '#t)
                                    _%$obj105334%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105334%_))))))
                        (_%__wrap-checked105224%_
                         (_%__wrap-lock105222%_ _%ht105337%_)
                         _%key?105325%_))))
                   (_%make-gc-hash-table105226%_
                    (lambda ()
                      (let ((_%ht105322%_
                             (let ((_%$obj105319%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint105203%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj105319%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj105319%_)))
                                        '#t)
                                   _%$obj105319%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj105319%_))))))
                        (_%__wrap-checked105224%_
                         (_%__wrap-lock105222%_ _%ht105322%_)
                         true))))
                   (_%make-gambit-table105227%_
                    (lambda ()
                      (let* ((_%size105296%_
                              (let ((_%$e105293%_ _%size-hint105203%_))
                                (if _%$e105293%_
                                    _%$e105293%_
                                    (macro-absent-obj))))
                             (_%test105301%_
                              (let ((_%$e105298%_ _%test105207%_))
                                (if _%$e105298%_ _%$e105298%_ equal?)))
                             (_%hash105309%_
                              (let ((_%$e105303%_ _%hash105209%_))
                                (if _%$e105303%_
                                    _%$e105303%_
                                    (if (eq? _%test105301%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test105301%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht105314%_
                              (let ((_%$obj105311%_
                                     (make-table
                                      'size:
                                      _%size105296%_
                                      'test:
                                      _%test105301%_
                                      'hash:
                                      _%hash105309%_
                                      'weak-keys:
                                      _%weak-keys105215%_
                                      'weak-values:
                                      _%weak-values105217%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105311%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105311%_)))
                                         '#t)
                                    _%$obj105311%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105311%_))))))
                        (_%__wrap-checked105224%_
                         (_%__wrap-lock105222%_ _%ht105314%_)
                         true)))))
            (if (or _%weak-keys105215%_ _%weak-values105217%_)
                (_%make-gambit-table105227%_)
                (if (and (or (eq? _%test105207%_ eq?)
                             (eq? _%test105207%_ ##eq?))
                         (or (not _%hash105209%_)
                             (eq? _%hash105209%_ eq?-hash)
                             (eq? _%hash105209%_ eq-hash))
                         (not _%seed105205%_))
                    (_%make-gc-hash-table105226%_)
                    (if (and (or (eq? _%test105207%_ eq?)
                                 (eq? _%test105207%_ ##eq?))
                             (or (not _%hash105209%_)
                                 (eq? _%hash105209%_ eq?-hash)
                                 (eq? _%hash105209%_ eq-hash)))
                        (_%make105225%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test105207%_ eqv?)
                                     (eq? _%test105207%_ ##eqv?))
                                 (or (not _%hash105209%_)
                                     (eq? _%hash105209%_ eqv?-hash)
                                     (eq? _%hash105209%_ eqv-hash)))
                            (_%make105225%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test105207%_ eq?)
                                         (eq? _%test105207%_ ##eq?))
                                     (or (eq? _%hash105209%_ symbolic-hash)
                                         (eq? _%hash105209%_ ##symbol-hash)))
                                (_%make105225%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test105207%_ eq?)
                                             (eq? _%test105207%_ ##eq?))
                                         (eq? _%hash105209%_ immediate-hash))
                                    (_%make105225%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test105207%_ equal?)
                                                 (eq? _%test105207%_ ##equal?)
                                                 (eq? _%test105207%_ string=?)
                                                 (eq? _%test105207%_
                                                      ##string=?))
                                             (or (eq? _%hash105209%_
                                                      string-hash)
                                                 (eq? _%hash105209%_
                                                      ##string=?-hash)))
                                        (_%make105225%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test105207%_ equal?)
                                                 (not _%hash105209%_))
                                            (_%make105225%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test105207%_)
                                                (if (procedure? _%hash105209%_)
                                                    (_%make105225%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash105209%_
                                                     _%test105207%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash105209%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test105207%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords105414%_ . _%args105415%_)
        (apply make-hash-table__%
               _%@@keywords105414%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105414%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105414%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105414%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105414%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105414%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105414%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105414%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105414%_
                  'weak-values:
                  absent-value))
               _%args105415%_)))
    (define make-hash-table
      (lambda _%args105183105421%_
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
               _%args105183105421%_)))
    (define make-hash-table-eq
      (lambda _%args105172%_
        (apply make-hash-table 'test: eq? _%args105172%_)))
    (define make-hash-table-eqv
      (lambda _%args105170%_
        (apply make-hash-table 'test: eqv? _%args105170%_)))
    (define make-hash-table-symbolic
      (lambda _%args105168%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args105168%_)))
    (define make-hash-table-string
      (lambda _%args105166%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args105166%_)))
    (define make-hash-table-immediate
      (lambda _%args105164%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args105164%_)))
    (define list->hash-table
      (lambda (_%lst105161%_ . _%args105162%_)
        (list->hash-table!
         _%lst105161%_
         (apply make-hash-table
                'size:
                (length _%lst105161%_)
                _%args105162%_))))
    (define list->hash-table-eq
      (lambda (_%lst105158%_ . _%args105159%_)
        (list->hash-table!
         _%lst105158%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105158%_)
                _%args105159%_))))
    (define list->hash-table-eqv
      (lambda (_%lst105155%_ . _%args105156%_)
        (list->hash-table!
         _%lst105155%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105155%_)
                _%args105156%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst105152%_ . _%args105153%_)
        (list->hash-table!
         _%lst105152%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105152%_)
                _%args105153%_))))
    (define list->hash-table-string
      (lambda (_%lst105149%_ . _%args105150%_)
        (list->hash-table!
         _%lst105149%_
         (apply make-hash-table-string
                'size:
                (length _%lst105149%_)
                _%args105150%_))))
    (define list->hash-table-immediate
      (lambda (_%lst105146%_ . _%args105147%_)
        (list->hash-table!
         _%lst105146%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105146%_)
                _%args105147%_))))
    (define list->hash-table!
      (lambda (_%lst105113%_ _%h105114%_)
        (for-each
         (lambda (_%el105116%_)
           (let* ((_%el105117105124%_ _%el105116%_)
                  (_%E105119105128%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el105117105124%_
                              '([k . v])))
                     '#!void))
                  (_%K105120105134%_
                   (lambda (_%v105131%_ _%k105132%_)
                     (&HashTable-set! _%h105114%_ _%k105132%_ _%v105131%_))))
             (if (let () (declare (not safe)) (##pair? _%el105117105124%_))
                 (let ((_%hd105121105137%_
                        (let ()
                          (declare (not safe))
                          (##car _%el105117105124%_)))
                       (_%tl105122105139%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el105117105124%_))))
                   (let* ((_%k105142%_ _%hd105121105137%_)
                          (_%v105144%_ _%tl105122105139%_))
                     (_%K105120105134%_ _%v105144%_ _%k105142%_)))
                 (_%E105119105128%_))))
         _%lst105113%_)
        _%h105114%_))
    (define plist->hash-table
      (lambda (_%lst105110%_ . _%args105111%_)
        (plist->hash-table!
         _%lst105110%_
         (apply make-hash-table
                'size:
                (length _%lst105110%_)
                _%args105111%_))))
    (define plist->hash-table-eq
      (lambda (_%lst105107%_ . _%args105108%_)
        (plist->hash-table!
         _%lst105107%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105107%_)
                _%args105108%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst105104%_ . _%args105105%_)
        (plist->hash-table!
         _%lst105104%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105104%_)
                _%args105105%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst105101%_ . _%args105102%_)
        (plist->hash-table!
         _%lst105101%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105101%_)
                _%args105102%_))))
    (define plist->hash-table-string
      (lambda (_%lst105098%_ . _%args105099%_)
        (plist->hash-table!
         _%lst105098%_
         (apply make-hash-table-string
                'size:
                (length _%lst105098%_)
                _%args105099%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst105095%_ . _%args105096%_)
        (plist->hash-table!
         _%lst105095%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105095%_)
                _%args105096%_))))
    (define plist->hash-table!
      (lambda (_%lst105035%_ _%h105036%_)
        (let _%loop105038%_ ((_%rest105040%_ _%lst105035%_))
          (let* ((_%rest105041105053%_ _%rest105040%_)
                 (_%else105044105061%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst105035%_)))))
            (let ((_%K105047105076%_
                   (lambda (_%rest105072%_ _%val105073%_ _%key105074%_)
                     (&HashTable-set! _%h105036%_ _%key105074%_ _%val105073%_)
                     (_%loop105038%_ _%rest105072%_)))
                  (_%K105046105066%_ (lambda () _%h105036%_)))
              (let ((_%try-match105043105069%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest105041105053%_))
                           (_%K105046105066%_)
                           (_%else105044105061%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest105041105053%_))
                    (let ((_%tl105049105081%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105041105053%_)))
                          (_%hd105048105079%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105041105053%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl105049105081%_))
                          (let ((_%tl105051105088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl105049105081%_)))
                                (_%hd105050105086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl105049105081%_))))
                            (let ((_%key105084%_ _%hd105048105079%_)
                                  (_%val105091%_ _%hd105050105086%_)
                                  (_%rest105093%_ _%tl105051105088%_))
                              (_%K105047105076%_
                               _%rest105093%_
                               _%val105091%_
                               _%key105084%_)))
                          (_%else105044105061%_)))
                    (_%try-match105043105069%_))))))))
    (define hash-length
      (lambda (_%h105017%_)
        (let* ((_%h105023%_
                (let ((_%$obj105020%_ _%h105017%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105020%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105020%_)))
                           '#t)
                      _%$obj105020%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105020%_)))))
               (_%h105025%_ _%h105023%_))
          (__hash-length _%h105025%_))))
    (define __hash-length
      (lambda (_%h105005%_)
        (let ((_%h105008%_ _%h105005%_)) (__HashTable-length _%h105008%_))))
    (define hash-ref__%
      (lambda (_%h104973%_ _%key104974%_ _%default104975%_)
        (let* ((_%h104981%_
                (let ((_%$obj104978%_ _%h104973%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104978%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104978%_)))
                           '#t)
                      _%$obj104978%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104978%_)))))
               (_%h104983%_ _%h104981%_))
          (__hash-ref__% _%h104983%_ _%key104974%_ _%default104975%_))))
    (define hash-ref__0
      (lambda (_%h104996%_ _%key104997%_)
        (let ((_%default104999%_ (macro-absent-obj)))
          (hash-ref__% _%h104996%_ _%key104997%_ _%default104999%_))))
    (define hash-ref
      (lambda _g108542_
        (let ((_g108541_ (let () (declare (not safe)) (##length _g108542_))))
          (cond ((let () (declare (not safe)) (##fx= _g108541_ 2))
                 (apply hash-ref__0 _g108542_))
                ((let () (declare (not safe)) (##fx= _g108541_ 3))
                 (apply hash-ref__% _g108542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108542_))))))
    (define __hash-ref__%
      (lambda (_%h104944%_ _%key104945%_ _%default104946%_)
        (let* ((_%h104949%_ _%h104944%_)
               (_%result104958%_
                (&HashTable-ref _%h104949%_ _%key104945%_ _%default104946%_)))
          (if (eq? _%result104958%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h104949%_
               'key:
               _%key104945%_)
              _%result104958%_))))
    (define __hash-ref__0
      (lambda (_%h104963%_ _%key104964%_)
        (let ((_%default104966%_ (macro-absent-obj)))
          (__hash-ref__% _%h104963%_ _%key104964%_ _%default104966%_))))
    (define __hash-ref
      (lambda _g108544_
        (let ((_g108543_ (let () (declare (not safe)) (##length _g108544_))))
          (cond ((let () (declare (not safe)) (##fx= _g108543_ 2))
                 (apply __hash-ref__0 _g108544_))
                ((let () (declare (not safe)) (##fx= _g108543_ 3))
                 (apply __hash-ref__% _g108544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g108544_))))))
    (define hash-get
      (lambda (_%h104924%_ _%key104925%_)
        (let* ((_%h104931%_
                (let ((_%$obj104928%_ _%h104924%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104928%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104928%_)))
                           '#t)
                      _%$obj104928%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104928%_)))))
               (_%h104933%_ _%h104931%_))
          (__hash-get _%h104933%_ _%key104925%_))))
    (define __hash-get
      (lambda (_%h104911%_ _%key104912%_)
        (let ((_%h104915%_ _%h104911%_))
          (&HashTable-ref _%h104915%_ _%key104912%_ '#f))))
    (define hash-put!
      (lambda (_%h104891%_ _%key104892%_ _%value104893%_)
        (let* ((_%h104899%_
                (let ((_%$obj104896%_ _%h104891%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104896%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104896%_)))
                           '#t)
                      _%$obj104896%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104896%_)))))
               (_%h104901%_ _%h104899%_))
          (__hash-put! _%h104901%_ _%key104892%_ _%value104893%_))))
    (define __hash-put!
      (lambda (_%h104877%_ _%key104878%_ _%value104879%_)
        (let ((_%h104882%_ _%h104877%_))
          (&HashTable-set! _%h104882%_ _%key104878%_ _%value104879%_))))
    (define hash-update!__%
      (lambda (_%h104842%_ _%key104843%_ _%update104844%_ _%default104845%_)
        (let* ((_%h104851%_
                (let ((_%$obj104848%_ _%h104842%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104848%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104848%_)))
                           '#t)
                      _%$obj104848%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104848%_)))))
               (_%h104853%_ _%h104851%_))
          (__hash-update!__%
           _%h104853%_
           _%key104843%_
           _%update104844%_
           _%default104845%_))))
    (define hash-update!__0
      (lambda (_%h104866%_ _%key104867%_ _%update104868%_)
        (let ((_%default104870%_ '#!void))
          (hash-update!__%
           _%h104866%_
           _%key104867%_
           _%update104868%_
           _%default104870%_))))
    (define hash-update!
      (lambda _g108546_
        (let ((_g108545_ (let () (declare (not safe)) (##length _g108546_))))
          (cond ((let () (declare (not safe)) (##fx= _g108545_ 3))
                 (apply hash-update!__0 _g108546_))
                ((let () (declare (not safe)) (##fx= _g108545_ 4))
                 (apply hash-update!__% _g108546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108546_))))))
    (define __hash-update!__%
      (lambda (_%h104812%_ _%key104813%_ _%update104814%_ _%default104815%_)
        (let ((_%h104818%_ _%h104812%_))
          (HashTable-update!
           _%h104818%_
           _%key104813%_
           _%update104814%_
           _%default104815%_))))
    (define __hash-update!__0
      (lambda (_%h104830%_ _%key104831%_ _%update104832%_)
        (let ((_%default104834%_ '#!void))
          (__hash-update!__%
           _%h104830%_
           _%key104831%_
           _%update104832%_
           _%default104834%_))))
    (define __hash-update!
      (lambda _g108548_
        (let ((_g108547_ (let () (declare (not safe)) (##length _g108548_))))
          (cond ((let () (declare (not safe)) (##fx= _g108547_ 3))
                 (apply __hash-update!__0 _g108548_))
                ((let () (declare (not safe)) (##fx= _g108547_ 4))
                 (apply __hash-update!__% _g108548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g108548_))))))
    (define hash-remove!
      (lambda (_%h104792%_ _%key104793%_)
        (let* ((_%h104799%_
                (let ((_%$obj104796%_ _%h104792%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104796%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104796%_)))
                           '#t)
                      _%$obj104796%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104796%_)))))
               (_%h104801%_ _%h104799%_))
          (__hash-remove! _%h104801%_ _%key104793%_))))
    (define __hash-remove!
      (lambda (_%h104779%_ _%key104780%_)
        (let ((_%h104783%_ _%h104779%_))
          (&HashTable-delete! _%h104783%_ _%key104780%_))))
    (define hash-key?
      (lambda (_%h104760%_ _%k104761%_)
        (let* ((_%h104767%_
                (let ((_%$obj104764%_ _%h104760%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104764%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104764%_)))
                           '#t)
                      _%$obj104764%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104764%_)))))
               (_%h104769%_ _%h104767%_))
          (__hash-key? _%h104769%_ _%k104761%_))))
    (define __hash-key?
      (lambda (_%h104747%_ _%k104748%_)
        (let ((_%h104751%_ _%h104747%_))
          (not (eq? (&HashTable-ref _%h104751%_ _%k104748%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h104729%_)
        (let* ((_%h104735%_
                (let ((_%$obj104732%_ _%h104729%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104732%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104732%_)))
                           '#t)
                      _%$obj104732%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104732%_)))))
               (_%h104737%_ _%h104735%_))
          (__hash->list _%h104737%_))))
    (define __hash->list
      (lambda (_%h104712%_)
        (let* ((_%h104715%_ _%h104712%_) (_%lst104724%_ '()))
          (&HashTable-for-each
           _%h104715%_
           (lambda (_%k104726%_ _%v104727%_)
             (set! _%lst104724%_
                   (cons (cons _%k104726%_ _%v104727%_) _%lst104724%_))))
          _%lst104724%_)))
    (define hash->plist
      (lambda (_%h104694%_)
        (let* ((_%h104700%_
                (let ((_%$obj104697%_ _%h104694%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104697%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104697%_)))
                           '#t)
                      _%$obj104697%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104697%_)))))
               (_%h104702%_ _%h104700%_))
          (__hash->plist _%h104702%_))))
    (define __hash->plist
      (lambda (_%h104677%_)
        (let* ((_%h104680%_ _%h104677%_) (_%lst104689%_ '()))
          (&HashTable-for-each
           _%h104680%_
           (lambda (_%k104691%_ _%v104692%_)
             (set! _%lst104689%_
                   (cons _%k104691%_ (cons _%v104692%_ _%lst104689%_)))))
          _%lst104689%_)))
    (define hash-for-each
      (lambda (_%proc104648%_ _%h104649%_)
        (if (procedure? _%proc104648%_)
            (let* ((_%proc104653%_ _%proc104648%_)
                   (_%h104665%_
                    (let ((_%$obj104662%_ _%h104649%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104662%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104662%_)))
                               '#t)
                          _%$obj104662%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104662%_)))))
                   (_%h104667%_ _%h104665%_))
              (__hash-for-each _%proc104653%_ _%h104667%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.22-568.26"
               'contract:
               'procedure?
               'value:
               _%proc104648%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc104627%_ _%h104628%_)
        (let* ((_%proc104631%_ _%proc104627%_) (_%h104639%_ _%h104628%_))
          (&HashTable-for-each _%h104639%_ _%proc104631%_))))
    (define hash-map
      (lambda (_%proc104598%_ _%h104599%_)
        (if (procedure? _%proc104598%_)
            (let* ((_%proc104603%_ _%proc104598%_)
                   (_%h104615%_
                    (let ((_%$obj104612%_ _%h104599%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104612%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104612%_)))
                               '#t)
                          _%$obj104612%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104612%_)))))
                   (_%h104617%_ _%h104615%_))
              (__hash-map _%proc104603%_ _%h104617%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@571.17-571.21"
               'contract:
               'procedure?
               'value:
               _%proc104598%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc104572%_ _%h104573%_)
        (let* ((_%proc104576%_ _%proc104572%_)
               (_%h104584%_ _%h104573%_)
               (_%result104593%_ '()))
          (&HashTable-for-each
           _%h104584%_
           (lambda (_%k104595%_ _%v104596%_)
             (set! _%result104593%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc104576%_ _%k104595%_ _%v104596%_))
                         _%result104593%_))))
          _%result104593%_)))
    (define hash-fold
      (lambda (_%proc104542%_ _%iv104543%_ _%h104544%_)
        (if (procedure? _%proc104542%_)
            (let* ((_%proc104548%_ _%proc104542%_)
                   (_%h104560%_
                    (let ((_%$obj104557%_ _%h104544%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104557%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104557%_)))
                               '#t)
                          _%$obj104557%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104557%_)))))
                   (_%h104562%_ _%h104560%_))
              (__hash-fold _%proc104548%_ _%iv104543%_ _%h104562%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@576.18-576.22"
               'contract:
               'procedure?
               'value:
               _%proc104542%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc104515%_ _%iv104516%_ _%h104517%_)
        (let* ((_%proc104520%_ _%proc104515%_)
               (_%h104528%_ _%h104517%_)
               (_%result104537%_ _%iv104516%_))
          (&HashTable-for-each
           _%h104528%_
           (lambda (_%k104539%_ _%v104540%_)
             (set! _%result104537%_
                   (let ()
                     (declare (not safe))
                     (_%proc104520%_
                      _%k104539%_
                      _%v104540%_
                      _%result104537%_)))))
          _%result104537%_)))
    (define hash-find__%
      (lambda (_%proc104473%_ _%h104474%_ _%default-value104475%_)
        (if (procedure? _%proc104473%_)
            (let* ((_%proc104479%_ _%proc104473%_)
                   (_%h104491%_
                    (let ((_%$obj104488%_ _%h104474%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104488%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104488%_)))
                               '#t)
                          _%$obj104488%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104488%_)))))
                   (_%h104493%_ _%h104491%_))
              (__hash-find__%
               _%proc104479%_
               _%h104493%_
               _%default-value104475%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@581.18-581.22"
               'contract:
               'procedure?
               'value:
               _%proc104473%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc104506%_ _%h104507%_)
        (let ((_%default-value104509%_ '#f))
          (hash-find__% _%proc104506%_ _%h104507%_ _%default-value104509%_))))
    (define hash-find
      (lambda _g108550_
        (let ((_g108549_ (let () (declare (not safe)) (##length _g108550_))))
          (cond ((let () (declare (not safe)) (##fx= _g108549_ 2))
                 (apply hash-find__0 _g108550_))
                ((let () (declare (not safe)) (##fx= _g108549_ 3))
                 (apply hash-find__% _g108550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108550_))))))
    (define __hash-find__%
      (lambda (_%proc104430%_ _%h104431%_ _%default-value104432%_)
        (let* ((_%proc104435%_ _%proc104430%_)
               (_%h104443%_ _%h104431%_)
               (__tmp108551
                (lambda (_%return104452%_)
                  (&HashTable-for-each
                   _%h104443%_
                   (lambda (_%k104454%_ _%v104455%_)
                     (let ((_%$e104457%_
                            (let ()
                              (declare (not safe))
                              (_%proc104435%_ _%k104454%_ _%v104455%_))))
                       (if _%$e104457%_
                           (_%return104452%_ _%$e104457%_)
                           '#!void))))
                  _%default-value104432%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp108551))))
    (define __hash-find__0
      (lambda (_%proc104463%_ _%h104464%_)
        (let ((_%default-value104466%_ '#f))
          (__hash-find__%
           _%proc104463%_
           _%h104464%_
           _%default-value104466%_))))
    (define __hash-find
      (lambda _g108553_
        (let ((_g108552_ (let () (declare (not safe)) (##length _g108553_))))
          (cond ((let () (declare (not safe)) (##fx= _g108552_ 2))
                 (apply __hash-find__0 _g108553_))
                ((let () (declare (not safe)) (##fx= _g108552_ 3))
                 (apply __hash-find__% _g108553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g108553_))))))
    (define hash-keys
      (lambda (_%h104411%_)
        (let* ((_%h104417%_
                (let ((_%$obj104414%_ _%h104411%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104414%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104414%_)))
                           '#t)
                      _%$obj104414%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104414%_)))))
               (_%h104419%_ _%h104417%_))
          (__hash-keys _%h104419%_))))
    (define __hash-keys
      (lambda (_%h104394%_)
        (let* ((_%h104397%_ _%h104394%_) (_%result104406%_ '()))
          (&HashTable-for-each
           _%h104397%_
           (lambda (_%k104408%_ _%v104409%_)
             (set! _%result104406%_ (cons _%k104408%_ _%result104406%_))))
          _%result104406%_)))
    (define hash-values
      (lambda (_%h104376%_)
        (let* ((_%h104382%_
                (let ((_%$obj104379%_ _%h104376%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104379%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104379%_)))
                           '#t)
                      _%$obj104379%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104379%_)))))
               (_%h104384%_ _%h104382%_))
          (__hash-values _%h104384%_))))
    (define __hash-values
      (lambda (_%h104359%_)
        (let* ((_%h104362%_ _%h104359%_) (_%result104371%_ '()))
          (&HashTable-for-each
           _%h104362%_
           (lambda (_%k104373%_ _%v104374%_)
             (set! _%result104371%_ (cons _%v104374%_ _%result104371%_))))
          _%result104371%_)))
    (define hash-copy
      (lambda (_%h104341%_)
        (let* ((_%h104347%_
                (let ((_%$obj104344%_ _%h104341%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104344%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104344%_)))
                           '#t)
                      _%$obj104344%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104344%_)))))
               (_%h104349%_ _%h104347%_))
          (__hash-copy _%h104349%_))))
    (define __hash-copy
      (lambda (_%h104329%_)
        (let ((_%h104332%_ _%h104329%_)) (__HashTable-copy _%h104332%_))))
    (define hash-clear!
      (lambda (_%h104311%_)
        (let* ((_%h104317%_
                (let ((_%$obj104314%_ _%h104311%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104314%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104314%_)))
                           '#t)
                      _%$obj104314%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104314%_)))))
               (_%h104319%_ _%h104317%_))
          (__hash-clear! _%h104319%_))))
    (define __hash-clear!
      (lambda (_%h104299%_)
        (let ((_%h104302%_ _%h104299%_)) (&HashTable-clear! _%h104302%_))))
    (define hash-merge
      (lambda (_%h104280%_ . _%rest104281%_)
        (let* ((_%h104287%_
                (let ((_%$obj104284%_ _%h104280%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104284%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104284%_)))
                           '#t)
                      _%$obj104284%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104284%_)))))
               (_%h104289%_ _%h104287%_))
          (declare (not safe))
          (##apply __hash-merge _%h104289%_ _%rest104281%_))))
    (define __hash-merge
      (lambda (_%h104265%_ . _%rest104266%_)
        (let* ((_%h104269%_ _%h104265%_)
               (_%copy104278%_ (__HashTable-copy _%h104269%_)))
          (apply hash-merge! _%copy104278%_ _%rest104266%_)
          _%copy104278%_)))
    (define hash-merge!
      (lambda (_%h104246%_ . _%rest104247%_)
        (let* ((_%h104253%_
                (let ((_%$obj104250%_ _%h104246%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104250%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104250%_)))
                           '#t)
                      _%$obj104250%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104250%_)))))
               (_%h104255%_ _%h104253%_))
          (declare (not safe))
          (##apply __hash-merge! _%h104255%_ _%rest104247%_))))
    (define __hash-merge!
      (lambda (_%h104209%_ . _%rest104210%_)
        (let ((_%h104213%_ _%h104209%_))
          (let ((__tmp108554
                 (lambda (_%hr104222%_)
                   (let* ((_%hr104228%_
                           (let ((_%$obj104225%_ _%hr104222%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj104225%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj104225%_)))
                                      '#t)
                                 _%$obj104225%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj104225%_)))))
                          (_%hr104230%_ _%hr104228%_))
                     (&HashTable-for-each
                      _%hr104230%_
                      (lambda (_%k104243%_ _%v104244%_)
                        (if (__hash-key? _%h104213%_ _%k104243%_)
                            '#!void
                            (&HashTable-set!
                             _%h104213%_
                             _%k104243%_
                             _%v104244%_))))))))
            (declare (not safe))
            (##for-each __tmp108554 _%rest104210%_))
          _%h104213%_)))))
