(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1734279327)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp111085 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp111085
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args111065%_
        (apply make-instance UnboundKeyError::t _%$args111065%_)))
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
      (lambda (_%where110939%_ _%message110940%_ . _%irritants110941%_)
        (let ((__tmp111086
               (let ((__obj111079
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj111079
                    _%message110940%_
                    'where:
                    _%where110939%_
                    'irritants:
                    _%irritants110941%_))
                 __obj111079)))
          (declare (not safe))
          (raise __tmp111086))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp111087 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp111087
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
      (lambda (_%obj110937%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj110937%_))))
    (define try-HashTable
      (lambda (_%obj110935%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj110935%_))))
    (define HashTable?
      (lambda (_%obj110933%_)
        (let ((__tmp111088
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110933%_ __tmp111088))))
    (define is-HashTable?
      (lambda (_%obj110931%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj110931%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self110915%_)
        (let* ((_%self110920%_
                (let ((_%$obj110917%_ _%self110915%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110917%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110917%_)))
                           '#t)
                      _%$obj110917%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110917%_)))))
               (_%self110922%_ _%self110920%_))
          (&HashTable-clear! _%self110922%_))))
    (define &HashTable-clear!
      (lambda (_%self110900%_)
        (let ((_%self110902%_ _%self110900%_))
          (declare (not safe))
          (let ((_%obj110912%_
                 (##unchecked-structure-ref _%self110902%_ '1 '#f 'clear!))
                (_%f110913%_
                 (##unchecked-structure-ref _%self110902%_ '2 '#f 'clear!)))
            (_%f110913%_ _%obj110912%_)))))
    (define HashTable-copy
      (lambda (_%self110884%_)
        (let* ((_%self110889%_
                (let ((_%$obj110886%_ _%self110884%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110886%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110886%_)))
                           '#t)
                      _%$obj110886%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110886%_)))))
               (_%self110891%_ _%self110889%_))
          (__HashTable-copy _%self110891%_))))
    (define __HashTable-copy
      (lambda (_%self110871%_)
        (let* ((_%self110873%_ _%self110871%_)
               (_%$obj110881%_ (&HashTable-copy _%self110873%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj110881%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj110881%_)))
                   '#t)
              _%$obj110881%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj110881%_))))))
    (define &HashTable-copy
      (lambda (_%self110856%_)
        (let ((_%self110858%_ _%self110856%_))
          (declare (not safe))
          (let ((_%obj110868%_
                 (##unchecked-structure-ref _%self110858%_ '1 '#f 'copy))
                (_%f110869%_
                 (##unchecked-structure-ref _%self110858%_ '3 '#f 'copy)))
            (_%f110869%_ _%obj110868%_)))))
    (define HashTable-delete!
      (lambda (_%self110839%_ _%key110840%_)
        (let* ((_%self110845%_
                (let ((_%$obj110842%_ _%self110839%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110842%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110842%_)))
                           '#t)
                      _%$obj110842%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110842%_)))))
               (_%self110847%_ _%self110845%_))
          (&HashTable-delete! _%self110847%_ _%key110840%_))))
    (define &HashTable-delete!
      (lambda (_%self110823%_ _%key110824%_)
        (let ((_%self110826%_ _%self110823%_))
          (declare (not safe))
          (let ((_%obj110836%_
                 (##unchecked-structure-ref _%self110826%_ '1 '#f 'delete!))
                (_%f110837%_
                 (##unchecked-structure-ref _%self110826%_ '4 '#f 'delete!)))
            (_%f110837%_ _%obj110836%_ _%key110824%_)))))
    (define HashTable-for-each
      (lambda (_%self110796%_ _%proc110797%_)
        (let* ((_%self110802%_
                (let ((_%$obj110799%_ _%self110796%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110799%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110799%_)))
                           '#t)
                      _%$obj110799%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110799%_)))))
               (_%self110804%_ _%self110802%_))
          (if (procedure? _%proc110797%_)
              (let ((_%proc110813%_ _%proc110797%_))
                (&HashTable-for-each _%self110804%_ _%proc110813%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110797%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self110772%_ _%proc110773%_)
        (let* ((_%self110775%_ _%self110772%_) (_%proc110782%_ _%proc110773%_))
          (declare (not safe))
          (let ((_%obj110793%_
                 (##unchecked-structure-ref _%self110775%_ '1 '#f 'for-each))
                (_%f110794%_
                 (##unchecked-structure-ref _%self110775%_ '5 '#f 'for-each)))
            (_%f110794%_ _%obj110793%_ _%proc110782%_)))))
    (define HashTable-length
      (lambda (_%self110756%_)
        (let* ((_%self110761%_
                (let ((_%$obj110758%_ _%self110756%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110758%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110758%_)))
                           '#t)
                      _%$obj110758%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110758%_)))))
               (_%self110763%_ _%self110761%_))
          (__HashTable-length _%self110763%_))))
    (define __HashTable-length
      (lambda (_%self110743%_)
        (let* ((_%self110745%_ _%self110743%_)
               (_%val110753%_ (&HashTable-length _%self110745%_)))
          _%val110753%_)))
    (define &HashTable-length
      (lambda (_%self110728%_)
        (let ((_%self110730%_ _%self110728%_))
          (declare (not safe))
          (let ((_%obj110740%_
                 (##unchecked-structure-ref _%self110730%_ '1 '#f 'length))
                (_%f110741%_
                 (##unchecked-structure-ref _%self110730%_ '6 '#f 'length)))
            (_%f110741%_ _%obj110740%_)))))
    (define HashTable-ref
      (lambda (_%self110710%_ _%key110711%_ _%default110712%_)
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
          (&HashTable-ref _%self110719%_ _%key110711%_ _%default110712%_))))
    (define &HashTable-ref
      (lambda (_%self110693%_ _%key110694%_ _%default110695%_)
        (let ((_%self110697%_ _%self110693%_))
          (declare (not safe))
          (let ((_%obj110707%_
                 (##unchecked-structure-ref _%self110697%_ '1 '#f 'ref))
                (_%f110708%_
                 (##unchecked-structure-ref _%self110697%_ '7 '#f 'ref)))
            (_%f110708%_ _%obj110707%_ _%key110694%_ _%default110695%_)))))
    (define HashTable-set!
      (lambda (_%self110675%_ _%key110676%_ _%value110677%_)
        (let* ((_%self110682%_
                (let ((_%$obj110679%_ _%self110675%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110679%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110679%_)))
                           '#t)
                      _%$obj110679%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110679%_)))))
               (_%self110684%_ _%self110682%_))
          (&HashTable-set! _%self110684%_ _%key110676%_ _%value110677%_))))
    (define &HashTable-set!
      (lambda (_%self110658%_ _%key110659%_ _%value110660%_)
        (let ((_%self110662%_ _%self110658%_))
          (declare (not safe))
          (let ((_%obj110672%_
                 (##unchecked-structure-ref _%self110662%_ '1 '#f 'set!))
                (_%f110673%_
                 (##unchecked-structure-ref _%self110662%_ '8 '#f 'set!)))
            (_%f110673%_ _%obj110672%_ _%key110659%_ _%value110660%_)))))
    (define HashTable-update!
      (lambda (_%self110629%_ _%key110630%_ _%proc110631%_ _%default110632%_)
        (let* ((_%self110637%_
                (let ((_%$obj110634%_ _%self110629%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110634%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110634%_)))
                           '#t)
                      _%$obj110634%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110634%_)))))
               (_%self110639%_ _%self110637%_))
          (if (procedure? _%proc110631%_)
              (let ((_%proc110648%_ _%proc110631%_))
                (&HashTable-update!
                 _%self110639%_
                 _%key110630%_
                 _%proc110648%_
                 _%default110632%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110631%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self110601%_ _%key110602%_ _%proc110603%_ _%default110604%_)
        (let* ((_%self110606%_ _%self110601%_) (_%proc110613%_ _%proc110603%_))
          (declare (not safe))
          (let ((_%obj110624%_
                 (##unchecked-structure-ref _%self110606%_ '1 '#f 'update!))
                (_%f110626%_
                 (##unchecked-structure-ref _%self110606%_ '9 '#f 'update!)))
            (_%f110626%_
             _%obj110624%_
             _%key110602%_
             _%proc110613%_
             _%default110604%_)))))
    (define Locker::t
      (let ((__tmp111089 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp111089
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
      (lambda (_%obj110599%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj110599%_))))
    (define try-Locker
      (lambda (_%obj110597%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj110597%_))))
    (define Locker?
      (lambda (_%obj110595%_)
        (let ((__tmp111090
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110595%_ __tmp111090))))
    (define is-Locker?
      (lambda (_%obj110593%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj110593%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self110577%_)
        (let* ((_%self110582%_
                (let ((_%$obj110579%_ _%self110577%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110579%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110579%_)))
                           '#t)
                      _%$obj110579%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110579%_)))))
               (_%self110584%_ _%self110582%_))
          (&Locker-read-lock! _%self110584%_))))
    (define &Locker-read-lock!
      (lambda (_%self110562%_)
        (let ((_%self110564%_ _%self110562%_))
          (declare (not safe))
          (let ((_%obj110574%_
                 (##unchecked-structure-ref _%self110564%_ '1 '#f 'read-lock!))
                (_%f110575%_
                 (##unchecked-structure-ref
                  _%self110564%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f110575%_ _%obj110574%_)))))
    (define Locker-read-unlock!
      (lambda (_%self110546%_)
        (let* ((_%self110551%_
                (let ((_%$obj110548%_ _%self110546%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110548%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110548%_)))
                           '#t)
                      _%$obj110548%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110548%_)))))
               (_%self110553%_ _%self110551%_))
          (&Locker-read-unlock! _%self110553%_))))
    (define &Locker-read-unlock!
      (lambda (_%self110531%_)
        (let ((_%self110533%_ _%self110531%_))
          (declare (not safe))
          (let ((_%obj110543%_
                 (##unchecked-structure-ref
                  _%self110533%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f110544%_
                 (##unchecked-structure-ref
                  _%self110533%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f110544%_ _%obj110543%_)))))
    (define Locker-write-lock!
      (lambda (_%self110515%_)
        (let* ((_%self110520%_
                (let ((_%$obj110517%_ _%self110515%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110517%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110517%_)))
                           '#t)
                      _%$obj110517%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110517%_)))))
               (_%self110522%_ _%self110520%_))
          (&Locker-write-lock! _%self110522%_))))
    (define &Locker-write-lock!
      (lambda (_%self110500%_)
        (let ((_%self110502%_ _%self110500%_))
          (declare (not safe))
          (let ((_%obj110512%_
                 (##unchecked-structure-ref
                  _%self110502%_
                  '1
                  '#f
                  'write-lock!))
                (_%f110513%_
                 (##unchecked-structure-ref
                  _%self110502%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f110513%_ _%obj110512%_)))))
    (define Locker-write-unlock!
      (lambda (_%self110484%_)
        (let* ((_%self110489%_
                (let ((_%$obj110486%_ _%self110484%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110486%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110486%_)))
                           '#t)
                      _%$obj110486%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110486%_)))))
               (_%self110491%_ _%self110489%_))
          (&Locker-write-unlock! _%self110491%_))))
    (define &Locker-write-unlock!
      (lambda (_%self110467%_)
        (let ((_%self110469%_ _%self110467%_))
          (declare (not safe))
          (let ((_%obj110479%_
                 (##unchecked-structure-ref
                  _%self110469%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f110481%_
                 (##unchecked-structure-ref
                  _%self110469%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f110481%_ _%obj110479%_)))))
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
      (lambda (_%table110460%_
               _%key110461%_
               _%update110462%_
               _%default110463%_)
        (let ((_%result110465%_
               (table-ref _%table110460%_ _%key110461%_ _%default110463%_)))
          (table-set!
           _%table110460%_
           _%key110461%_
           (_%update110462%_ _%default110463%_)))))
    (define gambit-table-for-each
      (lambda (_%table110457%_ _%proc110458%_)
        (table-for-each _%proc110458%_ _%table110457%_)))
    (define gambit-table-clear!
      (lambda (_%table110455%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table110455%_ '0 '5 '#f '#f))))
    (let ((__tmp111091 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111091 'HashTable::ref table-ref))
    (let ((__tmp111092 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111092 'HashTable::set! table-set!))
    (let ((__tmp111093 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111093 'HashTable::update! gambit-table-update!))
    (let ((__tmp111094 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111094 'HashTable::delete! table-set!))
    (let ((__tmp111095 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111095 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp111096 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111096 'HashTable::length table-length))
    (let ((__tmp111097 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111097 'HashTable::copy table-copy))
    (let ((__tmp111098 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111098 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots110437%_ '(table count free hash test seed))
             (_%slot-vector110439%_ (list->vector (cons '#f _%slots110437%_)))
             (_%slot-table110446%_
              (let ((_%slot-table110441%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111101
                       (lambda (_%slot110443%_ _%field110444%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110441%_
                            _%slot110443%_
                            _%field110444%_))
                         (let ((__tmp111102
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110443%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110441%_
                            __tmp111102
                            _%field110444%_))))
                      (__tmp111099
                       (let ((__tmp111100
                              (let ()
                                (declare (not safe))
                                (##length _%slots110437%_))))
                         (declare (not safe))
                         (##iota __tmp111100 '1))))
                  (declare (not safe))
                  (##for-each __tmp111101 _%slots110437%_ __tmp111099))
                _%slot-table110441%_))
             (_%flags110448%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110450%_ '#())
             (_%properties110452%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110437%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111103 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags110448%_
         __table::t
         _%fields110450%_
         __tmp111103
         _%slot-vector110439%_
         _%slot-table110446%_
         _%properties110452%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots110419%_ '(gcht immediate))
             (_%slot-vector110421%_ (list->vector (cons '#f _%slots110419%_)))
             (_%slot-table110428%_
              (let ((_%slot-table110423%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111106
                       (lambda (_%slot110425%_ _%field110426%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110423%_
                            _%slot110425%_
                            _%field110426%_))
                         (let ((__tmp111107
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110425%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110423%_
                            __tmp111107
                            _%field110426%_))))
                      (__tmp111104
                       (let ((__tmp111105
                              (let ()
                                (declare (not safe))
                                (##length _%slots110419%_))))
                         (declare (not safe))
                         (##iota __tmp111105 '1))))
                  (declare (not safe))
                  (##for-each __tmp111106 _%slots110419%_ __tmp111104))
                _%slot-table110423%_))
             (_%flags110430%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110432%_ '#())
             (_%properties110434%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110419%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111108 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags110430%_
         __gc-table::t
         _%fields110432%_
         __tmp111108
         _%slot-vector110421%_
         _%slot-table110428%_
         _%properties110434%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp111110 (list))
            (__tmp111109
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp111110
         '(table lock)
         __tmp111109
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args110416%_
        (apply make-instance locked-hash-table::t _%$args110416%_)))
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
      (let ((__tmp111112 (list))
            (__tmp111111
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp111112
         '(table key-check)
         __tmp111111
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args110413%_
        (apply make-instance checked-hash-table::t _%$args110413%_)))
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
      (let ((__tmp111114 (list hash-table::t))
            (__tmp111113 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp111114
         '()
         __tmp111113
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args110410%_
        (apply make-instance eq-hash-table::t _%$args110410%_)))
    (define eqv-hash-table::t
      (let ((__tmp111116 (list hash-table::t))
            (__tmp111115 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp111116
         '()
         __tmp111115
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args110407%_
        (apply make-instance eqv-hash-table::t _%$args110407%_)))
    (define symbol-hash-table::t
      (let ((__tmp111118 (list hash-table::t))
            (__tmp111117 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp111118
         '()
         __tmp111117
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args110404%_
        (apply make-instance symbol-hash-table::t _%$args110404%_)))
    (define string-hash-table::t
      (let ((__tmp111120 (list hash-table::t))
            (__tmp111119 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp111120
         '()
         __tmp111119
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args110401%_
        (apply make-instance string-hash-table::t _%$args110401%_)))
    (define immediate-hash-table::t
      (let ((__tmp111122 (list hash-table::t))
            (__tmp111121 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp111122
         '()
         __tmp111121
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args110398%_
        (apply make-instance immediate-hash-table::t _%$args110398%_)))
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
    (define _%locked-hash-table::HashTable::ref106398%_
      (lambda (_%self106397110372%_ _%key110374%_ _%default110375%_)
        (let* ((_%self110377%_ _%self106397110372%_)
               (_%self110380%_ _%self110377%_))
          (let ((_%h110390%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110380%_ '1 '#f '#f)))
                (_%l110392%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110380%_ '2 '#f '#f))))
            (let ((__tmp111125 (lambda () (&Locker-read-lock! _%l110392%_)))
                  (__tmp111124
                   (lambda ()
                     (&HashTable-ref
                      _%h110390%_
                      _%key110374%_
                      _%default110375%_)))
                  (__tmp111123 (lambda () (&Locker-read-unlock! _%l110392%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111125 __tmp111124 __tmp111123))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref106398%_
       '#f))
    (define _%locked-hash-table::HashTable::set!106401%_
      (lambda (_%self106400110223%_ _%key110225%_ _%value110226%_)
        (let* ((_%self110228%_ _%self106400110223%_)
               (_%self110231%_ _%self110228%_))
          (let ((_%h110241%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110231%_ '1 '#f '#f)))
                (_%l110243%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110231%_ '2 '#f '#f))))
            (let ((__tmp111128 (lambda () (&Locker-write-lock! _%l110243%_)))
                  (__tmp111127
                   (lambda ()
                     (&HashTable-set!
                      _%h110241%_
                      _%key110225%_
                      _%value110226%_)))
                  (__tmp111126
                   (lambda () (&Locker-write-unlock! _%l110243%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111128 __tmp111127 __tmp111126))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!106401%_
       '#f))
    (define _%locked-hash-table::HashTable::update!106404%_
      (lambda (_%self106403110073%_
               _%key110075%_
               _%update110076%_
               _%default110077%_)
        (let* ((_%self110079%_ _%self106403110073%_)
               (_%self110082%_ _%self110079%_))
          (let ((_%h110092%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110082%_ '1 '#f '#f)))
                (_%l110094%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110082%_ '2 '#f '#f))))
            (let ((__tmp111131 (lambda () (&Locker-write-lock! _%l110094%_)))
                  (__tmp111130
                   (lambda ()
                     (&HashTable-update!
                      _%h110092%_
                      _%key110075%_
                      _%update110076%_
                      _%default110077%_)))
                  (__tmp111129
                   (lambda () (&Locker-write-unlock! _%l110094%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111131 __tmp111130 __tmp111129))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!106404%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!106407%_
      (lambda (_%self106406109925%_ _%key109927%_)
        (let* ((_%self109929%_ _%self106406109925%_)
               (_%self109932%_ _%self109929%_))
          (let ((_%h109942%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109932%_ '1 '#f '#f)))
                (_%l109944%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109932%_ '2 '#f '#f))))
            (let ((__tmp111134 (lambda () (&Locker-write-lock! _%l109944%_)))
                  (__tmp111133
                   (lambda () (&HashTable-delete! _%h109942%_ _%key109927%_)))
                  (__tmp111132
                   (lambda () (&Locker-write-unlock! _%l109944%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111134 __tmp111133 __tmp111132))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!106407%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each106410%_
      (lambda (_%self106409109777%_ _%proc109779%_)
        (let* ((_%self109781%_ _%self106409109777%_)
               (_%self109784%_ _%self109781%_))
          (let ((_%h109794%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109784%_ '1 '#f '#f)))
                (_%l109796%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109784%_ '2 '#f '#f))))
            (let ((__tmp111137 (lambda () (&Locker-read-lock! _%l109796%_)))
                  (__tmp111136
                   (lambda ()
                     (&HashTable-for-each _%h109794%_ _%proc109779%_)))
                  (__tmp111135 (lambda () (&Locker-read-unlock! _%l109796%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111137 __tmp111136 __tmp111135))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each106410%_
       '#f))
    (define _%locked-hash-table::HashTable::length106413%_
      (lambda (_%self106412109630%_)
        (let* ((_%self109633%_ _%self106412109630%_)
               (_%self109636%_ _%self109633%_))
          (let ((_%h109646%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109636%_ '1 '#f '#f)))
                (_%l109648%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109636%_ '2 '#f '#f))))
            (let ((__tmp111140 (lambda () (&Locker-read-lock! _%l109648%_)))
                  (__tmp111139 (lambda () (&HashTable-length _%h109646%_)))
                  (__tmp111138 (lambda () (&Locker-read-unlock! _%l109648%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111140 __tmp111139 __tmp111138))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length106413%_
       '#f))
    (define _%locked-hash-table::HashTable::copy106416%_
      (lambda (_%self106415109483%_)
        (let* ((_%self109486%_ _%self106415109483%_)
               (_%self109489%_ _%self109486%_))
          (let ((_%h109499%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109489%_ '1 '#f '#f)))
                (_%l109501%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109489%_ '2 '#f '#f))))
            (let ((__tmp111143 (lambda () (&Locker-read-lock! _%l109501%_)))
                  (__tmp111142 (lambda () (&HashTable-copy _%h109499%_)))
                  (__tmp111141 (lambda () (&Locker-read-unlock! _%l109501%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111143 __tmp111142 __tmp111141))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy106416%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!106419%_
      (lambda (_%self106418109336%_)
        (let* ((_%self109339%_ _%self106418109336%_)
               (_%self109342%_ _%self109339%_))
          (let ((_%h109352%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109342%_ '1 '#f '#f)))
                (_%l109354%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109342%_ '2 '#f '#f))))
            (let ((__tmp111146 (lambda () (&Locker-write-lock! _%l109354%_)))
                  (__tmp111145 (lambda () (&HashTable-clear! _%h109352%_)))
                  (__tmp111144
                   (lambda () (&Locker-write-unlock! _%l109354%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111146 __tmp111145 __tmp111144))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!106419%_
       '#f))
    (let ((__tmp111147 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111147 'Locker::read-lock! mutex-lock!))
    (let ((__tmp111148 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111148 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp111149 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111149 'Locker::write-lock! mutex-lock!))
    (let ((__tmp111150 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111150 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref106633%_
      (lambda (_%self106632109186%_ _%key109188%_ _%default109189%_)
        (let* ((_%self109191%_ _%self106632109186%_)
               (_%self109193%_ _%self109191%_))
          (declare (not safe))
          (let ((_%h109204%_
                 (##unchecked-structure-ref _%self109193%_ '1 '#f '#f))
                (_%key?109206%_
                 (##unchecked-structure-ref _%self109193%_ '2 '#f '#f)))
            (if ((lambda (_%key?109209%_ _%key109210%_ _%default109211%_)
                   (_%key?109209%_ _%key109210%_))
                 _%key?109206%_
                 _%key109188%_
                 _%default109189%_)
                (&HashTable-ref _%h109204%_ _%key109188%_ _%default109189%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key109188%_ (cons _%default109189%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref106633%_
       '#f))
    (define _%checked-hash-table::HashTable::set!106636%_
      (lambda (_%self106635109036%_ _%key109038%_ _%value109039%_)
        (let* ((_%self109041%_ _%self106635109036%_)
               (_%self109043%_ _%self109041%_))
          (declare (not safe))
          (let ((_%h109054%_
                 (##unchecked-structure-ref _%self109043%_ '1 '#f '#f))
                (_%key?109056%_
                 (##unchecked-structure-ref _%self109043%_ '2 '#f '#f)))
            (if ((lambda (_%key?109059%_ _%key109060%_ _%value109061%_)
                   (_%key?109059%_ _%key109060%_))
                 _%key?109056%_
                 _%key109038%_
                 _%value109039%_)
                (&HashTable-set! _%h109054%_ _%key109038%_ _%value109039%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key109038%_ (cons _%value109039%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!106636%_
       '#f))
    (define _%checked-hash-table::HashTable::update!106639%_
      (lambda (_%self106638108884%_
               _%key108886%_
               _%update108887%_
               _%default108888%_)
        (let* ((_%self108890%_ _%self106638108884%_)
               (_%self108892%_ _%self108890%_))
          (declare (not safe))
          (let ((_%h108903%_
                 (##unchecked-structure-ref _%self108892%_ '1 '#f '#f))
                (_%key?108905%_
                 (##unchecked-structure-ref _%self108892%_ '2 '#f '#f)))
            (if ((lambda (_%key?108908%_
                          _%key108909%_
                          _%update108910%_
                          _%default108911%_)
                   (_%key?108908%_ _%key108909%_))
                 _%key?108905%_
                 _%key108886%_
                 _%update108887%_
                 _%default108888%_)
                (&HashTable-update!
                 _%h108903%_
                 _%key108886%_
                 _%update108887%_
                 _%default108888%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key108886%_
                         (cons _%update108887%_ (cons _%default108888%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!106639%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!106642%_
      (lambda (_%self106641108736%_ _%key108738%_)
        (let* ((_%self108740%_ _%self106641108736%_)
               (_%self108742%_ _%self108740%_))
          (declare (not safe))
          (let ((_%h108753%_
                 (##unchecked-structure-ref _%self108742%_ '1 '#f '#f))
                (_%key?108755%_
                 (##unchecked-structure-ref _%self108742%_ '2 '#f '#f)))
            (if ((lambda (_%key?108758%_ _%key108759%_)
                   (_%key?108758%_ _%key108759%_))
                 _%key?108755%_
                 _%key108738%_)
                (&HashTable-delete! _%h108753%_ _%key108738%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key108738%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!106642%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each106645%_
      (lambda (_%self106644108588%_ _%proc108590%_)
        (let* ((_%self108592%_ _%self106644108588%_)
               (_%self108594%_ _%self108592%_))
          (declare (not safe))
          (let ((_%h108605%_
                 (##unchecked-structure-ref _%self108594%_ '1 '#f '#f))
                (_%key?108607%_
                 (##unchecked-structure-ref _%self108594%_ '2 '#f '#f)))
            (if ((lambda (_%key?108610%_ _%proc108611%_) '#t)
                 _%key?108607%_
                 _%proc108590%_)
                (&HashTable-for-each _%h108605%_ _%proc108590%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc108590%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each106645%_
       '#f))
    (define _%checked-hash-table::HashTable::length106648%_
      (lambda (_%self106647108444%_)
        (let* ((_%self108447%_ _%self106647108444%_)
               (_%self108449%_ _%self108447%_))
          (declare (not safe))
          (let ((_%h108460%_
                 (##unchecked-structure-ref _%self108449%_ '1 '#f '#f))
                (_%key?108462%_
                 (##unchecked-structure-ref _%self108449%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h108460%_)
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
       _%checked-hash-table::HashTable::length106648%_
       '#f))
    (define _%checked-hash-table::HashTable::copy106651%_
      (lambda (_%self106650108300%_)
        (let* ((_%self108303%_ _%self106650108300%_)
               (_%self108305%_ _%self108303%_))
          (declare (not safe))
          (let ((_%h108316%_
                 (##unchecked-structure-ref _%self108305%_ '1 '#f '#f))
                (_%key?108318%_
                 (##unchecked-structure-ref _%self108305%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h108316%_)
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
       _%checked-hash-table::HashTable::copy106651%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!106654%_
      (lambda (_%self106653108156%_)
        (let* ((_%self108159%_ _%self106653108156%_)
               (_%self108161%_ _%self108159%_))
          (declare (not safe))
          (let ((_%h108172%_
                 (##unchecked-structure-ref _%self108161%_ '1 '#f '#f))
                (_%key?108174%_
                 (##unchecked-structure-ref _%self108161%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h108172%_)
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
       _%checked-hash-table::HashTable::clear!106654%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table108026%_
               _%count108027%_
               _%free108028%_
               _%hash108029%_
               _%test108030%_
               _%seed108031%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table108026%_
           _%count108027%_
           _%free108028%_
           _%hash108029%_
           _%test108030%_
           _%seed108031%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords107787%_
               _%size-hint107777107788%_
               _%seed107778107790%_
               _%test107779107792%_
               _%hash107780107794%_
               _%lock107781107796%_
               _%check107782107798%_
               _%weak-keys107783107800%_
               _%weak-values107784107802%_)
        (let* ((_%size-hint107805%_
                (if (eq? _%size-hint107777107788%_ absent-value)
                    '#f
                    _%size-hint107777107788%_))
               (_%seed107807%_
                (if (eq? _%seed107778107790%_ absent-value)
                    '#f
                    _%seed107778107790%_))
               (_%test107809%_
                (if (eq? _%test107779107792%_ absent-value)
                    equal?
                    _%test107779107792%_))
               (_%hash107811%_
                (if (eq? _%hash107780107794%_ absent-value)
                    '#f
                    _%hash107780107794%_))
               (_%lock107813%_
                (if (eq? _%lock107781107796%_ absent-value)
                    '#f
                    _%lock107781107796%_))
               (_%check107815%_
                (if (eq? _%check107782107798%_ absent-value)
                    '#f
                    _%check107782107798%_))
               (_%weak-keys107817%_
                (if (eq? _%weak-keys107783107800%_ absent-value)
                    '#f
                    _%weak-keys107783107800%_))
               (_%weak-values107819%_
                (if (eq? _%weak-values107784107802%_ absent-value)
                    '#f
                    _%weak-values107784107802%_)))
          (letrec ((_%table-seed107822%_
                    (lambda ()
                      (if (fixnum? _%seed107807%_)
                          _%seed107807%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock107823%_
                    (lambda (_%ht108000%_)
                      (let ((_%ht108003%_ _%ht108000%_))
                        (_%__wrap-lock107824%_ _%ht108003%_))))
                   (_%__wrap-lock107824%_
                    (lambda (_%ht107982%_)
                      (let ((_%ht107985%_ _%ht107982%_))
                        (if _%lock107813%_
                            (let ((_%$obj107997%_
                                   (let ((__tmp111151
                                          (let ((_%$obj107994%_
                                                 _%lock107813%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj107994%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj107994%_)))
                                                     '#t)
                                                _%$obj107994%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj107994%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht107985%_
                                      __tmp111151))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107997%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107997%_)))
                                       '#t)
                                  _%$obj107997%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107997%_))))
                            _%ht107985%_))))
                   (_%wrap-checked107825%_
                    (lambda (_%ht107969%_ _%implicit107970%_)
                      (let ((_%ht107973%_ _%ht107969%_))
                        (_%__wrap-checked107826%_
                         _%ht107973%_
                         _%implicit107970%_))))
                   (_%__wrap-checked107826%_
                    (lambda (_%ht107942%_ _%implicit107943%_)
                      (let ((_%ht107946%_ _%ht107942%_))
                        (if _%check107815%_
                            (let ((_%$obj107966%_
                                   (let ((__tmp111152
                                          (if (procedure? _%check107815%_)
                                              _%check107815%_
                                              _%implicit107943%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht107946%_
                                      __tmp111152))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107966%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107966%_)))
                                       '#t)
                                  _%$obj107966%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107966%_))))
                            _%ht107946%_))))
                   (_%make107827%_
                    (lambda (_%kons107926%_
                             _%key?107927%_
                             _%hash107928%_
                             _%test107929%_)
                      (let* ((_%size107932%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint107805%_)))
                             (_%table107934%_
                              (let ((__tmp111153 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size107932%_ __tmp111153)))
                             (_%ht107939%_
                              (let ((_%$obj107936%_
                                     (_%kons107926%_
                                      _%table107934%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size107932%_ '2))
                                      _%hash107928%_
                                      _%test107929%_
                                      (_%table-seed107822%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107936%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107936%_)))
                                         '#t)
                                    _%$obj107936%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107936%_))))))
                        (_%__wrap-checked107826%_
                         (_%__wrap-lock107824%_ _%ht107939%_)
                         _%key?107927%_))))
                   (_%make-gc-hash-table107828%_
                    (lambda ()
                      (let ((_%ht107924%_
                             (let ((_%$obj107921%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint107805%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj107921%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj107921%_)))
                                        '#t)
                                   _%$obj107921%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj107921%_))))))
                        (_%__wrap-checked107826%_
                         (_%__wrap-lock107824%_ _%ht107924%_)
                         true))))
                   (_%make-gambit-table107829%_
                    (lambda ()
                      (let* ((_%size107898%_
                              (let ((_%$e107895%_ _%size-hint107805%_))
                                (if _%$e107895%_
                                    _%$e107895%_
                                    (macro-absent-obj))))
                             (_%test107903%_
                              (let ((_%$e107900%_ _%test107809%_))
                                (if _%$e107900%_ _%$e107900%_ equal?)))
                             (_%hash107911%_
                              (let ((_%$e107905%_ _%hash107811%_))
                                (if _%$e107905%_
                                    _%$e107905%_
                                    (if (eq? _%test107903%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test107903%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht107916%_
                              (let ((_%$obj107913%_
                                     (make-table
                                      'size:
                                      _%size107898%_
                                      'test:
                                      _%test107903%_
                                      'hash:
                                      _%hash107911%_
                                      'weak-keys:
                                      _%weak-keys107817%_
                                      'weak-values:
                                      _%weak-values107819%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107913%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107913%_)))
                                         '#t)
                                    _%$obj107913%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107913%_))))))
                        (_%__wrap-checked107826%_
                         (_%__wrap-lock107824%_ _%ht107916%_)
                         true)))))
            (if (or _%weak-keys107817%_ _%weak-values107819%_)
                (_%make-gambit-table107829%_)
                (if (and (or (eq? _%test107809%_ eq?)
                             (eq? _%test107809%_ ##eq?))
                         (or (not _%hash107811%_)
                             (eq? _%hash107811%_ eq?-hash)
                             (eq? _%hash107811%_ eq-hash))
                         (not _%seed107807%_))
                    (_%make-gc-hash-table107828%_)
                    (if (and (or (eq? _%test107809%_ eq?)
                                 (eq? _%test107809%_ ##eq?))
                             (or (not _%hash107811%_)
                                 (eq? _%hash107811%_ eq?-hash)
                                 (eq? _%hash107811%_ eq-hash)))
                        (_%make107827%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test107809%_ eqv?)
                                     (eq? _%test107809%_ ##eqv?))
                                 (or (not _%hash107811%_)
                                     (eq? _%hash107811%_ eqv?-hash)
                                     (eq? _%hash107811%_ eqv-hash)))
                            (_%make107827%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test107809%_ eq?)
                                         (eq? _%test107809%_ ##eq?))
                                     (or (eq? _%hash107811%_ symbolic-hash)
                                         (eq? _%hash107811%_ ##symbol-hash)))
                                (_%make107827%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test107809%_ eq?)
                                             (eq? _%test107809%_ ##eq?))
                                         (eq? _%hash107811%_ immediate-hash))
                                    (_%make107827%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test107809%_ equal?)
                                                 (eq? _%test107809%_ ##equal?)
                                                 (eq? _%test107809%_ string=?)
                                                 (eq? _%test107809%_
                                                      ##string=?))
                                             (or (eq? _%hash107811%_
                                                      string-hash)
                                                 (eq? _%hash107811%_
                                                      ##string=?-hash)))
                                        (_%make107827%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test107809%_ equal?)
                                                 (not _%hash107811%_))
                                            (_%make107827%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test107809%_)
                                                (if (procedure? _%hash107811%_)
                                                    (_%make107827%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash107811%_
                                                     _%test107809%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash107811%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test107809%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords108016%_ . _%args108017%_)
        (apply make-hash-table__%
               _%@@keywords108016%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108016%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108016%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108016%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108016%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108016%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108016%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108016%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108016%_
                  'weak-values:
                  absent-value))
               _%args108017%_)))
    (define make-hash-table
      (lambda _%args107785108023%_
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
               _%args107785108023%_)))
    (define make-hash-table-eq
      (lambda _%args107774%_
        (apply make-hash-table 'test: eq? _%args107774%_)))
    (define make-hash-table-eqv
      (lambda _%args107772%_
        (apply make-hash-table 'test: eqv? _%args107772%_)))
    (define make-hash-table-symbolic
      (lambda _%args107770%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args107770%_)))
    (define make-hash-table-string
      (lambda _%args107768%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args107768%_)))
    (define make-hash-table-immediate
      (lambda _%args107766%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args107766%_)))
    (define list->hash-table
      (lambda (_%lst107763%_ . _%args107764%_)
        (list->hash-table!
         _%lst107763%_
         (apply make-hash-table
                'size:
                (length _%lst107763%_)
                _%args107764%_))))
    (define list->hash-table-eq
      (lambda (_%lst107760%_ . _%args107761%_)
        (list->hash-table!
         _%lst107760%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107760%_)
                _%args107761%_))))
    (define list->hash-table-eqv
      (lambda (_%lst107757%_ . _%args107758%_)
        (list->hash-table!
         _%lst107757%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107757%_)
                _%args107758%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst107754%_ . _%args107755%_)
        (list->hash-table!
         _%lst107754%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107754%_)
                _%args107755%_))))
    (define list->hash-table-string
      (lambda (_%lst107751%_ . _%args107752%_)
        (list->hash-table!
         _%lst107751%_
         (apply make-hash-table-string
                'size:
                (length _%lst107751%_)
                _%args107752%_))))
    (define list->hash-table-immediate
      (lambda (_%lst107748%_ . _%args107749%_)
        (list->hash-table!
         _%lst107748%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107748%_)
                _%args107749%_))))
    (define list->hash-table!
      (lambda (_%lst107715%_ _%h107716%_)
        (for-each
         (lambda (_%el107718%_)
           (let* ((_%el107719107726%_ _%el107718%_)
                  (_%E107721107730%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el107719107726%_
                              '([k . v])))
                     '#!void))
                  (_%K107722107736%_
                   (lambda (_%v107733%_ _%k107734%_)
                     (&HashTable-set! _%h107716%_ _%k107734%_ _%v107733%_))))
             (if (pair? _%el107719107726%_)
                 (let ((_%hd107723107739%_
                        (let ()
                          (declare (not safe))
                          (##car _%el107719107726%_)))
                       (_%tl107724107741%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el107719107726%_))))
                   (let* ((_%k107744%_ _%hd107723107739%_)
                          (_%v107746%_ _%tl107724107741%_))
                     (_%K107722107736%_ _%v107746%_ _%k107744%_)))
                 (_%E107721107730%_))))
         _%lst107715%_)
        _%h107716%_))
    (define plist->hash-table
      (lambda (_%lst107712%_ . _%args107713%_)
        (plist->hash-table!
         _%lst107712%_
         (apply make-hash-table
                'size:
                (length _%lst107712%_)
                _%args107713%_))))
    (define plist->hash-table-eq
      (lambda (_%lst107709%_ . _%args107710%_)
        (plist->hash-table!
         _%lst107709%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107709%_)
                _%args107710%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst107706%_ . _%args107707%_)
        (plist->hash-table!
         _%lst107706%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107706%_)
                _%args107707%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst107703%_ . _%args107704%_)
        (plist->hash-table!
         _%lst107703%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107703%_)
                _%args107704%_))))
    (define plist->hash-table-string
      (lambda (_%lst107700%_ . _%args107701%_)
        (plist->hash-table!
         _%lst107700%_
         (apply make-hash-table-string
                'size:
                (length _%lst107700%_)
                _%args107701%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst107697%_ . _%args107698%_)
        (plist->hash-table!
         _%lst107697%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107697%_)
                _%args107698%_))))
    (define plist->hash-table!
      (lambda (_%lst107637%_ _%h107638%_)
        (let _%loop107640%_ ((_%rest107642%_ _%lst107637%_))
          (let* ((_%rest107643107655%_ _%rest107642%_)
                 (_%else107646107663%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst107637%_)))))
            (let ((_%K107649107678%_
                   (lambda (_%rest107674%_ _%val107675%_ _%key107676%_)
                     (&HashTable-set! _%h107638%_ _%key107676%_ _%val107675%_)
                     (_%loop107640%_ _%rest107674%_)))
                  (_%K107648107668%_ (lambda () _%h107638%_)))
              (let ((_%try-match107645107671%_
                     (lambda ()
                       (if (null? _%rest107643107655%_)
                           (_%K107648107668%_)
                           (_%else107646107663%_)))))
                (if (pair? _%rest107643107655%_)
                    (let ((_%tl107651107683%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest107643107655%_)))
                          (_%hd107650107681%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest107643107655%_))))
                      (if (pair? _%tl107651107683%_)
                          (let ((_%tl107653107690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl107651107683%_)))
                                (_%hd107652107688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl107651107683%_))))
                            (let ((_%key107686%_ _%hd107650107681%_)
                                  (_%val107693%_ _%hd107652107688%_)
                                  (_%rest107695%_ _%tl107653107690%_))
                              (_%K107649107678%_
                               _%rest107695%_
                               _%val107693%_
                               _%key107686%_)))
                          (_%else107646107663%_)))
                    (_%try-match107645107671%_))))))))
    (define hash-length
      (lambda (_%h107619%_)
        (let* ((_%h107625%_
                (let ((_%$obj107622%_ _%h107619%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107622%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107622%_)))
                           '#t)
                      _%$obj107622%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107622%_)))))
               (_%h107627%_ _%h107625%_))
          (__hash-length _%h107627%_))))
    (define __hash-length
      (lambda (_%h107607%_)
        (let ((_%h107610%_ _%h107607%_)) (__HashTable-length _%h107610%_))))
    (define hash-ref__%
      (lambda (_%h107575%_ _%key107576%_ _%default107577%_)
        (let* ((_%h107583%_
                (let ((_%$obj107580%_ _%h107575%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107580%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107580%_)))
                           '#t)
                      _%$obj107580%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107580%_)))))
               (_%h107585%_ _%h107583%_))
          (__hash-ref__% _%h107585%_ _%key107576%_ _%default107577%_))))
    (define hash-ref__0
      (lambda (_%h107598%_ _%key107599%_)
        (let ((_%default107601%_ (macro-absent-obj)))
          (hash-ref__% _%h107598%_ _%key107599%_ _%default107601%_))))
    (define hash-ref
      (lambda _g111155_
        (let ((_g111154_ (let () (declare (not safe)) (##length _g111155_))))
          (cond ((let () (declare (not safe)) (##fx= _g111154_ 2))
                 (apply hash-ref__0 _g111155_))
                ((let () (declare (not safe)) (##fx= _g111154_ 3))
                 (apply hash-ref__% _g111155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g111155_))))))
    (define __hash-ref__%
      (lambda (_%h107546%_ _%key107547%_ _%default107548%_)
        (let* ((_%h107551%_ _%h107546%_)
               (_%result107560%_
                (&HashTable-ref _%h107551%_ _%key107547%_ _%default107548%_)))
          (if (eq? _%result107560%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h107551%_
               'key:
               _%key107547%_)
              _%result107560%_))))
    (define __hash-ref__0
      (lambda (_%h107565%_ _%key107566%_)
        (let ((_%default107568%_ (macro-absent-obj)))
          (__hash-ref__% _%h107565%_ _%key107566%_ _%default107568%_))))
    (define __hash-ref
      (lambda _g111157_
        (let ((_g111156_ (let () (declare (not safe)) (##length _g111157_))))
          (cond ((let () (declare (not safe)) (##fx= _g111156_ 2))
                 (apply __hash-ref__0 _g111157_))
                ((let () (declare (not safe)) (##fx= _g111156_ 3))
                 (apply __hash-ref__% _g111157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g111157_))))))
    (define hash-get
      (lambda (_%h107526%_ _%key107527%_)
        (let* ((_%h107533%_
                (let ((_%$obj107530%_ _%h107526%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107530%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107530%_)))
                           '#t)
                      _%$obj107530%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107530%_)))))
               (_%h107535%_ _%h107533%_))
          (__hash-get _%h107535%_ _%key107527%_))))
    (define __hash-get
      (lambda (_%h107513%_ _%key107514%_)
        (let ((_%h107517%_ _%h107513%_))
          (&HashTable-ref _%h107517%_ _%key107514%_ '#f))))
    (define hash-put!
      (lambda (_%h107493%_ _%key107494%_ _%value107495%_)
        (let* ((_%h107501%_
                (let ((_%$obj107498%_ _%h107493%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107498%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107498%_)))
                           '#t)
                      _%$obj107498%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107498%_)))))
               (_%h107503%_ _%h107501%_))
          (__hash-put! _%h107503%_ _%key107494%_ _%value107495%_))))
    (define __hash-put!
      (lambda (_%h107479%_ _%key107480%_ _%value107481%_)
        (let ((_%h107484%_ _%h107479%_))
          (&HashTable-set! _%h107484%_ _%key107480%_ _%value107481%_))))
    (define hash-update!__%
      (lambda (_%h107444%_ _%key107445%_ _%update107446%_ _%default107447%_)
        (let* ((_%h107453%_
                (let ((_%$obj107450%_ _%h107444%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107450%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107450%_)))
                           '#t)
                      _%$obj107450%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107450%_)))))
               (_%h107455%_ _%h107453%_))
          (__hash-update!__%
           _%h107455%_
           _%key107445%_
           _%update107446%_
           _%default107447%_))))
    (define hash-update!__0
      (lambda (_%h107468%_ _%key107469%_ _%update107470%_)
        (let ((_%default107472%_ '#!void))
          (hash-update!__%
           _%h107468%_
           _%key107469%_
           _%update107470%_
           _%default107472%_))))
    (define hash-update!
      (lambda _g111159_
        (let ((_g111158_ (let () (declare (not safe)) (##length _g111159_))))
          (cond ((let () (declare (not safe)) (##fx= _g111158_ 3))
                 (apply hash-update!__0 _g111159_))
                ((let () (declare (not safe)) (##fx= _g111158_ 4))
                 (apply hash-update!__% _g111159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g111159_))))))
    (define __hash-update!__%
      (lambda (_%h107414%_ _%key107415%_ _%update107416%_ _%default107417%_)
        (let ((_%h107420%_ _%h107414%_))
          (HashTable-update!
           _%h107420%_
           _%key107415%_
           _%update107416%_
           _%default107417%_))))
    (define __hash-update!__0
      (lambda (_%h107432%_ _%key107433%_ _%update107434%_)
        (let ((_%default107436%_ '#!void))
          (__hash-update!__%
           _%h107432%_
           _%key107433%_
           _%update107434%_
           _%default107436%_))))
    (define __hash-update!
      (lambda _g111161_
        (let ((_g111160_ (let () (declare (not safe)) (##length _g111161_))))
          (cond ((let () (declare (not safe)) (##fx= _g111160_ 3))
                 (apply __hash-update!__0 _g111161_))
                ((let () (declare (not safe)) (##fx= _g111160_ 4))
                 (apply __hash-update!__% _g111161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g111161_))))))
    (define hash-remove!
      (lambda (_%h107394%_ _%key107395%_)
        (let* ((_%h107401%_
                (let ((_%$obj107398%_ _%h107394%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107398%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107398%_)))
                           '#t)
                      _%$obj107398%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107398%_)))))
               (_%h107403%_ _%h107401%_))
          (__hash-remove! _%h107403%_ _%key107395%_))))
    (define __hash-remove!
      (lambda (_%h107381%_ _%key107382%_)
        (let ((_%h107385%_ _%h107381%_))
          (&HashTable-delete! _%h107385%_ _%key107382%_))))
    (define hash-key?
      (lambda (_%h107362%_ _%k107363%_)
        (let* ((_%h107369%_
                (let ((_%$obj107366%_ _%h107362%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107366%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107366%_)))
                           '#t)
                      _%$obj107366%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107366%_)))))
               (_%h107371%_ _%h107369%_))
          (__hash-key? _%h107371%_ _%k107363%_))))
    (define __hash-key?
      (lambda (_%h107349%_ _%k107350%_)
        (let ((_%h107353%_ _%h107349%_))
          (not (eq? (&HashTable-ref _%h107353%_ _%k107350%_ absent-value)
                    absent-value)))))
    (define hash->list
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
          (__hash->list _%h107339%_))))
    (define __hash->list
      (lambda (_%h107314%_)
        (let* ((_%h107317%_ _%h107314%_) (_%lst107326%_ '()))
          (&HashTable-for-each
           _%h107317%_
           (lambda (_%k107328%_ _%v107329%_)
             (set! _%lst107326%_
                   (cons (cons _%k107328%_ _%v107329%_) _%lst107326%_))))
          _%lst107326%_)))
    (define hash->plist
      (lambda (_%h107296%_)
        (let* ((_%h107302%_
                (let ((_%$obj107299%_ _%h107296%_))
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
          (__hash->plist _%h107304%_))))
    (define __hash->plist
      (lambda (_%h107279%_)
        (let* ((_%h107282%_ _%h107279%_) (_%lst107291%_ '()))
          (&HashTable-for-each
           _%h107282%_
           (lambda (_%k107293%_ _%v107294%_)
             (set! _%lst107291%_
                   (cons _%k107293%_ (cons _%v107294%_ _%lst107291%_)))))
          _%lst107291%_)))
    (define hash-for-each
      (lambda (_%proc107250%_ _%h107251%_)
        (if (procedure? _%proc107250%_)
            (let* ((_%proc107255%_ _%proc107250%_)
                   (_%h107267%_
                    (let ((_%$obj107264%_ _%h107251%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107264%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107264%_)))
                               '#t)
                          _%$obj107264%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107264%_)))))
                   (_%h107269%_ _%h107267%_))
              (__hash-for-each _%proc107255%_ _%h107269%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@569.22-569.26"
               'contract:
               'procedure?
               'value:
               _%proc107250%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc107229%_ _%h107230%_)
        (let* ((_%proc107233%_ _%proc107229%_) (_%h107241%_ _%h107230%_))
          (&HashTable-for-each _%h107241%_ _%proc107233%_))))
    (define hash-map
      (lambda (_%proc107200%_ _%h107201%_)
        (if (procedure? _%proc107200%_)
            (let* ((_%proc107205%_ _%proc107200%_)
                   (_%h107217%_
                    (let ((_%$obj107214%_ _%h107201%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107214%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107214%_)))
                               '#t)
                          _%$obj107214%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107214%_)))))
                   (_%h107219%_ _%h107217%_))
              (__hash-map _%proc107205%_ _%h107219%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@572.17-572.21"
               'contract:
               'procedure?
               'value:
               _%proc107200%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc107174%_ _%h107175%_)
        (let* ((_%proc107178%_ _%proc107174%_)
               (_%h107186%_ _%h107175%_)
               (_%result107195%_ '()))
          (&HashTable-for-each
           _%h107186%_
           (lambda (_%k107197%_ _%v107198%_)
             (set! _%result107195%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc107178%_ _%k107197%_ _%v107198%_))
                         _%result107195%_))))
          _%result107195%_)))
    (define hash-fold
      (lambda (_%proc107144%_ _%iv107145%_ _%h107146%_)
        (if (procedure? _%proc107144%_)
            (let* ((_%proc107150%_ _%proc107144%_)
                   (_%h107162%_
                    (let ((_%$obj107159%_ _%h107146%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107159%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107159%_)))
                               '#t)
                          _%$obj107159%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107159%_)))))
                   (_%h107164%_ _%h107162%_))
              (__hash-fold _%proc107150%_ _%iv107145%_ _%h107164%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@577.18-577.22"
               'contract:
               'procedure?
               'value:
               _%proc107144%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc107117%_ _%iv107118%_ _%h107119%_)
        (let* ((_%proc107122%_ _%proc107117%_)
               (_%h107130%_ _%h107119%_)
               (_%result107139%_ _%iv107118%_))
          (&HashTable-for-each
           _%h107130%_
           (lambda (_%k107141%_ _%v107142%_)
             (set! _%result107139%_
                   (let ()
                     (declare (not safe))
                     (_%proc107122%_
                      _%k107141%_
                      _%v107142%_
                      _%result107139%_)))))
          _%result107139%_)))
    (define hash-find__%
      (lambda (_%proc107075%_ _%h107076%_ _%default-value107077%_)
        (if (procedure? _%proc107075%_)
            (let* ((_%proc107081%_ _%proc107075%_)
                   (_%h107093%_
                    (let ((_%$obj107090%_ _%h107076%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107090%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107090%_)))
                               '#t)
                          _%$obj107090%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107090%_)))))
                   (_%h107095%_ _%h107093%_))
              (__hash-find__%
               _%proc107081%_
               _%h107095%_
               _%default-value107077%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@582.18-582.22"
               'contract:
               'procedure?
               'value:
               _%proc107075%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc107108%_ _%h107109%_)
        (let ((_%default-value107111%_ '#f))
          (hash-find__% _%proc107108%_ _%h107109%_ _%default-value107111%_))))
    (define hash-find
      (lambda _g111163_
        (let ((_g111162_ (let () (declare (not safe)) (##length _g111163_))))
          (cond ((let () (declare (not safe)) (##fx= _g111162_ 2))
                 (apply hash-find__0 _g111163_))
                ((let () (declare (not safe)) (##fx= _g111162_ 3))
                 (apply hash-find__% _g111163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g111163_))))))
    (define __hash-find__%
      (lambda (_%proc107032%_ _%h107033%_ _%default-value107034%_)
        (let* ((_%proc107037%_ _%proc107032%_)
               (_%h107045%_ _%h107033%_)
               (__tmp111164
                (lambda (_%return107054%_)
                  (&HashTable-for-each
                   _%h107045%_
                   (lambda (_%k107056%_ _%v107057%_)
                     (let ((_%$e107059%_
                            (let ()
                              (declare (not safe))
                              (_%proc107037%_ _%k107056%_ _%v107057%_))))
                       (if _%$e107059%_
                           (_%return107054%_ _%$e107059%_)
                           '#!void))))
                  _%default-value107034%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp111164))))
    (define __hash-find__0
      (lambda (_%proc107065%_ _%h107066%_)
        (let ((_%default-value107068%_ '#f))
          (__hash-find__%
           _%proc107065%_
           _%h107066%_
           _%default-value107068%_))))
    (define __hash-find
      (lambda _g111166_
        (let ((_g111165_ (let () (declare (not safe)) (##length _g111166_))))
          (cond ((let () (declare (not safe)) (##fx= _g111165_ 2))
                 (apply __hash-find__0 _g111166_))
                ((let () (declare (not safe)) (##fx= _g111165_ 3))
                 (apply __hash-find__% _g111166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g111166_))))))
    (define hash-keys
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
          (__hash-keys _%h107021%_))))
    (define __hash-keys
      (lambda (_%h106996%_)
        (let* ((_%h106999%_ _%h106996%_) (_%result107008%_ '()))
          (&HashTable-for-each
           _%h106999%_
           (lambda (_%k107010%_ _%v107011%_)
             (set! _%result107008%_ (cons _%k107010%_ _%result107008%_))))
          _%result107008%_)))
    (define hash-values
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
          (__hash-values _%h106986%_))))
    (define __hash-values
      (lambda (_%h106961%_)
        (let* ((_%h106964%_ _%h106961%_) (_%result106973%_ '()))
          (&HashTable-for-each
           _%h106964%_
           (lambda (_%k106975%_ _%v106976%_)
             (set! _%result106973%_ (cons _%v106976%_ _%result106973%_))))
          _%result106973%_)))
    (define hash-copy
      (lambda (_%h106943%_)
        (let* ((_%h106949%_
                (let ((_%$obj106946%_ _%h106943%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106946%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106946%_)))
                           '#t)
                      _%$obj106946%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106946%_)))))
               (_%h106951%_ _%h106949%_))
          (__hash-copy _%h106951%_))))
    (define __hash-copy
      (lambda (_%h106931%_)
        (let ((_%h106934%_ _%h106931%_)) (__HashTable-copy _%h106934%_))))
    (define hash-clear!
      (lambda (_%h106913%_)
        (let* ((_%h106919%_
                (let ((_%$obj106916%_ _%h106913%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106916%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106916%_)))
                           '#t)
                      _%$obj106916%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106916%_)))))
               (_%h106921%_ _%h106919%_))
          (__hash-clear! _%h106921%_))))
    (define __hash-clear!
      (lambda (_%h106901%_)
        (let ((_%h106904%_ _%h106901%_)) (&HashTable-clear! _%h106904%_))))
    (define hash-merge
      (lambda (_%h106882%_ . _%rest106883%_)
        (let* ((_%h106889%_
                (let ((_%$obj106886%_ _%h106882%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106886%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106886%_)))
                           '#t)
                      _%$obj106886%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106886%_)))))
               (_%h106891%_ _%h106889%_))
          (declare (not safe))
          (##apply __hash-merge _%h106891%_ _%rest106883%_))))
    (define __hash-merge
      (lambda (_%h106867%_ . _%rest106868%_)
        (let* ((_%h106871%_ _%h106867%_)
               (_%copy106880%_ (__HashTable-copy _%h106871%_)))
          (apply hash-merge! _%copy106880%_ _%rest106868%_)
          _%copy106880%_)))
    (define hash-merge!
      (lambda (_%h106848%_ . _%rest106849%_)
        (let* ((_%h106855%_
                (let ((_%$obj106852%_ _%h106848%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106852%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106852%_)))
                           '#t)
                      _%$obj106852%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106852%_)))))
               (_%h106857%_ _%h106855%_))
          (declare (not safe))
          (##apply __hash-merge! _%h106857%_ _%rest106849%_))))
    (define __hash-merge!
      (lambda (_%h106811%_ . _%rest106812%_)
        (let ((_%h106815%_ _%h106811%_))
          (let ((__tmp111167
                 (lambda (_%hr106824%_)
                   (let* ((_%hr106830%_
                           (let ((_%$obj106827%_ _%hr106824%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj106827%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj106827%_)))
                                      '#t)
                                 _%$obj106827%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj106827%_)))))
                          (_%hr106832%_ _%hr106830%_))
                     (&HashTable-for-each
                      _%hr106832%_
                      (lambda (_%k106845%_ _%v106846%_)
                        (if (__hash-key? _%h106815%_ _%k106845%_)
                            '#!void
                            (&HashTable-set!
                             _%h106815%_
                             _%k106845%_
                             _%v106846%_))))))))
            (declare (not safe))
            (##for-each __tmp111167 _%rest106812%_))
          _%h106815%_)))))
