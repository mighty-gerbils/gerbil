(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1733868035)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp110093 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp110093
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args110073%_
        (apply make-instance UnboundKeyError::t _%$args110073%_)))
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
      (lambda (_%where109947%_ _%message109948%_ . _%irritants109949%_)
        (let ((__tmp110094
               (let ((__obj110087
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj110087
                    _%message109948%_
                    'where:
                    _%where109947%_
                    'irritants:
                    _%irritants109949%_))
                 __obj110087)))
          (declare (not safe))
          (raise __tmp110094))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp110095 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp110095
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
      (lambda (_%obj109945%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj109945%_))))
    (define try-HashTable
      (lambda (_%obj109943%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj109943%_))))
    (define HashTable?
      (lambda (_%obj109941%_)
        (let ((__tmp110096
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj109941%_ __tmp110096))))
    (define is-HashTable?
      (lambda (_%obj109939%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj109939%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self109923%_)
        (let* ((_%self109928%_
                (let ((_%$obj109925%_ _%self109923%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109925%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109925%_)))
                           '#t)
                      _%$obj109925%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109925%_)))))
               (_%self109930%_ _%self109928%_))
          (&HashTable-clear! _%self109930%_))))
    (define &HashTable-clear!
      (lambda (_%self109908%_)
        (let ((_%self109910%_ _%self109908%_))
          (declare (not safe))
          (let ((_%obj109920%_
                 (##unchecked-structure-ref _%self109910%_ '1 '#f 'clear!))
                (_%f109921%_
                 (##unchecked-structure-ref _%self109910%_ '2 '#f 'clear!)))
            (_%f109921%_ _%obj109920%_)))))
    (define HashTable-copy
      (lambda (_%self109892%_)
        (let* ((_%self109897%_
                (let ((_%$obj109894%_ _%self109892%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109894%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109894%_)))
                           '#t)
                      _%$obj109894%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109894%_)))))
               (_%self109899%_ _%self109897%_))
          (__HashTable-copy _%self109899%_))))
    (define __HashTable-copy
      (lambda (_%self109879%_)
        (let* ((_%self109881%_ _%self109879%_)
               (_%$obj109889%_ (&HashTable-copy _%self109881%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj109889%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj109889%_)))
                   '#t)
              _%$obj109889%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj109889%_))))))
    (define &HashTable-copy
      (lambda (_%self109864%_)
        (let ((_%self109866%_ _%self109864%_))
          (declare (not safe))
          (let ((_%obj109876%_
                 (##unchecked-structure-ref _%self109866%_ '1 '#f 'copy))
                (_%f109877%_
                 (##unchecked-structure-ref _%self109866%_ '3 '#f 'copy)))
            (_%f109877%_ _%obj109876%_)))))
    (define HashTable-delete!
      (lambda (_%self109847%_ _%key109848%_)
        (let* ((_%self109853%_
                (let ((_%$obj109850%_ _%self109847%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109850%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109850%_)))
                           '#t)
                      _%$obj109850%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109850%_)))))
               (_%self109855%_ _%self109853%_))
          (&HashTable-delete! _%self109855%_ _%key109848%_))))
    (define &HashTable-delete!
      (lambda (_%self109831%_ _%key109832%_)
        (let ((_%self109834%_ _%self109831%_))
          (declare (not safe))
          (let ((_%obj109844%_
                 (##unchecked-structure-ref _%self109834%_ '1 '#f 'delete!))
                (_%f109845%_
                 (##unchecked-structure-ref _%self109834%_ '4 '#f 'delete!)))
            (_%f109845%_ _%obj109844%_ _%key109832%_)))))
    (define HashTable-for-each
      (lambda (_%self109804%_ _%proc109805%_)
        (let* ((_%self109810%_
                (let ((_%$obj109807%_ _%self109804%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109807%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109807%_)))
                           '#t)
                      _%$obj109807%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109807%_)))))
               (_%self109812%_ _%self109810%_))
          (if (procedure? _%proc109805%_)
              (let ((_%proc109821%_ _%proc109805%_))
                (&HashTable-for-each _%self109812%_ _%proc109821%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc109805%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self109780%_ _%proc109781%_)
        (let* ((_%self109783%_ _%self109780%_) (_%proc109790%_ _%proc109781%_))
          (declare (not safe))
          (let ((_%obj109801%_
                 (##unchecked-structure-ref _%self109783%_ '1 '#f 'for-each))
                (_%f109802%_
                 (##unchecked-structure-ref _%self109783%_ '5 '#f 'for-each)))
            (_%f109802%_ _%obj109801%_ _%proc109790%_)))))
    (define HashTable-length
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
          (__HashTable-length _%self109771%_))))
    (define __HashTable-length
      (lambda (_%self109751%_)
        (let* ((_%self109753%_ _%self109751%_)
               (_%val109761%_ (&HashTable-length _%self109753%_)))
          _%val109761%_)))
    (define &HashTable-length
      (lambda (_%self109736%_)
        (let ((_%self109738%_ _%self109736%_))
          (declare (not safe))
          (let ((_%obj109748%_
                 (##unchecked-structure-ref _%self109738%_ '1 '#f 'length))
                (_%f109749%_
                 (##unchecked-structure-ref _%self109738%_ '6 '#f 'length)))
            (_%f109749%_ _%obj109748%_)))))
    (define HashTable-ref
      (lambda (_%self109718%_ _%key109719%_ _%default109720%_)
        (let* ((_%self109725%_
                (let ((_%$obj109722%_ _%self109718%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109722%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109722%_)))
                           '#t)
                      _%$obj109722%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109722%_)))))
               (_%self109727%_ _%self109725%_))
          (&HashTable-ref _%self109727%_ _%key109719%_ _%default109720%_))))
    (define &HashTable-ref
      (lambda (_%self109701%_ _%key109702%_ _%default109703%_)
        (let ((_%self109705%_ _%self109701%_))
          (declare (not safe))
          (let ((_%obj109715%_
                 (##unchecked-structure-ref _%self109705%_ '1 '#f 'ref))
                (_%f109716%_
                 (##unchecked-structure-ref _%self109705%_ '7 '#f 'ref)))
            (_%f109716%_ _%obj109715%_ _%key109702%_ _%default109703%_)))))
    (define HashTable-set!
      (lambda (_%self109683%_ _%key109684%_ _%value109685%_)
        (let* ((_%self109690%_
                (let ((_%$obj109687%_ _%self109683%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109687%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109687%_)))
                           '#t)
                      _%$obj109687%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109687%_)))))
               (_%self109692%_ _%self109690%_))
          (&HashTable-set! _%self109692%_ _%key109684%_ _%value109685%_))))
    (define &HashTable-set!
      (lambda (_%self109666%_ _%key109667%_ _%value109668%_)
        (let ((_%self109670%_ _%self109666%_))
          (declare (not safe))
          (let ((_%obj109680%_
                 (##unchecked-structure-ref _%self109670%_ '1 '#f 'set!))
                (_%f109681%_
                 (##unchecked-structure-ref _%self109670%_ '8 '#f 'set!)))
            (_%f109681%_ _%obj109680%_ _%key109667%_ _%value109668%_)))))
    (define HashTable-update!
      (lambda (_%self109637%_ _%key109638%_ _%proc109639%_ _%default109640%_)
        (let* ((_%self109645%_
                (let ((_%$obj109642%_ _%self109637%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109642%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109642%_)))
                           '#t)
                      _%$obj109642%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109642%_)))))
               (_%self109647%_ _%self109645%_))
          (if (procedure? _%proc109639%_)
              (let ((_%proc109656%_ _%proc109639%_))
                (&HashTable-update!
                 _%self109647%_
                 _%key109638%_
                 _%proc109656%_
                 _%default109640%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc109639%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self109609%_ _%key109610%_ _%proc109611%_ _%default109612%_)
        (let* ((_%self109614%_ _%self109609%_) (_%proc109621%_ _%proc109611%_))
          (declare (not safe))
          (let ((_%obj109632%_
                 (##unchecked-structure-ref _%self109614%_ '1 '#f 'update!))
                (_%f109634%_
                 (##unchecked-structure-ref _%self109614%_ '9 '#f 'update!)))
            (_%f109634%_
             _%obj109632%_
             _%key109610%_
             _%proc109621%_
             _%default109612%_)))))
    (define Locker::t
      (let ((__tmp110097 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp110097
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
      (lambda (_%obj109607%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj109607%_))))
    (define try-Locker
      (lambda (_%obj109605%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj109605%_))))
    (define Locker?
      (lambda (_%obj109603%_)
        (let ((__tmp110098
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj109603%_ __tmp110098))))
    (define is-Locker?
      (lambda (_%obj109601%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj109601%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self109585%_)
        (let* ((_%self109590%_
                (let ((_%$obj109587%_ _%self109585%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109587%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109587%_)))
                           '#t)
                      _%$obj109587%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109587%_)))))
               (_%self109592%_ _%self109590%_))
          (&Locker-read-lock! _%self109592%_))))
    (define &Locker-read-lock!
      (lambda (_%self109570%_)
        (let ((_%self109572%_ _%self109570%_))
          (declare (not safe))
          (let ((_%obj109582%_
                 (##unchecked-structure-ref _%self109572%_ '1 '#f 'read-lock!))
                (_%f109583%_
                 (##unchecked-structure-ref
                  _%self109572%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f109583%_ _%obj109582%_)))))
    (define Locker-read-unlock!
      (lambda (_%self109554%_)
        (let* ((_%self109559%_
                (let ((_%$obj109556%_ _%self109554%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109556%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109556%_)))
                           '#t)
                      _%$obj109556%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109556%_)))))
               (_%self109561%_ _%self109559%_))
          (&Locker-read-unlock! _%self109561%_))))
    (define &Locker-read-unlock!
      (lambda (_%self109539%_)
        (let ((_%self109541%_ _%self109539%_))
          (declare (not safe))
          (let ((_%obj109551%_
                 (##unchecked-structure-ref
                  _%self109541%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f109552%_
                 (##unchecked-structure-ref
                  _%self109541%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f109552%_ _%obj109551%_)))))
    (define Locker-write-lock!
      (lambda (_%self109523%_)
        (let* ((_%self109528%_
                (let ((_%$obj109525%_ _%self109523%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109525%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109525%_)))
                           '#t)
                      _%$obj109525%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109525%_)))))
               (_%self109530%_ _%self109528%_))
          (&Locker-write-lock! _%self109530%_))))
    (define &Locker-write-lock!
      (lambda (_%self109508%_)
        (let ((_%self109510%_ _%self109508%_))
          (declare (not safe))
          (let ((_%obj109520%_
                 (##unchecked-structure-ref
                  _%self109510%_
                  '1
                  '#f
                  'write-lock!))
                (_%f109521%_
                 (##unchecked-structure-ref
                  _%self109510%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f109521%_ _%obj109520%_)))))
    (define Locker-write-unlock!
      (lambda (_%self109492%_)
        (let* ((_%self109497%_
                (let ((_%$obj109494%_ _%self109492%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109494%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109494%_)))
                           '#t)
                      _%$obj109494%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109494%_)))))
               (_%self109499%_ _%self109497%_))
          (&Locker-write-unlock! _%self109499%_))))
    (define &Locker-write-unlock!
      (lambda (_%self109475%_)
        (let ((_%self109477%_ _%self109475%_))
          (declare (not safe))
          (let ((_%obj109487%_
                 (##unchecked-structure-ref
                  _%self109477%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f109489%_
                 (##unchecked-structure-ref
                  _%self109477%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f109489%_ _%obj109487%_)))))
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
      (lambda (_%table109468%_
               _%key109469%_
               _%update109470%_
               _%default109471%_)
        (let ((_%result109473%_
               (table-ref _%table109468%_ _%key109469%_ _%default109471%_)))
          (table-set!
           _%table109468%_
           _%key109469%_
           (_%update109470%_ _%default109471%_)))))
    (define gambit-table-for-each
      (lambda (_%table109465%_ _%proc109466%_)
        (table-for-each _%proc109466%_ _%table109465%_)))
    (define gambit-table-clear!
      (lambda (_%table109463%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table109463%_ '0 '5 '#f '#f))))
    (let ((__tmp110099 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110099 'ref table-ref))
    (let ((__tmp110100 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110100 'set! table-set!))
    (let ((__tmp110101 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110101 'update! gambit-table-update!))
    (let ((__tmp110102 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110102 'delete! table-set!))
    (let ((__tmp110103 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110103 'for-each gambit-table-for-each))
    (let ((__tmp110104 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110104 'length table-length))
    (let ((__tmp110105 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110105 'copy table-copy))
    (let ((__tmp110106 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110106 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots109445%_ '(table count free hash test seed))
             (_%slot-vector109447%_ (list->vector (cons '#f _%slots109445%_)))
             (_%slot-table109454%_
              (let ((_%slot-table109449%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp110109
                       (lambda (_%slot109451%_ _%field109452%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109449%_
                            _%slot109451%_
                            _%field109452%_))
                         (let ((__tmp110110
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot109451%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109449%_
                            __tmp110110
                            _%field109452%_))))
                      (__tmp110107
                       (let ((__tmp110108
                              (let ()
                                (declare (not safe))
                                (##length _%slots109445%_))))
                         (declare (not safe))
                         (##iota __tmp110108 '1))))
                  (declare (not safe))
                  (##for-each __tmp110109 _%slots109445%_ __tmp110107))
                _%slot-table109449%_))
             (_%flags109456%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields109458%_ '#())
             (_%properties109460%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots109445%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp110111 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags109456%_
         __table::t
         _%fields109458%_
         __tmp110111
         _%slot-vector109447%_
         _%slot-table109454%_
         _%properties109460%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots109427%_ '(gcht immediate))
             (_%slot-vector109429%_ (list->vector (cons '#f _%slots109427%_)))
             (_%slot-table109436%_
              (let ((_%slot-table109431%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp110114
                       (lambda (_%slot109433%_ _%field109434%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109431%_
                            _%slot109433%_
                            _%field109434%_))
                         (let ((__tmp110115
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot109433%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109431%_
                            __tmp110115
                            _%field109434%_))))
                      (__tmp110112
                       (let ((__tmp110113
                              (let ()
                                (declare (not safe))
                                (##length _%slots109427%_))))
                         (declare (not safe))
                         (##iota __tmp110113 '1))))
                  (declare (not safe))
                  (##for-each __tmp110114 _%slots109427%_ __tmp110112))
                _%slot-table109431%_))
             (_%flags109438%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields109440%_ '#())
             (_%properties109442%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots109427%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp110116 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags109438%_
         __gc-table::t
         _%fields109440%_
         __tmp110116
         _%slot-vector109429%_
         _%slot-table109436%_
         _%properties109442%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp110118 (list))
            (__tmp110117
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp110118
         '(table lock)
         __tmp110117
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args109424%_
        (apply make-instance locked-hash-table::t _%$args109424%_)))
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
      (let ((__tmp110120 (list))
            (__tmp110119
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp110120
         '(table key-check)
         __tmp110119
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args109421%_
        (apply make-instance checked-hash-table::t _%$args109421%_)))
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
      (let ((__tmp110122 (list hash-table::t))
            (__tmp110121 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp110122
         '()
         __tmp110121
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args109418%_
        (apply make-instance eq-hash-table::t _%$args109418%_)))
    (define eqv-hash-table::t
      (let ((__tmp110124 (list hash-table::t))
            (__tmp110123 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp110124
         '()
         __tmp110123
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args109415%_
        (apply make-instance eqv-hash-table::t _%$args109415%_)))
    (define symbol-hash-table::t
      (let ((__tmp110126 (list hash-table::t))
            (__tmp110125 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp110126
         '()
         __tmp110125
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args109412%_
        (apply make-instance symbol-hash-table::t _%$args109412%_)))
    (define string-hash-table::t
      (let ((__tmp110128 (list hash-table::t))
            (__tmp110127 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp110128
         '()
         __tmp110127
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args109409%_
        (apply make-instance string-hash-table::t _%$args109409%_)))
    (define immediate-hash-table::t
      (let ((__tmp110130 (list hash-table::t))
            (__tmp110129 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp110130
         '()
         __tmp110129
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args109406%_
        (apply make-instance immediate-hash-table::t _%$args109406%_)))
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
    (define _%locked-hash-table::ref105406%_
      (lambda (_%self105405109380%_ _%key109382%_ _%default109383%_)
        (let* ((_%self109385%_ _%self105405109380%_)
               (_%self109388%_ _%self109385%_))
          (let ((_%h109398%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109388%_ '1 '#f '#f)))
                (_%l109400%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109388%_ '2 '#f '#f))))
            (let ((__tmp110133 (lambda () (&Locker-read-lock! _%l109400%_)))
                  (__tmp110132
                   (lambda ()
                     (&HashTable-ref
                      _%h109398%_
                      _%key109382%_
                      _%default109383%_)))
                  (__tmp110131 (lambda () (&Locker-read-unlock! _%l109400%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110133 __tmp110132 __tmp110131))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref105406%_
       '#f))
    (define _%locked-hash-table::set!105409%_
      (lambda (_%self105408109231%_ _%key109233%_ _%value109234%_)
        (let* ((_%self109236%_ _%self105408109231%_)
               (_%self109239%_ _%self109236%_))
          (let ((_%h109249%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109239%_ '1 '#f '#f)))
                (_%l109251%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109239%_ '2 '#f '#f))))
            (let ((__tmp110136 (lambda () (&Locker-write-lock! _%l109251%_)))
                  (__tmp110135
                   (lambda ()
                     (&HashTable-set!
                      _%h109249%_
                      _%key109233%_
                      _%value109234%_)))
                  (__tmp110134
                   (lambda () (&Locker-write-unlock! _%l109251%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110136 __tmp110135 __tmp110134))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!105409%_
       '#f))
    (define _%locked-hash-table::update!105412%_
      (lambda (_%self105411109081%_
               _%key109083%_
               _%update109084%_
               _%default109085%_)
        (let* ((_%self109087%_ _%self105411109081%_)
               (_%self109090%_ _%self109087%_))
          (let ((_%h109100%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109090%_ '1 '#f '#f)))
                (_%l109102%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109090%_ '2 '#f '#f))))
            (let ((__tmp110139 (lambda () (&Locker-write-lock! _%l109102%_)))
                  (__tmp110138
                   (lambda ()
                     (&HashTable-update!
                      _%h109100%_
                      _%key109083%_
                      _%update109084%_
                      _%default109085%_)))
                  (__tmp110137
                   (lambda () (&Locker-write-unlock! _%l109102%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110139 __tmp110138 __tmp110137))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!105412%_
       '#f))
    (define _%locked-hash-table::delete!105415%_
      (lambda (_%self105414108933%_ _%key108935%_)
        (let* ((_%self108937%_ _%self105414108933%_)
               (_%self108940%_ _%self108937%_))
          (let ((_%h108950%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108940%_ '1 '#f '#f)))
                (_%l108952%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108940%_ '2 '#f '#f))))
            (let ((__tmp110142 (lambda () (&Locker-write-lock! _%l108952%_)))
                  (__tmp110141
                   (lambda () (&HashTable-delete! _%h108950%_ _%key108935%_)))
                  (__tmp110140
                   (lambda () (&Locker-write-unlock! _%l108952%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110142 __tmp110141 __tmp110140))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!105415%_
       '#f))
    (define _%locked-hash-table::for-each105418%_
      (lambda (_%self105417108785%_ _%proc108787%_)
        (let* ((_%self108789%_ _%self105417108785%_)
               (_%self108792%_ _%self108789%_))
          (let ((_%h108802%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108792%_ '1 '#f '#f)))
                (_%l108804%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108792%_ '2 '#f '#f))))
            (let ((__tmp110145 (lambda () (&Locker-read-lock! _%l108804%_)))
                  (__tmp110144
                   (lambda ()
                     (&HashTable-for-each _%h108802%_ _%proc108787%_)))
                  (__tmp110143 (lambda () (&Locker-read-unlock! _%l108804%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110145 __tmp110144 __tmp110143))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each105418%_
       '#f))
    (define _%locked-hash-table::length105421%_
      (lambda (_%self105420108638%_)
        (let* ((_%self108641%_ _%self105420108638%_)
               (_%self108644%_ _%self108641%_))
          (let ((_%h108654%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108644%_ '1 '#f '#f)))
                (_%l108656%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108644%_ '2 '#f '#f))))
            (let ((__tmp110148 (lambda () (&Locker-read-lock! _%l108656%_)))
                  (__tmp110147 (lambda () (&HashTable-length _%h108654%_)))
                  (__tmp110146 (lambda () (&Locker-read-unlock! _%l108656%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110148 __tmp110147 __tmp110146))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length105421%_
       '#f))
    (define _%locked-hash-table::copy105424%_
      (lambda (_%self105423108491%_)
        (let* ((_%self108494%_ _%self105423108491%_)
               (_%self108497%_ _%self108494%_))
          (let ((_%h108507%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108497%_ '1 '#f '#f)))
                (_%l108509%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108497%_ '2 '#f '#f))))
            (let ((__tmp110151 (lambda () (&Locker-read-lock! _%l108509%_)))
                  (__tmp110150 (lambda () (&HashTable-copy _%h108507%_)))
                  (__tmp110149 (lambda () (&Locker-read-unlock! _%l108509%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110151 __tmp110150 __tmp110149))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy105424%_
       '#f))
    (define _%locked-hash-table::clear!105427%_
      (lambda (_%self105426108344%_)
        (let* ((_%self108347%_ _%self105426108344%_)
               (_%self108350%_ _%self108347%_))
          (let ((_%h108360%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108350%_ '1 '#f '#f)))
                (_%l108362%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108350%_ '2 '#f '#f))))
            (let ((__tmp110154 (lambda () (&Locker-write-lock! _%l108362%_)))
                  (__tmp110153 (lambda () (&HashTable-clear! _%h108360%_)))
                  (__tmp110152
                   (lambda () (&Locker-write-unlock! _%l108362%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110154 __tmp110153 __tmp110152))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!105427%_
       '#f))
    (let ((__tmp110155 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110155 'read-lock! mutex-lock!))
    (let ((__tmp110156 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110156 'read-unlock! mutex-unlock!))
    (let ((__tmp110157 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110157 'write-lock! mutex-lock!))
    (let ((__tmp110158 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110158 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref105641%_
      (lambda (_%self105640108194%_ _%key108196%_ _%default108197%_)
        (let* ((_%self108199%_ _%self105640108194%_)
               (_%self108201%_ _%self108199%_))
          (declare (not safe))
          (let ((_%h108212%_
                 (##unchecked-structure-ref _%self108201%_ '1 '#f '#f))
                (_%key?108214%_
                 (##unchecked-structure-ref _%self108201%_ '2 '#f '#f)))
            (if ((lambda (_%key?108217%_ _%key108218%_ _%default108219%_)
                   (_%key?108217%_ _%key108218%_))
                 _%key?108214%_
                 _%key108196%_
                 _%default108197%_)
                (&HashTable-ref _%h108212%_ _%key108196%_ _%default108197%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key108196%_ (cons _%default108197%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref105641%_
       '#f))
    (define _%checked-hash-table::set!105644%_
      (lambda (_%self105643108044%_ _%key108046%_ _%value108047%_)
        (let* ((_%self108049%_ _%self105643108044%_)
               (_%self108051%_ _%self108049%_))
          (declare (not safe))
          (let ((_%h108062%_
                 (##unchecked-structure-ref _%self108051%_ '1 '#f '#f))
                (_%key?108064%_
                 (##unchecked-structure-ref _%self108051%_ '2 '#f '#f)))
            (if ((lambda (_%key?108067%_ _%key108068%_ _%value108069%_)
                   (_%key?108067%_ _%key108068%_))
                 _%key?108064%_
                 _%key108046%_
                 _%value108047%_)
                (&HashTable-set! _%h108062%_ _%key108046%_ _%value108047%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key108046%_ (cons _%value108047%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!105644%_
       '#f))
    (define _%checked-hash-table::update!105647%_
      (lambda (_%self105646107892%_
               _%key107894%_
               _%update107895%_
               _%default107896%_)
        (let* ((_%self107898%_ _%self105646107892%_)
               (_%self107900%_ _%self107898%_))
          (declare (not safe))
          (let ((_%h107911%_
                 (##unchecked-structure-ref _%self107900%_ '1 '#f '#f))
                (_%key?107913%_
                 (##unchecked-structure-ref _%self107900%_ '2 '#f '#f)))
            (if ((lambda (_%key?107916%_
                          _%key107917%_
                          _%update107918%_
                          _%default107919%_)
                   (_%key?107916%_ _%key107917%_))
                 _%key?107913%_
                 _%key107894%_
                 _%update107895%_
                 _%default107896%_)
                (&HashTable-update!
                 _%h107911%_
                 _%key107894%_
                 _%update107895%_
                 _%default107896%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key107894%_
                         (cons _%update107895%_ (cons _%default107896%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!105647%_
       '#f))
    (define _%checked-hash-table::delete!105650%_
      (lambda (_%self105649107744%_ _%key107746%_)
        (let* ((_%self107748%_ _%self105649107744%_)
               (_%self107750%_ _%self107748%_))
          (declare (not safe))
          (let ((_%h107761%_
                 (##unchecked-structure-ref _%self107750%_ '1 '#f '#f))
                (_%key?107763%_
                 (##unchecked-structure-ref _%self107750%_ '2 '#f '#f)))
            (if ((lambda (_%key?107766%_ _%key107767%_)
                   (_%key?107766%_ _%key107767%_))
                 _%key?107763%_
                 _%key107746%_)
                (&HashTable-delete! _%h107761%_ _%key107746%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key107746%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!105650%_
       '#f))
    (define _%checked-hash-table::for-each105653%_
      (lambda (_%self105652107596%_ _%proc107598%_)
        (let* ((_%self107600%_ _%self105652107596%_)
               (_%self107602%_ _%self107600%_))
          (declare (not safe))
          (let ((_%h107613%_
                 (##unchecked-structure-ref _%self107602%_ '1 '#f '#f))
                (_%key?107615%_
                 (##unchecked-structure-ref _%self107602%_ '2 '#f '#f)))
            (if ((lambda (_%key?107618%_ _%proc107619%_) '#t)
                 _%key?107615%_
                 _%proc107598%_)
                (&HashTable-for-each _%h107613%_ _%proc107598%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc107598%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each105653%_
       '#f))
    (define _%checked-hash-table::length105656%_
      (lambda (_%self105655107452%_)
        (let* ((_%self107455%_ _%self105655107452%_)
               (_%self107457%_ _%self107455%_))
          (declare (not safe))
          (let ((_%h107468%_
                 (##unchecked-structure-ref _%self107457%_ '1 '#f '#f))
                (_%key?107470%_
                 (##unchecked-structure-ref _%self107457%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h107468%_)
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
       _%checked-hash-table::length105656%_
       '#f))
    (define _%checked-hash-table::copy105659%_
      (lambda (_%self105658107308%_)
        (let* ((_%self107311%_ _%self105658107308%_)
               (_%self107313%_ _%self107311%_))
          (declare (not safe))
          (let ((_%h107324%_
                 (##unchecked-structure-ref _%self107313%_ '1 '#f '#f))
                (_%key?107326%_
                 (##unchecked-structure-ref _%self107313%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h107324%_)
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
       _%checked-hash-table::copy105659%_
       '#f))
    (define _%checked-hash-table::clear!105662%_
      (lambda (_%self105661107164%_)
        (let* ((_%self107167%_ _%self105661107164%_)
               (_%self107169%_ _%self107167%_))
          (declare (not safe))
          (let ((_%h107180%_
                 (##unchecked-structure-ref _%self107169%_ '1 '#f '#f))
                (_%key?107182%_
                 (##unchecked-structure-ref _%self107169%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h107180%_)
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
       _%checked-hash-table::clear!105662%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table107034%_
               _%count107035%_
               _%free107036%_
               _%hash107037%_
               _%test107038%_
               _%seed107039%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table107034%_
           _%count107035%_
           _%free107036%_
           _%hash107037%_
           _%test107038%_
           _%seed107039%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords106795%_
               _%size-hint106785106796%_
               _%seed106786106798%_
               _%test106787106800%_
               _%hash106788106802%_
               _%lock106789106804%_
               _%check106790106806%_
               _%weak-keys106791106808%_
               _%weak-values106792106810%_)
        (let* ((_%size-hint106813%_
                (if (eq? _%size-hint106785106796%_ absent-value)
                    '#f
                    _%size-hint106785106796%_))
               (_%seed106815%_
                (if (eq? _%seed106786106798%_ absent-value)
                    '#f
                    _%seed106786106798%_))
               (_%test106817%_
                (if (eq? _%test106787106800%_ absent-value)
                    equal?
                    _%test106787106800%_))
               (_%hash106819%_
                (if (eq? _%hash106788106802%_ absent-value)
                    '#f
                    _%hash106788106802%_))
               (_%lock106821%_
                (if (eq? _%lock106789106804%_ absent-value)
                    '#f
                    _%lock106789106804%_))
               (_%check106823%_
                (if (eq? _%check106790106806%_ absent-value)
                    '#f
                    _%check106790106806%_))
               (_%weak-keys106825%_
                (if (eq? _%weak-keys106791106808%_ absent-value)
                    '#f
                    _%weak-keys106791106808%_))
               (_%weak-values106827%_
                (if (eq? _%weak-values106792106810%_ absent-value)
                    '#f
                    _%weak-values106792106810%_)))
          (letrec ((_%table-seed106830%_
                    (lambda ()
                      (if (fixnum? _%seed106815%_)
                          _%seed106815%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock106831%_
                    (lambda (_%ht107008%_)
                      (let ((_%ht107011%_ _%ht107008%_))
                        (_%__wrap-lock106832%_ _%ht107011%_))))
                   (_%__wrap-lock106832%_
                    (lambda (_%ht106990%_)
                      (let ((_%ht106993%_ _%ht106990%_))
                        (if _%lock106821%_
                            (let ((_%$obj107005%_
                                   (let ((__tmp110159
                                          (let ((_%$obj107002%_
                                                 _%lock106821%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj107002%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj107002%_)))
                                                     '#t)
                                                _%$obj107002%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj107002%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht106993%_
                                      __tmp110159))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107005%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107005%_)))
                                       '#t)
                                  _%$obj107005%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107005%_))))
                            _%ht106993%_))))
                   (_%wrap-checked106833%_
                    (lambda (_%ht106977%_ _%implicit106978%_)
                      (let ((_%ht106981%_ _%ht106977%_))
                        (_%__wrap-checked106834%_
                         _%ht106981%_
                         _%implicit106978%_))))
                   (_%__wrap-checked106834%_
                    (lambda (_%ht106950%_ _%implicit106951%_)
                      (let ((_%ht106954%_ _%ht106950%_))
                        (if _%check106823%_
                            (let ((_%$obj106974%_
                                   (let ((__tmp110160
                                          (if (procedure? _%check106823%_)
                                              _%check106823%_
                                              _%implicit106951%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht106954%_
                                      __tmp110160))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj106974%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj106974%_)))
                                       '#t)
                                  _%$obj106974%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj106974%_))))
                            _%ht106954%_))))
                   (_%make106835%_
                    (lambda (_%kons106934%_
                             _%key?106935%_
                             _%hash106936%_
                             _%test106937%_)
                      (let* ((_%size106940%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint106813%_)))
                             (_%table106942%_
                              (let ((__tmp110161 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size106940%_ __tmp110161)))
                             (_%ht106947%_
                              (let ((_%$obj106944%_
                                     (_%kons106934%_
                                      _%table106942%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size106940%_ '2))
                                      _%hash106936%_
                                      _%test106937%_
                                      (_%table-seed106830%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj106944%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj106944%_)))
                                         '#t)
                                    _%$obj106944%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj106944%_))))))
                        (_%__wrap-checked106834%_
                         (_%__wrap-lock106832%_ _%ht106947%_)
                         _%key?106935%_))))
                   (_%make-gc-hash-table106836%_
                    (lambda ()
                      (let ((_%ht106932%_
                             (let ((_%$obj106929%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint106813%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj106929%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj106929%_)))
                                        '#t)
                                   _%$obj106929%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj106929%_))))))
                        (_%__wrap-checked106834%_
                         (_%__wrap-lock106832%_ _%ht106932%_)
                         true))))
                   (_%make-gambit-table106837%_
                    (lambda ()
                      (let* ((_%size106906%_
                              (let ((_%$e106903%_ _%size-hint106813%_))
                                (if _%$e106903%_
                                    _%$e106903%_
                                    (macro-absent-obj))))
                             (_%test106911%_
                              (let ((_%$e106908%_ _%test106817%_))
                                (if _%$e106908%_ _%$e106908%_ equal?)))
                             (_%hash106919%_
                              (let ((_%$e106913%_ _%hash106819%_))
                                (if _%$e106913%_
                                    _%$e106913%_
                                    (if (eq? _%test106911%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test106911%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht106924%_
                              (let ((_%$obj106921%_
                                     (make-table
                                      'size:
                                      _%size106906%_
                                      'test:
                                      _%test106911%_
                                      'hash:
                                      _%hash106919%_
                                      'weak-keys:
                                      _%weak-keys106825%_
                                      'weak-values:
                                      _%weak-values106827%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj106921%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj106921%_)))
                                         '#t)
                                    _%$obj106921%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj106921%_))))))
                        (_%__wrap-checked106834%_
                         (_%__wrap-lock106832%_ _%ht106924%_)
                         true)))))
            (if (or _%weak-keys106825%_ _%weak-values106827%_)
                (_%make-gambit-table106837%_)
                (if (and (or (eq? _%test106817%_ eq?)
                             (eq? _%test106817%_ ##eq?))
                         (or (not _%hash106819%_)
                             (eq? _%hash106819%_ eq?-hash)
                             (eq? _%hash106819%_ eq-hash))
                         (not _%seed106815%_))
                    (_%make-gc-hash-table106836%_)
                    (if (and (or (eq? _%test106817%_ eq?)
                                 (eq? _%test106817%_ ##eq?))
                             (or (not _%hash106819%_)
                                 (eq? _%hash106819%_ eq?-hash)
                                 (eq? _%hash106819%_ eq-hash)))
                        (_%make106835%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test106817%_ eqv?)
                                     (eq? _%test106817%_ ##eqv?))
                                 (or (not _%hash106819%_)
                                     (eq? _%hash106819%_ eqv?-hash)
                                     (eq? _%hash106819%_ eqv-hash)))
                            (_%make106835%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test106817%_ eq?)
                                         (eq? _%test106817%_ ##eq?))
                                     (or (eq? _%hash106819%_ symbolic-hash)
                                         (eq? _%hash106819%_ ##symbol-hash)))
                                (_%make106835%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test106817%_ eq?)
                                             (eq? _%test106817%_ ##eq?))
                                         (eq? _%hash106819%_ immediate-hash))
                                    (_%make106835%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test106817%_ equal?)
                                                 (eq? _%test106817%_ ##equal?)
                                                 (eq? _%test106817%_ string=?)
                                                 (eq? _%test106817%_
                                                      ##string=?))
                                             (or (eq? _%hash106819%_
                                                      string-hash)
                                                 (eq? _%hash106819%_
                                                      ##string=?-hash)))
                                        (_%make106835%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test106817%_ equal?)
                                                 (not _%hash106819%_))
                                            (_%make106835%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test106817%_)
                                                (if (procedure? _%hash106819%_)
                                                    (_%make106835%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash106819%_
                                                     _%test106817%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash106819%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test106817%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords107024%_ . _%args107025%_)
        (apply make-hash-table__%
               _%@@keywords107024%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107024%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107024%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107024%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107024%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107024%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107024%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107024%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107024%_
                  'weak-values:
                  absent-value))
               _%args107025%_)))
    (define make-hash-table
      (lambda _%args106793107031%_
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
               _%args106793107031%_)))
    (define make-hash-table-eq
      (lambda _%args106782%_
        (apply make-hash-table 'test: eq? _%args106782%_)))
    (define make-hash-table-eqv
      (lambda _%args106780%_
        (apply make-hash-table 'test: eqv? _%args106780%_)))
    (define make-hash-table-symbolic
      (lambda _%args106778%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args106778%_)))
    (define make-hash-table-string
      (lambda _%args106776%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args106776%_)))
    (define make-hash-table-immediate
      (lambda _%args106774%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args106774%_)))
    (define list->hash-table
      (lambda (_%lst106771%_ . _%args106772%_)
        (list->hash-table!
         _%lst106771%_
         (apply make-hash-table
                'size:
                (length _%lst106771%_)
                _%args106772%_))))
    (define list->hash-table-eq
      (lambda (_%lst106768%_ . _%args106769%_)
        (list->hash-table!
         _%lst106768%_
         (apply make-hash-table-eq
                'size:
                (length _%lst106768%_)
                _%args106769%_))))
    (define list->hash-table-eqv
      (lambda (_%lst106765%_ . _%args106766%_)
        (list->hash-table!
         _%lst106765%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst106765%_)
                _%args106766%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst106762%_ . _%args106763%_)
        (list->hash-table!
         _%lst106762%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst106762%_)
                _%args106763%_))))
    (define list->hash-table-string
      (lambda (_%lst106759%_ . _%args106760%_)
        (list->hash-table!
         _%lst106759%_
         (apply make-hash-table-string
                'size:
                (length _%lst106759%_)
                _%args106760%_))))
    (define list->hash-table-immediate
      (lambda (_%lst106756%_ . _%args106757%_)
        (list->hash-table!
         _%lst106756%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst106756%_)
                _%args106757%_))))
    (define list->hash-table!
      (lambda (_%lst106723%_ _%h106724%_)
        (for-each
         (lambda (_%el106726%_)
           (let* ((_%el106727106734%_ _%el106726%_)
                  (_%E106729106738%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el106727106734%_
                              '([k . v])))
                     '#!void))
                  (_%K106730106744%_
                   (lambda (_%v106741%_ _%k106742%_)
                     (&HashTable-set! _%h106724%_ _%k106742%_ _%v106741%_))))
             (if (pair? _%el106727106734%_)
                 (let ((_%hd106731106747%_
                        (let ()
                          (declare (not safe))
                          (##car _%el106727106734%_)))
                       (_%tl106732106749%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el106727106734%_))))
                   (let* ((_%k106752%_ _%hd106731106747%_)
                          (_%v106754%_ _%tl106732106749%_))
                     (_%K106730106744%_ _%v106754%_ _%k106752%_)))
                 (_%E106729106738%_))))
         _%lst106723%_)
        _%h106724%_))
    (define plist->hash-table
      (lambda (_%lst106720%_ . _%args106721%_)
        (plist->hash-table!
         _%lst106720%_
         (apply make-hash-table
                'size:
                (length _%lst106720%_)
                _%args106721%_))))
    (define plist->hash-table-eq
      (lambda (_%lst106717%_ . _%args106718%_)
        (plist->hash-table!
         _%lst106717%_
         (apply make-hash-table-eq
                'size:
                (length _%lst106717%_)
                _%args106718%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst106714%_ . _%args106715%_)
        (plist->hash-table!
         _%lst106714%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst106714%_)
                _%args106715%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst106711%_ . _%args106712%_)
        (plist->hash-table!
         _%lst106711%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst106711%_)
                _%args106712%_))))
    (define plist->hash-table-string
      (lambda (_%lst106708%_ . _%args106709%_)
        (plist->hash-table!
         _%lst106708%_
         (apply make-hash-table-string
                'size:
                (length _%lst106708%_)
                _%args106709%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst106705%_ . _%args106706%_)
        (plist->hash-table!
         _%lst106705%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst106705%_)
                _%args106706%_))))
    (define plist->hash-table!
      (lambda (_%lst106645%_ _%h106646%_)
        (let _%loop106648%_ ((_%rest106650%_ _%lst106645%_))
          (let* ((_%rest106651106663%_ _%rest106650%_)
                 (_%else106654106671%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst106645%_)))))
            (let ((_%K106657106686%_
                   (lambda (_%rest106682%_ _%val106683%_ _%key106684%_)
                     (&HashTable-set! _%h106646%_ _%key106684%_ _%val106683%_)
                     (_%loop106648%_ _%rest106682%_)))
                  (_%K106656106676%_ (lambda () _%h106646%_)))
              (let ((_%try-match106653106679%_
                     (lambda ()
                       (if (null? _%rest106651106663%_)
                           (_%K106656106676%_)
                           (_%else106654106671%_)))))
                (if (pair? _%rest106651106663%_)
                    (let ((_%tl106659106691%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest106651106663%_)))
                          (_%hd106658106689%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest106651106663%_))))
                      (if (pair? _%tl106659106691%_)
                          (let ((_%tl106661106698%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl106659106691%_)))
                                (_%hd106660106696%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl106659106691%_))))
                            (let ((_%key106694%_ _%hd106658106689%_)
                                  (_%val106701%_ _%hd106660106696%_)
                                  (_%rest106703%_ _%tl106661106698%_))
                              (_%K106657106686%_
                               _%rest106703%_
                               _%val106701%_
                               _%key106694%_)))
                          (_%else106654106671%_)))
                    (_%try-match106653106679%_))))))))
    (define hash-length
      (lambda (_%h106627%_)
        (let* ((_%h106633%_
                (let ((_%$obj106630%_ _%h106627%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106630%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106630%_)))
                           '#t)
                      _%$obj106630%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106630%_)))))
               (_%h106635%_ _%h106633%_))
          (__hash-length _%h106635%_))))
    (define __hash-length
      (lambda (_%h106615%_)
        (let ((_%h106618%_ _%h106615%_)) (__HashTable-length _%h106618%_))))
    (define hash-ref__%
      (lambda (_%h106583%_ _%key106584%_ _%default106585%_)
        (let* ((_%h106591%_
                (let ((_%$obj106588%_ _%h106583%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106588%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106588%_)))
                           '#t)
                      _%$obj106588%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106588%_)))))
               (_%h106593%_ _%h106591%_))
          (__hash-ref__% _%h106593%_ _%key106584%_ _%default106585%_))))
    (define hash-ref__0
      (lambda (_%h106606%_ _%key106607%_)
        (let ((_%default106609%_ (macro-absent-obj)))
          (hash-ref__% _%h106606%_ _%key106607%_ _%default106609%_))))
    (define hash-ref
      (lambda _g110163_
        (let ((_g110162_ (let () (declare (not safe)) (##length _g110163_))))
          (cond ((let () (declare (not safe)) (##fx= _g110162_ 2))
                 (apply hash-ref__0 _g110163_))
                ((let () (declare (not safe)) (##fx= _g110162_ 3))
                 (apply hash-ref__% _g110163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g110163_))))))
    (define __hash-ref__%
      (lambda (_%h106554%_ _%key106555%_ _%default106556%_)
        (let* ((_%h106559%_ _%h106554%_)
               (_%result106568%_
                (&HashTable-ref _%h106559%_ _%key106555%_ _%default106556%_)))
          (if (eq? _%result106568%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h106559%_
               'key:
               _%key106555%_)
              _%result106568%_))))
    (define __hash-ref__0
      (lambda (_%h106573%_ _%key106574%_)
        (let ((_%default106576%_ (macro-absent-obj)))
          (__hash-ref__% _%h106573%_ _%key106574%_ _%default106576%_))))
    (define __hash-ref
      (lambda _g110165_
        (let ((_g110164_ (let () (declare (not safe)) (##length _g110165_))))
          (cond ((let () (declare (not safe)) (##fx= _g110164_ 2))
                 (apply __hash-ref__0 _g110165_))
                ((let () (declare (not safe)) (##fx= _g110164_ 3))
                 (apply __hash-ref__% _g110165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g110165_))))))
    (define hash-get
      (lambda (_%h106534%_ _%key106535%_)
        (let* ((_%h106541%_
                (let ((_%$obj106538%_ _%h106534%_))
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
               (_%h106543%_ _%h106541%_))
          (__hash-get _%h106543%_ _%key106535%_))))
    (define __hash-get
      (lambda (_%h106521%_ _%key106522%_)
        (let ((_%h106525%_ _%h106521%_))
          (&HashTable-ref _%h106525%_ _%key106522%_ '#f))))
    (define hash-put!
      (lambda (_%h106501%_ _%key106502%_ _%value106503%_)
        (let* ((_%h106509%_
                (let ((_%$obj106506%_ _%h106501%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106506%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106506%_)))
                           '#t)
                      _%$obj106506%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106506%_)))))
               (_%h106511%_ _%h106509%_))
          (__hash-put! _%h106511%_ _%key106502%_ _%value106503%_))))
    (define __hash-put!
      (lambda (_%h106487%_ _%key106488%_ _%value106489%_)
        (let ((_%h106492%_ _%h106487%_))
          (&HashTable-set! _%h106492%_ _%key106488%_ _%value106489%_))))
    (define hash-update!__%
      (lambda (_%h106452%_ _%key106453%_ _%update106454%_ _%default106455%_)
        (let* ((_%h106461%_
                (let ((_%$obj106458%_ _%h106452%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106458%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106458%_)))
                           '#t)
                      _%$obj106458%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106458%_)))))
               (_%h106463%_ _%h106461%_))
          (__hash-update!__%
           _%h106463%_
           _%key106453%_
           _%update106454%_
           _%default106455%_))))
    (define hash-update!__0
      (lambda (_%h106476%_ _%key106477%_ _%update106478%_)
        (let ((_%default106480%_ '#!void))
          (hash-update!__%
           _%h106476%_
           _%key106477%_
           _%update106478%_
           _%default106480%_))))
    (define hash-update!
      (lambda _g110167_
        (let ((_g110166_ (let () (declare (not safe)) (##length _g110167_))))
          (cond ((let () (declare (not safe)) (##fx= _g110166_ 3))
                 (apply hash-update!__0 _g110167_))
                ((let () (declare (not safe)) (##fx= _g110166_ 4))
                 (apply hash-update!__% _g110167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g110167_))))))
    (define __hash-update!__%
      (lambda (_%h106422%_ _%key106423%_ _%update106424%_ _%default106425%_)
        (let ((_%h106428%_ _%h106422%_))
          (HashTable-update!
           _%h106428%_
           _%key106423%_
           _%update106424%_
           _%default106425%_))))
    (define __hash-update!__0
      (lambda (_%h106440%_ _%key106441%_ _%update106442%_)
        (let ((_%default106444%_ '#!void))
          (__hash-update!__%
           _%h106440%_
           _%key106441%_
           _%update106442%_
           _%default106444%_))))
    (define __hash-update!
      (lambda _g110169_
        (let ((_g110168_ (let () (declare (not safe)) (##length _g110169_))))
          (cond ((let () (declare (not safe)) (##fx= _g110168_ 3))
                 (apply __hash-update!__0 _g110169_))
                ((let () (declare (not safe)) (##fx= _g110168_ 4))
                 (apply __hash-update!__% _g110169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g110169_))))))
    (define hash-remove!
      (lambda (_%h106402%_ _%key106403%_)
        (let* ((_%h106409%_
                (let ((_%$obj106406%_ _%h106402%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106406%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106406%_)))
                           '#t)
                      _%$obj106406%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106406%_)))))
               (_%h106411%_ _%h106409%_))
          (__hash-remove! _%h106411%_ _%key106403%_))))
    (define __hash-remove!
      (lambda (_%h106389%_ _%key106390%_)
        (let ((_%h106393%_ _%h106389%_))
          (&HashTable-delete! _%h106393%_ _%key106390%_))))
    (define hash-key?
      (lambda (_%h106370%_ _%k106371%_)
        (let* ((_%h106377%_
                (let ((_%$obj106374%_ _%h106370%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106374%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106374%_)))
                           '#t)
                      _%$obj106374%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106374%_)))))
               (_%h106379%_ _%h106377%_))
          (__hash-key? _%h106379%_ _%k106371%_))))
    (define __hash-key?
      (lambda (_%h106357%_ _%k106358%_)
        (let ((_%h106361%_ _%h106357%_))
          (not (eq? (&HashTable-ref _%h106361%_ _%k106358%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h106339%_)
        (let* ((_%h106345%_
                (let ((_%$obj106342%_ _%h106339%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106342%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106342%_)))
                           '#t)
                      _%$obj106342%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106342%_)))))
               (_%h106347%_ _%h106345%_))
          (__hash->list _%h106347%_))))
    (define __hash->list
      (lambda (_%h106322%_)
        (let* ((_%h106325%_ _%h106322%_) (_%lst106334%_ '()))
          (&HashTable-for-each
           _%h106325%_
           (lambda (_%k106336%_ _%v106337%_)
             (set! _%lst106334%_
                   (cons (cons _%k106336%_ _%v106337%_) _%lst106334%_))))
          _%lst106334%_)))
    (define hash->plist
      (lambda (_%h106304%_)
        (let* ((_%h106310%_
                (let ((_%$obj106307%_ _%h106304%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106307%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106307%_)))
                           '#t)
                      _%$obj106307%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106307%_)))))
               (_%h106312%_ _%h106310%_))
          (__hash->plist _%h106312%_))))
    (define __hash->plist
      (lambda (_%h106287%_)
        (let* ((_%h106290%_ _%h106287%_) (_%lst106299%_ '()))
          (&HashTable-for-each
           _%h106290%_
           (lambda (_%k106301%_ _%v106302%_)
             (set! _%lst106299%_
                   (cons _%k106301%_ (cons _%v106302%_ _%lst106299%_)))))
          _%lst106299%_)))
    (define hash-for-each
      (lambda (_%proc106258%_ _%h106259%_)
        (if (procedure? _%proc106258%_)
            (let* ((_%proc106263%_ _%proc106258%_)
                   (_%h106275%_
                    (let ((_%$obj106272%_ _%h106259%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106272%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106272%_)))
                               '#t)
                          _%$obj106272%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106272%_)))))
                   (_%h106277%_ _%h106275%_))
              (__hash-for-each _%proc106263%_ _%h106277%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@567.22-567.26"
               'contract:
               'procedure?
               'value:
               _%proc106258%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc106237%_ _%h106238%_)
        (let* ((_%proc106241%_ _%proc106237%_) (_%h106249%_ _%h106238%_))
          (&HashTable-for-each _%h106249%_ _%proc106241%_))))
    (define hash-map
      (lambda (_%proc106208%_ _%h106209%_)
        (if (procedure? _%proc106208%_)
            (let* ((_%proc106213%_ _%proc106208%_)
                   (_%h106225%_
                    (let ((_%$obj106222%_ _%h106209%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106222%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106222%_)))
                               '#t)
                          _%$obj106222%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106222%_)))))
                   (_%h106227%_ _%h106225%_))
              (__hash-map _%proc106213%_ _%h106227%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@570.17-570.21"
               'contract:
               'procedure?
               'value:
               _%proc106208%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc106182%_ _%h106183%_)
        (let* ((_%proc106186%_ _%proc106182%_)
               (_%h106194%_ _%h106183%_)
               (_%result106203%_ '()))
          (&HashTable-for-each
           _%h106194%_
           (lambda (_%k106205%_ _%v106206%_)
             (set! _%result106203%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc106186%_ _%k106205%_ _%v106206%_))
                         _%result106203%_))))
          _%result106203%_)))
    (define hash-fold
      (lambda (_%proc106152%_ _%iv106153%_ _%h106154%_)
        (if (procedure? _%proc106152%_)
            (let* ((_%proc106158%_ _%proc106152%_)
                   (_%h106170%_
                    (let ((_%$obj106167%_ _%h106154%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106167%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106167%_)))
                               '#t)
                          _%$obj106167%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106167%_)))))
                   (_%h106172%_ _%h106170%_))
              (__hash-fold _%proc106158%_ _%iv106153%_ _%h106172%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@575.18-575.22"
               'contract:
               'procedure?
               'value:
               _%proc106152%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc106125%_ _%iv106126%_ _%h106127%_)
        (let* ((_%proc106130%_ _%proc106125%_)
               (_%h106138%_ _%h106127%_)
               (_%result106147%_ _%iv106126%_))
          (&HashTable-for-each
           _%h106138%_
           (lambda (_%k106149%_ _%v106150%_)
             (set! _%result106147%_
                   (let ()
                     (declare (not safe))
                     (_%proc106130%_
                      _%k106149%_
                      _%v106150%_
                      _%result106147%_)))))
          _%result106147%_)))
    (define hash-find__%
      (lambda (_%proc106083%_ _%h106084%_ _%default-value106085%_)
        (if (procedure? _%proc106083%_)
            (let* ((_%proc106089%_ _%proc106083%_)
                   (_%h106101%_
                    (let ((_%$obj106098%_ _%h106084%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106098%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106098%_)))
                               '#t)
                          _%$obj106098%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106098%_)))))
                   (_%h106103%_ _%h106101%_))
              (__hash-find__%
               _%proc106089%_
               _%h106103%_
               _%default-value106085%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@580.18-580.22"
               'contract:
               'procedure?
               'value:
               _%proc106083%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc106116%_ _%h106117%_)
        (let ((_%default-value106119%_ '#f))
          (hash-find__% _%proc106116%_ _%h106117%_ _%default-value106119%_))))
    (define hash-find
      (lambda _g110171_
        (let ((_g110170_ (let () (declare (not safe)) (##length _g110171_))))
          (cond ((let () (declare (not safe)) (##fx= _g110170_ 2))
                 (apply hash-find__0 _g110171_))
                ((let () (declare (not safe)) (##fx= _g110170_ 3))
                 (apply hash-find__% _g110171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g110171_))))))
    (define __hash-find__%
      (lambda (_%proc106040%_ _%h106041%_ _%default-value106042%_)
        (let* ((_%proc106045%_ _%proc106040%_)
               (_%h106053%_ _%h106041%_)
               (__tmp110172
                (lambda (_%return106062%_)
                  (&HashTable-for-each
                   _%h106053%_
                   (lambda (_%k106064%_ _%v106065%_)
                     (let ((_%$e106067%_
                            (let ()
                              (declare (not safe))
                              (_%proc106045%_ _%k106064%_ _%v106065%_))))
                       (if _%$e106067%_
                           (_%return106062%_ _%$e106067%_)
                           '#!void))))
                  _%default-value106042%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp110172))))
    (define __hash-find__0
      (lambda (_%proc106073%_ _%h106074%_)
        (let ((_%default-value106076%_ '#f))
          (__hash-find__%
           _%proc106073%_
           _%h106074%_
           _%default-value106076%_))))
    (define __hash-find
      (lambda _g110174_
        (let ((_g110173_ (let () (declare (not safe)) (##length _g110174_))))
          (cond ((let () (declare (not safe)) (##fx= _g110173_ 2))
                 (apply __hash-find__0 _g110174_))
                ((let () (declare (not safe)) (##fx= _g110173_ 3))
                 (apply __hash-find__% _g110174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g110174_))))))
    (define hash-keys
      (lambda (_%h106021%_)
        (let* ((_%h106027%_
                (let ((_%$obj106024%_ _%h106021%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106024%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106024%_)))
                           '#t)
                      _%$obj106024%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106024%_)))))
               (_%h106029%_ _%h106027%_))
          (__hash-keys _%h106029%_))))
    (define __hash-keys
      (lambda (_%h106004%_)
        (let* ((_%h106007%_ _%h106004%_) (_%result106016%_ '()))
          (&HashTable-for-each
           _%h106007%_
           (lambda (_%k106018%_ _%v106019%_)
             (set! _%result106016%_ (cons _%k106018%_ _%result106016%_))))
          _%result106016%_)))
    (define hash-values
      (lambda (_%h105986%_)
        (let* ((_%h105992%_
                (let ((_%$obj105989%_ _%h105986%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105989%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105989%_)))
                           '#t)
                      _%$obj105989%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105989%_)))))
               (_%h105994%_ _%h105992%_))
          (__hash-values _%h105994%_))))
    (define __hash-values
      (lambda (_%h105969%_)
        (let* ((_%h105972%_ _%h105969%_) (_%result105981%_ '()))
          (&HashTable-for-each
           _%h105972%_
           (lambda (_%k105983%_ _%v105984%_)
             (set! _%result105981%_ (cons _%v105984%_ _%result105981%_))))
          _%result105981%_)))
    (define hash-copy
      (lambda (_%h105951%_)
        (let* ((_%h105957%_
                (let ((_%$obj105954%_ _%h105951%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105954%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105954%_)))
                           '#t)
                      _%$obj105954%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105954%_)))))
               (_%h105959%_ _%h105957%_))
          (__hash-copy _%h105959%_))))
    (define __hash-copy
      (lambda (_%h105939%_)
        (let ((_%h105942%_ _%h105939%_)) (__HashTable-copy _%h105942%_))))
    (define hash-clear!
      (lambda (_%h105921%_)
        (let* ((_%h105927%_
                (let ((_%$obj105924%_ _%h105921%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105924%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105924%_)))
                           '#t)
                      _%$obj105924%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105924%_)))))
               (_%h105929%_ _%h105927%_))
          (__hash-clear! _%h105929%_))))
    (define __hash-clear!
      (lambda (_%h105909%_)
        (let ((_%h105912%_ _%h105909%_)) (&HashTable-clear! _%h105912%_))))
    (define hash-merge
      (lambda (_%h105890%_ . _%rest105891%_)
        (let* ((_%h105897%_
                (let ((_%$obj105894%_ _%h105890%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105894%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105894%_)))
                           '#t)
                      _%$obj105894%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105894%_)))))
               (_%h105899%_ _%h105897%_))
          (declare (not safe))
          (##apply __hash-merge _%h105899%_ _%rest105891%_))))
    (define __hash-merge
      (lambda (_%h105875%_ . _%rest105876%_)
        (let* ((_%h105879%_ _%h105875%_)
               (_%copy105888%_ (__HashTable-copy _%h105879%_)))
          (apply hash-merge! _%copy105888%_ _%rest105876%_)
          _%copy105888%_)))
    (define hash-merge!
      (lambda (_%h105856%_ . _%rest105857%_)
        (let* ((_%h105863%_
                (let ((_%$obj105860%_ _%h105856%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105860%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105860%_)))
                           '#t)
                      _%$obj105860%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105860%_)))))
               (_%h105865%_ _%h105863%_))
          (declare (not safe))
          (##apply __hash-merge! _%h105865%_ _%rest105857%_))))
    (define __hash-merge!
      (lambda (_%h105819%_ . _%rest105820%_)
        (let ((_%h105823%_ _%h105819%_))
          (let ((__tmp110175
                 (lambda (_%hr105832%_)
                   (let* ((_%hr105838%_
                           (let ((_%$obj105835%_ _%hr105832%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj105835%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj105835%_)))
                                      '#t)
                                 _%$obj105835%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj105835%_)))))
                          (_%hr105840%_ _%hr105838%_))
                     (&HashTable-for-each
                      _%hr105840%_
                      (lambda (_%k105853%_ _%v105854%_)
                        (if (__hash-key? _%h105823%_ _%k105853%_)
                            '#!void
                            (&HashTable-set!
                             _%h105823%_
                             _%k105853%_
                             _%v105854%_))))))))
            (declare (not safe))
            (##for-each __tmp110175 _%rest105820%_))
          _%h105823%_)))))
