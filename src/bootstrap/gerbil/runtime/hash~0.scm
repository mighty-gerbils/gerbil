(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712246554)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106915 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106915
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106895%_
        (apply make-instance UnboundKeyError::t _%$args106895%_)))
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
      (lambda (_%where106769%_ _%message106770%_ . _%irritants106771%_)
        (let ((__tmp106916
               (let ((__obj106909
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106909
                  _%message106770%_
                  'where:
                  _%where106769%_
                  'irritants:
                  _%irritants106771%_)
                 __obj106909)))
          (declare (not safe))
          (raise __tmp106916))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106917 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106917
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
      (lambda (_%obj106767%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106767%_))))
    (define try-HashTable
      (lambda (_%obj106765%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106765%_))))
    (define HashTable?
      (lambda (_%obj106763%_)
        (let ((__tmp106918
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106763%_ __tmp106918))))
    (define is-HashTable?
      (lambda (_%obj106761%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106761%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106745%_)
        (let* ((_%self106750%_
                (let ((_%$obj106747%_ _%self106745%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106747%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106747%_)))
                           '#t)
                      _%$obj106747%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106747%_)))))
               (_%self106752%_ _%self106750%_))
          (declare (not safe))
          (&HashTable-clear! _%self106752%_))))
    (define &HashTable-clear!
      (lambda (_%self106730%_)
        (let ((_%self106732%_ _%self106730%_))
          (declare (not safe))
          (let ((_%obj106742%_
                 (##unchecked-structure-ref _%self106732%_ '1 '#f 'clear!))
                (_%f106743%_
                 (##unchecked-structure-ref _%self106732%_ '2 '#f 'clear!)))
            (_%f106743%_ _%obj106742%_)))))
    (define HashTable-copy
      (lambda (_%self106714%_)
        (let* ((_%self106719%_
                (let ((_%$obj106716%_ _%self106714%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106716%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106716%_)))
                           '#t)
                      _%$obj106716%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106716%_)))))
               (_%self106721%_ _%self106719%_))
          (declare (not safe))
          (__HashTable-copy _%self106721%_))))
    (define __HashTable-copy
      (lambda (_%self106701%_)
        (let* ((_%self106703%_ _%self106701%_)
               (_%$obj106711%_
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%self106703%_))))
          (if (and (let () (declare (not safe)) (##structure? _%$obj106711%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj106711%_)))
                   '#t)
              _%$obj106711%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj106711%_))))))
    (define &HashTable-copy
      (lambda (_%self106686%_)
        (let ((_%self106688%_ _%self106686%_))
          (declare (not safe))
          (let ((_%obj106698%_
                 (##unchecked-structure-ref _%self106688%_ '1 '#f 'copy))
                (_%f106699%_
                 (##unchecked-structure-ref _%self106688%_ '3 '#f 'copy)))
            (_%f106699%_ _%obj106698%_)))))
    (define HashTable-delete!
      (lambda (_%self106669%_ _%key106670%_)
        (let* ((_%self106675%_
                (let ((_%$obj106672%_ _%self106669%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106672%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106672%_)))
                           '#t)
                      _%$obj106672%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106672%_)))))
               (_%self106677%_ _%self106675%_))
          (declare (not safe))
          (&HashTable-delete! _%self106677%_ _%key106670%_))))
    (define &HashTable-delete!
      (lambda (_%self106653%_ _%key106654%_)
        (let ((_%self106656%_ _%self106653%_))
          (declare (not safe))
          (let ((_%obj106666%_
                 (##unchecked-structure-ref _%self106656%_ '1 '#f 'delete!))
                (_%f106667%_
                 (##unchecked-structure-ref _%self106656%_ '4 '#f 'delete!)))
            (_%f106667%_ _%obj106666%_ _%key106654%_)))))
    (define HashTable-for-each
      (lambda (_%self106626%_ _%proc106627%_)
        (let* ((_%self106632%_
                (let ((_%$obj106629%_ _%self106626%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106629%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106629%_)))
                           '#t)
                      _%$obj106629%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106629%_)))))
               (_%self106634%_ _%self106632%_))
          (if (let () (declare (not safe)) (procedure? _%proc106627%_))
              (let ((_%proc106643%_ _%proc106627%_))
                (declare (not safe))
                (&HashTable-for-each _%self106634%_ _%proc106643%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106627%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self106602%_ _%proc106603%_)
        (let* ((_%self106605%_ _%self106602%_) (_%proc106612%_ _%proc106603%_))
          (declare (not safe))
          (let ((_%obj106623%_
                 (##unchecked-structure-ref _%self106605%_ '1 '#f 'for-each))
                (_%f106624%_
                 (##unchecked-structure-ref _%self106605%_ '5 '#f 'for-each)))
            (_%f106624%_ _%obj106623%_ _%proc106612%_)))))
    (define HashTable-length
      (lambda (_%self106586%_)
        (let* ((_%self106591%_
                (let ((_%$obj106588%_ _%self106586%_))
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
               (_%self106593%_ _%self106591%_))
          (declare (not safe))
          (__HashTable-length _%self106593%_))))
    (define __HashTable-length
      (lambda (_%self106573%_)
        (let* ((_%self106575%_ _%self106573%_)
               (_%val106583%_
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%self106575%_))))
          (if (let () (declare (not safe)) (fixnum? _%val106583%_))
              _%val106583%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val106583%_))))))
    (define &HashTable-length
      (lambda (_%self106558%_)
        (let ((_%self106560%_ _%self106558%_))
          (declare (not safe))
          (let ((_%obj106570%_
                 (##unchecked-structure-ref _%self106560%_ '1 '#f 'length))
                (_%f106571%_
                 (##unchecked-structure-ref _%self106560%_ '6 '#f 'length)))
            (_%f106571%_ _%obj106570%_)))))
    (define HashTable-ref
      (lambda (_%self106540%_ _%key106541%_ _%default106542%_)
        (let* ((_%self106547%_
                (let ((_%$obj106544%_ _%self106540%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106544%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106544%_)))
                           '#t)
                      _%$obj106544%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106544%_)))))
               (_%self106549%_ _%self106547%_))
          (declare (not safe))
          (&HashTable-ref _%self106549%_ _%key106541%_ _%default106542%_))))
    (define &HashTable-ref
      (lambda (_%self106523%_ _%key106524%_ _%default106525%_)
        (let ((_%self106527%_ _%self106523%_))
          (declare (not safe))
          (let ((_%obj106537%_
                 (##unchecked-structure-ref _%self106527%_ '1 '#f 'ref))
                (_%f106538%_
                 (##unchecked-structure-ref _%self106527%_ '7 '#f 'ref)))
            (_%f106538%_ _%obj106537%_ _%key106524%_ _%default106525%_)))))
    (define HashTable-set!
      (lambda (_%self106505%_ _%key106506%_ _%value106507%_)
        (let* ((_%self106512%_
                (let ((_%$obj106509%_ _%self106505%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106509%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106509%_)))
                           '#t)
                      _%$obj106509%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106509%_)))))
               (_%self106514%_ _%self106512%_))
          (declare (not safe))
          (&HashTable-set! _%self106514%_ _%key106506%_ _%value106507%_))))
    (define &HashTable-set!
      (lambda (_%self106488%_ _%key106489%_ _%value106490%_)
        (let ((_%self106492%_ _%self106488%_))
          (declare (not safe))
          (let ((_%obj106502%_
                 (##unchecked-structure-ref _%self106492%_ '1 '#f 'set!))
                (_%f106503%_
                 (##unchecked-structure-ref _%self106492%_ '8 '#f 'set!)))
            (_%f106503%_ _%obj106502%_ _%key106489%_ _%value106490%_)))))
    (define HashTable-update!
      (lambda (_%self106459%_ _%key106460%_ _%proc106461%_ _%default106462%_)
        (let* ((_%self106467%_
                (let ((_%$obj106464%_ _%self106459%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106464%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106464%_)))
                           '#t)
                      _%$obj106464%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106464%_)))))
               (_%self106469%_ _%self106467%_))
          (if (let () (declare (not safe)) (procedure? _%proc106461%_))
              (let ((_%proc106478%_ _%proc106461%_))
                (declare (not safe))
                (&HashTable-update!
                 _%self106469%_
                 _%key106460%_
                 _%proc106478%_
                 _%default106462%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106461%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self106431%_ _%key106432%_ _%proc106433%_ _%default106434%_)
        (let* ((_%self106436%_ _%self106431%_) (_%proc106443%_ _%proc106433%_))
          (declare (not safe))
          (let ((_%obj106454%_
                 (##unchecked-structure-ref _%self106436%_ '1 '#f 'update!))
                (_%f106456%_
                 (##unchecked-structure-ref _%self106436%_ '9 '#f 'update!)))
            (_%f106456%_
             _%obj106454%_
             _%key106432%_
             _%proc106443%_
             _%default106434%_)))))
    (define Locker::t
      (let ((__tmp106919 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106919
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
      (lambda (_%obj106429%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj106429%_))))
    (define try-Locker
      (lambda (_%obj106427%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj106427%_))))
    (define Locker?
      (lambda (_%obj106425%_)
        (let ((__tmp106920
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106425%_ __tmp106920))))
    (define is-Locker?
      (lambda (_%obj106423%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj106423%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self106407%_)
        (let* ((_%self106412%_
                (let ((_%$obj106409%_ _%self106407%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106409%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106409%_)))
                           '#t)
                      _%$obj106409%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106409%_)))))
               (_%self106414%_ _%self106412%_))
          (declare (not safe))
          (&Locker-read-lock! _%self106414%_))))
    (define &Locker-read-lock!
      (lambda (_%self106392%_)
        (let ((_%self106394%_ _%self106392%_))
          (declare (not safe))
          (let ((_%obj106404%_
                 (##unchecked-structure-ref _%self106394%_ '1 '#f 'read-lock!))
                (_%f106405%_
                 (##unchecked-structure-ref
                  _%self106394%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f106405%_ _%obj106404%_)))))
    (define Locker-read-unlock!
      (lambda (_%self106376%_)
        (let* ((_%self106381%_
                (let ((_%$obj106378%_ _%self106376%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106378%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106378%_)))
                           '#t)
                      _%$obj106378%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106378%_)))))
               (_%self106383%_ _%self106381%_))
          (declare (not safe))
          (&Locker-read-unlock! _%self106383%_))))
    (define &Locker-read-unlock!
      (lambda (_%self106361%_)
        (let ((_%self106363%_ _%self106361%_))
          (declare (not safe))
          (let ((_%obj106373%_
                 (##unchecked-structure-ref
                  _%self106363%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f106374%_
                 (##unchecked-structure-ref
                  _%self106363%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f106374%_ _%obj106373%_)))))
    (define Locker-write-lock!
      (lambda (_%self106345%_)
        (let* ((_%self106350%_
                (let ((_%$obj106347%_ _%self106345%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106347%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106347%_)))
                           '#t)
                      _%$obj106347%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106347%_)))))
               (_%self106352%_ _%self106350%_))
          (declare (not safe))
          (&Locker-write-lock! _%self106352%_))))
    (define &Locker-write-lock!
      (lambda (_%self106330%_)
        (let ((_%self106332%_ _%self106330%_))
          (declare (not safe))
          (let ((_%obj106342%_
                 (##unchecked-structure-ref
                  _%self106332%_
                  '1
                  '#f
                  'write-lock!))
                (_%f106343%_
                 (##unchecked-structure-ref
                  _%self106332%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f106343%_ _%obj106342%_)))))
    (define Locker-write-unlock!
      (lambda (_%self106314%_)
        (let* ((_%self106319%_
                (let ((_%$obj106316%_ _%self106314%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106316%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106316%_)))
                           '#t)
                      _%$obj106316%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106316%_)))))
               (_%self106321%_ _%self106319%_))
          (declare (not safe))
          (&Locker-write-unlock! _%self106321%_))))
    (define &Locker-write-unlock!
      (lambda (_%self106297%_)
        (let ((_%self106299%_ _%self106297%_))
          (declare (not safe))
          (let ((_%obj106309%_
                 (##unchecked-structure-ref
                  _%self106299%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f106311%_
                 (##unchecked-structure-ref
                  _%self106299%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f106311%_ _%obj106309%_)))))
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
      (lambda (_%table106290%_
               _%key106291%_
               _%update106292%_
               _%default106293%_)
        (let ((_%result106295%_
               (table-ref _%table106290%_ _%key106291%_ _%default106293%_)))
          (table-set!
           _%table106290%_
           _%key106291%_
           (_%update106292%_ _%default106293%_)))))
    (define gambit-table-for-each
      (lambda (_%table106287%_ _%proc106288%_)
        (table-for-each _%proc106288%_ _%table106287%_)))
    (define gambit-table-clear!
      (lambda (_%table106285%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table106285%_ '0 '5 '#f '#f))))
    (let ((__tmp106921 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106921 'ref table-ref))
    (let ((__tmp106922 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106922 'set! table-set!))
    (let ((__tmp106923 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106923 'update! gambit-table-update!))
    (let ((__tmp106924 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106924 'delete! table-set!))
    (let ((__tmp106925 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106925 'for-each gambit-table-for-each))
    (let ((__tmp106926 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106926 'length table-length))
    (let ((__tmp106927 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106927 'copy table-copy))
    (let ((__tmp106928 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106928 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots106267%_ '(table count free hash test seed))
             (_%slot-vector106269%_ (list->vector (cons '#f _%slots106267%_)))
             (_%slot-table106276%_
              (let ((_%slot-table106271%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106931
                       (lambda (_%slot106273%_ _%field106274%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106271%_
                            _%slot106273%_
                            _%field106274%_))
                         (let ((__tmp106932
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106273%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106271%_
                            __tmp106932
                            _%field106274%_))))
                      (__tmp106929
                       (let ((__tmp106930
                              (let ()
                                (declare (not safe))
                                (##length _%slots106267%_))))
                         (declare (not safe))
                         (##iota __tmp106930 '1))))
                  (declare (not safe))
                  (##for-each __tmp106931 _%slots106267%_ __tmp106929))
                _%slot-table106271%_))
             (_%flags106278%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106280%_ '#())
             (_%properties106282%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106267%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106933 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags106278%_
         __table::t
         _%fields106280%_
         __tmp106933
         _%slot-vector106269%_
         _%slot-table106276%_
         _%properties106282%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots106249%_ '(gcht immediate))
             (_%slot-vector106251%_ (list->vector (cons '#f _%slots106249%_)))
             (_%slot-table106258%_
              (let ((_%slot-table106253%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106936
                       (lambda (_%slot106255%_ _%field106256%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106253%_
                            _%slot106255%_
                            _%field106256%_))
                         (let ((__tmp106937
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106255%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106253%_
                            __tmp106937
                            _%field106256%_))))
                      (__tmp106934
                       (let ((__tmp106935
                              (let ()
                                (declare (not safe))
                                (##length _%slots106249%_))))
                         (declare (not safe))
                         (##iota __tmp106935 '1))))
                  (declare (not safe))
                  (##for-each __tmp106936 _%slots106249%_ __tmp106934))
                _%slot-table106253%_))
             (_%flags106260%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106262%_ '#())
             (_%properties106264%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106249%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106938 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags106260%_
         __gc-table::t
         _%fields106262%_
         __tmp106938
         _%slot-vector106251%_
         _%slot-table106258%_
         _%properties106264%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp106940 (list))
            (__tmp106939
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106940
         '(table lock)
         __tmp106939
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args106246%_
        (apply make-instance locked-hash-table::t _%$args106246%_)))
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
      (let ((__tmp106942 (list))
            (__tmp106941
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106942
         '(table key-check)
         __tmp106941
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args106243%_
        (apply make-instance checked-hash-table::t _%$args106243%_)))
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
      (let ((__tmp106944 (list hash-table::t))
            (__tmp106943 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106944
         '()
         __tmp106943
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args106240%_
        (apply make-instance eq-hash-table::t _%$args106240%_)))
    (define eqv-hash-table::t
      (let ((__tmp106946 (list hash-table::t))
            (__tmp106945 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106946
         '()
         __tmp106945
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args106237%_
        (apply make-instance eqv-hash-table::t _%$args106237%_)))
    (define symbol-hash-table::t
      (let ((__tmp106948 (list hash-table::t))
            (__tmp106947 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106948
         '()
         __tmp106947
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args106234%_
        (apply make-instance symbol-hash-table::t _%$args106234%_)))
    (define string-hash-table::t
      (let ((__tmp106950 (list hash-table::t))
            (__tmp106949 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106950
         '()
         __tmp106949
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args106231%_
        (apply make-instance string-hash-table::t _%$args106231%_)))
    (define immediate-hash-table::t
      (let ((__tmp106952 (list hash-table::t))
            (__tmp106951 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106952
         '()
         __tmp106951
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args106228%_
        (apply make-instance immediate-hash-table::t _%$args106228%_)))
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
      (lambda (_%obj106226%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj106226%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj106224%_)
        (let () (declare (not safe)) (is-HashTable? _%obj106224%_))))
    (define _%locked-hash-table::ref102279%_
      (lambda (_%self106200%_ _%key106202%_ _%default106203%_)
        (let ((_%self106206%_ _%self106200%_))
          (let ((_%h106216%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106206%_ '1 '#f '#f)))
                (_%l106218%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106206%_ '2 '#f '#f))))
            (let ((__tmp106955
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l106218%_))))
                  (__tmp106954
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h106216%_
                        _%key106202%_
                        _%default106203%_))))
                  (__tmp106953
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l106218%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106955 __tmp106954 __tmp106953))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref102279%_
       '#f))
    (define _%locked-hash-table::set!102281%_
      (lambda (_%self106053%_ _%key106055%_ _%value106056%_)
        (let ((_%self106059%_ _%self106053%_))
          (let ((_%h106069%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106059%_ '1 '#f '#f)))
                (_%l106071%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106059%_ '2 '#f '#f))))
            (let ((__tmp106958
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l106071%_))))
                  (__tmp106957
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h106069%_
                        _%key106055%_
                        _%value106056%_))))
                  (__tmp106956
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l106071%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106958 __tmp106957 __tmp106956))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!102281%_
       '#f))
    (define _%locked-hash-table::update!102283%_
      (lambda (_%self105905%_ _%key105907%_ _%update105908%_ _%default105909%_)
        (let ((_%self105912%_ _%self105905%_))
          (let ((_%h105922%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105912%_ '1 '#f '#f)))
                (_%l105924%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105912%_ '2 '#f '#f))))
            (let ((__tmp106961
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105924%_))))
                  (__tmp106960
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-update!
                        _%h105922%_
                        _%key105907%_
                        _%update105908%_
                        _%default105909%_))))
                  (__tmp106959
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105924%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106961 __tmp106960 __tmp106959))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!102283%_
       '#f))
    (define _%locked-hash-table::delete!102285%_
      (lambda (_%self105759%_ _%key105761%_)
        (let ((_%self105764%_ _%self105759%_))
          (let ((_%h105774%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105764%_ '1 '#f '#f)))
                (_%l105776%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105764%_ '2 '#f '#f))))
            (let ((__tmp106964
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105776%_))))
                  (__tmp106963
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-delete! _%h105774%_ _%key105761%_))))
                  (__tmp106962
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105776%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106964 __tmp106963 __tmp106962))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!102285%_
       '#f))
    (define _%locked-hash-table::for-each102287%_
      (lambda (_%self105613%_ _%proc105615%_)
        (let ((_%self105618%_ _%self105613%_))
          (let ((_%h105628%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105618%_ '1 '#f '#f)))
                (_%l105630%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105618%_ '2 '#f '#f))))
            (let ((__tmp106967
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105630%_))))
                  (__tmp106966
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-for-each _%h105628%_ _%proc105615%_))))
                  (__tmp106965
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105630%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106967 __tmp106966 __tmp106965))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each102287%_
       '#f))
    (define _%locked-hash-table::length102289%_
      (lambda (_%self105468%_)
        (let ((_%self105472%_ _%self105468%_))
          (let ((_%h105482%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105472%_ '1 '#f '#f)))
                (_%l105484%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105472%_ '2 '#f '#f))))
            (let ((__tmp106970
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105484%_))))
                  (__tmp106969
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-length _%h105482%_))))
                  (__tmp106968
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105484%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106970 __tmp106969 __tmp106968))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length102289%_
       '#f))
    (define _%locked-hash-table::copy102291%_
      (lambda (_%self105323%_)
        (let ((_%self105327%_ _%self105323%_))
          (let ((_%h105337%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105327%_ '1 '#f '#f)))
                (_%l105339%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105327%_ '2 '#f '#f))))
            (let ((__tmp106973
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105339%_))))
                  (__tmp106972
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h105337%_))))
                  (__tmp106971
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105339%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106973 __tmp106972 __tmp106971))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy102291%_
       '#f))
    (define _%locked-hash-table::clear!102293%_
      (lambda (_%self105178%_)
        (let ((_%self105182%_ _%self105178%_))
          (let ((_%h105192%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105182%_ '1 '#f '#f)))
                (_%l105194%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105182%_ '2 '#f '#f))))
            (let ((__tmp106976
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105194%_))))
                  (__tmp106975
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-clear! _%h105192%_))))
                  (__tmp106974
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105194%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106976 __tmp106975 __tmp106974))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!102293%_
       '#f))
    (let ((__tmp106977 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106977 'read-lock! mutex-lock!))
    (let ((__tmp106978 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106978 'read-unlock! mutex-unlock!))
    (let ((__tmp106979 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106979 'write-lock! mutex-lock!))
    (let ((__tmp106980 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106980 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref102571%_
      (lambda (_%self105031%_ _%key105032%_ _%default105033%_)
        (let ((_%self105036%_ _%self105031%_))
          (let ((_%h105046%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105036%_ '1 '#f '#f)))
                (_%key?105048%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105036%_ '2 '#f '#f))))
            ((lambda (_%g105050105052%_)
               (if (_%g105050105052%_ _%key105032%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105032%_))))
             _%key?105048%_)
            (let ()
              (declare (not safe))
              (&HashTable-ref _%h105046%_ _%key105032%_ _%default105033%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref102571%_
       '#f))
    (define _%checked-hash-table::set!102573%_
      (lambda (_%self104884%_ _%key104885%_ _%value104886%_)
        (let ((_%self104889%_ _%self104884%_))
          (let ((_%h104899%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104889%_ '1 '#f '#f)))
                (_%key?104901%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104889%_ '2 '#f '#f))))
            ((lambda (_%g104903104905%_)
               (if (_%g104903104905%_ _%key104885%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104885%_))))
             _%key?104901%_)
            (let ()
              (declare (not safe))
              (&HashTable-set! _%h104899%_ _%key104885%_ _%value104886%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!102573%_
       '#f))
    (define _%checked-hash-table::update!102575%_
      (lambda (_%self104738%_ _%key104739%_ _%update104740%_ _%default104741%_)
        (let ((_%self104744%_ _%self104738%_))
          (let ((_%h104754%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104744%_ '1 '#f '#f)))
                (_%key?104756%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104744%_ '2 '#f '#f))))
            ((lambda (_%key?104759%_)
               (if (_%key?104759%_ _%key104739%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104739%_)))
               (if (let () (declare (not safe)) (procedure? _%update104740%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104740%_))))
             _%key?104756%_)
            (let ()
              (declare (not safe))
              (&HashTable-update!
               _%h104754%_
               _%key104739%_
               _%update104740%_
               _%default104741%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!102575%_
       '#f))
    (define _%checked-hash-table::delete!102577%_
      (lambda (_%self104592%_ _%key104593%_)
        (let ((_%self104596%_ _%self104592%_))
          (let ((_%h104606%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104596%_ '1 '#f '#f)))
                (_%key?104608%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104596%_ '2 '#f '#f))))
            ((lambda (_%g104610104612%_)
               (if (_%g104610104612%_ _%key104593%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104593%_))))
             _%key?104608%_)
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%h104606%_ _%key104593%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!102577%_
       '#f))
    (define _%checked-hash-table::for-each102579%_
      (lambda (_%self104448%_ _%proc104449%_)
        (let ((_%self104452%_ _%self104448%_))
          (let ((_%h104462%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104452%_ '1 '#f '#f)))
                (_%key?104464%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104452%_ '2 '#f '#f))))
            ((lambda (_%_104467%_)
               (if (let () (declare (not safe)) (procedure? _%proc104449%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc104449%_))))
             _%key?104464%_)
            (let ()
              (declare (not safe))
              (&HashTable-for-each _%h104462%_ _%proc104449%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each102579%_
       '#f))
    (define _%checked-hash-table::length102581%_
      (lambda (_%self104307%_)
        (let ((_%self104310%_ _%self104307%_))
          (let ((_%h104320%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104310%_ '1 '#f '#f)))
                (_%key?104322%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104310%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-length _%h104320%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length102581%_
       '#f))
    (define _%checked-hash-table::copy102583%_
      (lambda (_%self104166%_)
        (let ((_%self104169%_ _%self104166%_))
          (let ((_%h104179%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104169%_ '1 '#f '#f)))
                (_%key?104181%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104169%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-copy _%h104179%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy102583%_
       '#f))
    (define _%checked-hash-table::clear!102585%_
      (lambda (_%self104025%_)
        (let ((_%self104028%_ _%self104025%_))
          (let ((_%h104038%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104028%_ '1 '#f '#f)))
                (_%key?104040%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104028%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-clear! _%h104038%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!102585%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103895%_
               _%count103896%_
               _%free103897%_
               _%hash103898%_
               _%test103899%_
               _%seed103900%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103895%_
           _%count103896%_
           _%free103897%_
           _%hash103898%_
           _%test103899%_
           _%seed103900%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords103718%_
               _%size-hint103708103719%_
               _%seed103709103721%_
               _%test103710103723%_
               _%hash103711103725%_
               _%lock103712103727%_
               _%check103713103729%_
               _%weak-keys103714103731%_
               _%weak-values103715103733%_)
        (let* ((_%size-hint103736%_
                (if (eq? _%size-hint103708103719%_ absent-value)
                    '#f
                    _%size-hint103708103719%_))
               (_%seed103738%_
                (if (eq? _%seed103709103721%_ absent-value)
                    '#f
                    _%seed103709103721%_))
               (_%test103740%_
                (if (eq? _%test103710103723%_ absent-value)
                    equal?
                    _%test103710103723%_))
               (_%hash103742%_
                (if (eq? _%hash103711103725%_ absent-value)
                    '#f
                    _%hash103711103725%_))
               (_%lock103744%_
                (if (eq? _%lock103712103727%_ absent-value)
                    '#f
                    _%lock103712103727%_))
               (_%check103746%_
                (if (eq? _%check103713103729%_ absent-value)
                    '#f
                    _%check103713103729%_))
               (_%weak-keys103748%_
                (if (eq? _%weak-keys103714103731%_ absent-value)
                    '#f
                    _%weak-keys103714103731%_))
               (_%weak-values103750%_
                (if (eq? _%weak-values103715103733%_ absent-value)
                    '#f
                    _%weak-values103715103733%_)))
          (letrec ((_%table-seed103752%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103738%_))
                          _%seed103738%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103753%_
                    (lambda (_%ht103873%_)
                      (if _%lock103744%_
                          (let ((_%$obj103878%_
                                 (let ((__tmp106981
                                        (let ((_%$obj103875%_ _%lock103744%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103875%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103875%_)))
                                                   '#t)
                                              _%$obj103875%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103875%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103873%_
                                    __tmp106981))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103878%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103878%_)))
                                     '#t)
                                _%$obj103878%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103878%_))))
                          _%ht103873%_)))
                   (_%wrap-checked103754%_
                    (lambda (_%ht103867%_ _%implicit103868%_)
                      (if _%check103746%_
                          (let ((_%$obj103870%_
                                 (let ((__tmp106982
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103746%_))
                                            _%check103746%_
                                            _%implicit103868%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103867%_
                                    __tmp106982))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103870%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103870%_)))
                                     '#t)
                                _%$obj103870%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103870%_))))
                          _%ht103867%_)))
                   (_%make103755%_
                    (lambda (_%kons103852%_
                             _%key?103853%_
                             _%hash103854%_
                             _%test103855%_)
                      (let* ((_%size103857%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103736%_)))
                             (_%table103859%_
                              (let ((__tmp106983 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103857%_ __tmp106983)))
                             (_%ht103864%_
                              (let ((_%$obj103861%_
                                     (_%kons103852%_
                                      _%table103859%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103857%_ '2))
                                      _%hash103854%_
                                      _%test103855%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103752%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103861%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103861%_)))
                                         '#t)
                                    _%$obj103861%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103861%_)))))
                             (__tmp106984
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103753%_ _%ht103864%_))))
                        (declare (not safe))
                        (_%wrap-checked103754%_ __tmp106984 _%key?103853%_))))
                   (_%make-gc-hash-table103756%_
                    (lambda ()
                      (let* ((_%ht103850%_
                              (let ((_%$obj103847%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103736%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103847%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103847%_)))
                                         '#t)
                                    _%$obj103847%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103847%_)))))
                             (__tmp106985
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103753%_ _%ht103850%_))))
                        (declare (not safe))
                        (_%wrap-checked103754%_ __tmp106985 true))))
                   (_%make-gambit-table103757%_
                    (lambda ()
                      (let* ((_%size103825%_
                              (let ((_%$e103822%_ _%size-hint103736%_))
                                (if _%$e103822%_
                                    _%$e103822%_
                                    (macro-absent-obj))))
                             (_%test103830%_
                              (let ((_%$e103827%_ _%test103740%_))
                                (if _%$e103827%_ _%$e103827%_ equal?)))
                             (_%hash103838%_
                              (let ((_%$e103832%_ _%hash103742%_))
                                (if _%$e103832%_
                                    _%$e103832%_
                                    (if (eq? _%test103830%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103830%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103843%_
                              (let ((_%$obj103840%_
                                     (make-table
                                      'size:
                                      _%size103825%_
                                      'test:
                                      _%test103830%_
                                      'hash:
                                      _%hash103838%_
                                      'weak-keys:
                                      _%weak-keys103748%_
                                      'weak-values:
                                      _%weak-values103750%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103840%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103840%_)))
                                         '#t)
                                    _%$obj103840%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103840%_)))))
                             (__tmp106986
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103753%_ _%ht103843%_))))
                        (declare (not safe))
                        (_%wrap-checked103754%_ __tmp106986 true)))))
            (if (or _%weak-keys103748%_ _%weak-values103750%_)
                (let () (declare (not safe)) (_%make-gambit-table103757%_))
                (if (and (or (eq? _%test103740%_ eq?)
                             (eq? _%test103740%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103742%_))
                             (eq? _%hash103742%_ eq?-hash)
                             (eq? _%hash103742%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103738%_)))
                    (let ()
                      (declare (not safe))
                      (_%make-gc-hash-table103756%_))
                    (if (and (or (eq? _%test103740%_ eq?)
                                 (eq? _%test103740%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103742%_))
                                 (eq? _%hash103742%_ eq?-hash)
                                 (eq? _%hash103742%_ eq-hash)))
                        (let ()
                          (declare (not safe))
                          (_%make103755%_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (eq? _%test103740%_ eqv?)
                                     (eq? _%test103740%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103742%_))
                                     (eq? _%hash103742%_ eqv?-hash)
                                     (eq? _%hash103742%_ eqv-hash)))
                            (let ()
                              (declare (not safe))
                              (_%make103755%_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (eq? _%test103740%_ eq?)
                                         (eq? _%test103740%_ ##eq?))
                                     (or (eq? _%hash103742%_ symbolic-hash)
                                         (eq? _%hash103742%_ ##symbol-hash)))
                                (let ()
                                  (declare (not safe))
                                  (_%make103755%_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (eq? _%test103740%_ eq?)
                                             (eq? _%test103740%_ ##eq?))
                                         (eq? _%hash103742%_ immediate-hash))
                                    (let ()
                                      (declare (not safe))
                                      (_%make103755%_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (eq? _%test103740%_ equal?)
                                                 (eq? _%test103740%_ ##equal?)
                                                 (eq? _%test103740%_ string=?)
                                                 (eq? _%test103740%_
                                                      ##string=?))
                                             (or (eq? _%hash103742%_
                                                      string-hash)
                                                 (eq? _%hash103742%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (declare (not safe))
                                          (_%make103755%_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (eq? _%test103740%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103742%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%make103755%_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp106987
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103740%_))))
                                                  (declare (not safe))
                                                  (not __tmp106987))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103740%_))
                                                (if (let ((__tmp106988
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103742%_))))
                                                      (declare (not safe))
                                                      (not __tmp106988))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103742%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%make103755%_
                                                       make-generic-hash-table
                                                       true
                                                       _%hash103742%_
                                                       _%test103740%_))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103885%_ . _%args103886%_)
        (apply make-hash-table__%
               _%@@keywords103885%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103885%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103885%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103885%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103885%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103885%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103885%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103885%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103885%_
                  'weak-values:
                  absent-value))
               _%args103886%_)))
    (define make-hash-table
      (lambda _%args103716103892%_
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
               _%args103716103892%_)))
    (define make-hash-table-eq
      (lambda _%args103705%_
        (apply make-hash-table 'test: eq? _%args103705%_)))
    (define make-hash-table-eqv
      (lambda _%args103703%_
        (apply make-hash-table 'test: eqv? _%args103703%_)))
    (define make-hash-table-symbolic
      (lambda _%args103701%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103701%_)))
    (define make-hash-table-string
      (lambda _%args103699%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103699%_)))
    (define make-hash-table-immediate
      (lambda _%args103697%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103697%_)))
    (define list->hash-table
      (lambda (_%lst103694%_ . _%args103695%_)
        (let ((__tmp106989
               (apply make-hash-table
                      'size:
                      (length _%lst103694%_)
                      _%args103695%_)))
          (declare (not safe))
          (list->hash-table! _%lst103694%_ __tmp106989))))
    (define list->hash-table-eq
      (lambda (_%lst103691%_ . _%args103692%_)
        (let ((__tmp106990
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103691%_)
                      _%args103692%_)))
          (declare (not safe))
          (list->hash-table! _%lst103691%_ __tmp106990))))
    (define list->hash-table-eqv
      (lambda (_%lst103688%_ . _%args103689%_)
        (let ((__tmp106991
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103688%_)
                      _%args103689%_)))
          (declare (not safe))
          (list->hash-table! _%lst103688%_ __tmp106991))))
    (define list->hash-table-symbolic
      (lambda (_%lst103685%_ . _%args103686%_)
        (let ((__tmp106992
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103685%_)
                      _%args103686%_)))
          (declare (not safe))
          (list->hash-table! _%lst103685%_ __tmp106992))))
    (define list->hash-table-string
      (lambda (_%lst103682%_ . _%args103683%_)
        (let ((__tmp106993
               (apply make-hash-table-string
                      'size:
                      (length _%lst103682%_)
                      _%args103683%_)))
          (declare (not safe))
          (list->hash-table! _%lst103682%_ __tmp106993))))
    (define list->hash-table-immediate
      (lambda (_%lst103679%_ . _%args103680%_)
        (let ((__tmp106994
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103679%_)
                      _%args103680%_)))
          (declare (not safe))
          (list->hash-table! _%lst103679%_ __tmp106994))))
    (define list->hash-table!
      (lambda (_%lst103646%_ _%h103647%_)
        (for-each
         (lambda (_%el103649%_)
           (let* ((_%el103650103657%_ _%el103649%_)
                  (_%E103652103661%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103650103657%_
                              '([k . v])))
                     '#!void))
                  (_%K103653103667%_
                   (lambda (_%v103664%_ _%k103665%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103647%_
                        _%k103665%_
                        _%v103664%_)))))
             (if (let () (declare (not safe)) (##pair? _%el103650103657%_))
                 (let ((_%hd103654103670%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103650103657%_)))
                       (_%tl103655103672%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103650103657%_))))
                   (let* ((_%k103675%_ _%hd103654103670%_)
                          (_%v103677%_ _%tl103655103672%_))
                     (declare (not safe))
                     (_%K103653103667%_ _%v103677%_ _%k103675%_)))
                 (let () (declare (not safe)) (_%E103652103661%_)))))
         _%lst103646%_)
        _%h103647%_))
    (define plist->hash-table
      (lambda (_%lst103643%_ . _%args103644%_)
        (let ((__tmp106995
               (apply make-hash-table
                      'size:
                      (length _%lst103643%_)
                      _%args103644%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103643%_ __tmp106995))))
    (define plist->hash-table-eq
      (lambda (_%lst103640%_ . _%args103641%_)
        (let ((__tmp106996
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103640%_)
                      _%args103641%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103640%_ __tmp106996))))
    (define plist->hash-table-eqv
      (lambda (_%lst103637%_ . _%args103638%_)
        (let ((__tmp106997
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103637%_)
                      _%args103638%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103637%_ __tmp106997))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103634%_ . _%args103635%_)
        (let ((__tmp106998
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103634%_)
                      _%args103635%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103634%_ __tmp106998))))
    (define plist->hash-table-string
      (lambda (_%lst103631%_ . _%args103632%_)
        (let ((__tmp106999
               (apply make-hash-table-string
                      'size:
                      (length _%lst103631%_)
                      _%args103632%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103631%_ __tmp106999))))
    (define plist->hash-table-immediate
      (lambda (_%lst103628%_ . _%args103629%_)
        (let ((__tmp107000
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103628%_)
                      _%args103629%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103628%_ __tmp107000))))
    (define plist->hash-table!
      (lambda (_%lst103568%_ _%h103569%_)
        (let _%loop103571%_ ((_%rest103573%_ _%lst103568%_))
          (let* ((_%rest103574103586%_ _%rest103573%_)
                 (_%else103577103594%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst103568%_)))))
            (let ((_%K103580103609%_
                   (lambda (_%rest103605%_ _%val103606%_ _%key103607%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103569%_
                        _%key103607%_
                        _%val103606%_))
                     (let ()
                       (declare (not safe))
                       (_%loop103571%_ _%rest103605%_))))
                  (_%K103579103599%_ (lambda () _%h103569%_)))
              (let ((_%try-match103576103602%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest103574103586%_))
                           (let () (declare (not safe)) (_%K103579103599%_))
                           (let ()
                             (declare (not safe))
                             (_%else103577103594%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest103574103586%_))
                    (let ((_%tl103582103614%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest103574103586%_)))
                          (_%hd103581103612%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest103574103586%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl103582103614%_))
                          (let ((_%tl103584103621%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl103582103614%_)))
                                (_%hd103583103619%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl103582103614%_))))
                            (let ((_%key103617%_ _%hd103581103612%_)
                                  (_%val103624%_ _%hd103583103619%_)
                                  (_%rest103626%_ _%tl103584103621%_))
                              (let ()
                                (declare (not safe))
                                (_%K103580103609%_
                                 _%rest103626%_
                                 _%val103624%_
                                 _%key103617%_))))
                          (let ()
                            (declare (not safe))
                            (_%else103577103594%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match103576103602%_)))))))))
    (define hash-length
      (lambda (_%h103550%_)
        (let ()
          (let* ((_%h103556%_
                  (let ((_%$obj103553%_ _%h103550%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103553%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103553%_)))
                             '#t)
                        _%$obj103553%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103553%_)))))
                 (_%h103558%_ _%h103556%_))
            (declare (not safe))
            (__hash-length _%h103558%_)))))
    (define __hash-length
      (lambda (_%h103538%_)
        (let ((_%h103541%_ _%h103538%_))
          (declare (not safe))
          (__HashTable-length _%h103541%_))))
    (define hash-ref__%
      (lambda (_%h103506%_ _%key103507%_ _%default103508%_)
        (let ()
          (let* ((_%h103514%_
                  (let ((_%$obj103511%_ _%h103506%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103511%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103511%_)))
                             '#t)
                        _%$obj103511%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103511%_)))))
                 (_%h103516%_ _%h103514%_))
            (declare (not safe))
            (__hash-ref__% _%h103516%_ _%key103507%_ _%default103508%_)))))
    (define hash-ref__0
      (lambda (_%h103529%_ _%key103530%_)
        (let ((_%default103532%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h103529%_ _%key103530%_ _%default103532%_))))
    (define hash-ref
      (lambda _g107002_
        (let ((_g107001_ (let () (declare (not safe)) (##length _g107002_))))
          (cond ((let () (declare (not safe)) (##fx= _g107001_ 2))
                 (apply (lambda (_%h103529%_ _%key103530%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h103529%_ _%key103530%_)))
                        _g107002_))
                ((let () (declare (not safe)) (##fx= _g107001_ 3))
                 (apply (lambda (_%h103534%_ _%key103535%_ _%default103536%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h103534%_
                             _%key103535%_
                             _%default103536%_)))
                        _g107002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g107002_))))))
    (define __hash-ref__%
      (lambda (_%h103477%_ _%key103478%_ _%default103479%_)
        (let ()
          (let* ((_%h103482%_ _%h103477%_)
                 (_%result103491%_
                  (let ()
                    (declare (not safe))
                    (&HashTable-ref
                     _%h103482%_
                     _%key103478%_
                     _%default103479%_))))
            (if (eq? _%result103491%_ (macro-absent-obj))
                (let ()
                  (declare (not safe))
                  (raise-unbound-key-error
                   'hash-ref
                   '"unknown hash key"
                   'hash:
                   _%h103482%_
                   'key:
                   _%key103478%_))
                _%result103491%_)))))
    (define __hash-ref__0
      (lambda (_%h103496%_ _%key103497%_)
        (let ((_%default103499%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h103496%_ _%key103497%_ _%default103499%_))))
    (define __hash-ref
      (lambda _g107004_
        (let ((_g107003_ (let () (declare (not safe)) (##length _g107004_))))
          (cond ((let () (declare (not safe)) (##fx= _g107003_ 2))
                 (apply (lambda (_%h103496%_ _%key103497%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h103496%_ _%key103497%_)))
                        _g107004_))
                ((let () (declare (not safe)) (##fx= _g107003_ 3))
                 (apply (lambda (_%h103501%_ _%key103502%_ _%default103503%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h103501%_
                             _%key103502%_
                             _%default103503%_)))
                        _g107004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g107004_))))))
    (define hash-get
      (lambda (_%h103457%_ _%key103458%_)
        (let ()
          (let* ((_%h103464%_
                  (let ((_%$obj103461%_ _%h103457%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103461%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103461%_)))
                             '#t)
                        _%$obj103461%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103461%_)))))
                 (_%h103466%_ _%h103464%_))
            (declare (not safe))
            (__hash-get _%h103466%_ _%key103458%_)))))
    (define __hash-get
      (lambda (_%h103444%_ _%key103445%_)
        (let ((_%h103448%_ _%h103444%_))
          (declare (not safe))
          (&HashTable-ref _%h103448%_ _%key103445%_ '#f))))
    (define hash-put!
      (lambda (_%h103424%_ _%key103425%_ _%value103426%_)
        (let ()
          (let* ((_%h103432%_
                  (let ((_%$obj103429%_ _%h103424%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103429%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103429%_)))
                             '#t)
                        _%$obj103429%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103429%_)))))
                 (_%h103434%_ _%h103432%_))
            (declare (not safe))
            (__hash-put! _%h103434%_ _%key103425%_ _%value103426%_)))))
    (define __hash-put!
      (lambda (_%h103410%_ _%key103411%_ _%value103412%_)
        (let ((_%h103415%_ _%h103410%_))
          (declare (not safe))
          (&HashTable-set! _%h103415%_ _%key103411%_ _%value103412%_))))
    (define hash-update!__%
      (lambda (_%h103375%_ _%key103376%_ _%update103377%_ _%default103378%_)
        (let ()
          (let* ((_%h103384%_
                  (let ((_%$obj103381%_ _%h103375%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103381%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103381%_)))
                             '#t)
                        _%$obj103381%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103381%_)))))
                 (_%h103386%_ _%h103384%_))
            (declare (not safe))
            (__hash-update!__%
             _%h103386%_
             _%key103376%_
             _%update103377%_
             _%default103378%_)))))
    (define hash-update!__0
      (lambda (_%h103399%_ _%key103400%_ _%update103401%_)
        (let ((_%default103403%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h103399%_
           _%key103400%_
           _%update103401%_
           _%default103403%_))))
    (define hash-update!
      (lambda _g107006_
        (let ((_g107005_ (let () (declare (not safe)) (##length _g107006_))))
          (cond ((let () (declare (not safe)) (##fx= _g107005_ 3))
                 (apply (lambda (_%h103399%_ _%key103400%_ _%update103401%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h103399%_
                             _%key103400%_
                             _%update103401%_)))
                        _g107006_))
                ((let () (declare (not safe)) (##fx= _g107005_ 4))
                 (apply (lambda (_%h103405%_
                                 _%key103406%_
                                 _%update103407%_
                                 _%default103408%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h103405%_
                             _%key103406%_
                             _%update103407%_
                             _%default103408%_)))
                        _g107006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g107006_))))))
    (define __hash-update!__%
      (lambda (_%h103345%_ _%key103346%_ _%update103347%_ _%default103348%_)
        (let ((_%h103351%_ _%h103345%_))
          (declare (not safe))
          (HashTable-update!
           _%h103351%_
           _%key103346%_
           _%update103347%_
           _%default103348%_))))
    (define __hash-update!__0
      (lambda (_%h103363%_ _%key103364%_ _%update103365%_)
        (let ((_%default103367%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h103363%_
           _%key103364%_
           _%update103365%_
           _%default103367%_))))
    (define __hash-update!
      (lambda _g107008_
        (let ((_g107007_ (let () (declare (not safe)) (##length _g107008_))))
          (cond ((let () (declare (not safe)) (##fx= _g107007_ 3))
                 (apply (lambda (_%h103363%_ _%key103364%_ _%update103365%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h103363%_
                             _%key103364%_
                             _%update103365%_)))
                        _g107008_))
                ((let () (declare (not safe)) (##fx= _g107007_ 4))
                 (apply (lambda (_%h103369%_
                                 _%key103370%_
                                 _%update103371%_
                                 _%default103372%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h103369%_
                             _%key103370%_
                             _%update103371%_
                             _%default103372%_)))
                        _g107008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g107008_))))))
    (define hash-remove!
      (lambda (_%h103325%_ _%key103326%_)
        (let ()
          (let* ((_%h103332%_
                  (let ((_%$obj103329%_ _%h103325%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103329%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103329%_)))
                             '#t)
                        _%$obj103329%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103329%_)))))
                 (_%h103334%_ _%h103332%_))
            (declare (not safe))
            (__hash-remove! _%h103334%_ _%key103326%_)))))
    (define __hash-remove!
      (lambda (_%h103312%_ _%key103313%_)
        (let ((_%h103316%_ _%h103312%_))
          (declare (not safe))
          (&HashTable-delete! _%h103316%_ _%key103313%_))))
    (define hash-key?
      (lambda (_%h103293%_ _%k103294%_)
        (let ()
          (let* ((_%h103300%_
                  (let ((_%$obj103297%_ _%h103293%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103297%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103297%_)))
                             '#t)
                        _%$obj103297%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103297%_)))))
                 (_%h103302%_ _%h103300%_))
            (declare (not safe))
            (__hash-key? _%h103302%_ _%k103294%_)))))
    (define __hash-key?
      (lambda (_%h103280%_ _%k103281%_)
        (let ()
          (let* ((_%h103284%_ _%h103280%_)
                 (__tmp107009
                  (eq? (let ()
                         (declare (not safe))
                         (&HashTable-ref _%h103284%_ _%k103281%_ absent-value))
                       absent-value)))
            (declare (not safe))
            (not __tmp107009)))))
    (define hash->list
      (lambda (_%h103262%_)
        (let ()
          (let* ((_%h103268%_
                  (let ((_%$obj103265%_ _%h103262%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103265%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103265%_)))
                             '#t)
                        _%$obj103265%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103265%_)))))
                 (_%h103270%_ _%h103268%_))
            (declare (not safe))
            (__hash->list _%h103270%_)))))
    (define __hash->list
      (lambda (_%h103245%_)
        (let ()
          (let* ((_%h103248%_ _%h103245%_) (_%lst103257%_ '()))
            (let ((__tmp107010
                   (lambda (_%k103259%_ _%v103260%_)
                     (set! _%lst103257%_
                           (cons (cons _%k103259%_ _%v103260%_)
                                 _%lst103257%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103248%_ __tmp107010))
            _%lst103257%_))))
    (define hash->plist
      (lambda (_%h103227%_)
        (let ()
          (let* ((_%h103233%_
                  (let ((_%$obj103230%_ _%h103227%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103230%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103230%_)))
                             '#t)
                        _%$obj103230%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103230%_)))))
                 (_%h103235%_ _%h103233%_))
            (declare (not safe))
            (__hash->plist _%h103235%_)))))
    (define __hash->plist
      (lambda (_%h103210%_)
        (let ()
          (let* ((_%h103213%_ _%h103210%_) (_%lst103222%_ '()))
            (let ((__tmp107011
                   (lambda (_%k103224%_ _%v103225%_)
                     (set! _%lst103222%_
                           (let ((__tmp107012
                                  (let ()
                                    (declare (not safe))
                                    (cons _%v103225%_ _%lst103222%_))))
                             (declare (not safe))
                             (cons _%k103224%_ __tmp107012))))))
              (declare (not safe))
              (&HashTable-for-each _%h103213%_ __tmp107011))
            _%lst103222%_))))
    (define hash-for-each
      (lambda (_%proc103181%_ _%h103182%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103181%_))
              (let ((_%proc103186%_ _%proc103181%_))
                (let* ((_%h103198%_
                        (let ((_%$obj103195%_ _%h103182%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103195%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103195%_)))
                                   '#t)
                              _%$obj103195%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103195%_)))))
                       (_%h103200%_ _%h103198%_))
                  (declare (not safe))
                  (__hash-for-each _%proc103186%_ _%h103200%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103181%_)
                '#!void)))))
    (define __hash-for-each
      (lambda (_%proc103160%_ _%h103161%_)
        (let ()
          (let* ((_%proc103164%_ _%proc103160%_) (_%h103172%_ _%h103161%_))
            (declare (not safe))
            (&HashTable-for-each _%h103172%_ _%proc103164%_)))))
    (define hash-map
      (lambda (_%proc103131%_ _%h103132%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103131%_))
              (let ((_%proc103136%_ _%proc103131%_))
                (let* ((_%h103148%_
                        (let ((_%$obj103145%_ _%h103132%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103145%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103145%_)))
                                   '#t)
                              _%$obj103145%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103145%_)))))
                       (_%h103150%_ _%h103148%_))
                  (declare (not safe))
                  (__hash-map _%proc103136%_ _%h103150%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103131%_)
                '#!void)))))
    (define __hash-map
      (lambda (_%proc103105%_ _%h103106%_)
        (let ((_%proc103109%_ _%proc103105%_))
          (let* ((_%h103117%_ _%h103106%_) (_%result103126%_ '()))
            (let ((__tmp107013
                   (lambda (_%k103128%_ _%v103129%_)
                     (set! _%result103126%_
                           (cons (let ()
                                   (declare (not safe))
                                   (_%proc103109%_ _%k103128%_ _%v103129%_))
                                 _%result103126%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103117%_ __tmp107013))
            _%result103126%_))))
    (define hash-fold
      (lambda (_%proc103075%_ _%iv103076%_ _%h103077%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103075%_))
              (let ((_%proc103081%_ _%proc103075%_))
                (let* ((_%h103093%_
                        (let ((_%$obj103090%_ _%h103077%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103090%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103090%_)))
                                   '#t)
                              _%$obj103090%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103090%_)))))
                       (_%h103095%_ _%h103093%_))
                  (declare (not safe))
                  (__hash-fold _%proc103081%_ _%iv103076%_ _%h103095%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103075%_)
                '#!void)))))
    (define __hash-fold
      (lambda (_%proc103048%_ _%iv103049%_ _%h103050%_)
        (let ((_%proc103053%_ _%proc103048%_))
          (let* ((_%h103061%_ _%h103050%_) (_%result103070%_ _%iv103049%_))
            (let ((__tmp107014
                   (lambda (_%k103072%_ _%v103073%_)
                     (set! _%result103070%_
                           (let ()
                             (declare (not safe))
                             (_%proc103053%_
                              _%k103072%_
                              _%v103073%_
                              _%result103070%_))))))
              (declare (not safe))
              (&HashTable-for-each _%h103061%_ __tmp107014))
            _%result103070%_))))
    (define hash-find__%
      (lambda (_%proc103006%_ _%h103007%_ _%default-value103008%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103006%_))
              (let ((_%proc103012%_ _%proc103006%_))
                (let* ((_%h103024%_
                        (let ((_%$obj103021%_ _%h103007%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103021%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103021%_)))
                                   '#t)
                              _%$obj103021%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103021%_)))))
                       (_%h103026%_ _%h103024%_))
                  (declare (not safe))
                  (__hash-find__%
                   _%proc103012%_
                   _%h103026%_
                   _%default-value103008%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103006%_)
                '#!void)))))
    (define hash-find__0
      (lambda (_%proc103039%_ _%h103040%_)
        (let ((_%default-value103042%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc103039%_ _%h103040%_ _%default-value103042%_))))
    (define hash-find
      (lambda _g107016_
        (let ((_g107015_ (let () (declare (not safe)) (##length _g107016_))))
          (cond ((let () (declare (not safe)) (##fx= _g107015_ 2))
                 (apply (lambda (_%proc103039%_ _%h103040%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc103039%_ _%h103040%_)))
                        _g107016_))
                ((let () (declare (not safe)) (##fx= _g107015_ 3))
                 (apply (lambda (_%proc103044%_
                                 _%h103045%_
                                 _%default-value103046%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc103044%_
                             _%h103045%_
                             _%default-value103046%_)))
                        _g107016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g107016_))))))
    (define __hash-find__%
      (lambda (_%proc102963%_ _%h102964%_ _%default-value102965%_)
        (let ((_%proc102968%_ _%proc102963%_))
          (let* ((_%h102976%_ _%h102964%_)
                 (__tmp107017
                  (lambda (_%return102985%_)
                    (let ((__tmp107018
                           (lambda (_%k102987%_ _%v102988%_)
                             (let ((_%$e102990%_
                                    (let ()
                                      (declare (not safe))
                                      (_%proc102968%_
                                       _%k102987%_
                                       _%v102988%_))))
                               (if _%$e102990%_
                                   (_%return102985%_ _%$e102990%_)
                                   '#!void)))))
                      (declare (not safe))
                      (&HashTable-for-each _%h102976%_ __tmp107018))
                    _%default-value102965%_)))
            (declare (not safe))
            (##call-with-current-continuation __tmp107017)))))
    (define __hash-find__0
      (lambda (_%proc102996%_ _%h102997%_)
        (let ((_%default-value102999%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102996%_
           _%h102997%_
           _%default-value102999%_))))
    (define __hash-find
      (lambda _g107020_
        (let ((_g107019_ (let () (declare (not safe)) (##length _g107020_))))
          (cond ((let () (declare (not safe)) (##fx= _g107019_ 2))
                 (apply (lambda (_%proc102996%_ _%h102997%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102996%_ _%h102997%_)))
                        _g107020_))
                ((let () (declare (not safe)) (##fx= _g107019_ 3))
                 (apply (lambda (_%proc103001%_
                                 _%h103002%_
                                 _%default-value103003%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc103001%_
                             _%h103002%_
                             _%default-value103003%_)))
                        _g107020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g107020_))))))
    (define hash-keys
      (lambda (_%h102944%_)
        (let ()
          (let* ((_%h102950%_
                  (let ((_%$obj102947%_ _%h102944%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102947%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102947%_)))
                             '#t)
                        _%$obj102947%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102947%_)))))
                 (_%h102952%_ _%h102950%_))
            (declare (not safe))
            (__hash-keys _%h102952%_)))))
    (define __hash-keys
      (lambda (_%h102927%_)
        (let ()
          (let* ((_%h102930%_ _%h102927%_) (_%result102939%_ '()))
            (let ((__tmp107021
                   (lambda (_%k102941%_ _%v102942%_)
                     (set! _%result102939%_
                           (cons _%k102941%_ _%result102939%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102930%_ __tmp107021))
            _%result102939%_))))
    (define hash-values
      (lambda (_%h102909%_)
        (let ()
          (let* ((_%h102915%_
                  (let ((_%$obj102912%_ _%h102909%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102912%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102912%_)))
                             '#t)
                        _%$obj102912%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102912%_)))))
                 (_%h102917%_ _%h102915%_))
            (declare (not safe))
            (__hash-values _%h102917%_)))))
    (define __hash-values
      (lambda (_%h102892%_)
        (let ()
          (let* ((_%h102895%_ _%h102892%_) (_%result102904%_ '()))
            (let ((__tmp107022
                   (lambda (_%k102906%_ _%v102907%_)
                     (set! _%result102904%_
                           (cons _%v102907%_ _%result102904%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102895%_ __tmp107022))
            _%result102904%_))))
    (define hash-copy
      (lambda (_%h102874%_)
        (let ()
          (let* ((_%h102880%_
                  (let ((_%$obj102877%_ _%h102874%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102877%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102877%_)))
                             '#t)
                        _%$obj102877%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102877%_)))))
                 (_%h102882%_ _%h102880%_))
            (declare (not safe))
            (__hash-copy _%h102882%_)))))
    (define __hash-copy
      (lambda (_%h102862%_)
        (let ((_%h102865%_ _%h102862%_))
          (declare (not safe))
          (__HashTable-copy _%h102865%_))))
    (define hash-clear!
      (lambda (_%h102844%_)
        (let ()
          (let* ((_%h102850%_
                  (let ((_%$obj102847%_ _%h102844%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102847%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102847%_)))
                             '#t)
                        _%$obj102847%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102847%_)))))
                 (_%h102852%_ _%h102850%_))
            (declare (not safe))
            (__hash-clear! _%h102852%_)))))
    (define __hash-clear!
      (lambda (_%h102832%_)
        (let ((_%h102835%_ _%h102832%_))
          (declare (not safe))
          (&HashTable-clear! _%h102835%_))))
    (define hash-merge
      (lambda (_%h102813%_ . _%rest102814%_)
        (let ()
          (let* ((_%h102820%_
                  (let ((_%$obj102817%_ _%h102813%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102817%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102817%_)))
                             '#t)
                        _%$obj102817%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102817%_)))))
                 (_%h102822%_ _%h102820%_))
            (declare (not safe))
            (##apply __hash-merge _%h102822%_ _%rest102814%_)))))
    (define __hash-merge
      (lambda (_%h102798%_ . _%rest102799%_)
        (let ()
          (let* ((_%h102802%_ _%h102798%_)
                 (_%copy102811%_
                  (let ()
                    (declare (not safe))
                    (__HashTable-copy _%h102802%_))))
            (apply hash-merge! _%copy102811%_ _%rest102799%_)
            _%copy102811%_))))
    (define hash-merge!
      (lambda (_%h102779%_ . _%rest102780%_)
        (let ()
          (let* ((_%h102786%_
                  (let ((_%$obj102783%_ _%h102779%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102783%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102783%_)))
                             '#t)
                        _%$obj102783%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102783%_)))))
                 (_%h102788%_ _%h102786%_))
            (declare (not safe))
            (##apply __hash-merge! _%h102788%_ _%rest102780%_)))))
    (define __hash-merge!
      (lambda (_%h102742%_ . _%rest102743%_)
        (let ((_%h102746%_ _%h102742%_))
          (for-each
           (lambda (_%hr102755%_)
             (let ()
               (let* ((_%hr102761%_
                       (let ((_%$obj102758%_ _%hr102755%_))
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
                      (_%hr102763%_ _%hr102761%_)
                      (__tmp107023
                       (lambda (_%k102776%_ _%v102777%_)
                         (if (let ()
                               (declare (not safe))
                               (__hash-key? _%h102746%_ _%k102776%_))
                             '#!void
                             (let ()
                               (declare (not safe))
                               (&HashTable-set!
                                _%h102746%_
                                _%k102776%_
                                _%v102777%_))))))
                 (declare (not safe))
                 (&HashTable-for-each _%hr102763%_ __tmp107023))))
           _%rest102743%_)
          _%h102746%_)))))
