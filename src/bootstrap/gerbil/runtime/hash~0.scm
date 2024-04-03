(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712121897)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106291 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106291
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106271%_
        (apply make-instance UnboundKeyError::t _%$args106271%_)))
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
      (lambda (_%where106145%_ _%message106146%_ . _%irritants106147%_)
        (let ((__tmp106292
               (let ((__obj106285
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106285
                  _%message106146%_
                  'where:
                  _%where106145%_
                  'irritants:
                  _%irritants106147%_)
                 __obj106285)))
          (declare (not safe))
          (raise __tmp106292))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106293 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106293
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
      (lambda (_%obj106143%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106143%_))))
    (define try-HashTable
      (lambda (_%obj106141%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106141%_))))
    (define HashTable?
      (lambda (_%obj106139%_)
        (let ((__tmp106294
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106139%_ __tmp106294))))
    (define is-HashTable?
      (lambda (_%obj106137%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106137%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106121%_)
        (let* ((_%self106126%_
                (let ((_%$obj106123%_ _%self106121%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106123%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106123%_)))
                           '#t)
                      _%$obj106123%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106123%_)))))
               (_%self106128%_ _%self106126%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-clear! _%self106128%_))))))
    (define &HashTable-clear!
      (lambda (_%self106106%_)
        (let ((_%self106108%_ _%self106106%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106118%_
                     (##unchecked-structure-ref _%self106108%_ '1 '#f 'clear!))
                    (_%f106119%_
                     (##unchecked-structure-ref
                      _%self106108%_
                      '2
                      '#f
                      'clear!)))
                (_%f106119%_ _%obj106118%_)))))))
    (define HashTable-copy
      (lambda (_%self106090%_)
        (let* ((_%self106095%_
                (let ((_%$obj106092%_ _%self106090%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106092%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106092%_)))
                           '#t)
                      _%$obj106092%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106092%_)))))
               (_%self106097%_ _%self106095%_))
          (let ()
            (let () (declare (not safe)) (__HashTable-copy _%self106097%_))))))
    (define __HashTable-copy
      (lambda (_%self106077%_)
        (let ((_%self106079%_ _%self106077%_))
          (let ()
            (let ((_%$obj106087%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-copy _%self106079%_))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj106087%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj106087%_)))
                       '#t)
                  _%$obj106087%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj106087%_))))))))
    (define &HashTable-copy
      (lambda (_%self106062%_)
        (let ((_%self106064%_ _%self106062%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106074%_
                     (##unchecked-structure-ref _%self106064%_ '1 '#f 'copy))
                    (_%f106075%_
                     (##unchecked-structure-ref _%self106064%_ '3 '#f 'copy)))
                (_%f106075%_ _%obj106074%_)))))))
    (define HashTable-delete!
      (lambda (_%self106045%_ _%key106046%_)
        (let* ((_%self106051%_
                (let ((_%$obj106048%_ _%self106045%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106048%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106048%_)))
                           '#t)
                      _%$obj106048%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106048%_)))))
               (_%self106053%_ _%self106051%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%self106053%_ _%key106046%_))))))
    (define &HashTable-delete!
      (lambda (_%self106029%_ _%key106030%_)
        (let ((_%self106032%_ _%self106029%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106042%_
                     (##unchecked-structure-ref
                      _%self106032%_
                      '1
                      '#f
                      'delete!))
                    (_%f106043%_
                     (##unchecked-structure-ref
                      _%self106032%_
                      '4
                      '#f
                      'delete!)))
                (_%f106043%_ _%obj106042%_ _%key106030%_)))))))
    (define HashTable-for-each
      (lambda (_%self106002%_ _%proc106003%_)
        (let* ((_%self106008%_
                (let ((_%$obj106005%_ _%self106002%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106005%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106005%_)))
                           '#t)
                      _%$obj106005%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106005%_)))))
               (_%self106010%_ _%self106008%_))
          (if (let () (declare (not safe)) (procedure? _%proc106003%_))
              (let ()
                (let ((_%proc106019%_ _%proc106003%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (&HashTable-for-each _%self106010%_ _%proc106019%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
               'contract:
               'procedure?
               'value:
               _%proc106003%_)))))
    (define &HashTable-for-each
      (lambda (_%self105978%_ _%proc105979%_)
        (let ((_%self105981%_ _%self105978%_))
          (let ((_%proc105988%_ _%proc105979%_))
            (let ()
              (let ()
                (declare (not safe))
                (let ((_%obj105999%_
                       (##unchecked-structure-ref
                        _%self105981%_
                        '1
                        '#f
                        'for-each))
                      (_%f106000%_
                       (##unchecked-structure-ref
                        _%self105981%_
                        '5
                        '#f
                        'for-each)))
                  (_%f106000%_ _%obj105999%_ _%proc105988%_))))))))
    (define HashTable-length
      (lambda (_%self105962%_)
        (let* ((_%self105967%_
                (let ((_%$obj105964%_ _%self105962%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105964%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105964%_)))
                           '#t)
                      _%$obj105964%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105964%_)))))
               (_%self105969%_ _%self105967%_))
          (let ()
            (let ()
              (declare (not safe))
              (__HashTable-length _%self105969%_))))))
    (define __HashTable-length
      (lambda (_%self105949%_)
        (let ((_%self105951%_ _%self105949%_))
          (let ()
            (let ((_%val105959%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-length _%self105951%_))))
              (if (let () (declare (not safe)) (fixnum? _%val105959%_))
                  _%val105959%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" fixnum::t _%val105959%_))))))))
    (define &HashTable-length
      (lambda (_%self105934%_)
        (let ((_%self105936%_ _%self105934%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105946%_
                     (##unchecked-structure-ref _%self105936%_ '1 '#f 'length))
                    (_%f105947%_
                     (##unchecked-structure-ref
                      _%self105936%_
                      '6
                      '#f
                      'length)))
                (_%f105947%_ _%obj105946%_)))))))
    (define HashTable-ref
      (lambda (_%self105916%_ _%key105917%_ _%default105918%_)
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
              (&HashTable-ref
               _%self105925%_
               _%key105917%_
               _%default105918%_))))))
    (define &HashTable-ref
      (lambda (_%self105899%_ _%key105900%_ _%default105901%_)
        (let ((_%self105903%_ _%self105899%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105913%_
                     (##unchecked-structure-ref _%self105903%_ '1 '#f 'ref))
                    (_%f105914%_
                     (##unchecked-structure-ref _%self105903%_ '7 '#f 'ref)))
                (_%f105914%_
                 _%obj105913%_
                 _%key105900%_
                 _%default105901%_)))))))
    (define HashTable-set!
      (lambda (_%self105881%_ _%key105882%_ _%value105883%_)
        (let* ((_%self105888%_
                (let ((_%$obj105885%_ _%self105881%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105885%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105885%_)))
                           '#t)
                      _%$obj105885%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105885%_)))))
               (_%self105890%_ _%self105888%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-set!
               _%self105890%_
               _%key105882%_
               _%value105883%_))))))
    (define &HashTable-set!
      (lambda (_%self105864%_ _%key105865%_ _%value105866%_)
        (let ((_%self105868%_ _%self105864%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105878%_
                     (##unchecked-structure-ref _%self105868%_ '1 '#f 'set!))
                    (_%f105879%_
                     (##unchecked-structure-ref _%self105868%_ '8 '#f 'set!)))
                (_%f105879%_ _%obj105878%_ _%key105865%_ _%value105866%_)))))))
    (define HashTable-update!
      (lambda (_%self105835%_ _%key105836%_ _%proc105837%_ _%default105838%_)
        (let* ((_%self105843%_
                (let ((_%$obj105840%_ _%self105835%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105840%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105840%_)))
                           '#t)
                      _%$obj105840%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105840%_)))))
               (_%self105845%_ _%self105843%_))
          (if (let () (declare (not safe)) (procedure? _%proc105837%_))
              (let ()
                (let ((_%proc105854%_ _%proc105837%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (&HashTable-update!
                       _%self105845%_
                       _%key105836%_
                       _%proc105854%_
                       _%default105838%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
               'contract:
               'procedure?
               'value:
               _%proc105837%_)))))
    (define &HashTable-update!
      (lambda (_%self105807%_ _%key105808%_ _%proc105809%_ _%default105810%_)
        (let ((_%self105812%_ _%self105807%_))
          (let ((_%proc105819%_ _%proc105809%_))
            (let ()
              (let ()
                (declare (not safe))
                (let ((_%obj105830%_
                       (##unchecked-structure-ref
                        _%self105812%_
                        '1
                        '#f
                        'update!))
                      (_%f105832%_
                       (##unchecked-structure-ref
                        _%self105812%_
                        '9
                        '#f
                        'update!)))
                  (_%f105832%_
                   _%obj105830%_
                   _%key105808%_
                   _%proc105819%_
                   _%default105810%_))))))))
    (define Locker::t
      (let ((__tmp106295 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106295
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
      (lambda (_%obj105805%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj105805%_))))
    (define try-Locker
      (lambda (_%obj105803%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj105803%_))))
    (define Locker?
      (lambda (_%obj105801%_)
        (let ((__tmp106296
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj105801%_ __tmp106296))))
    (define is-Locker?
      (lambda (_%obj105799%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj105799%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self105783%_)
        (let* ((_%self105788%_
                (let ((_%$obj105785%_ _%self105783%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105785%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105785%_)))
                           '#t)
                      _%$obj105785%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105785%_)))))
               (_%self105790%_ _%self105788%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-read-lock! _%self105790%_))))))
    (define &Locker-read-lock!
      (lambda (_%self105768%_)
        (let ((_%self105770%_ _%self105768%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105780%_
                     (##unchecked-structure-ref
                      _%self105770%_
                      '1
                      '#f
                      'read-lock!))
                    (_%f105781%_
                     (##unchecked-structure-ref
                      _%self105770%_
                      '2
                      '#f
                      'read-lock!)))
                (_%f105781%_ _%obj105780%_)))))))
    (define Locker-read-unlock!
      (lambda (_%self105752%_)
        (let* ((_%self105757%_
                (let ((_%$obj105754%_ _%self105752%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105754%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105754%_)))
                           '#t)
                      _%$obj105754%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105754%_)))))
               (_%self105759%_ _%self105757%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-read-unlock! _%self105759%_))))))
    (define &Locker-read-unlock!
      (lambda (_%self105737%_)
        (let ((_%self105739%_ _%self105737%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105749%_
                     (##unchecked-structure-ref
                      _%self105739%_
                      '1
                      '#f
                      'read-unlock!))
                    (_%f105750%_
                     (##unchecked-structure-ref
                      _%self105739%_
                      '3
                      '#f
                      'read-unlock!)))
                (_%f105750%_ _%obj105749%_)))))))
    (define Locker-write-lock!
      (lambda (_%self105721%_)
        (let* ((_%self105726%_
                (let ((_%$obj105723%_ _%self105721%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105723%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105723%_)))
                           '#t)
                      _%$obj105723%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105723%_)))))
               (_%self105728%_ _%self105726%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-write-lock! _%self105728%_))))))
    (define &Locker-write-lock!
      (lambda (_%self105706%_)
        (let ((_%self105708%_ _%self105706%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105718%_
                     (##unchecked-structure-ref
                      _%self105708%_
                      '1
                      '#f
                      'write-lock!))
                    (_%f105719%_
                     (##unchecked-structure-ref
                      _%self105708%_
                      '4
                      '#f
                      'write-lock!)))
                (_%f105719%_ _%obj105718%_)))))))
    (define Locker-write-unlock!
      (lambda (_%self105690%_)
        (let* ((_%self105695%_
                (let ((_%$obj105692%_ _%self105690%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105692%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105692%_)))
                           '#t)
                      _%$obj105692%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105692%_)))))
               (_%self105697%_ _%self105695%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-write-unlock! _%self105697%_))))))
    (define &Locker-write-unlock!
      (lambda (_%self105673%_)
        (let ((_%self105675%_ _%self105673%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105685%_
                     (##unchecked-structure-ref
                      _%self105675%_
                      '1
                      '#f
                      'write-unlock!))
                    (_%f105687%_
                     (##unchecked-structure-ref
                      _%self105675%_
                      '5
                      '#f
                      'write-unlock!)))
                (_%f105687%_ _%obj105685%_)))))))
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
      (lambda (_%table105666%_
               _%key105667%_
               _%update105668%_
               _%default105669%_)
        (let ((_%result105671%_
               (table-ref _%table105666%_ _%key105667%_ _%default105669%_)))
          (table-set!
           _%table105666%_
           _%key105667%_
           (_%update105668%_ _%default105669%_)))))
    (define gambit-table-for-each
      (lambda (_%table105663%_ _%proc105664%_)
        (table-for-each _%proc105664%_ _%table105663%_)))
    (define gambit-table-clear!
      (lambda (_%table105661%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table105661%_ '0 '5 '#f '#f))))
    (let ((__tmp106297 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106297 'ref table-ref))
    (let ((__tmp106298 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106298 'set! table-set!))
    (let ((__tmp106299 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106299 'update! gambit-table-update!))
    (let ((__tmp106300 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106300 'delete! table-set!))
    (let ((__tmp106301 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106301 'for-each gambit-table-for-each))
    (let ((__tmp106302 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106302 'length table-length))
    (let ((__tmp106303 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106303 'copy table-copy))
    (let ((__tmp106304 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106304 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots105643%_ '(table count free hash test seed))
             (_%slot-vector105645%_ (list->vector (cons '#f _%slots105643%_)))
             (_%slot-table105652%_
              (let ((_%slot-table105647%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106307
                       (lambda (_%slot105649%_ _%field105650%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105647%_
                            _%slot105649%_
                            _%field105650%_))
                         (let ((__tmp106308
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105649%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105647%_
                            __tmp106308
                            _%field105650%_))))
                      (__tmp106305
                       (let ((__tmp106306
                              (let ()
                                (declare (not safe))
                                (##length _%slots105643%_))))
                         (declare (not safe))
                         (##iota __tmp106306 '1))))
                  (declare (not safe))
                  (##for-each __tmp106307 _%slots105643%_ __tmp106305))
                _%slot-table105647%_))
             (_%flags105654%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105656%_ '#())
             (_%properties105658%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105643%_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp106309 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _%flags105654%_
           __table::t
           _%fields105656%_
           __tmp106309
           _%slot-vector105645%_
           _%slot-table105652%_
           _%properties105658%_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_%slots105625%_ '(gcht immediate))
             (_%slot-vector105627%_ (list->vector (cons '#f _%slots105625%_)))
             (_%slot-table105634%_
              (let ((_%slot-table105629%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106312
                       (lambda (_%slot105631%_ _%field105632%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105629%_
                            _%slot105631%_
                            _%field105632%_))
                         (let ((__tmp106313
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105631%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105629%_
                            __tmp106313
                            _%field105632%_))))
                      (__tmp106310
                       (let ((__tmp106311
                              (let ()
                                (declare (not safe))
                                (##length _%slots105625%_))))
                         (declare (not safe))
                         (##iota __tmp106311 '1))))
                  (declare (not safe))
                  (##for-each __tmp106312 _%slots105625%_ __tmp106310))
                _%slot-table105629%_))
             (_%flags105636%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105638%_ '#())
             (_%properties105640%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105625%_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp106314 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _%flags105636%_
           __gc-table::t
           _%fields105638%_
           __tmp106314
           _%slot-vector105627%_
           _%slot-table105634%_
           _%properties105640%_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp106316 (list))
            (__tmp106315
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106316
         '(table lock)
         __tmp106315
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args105622%_
        (apply make-instance locked-hash-table::t _%$args105622%_)))
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
      (let ((__tmp106318 (list))
            (__tmp106317
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106318
         '(table key-check)
         __tmp106317
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args105619%_
        (apply make-instance checked-hash-table::t _%$args105619%_)))
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
      (let ((__tmp106320 (list hash-table::t))
            (__tmp106319 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106320
         '()
         __tmp106319
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args105616%_
        (apply make-instance eq-hash-table::t _%$args105616%_)))
    (define eqv-hash-table::t
      (let ((__tmp106322 (list hash-table::t))
            (__tmp106321 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106322
         '()
         __tmp106321
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args105613%_
        (apply make-instance eqv-hash-table::t _%$args105613%_)))
    (define symbol-hash-table::t
      (let ((__tmp106324 (list hash-table::t))
            (__tmp106323 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106324
         '()
         __tmp106323
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args105610%_
        (apply make-instance symbol-hash-table::t _%$args105610%_)))
    (define string-hash-table::t
      (let ((__tmp106326 (list hash-table::t))
            (__tmp106325 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106326
         '()
         __tmp106325
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args105607%_
        (apply make-instance string-hash-table::t _%$args105607%_)))
    (define immediate-hash-table::t
      (let ((__tmp106328 (list hash-table::t))
            (__tmp106327 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106328
         '()
         __tmp106327
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args105604%_
        (apply make-instance immediate-hash-table::t _%$args105604%_)))
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
      (lambda (_%obj105602%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj105602%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj105600%_)
        (let () (declare (not safe)) (is-HashTable? _%obj105600%_))))
    (define _%locked-hash-table::ref101654%_
      (lambda (_%self105576%_ _%key105578%_ _%default105579%_)
        (let ()
          (let ((_%self105582%_ _%self105576%_))
            (let ()
              (let ((_%h105592%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105582%_ '1 '#f '#f)))
                    (_%l105594%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105582%_ '2 '#f '#f))))
                (let ((__tmp106331
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l105594%_))))
                      (__tmp106330
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-ref
                            _%h105592%_
                            _%key105578%_
                            _%default105579%_))))
                      (__tmp106329
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l105594%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106331 __tmp106330 __tmp106329))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref101654%_
       '#f))
    (define _%locked-hash-table::set!101656%_
      (lambda (_%self105429%_ _%key105431%_ _%value105432%_)
        (let ()
          (let ((_%self105435%_ _%self105429%_))
            (let ()
              (let ((_%h105445%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105435%_ '1 '#f '#f)))
                    (_%l105447%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105435%_ '2 '#f '#f))))
                (let ((__tmp106334
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105447%_))))
                      (__tmp106333
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-set!
                            _%h105445%_
                            _%key105431%_
                            _%value105432%_))))
                      (__tmp106332
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105447%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106334 __tmp106333 __tmp106332))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!101656%_
       '#f))
    (define _%locked-hash-table::update!101658%_
      (lambda (_%self105281%_ _%key105283%_ _%update105284%_ _%default105285%_)
        (let ()
          (let ((_%self105288%_ _%self105281%_))
            (let ()
              (let ((_%h105298%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105288%_ '1 '#f '#f)))
                    (_%l105300%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105288%_ '2 '#f '#f))))
                (let ((__tmp106337
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105300%_))))
                      (__tmp106336
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-update!
                            _%h105298%_
                            _%key105283%_
                            _%update105284%_
                            _%default105285%_))))
                      (__tmp106335
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105300%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106337 __tmp106336 __tmp106335))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!101658%_
       '#f))
    (define _%locked-hash-table::delete!101660%_
      (lambda (_%self105135%_ _%key105137%_)
        (let ()
          (let ((_%self105140%_ _%self105135%_))
            (let ()
              (let ((_%h105150%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105140%_ '1 '#f '#f)))
                    (_%l105152%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105140%_ '2 '#f '#f))))
                (let ((__tmp106340
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105152%_))))
                      (__tmp106339
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-delete! _%h105150%_ _%key105137%_))))
                      (__tmp106338
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105152%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106340 __tmp106339 __tmp106338))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!101660%_
       '#f))
    (define _%locked-hash-table::for-each101662%_
      (lambda (_%self104989%_ _%proc104991%_)
        (let ()
          (let ((_%self104994%_ _%self104989%_))
            (let ()
              (let ((_%h105004%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104994%_ '1 '#f '#f)))
                    (_%l105006%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104994%_ '2 '#f '#f))))
                (let ((__tmp106343
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l105006%_))))
                      (__tmp106342
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-for-each _%h105004%_ _%proc104991%_))))
                      (__tmp106341
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l105006%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106343 __tmp106342 __tmp106341))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each101662%_
       '#f))
    (define _%locked-hash-table::length101664%_
      (lambda (_%self104844%_)
        (let ()
          (let ((_%self104848%_ _%self104844%_))
            (let ()
              (let ((_%h104858%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104848%_ '1 '#f '#f)))
                    (_%l104860%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104848%_ '2 '#f '#f))))
                (let ((__tmp106346
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104860%_))))
                      (__tmp106345
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-length _%h104858%_))))
                      (__tmp106344
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104860%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106346 __tmp106345 __tmp106344))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length101664%_
       '#f))
    (define _%locked-hash-table::copy101666%_
      (lambda (_%self104699%_)
        (let ()
          (let ((_%self104703%_ _%self104699%_))
            (let ()
              (let ((_%h104713%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104703%_ '1 '#f '#f)))
                    (_%l104715%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104703%_ '2 '#f '#f))))
                (let ((__tmp106349
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104715%_))))
                      (__tmp106348
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-copy _%h104713%_))))
                      (__tmp106347
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104715%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106349 __tmp106348 __tmp106347))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy101666%_
       '#f))
    (define _%locked-hash-table::clear!101668%_
      (lambda (_%self104554%_)
        (let ()
          (let ((_%self104558%_ _%self104554%_))
            (let ()
              (let ((_%h104568%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104558%_ '1 '#f '#f)))
                    (_%l104570%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104558%_ '2 '#f '#f))))
                (let ((__tmp106352
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l104570%_))))
                      (__tmp106351
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-clear! _%h104568%_))))
                      (__tmp106350
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l104570%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106352 __tmp106351 __tmp106350))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!101668%_
       '#f))
    (let ((__tmp106353 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106353 'read-lock! mutex-lock!))
    (let ((__tmp106354 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106354 'read-unlock! mutex-unlock!))
    (let ((__tmp106355 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106355 'write-lock! mutex-lock!))
    (let ((__tmp106356 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106356 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref101946%_
      (lambda (_%self104407%_ _%key104408%_ _%default104409%_)
        (let ()
          (let ((_%self104412%_ _%self104407%_))
            (let ()
              (let ((_%h104422%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104412%_ '1 '#f '#f)))
                    (_%key?104424%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104412%_ '2 '#f '#f))))
                ((lambda (_%g104426104428%_)
                   (if (_%g104426104428%_ _%key104408%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104408%_))))
                 _%key?104424%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-ref
                   _%h104422%_
                   _%key104408%_
                   _%default104409%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref101946%_
       '#f))
    (define _%checked-hash-table::set!101948%_
      (lambda (_%self104260%_ _%key104261%_ _%value104262%_)
        (let ()
          (let ((_%self104265%_ _%self104260%_))
            (let ()
              (let ((_%h104275%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104265%_ '1 '#f '#f)))
                    (_%key?104277%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104265%_ '2 '#f '#f))))
                ((lambda (_%g104279104281%_)
                   (if (_%g104279104281%_ _%key104261%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104261%_))))
                 _%key?104277%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-set!
                   _%h104275%_
                   _%key104261%_
                   _%value104262%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!101948%_
       '#f))
    (define _%checked-hash-table::update!101950%_
      (lambda (_%self104114%_ _%key104115%_ _%update104116%_ _%default104117%_)
        (let ()
          (let ((_%self104120%_ _%self104114%_))
            (let ()
              (let ((_%h104130%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104120%_ '1 '#f '#f)))
                    (_%key?104132%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104120%_ '2 '#f '#f))))
                ((lambda (_%key?104135%_)
                   (if (_%key?104135%_ _%key104115%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104115%_)))
                   (if (let ()
                         (declare (not safe))
                         (procedure? _%update104116%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%update104116%_))))
                 _%key?104132%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-update!
                   _%h104130%_
                   _%key104115%_
                   _%update104116%_
                   _%default104117%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!101950%_
       '#f))
    (define _%checked-hash-table::delete!101952%_
      (lambda (_%self103968%_ _%key103969%_)
        (let ()
          (let ((_%self103972%_ _%self103968%_))
            (let ()
              (let ((_%h103982%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103972%_ '1 '#f '#f)))
                    (_%key?103984%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103972%_ '2 '#f '#f))))
                ((lambda (_%g103986103988%_)
                   (if (_%g103986103988%_ _%key103969%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key103969%_))))
                 _%key?103984%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-delete! _%h103982%_ _%key103969%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!101952%_
       '#f))
    (define _%checked-hash-table::for-each101954%_
      (lambda (_%self103824%_ _%proc103825%_)
        (let ()
          (let ((_%self103828%_ _%self103824%_))
            (let ()
              (let ((_%h103838%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103828%_ '1 '#f '#f)))
                    (_%key?103840%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103828%_ '2 '#f '#f))))
                ((lambda (_%_103843%_)
                   (if (let ()
                         (declare (not safe))
                         (procedure? _%proc103825%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%proc103825%_))))
                 _%key?103840%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-for-each _%h103838%_ _%proc103825%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each101954%_
       '#f))
    (define _%checked-hash-table::length101956%_
      (lambda (_%self103683%_)
        (let ()
          (let ((_%self103686%_ _%self103683%_))
            (let ()
              (let ((_%h103696%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103686%_ '1 '#f '#f)))
                    (_%key?103698%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103686%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%h103696%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length101956%_
       '#f))
    (define _%checked-hash-table::copy101958%_
      (lambda (_%self103542%_)
        (let ()
          (let ((_%self103545%_ _%self103542%_))
            (let ()
              (let ((_%h103555%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103545%_ '1 '#f '#f)))
                    (_%key?103557%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103545%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%h103555%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy101958%_
       '#f))
    (define _%checked-hash-table::clear!101960%_
      (lambda (_%self103401%_)
        (let ()
          (let ((_%self103404%_ _%self103401%_))
            (let ()
              (let ((_%h103414%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103404%_ '1 '#f '#f)))
                    (_%key?103416%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103404%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-clear! _%h103414%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!101960%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103271%_
               _%count103272%_
               _%free103273%_
               _%hash103274%_
               _%test103275%_
               _%seed103276%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103271%_
           _%count103272%_
           _%free103273%_
           _%hash103274%_
           _%test103275%_
           _%seed103276%_))))
    (define make-hash-table__%
      (lambda (_%_103093%_
               _%size-hint103083103095%_
               _%seed103084103097%_
               _%test103085103099%_
               _%hash103086103101%_
               _%lock103087103103%_
               _%check103088103105%_
               _%weak-keys103089103107%_
               _%weak-values103090103109%_)
        (let* ((_%size-hint103112%_
                (if (eq? _%size-hint103083103095%_ absent-value)
                    '#f
                    _%size-hint103083103095%_))
               (_%seed103114%_
                (if (eq? _%seed103084103097%_ absent-value)
                    '#f
                    _%seed103084103097%_))
               (_%test103116%_
                (if (eq? _%test103085103099%_ absent-value)
                    equal?
                    _%test103085103099%_))
               (_%hash103118%_
                (if (eq? _%hash103086103101%_ absent-value)
                    '#f
                    _%hash103086103101%_))
               (_%lock103120%_
                (if (eq? _%lock103087103103%_ absent-value)
                    '#f
                    _%lock103087103103%_))
               (_%check103122%_
                (if (eq? _%check103088103105%_ absent-value)
                    '#f
                    _%check103088103105%_))
               (_%weak-keys103124%_
                (if (eq? _%weak-keys103089103107%_ absent-value)
                    '#f
                    _%weak-keys103089103107%_))
               (_%weak-values103126%_
                (if (eq? _%weak-values103090103109%_ absent-value)
                    '#f
                    _%weak-values103090103109%_)))
          (letrec ((_%table-seed103128%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103114%_))
                          _%seed103114%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103129%_
                    (lambda (_%ht103249%_)
                      (if _%lock103120%_
                          (let ((_%$obj103254%_
                                 (let ((__tmp106357
                                        (let ((_%$obj103251%_ _%lock103120%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103251%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103251%_)))
                                                   '#t)
                                              _%$obj103251%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103251%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103249%_
                                    __tmp106357))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103254%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103254%_)))
                                     '#t)
                                _%$obj103254%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103254%_))))
                          _%ht103249%_)))
                   (_%wrap-checked103130%_
                    (lambda (_%ht103243%_ _%implicit103244%_)
                      (if _%check103122%_
                          (let ((_%$obj103246%_
                                 (let ((__tmp106358
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103122%_))
                                            _%check103122%_
                                            _%implicit103244%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103243%_
                                    __tmp106358))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103246%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103246%_)))
                                     '#t)
                                _%$obj103246%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103246%_))))
                          _%ht103243%_)))
                   (_%make103131%_
                    (lambda (_%kons103228%_
                             _%key?103229%_
                             _%hash103230%_
                             _%test103231%_)
                      (let* ((_%size103233%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103112%_)))
                             (_%table103235%_
                              (let ((__tmp106359 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103233%_ __tmp106359)))
                             (_%ht103240%_
                              (let ((_%$obj103237%_
                                     (_%kons103228%_
                                      _%table103235%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103233%_ '2))
                                      _%hash103230%_
                                      _%test103231%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103128%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103237%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103237%_)))
                                         '#t)
                                    _%$obj103237%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103237%_))))))
                        (let ((__tmp106360
                               (let ()
                                 (declare (not safe))
                                 (_%wrap-lock103129%_ _%ht103240%_))))
                          (declare (not safe))
                          (_%wrap-checked103130%_
                           __tmp106360
                           _%key?103229%_)))))
                   (_%make-gc-hash-table103132%_
                    (lambda ()
                      (let* ((_%ht103226%_
                              (let ((_%$obj103223%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103112%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103223%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103223%_)))
                                         '#t)
                                    _%$obj103223%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103223%_)))))
                             (__tmp106361
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103129%_ _%ht103226%_))))
                        (declare (not safe))
                        (_%wrap-checked103130%_ __tmp106361 true))))
                   (_%make-gambit-table103133%_
                    (lambda ()
                      (let* ((_%size103201%_
                              (let ((_%$e103198%_ _%size-hint103112%_))
                                (if _%$e103198%_
                                    _%$e103198%_
                                    (macro-absent-obj))))
                             (_%test103206%_
                              (let ((_%$e103203%_ _%test103116%_))
                                (if _%$e103203%_ _%$e103203%_ equal?)))
                             (_%hash103214%_
                              (let ((_%$e103208%_ _%hash103118%_))
                                (if _%$e103208%_
                                    _%$e103208%_
                                    (if (eq? _%test103206%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103206%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103219%_
                              (let ((_%$obj103216%_
                                     (make-table
                                      'size:
                                      _%size103201%_
                                      'test:
                                      _%test103206%_
                                      'hash:
                                      _%hash103214%_
                                      'weak-keys:
                                      _%weak-keys103124%_
                                      'weak-values:
                                      _%weak-values103126%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103216%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103216%_)))
                                         '#t)
                                    _%$obj103216%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103216%_))))))
                        (let ((__tmp106362
                               (let ()
                                 (declare (not safe))
                                 (_%wrap-lock103129%_ _%ht103219%_))))
                          (declare (not safe))
                          (_%wrap-checked103130%_ __tmp106362 true))))))
            (if (or _%weak-keys103124%_ _%weak-values103126%_)
                (let ()
                  (let () (declare (not safe)) (_%make-gambit-table103133%_)))
                (if (and (or (eq? _%test103116%_ eq?)
                             (eq? _%test103116%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103118%_))
                             (eq? _%hash103118%_ eq?-hash)
                             (eq? _%hash103118%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103114%_)))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (_%make-gc-hash-table103132%_)))
                    (if (and (or (eq? _%test103116%_ eq?)
                                 (eq? _%test103116%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103118%_))
                                 (eq? _%hash103118%_ eq?-hash)
                                 (eq? _%hash103118%_ eq-hash)))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (_%make103131%_
                             make-eq-hash-table
                             true
                             eq-hash
                             eq?)))
                        (if (and (or (eq? _%test103116%_ eqv?)
                                     (eq? _%test103116%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103118%_))
                                     (eq? _%hash103118%_ eqv?-hash)
                                     (eq? _%hash103118%_ eqv-hash)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (_%make103131%_
                                 make-eqv-hash-table
                                 true
                                 eqv-hash
                                 eqv?)))
                            (if (and (or (eq? _%test103116%_ eq?)
                                         (eq? _%test103116%_ ##eq?))
                                     (or (eq? _%hash103118%_ symbolic-hash)
                                         (eq? _%hash103118%_ ##symbol-hash)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%make103131%_
                                     make-symbol-hash-table
                                     symbolic?
                                     symbolic-hash
                                     eq?)))
                                (if (and (or (eq? _%test103116%_ eq?)
                                             (eq? _%test103116%_ ##eq?))
                                         (eq? _%hash103118%_ immediate-hash))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%make103131%_
                                         make-immediate-hash-table
                                         immediate?
                                         immediate-hash
                                         eq?)))
                                    (if (and (or (eq? _%test103116%_ equal?)
                                                 (eq? _%test103116%_ ##equal?)
                                                 (eq? _%test103116%_ string=?)
                                                 (eq? _%test103116%_
                                                      ##string=?))
                                             (or (eq? _%hash103118%_
                                                      string-hash)
                                                 (eq? _%hash103118%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (_%make103131%_
                                             make-string-hash-table
                                             string?
                                             string-hash
                                             ##string=?)))
                                        (if (and (eq? _%test103116%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103118%_)))
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (_%make103131%_
                                                 make-generic-hash-table
                                                 true
                                                 equal?-hash
                                                 equal?)))
                                            (if (let ((__tmp106363
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103116%_))))
                                                  (declare (not safe))
                                                  (not __tmp106363))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test103116%_)))
                                                (if (let ((__tmp106364
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103118%_))))
                                                      (declare (not safe))
                                                      (not __tmp106364))
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash103118%_)))
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%make103131%_
                                                         make-generic-hash-table
                                                         true
                                                         _%hash103118%_
                                                         _%test103116%_)))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103261%_ . _%args103262%_)
        (apply make-hash-table__%
               _%@@keywords103261%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103261%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103261%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103261%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103261%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103261%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103261%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103261%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103261%_
                  'weak-values:
                  absent-value))
               _%args103262%_)))
    (define make-hash-table
      (lambda _%args103091103268%_
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
               _%args103091103268%_)))
    (define make-hash-table-eq
      (lambda _%args103080%_
        (apply make-hash-table 'test: eq? _%args103080%_)))
    (define make-hash-table-eqv
      (lambda _%args103078%_
        (apply make-hash-table 'test: eqv? _%args103078%_)))
    (define make-hash-table-symbolic
      (lambda _%args103076%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103076%_)))
    (define make-hash-table-string
      (lambda _%args103074%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103074%_)))
    (define make-hash-table-immediate
      (lambda _%args103072%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103072%_)))
    (define list->hash-table
      (lambda (_%lst103069%_ . _%args103070%_)
        (let ((__tmp106365
               (apply make-hash-table
                      'size:
                      (length _%lst103069%_)
                      _%args103070%_)))
          (declare (not safe))
          (list->hash-table! _%lst103069%_ __tmp106365))))
    (define list->hash-table-eq
      (lambda (_%lst103066%_ . _%args103067%_)
        (let ((__tmp106366
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103066%_)
                      _%args103067%_)))
          (declare (not safe))
          (list->hash-table! _%lst103066%_ __tmp106366))))
    (define list->hash-table-eqv
      (lambda (_%lst103063%_ . _%args103064%_)
        (let ((__tmp106367
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103063%_)
                      _%args103064%_)))
          (declare (not safe))
          (list->hash-table! _%lst103063%_ __tmp106367))))
    (define list->hash-table-symbolic
      (lambda (_%lst103060%_ . _%args103061%_)
        (let ((__tmp106368
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103060%_)
                      _%args103061%_)))
          (declare (not safe))
          (list->hash-table! _%lst103060%_ __tmp106368))))
    (define list->hash-table-string
      (lambda (_%lst103057%_ . _%args103058%_)
        (let ((__tmp106369
               (apply make-hash-table-string
                      'size:
                      (length _%lst103057%_)
                      _%args103058%_)))
          (declare (not safe))
          (list->hash-table! _%lst103057%_ __tmp106369))))
    (define list->hash-table-immediate
      (lambda (_%lst103054%_ . _%args103055%_)
        (let ((__tmp106370
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103054%_)
                      _%args103055%_)))
          (declare (not safe))
          (list->hash-table! _%lst103054%_ __tmp106370))))
    (define list->hash-table!
      (lambda (_%lst103021%_ _%h103022%_)
        (for-each
         (lambda (_%el103024%_)
           (let* ((_%el103025103032%_ _%el103024%_)
                  (_%E103027103036%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103025103032%_
                              '([k . v])))
                     '#!void))
                  (_%K103028103042%_
                   (lambda (_%v103039%_ _%k103040%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103022%_
                        _%k103040%_
                        _%v103039%_)))))
             (if (let () (declare (not safe)) (##pair? _%el103025103032%_))
                 (let ((_%hd103029103045%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103025103032%_)))
                       (_%tl103030103047%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103025103032%_))))
                   (let* ((_%k103050%_ _%hd103029103045%_)
                          (_%v103052%_ _%tl103030103047%_))
                     (declare (not safe))
                     (_%K103028103042%_ _%v103052%_ _%k103050%_)))
                 (let () (declare (not safe)) (_%E103027103036%_)))))
         _%lst103021%_)
        _%h103022%_))
    (define plist->hash-table
      (lambda (_%lst103018%_ . _%args103019%_)
        (let ((__tmp106371
               (apply make-hash-table
                      'size:
                      (length _%lst103018%_)
                      _%args103019%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103018%_ __tmp106371))))
    (define plist->hash-table-eq
      (lambda (_%lst103015%_ . _%args103016%_)
        (let ((__tmp106372
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103015%_)
                      _%args103016%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103015%_ __tmp106372))))
    (define plist->hash-table-eqv
      (lambda (_%lst103012%_ . _%args103013%_)
        (let ((__tmp106373
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103012%_)
                      _%args103013%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103012%_ __tmp106373))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103009%_ . _%args103010%_)
        (let ((__tmp106374
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103009%_)
                      _%args103010%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103009%_ __tmp106374))))
    (define plist->hash-table-string
      (lambda (_%lst103006%_ . _%args103007%_)
        (let ((__tmp106375
               (apply make-hash-table-string
                      'size:
                      (length _%lst103006%_)
                      _%args103007%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103006%_ __tmp106375))))
    (define plist->hash-table-immediate
      (lambda (_%lst103003%_ . _%args103004%_)
        (let ((__tmp106376
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103003%_)
                      _%args103004%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103003%_ __tmp106376))))
    (define plist->hash-table!
      (lambda (_%lst102943%_ _%h102944%_)
        (let _%loop102946%_ ((_%rest102948%_ _%lst102943%_))
          (let* ((_%rest102949102961%_ _%rest102948%_)
                 (_%else102952102969%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst102943%_)))))
            (let ((_%K102955102984%_
                   (lambda (_%rest102980%_ _%val102981%_ _%key102982%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h102944%_
                        _%key102982%_
                        _%val102981%_))
                     (let ()
                       (declare (not safe))
                       (_%loop102946%_ _%rest102980%_))))
                  (_%K102954102974%_ (lambda () _%h102944%_)))
              (let ((_%try-match102951102977%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest102949102961%_))
                           (let () (declare (not safe)) (_%K102954102974%_))
                           (let ()
                             (declare (not safe))
                             (_%else102952102969%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest102949102961%_))
                    (let ((_%tl102957102989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest102949102961%_)))
                          (_%hd102956102987%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest102949102961%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl102957102989%_))
                          (let ((_%tl102959102996%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl102957102989%_)))
                                (_%hd102958102994%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl102957102989%_))))
                            (let ((_%key102992%_ _%hd102956102987%_)
                                  (_%val102999%_ _%hd102958102994%_)
                                  (_%rest103001%_ _%tl102959102996%_))
                              (let ()
                                (declare (not safe))
                                (_%K102955102984%_
                                 _%rest103001%_
                                 _%val102999%_
                                 _%key102992%_))))
                          (let ()
                            (declare (not safe))
                            (_%else102952102969%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match102951102977%_)))))))))
    (define hash-length
      (lambda (_%h102925%_)
        (let ()
          (let* ((_%h102931%_
                  (let ((_%$obj102928%_ _%h102925%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102928%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102928%_)))
                             '#t)
                        _%$obj102928%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102928%_)))))
                 (_%h102933%_ _%h102931%_))
            (let ()
              (let () (declare (not safe)) (__hash-length _%h102933%_)))))))
    (define __hash-length
      (lambda (_%h102913%_)
        (let ()
          (let ((_%h102916%_ _%h102913%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-length _%h102916%_)))))))
    (define hash-ref__%
      (lambda (_%h102881%_ _%key102882%_ _%default102883%_)
        (let ()
          (let* ((_%h102889%_
                  (let ((_%$obj102886%_ _%h102881%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102886%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102886%_)))
                             '#t)
                        _%$obj102886%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102886%_)))))
                 (_%h102891%_ _%h102889%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-ref__%
                 _%h102891%_
                 _%key102882%_
                 _%default102883%_)))))))
    (define hash-ref__0
      (lambda (_%h102904%_ _%key102905%_)
        (let ((_%default102907%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h102904%_ _%key102905%_ _%default102907%_))))
    (define hash-ref
      (lambda _g106378_
        (let ((_g106377_ (let () (declare (not safe)) (##length _g106378_))))
          (cond ((let () (declare (not safe)) (##fx= _g106377_ 2))
                 (apply (lambda (_%h102904%_ _%key102905%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h102904%_ _%key102905%_)))
                        _g106378_))
                ((let () (declare (not safe)) (##fx= _g106377_ 3))
                 (apply (lambda (_%h102909%_ _%key102910%_ _%default102911%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h102909%_
                             _%key102910%_
                             _%default102911%_)))
                        _g106378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106378_))))))
    (define __hash-ref__%
      (lambda (_%h102852%_ _%key102853%_ _%default102854%_)
        (let ()
          (let ((_%h102857%_ _%h102852%_))
            (let ()
              (let ((_%result102866%_
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h102857%_
                        _%key102853%_
                        _%default102854%_))))
                (if (eq? _%result102866%_ (macro-absent-obj))
                    (let ()
                      (declare (not safe))
                      (raise-unbound-key-error
                       'hash-ref
                       '"unknown hash key"
                       'hash:
                       _%h102857%_
                       'key:
                       _%key102853%_))
                    _%result102866%_)))))))
    (define __hash-ref__0
      (lambda (_%h102871%_ _%key102872%_)
        (let ((_%default102874%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h102871%_ _%key102872%_ _%default102874%_))))
    (define __hash-ref
      (lambda _g106380_
        (let ((_g106379_ (let () (declare (not safe)) (##length _g106380_))))
          (cond ((let () (declare (not safe)) (##fx= _g106379_ 2))
                 (apply (lambda (_%h102871%_ _%key102872%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h102871%_ _%key102872%_)))
                        _g106380_))
                ((let () (declare (not safe)) (##fx= _g106379_ 3))
                 (apply (lambda (_%h102876%_ _%key102877%_ _%default102878%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h102876%_
                             _%key102877%_
                             _%default102878%_)))
                        _g106380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106380_))))))
    (define hash-get
      (lambda (_%h102832%_ _%key102833%_)
        (let ()
          (let* ((_%h102839%_
                  (let ((_%$obj102836%_ _%h102832%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102836%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102836%_)))
                             '#t)
                        _%$obj102836%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102836%_)))))
                 (_%h102841%_ _%h102839%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-get _%h102841%_ _%key102833%_)))))))
    (define __hash-get
      (lambda (_%h102819%_ _%key102820%_)
        (let ()
          (let ((_%h102823%_ _%h102819%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-ref _%h102823%_ _%key102820%_ '#f)))))))
    (define hash-put!
      (lambda (_%h102799%_ _%key102800%_ _%value102801%_)
        (let ()
          (let* ((_%h102807%_
                  (let ((_%$obj102804%_ _%h102799%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102804%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102804%_)))
                             '#t)
                        _%$obj102804%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102804%_)))))
                 (_%h102809%_ _%h102807%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-put! _%h102809%_ _%key102800%_ _%value102801%_)))))))
    (define __hash-put!
      (lambda (_%h102785%_ _%key102786%_ _%value102787%_)
        (let ()
          (let ((_%h102790%_ _%h102785%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-set!
                 _%h102790%_
                 _%key102786%_
                 _%value102787%_)))))))
    (define hash-update!__%
      (lambda (_%h102750%_ _%key102751%_ _%update102752%_ _%default102753%_)
        (let ()
          (let* ((_%h102759%_
                  (let ((_%$obj102756%_ _%h102750%_))
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
            (let ()
              (let ()
                (declare (not safe))
                (__hash-update!__%
                 _%h102761%_
                 _%key102751%_
                 _%update102752%_
                 _%default102753%_)))))))
    (define hash-update!__0
      (lambda (_%h102774%_ _%key102775%_ _%update102776%_)
        (let ((_%default102778%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h102774%_
           _%key102775%_
           _%update102776%_
           _%default102778%_))))
    (define hash-update!
      (lambda _g106382_
        (let ((_g106381_ (let () (declare (not safe)) (##length _g106382_))))
          (cond ((let () (declare (not safe)) (##fx= _g106381_ 3))
                 (apply (lambda (_%h102774%_ _%key102775%_ _%update102776%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h102774%_
                             _%key102775%_
                             _%update102776%_)))
                        _g106382_))
                ((let () (declare (not safe)) (##fx= _g106381_ 4))
                 (apply (lambda (_%h102780%_
                                 _%key102781%_
                                 _%update102782%_
                                 _%default102783%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h102780%_
                             _%key102781%_
                             _%update102782%_
                             _%default102783%_)))
                        _g106382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106382_))))))
    (define __hash-update!__%
      (lambda (_%h102720%_ _%key102721%_ _%update102722%_ _%default102723%_)
        (let ()
          (let ((_%h102726%_ _%h102720%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _%h102726%_
                 _%key102721%_
                 _%update102722%_
                 _%default102723%_)))))))
    (define __hash-update!__0
      (lambda (_%h102738%_ _%key102739%_ _%update102740%_)
        (let ((_%default102742%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h102738%_
           _%key102739%_
           _%update102740%_
           _%default102742%_))))
    (define __hash-update!
      (lambda _g106384_
        (let ((_g106383_ (let () (declare (not safe)) (##length _g106384_))))
          (cond ((let () (declare (not safe)) (##fx= _g106383_ 3))
                 (apply (lambda (_%h102738%_ _%key102739%_ _%update102740%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h102738%_
                             _%key102739%_
                             _%update102740%_)))
                        _g106384_))
                ((let () (declare (not safe)) (##fx= _g106383_ 4))
                 (apply (lambda (_%h102744%_
                                 _%key102745%_
                                 _%update102746%_
                                 _%default102747%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h102744%_
                             _%key102745%_
                             _%update102746%_
                             _%default102747%_)))
                        _g106384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106384_))))))
    (define hash-remove!
      (lambda (_%h102700%_ _%key102701%_)
        (let ()
          (let* ((_%h102707%_
                  (let ((_%$obj102704%_ _%h102700%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102704%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102704%_)))
                             '#t)
                        _%$obj102704%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102704%_)))))
                 (_%h102709%_ _%h102707%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-remove! _%h102709%_ _%key102701%_)))))))
    (define __hash-remove!
      (lambda (_%h102687%_ _%key102688%_)
        (let ()
          (let ((_%h102691%_ _%h102687%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-delete! _%h102691%_ _%key102688%_)))))))
    (define hash-key?
      (lambda (_%h102668%_ _%k102669%_)
        (let ()
          (let* ((_%h102675%_
                  (let ((_%$obj102672%_ _%h102668%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102672%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102672%_)))
                             '#t)
                        _%$obj102672%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102672%_)))))
                 (_%h102677%_ _%h102675%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-key? _%h102677%_ _%k102669%_)))))))
    (define __hash-key?
      (lambda (_%h102655%_ _%k102656%_)
        (let ()
          (let ((_%h102659%_ _%h102655%_))
            (let ()
              (let ((__tmp106385
                     (eq? (let ()
                            (declare (not safe))
                            (&HashTable-ref
                             _%h102659%_
                             _%k102656%_
                             absent-value))
                          absent-value)))
                (declare (not safe))
                (not __tmp106385)))))))
    (define hash->list
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
              (let () (declare (not safe)) (__hash->list _%h102645%_)))))))
    (define __hash->list
      (lambda (_%h102620%_)
        (let ()
          (let ((_%h102623%_ _%h102620%_))
            (let ()
              (let ((_%lst102632%_ '()))
                (let ((__tmp106386
                       (lambda (_%k102634%_ _%v102635%_)
                         (set! _%lst102632%_
                               (cons (cons _%k102634%_ _%v102635%_)
                                     _%lst102632%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102623%_ __tmp106386))
                _%lst102632%_))))))
    (define hash->plist
      (lambda (_%h102602%_)
        (let ()
          (let* ((_%h102608%_
                  (let ((_%$obj102605%_ _%h102602%_))
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
                          (cast HashTable::interface _%$obj102605%_)))))
                 (_%h102610%_ _%h102608%_))
            (let ()
              (let () (declare (not safe)) (__hash->plist _%h102610%_)))))))
    (define __hash->plist
      (lambda (_%h102585%_)
        (let ()
          (let ((_%h102588%_ _%h102585%_))
            (let ()
              (let ((_%lst102597%_ '()))
                (let ((__tmp106387
                       (lambda (_%k102599%_ _%v102600%_)
                         (set! _%lst102597%_
                               (let ((__tmp106388
                                      (let ()
                                        (declare (not safe))
                                        (cons _%v102600%_ _%lst102597%_))))
                                 (declare (not safe))
                                 (cons _%k102599%_ __tmp106388))))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102588%_ __tmp106387))
                _%lst102597%_))))))
    (define hash-for-each
      (lambda (_%proc102556%_ _%h102557%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102556%_))
              (let ()
                (let ((_%proc102561%_ _%proc102556%_))
                  (let* ((_%h102573%_
                          (let ((_%$obj102570%_ _%h102557%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102570%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102570%_)))
                                     '#t)
                                _%$obj102570%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102570%_)))))
                         (_%h102575%_ _%h102573%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-for-each _%proc102561%_ _%h102575%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc102556%_)))))
    (define __hash-for-each
      (lambda (_%proc102535%_ _%h102536%_)
        (let ()
          (let ((_%proc102539%_ _%proc102535%_))
            (let ((_%h102547%_ _%h102536%_))
              (let ()
                (let ()
                  (declare (not safe))
                  (&HashTable-for-each _%h102547%_ _%proc102539%_))))))))
    (define hash-map
      (lambda (_%proc102506%_ _%h102507%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102506%_))
              (let ()
                (let ((_%proc102511%_ _%proc102506%_))
                  (let* ((_%h102523%_
                          (let ((_%$obj102520%_ _%h102507%_))
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
                                  (cast HashTable::interface
                                        _%$obj102520%_)))))
                         (_%h102525%_ _%h102523%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-map _%proc102511%_ _%h102525%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc102506%_)))))
    (define __hash-map
      (lambda (_%proc102480%_ _%h102481%_)
        (let ()
          (let ((_%proc102484%_ _%proc102480%_))
            (let ((_%h102492%_ _%h102481%_))
              (let ()
                (let ((_%result102501%_ '()))
                  (let ((__tmp106389
                         (lambda (_%k102503%_ _%v102504%_)
                           (set! _%result102501%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%proc102484%_
                                          _%k102503%_
                                          _%v102504%_))
                                       _%result102501%_)))))
                    (declare (not safe))
                    (&HashTable-for-each _%h102492%_ __tmp106389))
                  _%result102501%_)))))))
    (define hash-fold
      (lambda (_%proc102450%_ _%iv102451%_ _%h102452%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102450%_))
              (let ()
                (let ((_%proc102456%_ _%proc102450%_))
                  (let* ((_%h102468%_
                          (let ((_%$obj102465%_ _%h102452%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102465%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102465%_)))
                                     '#t)
                                _%$obj102465%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102465%_)))))
                         (_%h102470%_ _%h102468%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-fold
                         _%proc102456%_
                         _%iv102451%_
                         _%h102470%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc102450%_)))))
    (define __hash-fold
      (lambda (_%proc102423%_ _%iv102424%_ _%h102425%_)
        (let ()
          (let ((_%proc102428%_ _%proc102423%_))
            (let ((_%h102436%_ _%h102425%_))
              (let ()
                (let ((_%result102445%_ _%iv102424%_))
                  (let ((__tmp106390
                         (lambda (_%k102447%_ _%v102448%_)
                           (set! _%result102445%_
                                 (let ()
                                   (declare (not safe))
                                   (_%proc102428%_
                                    _%k102447%_
                                    _%v102448%_
                                    _%result102445%_))))))
                    (declare (not safe))
                    (&HashTable-for-each _%h102436%_ __tmp106390))
                  _%result102445%_)))))))
    (define hash-find__%
      (lambda (_%proc102381%_ _%h102382%_ _%default-value102383%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102381%_))
              (let ()
                (let ((_%proc102387%_ _%proc102381%_))
                  (let* ((_%h102399%_
                          (let ((_%$obj102396%_ _%h102382%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102396%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102396%_)))
                                     '#t)
                                _%$obj102396%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102396%_)))))
                         (_%h102401%_ _%h102399%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-find__%
                         _%proc102387%_
                         _%h102401%_
                         _%default-value102383%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc102381%_)))))
    (define hash-find__0
      (lambda (_%proc102414%_ _%h102415%_)
        (let ((_%default-value102417%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc102414%_ _%h102415%_ _%default-value102417%_))))
    (define hash-find
      (lambda _g106392_
        (let ((_g106391_ (let () (declare (not safe)) (##length _g106392_))))
          (cond ((let () (declare (not safe)) (##fx= _g106391_ 2))
                 (apply (lambda (_%proc102414%_ _%h102415%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc102414%_ _%h102415%_)))
                        _g106392_))
                ((let () (declare (not safe)) (##fx= _g106391_ 3))
                 (apply (lambda (_%proc102419%_
                                 _%h102420%_
                                 _%default-value102421%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc102419%_
                             _%h102420%_
                             _%default-value102421%_)))
                        _g106392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106392_))))))
    (define __hash-find__%
      (lambda (_%proc102338%_ _%h102339%_ _%default-value102340%_)
        (let ()
          (let ((_%proc102343%_ _%proc102338%_))
            (let ((_%h102351%_ _%h102339%_))
              (let ()
                (let ((__tmp106393
                       (lambda (_%return102360%_)
                         (let ((__tmp106394
                                (lambda (_%k102362%_ _%v102363%_)
                                  (let ((_%$e102365%_
                                         (let ()
                                           (declare (not safe))
                                           (_%proc102343%_
                                            _%k102362%_
                                            _%v102363%_))))
                                    (if _%$e102365%_
                                        (_%return102360%_ _%$e102365%_)
                                        '#!void)))))
                           (declare (not safe))
                           (&HashTable-for-each _%h102351%_ __tmp106394))
                         _%default-value102340%_)))
                  (declare (not safe))
                  (##call-with-current-continuation __tmp106393))))))))
    (define __hash-find__0
      (lambda (_%proc102371%_ _%h102372%_)
        (let ((_%default-value102374%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102371%_
           _%h102372%_
           _%default-value102374%_))))
    (define __hash-find
      (lambda _g106396_
        (let ((_g106395_ (let () (declare (not safe)) (##length _g106396_))))
          (cond ((let () (declare (not safe)) (##fx= _g106395_ 2))
                 (apply (lambda (_%proc102371%_ _%h102372%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102371%_ _%h102372%_)))
                        _g106396_))
                ((let () (declare (not safe)) (##fx= _g106395_ 3))
                 (apply (lambda (_%proc102376%_
                                 _%h102377%_
                                 _%default-value102378%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102376%_
                             _%h102377%_
                             _%default-value102378%_)))
                        _g106396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106396_))))))
    (define hash-keys
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
              (let () (declare (not safe)) (__hash-keys _%h102327%_)))))))
    (define __hash-keys
      (lambda (_%h102302%_)
        (let ()
          (let ((_%h102305%_ _%h102302%_))
            (let ()
              (let ((_%result102314%_ '()))
                (let ((__tmp106397
                       (lambda (_%k102316%_ _%v102317%_)
                         (set! _%result102314%_
                               (cons _%k102316%_ _%result102314%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102305%_ __tmp106397))
                _%result102314%_))))))
    (define hash-values
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
              (let () (declare (not safe)) (__hash-values _%h102292%_)))))))
    (define __hash-values
      (lambda (_%h102267%_)
        (let ()
          (let ((_%h102270%_ _%h102267%_))
            (let ()
              (let ((_%result102279%_ '()))
                (let ((__tmp106398
                       (lambda (_%k102281%_ _%v102282%_)
                         (set! _%result102279%_
                               (cons _%v102282%_ _%result102279%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102270%_ __tmp106398))
                _%result102279%_))))))
    (define hash-copy
      (lambda (_%h102249%_)
        (let ()
          (let* ((_%h102255%_
                  (let ((_%$obj102252%_ _%h102249%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102252%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102252%_)))
                             '#t)
                        _%$obj102252%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102252%_)))))
                 (_%h102257%_ _%h102255%_))
            (let ()
              (let () (declare (not safe)) (__hash-copy _%h102257%_)))))))
    (define __hash-copy
      (lambda (_%h102237%_)
        (let ()
          (let ((_%h102240%_ _%h102237%_))
            (let ()
              (let () (declare (not safe)) (&HashTable-copy _%h102240%_)))))))
    (define hash-clear!
      (lambda (_%h102219%_)
        (let ()
          (let* ((_%h102225%_
                  (let ((_%$obj102222%_ _%h102219%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102222%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102222%_)))
                             '#t)
                        _%$obj102222%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102222%_)))))
                 (_%h102227%_ _%h102225%_))
            (let ()
              (let () (declare (not safe)) (__hash-clear! _%h102227%_)))))))
    (define __hash-clear!
      (lambda (_%h102207%_)
        (let ()
          (let ((_%h102210%_ _%h102207%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-clear! _%h102210%_)))))))
    (define hash-merge
      (lambda (_%h102188%_ . _%rest102189%_)
        (let ()
          (let* ((_%h102195%_
                  (let ((_%$obj102192%_ _%h102188%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102192%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102192%_)))
                             '#t)
                        _%$obj102192%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102192%_)))))
                 (_%h102197%_ _%h102195%_))
            (let ()
              (let ()
                (declare (not safe))
                (##apply __hash-merge _%h102197%_ _%rest102189%_)))))))
    (define __hash-merge
      (lambda (_%h102173%_ . _%rest102174%_)
        (let ()
          (let ((_%h102177%_ _%h102173%_))
            (let ()
              (let ((_%copy102186%_
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h102177%_))))
                (apply hash-merge! _%copy102186%_ _%rest102174%_)
                _%copy102186%_))))))
    (define hash-merge!
      (lambda (_%h102154%_ . _%rest102155%_)
        (let ()
          (let* ((_%h102161%_
                  (let ((_%$obj102158%_ _%h102154%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102158%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102158%_)))
                             '#t)
                        _%$obj102158%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102158%_)))))
                 (_%h102163%_ _%h102161%_))
            (let ()
              (let ()
                (declare (not safe))
                (##apply __hash-merge! _%h102163%_ _%rest102155%_)))))))
    (define __hash-merge!
      (lambda (_%h102117%_ . _%rest102118%_)
        (let ()
          (let ((_%h102121%_ _%h102117%_))
            (let ()
              (for-each
               (lambda (_%hr102130%_)
                 (let ()
                   (let* ((_%hr102136%_
                           (let ((_%$obj102133%_ _%hr102130%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj102133%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj102133%_)))
                                      '#t)
                                 _%$obj102133%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj102133%_)))))
                          (_%hr102138%_ _%hr102136%_))
                     (let ()
                       (let ((__tmp106399
                              (lambda (_%k102151%_ _%v102152%_)
                                (if (let ()
                                      (declare (not safe))
                                      (__hash-key? _%h102121%_ _%k102151%_))
                                    '#!void
                                    (let ()
                                      (declare (not safe))
                                      (&HashTable-set!
                                       _%h102121%_
                                       _%k102151%_
                                       _%v102152%_))))))
                         (declare (not safe))
                         (&HashTable-for-each _%hr102138%_ __tmp106399))))))
               _%rest102118%_)
              _%h102121%_)))))))
