(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712124234)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106326 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106326
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106306%_
        (apply make-instance UnboundKeyError::t _%$args106306%_)))
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
      (lambda (_%where106180%_ _%message106181%_ . _%irritants106182%_)
        (let ((__tmp106327
               (let ((__obj106320
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106320
                  _%message106181%_
                  'where:
                  _%where106180%_
                  'irritants:
                  _%irritants106182%_)
                 __obj106320)))
          (declare (not safe))
          (raise __tmp106327))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106328 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106328
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
      (lambda (_%obj106178%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106178%_))))
    (define try-HashTable
      (lambda (_%obj106176%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106176%_))))
    (define HashTable?
      (lambda (_%obj106174%_)
        (let ((__tmp106329
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106174%_ __tmp106329))))
    (define is-HashTable?
      (lambda (_%obj106172%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106172%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106156%_)
        (let* ((_%self106161%_
                (let ((_%$obj106158%_ _%self106156%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106158%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106158%_)))
                           '#t)
                      _%$obj106158%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106158%_)))))
               (_%self106163%_ _%self106161%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-clear! _%self106163%_))))))
    (define &HashTable-clear!
      (lambda (_%self106141%_)
        (let ((_%self106143%_ _%self106141%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106153%_
                     (##unchecked-structure-ref _%self106143%_ '1 '#f 'clear!))
                    (_%f106154%_
                     (##unchecked-structure-ref
                      _%self106143%_
                      '2
                      '#f
                      'clear!)))
                (_%f106154%_ _%obj106153%_)))))))
    (define HashTable-copy
      (lambda (_%self106125%_)
        (let* ((_%self106130%_
                (let ((_%$obj106127%_ _%self106125%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106127%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106127%_)))
                           '#t)
                      _%$obj106127%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106127%_)))))
               (_%self106132%_ _%self106130%_))
          (let ()
            (let () (declare (not safe)) (__HashTable-copy _%self106132%_))))))
    (define __HashTable-copy
      (lambda (_%self106112%_)
        (let ((_%self106114%_ _%self106112%_))
          (let ()
            (let ((_%$obj106122%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-copy _%self106114%_))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj106122%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj106122%_)))
                       '#t)
                  _%$obj106122%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj106122%_))))))))
    (define &HashTable-copy
      (lambda (_%self106097%_)
        (let ((_%self106099%_ _%self106097%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106109%_
                     (##unchecked-structure-ref _%self106099%_ '1 '#f 'copy))
                    (_%f106110%_
                     (##unchecked-structure-ref _%self106099%_ '3 '#f 'copy)))
                (_%f106110%_ _%obj106109%_)))))))
    (define HashTable-delete!
      (lambda (_%self106080%_ _%key106081%_)
        (let* ((_%self106086%_
                (let ((_%$obj106083%_ _%self106080%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106083%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106083%_)))
                           '#t)
                      _%$obj106083%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106083%_)))))
               (_%self106088%_ _%self106086%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%self106088%_ _%key106081%_))))))
    (define &HashTable-delete!
      (lambda (_%self106064%_ _%key106065%_)
        (let ((_%self106067%_ _%self106064%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106077%_
                     (##unchecked-structure-ref
                      _%self106067%_
                      '1
                      '#f
                      'delete!))
                    (_%f106078%_
                     (##unchecked-structure-ref
                      _%self106067%_
                      '4
                      '#f
                      'delete!)))
                (_%f106078%_ _%obj106077%_ _%key106065%_)))))))
    (define HashTable-for-each
      (lambda (_%self106037%_ _%proc106038%_)
        (let* ((_%self106043%_
                (let ((_%$obj106040%_ _%self106037%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106040%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106040%_)))
                           '#t)
                      _%$obj106040%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106040%_)))))
               (_%self106045%_ _%self106043%_))
          (if (let () (declare (not safe)) (procedure? _%proc106038%_))
              (let ()
                (let ((_%proc106054%_ _%proc106038%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (&HashTable-for-each _%self106045%_ _%proc106054%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
               'contract:
               'procedure?
               'value:
               _%proc106038%_)))))
    (define &HashTable-for-each
      (lambda (_%self106013%_ _%proc106014%_)
        (let ((_%self106016%_ _%self106013%_))
          (let ((_%proc106023%_ _%proc106014%_))
            (let ()
              (let ()
                (declare (not safe))
                (let ((_%obj106034%_
                       (##unchecked-structure-ref
                        _%self106016%_
                        '1
                        '#f
                        'for-each))
                      (_%f106035%_
                       (##unchecked-structure-ref
                        _%self106016%_
                        '5
                        '#f
                        'for-each)))
                  (_%f106035%_ _%obj106034%_ _%proc106023%_))))))))
    (define HashTable-length
      (lambda (_%self105997%_)
        (let* ((_%self106002%_
                (let ((_%$obj105999%_ _%self105997%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105999%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105999%_)))
                           '#t)
                      _%$obj105999%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105999%_)))))
               (_%self106004%_ _%self106002%_))
          (let ()
            (let ()
              (declare (not safe))
              (__HashTable-length _%self106004%_))))))
    (define __HashTable-length
      (lambda (_%self105984%_)
        (let ((_%self105986%_ _%self105984%_))
          (let ()
            (let ((_%val105994%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-length _%self105986%_))))
              (if (let () (declare (not safe)) (fixnum? _%val105994%_))
                  _%val105994%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" fixnum::t _%val105994%_))))))))
    (define &HashTable-length
      (lambda (_%self105969%_)
        (let ((_%self105971%_ _%self105969%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105981%_
                     (##unchecked-structure-ref _%self105971%_ '1 '#f 'length))
                    (_%f105982%_
                     (##unchecked-structure-ref
                      _%self105971%_
                      '6
                      '#f
                      'length)))
                (_%f105982%_ _%obj105981%_)))))))
    (define HashTable-ref
      (lambda (_%self105951%_ _%key105952%_ _%default105953%_)
        (let* ((_%self105958%_
                (let ((_%$obj105955%_ _%self105951%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105955%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105955%_)))
                           '#t)
                      _%$obj105955%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105955%_)))))
               (_%self105960%_ _%self105958%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-ref
               _%self105960%_
               _%key105952%_
               _%default105953%_))))))
    (define &HashTable-ref
      (lambda (_%self105934%_ _%key105935%_ _%default105936%_)
        (let ((_%self105938%_ _%self105934%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105948%_
                     (##unchecked-structure-ref _%self105938%_ '1 '#f 'ref))
                    (_%f105949%_
                     (##unchecked-structure-ref _%self105938%_ '7 '#f 'ref)))
                (_%f105949%_
                 _%obj105948%_
                 _%key105935%_
                 _%default105936%_)))))))
    (define HashTable-set!
      (lambda (_%self105916%_ _%key105917%_ _%value105918%_)
        (let* ((_%self105923%_
                (let ((_%$obj105920%_ _%self105916%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105920%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105920%_)))
                           '#t)
                      _%$obj105920%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105920%_)))))
               (_%self105925%_ _%self105923%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-set!
               _%self105925%_
               _%key105917%_
               _%value105918%_))))))
    (define &HashTable-set!
      (lambda (_%self105899%_ _%key105900%_ _%value105901%_)
        (let ((_%self105903%_ _%self105899%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105913%_
                     (##unchecked-structure-ref _%self105903%_ '1 '#f 'set!))
                    (_%f105914%_
                     (##unchecked-structure-ref _%self105903%_ '8 '#f 'set!)))
                (_%f105914%_ _%obj105913%_ _%key105900%_ _%value105901%_)))))))
    (define HashTable-update!
      (lambda (_%self105870%_ _%key105871%_ _%proc105872%_ _%default105873%_)
        (let* ((_%self105878%_
                (let ((_%$obj105875%_ _%self105870%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105875%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105875%_)))
                           '#t)
                      _%$obj105875%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105875%_)))))
               (_%self105880%_ _%self105878%_))
          (if (let () (declare (not safe)) (procedure? _%proc105872%_))
              (let ()
                (let ((_%proc105889%_ _%proc105872%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (&HashTable-update!
                       _%self105880%_
                       _%key105871%_
                       _%proc105889%_
                       _%default105873%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
               'contract:
               'procedure?
               'value:
               _%proc105872%_)))))
    (define &HashTable-update!
      (lambda (_%self105842%_ _%key105843%_ _%proc105844%_ _%default105845%_)
        (let ((_%self105847%_ _%self105842%_))
          (let ((_%proc105854%_ _%proc105844%_))
            (let ()
              (let ()
                (declare (not safe))
                (let ((_%obj105865%_
                       (##unchecked-structure-ref
                        _%self105847%_
                        '1
                        '#f
                        'update!))
                      (_%f105867%_
                       (##unchecked-structure-ref
                        _%self105847%_
                        '9
                        '#f
                        'update!)))
                  (_%f105867%_
                   _%obj105865%_
                   _%key105843%_
                   _%proc105854%_
                   _%default105845%_))))))))
    (define Locker::t
      (let ((__tmp106330 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106330
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
      (lambda (_%obj105840%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj105840%_))))
    (define try-Locker
      (lambda (_%obj105838%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj105838%_))))
    (define Locker?
      (lambda (_%obj105836%_)
        (let ((__tmp106331
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj105836%_ __tmp106331))))
    (define is-Locker?
      (lambda (_%obj105834%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj105834%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self105818%_)
        (let* ((_%self105823%_
                (let ((_%$obj105820%_ _%self105818%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105820%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105820%_)))
                           '#t)
                      _%$obj105820%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105820%_)))))
               (_%self105825%_ _%self105823%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-read-lock! _%self105825%_))))))
    (define &Locker-read-lock!
      (lambda (_%self105803%_)
        (let ((_%self105805%_ _%self105803%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105815%_
                     (##unchecked-structure-ref
                      _%self105805%_
                      '1
                      '#f
                      'read-lock!))
                    (_%f105816%_
                     (##unchecked-structure-ref
                      _%self105805%_
                      '2
                      '#f
                      'read-lock!)))
                (_%f105816%_ _%obj105815%_)))))))
    (define Locker-read-unlock!
      (lambda (_%self105787%_)
        (let* ((_%self105792%_
                (let ((_%$obj105789%_ _%self105787%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105789%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105789%_)))
                           '#t)
                      _%$obj105789%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105789%_)))))
               (_%self105794%_ _%self105792%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-read-unlock! _%self105794%_))))))
    (define &Locker-read-unlock!
      (lambda (_%self105772%_)
        (let ((_%self105774%_ _%self105772%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105784%_
                     (##unchecked-structure-ref
                      _%self105774%_
                      '1
                      '#f
                      'read-unlock!))
                    (_%f105785%_
                     (##unchecked-structure-ref
                      _%self105774%_
                      '3
                      '#f
                      'read-unlock!)))
                (_%f105785%_ _%obj105784%_)))))))
    (define Locker-write-lock!
      (lambda (_%self105756%_)
        (let* ((_%self105761%_
                (let ((_%$obj105758%_ _%self105756%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105758%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105758%_)))
                           '#t)
                      _%$obj105758%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105758%_)))))
               (_%self105763%_ _%self105761%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-write-lock! _%self105763%_))))))
    (define &Locker-write-lock!
      (lambda (_%self105741%_)
        (let ((_%self105743%_ _%self105741%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105753%_
                     (##unchecked-structure-ref
                      _%self105743%_
                      '1
                      '#f
                      'write-lock!))
                    (_%f105754%_
                     (##unchecked-structure-ref
                      _%self105743%_
                      '4
                      '#f
                      'write-lock!)))
                (_%f105754%_ _%obj105753%_)))))))
    (define Locker-write-unlock!
      (lambda (_%self105725%_)
        (let* ((_%self105730%_
                (let ((_%$obj105727%_ _%self105725%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105727%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105727%_)))
                           '#t)
                      _%$obj105727%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105727%_)))))
               (_%self105732%_ _%self105730%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-write-unlock! _%self105732%_))))))
    (define &Locker-write-unlock!
      (lambda (_%self105708%_)
        (let ((_%self105710%_ _%self105708%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105720%_
                     (##unchecked-structure-ref
                      _%self105710%_
                      '1
                      '#f
                      'write-unlock!))
                    (_%f105722%_
                     (##unchecked-structure-ref
                      _%self105710%_
                      '5
                      '#f
                      'write-unlock!)))
                (_%f105722%_ _%obj105720%_)))))))
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
      (lambda (_%table105701%_
               _%key105702%_
               _%update105703%_
               _%default105704%_)
        (let ((_%result105706%_
               (table-ref _%table105701%_ _%key105702%_ _%default105704%_)))
          (table-set!
           _%table105701%_
           _%key105702%_
           (_%update105703%_ _%default105704%_)))))
    (define gambit-table-for-each
      (lambda (_%table105698%_ _%proc105699%_)
        (table-for-each _%proc105699%_ _%table105698%_)))
    (define gambit-table-clear!
      (lambda (_%table105696%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table105696%_ '0 '5 '#f '#f))))
    (let ((__tmp106332 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106332 'ref table-ref))
    (let ((__tmp106333 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106333 'set! table-set!))
    (let ((__tmp106334 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106334 'update! gambit-table-update!))
    (let ((__tmp106335 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106335 'delete! table-set!))
    (let ((__tmp106336 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106336 'for-each gambit-table-for-each))
    (let ((__tmp106337 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106337 'length table-length))
    (let ((__tmp106338 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106338 'copy table-copy))
    (let ((__tmp106339 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106339 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots105678%_ '(table count free hash test seed))
             (_%slot-vector105680%_ (list->vector (cons '#f _%slots105678%_)))
             (_%slot-table105687%_
              (let ((_%slot-table105682%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106342
                       (lambda (_%slot105684%_ _%field105685%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105682%_
                            _%slot105684%_
                            _%field105685%_))
                         (let ((__tmp106343
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105684%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105682%_
                            __tmp106343
                            _%field105685%_))))
                      (__tmp106340
                       (let ((__tmp106341
                              (let ()
                                (declare (not safe))
                                (##length _%slots105678%_))))
                         (declare (not safe))
                         (##iota __tmp106341 '1))))
                  (declare (not safe))
                  (##for-each __tmp106342 _%slots105678%_ __tmp106340))
                _%slot-table105682%_))
             (_%flags105689%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105691%_ '#())
             (_%properties105693%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105678%_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp106344 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _%flags105689%_
           __table::t
           _%fields105691%_
           __tmp106344
           _%slot-vector105680%_
           _%slot-table105687%_
           _%properties105693%_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_%slots105660%_ '(gcht immediate))
             (_%slot-vector105662%_ (list->vector (cons '#f _%slots105660%_)))
             (_%slot-table105669%_
              (let ((_%slot-table105664%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106347
                       (lambda (_%slot105666%_ _%field105667%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105664%_
                            _%slot105666%_
                            _%field105667%_))
                         (let ((__tmp106348
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105666%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105664%_
                            __tmp106348
                            _%field105667%_))))
                      (__tmp106345
                       (let ((__tmp106346
                              (let ()
                                (declare (not safe))
                                (##length _%slots105660%_))))
                         (declare (not safe))
                         (##iota __tmp106346 '1))))
                  (declare (not safe))
                  (##for-each __tmp106347 _%slots105660%_ __tmp106345))
                _%slot-table105664%_))
             (_%flags105671%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105673%_ '#())
             (_%properties105675%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105660%_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp106349 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _%flags105671%_
           __gc-table::t
           _%fields105673%_
           __tmp106349
           _%slot-vector105662%_
           _%slot-table105669%_
           _%properties105675%_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp106351 (list))
            (__tmp106350
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106351
         '(table lock)
         __tmp106350
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args105657%_
        (apply make-instance locked-hash-table::t _%$args105657%_)))
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
      (let ((__tmp106353 (list))
            (__tmp106352
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106353
         '(table key-check)
         __tmp106352
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args105654%_
        (apply make-instance checked-hash-table::t _%$args105654%_)))
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
      (let ((__tmp106355 (list hash-table::t))
            (__tmp106354 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106355
         '()
         __tmp106354
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args105651%_
        (apply make-instance eq-hash-table::t _%$args105651%_)))
    (define eqv-hash-table::t
      (let ((__tmp106357 (list hash-table::t))
            (__tmp106356 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106357
         '()
         __tmp106356
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args105648%_
        (apply make-instance eqv-hash-table::t _%$args105648%_)))
    (define symbol-hash-table::t
      (let ((__tmp106359 (list hash-table::t))
            (__tmp106358 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106359
         '()
         __tmp106358
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args105645%_
        (apply make-instance symbol-hash-table::t _%$args105645%_)))
    (define string-hash-table::t
      (let ((__tmp106361 (list hash-table::t))
            (__tmp106360 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106361
         '()
         __tmp106360
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args105642%_
        (apply make-instance string-hash-table::t _%$args105642%_)))
    (define immediate-hash-table::t
      (let ((__tmp106363 (list hash-table::t))
            (__tmp106362 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106363
         '()
         __tmp106362
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args105639%_
        (apply make-instance immediate-hash-table::t _%$args105639%_)))
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
      (lambda (_%obj105637%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj105637%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj105635%_)
        (let () (declare (not safe)) (is-HashTable? _%obj105635%_))))
    (define _%locked-hash-table::ref101689%_
      (lambda (_%self105611%_ _%key105613%_ _%default105614%_)
        (let ()
          (let ((_%self105617%_ _%self105611%_))
            (let ()
              (let ((_%h105627%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105617%_ '1 '#f '#f)))
                    (_%l105629%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105617%_ '2 '#f '#f))))
                (let ((__tmp106366
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l105629%_))))
                      (__tmp106365
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-ref
                            _%h105627%_
                            _%key105613%_
                            _%default105614%_))))
                      (__tmp106364
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l105629%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106366 __tmp106365 __tmp106364))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref101689%_
       '#f))
    (define _%locked-hash-table::set!101691%_
      (lambda (_%self105464%_ _%key105466%_ _%value105467%_)
        (let ()
          (let ((_%self105470%_ _%self105464%_))
            (let ()
              (let ((_%h105480%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105470%_ '1 '#f '#f)))
                    (_%l105482%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105470%_ '2 '#f '#f))))
                (let ((__tmp106369
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105482%_))))
                      (__tmp106368
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-set!
                            _%h105480%_
                            _%key105466%_
                            _%value105467%_))))
                      (__tmp106367
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105482%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106369 __tmp106368 __tmp106367))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!101691%_
       '#f))
    (define _%locked-hash-table::update!101693%_
      (lambda (_%self105316%_ _%key105318%_ _%update105319%_ _%default105320%_)
        (let ()
          (let ((_%self105323%_ _%self105316%_))
            (let ()
              (let ((_%h105333%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105323%_ '1 '#f '#f)))
                    (_%l105335%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105323%_ '2 '#f '#f))))
                (let ((__tmp106372
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105335%_))))
                      (__tmp106371
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-update!
                            _%h105333%_
                            _%key105318%_
                            _%update105319%_
                            _%default105320%_))))
                      (__tmp106370
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105335%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106372 __tmp106371 __tmp106370))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!101693%_
       '#f))
    (define _%locked-hash-table::delete!101695%_
      (lambda (_%self105170%_ _%key105172%_)
        (let ()
          (let ((_%self105175%_ _%self105170%_))
            (let ()
              (let ((_%h105185%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105175%_ '1 '#f '#f)))
                    (_%l105187%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105175%_ '2 '#f '#f))))
                (let ((__tmp106375
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105187%_))))
                      (__tmp106374
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-delete! _%h105185%_ _%key105172%_))))
                      (__tmp106373
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105187%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106375 __tmp106374 __tmp106373))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!101695%_
       '#f))
    (define _%locked-hash-table::for-each101697%_
      (lambda (_%self105024%_ _%proc105026%_)
        (let ()
          (let ((_%self105029%_ _%self105024%_))
            (let ()
              (let ((_%h105039%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105029%_ '1 '#f '#f)))
                    (_%l105041%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105029%_ '2 '#f '#f))))
                (let ((__tmp106378
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l105041%_))))
                      (__tmp106377
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-for-each _%h105039%_ _%proc105026%_))))
                      (__tmp106376
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l105041%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106378 __tmp106377 __tmp106376))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each101697%_
       '#f))
    (define _%locked-hash-table::length101699%_
      (lambda (_%self104879%_)
        (let ()
          (let ((_%self104883%_ _%self104879%_))
            (let ()
              (let ((_%h104893%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104883%_ '1 '#f '#f)))
                    (_%l104895%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104883%_ '2 '#f '#f))))
                (let ((__tmp106381
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104895%_))))
                      (__tmp106380
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-length _%h104893%_))))
                      (__tmp106379
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104895%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106381 __tmp106380 __tmp106379))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length101699%_
       '#f))
    (define _%locked-hash-table::copy101701%_
      (lambda (_%self104734%_)
        (let ()
          (let ((_%self104738%_ _%self104734%_))
            (let ()
              (let ((_%h104748%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104738%_ '1 '#f '#f)))
                    (_%l104750%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104738%_ '2 '#f '#f))))
                (let ((__tmp106384
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104750%_))))
                      (__tmp106383
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-copy _%h104748%_))))
                      (__tmp106382
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104750%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106384 __tmp106383 __tmp106382))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy101701%_
       '#f))
    (define _%locked-hash-table::clear!101703%_
      (lambda (_%self104589%_)
        (let ()
          (let ((_%self104593%_ _%self104589%_))
            (let ()
              (let ((_%h104603%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104593%_ '1 '#f '#f)))
                    (_%l104605%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104593%_ '2 '#f '#f))))
                (let ((__tmp106387
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l104605%_))))
                      (__tmp106386
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-clear! _%h104603%_))))
                      (__tmp106385
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l104605%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106387 __tmp106386 __tmp106385))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!101703%_
       '#f))
    (let ((__tmp106388 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106388 'read-lock! mutex-lock!))
    (let ((__tmp106389 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106389 'read-unlock! mutex-unlock!))
    (let ((__tmp106390 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106390 'write-lock! mutex-lock!))
    (let ((__tmp106391 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106391 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref101981%_
      (lambda (_%self104442%_ _%key104443%_ _%default104444%_)
        (let ()
          (let ((_%self104447%_ _%self104442%_))
            (let ()
              (let ((_%h104457%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104447%_ '1 '#f '#f)))
                    (_%key?104459%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104447%_ '2 '#f '#f))))
                ((lambda (_%g104461104463%_)
                   (if (_%g104461104463%_ _%key104443%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104443%_))))
                 _%key?104459%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-ref
                   _%h104457%_
                   _%key104443%_
                   _%default104444%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref101981%_
       '#f))
    (define _%checked-hash-table::set!101983%_
      (lambda (_%self104295%_ _%key104296%_ _%value104297%_)
        (let ()
          (let ((_%self104300%_ _%self104295%_))
            (let ()
              (let ((_%h104310%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104300%_ '1 '#f '#f)))
                    (_%key?104312%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104300%_ '2 '#f '#f))))
                ((lambda (_%g104314104316%_)
                   (if (_%g104314104316%_ _%key104296%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104296%_))))
                 _%key?104312%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-set!
                   _%h104310%_
                   _%key104296%_
                   _%value104297%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!101983%_
       '#f))
    (define _%checked-hash-table::update!101985%_
      (lambda (_%self104149%_ _%key104150%_ _%update104151%_ _%default104152%_)
        (let ()
          (let ((_%self104155%_ _%self104149%_))
            (let ()
              (let ((_%h104165%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104155%_ '1 '#f '#f)))
                    (_%key?104167%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104155%_ '2 '#f '#f))))
                ((lambda (_%key?104170%_)
                   (if (_%key?104170%_ _%key104150%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104150%_)))
                   (if (let ()
                         (declare (not safe))
                         (procedure? _%update104151%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%update104151%_))))
                 _%key?104167%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-update!
                   _%h104165%_
                   _%key104150%_
                   _%update104151%_
                   _%default104152%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!101985%_
       '#f))
    (define _%checked-hash-table::delete!101987%_
      (lambda (_%self104003%_ _%key104004%_)
        (let ()
          (let ((_%self104007%_ _%self104003%_))
            (let ()
              (let ((_%h104017%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104007%_ '1 '#f '#f)))
                    (_%key?104019%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104007%_ '2 '#f '#f))))
                ((lambda (_%g104021104023%_)
                   (if (_%g104021104023%_ _%key104004%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104004%_))))
                 _%key?104019%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-delete! _%h104017%_ _%key104004%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!101987%_
       '#f))
    (define _%checked-hash-table::for-each101989%_
      (lambda (_%self103859%_ _%proc103860%_)
        (let ()
          (let ((_%self103863%_ _%self103859%_))
            (let ()
              (let ((_%h103873%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103863%_ '1 '#f '#f)))
                    (_%key?103875%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103863%_ '2 '#f '#f))))
                ((lambda (_%_103878%_)
                   (if (let ()
                         (declare (not safe))
                         (procedure? _%proc103860%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%proc103860%_))))
                 _%key?103875%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-for-each _%h103873%_ _%proc103860%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each101989%_
       '#f))
    (define _%checked-hash-table::length101991%_
      (lambda (_%self103718%_)
        (let ()
          (let ((_%self103721%_ _%self103718%_))
            (let ()
              (let ((_%h103731%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103721%_ '1 '#f '#f)))
                    (_%key?103733%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103721%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%h103731%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length101991%_
       '#f))
    (define _%checked-hash-table::copy101993%_
      (lambda (_%self103577%_)
        (let ()
          (let ((_%self103580%_ _%self103577%_))
            (let ()
              (let ((_%h103590%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103580%_ '1 '#f '#f)))
                    (_%key?103592%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103580%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%h103590%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy101993%_
       '#f))
    (define _%checked-hash-table::clear!101995%_
      (lambda (_%self103436%_)
        (let ()
          (let ((_%self103439%_ _%self103436%_))
            (let ()
              (let ((_%h103449%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103439%_ '1 '#f '#f)))
                    (_%key?103451%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103439%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-clear! _%h103449%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!101995%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103306%_
               _%count103307%_
               _%free103308%_
               _%hash103309%_
               _%test103310%_
               _%seed103311%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103306%_
           _%count103307%_
           _%free103308%_
           _%hash103309%_
           _%test103310%_
           _%seed103311%_))))
    (define make-hash-table__%
      (lambda (_%_103128%_
               _%size-hint103118103130%_
               _%seed103119103132%_
               _%test103120103134%_
               _%hash103121103136%_
               _%lock103122103138%_
               _%check103123103140%_
               _%weak-keys103124103142%_
               _%weak-values103125103144%_)
        (let* ((_%size-hint103147%_
                (if (eq? _%size-hint103118103130%_ absent-value)
                    '#f
                    _%size-hint103118103130%_))
               (_%seed103149%_
                (if (eq? _%seed103119103132%_ absent-value)
                    '#f
                    _%seed103119103132%_))
               (_%test103151%_
                (if (eq? _%test103120103134%_ absent-value)
                    equal?
                    _%test103120103134%_))
               (_%hash103153%_
                (if (eq? _%hash103121103136%_ absent-value)
                    '#f
                    _%hash103121103136%_))
               (_%lock103155%_
                (if (eq? _%lock103122103138%_ absent-value)
                    '#f
                    _%lock103122103138%_))
               (_%check103157%_
                (if (eq? _%check103123103140%_ absent-value)
                    '#f
                    _%check103123103140%_))
               (_%weak-keys103159%_
                (if (eq? _%weak-keys103124103142%_ absent-value)
                    '#f
                    _%weak-keys103124103142%_))
               (_%weak-values103161%_
                (if (eq? _%weak-values103125103144%_ absent-value)
                    '#f
                    _%weak-values103125103144%_)))
          (letrec ((_%table-seed103163%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103149%_))
                          _%seed103149%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103164%_
                    (lambda (_%ht103284%_)
                      (if _%lock103155%_
                          (let ((_%$obj103289%_
                                 (let ((__tmp106392
                                        (let ((_%$obj103286%_ _%lock103155%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103286%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103286%_)))
                                                   '#t)
                                              _%$obj103286%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103286%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103284%_
                                    __tmp106392))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103289%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103289%_)))
                                     '#t)
                                _%$obj103289%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103289%_))))
                          _%ht103284%_)))
                   (_%wrap-checked103165%_
                    (lambda (_%ht103278%_ _%implicit103279%_)
                      (if _%check103157%_
                          (let ((_%$obj103281%_
                                 (let ((__tmp106393
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103157%_))
                                            _%check103157%_
                                            _%implicit103279%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103278%_
                                    __tmp106393))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103281%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103281%_)))
                                     '#t)
                                _%$obj103281%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103281%_))))
                          _%ht103278%_)))
                   (_%make103166%_
                    (lambda (_%kons103263%_
                             _%key?103264%_
                             _%hash103265%_
                             _%test103266%_)
                      (let* ((_%size103268%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103147%_)))
                             (_%table103270%_
                              (let ((__tmp106394 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103268%_ __tmp106394)))
                             (_%ht103275%_
                              (let ((_%$obj103272%_
                                     (_%kons103263%_
                                      _%table103270%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103268%_ '2))
                                      _%hash103265%_
                                      _%test103266%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103163%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103272%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103272%_)))
                                         '#t)
                                    _%$obj103272%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103272%_))))))
                        (let ((__tmp106395
                               (let ()
                                 (declare (not safe))
                                 (_%wrap-lock103164%_ _%ht103275%_))))
                          (declare (not safe))
                          (_%wrap-checked103165%_
                           __tmp106395
                           _%key?103264%_)))))
                   (_%make-gc-hash-table103167%_
                    (lambda ()
                      (let* ((_%ht103261%_
                              (let ((_%$obj103258%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103147%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103258%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103258%_)))
                                         '#t)
                                    _%$obj103258%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103258%_)))))
                             (__tmp106396
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103164%_ _%ht103261%_))))
                        (declare (not safe))
                        (_%wrap-checked103165%_ __tmp106396 true))))
                   (_%make-gambit-table103168%_
                    (lambda ()
                      (let* ((_%size103236%_
                              (let ((_%$e103233%_ _%size-hint103147%_))
                                (if _%$e103233%_
                                    _%$e103233%_
                                    (macro-absent-obj))))
                             (_%test103241%_
                              (let ((_%$e103238%_ _%test103151%_))
                                (if _%$e103238%_ _%$e103238%_ equal?)))
                             (_%hash103249%_
                              (let ((_%$e103243%_ _%hash103153%_))
                                (if _%$e103243%_
                                    _%$e103243%_
                                    (if (eq? _%test103241%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103241%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103254%_
                              (let ((_%$obj103251%_
                                     (make-table
                                      'size:
                                      _%size103236%_
                                      'test:
                                      _%test103241%_
                                      'hash:
                                      _%hash103249%_
                                      'weak-keys:
                                      _%weak-keys103159%_
                                      'weak-values:
                                      _%weak-values103161%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103251%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103251%_)))
                                         '#t)
                                    _%$obj103251%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103251%_))))))
                        (let ((__tmp106397
                               (let ()
                                 (declare (not safe))
                                 (_%wrap-lock103164%_ _%ht103254%_))))
                          (declare (not safe))
                          (_%wrap-checked103165%_ __tmp106397 true))))))
            (if (or _%weak-keys103159%_ _%weak-values103161%_)
                (let ()
                  (let () (declare (not safe)) (_%make-gambit-table103168%_)))
                (if (and (or (eq? _%test103151%_ eq?)
                             (eq? _%test103151%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103153%_))
                             (eq? _%hash103153%_ eq?-hash)
                             (eq? _%hash103153%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103149%_)))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (_%make-gc-hash-table103167%_)))
                    (if (and (or (eq? _%test103151%_ eq?)
                                 (eq? _%test103151%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103153%_))
                                 (eq? _%hash103153%_ eq?-hash)
                                 (eq? _%hash103153%_ eq-hash)))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (_%make103166%_
                             make-eq-hash-table
                             true
                             eq-hash
                             eq?)))
                        (if (and (or (eq? _%test103151%_ eqv?)
                                     (eq? _%test103151%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103153%_))
                                     (eq? _%hash103153%_ eqv?-hash)
                                     (eq? _%hash103153%_ eqv-hash)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (_%make103166%_
                                 make-eqv-hash-table
                                 true
                                 eqv-hash
                                 eqv?)))
                            (if (and (or (eq? _%test103151%_ eq?)
                                         (eq? _%test103151%_ ##eq?))
                                     (or (eq? _%hash103153%_ symbolic-hash)
                                         (eq? _%hash103153%_ ##symbol-hash)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%make103166%_
                                     make-symbol-hash-table
                                     symbolic?
                                     symbolic-hash
                                     eq?)))
                                (if (and (or (eq? _%test103151%_ eq?)
                                             (eq? _%test103151%_ ##eq?))
                                         (eq? _%hash103153%_ immediate-hash))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%make103166%_
                                         make-immediate-hash-table
                                         immediate?
                                         immediate-hash
                                         eq?)))
                                    (if (and (or (eq? _%test103151%_ equal?)
                                                 (eq? _%test103151%_ ##equal?)
                                                 (eq? _%test103151%_ string=?)
                                                 (eq? _%test103151%_
                                                      ##string=?))
                                             (or (eq? _%hash103153%_
                                                      string-hash)
                                                 (eq? _%hash103153%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (_%make103166%_
                                             make-string-hash-table
                                             string?
                                             string-hash
                                             ##string=?)))
                                        (if (and (eq? _%test103151%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103153%_)))
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (_%make103166%_
                                                 make-generic-hash-table
                                                 true
                                                 equal?-hash
                                                 equal?)))
                                            (if (let ((__tmp106398
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103151%_))))
                                                  (declare (not safe))
                                                  (not __tmp106398))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test103151%_)))
                                                (if (let ((__tmp106399
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103153%_))))
                                                      (declare (not safe))
                                                      (not __tmp106399))
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash103153%_)))
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%make103166%_
                                                         make-generic-hash-table
                                                         true
                                                         _%hash103153%_
                                                         _%test103151%_)))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103296%_ . _%args103297%_)
        (apply make-hash-table__%
               _%@@keywords103296%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103296%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103296%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103296%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103296%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103296%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103296%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103296%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103296%_
                  'weak-values:
                  absent-value))
               _%args103297%_)))
    (define make-hash-table
      (lambda _%args103126103303%_
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
               _%args103126103303%_)))
    (define make-hash-table-eq
      (lambda _%args103115%_
        (apply make-hash-table 'test: eq? _%args103115%_)))
    (define make-hash-table-eqv
      (lambda _%args103113%_
        (apply make-hash-table 'test: eqv? _%args103113%_)))
    (define make-hash-table-symbolic
      (lambda _%args103111%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103111%_)))
    (define make-hash-table-string
      (lambda _%args103109%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103109%_)))
    (define make-hash-table-immediate
      (lambda _%args103107%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103107%_)))
    (define list->hash-table
      (lambda (_%lst103104%_ . _%args103105%_)
        (let ((__tmp106400
               (apply make-hash-table
                      'size:
                      (length _%lst103104%_)
                      _%args103105%_)))
          (declare (not safe))
          (list->hash-table! _%lst103104%_ __tmp106400))))
    (define list->hash-table-eq
      (lambda (_%lst103101%_ . _%args103102%_)
        (let ((__tmp106401
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103101%_)
                      _%args103102%_)))
          (declare (not safe))
          (list->hash-table! _%lst103101%_ __tmp106401))))
    (define list->hash-table-eqv
      (lambda (_%lst103098%_ . _%args103099%_)
        (let ((__tmp106402
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103098%_)
                      _%args103099%_)))
          (declare (not safe))
          (list->hash-table! _%lst103098%_ __tmp106402))))
    (define list->hash-table-symbolic
      (lambda (_%lst103095%_ . _%args103096%_)
        (let ((__tmp106403
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103095%_)
                      _%args103096%_)))
          (declare (not safe))
          (list->hash-table! _%lst103095%_ __tmp106403))))
    (define list->hash-table-string
      (lambda (_%lst103092%_ . _%args103093%_)
        (let ((__tmp106404
               (apply make-hash-table-string
                      'size:
                      (length _%lst103092%_)
                      _%args103093%_)))
          (declare (not safe))
          (list->hash-table! _%lst103092%_ __tmp106404))))
    (define list->hash-table-immediate
      (lambda (_%lst103089%_ . _%args103090%_)
        (let ((__tmp106405
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103089%_)
                      _%args103090%_)))
          (declare (not safe))
          (list->hash-table! _%lst103089%_ __tmp106405))))
    (define list->hash-table!
      (lambda (_%lst103056%_ _%h103057%_)
        (for-each
         (lambda (_%el103059%_)
           (let* ((_%el103060103067%_ _%el103059%_)
                  (_%E103062103071%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103060103067%_
                              '([k . v])))
                     '#!void))
                  (_%K103063103077%_
                   (lambda (_%v103074%_ _%k103075%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103057%_
                        _%k103075%_
                        _%v103074%_)))))
             (if (let () (declare (not safe)) (##pair? _%el103060103067%_))
                 (let ((_%hd103064103080%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103060103067%_)))
                       (_%tl103065103082%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103060103067%_))))
                   (let* ((_%k103085%_ _%hd103064103080%_)
                          (_%v103087%_ _%tl103065103082%_))
                     (declare (not safe))
                     (_%K103063103077%_ _%v103087%_ _%k103085%_)))
                 (let () (declare (not safe)) (_%E103062103071%_)))))
         _%lst103056%_)
        _%h103057%_))
    (define plist->hash-table
      (lambda (_%lst103053%_ . _%args103054%_)
        (let ((__tmp106406
               (apply make-hash-table
                      'size:
                      (length _%lst103053%_)
                      _%args103054%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103053%_ __tmp106406))))
    (define plist->hash-table-eq
      (lambda (_%lst103050%_ . _%args103051%_)
        (let ((__tmp106407
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103050%_)
                      _%args103051%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103050%_ __tmp106407))))
    (define plist->hash-table-eqv
      (lambda (_%lst103047%_ . _%args103048%_)
        (let ((__tmp106408
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103047%_)
                      _%args103048%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103047%_ __tmp106408))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103044%_ . _%args103045%_)
        (let ((__tmp106409
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103044%_)
                      _%args103045%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103044%_ __tmp106409))))
    (define plist->hash-table-string
      (lambda (_%lst103041%_ . _%args103042%_)
        (let ((__tmp106410
               (apply make-hash-table-string
                      'size:
                      (length _%lst103041%_)
                      _%args103042%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103041%_ __tmp106410))))
    (define plist->hash-table-immediate
      (lambda (_%lst103038%_ . _%args103039%_)
        (let ((__tmp106411
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103038%_)
                      _%args103039%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103038%_ __tmp106411))))
    (define plist->hash-table!
      (lambda (_%lst102978%_ _%h102979%_)
        (let _%loop102981%_ ((_%rest102983%_ _%lst102978%_))
          (let* ((_%rest102984102996%_ _%rest102983%_)
                 (_%else102987103004%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst102978%_)))))
            (let ((_%K102990103019%_
                   (lambda (_%rest103015%_ _%val103016%_ _%key103017%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h102979%_
                        _%key103017%_
                        _%val103016%_))
                     (let ()
                       (declare (not safe))
                       (_%loop102981%_ _%rest103015%_))))
                  (_%K102989103009%_ (lambda () _%h102979%_)))
              (let ((_%try-match102986103012%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest102984102996%_))
                           (let () (declare (not safe)) (_%K102989103009%_))
                           (let ()
                             (declare (not safe))
                             (_%else102987103004%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest102984102996%_))
                    (let ((_%tl102992103024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest102984102996%_)))
                          (_%hd102991103022%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest102984102996%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl102992103024%_))
                          (let ((_%tl102994103031%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl102992103024%_)))
                                (_%hd102993103029%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl102992103024%_))))
                            (let ((_%key103027%_ _%hd102991103022%_)
                                  (_%val103034%_ _%hd102993103029%_)
                                  (_%rest103036%_ _%tl102994103031%_))
                              (let ()
                                (declare (not safe))
                                (_%K102990103019%_
                                 _%rest103036%_
                                 _%val103034%_
                                 _%key103027%_))))
                          (let ()
                            (declare (not safe))
                            (_%else102987103004%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match102986103012%_)))))))))
    (define hash-length
      (lambda (_%h102960%_)
        (let ()
          (let* ((_%h102966%_
                  (let ((_%$obj102963%_ _%h102960%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102963%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102963%_)))
                             '#t)
                        _%$obj102963%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102963%_)))))
                 (_%h102968%_ _%h102966%_))
            (let ()
              (let () (declare (not safe)) (__hash-length _%h102968%_)))))))
    (define __hash-length
      (lambda (_%h102948%_)
        (let ()
          (let ((_%h102951%_ _%h102948%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-length _%h102951%_)))))))
    (define hash-ref__%
      (lambda (_%h102916%_ _%key102917%_ _%default102918%_)
        (let ()
          (let* ((_%h102924%_
                  (let ((_%$obj102921%_ _%h102916%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102921%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102921%_)))
                             '#t)
                        _%$obj102921%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102921%_)))))
                 (_%h102926%_ _%h102924%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-ref__%
                 _%h102926%_
                 _%key102917%_
                 _%default102918%_)))))))
    (define hash-ref__0
      (lambda (_%h102939%_ _%key102940%_)
        (let ((_%default102942%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h102939%_ _%key102940%_ _%default102942%_))))
    (define hash-ref
      (lambda _g106413_
        (let ((_g106412_ (let () (declare (not safe)) (##length _g106413_))))
          (cond ((let () (declare (not safe)) (##fx= _g106412_ 2))
                 (apply (lambda (_%h102939%_ _%key102940%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h102939%_ _%key102940%_)))
                        _g106413_))
                ((let () (declare (not safe)) (##fx= _g106412_ 3))
                 (apply (lambda (_%h102944%_ _%key102945%_ _%default102946%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h102944%_
                             _%key102945%_
                             _%default102946%_)))
                        _g106413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106413_))))))
    (define __hash-ref__%
      (lambda (_%h102887%_ _%key102888%_ _%default102889%_)
        (let ()
          (let ((_%h102892%_ _%h102887%_))
            (let ()
              (let ((_%result102901%_
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h102892%_
                        _%key102888%_
                        _%default102889%_))))
                (if (eq? _%result102901%_ (macro-absent-obj))
                    (let ()
                      (declare (not safe))
                      (raise-unbound-key-error
                       'hash-ref
                       '"unknown hash key"
                       'hash:
                       _%h102892%_
                       'key:
                       _%key102888%_))
                    _%result102901%_)))))))
    (define __hash-ref__0
      (lambda (_%h102906%_ _%key102907%_)
        (let ((_%default102909%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h102906%_ _%key102907%_ _%default102909%_))))
    (define __hash-ref
      (lambda _g106415_
        (let ((_g106414_ (let () (declare (not safe)) (##length _g106415_))))
          (cond ((let () (declare (not safe)) (##fx= _g106414_ 2))
                 (apply (lambda (_%h102906%_ _%key102907%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h102906%_ _%key102907%_)))
                        _g106415_))
                ((let () (declare (not safe)) (##fx= _g106414_ 3))
                 (apply (lambda (_%h102911%_ _%key102912%_ _%default102913%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h102911%_
                             _%key102912%_
                             _%default102913%_)))
                        _g106415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106415_))))))
    (define hash-get
      (lambda (_%h102867%_ _%key102868%_)
        (let ()
          (let* ((_%h102874%_
                  (let ((_%$obj102871%_ _%h102867%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102871%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102871%_)))
                             '#t)
                        _%$obj102871%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102871%_)))))
                 (_%h102876%_ _%h102874%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-get _%h102876%_ _%key102868%_)))))))
    (define __hash-get
      (lambda (_%h102854%_ _%key102855%_)
        (let ()
          (let ((_%h102858%_ _%h102854%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-ref _%h102858%_ _%key102855%_ '#f)))))))
    (define hash-put!
      (lambda (_%h102834%_ _%key102835%_ _%value102836%_)
        (let ()
          (let* ((_%h102842%_
                  (let ((_%$obj102839%_ _%h102834%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102839%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102839%_)))
                             '#t)
                        _%$obj102839%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102839%_)))))
                 (_%h102844%_ _%h102842%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-put! _%h102844%_ _%key102835%_ _%value102836%_)))))))
    (define __hash-put!
      (lambda (_%h102820%_ _%key102821%_ _%value102822%_)
        (let ()
          (let ((_%h102825%_ _%h102820%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-set!
                 _%h102825%_
                 _%key102821%_
                 _%value102822%_)))))))
    (define hash-update!__%
      (lambda (_%h102785%_ _%key102786%_ _%update102787%_ _%default102788%_)
        (let ()
          (let* ((_%h102794%_
                  (let ((_%$obj102791%_ _%h102785%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102791%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102791%_)))
                             '#t)
                        _%$obj102791%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102791%_)))))
                 (_%h102796%_ _%h102794%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-update!__%
                 _%h102796%_
                 _%key102786%_
                 _%update102787%_
                 _%default102788%_)))))))
    (define hash-update!__0
      (lambda (_%h102809%_ _%key102810%_ _%update102811%_)
        (let ((_%default102813%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h102809%_
           _%key102810%_
           _%update102811%_
           _%default102813%_))))
    (define hash-update!
      (lambda _g106417_
        (let ((_g106416_ (let () (declare (not safe)) (##length _g106417_))))
          (cond ((let () (declare (not safe)) (##fx= _g106416_ 3))
                 (apply (lambda (_%h102809%_ _%key102810%_ _%update102811%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h102809%_
                             _%key102810%_
                             _%update102811%_)))
                        _g106417_))
                ((let () (declare (not safe)) (##fx= _g106416_ 4))
                 (apply (lambda (_%h102815%_
                                 _%key102816%_
                                 _%update102817%_
                                 _%default102818%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h102815%_
                             _%key102816%_
                             _%update102817%_
                             _%default102818%_)))
                        _g106417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106417_))))))
    (define __hash-update!__%
      (lambda (_%h102755%_ _%key102756%_ _%update102757%_ _%default102758%_)
        (let ()
          (let ((_%h102761%_ _%h102755%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _%h102761%_
                 _%key102756%_
                 _%update102757%_
                 _%default102758%_)))))))
    (define __hash-update!__0
      (lambda (_%h102773%_ _%key102774%_ _%update102775%_)
        (let ((_%default102777%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h102773%_
           _%key102774%_
           _%update102775%_
           _%default102777%_))))
    (define __hash-update!
      (lambda _g106419_
        (let ((_g106418_ (let () (declare (not safe)) (##length _g106419_))))
          (cond ((let () (declare (not safe)) (##fx= _g106418_ 3))
                 (apply (lambda (_%h102773%_ _%key102774%_ _%update102775%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h102773%_
                             _%key102774%_
                             _%update102775%_)))
                        _g106419_))
                ((let () (declare (not safe)) (##fx= _g106418_ 4))
                 (apply (lambda (_%h102779%_
                                 _%key102780%_
                                 _%update102781%_
                                 _%default102782%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h102779%_
                             _%key102780%_
                             _%update102781%_
                             _%default102782%_)))
                        _g106419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106419_))))))
    (define hash-remove!
      (lambda (_%h102735%_ _%key102736%_)
        (let ()
          (let* ((_%h102742%_
                  (let ((_%$obj102739%_ _%h102735%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102739%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102739%_)))
                             '#t)
                        _%$obj102739%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102739%_)))))
                 (_%h102744%_ _%h102742%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-remove! _%h102744%_ _%key102736%_)))))))
    (define __hash-remove!
      (lambda (_%h102722%_ _%key102723%_)
        (let ()
          (let ((_%h102726%_ _%h102722%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-delete! _%h102726%_ _%key102723%_)))))))
    (define hash-key?
      (lambda (_%h102703%_ _%k102704%_)
        (let ()
          (let* ((_%h102710%_
                  (let ((_%$obj102707%_ _%h102703%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102707%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102707%_)))
                             '#t)
                        _%$obj102707%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102707%_)))))
                 (_%h102712%_ _%h102710%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-key? _%h102712%_ _%k102704%_)))))))
    (define __hash-key?
      (lambda (_%h102690%_ _%k102691%_)
        (let ()
          (let ((_%h102694%_ _%h102690%_))
            (let ()
              (let ((__tmp106420
                     (eq? (let ()
                            (declare (not safe))
                            (&HashTable-ref
                             _%h102694%_
                             _%k102691%_
                             absent-value))
                          absent-value)))
                (declare (not safe))
                (not __tmp106420)))))))
    (define hash->list
      (lambda (_%h102672%_)
        (let ()
          (let* ((_%h102678%_
                  (let ((_%$obj102675%_ _%h102672%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102675%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102675%_)))
                             '#t)
                        _%$obj102675%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102675%_)))))
                 (_%h102680%_ _%h102678%_))
            (let ()
              (let () (declare (not safe)) (__hash->list _%h102680%_)))))))
    (define __hash->list
      (lambda (_%h102655%_)
        (let ()
          (let ((_%h102658%_ _%h102655%_))
            (let ()
              (let ((_%lst102667%_ '()))
                (let ((__tmp106421
                       (lambda (_%k102669%_ _%v102670%_)
                         (set! _%lst102667%_
                               (cons (cons _%k102669%_ _%v102670%_)
                                     _%lst102667%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102658%_ __tmp106421))
                _%lst102667%_))))))
    (define hash->plist
      (lambda (_%h102637%_)
        (let ()
          (let* ((_%h102643%_
                  (let ((_%$obj102640%_ _%h102637%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102640%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102640%_)))
                             '#t)
                        _%$obj102640%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102640%_)))))
                 (_%h102645%_ _%h102643%_))
            (let ()
              (let () (declare (not safe)) (__hash->plist _%h102645%_)))))))
    (define __hash->plist
      (lambda (_%h102620%_)
        (let ()
          (let ((_%h102623%_ _%h102620%_))
            (let ()
              (let ((_%lst102632%_ '()))
                (let ((__tmp106422
                       (lambda (_%k102634%_ _%v102635%_)
                         (set! _%lst102632%_
                               (let ((__tmp106423
                                      (let ()
                                        (declare (not safe))
                                        (cons _%v102635%_ _%lst102632%_))))
                                 (declare (not safe))
                                 (cons _%k102634%_ __tmp106423))))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102623%_ __tmp106422))
                _%lst102632%_))))))
    (define hash-for-each
      (lambda (_%proc102591%_ _%h102592%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102591%_))
              (let ()
                (let ((_%proc102596%_ _%proc102591%_))
                  (let* ((_%h102608%_
                          (let ((_%$obj102605%_ _%h102592%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102605%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102605%_)))
                                     '#t)
                                _%$obj102605%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102605%_)))))
                         (_%h102610%_ _%h102608%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-for-each _%proc102596%_ _%h102610%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc102591%_)))))
    (define __hash-for-each
      (lambda (_%proc102570%_ _%h102571%_)
        (let ()
          (let ((_%proc102574%_ _%proc102570%_))
            (let ((_%h102582%_ _%h102571%_))
              (let ()
                (let ()
                  (declare (not safe))
                  (&HashTable-for-each _%h102582%_ _%proc102574%_))))))))
    (define hash-map
      (lambda (_%proc102541%_ _%h102542%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102541%_))
              (let ()
                (let ((_%proc102546%_ _%proc102541%_))
                  (let* ((_%h102558%_
                          (let ((_%$obj102555%_ _%h102542%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102555%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102555%_)))
                                     '#t)
                                _%$obj102555%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102555%_)))))
                         (_%h102560%_ _%h102558%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-map _%proc102546%_ _%h102560%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc102541%_)))))
    (define __hash-map
      (lambda (_%proc102515%_ _%h102516%_)
        (let ()
          (let ((_%proc102519%_ _%proc102515%_))
            (let ((_%h102527%_ _%h102516%_))
              (let ()
                (let ((_%result102536%_ '()))
                  (let ((__tmp106424
                         (lambda (_%k102538%_ _%v102539%_)
                           (set! _%result102536%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%proc102519%_
                                          _%k102538%_
                                          _%v102539%_))
                                       _%result102536%_)))))
                    (declare (not safe))
                    (&HashTable-for-each _%h102527%_ __tmp106424))
                  _%result102536%_)))))))
    (define hash-fold
      (lambda (_%proc102485%_ _%iv102486%_ _%h102487%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102485%_))
              (let ()
                (let ((_%proc102491%_ _%proc102485%_))
                  (let* ((_%h102503%_
                          (let ((_%$obj102500%_ _%h102487%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102500%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102500%_)))
                                     '#t)
                                _%$obj102500%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102500%_)))))
                         (_%h102505%_ _%h102503%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-fold
                         _%proc102491%_
                         _%iv102486%_
                         _%h102505%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc102485%_)))))
    (define __hash-fold
      (lambda (_%proc102458%_ _%iv102459%_ _%h102460%_)
        (let ()
          (let ((_%proc102463%_ _%proc102458%_))
            (let ((_%h102471%_ _%h102460%_))
              (let ()
                (let ((_%result102480%_ _%iv102459%_))
                  (let ((__tmp106425
                         (lambda (_%k102482%_ _%v102483%_)
                           (set! _%result102480%_
                                 (let ()
                                   (declare (not safe))
                                   (_%proc102463%_
                                    _%k102482%_
                                    _%v102483%_
                                    _%result102480%_))))))
                    (declare (not safe))
                    (&HashTable-for-each _%h102471%_ __tmp106425))
                  _%result102480%_)))))))
    (define hash-find__%
      (lambda (_%proc102416%_ _%h102417%_ _%default-value102418%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102416%_))
              (let ()
                (let ((_%proc102422%_ _%proc102416%_))
                  (let* ((_%h102434%_
                          (let ((_%$obj102431%_ _%h102417%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102431%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102431%_)))
                                     '#t)
                                _%$obj102431%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102431%_)))))
                         (_%h102436%_ _%h102434%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-find__%
                         _%proc102422%_
                         _%h102436%_
                         _%default-value102418%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc102416%_)))))
    (define hash-find__0
      (lambda (_%proc102449%_ _%h102450%_)
        (let ((_%default-value102452%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc102449%_ _%h102450%_ _%default-value102452%_))))
    (define hash-find
      (lambda _g106427_
        (let ((_g106426_ (let () (declare (not safe)) (##length _g106427_))))
          (cond ((let () (declare (not safe)) (##fx= _g106426_ 2))
                 (apply (lambda (_%proc102449%_ _%h102450%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc102449%_ _%h102450%_)))
                        _g106427_))
                ((let () (declare (not safe)) (##fx= _g106426_ 3))
                 (apply (lambda (_%proc102454%_
                                 _%h102455%_
                                 _%default-value102456%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc102454%_
                             _%h102455%_
                             _%default-value102456%_)))
                        _g106427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106427_))))))
    (define __hash-find__%
      (lambda (_%proc102373%_ _%h102374%_ _%default-value102375%_)
        (let ()
          (let ((_%proc102378%_ _%proc102373%_))
            (let ((_%h102386%_ _%h102374%_))
              (let ()
                (let ((__tmp106428
                       (lambda (_%return102395%_)
                         (let ((__tmp106429
                                (lambda (_%k102397%_ _%v102398%_)
                                  (let ((_%$e102400%_
                                         (let ()
                                           (declare (not safe))
                                           (_%proc102378%_
                                            _%k102397%_
                                            _%v102398%_))))
                                    (if _%$e102400%_
                                        (_%return102395%_ _%$e102400%_)
                                        '#!void)))))
                           (declare (not safe))
                           (&HashTable-for-each _%h102386%_ __tmp106429))
                         _%default-value102375%_)))
                  (declare (not safe))
                  (##call-with-current-continuation __tmp106428))))))))
    (define __hash-find__0
      (lambda (_%proc102406%_ _%h102407%_)
        (let ((_%default-value102409%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102406%_
           _%h102407%_
           _%default-value102409%_))))
    (define __hash-find
      (lambda _g106431_
        (let ((_g106430_ (let () (declare (not safe)) (##length _g106431_))))
          (cond ((let () (declare (not safe)) (##fx= _g106430_ 2))
                 (apply (lambda (_%proc102406%_ _%h102407%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102406%_ _%h102407%_)))
                        _g106431_))
                ((let () (declare (not safe)) (##fx= _g106430_ 3))
                 (apply (lambda (_%proc102411%_
                                 _%h102412%_
                                 _%default-value102413%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102411%_
                             _%h102412%_
                             _%default-value102413%_)))
                        _g106431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106431_))))))
    (define hash-keys
      (lambda (_%h102354%_)
        (let ()
          (let* ((_%h102360%_
                  (let ((_%$obj102357%_ _%h102354%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102357%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102357%_)))
                             '#t)
                        _%$obj102357%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102357%_)))))
                 (_%h102362%_ _%h102360%_))
            (let ()
              (let () (declare (not safe)) (__hash-keys _%h102362%_)))))))
    (define __hash-keys
      (lambda (_%h102337%_)
        (let ()
          (let ((_%h102340%_ _%h102337%_))
            (let ()
              (let ((_%result102349%_ '()))
                (let ((__tmp106432
                       (lambda (_%k102351%_ _%v102352%_)
                         (set! _%result102349%_
                               (cons _%k102351%_ _%result102349%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102340%_ __tmp106432))
                _%result102349%_))))))
    (define hash-values
      (lambda (_%h102319%_)
        (let ()
          (let* ((_%h102325%_
                  (let ((_%$obj102322%_ _%h102319%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102322%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102322%_)))
                             '#t)
                        _%$obj102322%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102322%_)))))
                 (_%h102327%_ _%h102325%_))
            (let ()
              (let () (declare (not safe)) (__hash-values _%h102327%_)))))))
    (define __hash-values
      (lambda (_%h102302%_)
        (let ()
          (let ((_%h102305%_ _%h102302%_))
            (let ()
              (let ((_%result102314%_ '()))
                (let ((__tmp106433
                       (lambda (_%k102316%_ _%v102317%_)
                         (set! _%result102314%_
                               (cons _%v102317%_ _%result102314%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102305%_ __tmp106433))
                _%result102314%_))))))
    (define hash-copy
      (lambda (_%h102284%_)
        (let ()
          (let* ((_%h102290%_
                  (let ((_%$obj102287%_ _%h102284%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102287%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102287%_)))
                             '#t)
                        _%$obj102287%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102287%_)))))
                 (_%h102292%_ _%h102290%_))
            (let ()
              (let () (declare (not safe)) (__hash-copy _%h102292%_)))))))
    (define __hash-copy
      (lambda (_%h102272%_)
        (let ()
          (let ((_%h102275%_ _%h102272%_))
            (let ()
              (let () (declare (not safe)) (&HashTable-copy _%h102275%_)))))))
    (define hash-clear!
      (lambda (_%h102254%_)
        (let ()
          (let* ((_%h102260%_
                  (let ((_%$obj102257%_ _%h102254%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102257%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102257%_)))
                             '#t)
                        _%$obj102257%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102257%_)))))
                 (_%h102262%_ _%h102260%_))
            (let ()
              (let () (declare (not safe)) (__hash-clear! _%h102262%_)))))))
    (define __hash-clear!
      (lambda (_%h102242%_)
        (let ()
          (let ((_%h102245%_ _%h102242%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-clear! _%h102245%_)))))))
    (define hash-merge
      (lambda (_%h102223%_ . _%rest102224%_)
        (let ()
          (let* ((_%h102230%_
                  (let ((_%$obj102227%_ _%h102223%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102227%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102227%_)))
                             '#t)
                        _%$obj102227%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102227%_)))))
                 (_%h102232%_ _%h102230%_))
            (let ()
              (let ()
                (declare (not safe))
                (##apply __hash-merge _%h102232%_ _%rest102224%_)))))))
    (define __hash-merge
      (lambda (_%h102208%_ . _%rest102209%_)
        (let ()
          (let ((_%h102212%_ _%h102208%_))
            (let ()
              (let ((_%copy102221%_
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h102212%_))))
                (apply hash-merge! _%copy102221%_ _%rest102209%_)
                _%copy102221%_))))))
    (define hash-merge!
      (lambda (_%h102189%_ . _%rest102190%_)
        (let ()
          (let* ((_%h102196%_
                  (let ((_%$obj102193%_ _%h102189%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102193%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102193%_)))
                             '#t)
                        _%$obj102193%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102193%_)))))
                 (_%h102198%_ _%h102196%_))
            (let ()
              (let ()
                (declare (not safe))
                (##apply __hash-merge! _%h102198%_ _%rest102190%_)))))))
    (define __hash-merge!
      (lambda (_%h102152%_ . _%rest102153%_)
        (let ()
          (let ((_%h102156%_ _%h102152%_))
            (let ()
              (for-each
               (lambda (_%hr102165%_)
                 (let ()
                   (let* ((_%hr102171%_
                           (let ((_%$obj102168%_ _%hr102165%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj102168%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj102168%_)))
                                      '#t)
                                 _%$obj102168%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj102168%_)))))
                          (_%hr102173%_ _%hr102171%_))
                     (let ()
                       (let ((__tmp106434
                              (lambda (_%k102186%_ _%v102187%_)
                                (if (let ()
                                      (declare (not safe))
                                      (__hash-key? _%h102156%_ _%k102186%_))
                                    '#!void
                                    (let ()
                                      (declare (not safe))
                                      (&HashTable-set!
                                       _%h102156%_
                                       _%k102186%_
                                       _%v102187%_))))))
                         (declare (not safe))
                         (&HashTable-for-each _%hr102173%_ __tmp106434))))))
               _%rest102153%_)
              _%h102156%_)))))))
