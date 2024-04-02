(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712093475)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106379 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106379
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106359%_
        (apply make-instance UnboundKeyError::t _%$args106359%_)))
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
      (lambda (_%where106233%_ _%message106234%_ . _%irritants106235%_)
        (let ((__tmp106380
               (let ((__obj106373
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106373
                  _%message106234%_
                  'where:
                  _%where106233%_
                  'irritants:
                  _%irritants106235%_)
                 __obj106373)))
          (declare (not safe))
          (raise __tmp106380))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106381 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106381
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
      (lambda (_%obj106231%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106231%_))))
    (define try-HashTable
      (lambda (_%obj106229%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106229%_))))
    (define HashTable?
      (lambda (_%obj106227%_)
        (let ((__tmp106382
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106227%_ __tmp106382))))
    (define is-HashTable?
      (lambda (_%obj106225%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106225%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106209%_)
        (let* ((_%self106214%_
                (let ((_%$obj106211%_ _%self106209%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106211%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106211%_)))
                           '#t)
                      _%$obj106211%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106211%_)))))
               (_%self106216%_ _%self106214%_))
          (let ()
            (let ()
              (declare (not safe))
              (__HashTable-clear! _%self106216%_))))))
    (define __HashTable-clear!
      (lambda (_%self106199%_)
        (let ((_%self106201%_ _%self106199%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-clear! _%self106201%_))))))
    (define &HashTable-clear!
      (lambda (_%self106184%_)
        (let ((_%self106186%_ _%self106184%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106196%_
                     (##unchecked-structure-ref _%self106186%_ '1 '#f 'clear!))
                    (_%f106197%_
                     (##unchecked-structure-ref
                      _%self106186%_
                      '2
                      '#f
                      'clear!)))
                (_%f106197%_ _%obj106196%_)))))))
    (define HashTable-copy
      (lambda (_%self106168%_)
        (let* ((_%self106173%_
                (let ((_%$obj106170%_ _%self106168%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106170%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106170%_)))
                           '#t)
                      _%$obj106170%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106170%_)))))
               (_%self106175%_ _%self106173%_))
          (let ()
            (let () (declare (not safe)) (__HashTable-copy _%self106175%_))))))
    (define __HashTable-copy
      (lambda (_%self106158%_)
        (let ((_%self106160%_ _%self106158%_))
          (let ()
            (let ((__tmp106383
                   (let ()
                     (declare (not safe))
                     (&HashTable-copy _%self106160%_))))
              (declare (not safe))
              (make-HashTable __tmp106383))))))
    (define &HashTable-copy
      (lambda (_%self106143%_)
        (let ((_%self106145%_ _%self106143%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106155%_
                     (##unchecked-structure-ref _%self106145%_ '1 '#f 'copy))
                    (_%f106156%_
                     (##unchecked-structure-ref _%self106145%_ '3 '#f 'copy)))
                (_%f106156%_ _%obj106155%_)))))))
    (define HashTable-delete!
      (lambda (_%self106126%_ _%key106127%_)
        (let* ((_%self106132%_
                (let ((_%$obj106129%_ _%self106126%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106129%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106129%_)))
                           '#t)
                      _%$obj106129%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106129%_)))))
               (_%self106134%_ _%self106132%_))
          (let ()
            (let ()
              (declare (not safe))
              (__HashTable-delete! _%self106134%_ _%key106127%_))))))
    (define __HashTable-delete!
      (lambda (_%self106115%_ _%key106116%_)
        (let ((_%self106118%_ _%self106115%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%self106118%_ _%key106116%_))))))
    (define &HashTable-delete!
      (lambda (_%self106099%_ _%key106100%_)
        (let ((_%self106102%_ _%self106099%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106112%_
                     (##unchecked-structure-ref
                      _%self106102%_
                      '1
                      '#f
                      'delete!))
                    (_%f106113%_
                     (##unchecked-structure-ref
                      _%self106102%_
                      '4
                      '#f
                      'delete!)))
                (_%f106113%_ _%obj106112%_ _%key106100%_)))))))
    (define HashTable-for-each
      (lambda (_%self106072%_ _%proc106073%_)
        (let* ((_%self106078%_
                (let ((_%$obj106075%_ _%self106072%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106075%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106075%_)))
                           '#t)
                      _%$obj106075%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106075%_)))))
               (_%self106080%_ _%self106078%_))
          (if (let () (declare (not safe)) (procedure? _%proc106073%_))
              (let ()
                (let ((_%proc106089%_ _%proc106073%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__HashTable-for-each _%self106080%_ _%proc106089%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
               'contract:
               'procedure?
               'value:
               _%proc106073%_)))))
    (define __HashTable-for-each
      (lambda (_%self106053%_ _%proc106054%_)
        (let ((_%self106056%_ _%self106053%_))
          (let ((_%proc106063%_ _%proc106054%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-for-each _%self106056%_ _%proc106063%_)))))))
    (define &HashTable-for-each
      (lambda (_%self106029%_ _%proc106030%_)
        (let ((_%self106032%_ _%self106029%_))
          (let ((_%proc106039%_ _%proc106030%_))
            (let ()
              (let ()
                (declare (not safe))
                (let ((_%obj106050%_
                       (##unchecked-structure-ref
                        _%self106032%_
                        '1
                        '#f
                        'for-each))
                      (_%f106051%_
                       (##unchecked-structure-ref
                        _%self106032%_
                        '5
                        '#f
                        'for-each)))
                  (_%f106051%_ _%obj106050%_ _%proc106039%_))))))))
    (define HashTable-length
      (lambda (_%self106013%_)
        (let* ((_%self106018%_
                (let ((_%$obj106015%_ _%self106013%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106015%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106015%_)))
                           '#t)
                      _%$obj106015%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106015%_)))))
               (_%self106020%_ _%self106018%_))
          (let ()
            (let ()
              (declare (not safe))
              (__HashTable-length _%self106020%_))))))
    (define __HashTable-length
      (lambda (_%self106000%_)
        (let ((_%self106002%_ _%self106000%_))
          (let ()
            (let ((_%val106010%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-length _%self106002%_))))
              (if (let () (declare (not safe)) (fixnum? _%val106010%_))
                  _%val106010%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" fixnum::t _%val106010%_))))))))
    (define &HashTable-length
      (lambda (_%self105985%_)
        (let ((_%self105987%_ _%self105985%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105997%_
                     (##unchecked-structure-ref _%self105987%_ '1 '#f 'length))
                    (_%f105998%_
                     (##unchecked-structure-ref
                      _%self105987%_
                      '6
                      '#f
                      'length)))
                (_%f105998%_ _%obj105997%_)))))))
    (define HashTable-ref
      (lambda (_%self105967%_ _%key105968%_ _%default105969%_)
        (let* ((_%self105974%_
                (let ((_%$obj105971%_ _%self105967%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105971%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105971%_)))
                           '#t)
                      _%$obj105971%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105971%_)))))
               (_%self105976%_ _%self105974%_))
          (let ()
            (let ()
              (declare (not safe))
              (__HashTable-ref
               _%self105976%_
               _%key105968%_
               _%default105969%_))))))
    (define __HashTable-ref
      (lambda (_%self105955%_ _%key105956%_ _%default105957%_)
        (let ((_%self105959%_ _%self105955%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-ref
               _%self105959%_
               _%key105956%_
               _%default105957%_))))))
    (define &HashTable-ref
      (lambda (_%self105938%_ _%key105939%_ _%default105940%_)
        (let ((_%self105942%_ _%self105938%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105952%_
                     (##unchecked-structure-ref _%self105942%_ '1 '#f 'ref))
                    (_%f105953%_
                     (##unchecked-structure-ref _%self105942%_ '7 '#f 'ref)))
                (_%f105953%_
                 _%obj105952%_
                 _%key105939%_
                 _%default105940%_)))))))
    (define HashTable-set!
      (lambda (_%self105920%_ _%key105921%_ _%value105922%_)
        (let* ((_%self105927%_
                (let ((_%$obj105924%_ _%self105920%_))
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
               (_%self105929%_ _%self105927%_))
          (let ()
            (let ()
              (declare (not safe))
              (__HashTable-set!
               _%self105929%_
               _%key105921%_
               _%value105922%_))))))
    (define __HashTable-set!
      (lambda (_%self105908%_ _%key105909%_ _%value105910%_)
        (let ((_%self105912%_ _%self105908%_))
          (let ()
            (let ()
              (declare (not safe))
              (&HashTable-set!
               _%self105912%_
               _%key105909%_
               _%value105910%_))))))
    (define &HashTable-set!
      (lambda (_%self105891%_ _%key105892%_ _%value105893%_)
        (let ((_%self105895%_ _%self105891%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105905%_
                     (##unchecked-structure-ref _%self105895%_ '1 '#f 'set!))
                    (_%f105906%_
                     (##unchecked-structure-ref _%self105895%_ '8 '#f 'set!)))
                (_%f105906%_ _%obj105905%_ _%key105892%_ _%value105893%_)))))))
    (define HashTable-update!
      (lambda (_%self105862%_ _%key105863%_ _%proc105864%_ _%default105865%_)
        (let* ((_%self105870%_
                (let ((_%$obj105867%_ _%self105862%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105867%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105867%_)))
                           '#t)
                      _%$obj105867%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105867%_)))))
               (_%self105872%_ _%self105870%_))
          (if (let () (declare (not safe)) (procedure? _%proc105864%_))
              (let ()
                (let ((_%proc105881%_ _%proc105864%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__HashTable-update!
                       _%self105872%_
                       _%key105863%_
                       _%proc105881%_
                       _%default105865%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
               'contract:
               'procedure?
               'value:
               _%proc105864%_)))))
    (define __HashTable-update!
      (lambda (_%self105841%_ _%key105842%_ _%proc105843%_ _%default105844%_)
        (let ((_%self105846%_ _%self105841%_))
          (let ((_%proc105853%_ _%proc105843%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _%self105846%_
                 _%key105842%_
                 _%proc105853%_
                 _%default105844%_)))))))
    (define &HashTable-update!
      (lambda (_%self105813%_ _%key105814%_ _%proc105815%_ _%default105816%_)
        (let ((_%self105818%_ _%self105813%_))
          (let ((_%proc105825%_ _%proc105815%_))
            (let ()
              (let ()
                (declare (not safe))
                (let ((_%obj105836%_
                       (##unchecked-structure-ref
                        _%self105818%_
                        '1
                        '#f
                        'update!))
                      (_%f105838%_
                       (##unchecked-structure-ref
                        _%self105818%_
                        '9
                        '#f
                        'update!)))
                  (_%f105838%_
                   _%obj105836%_
                   _%key105814%_
                   _%proc105825%_
                   _%default105816%_))))))))
    (define Locker::t
      (let ((__tmp106384 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106384
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
      (lambda (_%obj105811%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj105811%_))))
    (define try-Locker
      (lambda (_%obj105809%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj105809%_))))
    (define Locker?
      (lambda (_%obj105807%_)
        (let ((__tmp106385
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj105807%_ __tmp106385))))
    (define is-Locker?
      (lambda (_%obj105805%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj105805%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self105789%_)
        (let* ((_%self105794%_
                (let ((_%$obj105791%_ _%self105789%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105791%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105791%_)))
                           '#t)
                      _%$obj105791%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105791%_)))))
               (_%self105796%_ _%self105794%_))
          (let ()
            (let ()
              (declare (not safe))
              (__Locker-read-lock! _%self105796%_))))))
    (define __Locker-read-lock!
      (lambda (_%self105779%_)
        (let ((_%self105781%_ _%self105779%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-read-lock! _%self105781%_))))))
    (define &Locker-read-lock!
      (lambda (_%self105764%_)
        (let ((_%self105766%_ _%self105764%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105776%_
                     (##unchecked-structure-ref
                      _%self105766%_
                      '1
                      '#f
                      'read-lock!))
                    (_%f105777%_
                     (##unchecked-structure-ref
                      _%self105766%_
                      '2
                      '#f
                      'read-lock!)))
                (_%f105777%_ _%obj105776%_)))))))
    (define Locker-read-unlock!
      (lambda (_%self105748%_)
        (let* ((_%self105753%_
                (let ((_%$obj105750%_ _%self105748%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105750%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105750%_)))
                           '#t)
                      _%$obj105750%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105750%_)))))
               (_%self105755%_ _%self105753%_))
          (let ()
            (let ()
              (declare (not safe))
              (__Locker-read-unlock! _%self105755%_))))))
    (define __Locker-read-unlock!
      (lambda (_%self105738%_)
        (let ((_%self105740%_ _%self105738%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-read-unlock! _%self105740%_))))))
    (define &Locker-read-unlock!
      (lambda (_%self105723%_)
        (let ((_%self105725%_ _%self105723%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105735%_
                     (##unchecked-structure-ref
                      _%self105725%_
                      '1
                      '#f
                      'read-unlock!))
                    (_%f105736%_
                     (##unchecked-structure-ref
                      _%self105725%_
                      '3
                      '#f
                      'read-unlock!)))
                (_%f105736%_ _%obj105735%_)))))))
    (define Locker-write-lock!
      (lambda (_%self105707%_)
        (let* ((_%self105712%_
                (let ((_%$obj105709%_ _%self105707%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105709%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105709%_)))
                           '#t)
                      _%$obj105709%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105709%_)))))
               (_%self105714%_ _%self105712%_))
          (let ()
            (let ()
              (declare (not safe))
              (__Locker-write-lock! _%self105714%_))))))
    (define __Locker-write-lock!
      (lambda (_%self105697%_)
        (let ((_%self105699%_ _%self105697%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-write-lock! _%self105699%_))))))
    (define &Locker-write-lock!
      (lambda (_%self105682%_)
        (let ((_%self105684%_ _%self105682%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105694%_
                     (##unchecked-structure-ref
                      _%self105684%_
                      '1
                      '#f
                      'write-lock!))
                    (_%f105695%_
                     (##unchecked-structure-ref
                      _%self105684%_
                      '4
                      '#f
                      'write-lock!)))
                (_%f105695%_ _%obj105694%_)))))))
    (define Locker-write-unlock!
      (lambda (_%self105666%_)
        (let* ((_%self105671%_
                (let ((_%$obj105668%_ _%self105666%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105668%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105668%_)))
                           '#t)
                      _%$obj105668%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105668%_)))))
               (_%self105673%_ _%self105671%_))
          (let ()
            (let ()
              (declare (not safe))
              (__Locker-write-unlock! _%self105673%_))))))
    (define __Locker-write-unlock!
      (lambda (_%self105656%_)
        (let ((_%self105658%_ _%self105656%_))
          (let ()
            (let ()
              (declare (not safe))
              (&Locker-write-unlock! _%self105658%_))))))
    (define &Locker-write-unlock!
      (lambda (_%self105639%_)
        (let ((_%self105641%_ _%self105639%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105651%_
                     (##unchecked-structure-ref
                      _%self105641%_
                      '1
                      '#f
                      'write-unlock!))
                    (_%f105653%_
                     (##unchecked-structure-ref
                      _%self105641%_
                      '5
                      '#f
                      'write-unlock!)))
                (_%f105653%_ _%obj105651%_)))))))
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
      (lambda (_%table105632%_
               _%key105633%_
               _%update105634%_
               _%default105635%_)
        (let ((_%result105637%_
               (table-ref _%table105632%_ _%key105633%_ _%default105635%_)))
          (table-set!
           _%table105632%_
           _%key105633%_
           (_%update105634%_ _%default105635%_)))))
    (define gambit-table-for-each
      (lambda (_%table105629%_ _%proc105630%_)
        (table-for-each _%proc105630%_ _%table105629%_)))
    (define gambit-table-clear!
      (lambda (_%table105627%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table105627%_ '0 '5 '#f '#f))))
    (let ((__tmp106386 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106386 'ref table-ref))
    (let ((__tmp106387 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106387 'set! table-set!))
    (let ((__tmp106388 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106388 'update! gambit-table-update!))
    (let ((__tmp106389 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106389 'delete! table-set!))
    (let ((__tmp106390 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106390 'for-each gambit-table-for-each))
    (let ((__tmp106391 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106391 'length table-length))
    (let ((__tmp106392 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106392 'copy table-copy))
    (let ((__tmp106393 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106393 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots105609%_ '(table count free hash test seed))
             (_%slot-vector105611%_ (list->vector (cons '#f _%slots105609%_)))
             (_%slot-table105618%_
              (let ((_%slot-table105613%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106396
                       (lambda (_%slot105615%_ _%field105616%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105613%_
                            _%slot105615%_
                            _%field105616%_))
                         (let ((__tmp106397
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105615%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105613%_
                            __tmp106397
                            _%field105616%_))))
                      (__tmp106394
                       (let ((__tmp106395
                              (let ()
                                (declare (not safe))
                                (##length _%slots105609%_))))
                         (declare (not safe))
                         (##iota __tmp106395 '1))))
                  (declare (not safe))
                  (##for-each __tmp106396 _%slots105609%_ __tmp106394))
                _%slot-table105613%_))
             (_%flags105620%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105622%_ '#())
             (_%properties105624%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105609%_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp106398 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _%flags105620%_
           __table::t
           _%fields105622%_
           __tmp106398
           _%slot-vector105611%_
           _%slot-table105618%_
           _%properties105624%_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_%slots105591%_ '(gcht immediate))
             (_%slot-vector105593%_ (list->vector (cons '#f _%slots105591%_)))
             (_%slot-table105600%_
              (let ((_%slot-table105595%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106401
                       (lambda (_%slot105597%_ _%field105598%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105595%_
                            _%slot105597%_
                            _%field105598%_))
                         (let ((__tmp106402
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105597%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105595%_
                            __tmp106402
                            _%field105598%_))))
                      (__tmp106399
                       (let ((__tmp106400
                              (let ()
                                (declare (not safe))
                                (##length _%slots105591%_))))
                         (declare (not safe))
                         (##iota __tmp106400 '1))))
                  (declare (not safe))
                  (##for-each __tmp106401 _%slots105591%_ __tmp106399))
                _%slot-table105595%_))
             (_%flags105602%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105604%_ '#())
             (_%properties105606%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105591%_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp106403 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _%flags105602%_
           __gc-table::t
           _%fields105604%_
           __tmp106403
           _%slot-vector105593%_
           _%slot-table105600%_
           _%properties105606%_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp106405 (list))
            (__tmp106404
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106405
         '(table lock)
         __tmp106404
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args105588%_
        (apply make-instance locked-hash-table::t _%$args105588%_)))
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
      (let ((__tmp106407 (list))
            (__tmp106406
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106407
         '(table key-check)
         __tmp106406
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args105585%_
        (apply make-instance checked-hash-table::t _%$args105585%_)))
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
      (let ((__tmp106409 (list hash-table::t))
            (__tmp106408 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106409
         '()
         __tmp106408
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args105582%_
        (apply make-instance eq-hash-table::t _%$args105582%_)))
    (define eqv-hash-table::t
      (let ((__tmp106411 (list hash-table::t))
            (__tmp106410 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106411
         '()
         __tmp106410
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args105579%_
        (apply make-instance eqv-hash-table::t _%$args105579%_)))
    (define symbol-hash-table::t
      (let ((__tmp106413 (list hash-table::t))
            (__tmp106412 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106413
         '()
         __tmp106412
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args105576%_
        (apply make-instance symbol-hash-table::t _%$args105576%_)))
    (define string-hash-table::t
      (let ((__tmp106415 (list hash-table::t))
            (__tmp106414 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106415
         '()
         __tmp106414
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args105573%_
        (apply make-instance string-hash-table::t _%$args105573%_)))
    (define immediate-hash-table::t
      (let ((__tmp106417 (list hash-table::t))
            (__tmp106416 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106417
         '()
         __tmp106416
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args105570%_
        (apply make-instance immediate-hash-table::t _%$args105570%_)))
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
      (lambda (_%obj105568%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj105568%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj105566%_)
        (let () (declare (not safe)) (is-HashTable? _%obj105566%_))))
    (define _%locked-hash-table::ref101620%_
      (lambda (_%self105542%_ _%key105544%_ _%default105545%_)
        (let ()
          (let ((_%self105548%_ _%self105542%_))
            (let ()
              (let ((_%h105558%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105548%_ '1 '#f '#f)))
                    (_%l105560%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105548%_ '2 '#f '#f))))
                (let ((__tmp106420
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l105560%_))))
                      (__tmp106419
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-ref
                            _%h105558%_
                            _%key105544%_
                            _%default105545%_))))
                      (__tmp106418
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l105560%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106420 __tmp106419 __tmp106418))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref101620%_
       '#f))
    (define _%locked-hash-table::set!101622%_
      (lambda (_%self105395%_ _%key105397%_ _%value105398%_)
        (let ()
          (let ((_%self105401%_ _%self105395%_))
            (let ()
              (let ((_%h105411%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105401%_ '1 '#f '#f)))
                    (_%l105413%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105401%_ '2 '#f '#f))))
                (let ((__tmp106423
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105413%_))))
                      (__tmp106422
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-set!
                            _%h105411%_
                            _%key105397%_
                            _%value105398%_))))
                      (__tmp106421
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105413%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106423 __tmp106422 __tmp106421))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!101622%_
       '#f))
    (define _%locked-hash-table::update!101624%_
      (lambda (_%self105247%_ _%key105249%_ _%update105250%_ _%default105251%_)
        (let ()
          (let ((_%self105254%_ _%self105247%_))
            (let ()
              (let ((_%h105264%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105254%_ '1 '#f '#f)))
                    (_%l105266%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105254%_ '2 '#f '#f))))
                (let ((__tmp106426
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105266%_))))
                      (__tmp106425
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-update!
                            _%h105264%_
                            _%key105249%_
                            _%update105250%_
                            _%default105251%_))))
                      (__tmp106424
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105266%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106426 __tmp106425 __tmp106424))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!101624%_
       '#f))
    (define _%locked-hash-table::delete!101626%_
      (lambda (_%self105101%_ _%key105103%_)
        (let ()
          (let ((_%self105106%_ _%self105101%_))
            (let ()
              (let ((_%h105116%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105106%_ '1 '#f '#f)))
                    (_%l105118%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105106%_ '2 '#f '#f))))
                (let ((__tmp106429
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105118%_))))
                      (__tmp106428
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-delete! _%h105116%_ _%key105103%_))))
                      (__tmp106427
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105118%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106429 __tmp106428 __tmp106427))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!101626%_
       '#f))
    (define _%locked-hash-table::for-each101628%_
      (lambda (_%self104955%_ _%proc104957%_)
        (let ()
          (let ((_%self104960%_ _%self104955%_))
            (let ()
              (let ((_%h104970%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104960%_ '1 '#f '#f)))
                    (_%l104972%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104960%_ '2 '#f '#f))))
                (let ((__tmp106432
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104972%_))))
                      (__tmp106431
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-for-each _%h104970%_ _%proc104957%_))))
                      (__tmp106430
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104972%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106432 __tmp106431 __tmp106430))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each101628%_
       '#f))
    (define _%locked-hash-table::length101630%_
      (lambda (_%self104810%_)
        (let ()
          (let ((_%self104814%_ _%self104810%_))
            (let ()
              (let ((_%h104824%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104814%_ '1 '#f '#f)))
                    (_%l104826%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104814%_ '2 '#f '#f))))
                (let ((__tmp106435
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104826%_))))
                      (__tmp106434
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-length _%h104824%_))))
                      (__tmp106433
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104826%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106435 __tmp106434 __tmp106433))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length101630%_
       '#f))
    (define _%locked-hash-table::copy101632%_
      (lambda (_%self104665%_)
        (let ()
          (let ((_%self104669%_ _%self104665%_))
            (let ()
              (let ((_%h104679%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104669%_ '1 '#f '#f)))
                    (_%l104681%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104669%_ '2 '#f '#f))))
                (let ((__tmp106438
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104681%_))))
                      (__tmp106437
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-copy _%h104679%_))))
                      (__tmp106436
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104681%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106438 __tmp106437 __tmp106436))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy101632%_
       '#f))
    (define _%locked-hash-table::clear!101634%_
      (lambda (_%self104520%_)
        (let ()
          (let ((_%self104524%_ _%self104520%_))
            (let ()
              (let ((_%h104534%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104524%_ '1 '#f '#f)))
                    (_%l104536%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104524%_ '2 '#f '#f))))
                (let ((__tmp106441
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l104536%_))))
                      (__tmp106440
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-clear! _%h104534%_))))
                      (__tmp106439
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l104536%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106441 __tmp106440 __tmp106439))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!101634%_
       '#f))
    (let ((__tmp106442 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106442 'read-lock! mutex-lock!))
    (let ((__tmp106443 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106443 'read-unlock! mutex-unlock!))
    (let ((__tmp106444 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106444 'write-lock! mutex-lock!))
    (let ((__tmp106445 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106445 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref101912%_
      (lambda (_%self104373%_ _%key104374%_ _%default104375%_)
        (let ()
          (let ((_%self104378%_ _%self104373%_))
            (let ()
              (let ((_%h104388%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104378%_ '1 '#f '#f)))
                    (_%key?104390%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104378%_ '2 '#f '#f))))
                ((lambda (_%g104392104394%_)
                   (if (_%g104392104394%_ _%key104374%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104374%_))))
                 _%key?104390%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-ref
                   _%h104388%_
                   _%key104374%_
                   _%default104375%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref101912%_
       '#f))
    (define _%checked-hash-table::set!101914%_
      (lambda (_%self104226%_ _%key104227%_ _%value104228%_)
        (let ()
          (let ((_%self104231%_ _%self104226%_))
            (let ()
              (let ((_%h104241%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104231%_ '1 '#f '#f)))
                    (_%key?104243%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104231%_ '2 '#f '#f))))
                ((lambda (_%g104245104247%_)
                   (if (_%g104245104247%_ _%key104227%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104227%_))))
                 _%key?104243%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-set!
                   _%h104241%_
                   _%key104227%_
                   _%value104228%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!101914%_
       '#f))
    (define _%checked-hash-table::update!101916%_
      (lambda (_%self104080%_ _%key104081%_ _%update104082%_ _%default104083%_)
        (let ()
          (let ((_%self104086%_ _%self104080%_))
            (let ()
              (let ((_%h104096%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104086%_ '1 '#f '#f)))
                    (_%key?104098%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104086%_ '2 '#f '#f))))
                ((lambda (_%key?104101%_)
                   (if (_%key?104101%_ _%key104081%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104081%_)))
                   (if (let ()
                         (declare (not safe))
                         (procedure? _%update104082%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%update104082%_))))
                 _%key?104098%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-update!
                   _%h104096%_
                   _%key104081%_
                   _%update104082%_
                   _%default104083%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!101916%_
       '#f))
    (define _%checked-hash-table::delete!101918%_
      (lambda (_%self103934%_ _%key103935%_)
        (let ()
          (let ((_%self103938%_ _%self103934%_))
            (let ()
              (let ((_%h103948%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103938%_ '1 '#f '#f)))
                    (_%key?103950%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103938%_ '2 '#f '#f))))
                ((lambda (_%g103952103954%_)
                   (if (_%g103952103954%_ _%key103935%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key103935%_))))
                 _%key?103950%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-delete! _%h103948%_ _%key103935%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!101918%_
       '#f))
    (define _%checked-hash-table::for-each101920%_
      (lambda (_%self103790%_ _%proc103791%_)
        (let ()
          (let ((_%self103794%_ _%self103790%_))
            (let ()
              (let ((_%h103804%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103794%_ '1 '#f '#f)))
                    (_%key?103806%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103794%_ '2 '#f '#f))))
                ((lambda (_%_103809%_)
                   (if (let ()
                         (declare (not safe))
                         (procedure? _%proc103791%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%proc103791%_))))
                 _%key?103806%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-for-each _%h103804%_ _%proc103791%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each101920%_
       '#f))
    (define _%checked-hash-table::length101922%_
      (lambda (_%self103649%_)
        (let ()
          (let ((_%self103652%_ _%self103649%_))
            (let ()
              (let ((_%h103662%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103652%_ '1 '#f '#f)))
                    (_%key?103664%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103652%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%h103662%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length101922%_
       '#f))
    (define _%checked-hash-table::copy101924%_
      (lambda (_%self103508%_)
        (let ()
          (let ((_%self103511%_ _%self103508%_))
            (let ()
              (let ((_%h103521%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103511%_ '1 '#f '#f)))
                    (_%key?103523%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103511%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%h103521%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy101924%_
       '#f))
    (define _%checked-hash-table::clear!101926%_
      (lambda (_%self103367%_)
        (let ()
          (let ((_%self103370%_ _%self103367%_))
            (let ()
              (let ((_%h103380%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103370%_ '1 '#f '#f)))
                    (_%key?103382%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103370%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-clear! _%h103380%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!101926%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103237%_
               _%count103238%_
               _%free103239%_
               _%hash103240%_
               _%test103241%_
               _%seed103242%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103237%_
           _%count103238%_
           _%free103239%_
           _%hash103240%_
           _%test103241%_
           _%seed103242%_))))
    (define make-hash-table__%
      (lambda (_%_103059%_
               _%size-hint103049103061%_
               _%seed103050103063%_
               _%test103051103065%_
               _%hash103052103067%_
               _%lock103053103069%_
               _%check103054103071%_
               _%weak-keys103055103073%_
               _%weak-values103056103075%_)
        (let* ((_%size-hint103078%_
                (if (eq? _%size-hint103049103061%_ absent-value)
                    '#f
                    _%size-hint103049103061%_))
               (_%seed103080%_
                (if (eq? _%seed103050103063%_ absent-value)
                    '#f
                    _%seed103050103063%_))
               (_%test103082%_
                (if (eq? _%test103051103065%_ absent-value)
                    equal?
                    _%test103051103065%_))
               (_%hash103084%_
                (if (eq? _%hash103052103067%_ absent-value)
                    '#f
                    _%hash103052103067%_))
               (_%lock103086%_
                (if (eq? _%lock103053103069%_ absent-value)
                    '#f
                    _%lock103053103069%_))
               (_%check103088%_
                (if (eq? _%check103054103071%_ absent-value)
                    '#f
                    _%check103054103071%_))
               (_%weak-keys103090%_
                (if (eq? _%weak-keys103055103073%_ absent-value)
                    '#f
                    _%weak-keys103055103073%_))
               (_%weak-values103092%_
                (if (eq? _%weak-values103056103075%_ absent-value)
                    '#f
                    _%weak-values103056103075%_)))
          (letrec ((_%table-seed103094%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103080%_))
                          _%seed103080%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103095%_
                    (lambda (_%ht103215%_)
                      (if _%lock103086%_
                          (let ((_%$obj103220%_
                                 (let ((__tmp106446
                                        (let ((_%$obj103217%_ _%lock103086%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103217%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103217%_)))
                                                   '#t)
                                              _%$obj103217%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103217%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103215%_
                                    __tmp106446))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103220%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103220%_)))
                                     '#t)
                                _%$obj103220%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103220%_))))
                          _%ht103215%_)))
                   (_%wrap-checked103096%_
                    (lambda (_%ht103209%_ _%implicit103210%_)
                      (if _%check103088%_
                          (let ((_%$obj103212%_
                                 (let ((__tmp106447
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103088%_))
                                            _%check103088%_
                                            _%implicit103210%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103209%_
                                    __tmp106447))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103212%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103212%_)))
                                     '#t)
                                _%$obj103212%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103212%_))))
                          _%ht103209%_)))
                   (_%make103097%_
                    (lambda (_%kons103194%_
                             _%key?103195%_
                             _%hash103196%_
                             _%test103197%_)
                      (let* ((_%size103199%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103078%_)))
                             (_%table103201%_
                              (let ((__tmp106448 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103199%_ __tmp106448)))
                             (_%ht103206%_
                              (let ((_%$obj103203%_
                                     (_%kons103194%_
                                      _%table103201%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103199%_ '2))
                                      _%hash103196%_
                                      _%test103197%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103094%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103203%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103203%_)))
                                         '#t)
                                    _%$obj103203%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103203%_))))))
                        (let ((__tmp106449
                               (let ()
                                 (declare (not safe))
                                 (_%wrap-lock103095%_ _%ht103206%_))))
                          (declare (not safe))
                          (_%wrap-checked103096%_
                           __tmp106449
                           _%key?103195%_)))))
                   (_%make-gc-hash-table103098%_
                    (lambda ()
                      (let* ((_%ht103192%_
                              (let ((_%$obj103189%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103078%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103189%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103189%_)))
                                         '#t)
                                    _%$obj103189%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103189%_)))))
                             (__tmp106450
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103095%_ _%ht103192%_))))
                        (declare (not safe))
                        (_%wrap-checked103096%_ __tmp106450 true))))
                   (_%make-gambit-table103099%_
                    (lambda ()
                      (let* ((_%size103167%_
                              (let ((_%$e103164%_ _%size-hint103078%_))
                                (if _%$e103164%_
                                    _%$e103164%_
                                    (macro-absent-obj))))
                             (_%test103172%_
                              (let ((_%$e103169%_ _%test103082%_))
                                (if _%$e103169%_ _%$e103169%_ equal?)))
                             (_%hash103180%_
                              (let ((_%$e103174%_ _%hash103084%_))
                                (if _%$e103174%_
                                    _%$e103174%_
                                    (if (eq? _%test103172%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103172%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103185%_
                              (let ((_%$obj103182%_
                                     (make-table
                                      'size:
                                      _%size103167%_
                                      'test:
                                      _%test103172%_
                                      'hash:
                                      _%hash103180%_
                                      'weak-keys:
                                      _%weak-keys103090%_
                                      'weak-values:
                                      _%weak-values103092%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103182%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103182%_)))
                                         '#t)
                                    _%$obj103182%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103182%_))))))
                        (let ((__tmp106451
                               (let ()
                                 (declare (not safe))
                                 (_%wrap-lock103095%_ _%ht103185%_))))
                          (declare (not safe))
                          (_%wrap-checked103096%_ __tmp106451 true))))))
            (if (or _%weak-keys103090%_ _%weak-values103092%_)
                (let ()
                  (let () (declare (not safe)) (_%make-gambit-table103099%_)))
                (if (and (or (eq? _%test103082%_ eq?)
                             (eq? _%test103082%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103084%_))
                             (eq? _%hash103084%_ eq?-hash)
                             (eq? _%hash103084%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103080%_)))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (_%make-gc-hash-table103098%_)))
                    (if (and (or (eq? _%test103082%_ eq?)
                                 (eq? _%test103082%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103084%_))
                                 (eq? _%hash103084%_ eq?-hash)
                                 (eq? _%hash103084%_ eq-hash)))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (_%make103097%_
                             make-eq-hash-table
                             true
                             eq-hash
                             eq?)))
                        (if (and (or (eq? _%test103082%_ eqv?)
                                     (eq? _%test103082%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103084%_))
                                     (eq? _%hash103084%_ eqv?-hash)
                                     (eq? _%hash103084%_ eqv-hash)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (_%make103097%_
                                 make-eqv-hash-table
                                 true
                                 eqv-hash
                                 eqv?)))
                            (if (and (or (eq? _%test103082%_ eq?)
                                         (eq? _%test103082%_ ##eq?))
                                     (or (eq? _%hash103084%_ symbolic-hash)
                                         (eq? _%hash103084%_ ##symbol-hash)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%make103097%_
                                     make-symbol-hash-table
                                     symbolic?
                                     symbolic-hash
                                     eq?)))
                                (if (and (or (eq? _%test103082%_ eq?)
                                             (eq? _%test103082%_ ##eq?))
                                         (eq? _%hash103084%_ immediate-hash))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%make103097%_
                                         make-immediate-hash-table
                                         immediate?
                                         immediate-hash
                                         eq?)))
                                    (if (and (or (eq? _%test103082%_ equal?)
                                                 (eq? _%test103082%_ ##equal?)
                                                 (eq? _%test103082%_ string=?)
                                                 (eq? _%test103082%_
                                                      ##string=?))
                                             (or (eq? _%hash103084%_
                                                      string-hash)
                                                 (eq? _%hash103084%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (_%make103097%_
                                             make-string-hash-table
                                             string?
                                             string-hash
                                             ##string=?)))
                                        (if (and (eq? _%test103082%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103084%_)))
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (_%make103097%_
                                                 make-generic-hash-table
                                                 true
                                                 equal?-hash
                                                 equal?)))
                                            (if (let ((__tmp106452
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103082%_))))
                                                  (declare (not safe))
                                                  (not __tmp106452))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test103082%_)))
                                                (if (let ((__tmp106453
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103084%_))))
                                                      (declare (not safe))
                                                      (not __tmp106453))
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash103084%_)))
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%make103097%_
                                                         make-generic-hash-table
                                                         true
                                                         _%hash103084%_
                                                         _%test103082%_)))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103227%_ . _%args103228%_)
        (apply make-hash-table__%
               _%@@keywords103227%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103227%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103227%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103227%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103227%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103227%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103227%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103227%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103227%_
                  'weak-values:
                  absent-value))
               _%args103228%_)))
    (define make-hash-table
      (lambda _%args103057103234%_
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
               _%args103057103234%_)))
    (define make-hash-table-eq
      (lambda _%args103046%_
        (apply make-hash-table 'test: eq? _%args103046%_)))
    (define make-hash-table-eqv
      (lambda _%args103044%_
        (apply make-hash-table 'test: eqv? _%args103044%_)))
    (define make-hash-table-symbolic
      (lambda _%args103042%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103042%_)))
    (define make-hash-table-string
      (lambda _%args103040%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103040%_)))
    (define make-hash-table-immediate
      (lambda _%args103038%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103038%_)))
    (define list->hash-table
      (lambda (_%lst103035%_ . _%args103036%_)
        (let ((__tmp106454
               (apply make-hash-table
                      'size:
                      (length _%lst103035%_)
                      _%args103036%_)))
          (declare (not safe))
          (list->hash-table! _%lst103035%_ __tmp106454))))
    (define list->hash-table-eq
      (lambda (_%lst103032%_ . _%args103033%_)
        (let ((__tmp106455
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103032%_)
                      _%args103033%_)))
          (declare (not safe))
          (list->hash-table! _%lst103032%_ __tmp106455))))
    (define list->hash-table-eqv
      (lambda (_%lst103029%_ . _%args103030%_)
        (let ((__tmp106456
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103029%_)
                      _%args103030%_)))
          (declare (not safe))
          (list->hash-table! _%lst103029%_ __tmp106456))))
    (define list->hash-table-symbolic
      (lambda (_%lst103026%_ . _%args103027%_)
        (let ((__tmp106457
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103026%_)
                      _%args103027%_)))
          (declare (not safe))
          (list->hash-table! _%lst103026%_ __tmp106457))))
    (define list->hash-table-string
      (lambda (_%lst103023%_ . _%args103024%_)
        (let ((__tmp106458
               (apply make-hash-table-string
                      'size:
                      (length _%lst103023%_)
                      _%args103024%_)))
          (declare (not safe))
          (list->hash-table! _%lst103023%_ __tmp106458))))
    (define list->hash-table-immediate
      (lambda (_%lst103020%_ . _%args103021%_)
        (let ((__tmp106459
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103020%_)
                      _%args103021%_)))
          (declare (not safe))
          (list->hash-table! _%lst103020%_ __tmp106459))))
    (define list->hash-table!
      (lambda (_%lst102987%_ _%h102988%_)
        (for-each
         (lambda (_%el102990%_)
           (let* ((_%el102991102998%_ _%el102990%_)
                  (_%E102993103002%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el102991102998%_
                              '([k . v])))
                     '#!void))
                  (_%K102994103008%_
                   (lambda (_%v103005%_ _%k103006%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h102988%_
                        _%k103006%_
                        _%v103005%_)))))
             (if (let () (declare (not safe)) (##pair? _%el102991102998%_))
                 (let ((_%hd102995103011%_
                        (let ()
                          (declare (not safe))
                          (##car _%el102991102998%_)))
                       (_%tl102996103013%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el102991102998%_))))
                   (let* ((_%k103016%_ _%hd102995103011%_)
                          (_%v103018%_ _%tl102996103013%_))
                     (declare (not safe))
                     (_%K102994103008%_ _%v103018%_ _%k103016%_)))
                 (let () (declare (not safe)) (_%E102993103002%_)))))
         _%lst102987%_)
        _%h102988%_))
    (define plist->hash-table
      (lambda (_%lst102984%_ . _%args102985%_)
        (let ((__tmp106460
               (apply make-hash-table
                      'size:
                      (length _%lst102984%_)
                      _%args102985%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102984%_ __tmp106460))))
    (define plist->hash-table-eq
      (lambda (_%lst102981%_ . _%args102982%_)
        (let ((__tmp106461
               (apply make-hash-table-eq
                      'size:
                      (length _%lst102981%_)
                      _%args102982%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102981%_ __tmp106461))))
    (define plist->hash-table-eqv
      (lambda (_%lst102978%_ . _%args102979%_)
        (let ((__tmp106462
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst102978%_)
                      _%args102979%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102978%_ __tmp106462))))
    (define plist->hash-table-symbolic
      (lambda (_%lst102975%_ . _%args102976%_)
        (let ((__tmp106463
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst102975%_)
                      _%args102976%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102975%_ __tmp106463))))
    (define plist->hash-table-string
      (lambda (_%lst102972%_ . _%args102973%_)
        (let ((__tmp106464
               (apply make-hash-table-string
                      'size:
                      (length _%lst102972%_)
                      _%args102973%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102972%_ __tmp106464))))
    (define plist->hash-table-immediate
      (lambda (_%lst102969%_ . _%args102970%_)
        (let ((__tmp106465
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst102969%_)
                      _%args102970%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102969%_ __tmp106465))))
    (define plist->hash-table!
      (lambda (_%lst102909%_ _%h102910%_)
        (let _%loop102912%_ ((_%rest102914%_ _%lst102909%_))
          (let* ((_%rest102915102927%_ _%rest102914%_)
                 (_%else102918102935%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst102909%_)))))
            (let ((_%K102921102950%_
                   (lambda (_%rest102946%_ _%val102947%_ _%key102948%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h102910%_
                        _%key102948%_
                        _%val102947%_))
                     (let ()
                       (declare (not safe))
                       (_%loop102912%_ _%rest102946%_))))
                  (_%K102920102940%_ (lambda () _%h102910%_)))
              (let ((_%try-match102917102943%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest102915102927%_))
                           (let () (declare (not safe)) (_%K102920102940%_))
                           (let ()
                             (declare (not safe))
                             (_%else102918102935%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest102915102927%_))
                    (let ((_%tl102923102955%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest102915102927%_)))
                          (_%hd102922102953%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest102915102927%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl102923102955%_))
                          (let ((_%tl102925102962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl102923102955%_)))
                                (_%hd102924102960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl102923102955%_))))
                            (let ((_%key102958%_ _%hd102922102953%_)
                                  (_%val102965%_ _%hd102924102960%_)
                                  (_%rest102967%_ _%tl102925102962%_))
                              (let ()
                                (declare (not safe))
                                (_%K102921102950%_
                                 _%rest102967%_
                                 _%val102965%_
                                 _%key102958%_))))
                          (let ()
                            (declare (not safe))
                            (_%else102918102935%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match102917102943%_)))))))))
    (define hash-length
      (lambda (_%h102891%_)
        (let ()
          (let* ((_%h102897%_
                  (let ((_%$obj102894%_ _%h102891%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102894%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102894%_)))
                             '#t)
                        _%$obj102894%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102894%_)))))
                 (_%h102899%_ _%h102897%_))
            (let ()
              (let () (declare (not safe)) (__hash-length _%h102899%_)))))))
    (define __hash-length
      (lambda (_%h102879%_)
        (let ()
          (let ((_%h102882%_ _%h102879%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-length _%h102882%_)))))))
    (define hash-ref__%
      (lambda (_%h102847%_ _%key102848%_ _%default102849%_)
        (let ()
          (let* ((_%h102855%_
                  (let ((_%$obj102852%_ _%h102847%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102852%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102852%_)))
                             '#t)
                        _%$obj102852%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102852%_)))))
                 (_%h102857%_ _%h102855%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-ref__%
                 _%h102857%_
                 _%key102848%_
                 _%default102849%_)))))))
    (define hash-ref__0
      (lambda (_%h102870%_ _%key102871%_)
        (let ((_%default102873%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h102870%_ _%key102871%_ _%default102873%_))))
    (define hash-ref
      (lambda _g106467_
        (let ((_g106466_ (let () (declare (not safe)) (##length _g106467_))))
          (cond ((let () (declare (not safe)) (##fx= _g106466_ 2))
                 (apply (lambda (_%h102870%_ _%key102871%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h102870%_ _%key102871%_)))
                        _g106467_))
                ((let () (declare (not safe)) (##fx= _g106466_ 3))
                 (apply (lambda (_%h102875%_ _%key102876%_ _%default102877%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h102875%_
                             _%key102876%_
                             _%default102877%_)))
                        _g106467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106467_))))))
    (define __hash-ref__%
      (lambda (_%h102818%_ _%key102819%_ _%default102820%_)
        (let ()
          (let ((_%h102823%_ _%h102818%_))
            (let ()
              (let ((_%result102832%_
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h102823%_
                        _%key102819%_
                        _%default102820%_))))
                (if (eq? _%result102832%_ (macro-absent-obj))
                    (let ()
                      (declare (not safe))
                      (raise-unbound-key-error
                       'hash-ref
                       '"unknown hash key"
                       'hash:
                       _%h102823%_
                       'key:
                       _%key102819%_))
                    _%result102832%_)))))))
    (define __hash-ref__0
      (lambda (_%h102837%_ _%key102838%_)
        (let ((_%default102840%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h102837%_ _%key102838%_ _%default102840%_))))
    (define __hash-ref
      (lambda _g106469_
        (let ((_g106468_ (let () (declare (not safe)) (##length _g106469_))))
          (cond ((let () (declare (not safe)) (##fx= _g106468_ 2))
                 (apply (lambda (_%h102837%_ _%key102838%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h102837%_ _%key102838%_)))
                        _g106469_))
                ((let () (declare (not safe)) (##fx= _g106468_ 3))
                 (apply (lambda (_%h102842%_ _%key102843%_ _%default102844%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h102842%_
                             _%key102843%_
                             _%default102844%_)))
                        _g106469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106469_))))))
    (define hash-get
      (lambda (_%h102798%_ _%key102799%_)
        (let ()
          (let* ((_%h102805%_
                  (let ((_%$obj102802%_ _%h102798%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102802%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102802%_)))
                             '#t)
                        _%$obj102802%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102802%_)))))
                 (_%h102807%_ _%h102805%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-get _%h102807%_ _%key102799%_)))))))
    (define __hash-get
      (lambda (_%h102785%_ _%key102786%_)
        (let ()
          (let ((_%h102789%_ _%h102785%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-ref _%h102789%_ _%key102786%_ '#f)))))))
    (define hash-put!
      (lambda (_%h102765%_ _%key102766%_ _%value102767%_)
        (let ()
          (let* ((_%h102773%_
                  (let ((_%$obj102770%_ _%h102765%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102770%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102770%_)))
                             '#t)
                        _%$obj102770%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102770%_)))))
                 (_%h102775%_ _%h102773%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-put! _%h102775%_ _%key102766%_ _%value102767%_)))))))
    (define __hash-put!
      (lambda (_%h102751%_ _%key102752%_ _%value102753%_)
        (let ()
          (let ((_%h102756%_ _%h102751%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-set!
                 _%h102756%_
                 _%key102752%_
                 _%value102753%_)))))))
    (define hash-update!__%
      (lambda (_%h102716%_ _%key102717%_ _%update102718%_ _%default102719%_)
        (let ()
          (let* ((_%h102725%_
                  (let ((_%$obj102722%_ _%h102716%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102722%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102722%_)))
                             '#t)
                        _%$obj102722%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102722%_)))))
                 (_%h102727%_ _%h102725%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-update!__%
                 _%h102727%_
                 _%key102717%_
                 _%update102718%_
                 _%default102719%_)))))))
    (define hash-update!__0
      (lambda (_%h102740%_ _%key102741%_ _%update102742%_)
        (let ((_%default102744%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h102740%_
           _%key102741%_
           _%update102742%_
           _%default102744%_))))
    (define hash-update!
      (lambda _g106471_
        (let ((_g106470_ (let () (declare (not safe)) (##length _g106471_))))
          (cond ((let () (declare (not safe)) (##fx= _g106470_ 3))
                 (apply (lambda (_%h102740%_ _%key102741%_ _%update102742%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h102740%_
                             _%key102741%_
                             _%update102742%_)))
                        _g106471_))
                ((let () (declare (not safe)) (##fx= _g106470_ 4))
                 (apply (lambda (_%h102746%_
                                 _%key102747%_
                                 _%update102748%_
                                 _%default102749%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h102746%_
                             _%key102747%_
                             _%update102748%_
                             _%default102749%_)))
                        _g106471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106471_))))))
    (define __hash-update!__%
      (lambda (_%h102686%_ _%key102687%_ _%update102688%_ _%default102689%_)
        (let ()
          (let ((_%h102692%_ _%h102686%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _%h102692%_
                 _%key102687%_
                 _%update102688%_
                 _%default102689%_)))))))
    (define __hash-update!__0
      (lambda (_%h102704%_ _%key102705%_ _%update102706%_)
        (let ((_%default102708%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h102704%_
           _%key102705%_
           _%update102706%_
           _%default102708%_))))
    (define __hash-update!
      (lambda _g106473_
        (let ((_g106472_ (let () (declare (not safe)) (##length _g106473_))))
          (cond ((let () (declare (not safe)) (##fx= _g106472_ 3))
                 (apply (lambda (_%h102704%_ _%key102705%_ _%update102706%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h102704%_
                             _%key102705%_
                             _%update102706%_)))
                        _g106473_))
                ((let () (declare (not safe)) (##fx= _g106472_ 4))
                 (apply (lambda (_%h102710%_
                                 _%key102711%_
                                 _%update102712%_
                                 _%default102713%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h102710%_
                             _%key102711%_
                             _%update102712%_
                             _%default102713%_)))
                        _g106473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106473_))))))
    (define hash-remove!
      (lambda (_%h102666%_ _%key102667%_)
        (let ()
          (let* ((_%h102673%_
                  (let ((_%$obj102670%_ _%h102666%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102670%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102670%_)))
                             '#t)
                        _%$obj102670%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102670%_)))))
                 (_%h102675%_ _%h102673%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-remove! _%h102675%_ _%key102667%_)))))))
    (define __hash-remove!
      (lambda (_%h102653%_ _%key102654%_)
        (let ()
          (let ((_%h102657%_ _%h102653%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-delete! _%h102657%_ _%key102654%_)))))))
    (define hash-key?
      (lambda (_%h102634%_ _%k102635%_)
        (let ()
          (let* ((_%h102641%_
                  (let ((_%$obj102638%_ _%h102634%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102638%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102638%_)))
                             '#t)
                        _%$obj102638%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102638%_)))))
                 (_%h102643%_ _%h102641%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-key? _%h102643%_ _%k102635%_)))))))
    (define __hash-key?
      (lambda (_%h102621%_ _%k102622%_)
        (let ()
          (let ((_%h102625%_ _%h102621%_))
            (let ()
              (let ((__tmp106474
                     (eq? (let ()
                            (declare (not safe))
                            (&HashTable-ref
                             _%h102625%_
                             _%k102622%_
                             absent-value))
                          absent-value)))
                (declare (not safe))
                (not __tmp106474)))))))
    (define hash->list
      (lambda (_%h102603%_)
        (let ()
          (let* ((_%h102609%_
                  (let ((_%$obj102606%_ _%h102603%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102606%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102606%_)))
                             '#t)
                        _%$obj102606%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102606%_)))))
                 (_%h102611%_ _%h102609%_))
            (let ()
              (let () (declare (not safe)) (__hash->list _%h102611%_)))))))
    (define __hash->list
      (lambda (_%h102586%_)
        (let ()
          (let ((_%h102589%_ _%h102586%_))
            (let ()
              (let ((_%lst102598%_ '()))
                (let ((__tmp106475
                       (lambda (_%k102600%_ _%v102601%_)
                         (set! _%lst102598%_
                               (cons (cons _%k102600%_ _%v102601%_)
                                     _%lst102598%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102589%_ __tmp106475))
                _%lst102598%_))))))
    (define hash->plist
      (lambda (_%h102568%_)
        (let ()
          (let* ((_%h102574%_
                  (let ((_%$obj102571%_ _%h102568%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102571%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102571%_)))
                             '#t)
                        _%$obj102571%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102571%_)))))
                 (_%h102576%_ _%h102574%_))
            (let ()
              (let () (declare (not safe)) (__hash->plist _%h102576%_)))))))
    (define __hash->plist
      (lambda (_%h102551%_)
        (let ()
          (let ((_%h102554%_ _%h102551%_))
            (let ()
              (let ((_%lst102563%_ '()))
                (let ((__tmp106476
                       (lambda (_%k102565%_ _%v102566%_)
                         (set! _%lst102563%_
                               (let ((__tmp106477
                                      (let ()
                                        (declare (not safe))
                                        (cons _%v102566%_ _%lst102563%_))))
                                 (declare (not safe))
                                 (cons _%k102565%_ __tmp106477))))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102554%_ __tmp106476))
                _%lst102563%_))))))
    (define hash-for-each
      (lambda (_%proc102522%_ _%h102523%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102522%_))
              (let ()
                (let ((_%proc102527%_ _%proc102522%_))
                  (let* ((_%h102539%_
                          (let ((_%$obj102536%_ _%h102523%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102536%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102536%_)))
                                     '#t)
                                _%$obj102536%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102536%_)))))
                         (_%h102541%_ _%h102539%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-for-each _%proc102527%_ _%h102541%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc102522%_)))))
    (define __hash-for-each
      (lambda (_%proc102501%_ _%h102502%_)
        (let ()
          (let ((_%proc102505%_ _%proc102501%_))
            (let ((_%h102513%_ _%h102502%_))
              (let ()
                (let ()
                  (declare (not safe))
                  (&HashTable-for-each _%h102513%_ _%proc102505%_))))))))
    (define hash-map
      (lambda (_%proc102472%_ _%h102473%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102472%_))
              (let ()
                (let ((_%proc102477%_ _%proc102472%_))
                  (let* ((_%h102489%_
                          (let ((_%$obj102486%_ _%h102473%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102486%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102486%_)))
                                     '#t)
                                _%$obj102486%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102486%_)))))
                         (_%h102491%_ _%h102489%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-map _%proc102477%_ _%h102491%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc102472%_)))))
    (define __hash-map
      (lambda (_%proc102446%_ _%h102447%_)
        (let ()
          (let ((_%proc102450%_ _%proc102446%_))
            (let ((_%h102458%_ _%h102447%_))
              (let ()
                (let ((_%result102467%_ '()))
                  (let ((__tmp106478
                         (lambda (_%k102469%_ _%v102470%_)
                           (set! _%result102467%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%proc102450%_
                                          _%k102469%_
                                          _%v102470%_))
                                       _%result102467%_)))))
                    (declare (not safe))
                    (&HashTable-for-each _%h102458%_ __tmp106478))
                  _%result102467%_)))))))
    (define hash-fold
      (lambda (_%proc102416%_ _%iv102417%_ _%h102418%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102416%_))
              (let ()
                (let ((_%proc102422%_ _%proc102416%_))
                  (let* ((_%h102434%_
                          (let ((_%$obj102431%_ _%h102418%_))
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
                        (__hash-fold
                         _%proc102422%_
                         _%iv102417%_
                         _%h102436%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc102416%_)))))
    (define __hash-fold
      (lambda (_%proc102389%_ _%iv102390%_ _%h102391%_)
        (let ()
          (let ((_%proc102394%_ _%proc102389%_))
            (let ((_%h102402%_ _%h102391%_))
              (let ()
                (let ((_%result102411%_ _%iv102390%_))
                  (let ((__tmp106479
                         (lambda (_%k102413%_ _%v102414%_)
                           (set! _%result102411%_
                                 (let ()
                                   (declare (not safe))
                                   (_%proc102394%_
                                    _%k102413%_
                                    _%v102414%_
                                    _%result102411%_))))))
                    (declare (not safe))
                    (&HashTable-for-each _%h102402%_ __tmp106479))
                  _%result102411%_)))))))
    (define hash-find__%
      (lambda (_%proc102347%_ _%h102348%_ _%default-value102349%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102347%_))
              (let ()
                (let ((_%proc102353%_ _%proc102347%_))
                  (let* ((_%h102365%_
                          (let ((_%$obj102362%_ _%h102348%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102362%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102362%_)))
                                     '#t)
                                _%$obj102362%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102362%_)))))
                         (_%h102367%_ _%h102365%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-find__%
                         _%proc102353%_
                         _%h102367%_
                         _%default-value102349%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc102347%_)))))
    (define hash-find__0
      (lambda (_%proc102380%_ _%h102381%_)
        (let ((_%default-value102383%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc102380%_ _%h102381%_ _%default-value102383%_))))
    (define hash-find
      (lambda _g106481_
        (let ((_g106480_ (let () (declare (not safe)) (##length _g106481_))))
          (cond ((let () (declare (not safe)) (##fx= _g106480_ 2))
                 (apply (lambda (_%proc102380%_ _%h102381%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc102380%_ _%h102381%_)))
                        _g106481_))
                ((let () (declare (not safe)) (##fx= _g106480_ 3))
                 (apply (lambda (_%proc102385%_
                                 _%h102386%_
                                 _%default-value102387%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc102385%_
                             _%h102386%_
                             _%default-value102387%_)))
                        _g106481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106481_))))))
    (define __hash-find__%
      (lambda (_%proc102304%_ _%h102305%_ _%default-value102306%_)
        (let ()
          (let ((_%proc102309%_ _%proc102304%_))
            (let ((_%h102317%_ _%h102305%_))
              (let ()
                (let ((__tmp106482
                       (lambda (_%return102326%_)
                         (let ((__tmp106483
                                (lambda (_%k102328%_ _%v102329%_)
                                  (let ((_%$e102331%_
                                         (let ()
                                           (declare (not safe))
                                           (_%proc102309%_
                                            _%k102328%_
                                            _%v102329%_))))
                                    (if _%$e102331%_
                                        (_%return102326%_ _%$e102331%_)
                                        '#!void)))))
                           (declare (not safe))
                           (&HashTable-for-each _%h102317%_ __tmp106483))
                         _%default-value102306%_)))
                  (declare (not safe))
                  (##call-with-current-continuation __tmp106482))))))))
    (define __hash-find__0
      (lambda (_%proc102337%_ _%h102338%_)
        (let ((_%default-value102340%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102337%_
           _%h102338%_
           _%default-value102340%_))))
    (define __hash-find
      (lambda _g106485_
        (let ((_g106484_ (let () (declare (not safe)) (##length _g106485_))))
          (cond ((let () (declare (not safe)) (##fx= _g106484_ 2))
                 (apply (lambda (_%proc102337%_ _%h102338%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102337%_ _%h102338%_)))
                        _g106485_))
                ((let () (declare (not safe)) (##fx= _g106484_ 3))
                 (apply (lambda (_%proc102342%_
                                 _%h102343%_
                                 _%default-value102344%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102342%_
                             _%h102343%_
                             _%default-value102344%_)))
                        _g106485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106485_))))))
    (define hash-keys
      (lambda (_%h102285%_)
        (let ()
          (let* ((_%h102291%_
                  (let ((_%$obj102288%_ _%h102285%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102288%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102288%_)))
                             '#t)
                        _%$obj102288%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102288%_)))))
                 (_%h102293%_ _%h102291%_))
            (let ()
              (let () (declare (not safe)) (__hash-keys _%h102293%_)))))))
    (define __hash-keys
      (lambda (_%h102268%_)
        (let ()
          (let ((_%h102271%_ _%h102268%_))
            (let ()
              (let ((_%result102280%_ '()))
                (let ((__tmp106486
                       (lambda (_%k102282%_ _%v102283%_)
                         (set! _%result102280%_
                               (cons _%k102282%_ _%result102280%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102271%_ __tmp106486))
                _%result102280%_))))))
    (define hash-values
      (lambda (_%h102250%_)
        (let ()
          (let* ((_%h102256%_
                  (let ((_%$obj102253%_ _%h102250%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102253%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102253%_)))
                             '#t)
                        _%$obj102253%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102253%_)))))
                 (_%h102258%_ _%h102256%_))
            (let ()
              (let () (declare (not safe)) (__hash-values _%h102258%_)))))))
    (define __hash-values
      (lambda (_%h102233%_)
        (let ()
          (let ((_%h102236%_ _%h102233%_))
            (let ()
              (let ((_%result102245%_ '()))
                (let ((__tmp106487
                       (lambda (_%k102247%_ _%v102248%_)
                         (set! _%result102245%_
                               (cons _%v102248%_ _%result102245%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102236%_ __tmp106487))
                _%result102245%_))))))
    (define hash-copy
      (lambda (_%h102215%_)
        (let ()
          (let* ((_%h102221%_
                  (let ((_%$obj102218%_ _%h102215%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102218%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102218%_)))
                             '#t)
                        _%$obj102218%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102218%_)))))
                 (_%h102223%_ _%h102221%_))
            (let ()
              (let () (declare (not safe)) (__hash-copy _%h102223%_)))))))
    (define __hash-copy
      (lambda (_%h102203%_)
        (let ()
          (let ((_%h102206%_ _%h102203%_))
            (let ()
              (let () (declare (not safe)) (&HashTable-copy _%h102206%_)))))))
    (define hash-clear!
      (lambda (_%h102185%_)
        (let ()
          (let* ((_%h102191%_
                  (let ((_%$obj102188%_ _%h102185%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102188%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102188%_)))
                             '#t)
                        _%$obj102188%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102188%_)))))
                 (_%h102193%_ _%h102191%_))
            (let ()
              (let () (declare (not safe)) (__hash-clear! _%h102193%_)))))))
    (define __hash-clear!
      (lambda (_%h102173%_)
        (let ()
          (let ((_%h102176%_ _%h102173%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-clear! _%h102176%_)))))))
    (define hash-merge
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
                (##apply __hash-merge _%h102163%_ _%rest102155%_)))))))
    (define __hash-merge
      (lambda (_%h102139%_ . _%rest102140%_)
        (let ()
          (let ((_%h102143%_ _%h102139%_))
            (let ()
              (let ((_%copy102152%_
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h102143%_))))
                (apply hash-merge! _%copy102152%_ _%rest102140%_)
                _%copy102152%_))))))
    (define hash-merge!
      (lambda (_%h102120%_ . _%rest102121%_)
        (let ()
          (let* ((_%h102127%_
                  (let ((_%$obj102124%_ _%h102120%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102124%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102124%_)))
                             '#t)
                        _%$obj102124%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102124%_)))))
                 (_%h102129%_ _%h102127%_))
            (let ()
              (let ()
                (declare (not safe))
                (##apply __hash-merge! _%h102129%_ _%rest102121%_)))))))
    (define __hash-merge!
      (lambda (_%h102083%_ . _%rest102084%_)
        (let ()
          (let ((_%h102087%_ _%h102083%_))
            (let ()
              (for-each
               (lambda (_%hr102096%_)
                 (let ()
                   (let* ((_%hr102102%_
                           (let ((_%$obj102099%_ _%hr102096%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj102099%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj102099%_)))
                                      '#t)
                                 _%$obj102099%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj102099%_)))))
                          (_%hr102104%_ _%hr102102%_))
                     (let ()
                       (let ((__tmp106488
                              (lambda (_%k102117%_ _%v102118%_)
                                (if (let ()
                                      (declare (not safe))
                                      (__hash-key? _%h102087%_ _%k102117%_))
                                    '#!void
                                    (let ()
                                      (declare (not safe))
                                      (&HashTable-set!
                                       _%h102087%_
                                       _%k102117%_
                                       _%v102118%_))))))
                         (declare (not safe))
                         (&HashTable-for-each _%hr102104%_ __tmp106488))))))
               _%rest102084%_)
              _%h102087%_)))))))
