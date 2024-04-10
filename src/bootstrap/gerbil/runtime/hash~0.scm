(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712757954)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106652 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106652
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106632%_
        (apply make-instance UnboundKeyError::t _%$args106632%_)))
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
      (lambda (_%where106506%_ _%message106507%_ . _%irritants106508%_)
        (let ((__tmp106653
               (let ((__obj106646
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106646
                  _%message106507%_
                  'where:
                  _%where106506%_
                  'irritants:
                  _%irritants106508%_)
                 __obj106646)))
          (declare (not safe))
          (raise __tmp106653))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106654 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106654
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
      (lambda (_%obj106504%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106504%_))))
    (define try-HashTable
      (lambda (_%obj106502%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106502%_))))
    (define HashTable?
      (lambda (_%obj106500%_)
        (let ((__tmp106655
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106500%_ __tmp106655))))
    (define is-HashTable?
      (lambda (_%obj106498%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106498%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106482%_)
        (let* ((_%self106487%_
                (let ((_%$obj106484%_ _%self106482%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106484%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106484%_)))
                           '#t)
                      _%$obj106484%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106484%_)))))
               (_%self106489%_ _%self106487%_))
          (&HashTable-clear! _%self106489%_))))
    (define &HashTable-clear!
      (lambda (_%self106467%_)
        (let ((_%self106469%_ _%self106467%_))
          (declare (not safe))
          (let ((_%obj106479%_
                 (##unchecked-structure-ref _%self106469%_ '1 '#f 'clear!))
                (_%f106480%_
                 (##unchecked-structure-ref _%self106469%_ '2 '#f 'clear!)))
            (_%f106480%_ _%obj106479%_)))))
    (define HashTable-copy
      (lambda (_%self106451%_)
        (let* ((_%self106456%_
                (let ((_%$obj106453%_ _%self106451%_))
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
          (__HashTable-copy _%self106458%_))))
    (define __HashTable-copy
      (lambda (_%self106438%_)
        (let* ((_%self106440%_ _%self106438%_)
               (_%$obj106448%_ (&HashTable-copy _%self106440%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj106448%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj106448%_)))
                   '#t)
              _%$obj106448%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj106448%_))))))
    (define &HashTable-copy
      (lambda (_%self106423%_)
        (let ((_%self106425%_ _%self106423%_))
          (declare (not safe))
          (let ((_%obj106435%_
                 (##unchecked-structure-ref _%self106425%_ '1 '#f 'copy))
                (_%f106436%_
                 (##unchecked-structure-ref _%self106425%_ '3 '#f 'copy)))
            (_%f106436%_ _%obj106435%_)))))
    (define HashTable-delete!
      (lambda (_%self106406%_ _%key106407%_)
        (let* ((_%self106412%_
                (let ((_%$obj106409%_ _%self106406%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106409%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106409%_)))
                           '#t)
                      _%$obj106409%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106409%_)))))
               (_%self106414%_ _%self106412%_))
          (&HashTable-delete! _%self106414%_ _%key106407%_))))
    (define &HashTable-delete!
      (lambda (_%self106390%_ _%key106391%_)
        (let ((_%self106393%_ _%self106390%_))
          (declare (not safe))
          (let ((_%obj106403%_
                 (##unchecked-structure-ref _%self106393%_ '1 '#f 'delete!))
                (_%f106404%_
                 (##unchecked-structure-ref _%self106393%_ '4 '#f 'delete!)))
            (_%f106404%_ _%obj106403%_ _%key106391%_)))))
    (define HashTable-for-each
      (lambda (_%self106363%_ _%proc106364%_)
        (let* ((_%self106369%_
                (let ((_%$obj106366%_ _%self106363%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106366%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106366%_)))
                           '#t)
                      _%$obj106366%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106366%_)))))
               (_%self106371%_ _%self106369%_))
          (if (procedure? _%proc106364%_)
              (let ((_%proc106380%_ _%proc106364%_))
                (&HashTable-for-each _%self106371%_ _%proc106380%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106364%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self106339%_ _%proc106340%_)
        (let* ((_%self106342%_ _%self106339%_) (_%proc106349%_ _%proc106340%_))
          (declare (not safe))
          (let ((_%obj106360%_
                 (##unchecked-structure-ref _%self106342%_ '1 '#f 'for-each))
                (_%f106361%_
                 (##unchecked-structure-ref _%self106342%_ '5 '#f 'for-each)))
            (_%f106361%_ _%obj106360%_ _%proc106349%_)))))
    (define HashTable-length
      (lambda (_%self106323%_)
        (let* ((_%self106328%_
                (let ((_%$obj106325%_ _%self106323%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106325%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106325%_)))
                           '#t)
                      _%$obj106325%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106325%_)))))
               (_%self106330%_ _%self106328%_))
          (__HashTable-length _%self106330%_))))
    (define __HashTable-length
      (lambda (_%self106310%_)
        (let* ((_%self106312%_ _%self106310%_)
               (_%val106320%_ (&HashTable-length _%self106312%_)))
          (if '#t
              _%val106320%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val106320%_))))))
    (define &HashTable-length
      (lambda (_%self106295%_)
        (let ((_%self106297%_ _%self106295%_))
          (declare (not safe))
          (let ((_%obj106307%_
                 (##unchecked-structure-ref _%self106297%_ '1 '#f 'length))
                (_%f106308%_
                 (##unchecked-structure-ref _%self106297%_ '6 '#f 'length)))
            (_%f106308%_ _%obj106307%_)))))
    (define HashTable-ref
      (lambda (_%self106277%_ _%key106278%_ _%default106279%_)
        (let* ((_%self106284%_
                (let ((_%$obj106281%_ _%self106277%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106281%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106281%_)))
                           '#t)
                      _%$obj106281%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106281%_)))))
               (_%self106286%_ _%self106284%_))
          (&HashTable-ref _%self106286%_ _%key106278%_ _%default106279%_))))
    (define &HashTable-ref
      (lambda (_%self106260%_ _%key106261%_ _%default106262%_)
        (let ((_%self106264%_ _%self106260%_))
          (declare (not safe))
          (let ((_%obj106274%_
                 (##unchecked-structure-ref _%self106264%_ '1 '#f 'ref))
                (_%f106275%_
                 (##unchecked-structure-ref _%self106264%_ '7 '#f 'ref)))
            (_%f106275%_ _%obj106274%_ _%key106261%_ _%default106262%_)))))
    (define HashTable-set!
      (lambda (_%self106242%_ _%key106243%_ _%value106244%_)
        (let* ((_%self106249%_
                (let ((_%$obj106246%_ _%self106242%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106246%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106246%_)))
                           '#t)
                      _%$obj106246%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106246%_)))))
               (_%self106251%_ _%self106249%_))
          (&HashTable-set! _%self106251%_ _%key106243%_ _%value106244%_))))
    (define &HashTable-set!
      (lambda (_%self106225%_ _%key106226%_ _%value106227%_)
        (let ((_%self106229%_ _%self106225%_))
          (declare (not safe))
          (let ((_%obj106239%_
                 (##unchecked-structure-ref _%self106229%_ '1 '#f 'set!))
                (_%f106240%_
                 (##unchecked-structure-ref _%self106229%_ '8 '#f 'set!)))
            (_%f106240%_ _%obj106239%_ _%key106226%_ _%value106227%_)))))
    (define HashTable-update!
      (lambda (_%self106196%_ _%key106197%_ _%proc106198%_ _%default106199%_)
        (let* ((_%self106204%_
                (let ((_%$obj106201%_ _%self106196%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106201%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106201%_)))
                           '#t)
                      _%$obj106201%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106201%_)))))
               (_%self106206%_ _%self106204%_))
          (if (procedure? _%proc106198%_)
              (let ((_%proc106215%_ _%proc106198%_))
                (&HashTable-update!
                 _%self106206%_
                 _%key106197%_
                 _%proc106215%_
                 _%default106199%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106198%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self106168%_ _%key106169%_ _%proc106170%_ _%default106171%_)
        (let* ((_%self106173%_ _%self106168%_) (_%proc106180%_ _%proc106170%_))
          (declare (not safe))
          (let ((_%obj106191%_
                 (##unchecked-structure-ref _%self106173%_ '1 '#f 'update!))
                (_%f106193%_
                 (##unchecked-structure-ref _%self106173%_ '9 '#f 'update!)))
            (_%f106193%_
             _%obj106191%_
             _%key106169%_
             _%proc106180%_
             _%default106171%_)))))
    (define Locker::t
      (let ((__tmp106656 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106656
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
      (lambda (_%obj106166%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj106166%_))))
    (define try-Locker
      (lambda (_%obj106164%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj106164%_))))
    (define Locker?
      (lambda (_%obj106162%_)
        (let ((__tmp106657
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106162%_ __tmp106657))))
    (define is-Locker?
      (lambda (_%obj106160%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj106160%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self106144%_)
        (let* ((_%self106149%_
                (let ((_%$obj106146%_ _%self106144%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106146%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106146%_)))
                           '#t)
                      _%$obj106146%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106146%_)))))
               (_%self106151%_ _%self106149%_))
          (&Locker-read-lock! _%self106151%_))))
    (define &Locker-read-lock!
      (lambda (_%self106129%_)
        (let ((_%self106131%_ _%self106129%_))
          (declare (not safe))
          (let ((_%obj106141%_
                 (##unchecked-structure-ref _%self106131%_ '1 '#f 'read-lock!))
                (_%f106142%_
                 (##unchecked-structure-ref
                  _%self106131%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f106142%_ _%obj106141%_)))))
    (define Locker-read-unlock!
      (lambda (_%self106113%_)
        (let* ((_%self106118%_
                (let ((_%$obj106115%_ _%self106113%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106115%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106115%_)))
                           '#t)
                      _%$obj106115%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106115%_)))))
               (_%self106120%_ _%self106118%_))
          (&Locker-read-unlock! _%self106120%_))))
    (define &Locker-read-unlock!
      (lambda (_%self106098%_)
        (let ((_%self106100%_ _%self106098%_))
          (declare (not safe))
          (let ((_%obj106110%_
                 (##unchecked-structure-ref
                  _%self106100%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f106111%_
                 (##unchecked-structure-ref
                  _%self106100%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f106111%_ _%obj106110%_)))))
    (define Locker-write-lock!
      (lambda (_%self106082%_)
        (let* ((_%self106087%_
                (let ((_%$obj106084%_ _%self106082%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106084%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106084%_)))
                           '#t)
                      _%$obj106084%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106084%_)))))
               (_%self106089%_ _%self106087%_))
          (&Locker-write-lock! _%self106089%_))))
    (define &Locker-write-lock!
      (lambda (_%self106067%_)
        (let ((_%self106069%_ _%self106067%_))
          (declare (not safe))
          (let ((_%obj106079%_
                 (##unchecked-structure-ref
                  _%self106069%_
                  '1
                  '#f
                  'write-lock!))
                (_%f106080%_
                 (##unchecked-structure-ref
                  _%self106069%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f106080%_ _%obj106079%_)))))
    (define Locker-write-unlock!
      (lambda (_%self106051%_)
        (let* ((_%self106056%_
                (let ((_%$obj106053%_ _%self106051%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106053%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106053%_)))
                           '#t)
                      _%$obj106053%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106053%_)))))
               (_%self106058%_ _%self106056%_))
          (&Locker-write-unlock! _%self106058%_))))
    (define &Locker-write-unlock!
      (lambda (_%self106034%_)
        (let ((_%self106036%_ _%self106034%_))
          (declare (not safe))
          (let ((_%obj106046%_
                 (##unchecked-structure-ref
                  _%self106036%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f106048%_
                 (##unchecked-structure-ref
                  _%self106036%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f106048%_ _%obj106046%_)))))
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
      (lambda (_%table106027%_
               _%key106028%_
               _%update106029%_
               _%default106030%_)
        (let ((_%result106032%_
               (table-ref _%table106027%_ _%key106028%_ _%default106030%_)))
          (table-set!
           _%table106027%_
           _%key106028%_
           (_%update106029%_ _%default106030%_)))))
    (define gambit-table-for-each
      (lambda (_%table106024%_ _%proc106025%_)
        (table-for-each _%proc106025%_ _%table106024%_)))
    (define gambit-table-clear!
      (lambda (_%table106022%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table106022%_ '0 '5 '#f '#f))))
    (let ((__tmp106658 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106658 'ref table-ref))
    (let ((__tmp106659 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106659 'set! table-set!))
    (let ((__tmp106660 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106660 'update! gambit-table-update!))
    (let ((__tmp106661 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106661 'delete! table-set!))
    (let ((__tmp106662 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106662 'for-each gambit-table-for-each))
    (let ((__tmp106663 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106663 'length table-length))
    (let ((__tmp106664 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106664 'copy table-copy))
    (let ((__tmp106665 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106665 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots106004%_ '(table count free hash test seed))
             (_%slot-vector106006%_ (list->vector (cons '#f _%slots106004%_)))
             (_%slot-table106013%_
              (let ((_%slot-table106008%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106668
                       (lambda (_%slot106010%_ _%field106011%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106008%_
                            _%slot106010%_
                            _%field106011%_))
                         (let ((__tmp106669
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106010%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106008%_
                            __tmp106669
                            _%field106011%_))))
                      (__tmp106666
                       (let ((__tmp106667
                              (let ()
                                (declare (not safe))
                                (##length _%slots106004%_))))
                         (declare (not safe))
                         (##iota __tmp106667 '1))))
                  (declare (not safe))
                  (##for-each __tmp106668 _%slots106004%_ __tmp106666))
                _%slot-table106008%_))
             (_%flags106015%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106017%_ '#())
             (_%properties106019%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106004%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106670 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags106015%_
         __table::t
         _%fields106017%_
         __tmp106670
         _%slot-vector106006%_
         _%slot-table106013%_
         _%properties106019%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots105986%_ '(gcht immediate))
             (_%slot-vector105988%_ (list->vector (cons '#f _%slots105986%_)))
             (_%slot-table105995%_
              (let ((_%slot-table105990%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106673
                       (lambda (_%slot105992%_ _%field105993%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105990%_
                            _%slot105992%_
                            _%field105993%_))
                         (let ((__tmp106674
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105992%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105990%_
                            __tmp106674
                            _%field105993%_))))
                      (__tmp106671
                       (let ((__tmp106672
                              (let ()
                                (declare (not safe))
                                (##length _%slots105986%_))))
                         (declare (not safe))
                         (##iota __tmp106672 '1))))
                  (declare (not safe))
                  (##for-each __tmp106673 _%slots105986%_ __tmp106671))
                _%slot-table105990%_))
             (_%flags105997%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105999%_ '#())
             (_%properties106001%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105986%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106675 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags105997%_
         __gc-table::t
         _%fields105999%_
         __tmp106675
         _%slot-vector105988%_
         _%slot-table105995%_
         _%properties106001%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp106677 (list))
            (__tmp106676
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106677
         '(table lock)
         __tmp106676
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args105983%_
        (apply make-instance locked-hash-table::t _%$args105983%_)))
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
      (let ((__tmp106679 (list))
            (__tmp106678
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106679
         '(table key-check)
         __tmp106678
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args105980%_
        (apply make-instance checked-hash-table::t _%$args105980%_)))
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
      (let ((__tmp106681 (list hash-table::t))
            (__tmp106680 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106681
         '()
         __tmp106680
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args105977%_
        (apply make-instance eq-hash-table::t _%$args105977%_)))
    (define eqv-hash-table::t
      (let ((__tmp106683 (list hash-table::t))
            (__tmp106682 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106683
         '()
         __tmp106682
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args105974%_
        (apply make-instance eqv-hash-table::t _%$args105974%_)))
    (define symbol-hash-table::t
      (let ((__tmp106685 (list hash-table::t))
            (__tmp106684 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106685
         '()
         __tmp106684
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args105971%_
        (apply make-instance symbol-hash-table::t _%$args105971%_)))
    (define string-hash-table::t
      (let ((__tmp106687 (list hash-table::t))
            (__tmp106686 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106687
         '()
         __tmp106686
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args105968%_
        (apply make-instance string-hash-table::t _%$args105968%_)))
    (define immediate-hash-table::t
      (let ((__tmp106689 (list hash-table::t))
            (__tmp106688 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106689
         '()
         __tmp106688
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args105965%_
        (apply make-instance immediate-hash-table::t _%$args105965%_)))
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
      (lambda (_%obj105963%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj105963%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj105961%_) (is-HashTable? _%obj105961%_)))
    (define _%locked-hash-table::ref102016%_
      (lambda (_%self105937%_ _%key105939%_ _%default105940%_)
        (let ((_%self105943%_ _%self105937%_))
          (let ((_%h105953%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105943%_ '1 '#f '#f)))
                (_%l105955%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105943%_ '2 '#f '#f))))
            (let ((__tmp106692 (lambda () (&Locker-read-lock! _%l105955%_)))
                  (__tmp106691
                   (lambda ()
                     (&HashTable-ref
                      _%h105953%_
                      _%key105939%_
                      _%default105940%_)))
                  (__tmp106690 (lambda () (&Locker-read-unlock! _%l105955%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106692 __tmp106691 __tmp106690))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref102016%_
       '#f))
    (define _%locked-hash-table::set!102018%_
      (lambda (_%self105790%_ _%key105792%_ _%value105793%_)
        (let ((_%self105796%_ _%self105790%_))
          (let ((_%h105806%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105796%_ '1 '#f '#f)))
                (_%l105808%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105796%_ '2 '#f '#f))))
            (let ((__tmp106695 (lambda () (&Locker-write-lock! _%l105808%_)))
                  (__tmp106694
                   (lambda ()
                     (&HashTable-set!
                      _%h105806%_
                      _%key105792%_
                      _%value105793%_)))
                  (__tmp106693
                   (lambda () (&Locker-write-unlock! _%l105808%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106695 __tmp106694 __tmp106693))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!102018%_
       '#f))
    (define _%locked-hash-table::update!102020%_
      (lambda (_%self105642%_ _%key105644%_ _%update105645%_ _%default105646%_)
        (let ((_%self105649%_ _%self105642%_))
          (let ((_%h105659%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105649%_ '1 '#f '#f)))
                (_%l105661%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105649%_ '2 '#f '#f))))
            (let ((__tmp106698 (lambda () (&Locker-write-lock! _%l105661%_)))
                  (__tmp106697
                   (lambda ()
                     (&HashTable-update!
                      _%h105659%_
                      _%key105644%_
                      _%update105645%_
                      _%default105646%_)))
                  (__tmp106696
                   (lambda () (&Locker-write-unlock! _%l105661%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106698 __tmp106697 __tmp106696))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!102020%_
       '#f))
    (define _%locked-hash-table::delete!102022%_
      (lambda (_%self105496%_ _%key105498%_)
        (let ((_%self105501%_ _%self105496%_))
          (let ((_%h105511%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105501%_ '1 '#f '#f)))
                (_%l105513%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105501%_ '2 '#f '#f))))
            (let ((__tmp106701 (lambda () (&Locker-write-lock! _%l105513%_)))
                  (__tmp106700
                   (lambda () (&HashTable-delete! _%h105511%_ _%key105498%_)))
                  (__tmp106699
                   (lambda () (&Locker-write-unlock! _%l105513%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106701 __tmp106700 __tmp106699))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!102022%_
       '#f))
    (define _%locked-hash-table::for-each102024%_
      (lambda (_%self105350%_ _%proc105352%_)
        (let ((_%self105355%_ _%self105350%_))
          (let ((_%h105365%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105355%_ '1 '#f '#f)))
                (_%l105367%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105355%_ '2 '#f '#f))))
            (let ((__tmp106704 (lambda () (&Locker-read-lock! _%l105367%_)))
                  (__tmp106703
                   (lambda ()
                     (&HashTable-for-each _%h105365%_ _%proc105352%_)))
                  (__tmp106702 (lambda () (&Locker-read-unlock! _%l105367%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106704 __tmp106703 __tmp106702))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each102024%_
       '#f))
    (define _%locked-hash-table::length102026%_
      (lambda (_%self105205%_)
        (let ((_%self105209%_ _%self105205%_))
          (let ((_%h105219%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105209%_ '1 '#f '#f)))
                (_%l105221%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105209%_ '2 '#f '#f))))
            (let ((__tmp106707 (lambda () (&Locker-read-lock! _%l105221%_)))
                  (__tmp106706 (lambda () (&HashTable-length _%h105219%_)))
                  (__tmp106705 (lambda () (&Locker-read-unlock! _%l105221%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106707 __tmp106706 __tmp106705))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length102026%_
       '#f))
    (define _%locked-hash-table::copy102028%_
      (lambda (_%self105060%_)
        (let ((_%self105064%_ _%self105060%_))
          (let ((_%h105074%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105064%_ '1 '#f '#f)))
                (_%l105076%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105064%_ '2 '#f '#f))))
            (let ((__tmp106710 (lambda () (&Locker-read-lock! _%l105076%_)))
                  (__tmp106709 (lambda () (&HashTable-copy _%h105074%_)))
                  (__tmp106708 (lambda () (&Locker-read-unlock! _%l105076%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106710 __tmp106709 __tmp106708))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy102028%_
       '#f))
    (define _%locked-hash-table::clear!102030%_
      (lambda (_%self104915%_)
        (let ((_%self104919%_ _%self104915%_))
          (let ((_%h104929%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104919%_ '1 '#f '#f)))
                (_%l104931%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104919%_ '2 '#f '#f))))
            (let ((__tmp106713 (lambda () (&Locker-write-lock! _%l104931%_)))
                  (__tmp106712 (lambda () (&HashTable-clear! _%h104929%_)))
                  (__tmp106711
                   (lambda () (&Locker-write-unlock! _%l104931%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106713 __tmp106712 __tmp106711))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!102030%_
       '#f))
    (let ((__tmp106714 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106714 'read-lock! mutex-lock!))
    (let ((__tmp106715 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106715 'read-unlock! mutex-unlock!))
    (let ((__tmp106716 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106716 'write-lock! mutex-lock!))
    (let ((__tmp106717 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106717 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref102308%_
      (lambda (_%self104768%_ _%key104769%_ _%default104770%_)
        (let ((_%self104773%_ _%self104768%_))
          (let ((_%h104783%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104773%_ '1 '#f '#f)))
                (_%key?104785%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104773%_ '2 '#f '#f))))
            ((lambda (_%g104787104789%_)
               (if (_%g104787104789%_ _%key104769%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104769%_))))
             _%key?104785%_)
            (&HashTable-ref _%h104783%_ _%key104769%_ _%default104770%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref102308%_
       '#f))
    (define _%checked-hash-table::set!102310%_
      (lambda (_%self104621%_ _%key104622%_ _%value104623%_)
        (let ((_%self104626%_ _%self104621%_))
          (let ((_%h104636%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104626%_ '1 '#f '#f)))
                (_%key?104638%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104626%_ '2 '#f '#f))))
            ((lambda (_%g104640104642%_)
               (if (_%g104640104642%_ _%key104622%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104622%_))))
             _%key?104638%_)
            (&HashTable-set! _%h104636%_ _%key104622%_ _%value104623%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!102310%_
       '#f))
    (define _%checked-hash-table::update!102312%_
      (lambda (_%self104475%_ _%key104476%_ _%update104477%_ _%default104478%_)
        (let ((_%self104481%_ _%self104475%_))
          (let ((_%h104491%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104481%_ '1 '#f '#f)))
                (_%key?104493%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104481%_ '2 '#f '#f))))
            ((lambda (_%key?104496%_)
               (if (_%key?104496%_ _%key104476%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104476%_)))
               (if (procedure? _%update104477%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104477%_))))
             _%key?104493%_)
            (&HashTable-update!
             _%h104491%_
             _%key104476%_
             _%update104477%_
             _%default104478%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!102312%_
       '#f))
    (define _%checked-hash-table::delete!102314%_
      (lambda (_%self104329%_ _%key104330%_)
        (let ((_%self104333%_ _%self104329%_))
          (let ((_%h104343%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104333%_ '1 '#f '#f)))
                (_%key?104345%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104333%_ '2 '#f '#f))))
            ((lambda (_%g104347104349%_)
               (if (_%g104347104349%_ _%key104330%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104330%_))))
             _%key?104345%_)
            (&HashTable-delete! _%h104343%_ _%key104330%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!102314%_
       '#f))
    (define _%checked-hash-table::for-each102316%_
      (lambda (_%self104185%_ _%proc104186%_)
        (let ((_%self104189%_ _%self104185%_))
          (let ((_%h104199%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104189%_ '1 '#f '#f)))
                (_%key?104201%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104189%_ '2 '#f '#f))))
            ((lambda (_%_104204%_)
               (if (procedure? _%proc104186%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc104186%_))))
             _%key?104201%_)
            (&HashTable-for-each _%h104199%_ _%proc104186%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each102316%_
       '#f))
    (define _%checked-hash-table::length102318%_
      (lambda (_%self104044%_)
        (let ((_%self104047%_ _%self104044%_))
          (let ((_%h104057%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104047%_ '1 '#f '#f)))
                (_%key?104059%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104047%_ '2 '#f '#f))))
            (&HashTable-length _%h104057%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length102318%_
       '#f))
    (define _%checked-hash-table::copy102320%_
      (lambda (_%self103903%_)
        (let ((_%self103906%_ _%self103903%_))
          (let ((_%h103916%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103906%_ '1 '#f '#f)))
                (_%key?103918%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103906%_ '2 '#f '#f))))
            (&HashTable-copy _%h103916%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy102320%_
       '#f))
    (define _%checked-hash-table::clear!102322%_
      (lambda (_%self103762%_)
        (let ((_%self103765%_ _%self103762%_))
          (let ((_%h103775%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103765%_ '1 '#f '#f)))
                (_%key?103777%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103765%_ '2 '#f '#f))))
            (&HashTable-clear! _%h103775%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!102322%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103632%_
               _%count103633%_
               _%free103634%_
               _%hash103635%_
               _%test103636%_
               _%seed103637%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103632%_
           _%count103633%_
           _%free103634%_
           _%hash103635%_
           _%test103636%_
           _%seed103637%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords103455%_
               _%size-hint103445103456%_
               _%seed103446103458%_
               _%test103447103460%_
               _%hash103448103462%_
               _%lock103449103464%_
               _%check103450103466%_
               _%weak-keys103451103468%_
               _%weak-values103452103470%_)
        (let* ((_%size-hint103473%_
                (if (eq? _%size-hint103445103456%_ absent-value)
                    '#f
                    _%size-hint103445103456%_))
               (_%seed103475%_
                (if (eq? _%seed103446103458%_ absent-value)
                    '#f
                    _%seed103446103458%_))
               (_%test103477%_
                (if (eq? _%test103447103460%_ absent-value)
                    equal?
                    _%test103447103460%_))
               (_%hash103479%_
                (if (eq? _%hash103448103462%_ absent-value)
                    '#f
                    _%hash103448103462%_))
               (_%lock103481%_
                (if (eq? _%lock103449103464%_ absent-value)
                    '#f
                    _%lock103449103464%_))
               (_%check103483%_
                (if (eq? _%check103450103466%_ absent-value)
                    '#f
                    _%check103450103466%_))
               (_%weak-keys103485%_
                (if (eq? _%weak-keys103451103468%_ absent-value)
                    '#f
                    _%weak-keys103451103468%_))
               (_%weak-values103487%_
                (if (eq? _%weak-values103452103470%_ absent-value)
                    '#f
                    _%weak-values103452103470%_)))
          (letrec ((_%table-seed103489%_
                    (lambda ()
                      (if (fixnum? _%seed103475%_)
                          _%seed103475%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103490%_
                    (lambda (_%ht103610%_)
                      (if _%lock103481%_
                          (let ((_%$obj103615%_
                                 (let ((__tmp106718
                                        (let ((_%$obj103612%_ _%lock103481%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103612%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103612%_)))
                                                   '#t)
                                              _%$obj103612%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103612%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103610%_
                                    __tmp106718))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103615%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103615%_)))
                                     '#t)
                                _%$obj103615%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103615%_))))
                          _%ht103610%_)))
                   (_%wrap-checked103491%_
                    (lambda (_%ht103604%_ _%implicit103605%_)
                      (if _%check103483%_
                          (let ((_%$obj103607%_
                                 (let ((__tmp106719
                                        (if (procedure? _%check103483%_)
                                            _%check103483%_
                                            _%implicit103605%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103604%_
                                    __tmp106719))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103607%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103607%_)))
                                     '#t)
                                _%$obj103607%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103607%_))))
                          _%ht103604%_)))
                   (_%make103492%_
                    (lambda (_%kons103589%_
                             _%key?103590%_
                             _%hash103591%_
                             _%test103592%_)
                      (let* ((_%size103594%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103473%_)))
                             (_%table103596%_
                              (let ((__tmp106720 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103594%_ __tmp106720)))
                             (_%ht103601%_
                              (let ((_%$obj103598%_
                                     (_%kons103589%_
                                      _%table103596%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103594%_ '2))
                                      _%hash103591%_
                                      _%test103592%_
                                      (_%table-seed103489%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103598%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103598%_)))
                                         '#t)
                                    _%$obj103598%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103598%_))))))
                        (_%wrap-checked103491%_
                         (_%wrap-lock103490%_ _%ht103601%_)
                         _%key?103590%_))))
                   (_%make-gc-hash-table103493%_
                    (lambda ()
                      (let ((_%ht103587%_
                             (let ((_%$obj103584%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint103473%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj103584%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj103584%_)))
                                        '#t)
                                   _%$obj103584%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj103584%_))))))
                        (_%wrap-checked103491%_
                         (_%wrap-lock103490%_ _%ht103587%_)
                         true))))
                   (_%make-gambit-table103494%_
                    (lambda ()
                      (let* ((_%size103562%_
                              (let ((_%$e103559%_ _%size-hint103473%_))
                                (if _%$e103559%_
                                    _%$e103559%_
                                    (macro-absent-obj))))
                             (_%test103567%_
                              (let ((_%$e103564%_ _%test103477%_))
                                (if _%$e103564%_ _%$e103564%_ equal?)))
                             (_%hash103575%_
                              (let ((_%$e103569%_ _%hash103479%_))
                                (if _%$e103569%_
                                    _%$e103569%_
                                    (if (eq? _%test103567%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test103567%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht103580%_
                              (let ((_%$obj103577%_
                                     (make-table
                                      'size:
                                      _%size103562%_
                                      'test:
                                      _%test103567%_
                                      'hash:
                                      _%hash103575%_
                                      'weak-keys:
                                      _%weak-keys103485%_
                                      'weak-values:
                                      _%weak-values103487%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103577%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103577%_)))
                                         '#t)
                                    _%$obj103577%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103577%_))))))
                        (_%wrap-checked103491%_
                         (_%wrap-lock103490%_ _%ht103580%_)
                         true)))))
            (if (or _%weak-keys103485%_ _%weak-values103487%_)
                (_%make-gambit-table103494%_)
                (if (and (or (eq? _%test103477%_ eq?)
                             (eq? _%test103477%_ ##eq?))
                         (or (not _%hash103479%_)
                             (eq? _%hash103479%_ eq?-hash)
                             (eq? _%hash103479%_ eq-hash))
                         (not _%seed103475%_))
                    (_%make-gc-hash-table103493%_)
                    (if (and (or (eq? _%test103477%_ eq?)
                                 (eq? _%test103477%_ ##eq?))
                             (or (not _%hash103479%_)
                                 (eq? _%hash103479%_ eq?-hash)
                                 (eq? _%hash103479%_ eq-hash)))
                        (_%make103492%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test103477%_ eqv?)
                                     (eq? _%test103477%_ ##eqv?))
                                 (or (not _%hash103479%_)
                                     (eq? _%hash103479%_ eqv?-hash)
                                     (eq? _%hash103479%_ eqv-hash)))
                            (_%make103492%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test103477%_ eq?)
                                         (eq? _%test103477%_ ##eq?))
                                     (or (eq? _%hash103479%_ symbolic-hash)
                                         (eq? _%hash103479%_ ##symbol-hash)))
                                (_%make103492%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test103477%_ eq?)
                                             (eq? _%test103477%_ ##eq?))
                                         (eq? _%hash103479%_ immediate-hash))
                                    (_%make103492%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test103477%_ equal?)
                                                 (eq? _%test103477%_ ##equal?)
                                                 (eq? _%test103477%_ string=?)
                                                 (eq? _%test103477%_
                                                      ##string=?))
                                             (or (eq? _%hash103479%_
                                                      string-hash)
                                                 (eq? _%hash103479%_
                                                      ##string=?-hash)))
                                        (_%make103492%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test103477%_ equal?)
                                                 (not _%hash103479%_))
                                            (_%make103492%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (not (procedure?
                                                      _%test103477%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103477%_))
                                                (if (not (procedure?
                                                          _%hash103479%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103479%_))
                                                    (_%make103492%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash103479%_
                                                     _%test103477%_)))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103622%_ . _%args103623%_)
        (apply make-hash-table__%
               _%@@keywords103622%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103622%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103622%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103622%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103622%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103622%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103622%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103622%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103622%_
                  'weak-values:
                  absent-value))
               _%args103623%_)))
    (define make-hash-table
      (lambda _%args103453103629%_
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
               _%args103453103629%_)))
    (define make-hash-table-eq
      (lambda _%args103442%_
        (apply make-hash-table 'test: eq? _%args103442%_)))
    (define make-hash-table-eqv
      (lambda _%args103440%_
        (apply make-hash-table 'test: eqv? _%args103440%_)))
    (define make-hash-table-symbolic
      (lambda _%args103438%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103438%_)))
    (define make-hash-table-string
      (lambda _%args103436%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103436%_)))
    (define make-hash-table-immediate
      (lambda _%args103434%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103434%_)))
    (define list->hash-table
      (lambda (_%lst103431%_ . _%args103432%_)
        (list->hash-table!
         _%lst103431%_
         (apply make-hash-table
                'size:
                (length _%lst103431%_)
                _%args103432%_))))
    (define list->hash-table-eq
      (lambda (_%lst103428%_ . _%args103429%_)
        (list->hash-table!
         _%lst103428%_
         (apply make-hash-table-eq
                'size:
                (length _%lst103428%_)
                _%args103429%_))))
    (define list->hash-table-eqv
      (lambda (_%lst103425%_ . _%args103426%_)
        (list->hash-table!
         _%lst103425%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst103425%_)
                _%args103426%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst103422%_ . _%args103423%_)
        (list->hash-table!
         _%lst103422%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst103422%_)
                _%args103423%_))))
    (define list->hash-table-string
      (lambda (_%lst103419%_ . _%args103420%_)
        (list->hash-table!
         _%lst103419%_
         (apply make-hash-table-string
                'size:
                (length _%lst103419%_)
                _%args103420%_))))
    (define list->hash-table-immediate
      (lambda (_%lst103416%_ . _%args103417%_)
        (list->hash-table!
         _%lst103416%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst103416%_)
                _%args103417%_))))
    (define list->hash-table!
      (lambda (_%lst103383%_ _%h103384%_)
        (for-each
         (lambda (_%el103386%_)
           (let* ((_%el103387103394%_ _%el103386%_)
                  (_%E103389103398%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103387103394%_
                              '([k . v])))
                     '#!void))
                  (_%K103390103404%_
                   (lambda (_%v103401%_ _%k103402%_)
                     (&HashTable-set! _%h103384%_ _%k103402%_ _%v103401%_))))
             (if (let () (declare (not safe)) (##pair? _%el103387103394%_))
                 (let ((_%hd103391103407%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103387103394%_)))
                       (_%tl103392103409%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103387103394%_))))
                   (let* ((_%k103412%_ _%hd103391103407%_)
                          (_%v103414%_ _%tl103392103409%_))
                     (_%K103390103404%_ _%v103414%_ _%k103412%_)))
                 (_%E103389103398%_))))
         _%lst103383%_)
        _%h103384%_))
    (define plist->hash-table
      (lambda (_%lst103380%_ . _%args103381%_)
        (plist->hash-table!
         _%lst103380%_
         (apply make-hash-table
                'size:
                (length _%lst103380%_)
                _%args103381%_))))
    (define plist->hash-table-eq
      (lambda (_%lst103377%_ . _%args103378%_)
        (plist->hash-table!
         _%lst103377%_
         (apply make-hash-table-eq
                'size:
                (length _%lst103377%_)
                _%args103378%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst103374%_ . _%args103375%_)
        (plist->hash-table!
         _%lst103374%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst103374%_)
                _%args103375%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103371%_ . _%args103372%_)
        (plist->hash-table!
         _%lst103371%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst103371%_)
                _%args103372%_))))
    (define plist->hash-table-string
      (lambda (_%lst103368%_ . _%args103369%_)
        (plist->hash-table!
         _%lst103368%_
         (apply make-hash-table-string
                'size:
                (length _%lst103368%_)
                _%args103369%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst103365%_ . _%args103366%_)
        (plist->hash-table!
         _%lst103365%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst103365%_)
                _%args103366%_))))
    (define plist->hash-table!
      (lambda (_%lst103305%_ _%h103306%_)
        (let _%loop103308%_ ((_%rest103310%_ _%lst103305%_))
          (let* ((_%rest103311103323%_ _%rest103310%_)
                 (_%else103314103331%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst103305%_)))))
            (let ((_%K103317103346%_
                   (lambda (_%rest103342%_ _%val103343%_ _%key103344%_)
                     (&HashTable-set! _%h103306%_ _%key103344%_ _%val103343%_)
                     (_%loop103308%_ _%rest103342%_)))
                  (_%K103316103336%_ (lambda () _%h103306%_)))
              (let ((_%try-match103313103339%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest103311103323%_))
                           (_%K103316103336%_)
                           (_%else103314103331%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest103311103323%_))
                    (let ((_%tl103319103351%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest103311103323%_)))
                          (_%hd103318103349%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest103311103323%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl103319103351%_))
                          (let ((_%tl103321103358%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl103319103351%_)))
                                (_%hd103320103356%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl103319103351%_))))
                            (let ((_%key103354%_ _%hd103318103349%_)
                                  (_%val103361%_ _%hd103320103356%_)
                                  (_%rest103363%_ _%tl103321103358%_))
                              (_%K103317103346%_
                               _%rest103363%_
                               _%val103361%_
                               _%key103354%_)))
                          (_%else103314103331%_)))
                    (_%try-match103313103339%_))))))))
    (define hash-length
      (lambda (_%h103287%_)
        (let* ((_%h103293%_
                (let ((_%$obj103290%_ _%h103287%_))
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
          (__hash-length _%h103295%_))))
    (define __hash-length
      (lambda (_%h103275%_)
        (let ((_%h103278%_ _%h103275%_)) (__HashTable-length _%h103278%_))))
    (define hash-ref__%
      (lambda (_%h103243%_ _%key103244%_ _%default103245%_)
        (let* ((_%h103251%_
                (let ((_%$obj103248%_ _%h103243%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103248%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103248%_)))
                           '#t)
                      _%$obj103248%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103248%_)))))
               (_%h103253%_ _%h103251%_))
          (__hash-ref__% _%h103253%_ _%key103244%_ _%default103245%_))))
    (define hash-ref__0
      (lambda (_%h103266%_ _%key103267%_)
        (let ((_%default103269%_ (macro-absent-obj)))
          (hash-ref__% _%h103266%_ _%key103267%_ _%default103269%_))))
    (define hash-ref
      (lambda _g106722_
        (let ((_g106721_ (let () (declare (not safe)) (##length _g106722_))))
          (cond ((let () (declare (not safe)) (##fx= _g106721_ 2))
                 (apply hash-ref__0 _g106722_))
                ((let () (declare (not safe)) (##fx= _g106721_ 3))
                 (apply hash-ref__% _g106722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106722_))))))
    (define __hash-ref__%
      (lambda (_%h103214%_ _%key103215%_ _%default103216%_)
        (let* ((_%h103219%_ _%h103214%_)
               (_%result103228%_
                (&HashTable-ref _%h103219%_ _%key103215%_ _%default103216%_)))
          (if (eq? _%result103228%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h103219%_
               'key:
               _%key103215%_)
              _%result103228%_))))
    (define __hash-ref__0
      (lambda (_%h103233%_ _%key103234%_)
        (let ((_%default103236%_ (macro-absent-obj)))
          (__hash-ref__% _%h103233%_ _%key103234%_ _%default103236%_))))
    (define __hash-ref
      (lambda _g106724_
        (let ((_g106723_ (let () (declare (not safe)) (##length _g106724_))))
          (cond ((let () (declare (not safe)) (##fx= _g106723_ 2))
                 (apply __hash-ref__0 _g106724_))
                ((let () (declare (not safe)) (##fx= _g106723_ 3))
                 (apply __hash-ref__% _g106724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106724_))))))
    (define hash-get
      (lambda (_%h103194%_ _%key103195%_)
        (let* ((_%h103201%_
                (let ((_%$obj103198%_ _%h103194%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103198%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103198%_)))
                           '#t)
                      _%$obj103198%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103198%_)))))
               (_%h103203%_ _%h103201%_))
          (__hash-get _%h103203%_ _%key103195%_))))
    (define __hash-get
      (lambda (_%h103181%_ _%key103182%_)
        (let ((_%h103185%_ _%h103181%_))
          (&HashTable-ref _%h103185%_ _%key103182%_ '#f))))
    (define hash-put!
      (lambda (_%h103161%_ _%key103162%_ _%value103163%_)
        (let* ((_%h103169%_
                (let ((_%$obj103166%_ _%h103161%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103166%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103166%_)))
                           '#t)
                      _%$obj103166%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103166%_)))))
               (_%h103171%_ _%h103169%_))
          (__hash-put! _%h103171%_ _%key103162%_ _%value103163%_))))
    (define __hash-put!
      (lambda (_%h103147%_ _%key103148%_ _%value103149%_)
        (let ((_%h103152%_ _%h103147%_))
          (&HashTable-set! _%h103152%_ _%key103148%_ _%value103149%_))))
    (define hash-update!__%
      (lambda (_%h103112%_ _%key103113%_ _%update103114%_ _%default103115%_)
        (let* ((_%h103121%_
                (let ((_%$obj103118%_ _%h103112%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103118%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103118%_)))
                           '#t)
                      _%$obj103118%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103118%_)))))
               (_%h103123%_ _%h103121%_))
          (__hash-update!__%
           _%h103123%_
           _%key103113%_
           _%update103114%_
           _%default103115%_))))
    (define hash-update!__0
      (lambda (_%h103136%_ _%key103137%_ _%update103138%_)
        (let ((_%default103140%_ '#!void))
          (hash-update!__%
           _%h103136%_
           _%key103137%_
           _%update103138%_
           _%default103140%_))))
    (define hash-update!
      (lambda _g106726_
        (let ((_g106725_ (let () (declare (not safe)) (##length _g106726_))))
          (cond ((let () (declare (not safe)) (##fx= _g106725_ 3))
                 (apply hash-update!__0 _g106726_))
                ((let () (declare (not safe)) (##fx= _g106725_ 4))
                 (apply hash-update!__% _g106726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106726_))))))
    (define __hash-update!__%
      (lambda (_%h103082%_ _%key103083%_ _%update103084%_ _%default103085%_)
        (let ((_%h103088%_ _%h103082%_))
          (HashTable-update!
           _%h103088%_
           _%key103083%_
           _%update103084%_
           _%default103085%_))))
    (define __hash-update!__0
      (lambda (_%h103100%_ _%key103101%_ _%update103102%_)
        (let ((_%default103104%_ '#!void))
          (__hash-update!__%
           _%h103100%_
           _%key103101%_
           _%update103102%_
           _%default103104%_))))
    (define __hash-update!
      (lambda _g106728_
        (let ((_g106727_ (let () (declare (not safe)) (##length _g106728_))))
          (cond ((let () (declare (not safe)) (##fx= _g106727_ 3))
                 (apply __hash-update!__0 _g106728_))
                ((let () (declare (not safe)) (##fx= _g106727_ 4))
                 (apply __hash-update!__% _g106728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106728_))))))
    (define hash-remove!
      (lambda (_%h103062%_ _%key103063%_)
        (let* ((_%h103069%_
                (let ((_%$obj103066%_ _%h103062%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103066%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103066%_)))
                           '#t)
                      _%$obj103066%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103066%_)))))
               (_%h103071%_ _%h103069%_))
          (__hash-remove! _%h103071%_ _%key103063%_))))
    (define __hash-remove!
      (lambda (_%h103049%_ _%key103050%_)
        (let ((_%h103053%_ _%h103049%_))
          (&HashTable-delete! _%h103053%_ _%key103050%_))))
    (define hash-key?
      (lambda (_%h103030%_ _%k103031%_)
        (let* ((_%h103037%_
                (let ((_%$obj103034%_ _%h103030%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103034%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103034%_)))
                           '#t)
                      _%$obj103034%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103034%_)))))
               (_%h103039%_ _%h103037%_))
          (__hash-key? _%h103039%_ _%k103031%_))))
    (define __hash-key?
      (lambda (_%h103017%_ _%k103018%_)
        (let ((_%h103021%_ _%h103017%_))
          (not (eq? (&HashTable-ref _%h103021%_ _%k103018%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h102999%_)
        (let* ((_%h103005%_
                (let ((_%$obj103002%_ _%h102999%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103002%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103002%_)))
                           '#t)
                      _%$obj103002%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103002%_)))))
               (_%h103007%_ _%h103005%_))
          (__hash->list _%h103007%_))))
    (define __hash->list
      (lambda (_%h102982%_)
        (let* ((_%h102985%_ _%h102982%_) (_%lst102994%_ '()))
          (&HashTable-for-each
           _%h102985%_
           (lambda (_%k102996%_ _%v102997%_)
             (set! _%lst102994%_
                   (cons (cons _%k102996%_ _%v102997%_) _%lst102994%_))))
          _%lst102994%_)))
    (define hash->plist
      (lambda (_%h102964%_)
        (let* ((_%h102970%_
                (let ((_%$obj102967%_ _%h102964%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102967%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102967%_)))
                           '#t)
                      _%$obj102967%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102967%_)))))
               (_%h102972%_ _%h102970%_))
          (__hash->plist _%h102972%_))))
    (define __hash->plist
      (lambda (_%h102947%_)
        (let* ((_%h102950%_ _%h102947%_) (_%lst102959%_ '()))
          (&HashTable-for-each
           _%h102950%_
           (lambda (_%k102961%_ _%v102962%_)
             (set! _%lst102959%_
                   (cons _%k102961%_ (cons _%v102962%_ _%lst102959%_)))))
          _%lst102959%_)))
    (define hash-for-each
      (lambda (_%proc102918%_ _%h102919%_)
        (if (procedure? _%proc102918%_)
            (let* ((_%proc102923%_ _%proc102918%_)
                   (_%h102935%_
                    (let ((_%$obj102932%_ _%h102919%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj102932%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj102932%_)))
                               '#t)
                          _%$obj102932%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj102932%_)))))
                   (_%h102937%_ _%h102935%_))
              (__hash-for-each _%proc102923%_ _%h102937%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc102918%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc102897%_ _%h102898%_)
        (let* ((_%proc102901%_ _%proc102897%_) (_%h102909%_ _%h102898%_))
          (&HashTable-for-each _%h102909%_ _%proc102901%_))))
    (define hash-map
      (lambda (_%proc102868%_ _%h102869%_)
        (if (procedure? _%proc102868%_)
            (let* ((_%proc102873%_ _%proc102868%_)
                   (_%h102885%_
                    (let ((_%$obj102882%_ _%h102869%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj102882%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj102882%_)))
                               '#t)
                          _%$obj102882%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj102882%_)))))
                   (_%h102887%_ _%h102885%_))
              (__hash-map _%proc102873%_ _%h102887%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc102868%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc102842%_ _%h102843%_)
        (let* ((_%proc102846%_ _%proc102842%_)
               (_%h102854%_ _%h102843%_)
               (_%result102863%_ '()))
          (&HashTable-for-each
           _%h102854%_
           (lambda (_%k102865%_ _%v102866%_)
             (set! _%result102863%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc102846%_ _%k102865%_ _%v102866%_))
                         _%result102863%_))))
          _%result102863%_)))
    (define hash-fold
      (lambda (_%proc102812%_ _%iv102813%_ _%h102814%_)
        (if (procedure? _%proc102812%_)
            (let* ((_%proc102818%_ _%proc102812%_)
                   (_%h102830%_
                    (let ((_%$obj102827%_ _%h102814%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj102827%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj102827%_)))
                               '#t)
                          _%$obj102827%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj102827%_)))))
                   (_%h102832%_ _%h102830%_))
              (__hash-fold _%proc102818%_ _%iv102813%_ _%h102832%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc102812%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc102785%_ _%iv102786%_ _%h102787%_)
        (let* ((_%proc102790%_ _%proc102785%_)
               (_%h102798%_ _%h102787%_)
               (_%result102807%_ _%iv102786%_))
          (&HashTable-for-each
           _%h102798%_
           (lambda (_%k102809%_ _%v102810%_)
             (set! _%result102807%_
                   (let ()
                     (declare (not safe))
                     (_%proc102790%_
                      _%k102809%_
                      _%v102810%_
                      _%result102807%_)))))
          _%result102807%_)))
    (define hash-find__%
      (lambda (_%proc102743%_ _%h102744%_ _%default-value102745%_)
        (if (procedure? _%proc102743%_)
            (let* ((_%proc102749%_ _%proc102743%_)
                   (_%h102761%_
                    (let ((_%$obj102758%_ _%h102744%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj102758%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj102758%_)))
                               '#t)
                          _%$obj102758%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj102758%_)))))
                   (_%h102763%_ _%h102761%_))
              (__hash-find__%
               _%proc102749%_
               _%h102763%_
               _%default-value102745%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc102743%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc102776%_ _%h102777%_)
        (let ((_%default-value102779%_ '#f))
          (hash-find__% _%proc102776%_ _%h102777%_ _%default-value102779%_))))
    (define hash-find
      (lambda _g106730_
        (let ((_g106729_ (let () (declare (not safe)) (##length _g106730_))))
          (cond ((let () (declare (not safe)) (##fx= _g106729_ 2))
                 (apply hash-find__0 _g106730_))
                ((let () (declare (not safe)) (##fx= _g106729_ 3))
                 (apply hash-find__% _g106730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106730_))))))
    (define __hash-find__%
      (lambda (_%proc102700%_ _%h102701%_ _%default-value102702%_)
        (let* ((_%proc102705%_ _%proc102700%_)
               (_%h102713%_ _%h102701%_)
               (__tmp106731
                (lambda (_%return102722%_)
                  (&HashTable-for-each
                   _%h102713%_
                   (lambda (_%k102724%_ _%v102725%_)
                     (let ((_%$e102727%_
                            (let ()
                              (declare (not safe))
                              (_%proc102705%_ _%k102724%_ _%v102725%_))))
                       (if _%$e102727%_
                           (_%return102722%_ _%$e102727%_)
                           '#!void))))
                  _%default-value102702%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp106731))))
    (define __hash-find__0
      (lambda (_%proc102733%_ _%h102734%_)
        (let ((_%default-value102736%_ '#f))
          (__hash-find__%
           _%proc102733%_
           _%h102734%_
           _%default-value102736%_))))
    (define __hash-find
      (lambda _g106733_
        (let ((_g106732_ (let () (declare (not safe)) (##length _g106733_))))
          (cond ((let () (declare (not safe)) (##fx= _g106732_ 2))
                 (apply __hash-find__0 _g106733_))
                ((let () (declare (not safe)) (##fx= _g106732_ 3))
                 (apply __hash-find__% _g106733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106733_))))))
    (define hash-keys
      (lambda (_%h102681%_)
        (let* ((_%h102687%_
                (let ((_%$obj102684%_ _%h102681%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102684%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102684%_)))
                           '#t)
                      _%$obj102684%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102684%_)))))
               (_%h102689%_ _%h102687%_))
          (__hash-keys _%h102689%_))))
    (define __hash-keys
      (lambda (_%h102664%_)
        (let* ((_%h102667%_ _%h102664%_) (_%result102676%_ '()))
          (&HashTable-for-each
           _%h102667%_
           (lambda (_%k102678%_ _%v102679%_)
             (set! _%result102676%_ (cons _%k102678%_ _%result102676%_))))
          _%result102676%_)))
    (define hash-values
      (lambda (_%h102646%_)
        (let* ((_%h102652%_
                (let ((_%$obj102649%_ _%h102646%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102649%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102649%_)))
                           '#t)
                      _%$obj102649%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102649%_)))))
               (_%h102654%_ _%h102652%_))
          (__hash-values _%h102654%_))))
    (define __hash-values
      (lambda (_%h102629%_)
        (let* ((_%h102632%_ _%h102629%_) (_%result102641%_ '()))
          (&HashTable-for-each
           _%h102632%_
           (lambda (_%k102643%_ _%v102644%_)
             (set! _%result102641%_ (cons _%v102644%_ _%result102641%_))))
          _%result102641%_)))
    (define hash-copy
      (lambda (_%h102611%_)
        (let* ((_%h102617%_
                (let ((_%$obj102614%_ _%h102611%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102614%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102614%_)))
                           '#t)
                      _%$obj102614%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102614%_)))))
               (_%h102619%_ _%h102617%_))
          (__hash-copy _%h102619%_))))
    (define __hash-copy
      (lambda (_%h102599%_)
        (let ((_%h102602%_ _%h102599%_)) (__HashTable-copy _%h102602%_))))
    (define hash-clear!
      (lambda (_%h102581%_)
        (let* ((_%h102587%_
                (let ((_%$obj102584%_ _%h102581%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102584%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102584%_)))
                           '#t)
                      _%$obj102584%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102584%_)))))
               (_%h102589%_ _%h102587%_))
          (__hash-clear! _%h102589%_))))
    (define __hash-clear!
      (lambda (_%h102569%_)
        (let ((_%h102572%_ _%h102569%_)) (&HashTable-clear! _%h102572%_))))
    (define hash-merge
      (lambda (_%h102550%_ . _%rest102551%_)
        (let* ((_%h102557%_
                (let ((_%$obj102554%_ _%h102550%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102554%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102554%_)))
                           '#t)
                      _%$obj102554%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102554%_)))))
               (_%h102559%_ _%h102557%_))
          (declare (not safe))
          (##apply __hash-merge _%h102559%_ _%rest102551%_))))
    (define __hash-merge
      (lambda (_%h102535%_ . _%rest102536%_)
        (let* ((_%h102539%_ _%h102535%_)
               (_%copy102548%_ (__HashTable-copy _%h102539%_)))
          (apply hash-merge! _%copy102548%_ _%rest102536%_)
          _%copy102548%_)))
    (define hash-merge!
      (lambda (_%h102516%_ . _%rest102517%_)
        (let* ((_%h102523%_
                (let ((_%$obj102520%_ _%h102516%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102520%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102520%_)))
                           '#t)
                      _%$obj102520%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102520%_)))))
               (_%h102525%_ _%h102523%_))
          (declare (not safe))
          (##apply __hash-merge! _%h102525%_ _%rest102517%_))))
    (define __hash-merge!
      (lambda (_%h102479%_ . _%rest102480%_)
        (let ((_%h102483%_ _%h102479%_))
          (let ((__tmp106734
                 (lambda (_%hr102492%_)
                   (let* ((_%hr102498%_
                           (let ((_%$obj102495%_ _%hr102492%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj102495%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj102495%_)))
                                      '#t)
                                 _%$obj102495%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj102495%_)))))
                          (_%hr102500%_ _%hr102498%_))
                     (&HashTable-for-each
                      _%hr102500%_
                      (lambda (_%k102513%_ _%v102514%_)
                        (if (__hash-key? _%h102483%_ _%k102513%_)
                            '#!void
                            (&HashTable-set!
                             _%h102483%_
                             _%k102513%_
                             _%v102514%_))))))))
            (declare (not safe))
            (##for-each __tmp106734 _%rest102480%_))
          _%h102483%_)))))
