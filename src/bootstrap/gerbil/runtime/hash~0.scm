(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712146026)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106310 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106310
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106290%_
        (apply make-instance UnboundKeyError::t _%$args106290%_)))
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
      (lambda (_%where106164%_ _%message106165%_ . _%irritants106166%_)
        (let ((__tmp106311
               (let ((__obj106304
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106304
                  _%message106165%_
                  'where:
                  _%where106164%_
                  'irritants:
                  _%irritants106166%_)
                 __obj106304)))
          (declare (not safe))
          (raise __tmp106311))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106312 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106312
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
      (lambda (_%obj106162%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106162%_))))
    (define try-HashTable
      (lambda (_%obj106160%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106160%_))))
    (define HashTable?
      (lambda (_%obj106158%_)
        (let ((__tmp106313
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106158%_ __tmp106313))))
    (define is-HashTable?
      (lambda (_%obj106156%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106156%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106140%_)
        (let* ((_%self106145%_
                (let ((_%$obj106142%_ _%self106140%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106142%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106142%_)))
                           '#t)
                      _%$obj106142%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106142%_)))))
               (_%self106147%_ _%self106145%_))
          (declare (not safe))
          (&HashTable-clear! _%self106147%_))))
    (define &HashTable-clear!
      (lambda (_%self106125%_)
        (let ((_%self106127%_ _%self106125%_))
          (declare (not safe))
          (let ((_%obj106137%_
                 (##unchecked-structure-ref _%self106127%_ '1 '#f 'clear!))
                (_%f106138%_
                 (##unchecked-structure-ref _%self106127%_ '2 '#f 'clear!)))
            (_%f106138%_ _%obj106137%_)))))
    (define HashTable-copy
      (lambda (_%self106109%_)
        (let* ((_%self106114%_
                (let ((_%$obj106111%_ _%self106109%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106111%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106111%_)))
                           '#t)
                      _%$obj106111%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106111%_)))))
               (_%self106116%_ _%self106114%_))
          (declare (not safe))
          (__HashTable-copy _%self106116%_))))
    (define __HashTable-copy
      (lambda (_%self106096%_)
        (let* ((_%self106098%_ _%self106096%_)
               (_%$obj106106%_
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%self106098%_))))
          (if (and (let () (declare (not safe)) (##structure? _%$obj106106%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj106106%_)))
                   '#t)
              _%$obj106106%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj106106%_))))))
    (define &HashTable-copy
      (lambda (_%self106081%_)
        (let ((_%self106083%_ _%self106081%_))
          (declare (not safe))
          (let ((_%obj106093%_
                 (##unchecked-structure-ref _%self106083%_ '1 '#f 'copy))
                (_%f106094%_
                 (##unchecked-structure-ref _%self106083%_ '3 '#f 'copy)))
            (_%f106094%_ _%obj106093%_)))))
    (define HashTable-delete!
      (lambda (_%self106064%_ _%key106065%_)
        (let* ((_%self106070%_
                (let ((_%$obj106067%_ _%self106064%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106067%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106067%_)))
                           '#t)
                      _%$obj106067%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106067%_)))))
               (_%self106072%_ _%self106070%_))
          (declare (not safe))
          (&HashTable-delete! _%self106072%_ _%key106065%_))))
    (define &HashTable-delete!
      (lambda (_%self106048%_ _%key106049%_)
        (let ((_%self106051%_ _%self106048%_))
          (declare (not safe))
          (let ((_%obj106061%_
                 (##unchecked-structure-ref _%self106051%_ '1 '#f 'delete!))
                (_%f106062%_
                 (##unchecked-structure-ref _%self106051%_ '4 '#f 'delete!)))
            (_%f106062%_ _%obj106061%_ _%key106049%_)))))
    (define HashTable-for-each
      (lambda (_%self106021%_ _%proc106022%_)
        (let* ((_%self106027%_
                (let ((_%$obj106024%_ _%self106021%_))
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
               (_%self106029%_ _%self106027%_))
          (if (let () (declare (not safe)) (procedure? _%proc106022%_))
              (let ((_%proc106038%_ _%proc106022%_))
                (declare (not safe))
                (&HashTable-for-each _%self106029%_ _%proc106038%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106022%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self105997%_ _%proc105998%_)
        (let* ((_%self106000%_ _%self105997%_) (_%proc106007%_ _%proc105998%_))
          (declare (not safe))
          (let ((_%obj106018%_
                 (##unchecked-structure-ref _%self106000%_ '1 '#f 'for-each))
                (_%f106019%_
                 (##unchecked-structure-ref _%self106000%_ '5 '#f 'for-each)))
            (_%f106019%_ _%obj106018%_ _%proc106007%_)))))
    (define HashTable-length
      (lambda (_%self105981%_)
        (let* ((_%self105986%_
                (let ((_%$obj105983%_ _%self105981%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105983%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105983%_)))
                           '#t)
                      _%$obj105983%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105983%_)))))
               (_%self105988%_ _%self105986%_))
          (declare (not safe))
          (__HashTable-length _%self105988%_))))
    (define __HashTable-length
      (lambda (_%self105968%_)
        (let* ((_%self105970%_ _%self105968%_)
               (_%val105978%_
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%self105970%_))))
          (if (let () (declare (not safe)) (fixnum? _%val105978%_))
              _%val105978%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val105978%_))))))
    (define &HashTable-length
      (lambda (_%self105953%_)
        (let ((_%self105955%_ _%self105953%_))
          (declare (not safe))
          (let ((_%obj105965%_
                 (##unchecked-structure-ref _%self105955%_ '1 '#f 'length))
                (_%f105966%_
                 (##unchecked-structure-ref _%self105955%_ '6 '#f 'length)))
            (_%f105966%_ _%obj105965%_)))))
    (define HashTable-ref
      (lambda (_%self105935%_ _%key105936%_ _%default105937%_)
        (let* ((_%self105942%_
                (let ((_%$obj105939%_ _%self105935%_))
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
               (_%self105944%_ _%self105942%_))
          (declare (not safe))
          (&HashTable-ref _%self105944%_ _%key105936%_ _%default105937%_))))
    (define &HashTable-ref
      (lambda (_%self105918%_ _%key105919%_ _%default105920%_)
        (let ((_%self105922%_ _%self105918%_))
          (declare (not safe))
          (let ((_%obj105932%_
                 (##unchecked-structure-ref _%self105922%_ '1 '#f 'ref))
                (_%f105933%_
                 (##unchecked-structure-ref _%self105922%_ '7 '#f 'ref)))
            (_%f105933%_ _%obj105932%_ _%key105919%_ _%default105920%_)))))
    (define HashTable-set!
      (lambda (_%self105900%_ _%key105901%_ _%value105902%_)
        (let* ((_%self105907%_
                (let ((_%$obj105904%_ _%self105900%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105904%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105904%_)))
                           '#t)
                      _%$obj105904%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105904%_)))))
               (_%self105909%_ _%self105907%_))
          (declare (not safe))
          (&HashTable-set! _%self105909%_ _%key105901%_ _%value105902%_))))
    (define &HashTable-set!
      (lambda (_%self105883%_ _%key105884%_ _%value105885%_)
        (let ((_%self105887%_ _%self105883%_))
          (declare (not safe))
          (let ((_%obj105897%_
                 (##unchecked-structure-ref _%self105887%_ '1 '#f 'set!))
                (_%f105898%_
                 (##unchecked-structure-ref _%self105887%_ '8 '#f 'set!)))
            (_%f105898%_ _%obj105897%_ _%key105884%_ _%value105885%_)))))
    (define HashTable-update!
      (lambda (_%self105854%_ _%key105855%_ _%proc105856%_ _%default105857%_)
        (let* ((_%self105862%_
                (let ((_%$obj105859%_ _%self105854%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105859%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105859%_)))
                           '#t)
                      _%$obj105859%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105859%_)))))
               (_%self105864%_ _%self105862%_))
          (if (let () (declare (not safe)) (procedure? _%proc105856%_))
              (let ((_%proc105873%_ _%proc105856%_))
                (declare (not safe))
                (&HashTable-update!
                 _%self105864%_
                 _%key105855%_
                 _%proc105873%_
                 _%default105857%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc105856%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self105826%_ _%key105827%_ _%proc105828%_ _%default105829%_)
        (let* ((_%self105831%_ _%self105826%_) (_%proc105838%_ _%proc105828%_))
          (declare (not safe))
          (let ((_%obj105849%_
                 (##unchecked-structure-ref _%self105831%_ '1 '#f 'update!))
                (_%f105851%_
                 (##unchecked-structure-ref _%self105831%_ '9 '#f 'update!)))
            (_%f105851%_
             _%obj105849%_
             _%key105827%_
             _%proc105838%_
             _%default105829%_)))))
    (define Locker::t
      (let ((__tmp106314 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106314
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
      (lambda (_%obj105824%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj105824%_))))
    (define try-Locker
      (lambda (_%obj105822%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj105822%_))))
    (define Locker?
      (lambda (_%obj105820%_)
        (let ((__tmp106315
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj105820%_ __tmp106315))))
    (define is-Locker?
      (lambda (_%obj105818%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj105818%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self105802%_)
        (let* ((_%self105807%_
                (let ((_%$obj105804%_ _%self105802%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105804%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105804%_)))
                           '#t)
                      _%$obj105804%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105804%_)))))
               (_%self105809%_ _%self105807%_))
          (declare (not safe))
          (&Locker-read-lock! _%self105809%_))))
    (define &Locker-read-lock!
      (lambda (_%self105787%_)
        (let ((_%self105789%_ _%self105787%_))
          (declare (not safe))
          (let ((_%obj105799%_
                 (##unchecked-structure-ref _%self105789%_ '1 '#f 'read-lock!))
                (_%f105800%_
                 (##unchecked-structure-ref
                  _%self105789%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f105800%_ _%obj105799%_)))))
    (define Locker-read-unlock!
      (lambda (_%self105771%_)
        (let* ((_%self105776%_
                (let ((_%$obj105773%_ _%self105771%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105773%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105773%_)))
                           '#t)
                      _%$obj105773%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105773%_)))))
               (_%self105778%_ _%self105776%_))
          (declare (not safe))
          (&Locker-read-unlock! _%self105778%_))))
    (define &Locker-read-unlock!
      (lambda (_%self105756%_)
        (let ((_%self105758%_ _%self105756%_))
          (declare (not safe))
          (let ((_%obj105768%_
                 (##unchecked-structure-ref
                  _%self105758%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f105769%_
                 (##unchecked-structure-ref
                  _%self105758%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f105769%_ _%obj105768%_)))))
    (define Locker-write-lock!
      (lambda (_%self105740%_)
        (let* ((_%self105745%_
                (let ((_%$obj105742%_ _%self105740%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105742%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105742%_)))
                           '#t)
                      _%$obj105742%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105742%_)))))
               (_%self105747%_ _%self105745%_))
          (declare (not safe))
          (&Locker-write-lock! _%self105747%_))))
    (define &Locker-write-lock!
      (lambda (_%self105725%_)
        (let ((_%self105727%_ _%self105725%_))
          (declare (not safe))
          (let ((_%obj105737%_
                 (##unchecked-structure-ref
                  _%self105727%_
                  '1
                  '#f
                  'write-lock!))
                (_%f105738%_
                 (##unchecked-structure-ref
                  _%self105727%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f105738%_ _%obj105737%_)))))
    (define Locker-write-unlock!
      (lambda (_%self105709%_)
        (let* ((_%self105714%_
                (let ((_%$obj105711%_ _%self105709%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105711%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105711%_)))
                           '#t)
                      _%$obj105711%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105711%_)))))
               (_%self105716%_ _%self105714%_))
          (declare (not safe))
          (&Locker-write-unlock! _%self105716%_))))
    (define &Locker-write-unlock!
      (lambda (_%self105692%_)
        (let ((_%self105694%_ _%self105692%_))
          (declare (not safe))
          (let ((_%obj105704%_
                 (##unchecked-structure-ref
                  _%self105694%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f105706%_
                 (##unchecked-structure-ref
                  _%self105694%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f105706%_ _%obj105704%_)))))
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
      (lambda (_%table105685%_
               _%key105686%_
               _%update105687%_
               _%default105688%_)
        (let ((_%result105690%_
               (table-ref _%table105685%_ _%key105686%_ _%default105688%_)))
          (table-set!
           _%table105685%_
           _%key105686%_
           (_%update105687%_ _%default105688%_)))))
    (define gambit-table-for-each
      (lambda (_%table105682%_ _%proc105683%_)
        (table-for-each _%proc105683%_ _%table105682%_)))
    (define gambit-table-clear!
      (lambda (_%table105680%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table105680%_ '0 '5 '#f '#f))))
    (let ((__tmp106316 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106316 'ref table-ref))
    (let ((__tmp106317 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106317 'set! table-set!))
    (let ((__tmp106318 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106318 'update! gambit-table-update!))
    (let ((__tmp106319 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106319 'delete! table-set!))
    (let ((__tmp106320 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106320 'for-each gambit-table-for-each))
    (let ((__tmp106321 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106321 'length table-length))
    (let ((__tmp106322 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106322 'copy table-copy))
    (let ((__tmp106323 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106323 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots105662%_ '(table count free hash test seed))
             (_%slot-vector105664%_ (list->vector (cons '#f _%slots105662%_)))
             (_%slot-table105671%_
              (let ((_%slot-table105666%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106326
                       (lambda (_%slot105668%_ _%field105669%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105666%_
                            _%slot105668%_
                            _%field105669%_))
                         (let ((__tmp106327
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105668%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105666%_
                            __tmp106327
                            _%field105669%_))))
                      (__tmp106324
                       (let ((__tmp106325
                              (let ()
                                (declare (not safe))
                                (##length _%slots105662%_))))
                         (declare (not safe))
                         (##iota __tmp106325 '1))))
                  (declare (not safe))
                  (##for-each __tmp106326 _%slots105662%_ __tmp106324))
                _%slot-table105666%_))
             (_%flags105673%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105675%_ '#())
             (_%properties105677%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105662%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106328 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags105673%_
         __table::t
         _%fields105675%_
         __tmp106328
         _%slot-vector105664%_
         _%slot-table105671%_
         _%properties105677%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots105644%_ '(gcht immediate))
             (_%slot-vector105646%_ (list->vector (cons '#f _%slots105644%_)))
             (_%slot-table105653%_
              (let ((_%slot-table105648%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106331
                       (lambda (_%slot105650%_ _%field105651%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105648%_
                            _%slot105650%_
                            _%field105651%_))
                         (let ((__tmp106332
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105650%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105648%_
                            __tmp106332
                            _%field105651%_))))
                      (__tmp106329
                       (let ((__tmp106330
                              (let ()
                                (declare (not safe))
                                (##length _%slots105644%_))))
                         (declare (not safe))
                         (##iota __tmp106330 '1))))
                  (declare (not safe))
                  (##for-each __tmp106331 _%slots105644%_ __tmp106329))
                _%slot-table105648%_))
             (_%flags105655%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105657%_ '#())
             (_%properties105659%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105644%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106333 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags105655%_
         __gc-table::t
         _%fields105657%_
         __tmp106333
         _%slot-vector105646%_
         _%slot-table105653%_
         _%properties105659%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp106335 (list))
            (__tmp106334
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106335
         '(table lock)
         __tmp106334
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args105641%_
        (apply make-instance locked-hash-table::t _%$args105641%_)))
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
      (let ((__tmp106337 (list))
            (__tmp106336
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106337
         '(table key-check)
         __tmp106336
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args105638%_
        (apply make-instance checked-hash-table::t _%$args105638%_)))
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
      (let ((__tmp106339 (list hash-table::t))
            (__tmp106338 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106339
         '()
         __tmp106338
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args105635%_
        (apply make-instance eq-hash-table::t _%$args105635%_)))
    (define eqv-hash-table::t
      (let ((__tmp106341 (list hash-table::t))
            (__tmp106340 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106341
         '()
         __tmp106340
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args105632%_
        (apply make-instance eqv-hash-table::t _%$args105632%_)))
    (define symbol-hash-table::t
      (let ((__tmp106343 (list hash-table::t))
            (__tmp106342 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106343
         '()
         __tmp106342
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args105629%_
        (apply make-instance symbol-hash-table::t _%$args105629%_)))
    (define string-hash-table::t
      (let ((__tmp106345 (list hash-table::t))
            (__tmp106344 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106345
         '()
         __tmp106344
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args105626%_
        (apply make-instance string-hash-table::t _%$args105626%_)))
    (define immediate-hash-table::t
      (let ((__tmp106347 (list hash-table::t))
            (__tmp106346 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106347
         '()
         __tmp106346
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args105623%_
        (apply make-instance immediate-hash-table::t _%$args105623%_)))
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
      (lambda (_%obj105621%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj105621%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj105619%_)
        (let () (declare (not safe)) (is-HashTable? _%obj105619%_))))
    (define _%locked-hash-table::ref101673%_
      (lambda (_%self105595%_ _%key105597%_ _%default105598%_)
        (let ((_%self105601%_ _%self105595%_))
          (let ((_%h105611%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105601%_ '1 '#f '#f)))
                (_%l105613%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105601%_ '2 '#f '#f))))
            (let ((__tmp106350
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105613%_))))
                  (__tmp106349
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h105611%_
                        _%key105597%_
                        _%default105598%_))))
                  (__tmp106348
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105613%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106350 __tmp106349 __tmp106348))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref101673%_
       '#f))
    (define _%locked-hash-table::set!101675%_
      (lambda (_%self105448%_ _%key105450%_ _%value105451%_)
        (let ((_%self105454%_ _%self105448%_))
          (let ((_%h105464%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105454%_ '1 '#f '#f)))
                (_%l105466%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105454%_ '2 '#f '#f))))
            (let ((__tmp106353
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105466%_))))
                  (__tmp106352
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h105464%_
                        _%key105450%_
                        _%value105451%_))))
                  (__tmp106351
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105466%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106353 __tmp106352 __tmp106351))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!101675%_
       '#f))
    (define _%locked-hash-table::update!101677%_
      (lambda (_%self105300%_ _%key105302%_ _%update105303%_ _%default105304%_)
        (let ((_%self105307%_ _%self105300%_))
          (let ((_%h105317%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105307%_ '1 '#f '#f)))
                (_%l105319%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105307%_ '2 '#f '#f))))
            (let ((__tmp106356
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105319%_))))
                  (__tmp106355
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-update!
                        _%h105317%_
                        _%key105302%_
                        _%update105303%_
                        _%default105304%_))))
                  (__tmp106354
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105319%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106356 __tmp106355 __tmp106354))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!101677%_
       '#f))
    (define _%locked-hash-table::delete!101679%_
      (lambda (_%self105154%_ _%key105156%_)
        (let ((_%self105159%_ _%self105154%_))
          (let ((_%h105169%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105159%_ '1 '#f '#f)))
                (_%l105171%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105159%_ '2 '#f '#f))))
            (let ((__tmp106359
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105171%_))))
                  (__tmp106358
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-delete! _%h105169%_ _%key105156%_))))
                  (__tmp106357
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105171%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106359 __tmp106358 __tmp106357))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!101679%_
       '#f))
    (define _%locked-hash-table::for-each101681%_
      (lambda (_%self105008%_ _%proc105010%_)
        (let ((_%self105013%_ _%self105008%_))
          (let ((_%h105023%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105013%_ '1 '#f '#f)))
                (_%l105025%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105013%_ '2 '#f '#f))))
            (let ((__tmp106362
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105025%_))))
                  (__tmp106361
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-for-each _%h105023%_ _%proc105010%_))))
                  (__tmp106360
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105025%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106362 __tmp106361 __tmp106360))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each101681%_
       '#f))
    (define _%locked-hash-table::length101683%_
      (lambda (_%self104863%_)
        (let ((_%self104867%_ _%self104863%_))
          (let ((_%h104877%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104867%_ '1 '#f '#f)))
                (_%l104879%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104867%_ '2 '#f '#f))))
            (let ((__tmp106365
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l104879%_))))
                  (__tmp106364
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-length _%h104877%_))))
                  (__tmp106363
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l104879%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106365 __tmp106364 __tmp106363))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length101683%_
       '#f))
    (define _%locked-hash-table::copy101685%_
      (lambda (_%self104718%_)
        (let ((_%self104722%_ _%self104718%_))
          (let ((_%h104732%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104722%_ '1 '#f '#f)))
                (_%l104734%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104722%_ '2 '#f '#f))))
            (let ((__tmp106368
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l104734%_))))
                  (__tmp106367
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h104732%_))))
                  (__tmp106366
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l104734%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106368 __tmp106367 __tmp106366))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy101685%_
       '#f))
    (define _%locked-hash-table::clear!101687%_
      (lambda (_%self104573%_)
        (let ((_%self104577%_ _%self104573%_))
          (let ((_%h104587%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104577%_ '1 '#f '#f)))
                (_%l104589%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104577%_ '2 '#f '#f))))
            (let ((__tmp106371
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l104589%_))))
                  (__tmp106370
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-clear! _%h104587%_))))
                  (__tmp106369
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l104589%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106371 __tmp106370 __tmp106369))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!101687%_
       '#f))
    (let ((__tmp106372 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106372 'read-lock! mutex-lock!))
    (let ((__tmp106373 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106373 'read-unlock! mutex-unlock!))
    (let ((__tmp106374 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106374 'write-lock! mutex-lock!))
    (let ((__tmp106375 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106375 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref101965%_
      (lambda (_%self104426%_ _%key104427%_ _%default104428%_)
        (let ((_%self104431%_ _%self104426%_))
          (let ((_%h104441%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104431%_ '1 '#f '#f)))
                (_%key?104443%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104431%_ '2 '#f '#f))))
            ((lambda (_%g104445104447%_)
               (if (_%g104445104447%_ _%key104427%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104427%_))))
             _%key?104443%_)
            (let ()
              (declare (not safe))
              (&HashTable-ref _%h104441%_ _%key104427%_ _%default104428%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref101965%_
       '#f))
    (define _%checked-hash-table::set!101967%_
      (lambda (_%self104279%_ _%key104280%_ _%value104281%_)
        (let ((_%self104284%_ _%self104279%_))
          (let ((_%h104294%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104284%_ '1 '#f '#f)))
                (_%key?104296%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104284%_ '2 '#f '#f))))
            ((lambda (_%g104298104300%_)
               (if (_%g104298104300%_ _%key104280%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104280%_))))
             _%key?104296%_)
            (let ()
              (declare (not safe))
              (&HashTable-set! _%h104294%_ _%key104280%_ _%value104281%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!101967%_
       '#f))
    (define _%checked-hash-table::update!101969%_
      (lambda (_%self104133%_ _%key104134%_ _%update104135%_ _%default104136%_)
        (let ((_%self104139%_ _%self104133%_))
          (let ((_%h104149%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104139%_ '1 '#f '#f)))
                (_%key?104151%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104139%_ '2 '#f '#f))))
            ((lambda (_%key?104154%_)
               (if (_%key?104154%_ _%key104134%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104134%_)))
               (if (let () (declare (not safe)) (procedure? _%update104135%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104135%_))))
             _%key?104151%_)
            (let ()
              (declare (not safe))
              (&HashTable-update!
               _%h104149%_
               _%key104134%_
               _%update104135%_
               _%default104136%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!101969%_
       '#f))
    (define _%checked-hash-table::delete!101971%_
      (lambda (_%self103987%_ _%key103988%_)
        (let ((_%self103991%_ _%self103987%_))
          (let ((_%h104001%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103991%_ '1 '#f '#f)))
                (_%key?104003%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103991%_ '2 '#f '#f))))
            ((lambda (_%g104005104007%_)
               (if (_%g104005104007%_ _%key103988%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key103988%_))))
             _%key?104003%_)
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%h104001%_ _%key103988%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!101971%_
       '#f))
    (define _%checked-hash-table::for-each101973%_
      (lambda (_%self103843%_ _%proc103844%_)
        (let ((_%self103847%_ _%self103843%_))
          (let ((_%h103857%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103847%_ '1 '#f '#f)))
                (_%key?103859%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103847%_ '2 '#f '#f))))
            ((lambda (_%_103862%_)
               (if (let () (declare (not safe)) (procedure? _%proc103844%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc103844%_))))
             _%key?103859%_)
            (let ()
              (declare (not safe))
              (&HashTable-for-each _%h103857%_ _%proc103844%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each101973%_
       '#f))
    (define _%checked-hash-table::length101975%_
      (lambda (_%self103702%_)
        (let ((_%self103705%_ _%self103702%_))
          (let ((_%h103715%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103705%_ '1 '#f '#f)))
                (_%key?103717%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103705%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-length _%h103715%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length101975%_
       '#f))
    (define _%checked-hash-table::copy101977%_
      (lambda (_%self103561%_)
        (let ((_%self103564%_ _%self103561%_))
          (let ((_%h103574%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103564%_ '1 '#f '#f)))
                (_%key?103576%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103564%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-copy _%h103574%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy101977%_
       '#f))
    (define _%checked-hash-table::clear!101979%_
      (lambda (_%self103420%_)
        (let ((_%self103423%_ _%self103420%_))
          (let ((_%h103433%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103423%_ '1 '#f '#f)))
                (_%key?103435%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103423%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-clear! _%h103433%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!101979%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103290%_
               _%count103291%_
               _%free103292%_
               _%hash103293%_
               _%test103294%_
               _%seed103295%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103290%_
           _%count103291%_
           _%free103292%_
           _%hash103293%_
           _%test103294%_
           _%seed103295%_))))
    (define make-hash-table__%
      (lambda (_%_103112%_
               _%size-hint103102103114%_
               _%seed103103103116%_
               _%test103104103118%_
               _%hash103105103120%_
               _%lock103106103122%_
               _%check103107103124%_
               _%weak-keys103108103126%_
               _%weak-values103109103128%_)
        (let* ((_%size-hint103131%_
                (if (eq? _%size-hint103102103114%_ absent-value)
                    '#f
                    _%size-hint103102103114%_))
               (_%seed103133%_
                (if (eq? _%seed103103103116%_ absent-value)
                    '#f
                    _%seed103103103116%_))
               (_%test103135%_
                (if (eq? _%test103104103118%_ absent-value)
                    equal?
                    _%test103104103118%_))
               (_%hash103137%_
                (if (eq? _%hash103105103120%_ absent-value)
                    '#f
                    _%hash103105103120%_))
               (_%lock103139%_
                (if (eq? _%lock103106103122%_ absent-value)
                    '#f
                    _%lock103106103122%_))
               (_%check103141%_
                (if (eq? _%check103107103124%_ absent-value)
                    '#f
                    _%check103107103124%_))
               (_%weak-keys103143%_
                (if (eq? _%weak-keys103108103126%_ absent-value)
                    '#f
                    _%weak-keys103108103126%_))
               (_%weak-values103145%_
                (if (eq? _%weak-values103109103128%_ absent-value)
                    '#f
                    _%weak-values103109103128%_)))
          (letrec ((_%table-seed103147%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103133%_))
                          _%seed103133%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103148%_
                    (lambda (_%ht103268%_)
                      (if _%lock103139%_
                          (let ((_%$obj103273%_
                                 (let ((__tmp106376
                                        (let ((_%$obj103270%_ _%lock103139%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103270%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103270%_)))
                                                   '#t)
                                              _%$obj103270%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103270%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103268%_
                                    __tmp106376))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103273%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103273%_)))
                                     '#t)
                                _%$obj103273%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103273%_))))
                          _%ht103268%_)))
                   (_%wrap-checked103149%_
                    (lambda (_%ht103262%_ _%implicit103263%_)
                      (if _%check103141%_
                          (let ((_%$obj103265%_
                                 (let ((__tmp106377
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103141%_))
                                            _%check103141%_
                                            _%implicit103263%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103262%_
                                    __tmp106377))))
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
                                  (cast HashTable::interface _%$obj103265%_))))
                          _%ht103262%_)))
                   (_%make103150%_
                    (lambda (_%kons103247%_
                             _%key?103248%_
                             _%hash103249%_
                             _%test103250%_)
                      (let* ((_%size103252%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103131%_)))
                             (_%table103254%_
                              (let ((__tmp106378 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103252%_ __tmp106378)))
                             (_%ht103259%_
                              (let ((_%$obj103256%_
                                     (_%kons103247%_
                                      _%table103254%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103252%_ '2))
                                      _%hash103249%_
                                      _%test103250%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103147%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103256%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103256%_)))
                                         '#t)
                                    _%$obj103256%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103256%_)))))
                             (__tmp106379
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103148%_ _%ht103259%_))))
                        (declare (not safe))
                        (_%wrap-checked103149%_ __tmp106379 _%key?103248%_))))
                   (_%make-gc-hash-table103151%_
                    (lambda ()
                      (let* ((_%ht103245%_
                              (let ((_%$obj103242%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103131%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103242%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103242%_)))
                                         '#t)
                                    _%$obj103242%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103242%_)))))
                             (__tmp106380
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103148%_ _%ht103245%_))))
                        (declare (not safe))
                        (_%wrap-checked103149%_ __tmp106380 true))))
                   (_%make-gambit-table103152%_
                    (lambda ()
                      (let* ((_%size103220%_
                              (let ((_%$e103217%_ _%size-hint103131%_))
                                (if _%$e103217%_
                                    _%$e103217%_
                                    (macro-absent-obj))))
                             (_%test103225%_
                              (let ((_%$e103222%_ _%test103135%_))
                                (if _%$e103222%_ _%$e103222%_ equal?)))
                             (_%hash103233%_
                              (let ((_%$e103227%_ _%hash103137%_))
                                (if _%$e103227%_
                                    _%$e103227%_
                                    (if (eq? _%test103225%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103225%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103238%_
                              (let ((_%$obj103235%_
                                     (make-table
                                      'size:
                                      _%size103220%_
                                      'test:
                                      _%test103225%_
                                      'hash:
                                      _%hash103233%_
                                      'weak-keys:
                                      _%weak-keys103143%_
                                      'weak-values:
                                      _%weak-values103145%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103235%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103235%_)))
                                         '#t)
                                    _%$obj103235%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103235%_)))))
                             (__tmp106381
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103148%_ _%ht103238%_))))
                        (declare (not safe))
                        (_%wrap-checked103149%_ __tmp106381 true)))))
            (if (or _%weak-keys103143%_ _%weak-values103145%_)
                (let () (declare (not safe)) (_%make-gambit-table103152%_))
                (if (and (or (eq? _%test103135%_ eq?)
                             (eq? _%test103135%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103137%_))
                             (eq? _%hash103137%_ eq?-hash)
                             (eq? _%hash103137%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103133%_)))
                    (let ()
                      (declare (not safe))
                      (_%make-gc-hash-table103151%_))
                    (if (and (or (eq? _%test103135%_ eq?)
                                 (eq? _%test103135%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103137%_))
                                 (eq? _%hash103137%_ eq?-hash)
                                 (eq? _%hash103137%_ eq-hash)))
                        (let ()
                          (declare (not safe))
                          (_%make103150%_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (eq? _%test103135%_ eqv?)
                                     (eq? _%test103135%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103137%_))
                                     (eq? _%hash103137%_ eqv?-hash)
                                     (eq? _%hash103137%_ eqv-hash)))
                            (let ()
                              (declare (not safe))
                              (_%make103150%_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (eq? _%test103135%_ eq?)
                                         (eq? _%test103135%_ ##eq?))
                                     (or (eq? _%hash103137%_ symbolic-hash)
                                         (eq? _%hash103137%_ ##symbol-hash)))
                                (let ()
                                  (declare (not safe))
                                  (_%make103150%_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (eq? _%test103135%_ eq?)
                                             (eq? _%test103135%_ ##eq?))
                                         (eq? _%hash103137%_ immediate-hash))
                                    (let ()
                                      (declare (not safe))
                                      (_%make103150%_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (eq? _%test103135%_ equal?)
                                                 (eq? _%test103135%_ ##equal?)
                                                 (eq? _%test103135%_ string=?)
                                                 (eq? _%test103135%_
                                                      ##string=?))
                                             (or (eq? _%hash103137%_
                                                      string-hash)
                                                 (eq? _%hash103137%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (declare (not safe))
                                          (_%make103150%_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (eq? _%test103135%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103137%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%make103150%_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp106382
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103135%_))))
                                                  (declare (not safe))
                                                  (not __tmp106382))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103135%_))
                                                (if (let ((__tmp106383
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103137%_))))
                                                      (declare (not safe))
                                                      (not __tmp106383))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103137%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%make103150%_
                                                       make-generic-hash-table
                                                       true
                                                       _%hash103137%_
                                                       _%test103135%_))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103280%_ . _%args103281%_)
        (apply make-hash-table__%
               _%@@keywords103280%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103280%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103280%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103280%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103280%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103280%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103280%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103280%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103280%_
                  'weak-values:
                  absent-value))
               _%args103281%_)))
    (define make-hash-table
      (lambda _%args103110103287%_
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
               _%args103110103287%_)))
    (define make-hash-table-eq
      (lambda _%args103099%_
        (apply make-hash-table 'test: eq? _%args103099%_)))
    (define make-hash-table-eqv
      (lambda _%args103097%_
        (apply make-hash-table 'test: eqv? _%args103097%_)))
    (define make-hash-table-symbolic
      (lambda _%args103095%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103095%_)))
    (define make-hash-table-string
      (lambda _%args103093%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103093%_)))
    (define make-hash-table-immediate
      (lambda _%args103091%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103091%_)))
    (define list->hash-table
      (lambda (_%lst103088%_ . _%args103089%_)
        (let ((__tmp106384
               (apply make-hash-table
                      'size:
                      (length _%lst103088%_)
                      _%args103089%_)))
          (declare (not safe))
          (list->hash-table! _%lst103088%_ __tmp106384))))
    (define list->hash-table-eq
      (lambda (_%lst103085%_ . _%args103086%_)
        (let ((__tmp106385
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103085%_)
                      _%args103086%_)))
          (declare (not safe))
          (list->hash-table! _%lst103085%_ __tmp106385))))
    (define list->hash-table-eqv
      (lambda (_%lst103082%_ . _%args103083%_)
        (let ((__tmp106386
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103082%_)
                      _%args103083%_)))
          (declare (not safe))
          (list->hash-table! _%lst103082%_ __tmp106386))))
    (define list->hash-table-symbolic
      (lambda (_%lst103079%_ . _%args103080%_)
        (let ((__tmp106387
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103079%_)
                      _%args103080%_)))
          (declare (not safe))
          (list->hash-table! _%lst103079%_ __tmp106387))))
    (define list->hash-table-string
      (lambda (_%lst103076%_ . _%args103077%_)
        (let ((__tmp106388
               (apply make-hash-table-string
                      'size:
                      (length _%lst103076%_)
                      _%args103077%_)))
          (declare (not safe))
          (list->hash-table! _%lst103076%_ __tmp106388))))
    (define list->hash-table-immediate
      (lambda (_%lst103073%_ . _%args103074%_)
        (let ((__tmp106389
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103073%_)
                      _%args103074%_)))
          (declare (not safe))
          (list->hash-table! _%lst103073%_ __tmp106389))))
    (define list->hash-table!
      (lambda (_%lst103040%_ _%h103041%_)
        (for-each
         (lambda (_%el103043%_)
           (let* ((_%el103044103051%_ _%el103043%_)
                  (_%E103046103055%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103044103051%_
                              '([k . v])))
                     '#!void))
                  (_%K103047103061%_
                   (lambda (_%v103058%_ _%k103059%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103041%_
                        _%k103059%_
                        _%v103058%_)))))
             (if (let () (declare (not safe)) (##pair? _%el103044103051%_))
                 (let ((_%hd103048103064%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103044103051%_)))
                       (_%tl103049103066%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103044103051%_))))
                   (let* ((_%k103069%_ _%hd103048103064%_)
                          (_%v103071%_ _%tl103049103066%_))
                     (declare (not safe))
                     (_%K103047103061%_ _%v103071%_ _%k103069%_)))
                 (let () (declare (not safe)) (_%E103046103055%_)))))
         _%lst103040%_)
        _%h103041%_))
    (define plist->hash-table
      (lambda (_%lst103037%_ . _%args103038%_)
        (let ((__tmp106390
               (apply make-hash-table
                      'size:
                      (length _%lst103037%_)
                      _%args103038%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103037%_ __tmp106390))))
    (define plist->hash-table-eq
      (lambda (_%lst103034%_ . _%args103035%_)
        (let ((__tmp106391
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103034%_)
                      _%args103035%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103034%_ __tmp106391))))
    (define plist->hash-table-eqv
      (lambda (_%lst103031%_ . _%args103032%_)
        (let ((__tmp106392
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103031%_)
                      _%args103032%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103031%_ __tmp106392))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103028%_ . _%args103029%_)
        (let ((__tmp106393
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103028%_)
                      _%args103029%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103028%_ __tmp106393))))
    (define plist->hash-table-string
      (lambda (_%lst103025%_ . _%args103026%_)
        (let ((__tmp106394
               (apply make-hash-table-string
                      'size:
                      (length _%lst103025%_)
                      _%args103026%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103025%_ __tmp106394))))
    (define plist->hash-table-immediate
      (lambda (_%lst103022%_ . _%args103023%_)
        (let ((__tmp106395
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103022%_)
                      _%args103023%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103022%_ __tmp106395))))
    (define plist->hash-table!
      (lambda (_%lst102962%_ _%h102963%_)
        (let _%loop102965%_ ((_%rest102967%_ _%lst102962%_))
          (let* ((_%rest102968102980%_ _%rest102967%_)
                 (_%else102971102988%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst102962%_)))))
            (let ((_%K102974103003%_
                   (lambda (_%rest102999%_ _%val103000%_ _%key103001%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h102963%_
                        _%key103001%_
                        _%val103000%_))
                     (let ()
                       (declare (not safe))
                       (_%loop102965%_ _%rest102999%_))))
                  (_%K102973102993%_ (lambda () _%h102963%_)))
              (let ((_%try-match102970102996%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest102968102980%_))
                           (let () (declare (not safe)) (_%K102973102993%_))
                           (let ()
                             (declare (not safe))
                             (_%else102971102988%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest102968102980%_))
                    (let ((_%tl102976103008%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest102968102980%_)))
                          (_%hd102975103006%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest102968102980%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl102976103008%_))
                          (let ((_%tl102978103015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl102976103008%_)))
                                (_%hd102977103013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl102976103008%_))))
                            (let ((_%key103011%_ _%hd102975103006%_)
                                  (_%val103018%_ _%hd102977103013%_)
                                  (_%rest103020%_ _%tl102978103015%_))
                              (let ()
                                (declare (not safe))
                                (_%K102974103003%_
                                 _%rest103020%_
                                 _%val103018%_
                                 _%key103011%_))))
                          (let ()
                            (declare (not safe))
                            (_%else102971102988%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match102970102996%_)))))))))
    (define hash-length
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
            (__hash-length _%h102952%_)))))
    (define __hash-length
      (lambda (_%h102932%_)
        (let ((_%h102935%_ _%h102932%_))
          (declare (not safe))
          (__HashTable-length _%h102935%_))))
    (define hash-ref__%
      (lambda (_%h102900%_ _%key102901%_ _%default102902%_)
        (let ()
          (let* ((_%h102908%_
                  (let ((_%$obj102905%_ _%h102900%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102905%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102905%_)))
                             '#t)
                        _%$obj102905%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102905%_)))))
                 (_%h102910%_ _%h102908%_))
            (declare (not safe))
            (__hash-ref__% _%h102910%_ _%key102901%_ _%default102902%_)))))
    (define hash-ref__0
      (lambda (_%h102923%_ _%key102924%_)
        (let ((_%default102926%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h102923%_ _%key102924%_ _%default102926%_))))
    (define hash-ref
      (lambda _g106397_
        (let ((_g106396_ (let () (declare (not safe)) (##length _g106397_))))
          (cond ((let () (declare (not safe)) (##fx= _g106396_ 2))
                 (apply (lambda (_%h102923%_ _%key102924%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h102923%_ _%key102924%_)))
                        _g106397_))
                ((let () (declare (not safe)) (##fx= _g106396_ 3))
                 (apply (lambda (_%h102928%_ _%key102929%_ _%default102930%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h102928%_
                             _%key102929%_
                             _%default102930%_)))
                        _g106397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106397_))))))
    (define __hash-ref__%
      (lambda (_%h102871%_ _%key102872%_ _%default102873%_)
        (let ()
          (let* ((_%h102876%_ _%h102871%_)
                 (_%result102885%_
                  (let ()
                    (declare (not safe))
                    (&HashTable-ref
                     _%h102876%_
                     _%key102872%_
                     _%default102873%_))))
            (if (eq? _%result102885%_ (macro-absent-obj))
                (let ()
                  (declare (not safe))
                  (raise-unbound-key-error
                   'hash-ref
                   '"unknown hash key"
                   'hash:
                   _%h102876%_
                   'key:
                   _%key102872%_))
                _%result102885%_)))))
    (define __hash-ref__0
      (lambda (_%h102890%_ _%key102891%_)
        (let ((_%default102893%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h102890%_ _%key102891%_ _%default102893%_))))
    (define __hash-ref
      (lambda _g106399_
        (let ((_g106398_ (let () (declare (not safe)) (##length _g106399_))))
          (cond ((let () (declare (not safe)) (##fx= _g106398_ 2))
                 (apply (lambda (_%h102890%_ _%key102891%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h102890%_ _%key102891%_)))
                        _g106399_))
                ((let () (declare (not safe)) (##fx= _g106398_ 3))
                 (apply (lambda (_%h102895%_ _%key102896%_ _%default102897%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h102895%_
                             _%key102896%_
                             _%default102897%_)))
                        _g106399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106399_))))))
    (define hash-get
      (lambda (_%h102851%_ _%key102852%_)
        (let ()
          (let* ((_%h102858%_
                  (let ((_%$obj102855%_ _%h102851%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102855%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102855%_)))
                             '#t)
                        _%$obj102855%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102855%_)))))
                 (_%h102860%_ _%h102858%_))
            (declare (not safe))
            (__hash-get _%h102860%_ _%key102852%_)))))
    (define __hash-get
      (lambda (_%h102838%_ _%key102839%_)
        (let ((_%h102842%_ _%h102838%_))
          (declare (not safe))
          (&HashTable-ref _%h102842%_ _%key102839%_ '#f))))
    (define hash-put!
      (lambda (_%h102818%_ _%key102819%_ _%value102820%_)
        (let ()
          (let* ((_%h102826%_
                  (let ((_%$obj102823%_ _%h102818%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102823%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102823%_)))
                             '#t)
                        _%$obj102823%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102823%_)))))
                 (_%h102828%_ _%h102826%_))
            (declare (not safe))
            (__hash-put! _%h102828%_ _%key102819%_ _%value102820%_)))))
    (define __hash-put!
      (lambda (_%h102804%_ _%key102805%_ _%value102806%_)
        (let ((_%h102809%_ _%h102804%_))
          (declare (not safe))
          (&HashTable-set! _%h102809%_ _%key102805%_ _%value102806%_))))
    (define hash-update!__%
      (lambda (_%h102769%_ _%key102770%_ _%update102771%_ _%default102772%_)
        (let ()
          (let* ((_%h102778%_
                  (let ((_%$obj102775%_ _%h102769%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102775%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102775%_)))
                             '#t)
                        _%$obj102775%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102775%_)))))
                 (_%h102780%_ _%h102778%_))
            (declare (not safe))
            (__hash-update!__%
             _%h102780%_
             _%key102770%_
             _%update102771%_
             _%default102772%_)))))
    (define hash-update!__0
      (lambda (_%h102793%_ _%key102794%_ _%update102795%_)
        (let ((_%default102797%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h102793%_
           _%key102794%_
           _%update102795%_
           _%default102797%_))))
    (define hash-update!
      (lambda _g106401_
        (let ((_g106400_ (let () (declare (not safe)) (##length _g106401_))))
          (cond ((let () (declare (not safe)) (##fx= _g106400_ 3))
                 (apply (lambda (_%h102793%_ _%key102794%_ _%update102795%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h102793%_
                             _%key102794%_
                             _%update102795%_)))
                        _g106401_))
                ((let () (declare (not safe)) (##fx= _g106400_ 4))
                 (apply (lambda (_%h102799%_
                                 _%key102800%_
                                 _%update102801%_
                                 _%default102802%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h102799%_
                             _%key102800%_
                             _%update102801%_
                             _%default102802%_)))
                        _g106401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106401_))))))
    (define __hash-update!__%
      (lambda (_%h102739%_ _%key102740%_ _%update102741%_ _%default102742%_)
        (let ((_%h102745%_ _%h102739%_))
          (declare (not safe))
          (HashTable-update!
           _%h102745%_
           _%key102740%_
           _%update102741%_
           _%default102742%_))))
    (define __hash-update!__0
      (lambda (_%h102757%_ _%key102758%_ _%update102759%_)
        (let ((_%default102761%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h102757%_
           _%key102758%_
           _%update102759%_
           _%default102761%_))))
    (define __hash-update!
      (lambda _g106403_
        (let ((_g106402_ (let () (declare (not safe)) (##length _g106403_))))
          (cond ((let () (declare (not safe)) (##fx= _g106402_ 3))
                 (apply (lambda (_%h102757%_ _%key102758%_ _%update102759%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h102757%_
                             _%key102758%_
                             _%update102759%_)))
                        _g106403_))
                ((let () (declare (not safe)) (##fx= _g106402_ 4))
                 (apply (lambda (_%h102763%_
                                 _%key102764%_
                                 _%update102765%_
                                 _%default102766%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h102763%_
                             _%key102764%_
                             _%update102765%_
                             _%default102766%_)))
                        _g106403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106403_))))))
    (define hash-remove!
      (lambda (_%h102719%_ _%key102720%_)
        (let ()
          (let* ((_%h102726%_
                  (let ((_%$obj102723%_ _%h102719%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102723%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102723%_)))
                             '#t)
                        _%$obj102723%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102723%_)))))
                 (_%h102728%_ _%h102726%_))
            (declare (not safe))
            (__hash-remove! _%h102728%_ _%key102720%_)))))
    (define __hash-remove!
      (lambda (_%h102706%_ _%key102707%_)
        (let ((_%h102710%_ _%h102706%_))
          (declare (not safe))
          (&HashTable-delete! _%h102710%_ _%key102707%_))))
    (define hash-key?
      (lambda (_%h102687%_ _%k102688%_)
        (let ()
          (let* ((_%h102694%_
                  (let ((_%$obj102691%_ _%h102687%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102691%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102691%_)))
                             '#t)
                        _%$obj102691%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102691%_)))))
                 (_%h102696%_ _%h102694%_))
            (declare (not safe))
            (__hash-key? _%h102696%_ _%k102688%_)))))
    (define __hash-key?
      (lambda (_%h102674%_ _%k102675%_)
        (let ()
          (let* ((_%h102678%_ _%h102674%_)
                 (__tmp106404
                  (eq? (let ()
                         (declare (not safe))
                         (&HashTable-ref _%h102678%_ _%k102675%_ absent-value))
                       absent-value)))
            (declare (not safe))
            (not __tmp106404)))))
    (define hash->list
      (lambda (_%h102656%_)
        (let ()
          (let* ((_%h102662%_
                  (let ((_%$obj102659%_ _%h102656%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102659%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102659%_)))
                             '#t)
                        _%$obj102659%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102659%_)))))
                 (_%h102664%_ _%h102662%_))
            (declare (not safe))
            (__hash->list _%h102664%_)))))
    (define __hash->list
      (lambda (_%h102639%_)
        (let ()
          (let* ((_%h102642%_ _%h102639%_) (_%lst102651%_ '()))
            (let ((__tmp106405
                   (lambda (_%k102653%_ _%v102654%_)
                     (set! _%lst102651%_
                           (cons (cons _%k102653%_ _%v102654%_)
                                 _%lst102651%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102642%_ __tmp106405))
            _%lst102651%_))))
    (define hash->plist
      (lambda (_%h102621%_)
        (let ()
          (let* ((_%h102627%_
                  (let ((_%$obj102624%_ _%h102621%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102624%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102624%_)))
                             '#t)
                        _%$obj102624%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102624%_)))))
                 (_%h102629%_ _%h102627%_))
            (declare (not safe))
            (__hash->plist _%h102629%_)))))
    (define __hash->plist
      (lambda (_%h102604%_)
        (let ()
          (let* ((_%h102607%_ _%h102604%_) (_%lst102616%_ '()))
            (let ((__tmp106406
                   (lambda (_%k102618%_ _%v102619%_)
                     (set! _%lst102616%_
                           (let ((__tmp106407
                                  (let ()
                                    (declare (not safe))
                                    (cons _%v102619%_ _%lst102616%_))))
                             (declare (not safe))
                             (cons _%k102618%_ __tmp106407))))))
              (declare (not safe))
              (&HashTable-for-each _%h102607%_ __tmp106406))
            _%lst102616%_))))
    (define hash-for-each
      (lambda (_%proc102575%_ _%h102576%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102575%_))
              (let ((_%proc102580%_ _%proc102575%_))
                (let* ((_%h102592%_
                        (let ((_%$obj102589%_ _%h102576%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj102589%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj102589%_)))
                                   '#t)
                              _%$obj102589%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj102589%_)))))
                       (_%h102594%_ _%h102592%_))
                  (declare (not safe))
                  (__hash-for-each _%proc102580%_ _%h102594%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102575%_)
                '#!void)))))
    (define __hash-for-each
      (lambda (_%proc102554%_ _%h102555%_)
        (let ()
          (let* ((_%proc102558%_ _%proc102554%_) (_%h102566%_ _%h102555%_))
            (declare (not safe))
            (&HashTable-for-each _%h102566%_ _%proc102558%_)))))
    (define hash-map
      (lambda (_%proc102525%_ _%h102526%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102525%_))
              (let ((_%proc102530%_ _%proc102525%_))
                (let* ((_%h102542%_
                        (let ((_%$obj102539%_ _%h102526%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj102539%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj102539%_)))
                                   '#t)
                              _%$obj102539%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj102539%_)))))
                       (_%h102544%_ _%h102542%_))
                  (declare (not safe))
                  (__hash-map _%proc102530%_ _%h102544%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102525%_)
                '#!void)))))
    (define __hash-map
      (lambda (_%proc102499%_ _%h102500%_)
        (let ((_%proc102503%_ _%proc102499%_))
          (let* ((_%h102511%_ _%h102500%_) (_%result102520%_ '()))
            (let ((__tmp106408
                   (lambda (_%k102522%_ _%v102523%_)
                     (set! _%result102520%_
                           (cons (let ()
                                   (declare (not safe))
                                   (_%proc102503%_ _%k102522%_ _%v102523%_))
                                 _%result102520%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102511%_ __tmp106408))
            _%result102520%_))))
    (define hash-fold
      (lambda (_%proc102469%_ _%iv102470%_ _%h102471%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102469%_))
              (let ((_%proc102475%_ _%proc102469%_))
                (let* ((_%h102487%_
                        (let ((_%$obj102484%_ _%h102471%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj102484%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj102484%_)))
                                   '#t)
                              _%$obj102484%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj102484%_)))))
                       (_%h102489%_ _%h102487%_))
                  (declare (not safe))
                  (__hash-fold _%proc102475%_ _%iv102470%_ _%h102489%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102469%_)
                '#!void)))))
    (define __hash-fold
      (lambda (_%proc102442%_ _%iv102443%_ _%h102444%_)
        (let ((_%proc102447%_ _%proc102442%_))
          (let* ((_%h102455%_ _%h102444%_) (_%result102464%_ _%iv102443%_))
            (let ((__tmp106409
                   (lambda (_%k102466%_ _%v102467%_)
                     (set! _%result102464%_
                           (let ()
                             (declare (not safe))
                             (_%proc102447%_
                              _%k102466%_
                              _%v102467%_
                              _%result102464%_))))))
              (declare (not safe))
              (&HashTable-for-each _%h102455%_ __tmp106409))
            _%result102464%_))))
    (define hash-find__%
      (lambda (_%proc102400%_ _%h102401%_ _%default-value102402%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102400%_))
              (let ((_%proc102406%_ _%proc102400%_))
                (let* ((_%h102418%_
                        (let ((_%$obj102415%_ _%h102401%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj102415%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj102415%_)))
                                   '#t)
                              _%$obj102415%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj102415%_)))))
                       (_%h102420%_ _%h102418%_))
                  (declare (not safe))
                  (__hash-find__%
                   _%proc102406%_
                   _%h102420%_
                   _%default-value102402%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102400%_)
                '#!void)))))
    (define hash-find__0
      (lambda (_%proc102433%_ _%h102434%_)
        (let ((_%default-value102436%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc102433%_ _%h102434%_ _%default-value102436%_))))
    (define hash-find
      (lambda _g106411_
        (let ((_g106410_ (let () (declare (not safe)) (##length _g106411_))))
          (cond ((let () (declare (not safe)) (##fx= _g106410_ 2))
                 (apply (lambda (_%proc102433%_ _%h102434%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc102433%_ _%h102434%_)))
                        _g106411_))
                ((let () (declare (not safe)) (##fx= _g106410_ 3))
                 (apply (lambda (_%proc102438%_
                                 _%h102439%_
                                 _%default-value102440%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc102438%_
                             _%h102439%_
                             _%default-value102440%_)))
                        _g106411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106411_))))))
    (define __hash-find__%
      (lambda (_%proc102357%_ _%h102358%_ _%default-value102359%_)
        (let ((_%proc102362%_ _%proc102357%_))
          (let* ((_%h102370%_ _%h102358%_)
                 (__tmp106412
                  (lambda (_%return102379%_)
                    (let ((__tmp106413
                           (lambda (_%k102381%_ _%v102382%_)
                             (let ((_%$e102384%_
                                    (let ()
                                      (declare (not safe))
                                      (_%proc102362%_
                                       _%k102381%_
                                       _%v102382%_))))
                               (if _%$e102384%_
                                   (_%return102379%_ _%$e102384%_)
                                   '#!void)))))
                      (declare (not safe))
                      (&HashTable-for-each _%h102370%_ __tmp106413))
                    _%default-value102359%_)))
            (declare (not safe))
            (##call-with-current-continuation __tmp106412)))))
    (define __hash-find__0
      (lambda (_%proc102390%_ _%h102391%_)
        (let ((_%default-value102393%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102390%_
           _%h102391%_
           _%default-value102393%_))))
    (define __hash-find
      (lambda _g106415_
        (let ((_g106414_ (let () (declare (not safe)) (##length _g106415_))))
          (cond ((let () (declare (not safe)) (##fx= _g106414_ 2))
                 (apply (lambda (_%proc102390%_ _%h102391%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102390%_ _%h102391%_)))
                        _g106415_))
                ((let () (declare (not safe)) (##fx= _g106414_ 3))
                 (apply (lambda (_%proc102395%_
                                 _%h102396%_
                                 _%default-value102397%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102395%_
                             _%h102396%_
                             _%default-value102397%_)))
                        _g106415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106415_))))))
    (define hash-keys
      (lambda (_%h102338%_)
        (let ()
          (let* ((_%h102344%_
                  (let ((_%$obj102341%_ _%h102338%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102341%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102341%_)))
                             '#t)
                        _%$obj102341%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102341%_)))))
                 (_%h102346%_ _%h102344%_))
            (declare (not safe))
            (__hash-keys _%h102346%_)))))
    (define __hash-keys
      (lambda (_%h102321%_)
        (let ()
          (let* ((_%h102324%_ _%h102321%_) (_%result102333%_ '()))
            (let ((__tmp106416
                   (lambda (_%k102335%_ _%v102336%_)
                     (set! _%result102333%_
                           (cons _%k102335%_ _%result102333%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102324%_ __tmp106416))
            _%result102333%_))))
    (define hash-values
      (lambda (_%h102303%_)
        (let ()
          (let* ((_%h102309%_
                  (let ((_%$obj102306%_ _%h102303%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102306%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102306%_)))
                             '#t)
                        _%$obj102306%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102306%_)))))
                 (_%h102311%_ _%h102309%_))
            (declare (not safe))
            (__hash-values _%h102311%_)))))
    (define __hash-values
      (lambda (_%h102286%_)
        (let ()
          (let* ((_%h102289%_ _%h102286%_) (_%result102298%_ '()))
            (let ((__tmp106417
                   (lambda (_%k102300%_ _%v102301%_)
                     (set! _%result102298%_
                           (cons _%v102301%_ _%result102298%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102289%_ __tmp106417))
            _%result102298%_))))
    (define hash-copy
      (lambda (_%h102268%_)
        (let ()
          (let* ((_%h102274%_
                  (let ((_%$obj102271%_ _%h102268%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102271%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102271%_)))
                             '#t)
                        _%$obj102271%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102271%_)))))
                 (_%h102276%_ _%h102274%_))
            (declare (not safe))
            (__hash-copy _%h102276%_)))))
    (define __hash-copy
      (lambda (_%h102256%_)
        (let ((_%h102259%_ _%h102256%_))
          (declare (not safe))
          (__HashTable-copy _%h102259%_))))
    (define hash-clear!
      (lambda (_%h102238%_)
        (let ()
          (let* ((_%h102244%_
                  (let ((_%$obj102241%_ _%h102238%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102241%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102241%_)))
                             '#t)
                        _%$obj102241%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102241%_)))))
                 (_%h102246%_ _%h102244%_))
            (declare (not safe))
            (__hash-clear! _%h102246%_)))))
    (define __hash-clear!
      (lambda (_%h102226%_)
        (let ((_%h102229%_ _%h102226%_))
          (declare (not safe))
          (&HashTable-clear! _%h102229%_))))
    (define hash-merge
      (lambda (_%h102207%_ . _%rest102208%_)
        (let ()
          (let* ((_%h102214%_
                  (let ((_%$obj102211%_ _%h102207%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102211%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102211%_)))
                             '#t)
                        _%$obj102211%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102211%_)))))
                 (_%h102216%_ _%h102214%_))
            (declare (not safe))
            (##apply __hash-merge _%h102216%_ _%rest102208%_)))))
    (define __hash-merge
      (lambda (_%h102192%_ . _%rest102193%_)
        (let ()
          (let* ((_%h102196%_ _%h102192%_)
                 (_%copy102205%_
                  (let ()
                    (declare (not safe))
                    (__HashTable-copy _%h102196%_))))
            (apply hash-merge! _%copy102205%_ _%rest102193%_)
            _%copy102205%_))))
    (define hash-merge!
      (lambda (_%h102173%_ . _%rest102174%_)
        (let ()
          (let* ((_%h102180%_
                  (let ((_%$obj102177%_ _%h102173%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102177%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102177%_)))
                             '#t)
                        _%$obj102177%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102177%_)))))
                 (_%h102182%_ _%h102180%_))
            (declare (not safe))
            (##apply __hash-merge! _%h102182%_ _%rest102174%_)))))
    (define __hash-merge!
      (lambda (_%h102136%_ . _%rest102137%_)
        (let ((_%h102140%_ _%h102136%_))
          (for-each
           (lambda (_%hr102149%_)
             (let ()
               (let* ((_%hr102155%_
                       (let ((_%$obj102152%_ _%hr102149%_))
                         (if (and (let ()
                                    (declare (not safe))
                                    (##structure? _%$obj102152%_))
                                  (eq? HashTable::t
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _%$obj102152%_)))
                                  '#t)
                             _%$obj102152%_
                             (let ()
                               (declare (not safe))
                               (cast HashTable::interface _%$obj102152%_)))))
                      (_%hr102157%_ _%hr102155%_)
                      (__tmp106418
                       (lambda (_%k102170%_ _%v102171%_)
                         (if (let ()
                               (declare (not safe))
                               (__hash-key? _%h102140%_ _%k102170%_))
                             '#!void
                             (let ()
                               (declare (not safe))
                               (&HashTable-set!
                                _%h102140%_
                                _%k102170%_
                                _%v102171%_))))))
                 (declare (not safe))
                 (&HashTable-for-each _%hr102157%_ __tmp106418))))
           _%rest102137%_)
          _%h102140%_)))))
