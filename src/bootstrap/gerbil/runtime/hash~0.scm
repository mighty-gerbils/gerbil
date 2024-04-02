(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712084995)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106184 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106184
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106164%_
        (apply make-instance UnboundKeyError::t _%$args106164%_)))
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
      (lambda (_%where106038%_ _%message106039%_ . _%irritants106040%_)
        (let ((__tmp106185
               (let ((__obj106178
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106178
                  _%message106039%_
                  'where:
                  _%where106038%_
                  'irritants:
                  _%irritants106040%_)
                 __obj106178)))
          (declare (not safe))
          (raise __tmp106185))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106186 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106186
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
      (lambda (_%obj106036%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106036%_))))
    (define try-HashTable
      (lambda (_%obj106034%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106034%_))))
    (define HashTable?
      (lambda (_%obj106032%_)
        (let ((__tmp106187
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106032%_ __tmp106187))))
    (define is-HashTable?
      (lambda (_%obj106030%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106030%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106011%_)
        (let* ((_%self106016%_
                (let ((_%$obj106013%_ _%self106011%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106013%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106013%_)))
                           '#t)
                      _%$obj106013%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106013%_)))))
               (_%self106018%_ _%self106016%_))
          (let ()
            (let ((_%val106027%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-clear! _%self106018%_))))
              (if (let () (declare (not safe)) (eq? _%val106027%_ '#!void))
                  _%val106027%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" void::t _%val106027%_))))))))
    (define &HashTable-clear!
      (lambda (_%self105996%_)
        (let ((_%self105998%_ _%self105996%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj106008%_
                     (##unchecked-structure-ref _%self105998%_ '1 '#f 'clear!))
                    (_%f106009%_
                     (##unchecked-structure-ref
                      _%self105998%_
                      '2
                      '#f
                      'clear!)))
                (_%f106009%_ _%obj106008%_)))))))
    (define HashTable-copy
      (lambda (_%self105980%_)
        (let* ((_%self105985%_
                (let ((_%$obj105982%_ _%self105980%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105982%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105982%_)))
                           '#t)
                      _%$obj105982%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105982%_)))))
               (_%self105987%_ _%self105985%_))
          (let ()
            (let ((__tmp106188
                   (let ()
                     (declare (not safe))
                     (&HashTable-copy _%self105987%_))))
              (declare (not safe))
              (make-HashTable __tmp106188))))))
    (define &HashTable-copy
      (lambda (_%self105965%_)
        (let ((_%self105967%_ _%self105965%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105977%_
                     (##unchecked-structure-ref _%self105967%_ '1 '#f 'copy))
                    (_%f105978%_
                     (##unchecked-structure-ref _%self105967%_ '3 '#f 'copy)))
                (_%f105978%_ _%obj105977%_)))))))
    (define HashTable-delete!
      (lambda (_%self105945%_ _%key105946%_)
        (let* ((_%self105951%_
                (let ((_%$obj105948%_ _%self105945%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105948%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105948%_)))
                           '#t)
                      _%$obj105948%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105948%_)))))
               (_%self105953%_ _%self105951%_))
          (let ()
            (let ((_%val105962%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-delete! _%self105953%_ _%key105946%_))))
              (if (let () (declare (not safe)) (eq? _%val105962%_ '#!void))
                  _%val105962%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" void::t _%val105962%_))))))))
    (define &HashTable-delete!
      (lambda (_%self105929%_ _%key105930%_)
        (let ((_%self105932%_ _%self105929%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105942%_
                     (##unchecked-structure-ref
                      _%self105932%_
                      '1
                      '#f
                      'delete!))
                    (_%f105943%_
                     (##unchecked-structure-ref
                      _%self105932%_
                      '4
                      '#f
                      'delete!)))
                (_%f105943%_ _%obj105942%_ _%key105930%_)))))))
    (define HashTable-for-each
      (lambda (_%self105899%_ _%proc105900%_)
        (let* ((_%self105905%_
                (let ((_%$obj105902%_ _%self105899%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105902%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105902%_)))
                           '#t)
                      _%$obj105902%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105902%_)))))
               (_%self105907%_ _%self105905%_))
          (if (let () (declare (not safe)) (procedure? _%proc105900%_))
              (let ()
                (let ((_%proc105916%_ _%proc105900%_))
                  (let ()
                    (let ((_%val105926%_
                           (let ()
                             (declare (not safe))
                             (&HashTable-for-each
                              _%self105907%_
                              _%proc105916%_))))
                      (if (let ()
                            (declare (not safe))
                            (eq? _%val105926%_ '#!void))
                          _%val105926%_
                          (let ()
                            (declare (not safe))
                            (error '"bad cast" void::t _%val105926%_)))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
               'contract:
               'procedure?
               'value:
               _%proc105900%_)))))
    (define &HashTable-for-each
      (lambda (_%self105875%_ _%proc105876%_)
        (let ((_%self105878%_ _%self105875%_))
          (let ((_%proc105885%_ _%proc105876%_))
            (let ()
              (let ()
                (declare (not safe))
                (let ((_%obj105896%_
                       (##unchecked-structure-ref
                        _%self105878%_
                        '1
                        '#f
                        'for-each))
                      (_%f105897%_
                       (##unchecked-structure-ref
                        _%self105878%_
                        '5
                        '#f
                        'for-each)))
                  (_%f105897%_ _%obj105896%_ _%proc105885%_))))))))
    (define HashTable-length
      (lambda (_%self105856%_)
        (let* ((_%self105861%_
                (let ((_%$obj105858%_ _%self105856%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105858%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105858%_)))
                           '#t)
                      _%$obj105858%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105858%_)))))
               (_%self105863%_ _%self105861%_))
          (let ()
            (let ((_%val105872%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-length _%self105863%_))))
              (if (let () (declare (not safe)) (fixnum? _%val105872%_))
                  _%val105872%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" fixnum::t _%val105872%_))))))))
    (define &HashTable-length
      (lambda (_%self105841%_)
        (let ((_%self105843%_ _%self105841%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105853%_
                     (##unchecked-structure-ref _%self105843%_ '1 '#f 'length))
                    (_%f105854%_
                     (##unchecked-structure-ref
                      _%self105843%_
                      '6
                      '#f
                      'length)))
                (_%f105854%_ _%obj105853%_)))))))
    (define HashTable-ref
      (lambda (_%self105820%_ _%key105821%_ _%default105822%_)
        (let* ((_%self105827%_
                (let ((_%$obj105824%_ _%self105820%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105824%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105824%_)))
                           '#t)
                      _%$obj105824%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105824%_)))))
               (_%self105829%_ _%self105827%_))
          (let ()
            (let ((_%val105838%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-ref
                      _%self105829%_
                      _%key105821%_
                      _%default105822%_))))
              (if (let () (declare (not safe)) (eq? _%val105838%_ '#!void))
                  _%val105838%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" void::t _%val105838%_))))))))
    (define &HashTable-ref
      (lambda (_%self105803%_ _%key105804%_ _%default105805%_)
        (let ((_%self105807%_ _%self105803%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105817%_
                     (##unchecked-structure-ref _%self105807%_ '1 '#f 'ref))
                    (_%f105818%_
                     (##unchecked-structure-ref _%self105807%_ '7 '#f 'ref)))
                (_%f105818%_
                 _%obj105817%_
                 _%key105804%_
                 _%default105805%_)))))))
    (define HashTable-set!
      (lambda (_%self105782%_ _%key105783%_ _%value105784%_)
        (let* ((_%self105789%_
                (let ((_%$obj105786%_ _%self105782%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105786%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105786%_)))
                           '#t)
                      _%$obj105786%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105786%_)))))
               (_%self105791%_ _%self105789%_))
          (let ()
            (let ((_%val105800%_
                   (let ()
                     (declare (not safe))
                     (&HashTable-set!
                      _%self105791%_
                      _%key105783%_
                      _%value105784%_))))
              (if (let () (declare (not safe)) (eq? _%val105800%_ '#!void))
                  _%val105800%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" void::t _%val105800%_))))))))
    (define &HashTable-set!
      (lambda (_%self105765%_ _%key105766%_ _%value105767%_)
        (let ((_%self105769%_ _%self105765%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105779%_
                     (##unchecked-structure-ref _%self105769%_ '1 '#f 'set!))
                    (_%f105780%_
                     (##unchecked-structure-ref _%self105769%_ '8 '#f 'set!)))
                (_%f105780%_ _%obj105779%_ _%key105766%_ _%value105767%_)))))))
    (define HashTable-update!
      (lambda (_%self105733%_ _%key105734%_ _%proc105735%_ _%default105736%_)
        (let* ((_%self105741%_
                (let ((_%$obj105738%_ _%self105733%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105738%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105738%_)))
                           '#t)
                      _%$obj105738%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105738%_)))))
               (_%self105743%_ _%self105741%_))
          (if (let () (declare (not safe)) (procedure? _%proc105735%_))
              (let ()
                (let ((_%proc105752%_ _%proc105735%_))
                  (let ()
                    (let ((_%val105762%_
                           (let ()
                             (declare (not safe))
                             (&HashTable-update!
                              _%self105743%_
                              _%key105734%_
                              _%proc105752%_
                              _%default105736%_))))
                      (if (let ()
                            (declare (not safe))
                            (eq? _%val105762%_ '#!void))
                          _%val105762%_
                          (let ()
                            (declare (not safe))
                            (error '"bad cast" void::t _%val105762%_)))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
               'contract:
               'procedure?
               'value:
               _%proc105735%_)))))
    (define &HashTable-update!
      (lambda (_%self105705%_ _%key105706%_ _%proc105707%_ _%default105708%_)
        (let ((_%self105710%_ _%self105705%_))
          (let ((_%proc105717%_ _%proc105707%_))
            (let ()
              (let ()
                (declare (not safe))
                (let ((_%obj105728%_
                       (##unchecked-structure-ref
                        _%self105710%_
                        '1
                        '#f
                        'update!))
                      (_%f105730%_
                       (##unchecked-structure-ref
                        _%self105710%_
                        '9
                        '#f
                        'update!)))
                  (_%f105730%_
                   _%obj105728%_
                   _%key105706%_
                   _%proc105717%_
                   _%default105708%_))))))))
    (define Locker::t
      (let ((__tmp106189 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106189
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
      (lambda (_%obj105703%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj105703%_))))
    (define try-Locker
      (lambda (_%obj105701%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj105701%_))))
    (define Locker?
      (lambda (_%obj105699%_)
        (let ((__tmp106190
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj105699%_ __tmp106190))))
    (define is-Locker?
      (lambda (_%obj105697%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj105697%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self105678%_)
        (let* ((_%self105683%_
                (let ((_%$obj105680%_ _%self105678%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105680%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105680%_)))
                           '#t)
                      _%$obj105680%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105680%_)))))
               (_%self105685%_ _%self105683%_))
          (let ()
            (let ((_%val105694%_
                   (let ()
                     (declare (not safe))
                     (&Locker-read-lock! _%self105685%_))))
              (if (let () (declare (not safe)) (eq? _%val105694%_ '#!void))
                  _%val105694%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" void::t _%val105694%_))))))))
    (define &Locker-read-lock!
      (lambda (_%self105663%_)
        (let ((_%self105665%_ _%self105663%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105675%_
                     (##unchecked-structure-ref
                      _%self105665%_
                      '1
                      '#f
                      'read-lock!))
                    (_%f105676%_
                     (##unchecked-structure-ref
                      _%self105665%_
                      '2
                      '#f
                      'read-lock!)))
                (_%f105676%_ _%obj105675%_)))))))
    (define Locker-read-unlock!
      (lambda (_%self105644%_)
        (let* ((_%self105649%_
                (let ((_%$obj105646%_ _%self105644%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105646%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105646%_)))
                           '#t)
                      _%$obj105646%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105646%_)))))
               (_%self105651%_ _%self105649%_))
          (let ()
            (let ((_%val105660%_
                   (let ()
                     (declare (not safe))
                     (&Locker-read-unlock! _%self105651%_))))
              (if (let () (declare (not safe)) (eq? _%val105660%_ '#!void))
                  _%val105660%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" void::t _%val105660%_))))))))
    (define &Locker-read-unlock!
      (lambda (_%self105629%_)
        (let ((_%self105631%_ _%self105629%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105641%_
                     (##unchecked-structure-ref
                      _%self105631%_
                      '1
                      '#f
                      'read-unlock!))
                    (_%f105642%_
                     (##unchecked-structure-ref
                      _%self105631%_
                      '3
                      '#f
                      'read-unlock!)))
                (_%f105642%_ _%obj105641%_)))))))
    (define Locker-write-lock!
      (lambda (_%self105610%_)
        (let* ((_%self105615%_
                (let ((_%$obj105612%_ _%self105610%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105612%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105612%_)))
                           '#t)
                      _%$obj105612%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105612%_)))))
               (_%self105617%_ _%self105615%_))
          (let ()
            (let ((_%val105626%_
                   (let ()
                     (declare (not safe))
                     (&Locker-write-lock! _%self105617%_))))
              (if (let () (declare (not safe)) (eq? _%val105626%_ '#!void))
                  _%val105626%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" void::t _%val105626%_))))))))
    (define &Locker-write-lock!
      (lambda (_%self105595%_)
        (let ((_%self105597%_ _%self105595%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105607%_
                     (##unchecked-structure-ref
                      _%self105597%_
                      '1
                      '#f
                      'write-lock!))
                    (_%f105608%_
                     (##unchecked-structure-ref
                      _%self105597%_
                      '4
                      '#f
                      'write-lock!)))
                (_%f105608%_ _%obj105607%_)))))))
    (define Locker-write-unlock!
      (lambda (_%self105576%_)
        (let* ((_%self105581%_
                (let ((_%$obj105578%_ _%self105576%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105578%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105578%_)))
                           '#t)
                      _%$obj105578%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105578%_)))))
               (_%self105583%_ _%self105581%_))
          (let ()
            (let ((_%val105592%_
                   (let ()
                     (declare (not safe))
                     (&Locker-write-unlock! _%self105583%_))))
              (if (let () (declare (not safe)) (eq? _%val105592%_ '#!void))
                  _%val105592%_
                  (let ()
                    (declare (not safe))
                    (error '"bad cast" void::t _%val105592%_))))))))
    (define &Locker-write-unlock!
      (lambda (_%self105559%_)
        (let ((_%self105561%_ _%self105559%_))
          (let ()
            (let ()
              (declare (not safe))
              (let ((_%obj105571%_
                     (##unchecked-structure-ref
                      _%self105561%_
                      '1
                      '#f
                      'write-unlock!))
                    (_%f105573%_
                     (##unchecked-structure-ref
                      _%self105561%_
                      '5
                      '#f
                      'write-unlock!)))
                (_%f105573%_ _%obj105571%_)))))))
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
      (lambda (_%table105552%_
               _%key105553%_
               _%update105554%_
               _%default105555%_)
        (let ((_%result105557%_
               (table-ref _%table105552%_ _%key105553%_ _%default105555%_)))
          (table-set!
           _%table105552%_
           _%key105553%_
           (_%update105554%_ _%default105555%_)))))
    (define gambit-table-for-each
      (lambda (_%table105549%_ _%proc105550%_)
        (table-for-each _%proc105550%_ _%table105549%_)))
    (define gambit-table-clear!
      (lambda (_%table105547%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table105547%_ '0 '5 '#f '#f))))
    (let ((__tmp106191 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106191 'ref table-ref))
    (let ((__tmp106192 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106192 'set! table-set!))
    (let ((__tmp106193 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106193 'update! gambit-table-update!))
    (let ((__tmp106194 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106194 'delete! table-set!))
    (let ((__tmp106195 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106195 'for-each gambit-table-for-each))
    (let ((__tmp106196 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106196 'length table-length))
    (let ((__tmp106197 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106197 'copy table-copy))
    (let ((__tmp106198 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106198 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots105529%_ '(table count free hash test seed))
             (_%slot-vector105531%_ (list->vector (cons '#f _%slots105529%_)))
             (_%slot-table105538%_
              (let ((_%slot-table105533%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106201
                       (lambda (_%slot105535%_ _%field105536%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105533%_
                            _%slot105535%_
                            _%field105536%_))
                         (let ((__tmp106202
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105535%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105533%_
                            __tmp106202
                            _%field105536%_))))
                      (__tmp106199
                       (let ((__tmp106200
                              (let ()
                                (declare (not safe))
                                (##length _%slots105529%_))))
                         (declare (not safe))
                         (##iota __tmp106200 '1))))
                  (declare (not safe))
                  (##for-each __tmp106201 _%slots105529%_ __tmp106199))
                _%slot-table105533%_))
             (_%flags105540%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105542%_ '#())
             (_%properties105544%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105529%_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp106203 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _%flags105540%_
           __table::t
           _%fields105542%_
           __tmp106203
           _%slot-vector105531%_
           _%slot-table105538%_
           _%properties105544%_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_%slots105511%_ '(gcht immediate))
             (_%slot-vector105513%_ (list->vector (cons '#f _%slots105511%_)))
             (_%slot-table105520%_
              (let ((_%slot-table105515%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106206
                       (lambda (_%slot105517%_ _%field105518%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105515%_
                            _%slot105517%_
                            _%field105518%_))
                         (let ((__tmp106207
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105517%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105515%_
                            __tmp106207
                            _%field105518%_))))
                      (__tmp106204
                       (let ((__tmp106205
                              (let ()
                                (declare (not safe))
                                (##length _%slots105511%_))))
                         (declare (not safe))
                         (##iota __tmp106205 '1))))
                  (declare (not safe))
                  (##for-each __tmp106206 _%slots105511%_ __tmp106204))
                _%slot-table105515%_))
             (_%flags105522%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105524%_ '#())
             (_%properties105526%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105511%_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp106208 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _%flags105522%_
           __gc-table::t
           _%fields105524%_
           __tmp106208
           _%slot-vector105513%_
           _%slot-table105520%_
           _%properties105526%_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp106210 (list))
            (__tmp106209
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106210
         '(table lock)
         __tmp106209
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args105508%_
        (apply make-instance locked-hash-table::t _%$args105508%_)))
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
      (let ((__tmp106212 (list))
            (__tmp106211
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106212
         '(table key-check)
         __tmp106211
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args105505%_
        (apply make-instance checked-hash-table::t _%$args105505%_)))
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
      (let ((__tmp106214 (list hash-table::t))
            (__tmp106213 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106214
         '()
         __tmp106213
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args105502%_
        (apply make-instance eq-hash-table::t _%$args105502%_)))
    (define eqv-hash-table::t
      (let ((__tmp106216 (list hash-table::t))
            (__tmp106215 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106216
         '()
         __tmp106215
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args105499%_
        (apply make-instance eqv-hash-table::t _%$args105499%_)))
    (define symbol-hash-table::t
      (let ((__tmp106218 (list hash-table::t))
            (__tmp106217 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106218
         '()
         __tmp106217
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args105496%_
        (apply make-instance symbol-hash-table::t _%$args105496%_)))
    (define string-hash-table::t
      (let ((__tmp106220 (list hash-table::t))
            (__tmp106219 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106220
         '()
         __tmp106219
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args105493%_
        (apply make-instance string-hash-table::t _%$args105493%_)))
    (define immediate-hash-table::t
      (let ((__tmp106222 (list hash-table::t))
            (__tmp106221 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106222
         '()
         __tmp106221
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args105490%_
        (apply make-instance immediate-hash-table::t _%$args105490%_)))
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
      (lambda (_%obj105488%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj105488%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj105486%_)
        (let () (declare (not safe)) (is-HashTable? _%obj105486%_))))
    (define _%locked-hash-table::ref101540%_
      (lambda (_%self105462%_ _%key105464%_ _%default105465%_)
        (let ()
          (let ((_%self105468%_ _%self105462%_))
            (let ()
              (let ((_%h105478%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105468%_ '1 '#f '#f)))
                    (_%l105480%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105468%_ '2 '#f '#f))))
                (let ((__tmp106225
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l105480%_))))
                      (__tmp106224
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-ref
                            _%h105478%_
                            _%key105464%_
                            _%default105465%_))))
                      (__tmp106223
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l105480%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106225 __tmp106224 __tmp106223))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref101540%_
       '#f))
    (define _%locked-hash-table::set!101542%_
      (lambda (_%self105315%_ _%key105317%_ _%value105318%_)
        (let ()
          (let ((_%self105321%_ _%self105315%_))
            (let ()
              (let ((_%h105331%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105321%_ '1 '#f '#f)))
                    (_%l105333%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105321%_ '2 '#f '#f))))
                (let ((__tmp106228
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105333%_))))
                      (__tmp106227
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-set!
                            _%h105331%_
                            _%key105317%_
                            _%value105318%_))))
                      (__tmp106226
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105333%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106228 __tmp106227 __tmp106226))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!101542%_
       '#f))
    (define _%locked-hash-table::update!101544%_
      (lambda (_%self105167%_ _%key105169%_ _%update105170%_ _%default105171%_)
        (let ()
          (let ((_%self105174%_ _%self105167%_))
            (let ()
              (let ((_%h105184%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105174%_ '1 '#f '#f)))
                    (_%l105186%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105174%_ '2 '#f '#f))))
                (let ((__tmp106231
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105186%_))))
                      (__tmp106230
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-update!
                            _%h105184%_
                            _%key105169%_
                            _%update105170%_
                            _%default105171%_))))
                      (__tmp106229
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105186%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106231 __tmp106230 __tmp106229))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!101544%_
       '#f))
    (define _%locked-hash-table::delete!101546%_
      (lambda (_%self105021%_ _%key105023%_)
        (let ()
          (let ((_%self105026%_ _%self105021%_))
            (let ()
              (let ((_%h105036%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105026%_ '1 '#f '#f)))
                    (_%l105038%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self105026%_ '2 '#f '#f))))
                (let ((__tmp106234
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l105038%_))))
                      (__tmp106233
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-delete! _%h105036%_ _%key105023%_))))
                      (__tmp106232
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l105038%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106234 __tmp106233 __tmp106232))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!101546%_
       '#f))
    (define _%locked-hash-table::for-each101548%_
      (lambda (_%self104875%_ _%proc104877%_)
        (let ()
          (let ((_%self104880%_ _%self104875%_))
            (let ()
              (let ((_%h104890%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104880%_ '1 '#f '#f)))
                    (_%l104892%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104880%_ '2 '#f '#f))))
                (let ((__tmp106237
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104892%_))))
                      (__tmp106236
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-for-each _%h104890%_ _%proc104877%_))))
                      (__tmp106235
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104892%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106237 __tmp106236 __tmp106235))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each101548%_
       '#f))
    (define _%locked-hash-table::length101550%_
      (lambda (_%self104730%_)
        (let ()
          (let ((_%self104734%_ _%self104730%_))
            (let ()
              (let ((_%h104744%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104734%_ '1 '#f '#f)))
                    (_%l104746%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104734%_ '2 '#f '#f))))
                (let ((__tmp106240
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104746%_))))
                      (__tmp106239
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-length _%h104744%_))))
                      (__tmp106238
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104746%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106240 __tmp106239 __tmp106238))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length101550%_
       '#f))
    (define _%locked-hash-table::copy101552%_
      (lambda (_%self104585%_)
        (let ()
          (let ((_%self104589%_ _%self104585%_))
            (let ()
              (let ((_%h104599%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104589%_ '1 '#f '#f)))
                    (_%l104601%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104589%_ '2 '#f '#f))))
                (let ((__tmp106243
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-lock! _%l104601%_))))
                      (__tmp106242
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-copy _%h104599%_))))
                      (__tmp106241
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-read-unlock! _%l104601%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106243 __tmp106242 __tmp106241))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy101552%_
       '#f))
    (define _%locked-hash-table::clear!101554%_
      (lambda (_%self104440%_)
        (let ()
          (let ((_%self104444%_ _%self104440%_))
            (let ()
              (let ((_%h104454%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104444%_ '1 '#f '#f)))
                    (_%l104456%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104444%_ '2 '#f '#f))))
                (let ((__tmp106246
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-lock! _%l104456%_))))
                      (__tmp106245
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&HashTable-clear! _%h104454%_))))
                      (__tmp106244
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (&Locker-write-unlock! _%l104456%_)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp106246 __tmp106245 __tmp106244))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!101554%_
       '#f))
    (let ((__tmp106247 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106247 'read-lock! mutex-lock!))
    (let ((__tmp106248 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106248 'read-unlock! mutex-unlock!))
    (let ((__tmp106249 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106249 'write-lock! mutex-lock!))
    (let ((__tmp106250 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106250 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref101832%_
      (lambda (_%self104293%_ _%key104294%_ _%default104295%_)
        (let ()
          (let ((_%self104298%_ _%self104293%_))
            (let ()
              (let ((_%h104308%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104298%_ '1 '#f '#f)))
                    (_%key?104310%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104298%_ '2 '#f '#f))))
                ((lambda (_%g104312104314%_)
                   (if (_%g104312104314%_ _%key104294%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104294%_))))
                 _%key?104310%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-ref
                   _%h104308%_
                   _%key104294%_
                   _%default104295%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref101832%_
       '#f))
    (define _%checked-hash-table::set!101834%_
      (lambda (_%self104146%_ _%key104147%_ _%value104148%_)
        (let ()
          (let ((_%self104151%_ _%self104146%_))
            (let ()
              (let ((_%h104161%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104151%_ '1 '#f '#f)))
                    (_%key?104163%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104151%_ '2 '#f '#f))))
                ((lambda (_%g104165104167%_)
                   (if (_%g104165104167%_ _%key104147%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104147%_))))
                 _%key?104163%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-set!
                   _%h104161%_
                   _%key104147%_
                   _%value104148%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!101834%_
       '#f))
    (define _%checked-hash-table::update!101836%_
      (lambda (_%self104000%_ _%key104001%_ _%update104002%_ _%default104003%_)
        (let ()
          (let ((_%self104006%_ _%self104000%_))
            (let ()
              (let ((_%h104016%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104006%_ '1 '#f '#f)))
                    (_%key?104018%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self104006%_ '2 '#f '#f))))
                ((lambda (_%key?104021%_)
                   (if (_%key?104021%_ _%key104001%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key104001%_)))
                   (if (let ()
                         (declare (not safe))
                         (procedure? _%update104002%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%update104002%_))))
                 _%key?104018%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-update!
                   _%h104016%_
                   _%key104001%_
                   _%update104002%_
                   _%default104003%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!101836%_
       '#f))
    (define _%checked-hash-table::delete!101838%_
      (lambda (_%self103854%_ _%key103855%_)
        (let ()
          (let ((_%self103858%_ _%self103854%_))
            (let ()
              (let ((_%h103868%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103858%_ '1 '#f '#f)))
                    (_%key?103870%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103858%_ '2 '#f '#f))))
                ((lambda (_%g103872103874%_)
                   (if (_%g103872103874%_ _%key103855%_)
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%key103855%_))))
                 _%key?103870%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-delete! _%h103868%_ _%key103855%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!101838%_
       '#f))
    (define _%checked-hash-table::for-each101840%_
      (lambda (_%self103710%_ _%proc103711%_)
        (let ()
          (let ((_%self103714%_ _%self103710%_))
            (let ()
              (let ((_%h103724%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103714%_ '1 '#f '#f)))
                    (_%key?103726%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103714%_ '2 '#f '#f))))
                ((lambda (_%_103729%_)
                   (if (let ()
                         (declare (not safe))
                         (procedure? _%proc103711%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (error '"invalid argument" _%proc103711%_))))
                 _%key?103726%_)
                (let ()
                  (declare (not safe))
                  (&HashTable-for-each _%h103724%_ _%proc103711%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each101840%_
       '#f))
    (define _%checked-hash-table::length101842%_
      (lambda (_%self103569%_)
        (let ()
          (let ((_%self103572%_ _%self103569%_))
            (let ()
              (let ((_%h103582%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103572%_ '1 '#f '#f)))
                    (_%key?103584%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103572%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%h103582%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length101842%_
       '#f))
    (define _%checked-hash-table::copy101844%_
      (lambda (_%self103428%_)
        (let ()
          (let ((_%self103431%_ _%self103428%_))
            (let ()
              (let ((_%h103441%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103431%_ '1 '#f '#f)))
                    (_%key?103443%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103431%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%h103441%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy101844%_
       '#f))
    (define _%checked-hash-table::clear!101846%_
      (lambda (_%self103287%_)
        (let ()
          (let ((_%self103290%_ _%self103287%_))
            (let ()
              (let ((_%h103300%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103290%_ '1 '#f '#f)))
                    (_%key?103302%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self103290%_ '2 '#f '#f))))
                (let ()
                  (declare (not safe))
                  (&HashTable-clear! _%h103300%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!101846%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103157%_
               _%count103158%_
               _%free103159%_
               _%hash103160%_
               _%test103161%_
               _%seed103162%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103157%_
           _%count103158%_
           _%free103159%_
           _%hash103160%_
           _%test103161%_
           _%seed103162%_))))
    (define make-hash-table__%
      (lambda (_%_102979%_
               _%size-hint102969102981%_
               _%seed102970102983%_
               _%test102971102985%_
               _%hash102972102987%_
               _%lock102973102989%_
               _%check102974102991%_
               _%weak-keys102975102993%_
               _%weak-values102976102995%_)
        (let* ((_%size-hint102998%_
                (if (eq? _%size-hint102969102981%_ absent-value)
                    '#f
                    _%size-hint102969102981%_))
               (_%seed103000%_
                (if (eq? _%seed102970102983%_ absent-value)
                    '#f
                    _%seed102970102983%_))
               (_%test103002%_
                (if (eq? _%test102971102985%_ absent-value)
                    equal?
                    _%test102971102985%_))
               (_%hash103004%_
                (if (eq? _%hash102972102987%_ absent-value)
                    '#f
                    _%hash102972102987%_))
               (_%lock103006%_
                (if (eq? _%lock102973102989%_ absent-value)
                    '#f
                    _%lock102973102989%_))
               (_%check103008%_
                (if (eq? _%check102974102991%_ absent-value)
                    '#f
                    _%check102974102991%_))
               (_%weak-keys103010%_
                (if (eq? _%weak-keys102975102993%_ absent-value)
                    '#f
                    _%weak-keys102975102993%_))
               (_%weak-values103012%_
                (if (eq? _%weak-values102976102995%_ absent-value)
                    '#f
                    _%weak-values102976102995%_)))
          (letrec ((_%table-seed103014%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103000%_))
                          _%seed103000%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103015%_
                    (lambda (_%ht103135%_)
                      (if _%lock103006%_
                          (let ((_%$obj103140%_
                                 (let ((__tmp106251
                                        (let ((_%$obj103137%_ _%lock103006%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103137%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103137%_)))
                                                   '#t)
                                              _%$obj103137%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103137%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103135%_
                                    __tmp106251))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103140%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103140%_)))
                                     '#t)
                                _%$obj103140%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103140%_))))
                          _%ht103135%_)))
                   (_%wrap-checked103016%_
                    (lambda (_%ht103129%_ _%implicit103130%_)
                      (if _%check103008%_
                          (let ((_%$obj103132%_
                                 (let ((__tmp106252
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103008%_))
                                            _%check103008%_
                                            _%implicit103130%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103129%_
                                    __tmp106252))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103132%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103132%_)))
                                     '#t)
                                _%$obj103132%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103132%_))))
                          _%ht103129%_)))
                   (_%make103017%_
                    (lambda (_%kons103114%_
                             _%key?103115%_
                             _%hash103116%_
                             _%test103117%_)
                      (let* ((_%size103119%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint102998%_)))
                             (_%table103121%_
                              (let ((__tmp106253 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103119%_ __tmp106253)))
                             (_%ht103126%_
                              (let ((_%$obj103123%_
                                     (_%kons103114%_
                                      _%table103121%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103119%_ '2))
                                      _%hash103116%_
                                      _%test103117%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103014%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103123%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103123%_)))
                                         '#t)
                                    _%$obj103123%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103123%_))))))
                        (let ((__tmp106254
                               (let ()
                                 (declare (not safe))
                                 (_%wrap-lock103015%_ _%ht103126%_))))
                          (declare (not safe))
                          (_%wrap-checked103016%_
                           __tmp106254
                           _%key?103115%_)))))
                   (_%make-gc-hash-table103018%_
                    (lambda ()
                      (let* ((_%ht103112%_
                              (let ((_%$obj103109%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint102998%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103109%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103109%_)))
                                         '#t)
                                    _%$obj103109%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103109%_)))))
                             (__tmp106255
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103015%_ _%ht103112%_))))
                        (declare (not safe))
                        (_%wrap-checked103016%_ __tmp106255 true))))
                   (_%make-gambit-table103019%_
                    (lambda ()
                      (let* ((_%size103087%_
                              (let ((_%$e103084%_ _%size-hint102998%_))
                                (if _%$e103084%_
                                    _%$e103084%_
                                    (macro-absent-obj))))
                             (_%test103092%_
                              (let ((_%$e103089%_ _%test103002%_))
                                (if _%$e103089%_ _%$e103089%_ equal?)))
                             (_%hash103100%_
                              (let ((_%$e103094%_ _%hash103004%_))
                                (if _%$e103094%_
                                    _%$e103094%_
                                    (if (eq? _%test103092%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103092%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103105%_
                              (let ((_%$obj103102%_
                                     (make-table
                                      'size:
                                      _%size103087%_
                                      'test:
                                      _%test103092%_
                                      'hash:
                                      _%hash103100%_
                                      'weak-keys:
                                      _%weak-keys103010%_
                                      'weak-values:
                                      _%weak-values103012%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103102%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103102%_)))
                                         '#t)
                                    _%$obj103102%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103102%_))))))
                        (let ((__tmp106256
                               (let ()
                                 (declare (not safe))
                                 (_%wrap-lock103015%_ _%ht103105%_))))
                          (declare (not safe))
                          (_%wrap-checked103016%_ __tmp106256 true))))))
            (if (or _%weak-keys103010%_ _%weak-values103012%_)
                (let ()
                  (let () (declare (not safe)) (_%make-gambit-table103019%_)))
                (if (and (or (eq? _%test103002%_ eq?)
                             (eq? _%test103002%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103004%_))
                             (eq? _%hash103004%_ eq?-hash)
                             (eq? _%hash103004%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103000%_)))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (_%make-gc-hash-table103018%_)))
                    (if (and (or (eq? _%test103002%_ eq?)
                                 (eq? _%test103002%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103004%_))
                                 (eq? _%hash103004%_ eq?-hash)
                                 (eq? _%hash103004%_ eq-hash)))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (_%make103017%_
                             make-eq-hash-table
                             true
                             eq-hash
                             eq?)))
                        (if (and (or (eq? _%test103002%_ eqv?)
                                     (eq? _%test103002%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103004%_))
                                     (eq? _%hash103004%_ eqv?-hash)
                                     (eq? _%hash103004%_ eqv-hash)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (_%make103017%_
                                 make-eqv-hash-table
                                 true
                                 eqv-hash
                                 eqv?)))
                            (if (and (or (eq? _%test103002%_ eq?)
                                         (eq? _%test103002%_ ##eq?))
                                     (or (eq? _%hash103004%_ symbolic-hash)
                                         (eq? _%hash103004%_ ##symbol-hash)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%make103017%_
                                     make-symbol-hash-table
                                     symbolic?
                                     symbolic-hash
                                     eq?)))
                                (if (and (or (eq? _%test103002%_ eq?)
                                             (eq? _%test103002%_ ##eq?))
                                         (eq? _%hash103004%_ immediate-hash))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%make103017%_
                                         make-immediate-hash-table
                                         immediate?
                                         immediate-hash
                                         eq?)))
                                    (if (and (or (eq? _%test103002%_ equal?)
                                                 (eq? _%test103002%_ ##equal?)
                                                 (eq? _%test103002%_ string=?)
                                                 (eq? _%test103002%_
                                                      ##string=?))
                                             (or (eq? _%hash103004%_
                                                      string-hash)
                                                 (eq? _%hash103004%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (_%make103017%_
                                             make-string-hash-table
                                             string?
                                             string-hash
                                             ##string=?)))
                                        (if (and (eq? _%test103002%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103004%_)))
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (_%make103017%_
                                                 make-generic-hash-table
                                                 true
                                                 equal?-hash
                                                 equal?)))
                                            (if (let ((__tmp106257
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103002%_))))
                                                  (declare (not safe))
                                                  (not __tmp106257))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test103002%_)))
                                                (if (let ((__tmp106258
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103004%_))))
                                                      (declare (not safe))
                                                      (not __tmp106258))
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash103004%_)))
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%make103017%_
                                                         make-generic-hash-table
                                                         true
                                                         _%hash103004%_
                                                         _%test103002%_)))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103147%_ . _%args103148%_)
        (apply make-hash-table__%
               _%@@keywords103147%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103147%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103147%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103147%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103147%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103147%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103147%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103147%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103147%_
                  'weak-values:
                  absent-value))
               _%args103148%_)))
    (define make-hash-table
      (lambda _%args102977103154%_
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
               _%args102977103154%_)))
    (define make-hash-table-eq
      (lambda _%args102966%_
        (apply make-hash-table 'test: eq? _%args102966%_)))
    (define make-hash-table-eqv
      (lambda _%args102964%_
        (apply make-hash-table 'test: eqv? _%args102964%_)))
    (define make-hash-table-symbolic
      (lambda _%args102962%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args102962%_)))
    (define make-hash-table-string
      (lambda _%args102960%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args102960%_)))
    (define make-hash-table-immediate
      (lambda _%args102958%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args102958%_)))
    (define list->hash-table
      (lambda (_%lst102955%_ . _%args102956%_)
        (let ((__tmp106259
               (apply make-hash-table
                      'size:
                      (length _%lst102955%_)
                      _%args102956%_)))
          (declare (not safe))
          (list->hash-table! _%lst102955%_ __tmp106259))))
    (define list->hash-table-eq
      (lambda (_%lst102952%_ . _%args102953%_)
        (let ((__tmp106260
               (apply make-hash-table-eq
                      'size:
                      (length _%lst102952%_)
                      _%args102953%_)))
          (declare (not safe))
          (list->hash-table! _%lst102952%_ __tmp106260))))
    (define list->hash-table-eqv
      (lambda (_%lst102949%_ . _%args102950%_)
        (let ((__tmp106261
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst102949%_)
                      _%args102950%_)))
          (declare (not safe))
          (list->hash-table! _%lst102949%_ __tmp106261))))
    (define list->hash-table-symbolic
      (lambda (_%lst102946%_ . _%args102947%_)
        (let ((__tmp106262
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst102946%_)
                      _%args102947%_)))
          (declare (not safe))
          (list->hash-table! _%lst102946%_ __tmp106262))))
    (define list->hash-table-string
      (lambda (_%lst102943%_ . _%args102944%_)
        (let ((__tmp106263
               (apply make-hash-table-string
                      'size:
                      (length _%lst102943%_)
                      _%args102944%_)))
          (declare (not safe))
          (list->hash-table! _%lst102943%_ __tmp106263))))
    (define list->hash-table-immediate
      (lambda (_%lst102940%_ . _%args102941%_)
        (let ((__tmp106264
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst102940%_)
                      _%args102941%_)))
          (declare (not safe))
          (list->hash-table! _%lst102940%_ __tmp106264))))
    (define list->hash-table!
      (lambda (_%lst102907%_ _%h102908%_)
        (for-each
         (lambda (_%el102910%_)
           (let* ((_%el102911102918%_ _%el102910%_)
                  (_%E102913102922%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el102911102918%_
                              '([k . v])))
                     '#!void))
                  (_%K102914102928%_
                   (lambda (_%v102925%_ _%k102926%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h102908%_
                        _%k102926%_
                        _%v102925%_)))))
             (if (let () (declare (not safe)) (##pair? _%el102911102918%_))
                 (let ((_%hd102915102931%_
                        (let ()
                          (declare (not safe))
                          (##car _%el102911102918%_)))
                       (_%tl102916102933%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el102911102918%_))))
                   (let* ((_%k102936%_ _%hd102915102931%_)
                          (_%v102938%_ _%tl102916102933%_))
                     (declare (not safe))
                     (_%K102914102928%_ _%v102938%_ _%k102936%_)))
                 (let () (declare (not safe)) (_%E102913102922%_)))))
         _%lst102907%_)
        _%h102908%_))
    (define plist->hash-table
      (lambda (_%lst102904%_ . _%args102905%_)
        (let ((__tmp106265
               (apply make-hash-table
                      'size:
                      (length _%lst102904%_)
                      _%args102905%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102904%_ __tmp106265))))
    (define plist->hash-table-eq
      (lambda (_%lst102901%_ . _%args102902%_)
        (let ((__tmp106266
               (apply make-hash-table-eq
                      'size:
                      (length _%lst102901%_)
                      _%args102902%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102901%_ __tmp106266))))
    (define plist->hash-table-eqv
      (lambda (_%lst102898%_ . _%args102899%_)
        (let ((__tmp106267
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst102898%_)
                      _%args102899%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102898%_ __tmp106267))))
    (define plist->hash-table-symbolic
      (lambda (_%lst102895%_ . _%args102896%_)
        (let ((__tmp106268
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst102895%_)
                      _%args102896%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102895%_ __tmp106268))))
    (define plist->hash-table-string
      (lambda (_%lst102892%_ . _%args102893%_)
        (let ((__tmp106269
               (apply make-hash-table-string
                      'size:
                      (length _%lst102892%_)
                      _%args102893%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102892%_ __tmp106269))))
    (define plist->hash-table-immediate
      (lambda (_%lst102889%_ . _%args102890%_)
        (let ((__tmp106270
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst102889%_)
                      _%args102890%_)))
          (declare (not safe))
          (plist->hash-table! _%lst102889%_ __tmp106270))))
    (define plist->hash-table!
      (lambda (_%lst102829%_ _%h102830%_)
        (let _%loop102832%_ ((_%rest102834%_ _%lst102829%_))
          (let* ((_%rest102835102847%_ _%rest102834%_)
                 (_%else102838102855%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst102829%_)))))
            (let ((_%K102841102870%_
                   (lambda (_%rest102866%_ _%val102867%_ _%key102868%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h102830%_
                        _%key102868%_
                        _%val102867%_))
                     (let ()
                       (declare (not safe))
                       (_%loop102832%_ _%rest102866%_))))
                  (_%K102840102860%_ (lambda () _%h102830%_)))
              (let ((_%try-match102837102863%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest102835102847%_))
                           (let () (declare (not safe)) (_%K102840102860%_))
                           (let ()
                             (declare (not safe))
                             (_%else102838102855%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest102835102847%_))
                    (let ((_%tl102843102875%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest102835102847%_)))
                          (_%hd102842102873%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest102835102847%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl102843102875%_))
                          (let ((_%tl102845102882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl102843102875%_)))
                                (_%hd102844102880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl102843102875%_))))
                            (let ((_%key102878%_ _%hd102842102873%_)
                                  (_%val102885%_ _%hd102844102880%_)
                                  (_%rest102887%_ _%tl102845102882%_))
                              (let ()
                                (declare (not safe))
                                (_%K102841102870%_
                                 _%rest102887%_
                                 _%val102885%_
                                 _%key102878%_))))
                          (let ()
                            (declare (not safe))
                            (_%else102838102855%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match102837102863%_)))))))))
    (define hash-length
      (lambda (_%h102811%_)
        (let ()
          (let* ((_%h102817%_
                  (let ((_%$obj102814%_ _%h102811%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102814%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102814%_)))
                             '#t)
                        _%$obj102814%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102814%_)))))
                 (_%h102819%_ _%h102817%_))
            (let ()
              (let () (declare (not safe)) (__hash-length _%h102819%_)))))))
    (define __hash-length
      (lambda (_%h102799%_)
        (let ()
          (let ((_%h102802%_ _%h102799%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-length _%h102802%_)))))))
    (define hash-ref__%
      (lambda (_%h102767%_ _%key102768%_ _%default102769%_)
        (let ()
          (let* ((_%h102775%_
                  (let ((_%$obj102772%_ _%h102767%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102772%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102772%_)))
                             '#t)
                        _%$obj102772%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102772%_)))))
                 (_%h102777%_ _%h102775%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-ref__%
                 _%h102777%_
                 _%key102768%_
                 _%default102769%_)))))))
    (define hash-ref__0
      (lambda (_%h102790%_ _%key102791%_)
        (let ((_%default102793%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h102790%_ _%key102791%_ _%default102793%_))))
    (define hash-ref
      (lambda _g106272_
        (let ((_g106271_ (let () (declare (not safe)) (##length _g106272_))))
          (cond ((let () (declare (not safe)) (##fx= _g106271_ 2))
                 (apply (lambda (_%h102790%_ _%key102791%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h102790%_ _%key102791%_)))
                        _g106272_))
                ((let () (declare (not safe)) (##fx= _g106271_ 3))
                 (apply (lambda (_%h102795%_ _%key102796%_ _%default102797%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h102795%_
                             _%key102796%_
                             _%default102797%_)))
                        _g106272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106272_))))))
    (define __hash-ref__%
      (lambda (_%h102738%_ _%key102739%_ _%default102740%_)
        (let ()
          (let ((_%h102743%_ _%h102738%_))
            (let ()
              (let ((_%result102752%_
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h102743%_
                        _%key102739%_
                        _%default102740%_))))
                (if (eq? _%result102752%_ (macro-absent-obj))
                    (let ()
                      (declare (not safe))
                      (raise-unbound-key-error
                       'hash-ref
                       '"unknown hash key"
                       'hash:
                       _%h102743%_
                       'key:
                       _%key102739%_))
                    _%result102752%_)))))))
    (define __hash-ref__0
      (lambda (_%h102757%_ _%key102758%_)
        (let ((_%default102760%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h102757%_ _%key102758%_ _%default102760%_))))
    (define __hash-ref
      (lambda _g106274_
        (let ((_g106273_ (let () (declare (not safe)) (##length _g106274_))))
          (cond ((let () (declare (not safe)) (##fx= _g106273_ 2))
                 (apply (lambda (_%h102757%_ _%key102758%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h102757%_ _%key102758%_)))
                        _g106274_))
                ((let () (declare (not safe)) (##fx= _g106273_ 3))
                 (apply (lambda (_%h102762%_ _%key102763%_ _%default102764%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h102762%_
                             _%key102763%_
                             _%default102764%_)))
                        _g106274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106274_))))))
    (define hash-get
      (lambda (_%h102718%_ _%key102719%_)
        (let ()
          (let* ((_%h102725%_
                  (let ((_%$obj102722%_ _%h102718%_))
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
                (__hash-get _%h102727%_ _%key102719%_)))))))
    (define __hash-get
      (lambda (_%h102705%_ _%key102706%_)
        (let ()
          (let ((_%h102709%_ _%h102705%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-ref _%h102709%_ _%key102706%_ '#f)))))))
    (define hash-put!
      (lambda (_%h102685%_ _%key102686%_ _%value102687%_)
        (let ()
          (let* ((_%h102693%_
                  (let ((_%$obj102690%_ _%h102685%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102690%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102690%_)))
                             '#t)
                        _%$obj102690%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102690%_)))))
                 (_%h102695%_ _%h102693%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-put! _%h102695%_ _%key102686%_ _%value102687%_)))))))
    (define __hash-put!
      (lambda (_%h102671%_ _%key102672%_ _%value102673%_)
        (let ()
          (let ((_%h102676%_ _%h102671%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-set!
                 _%h102676%_
                 _%key102672%_
                 _%value102673%_)))))))
    (define hash-update!__%
      (lambda (_%h102636%_ _%key102637%_ _%update102638%_ _%default102639%_)
        (let ()
          (let* ((_%h102645%_
                  (let ((_%$obj102642%_ _%h102636%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102642%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102642%_)))
                             '#t)
                        _%$obj102642%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102642%_)))))
                 (_%h102647%_ _%h102645%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-update!__%
                 _%h102647%_
                 _%key102637%_
                 _%update102638%_
                 _%default102639%_)))))))
    (define hash-update!__0
      (lambda (_%h102660%_ _%key102661%_ _%update102662%_)
        (let ((_%default102664%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h102660%_
           _%key102661%_
           _%update102662%_
           _%default102664%_))))
    (define hash-update!
      (lambda _g106276_
        (let ((_g106275_ (let () (declare (not safe)) (##length _g106276_))))
          (cond ((let () (declare (not safe)) (##fx= _g106275_ 3))
                 (apply (lambda (_%h102660%_ _%key102661%_ _%update102662%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h102660%_
                             _%key102661%_
                             _%update102662%_)))
                        _g106276_))
                ((let () (declare (not safe)) (##fx= _g106275_ 4))
                 (apply (lambda (_%h102666%_
                                 _%key102667%_
                                 _%update102668%_
                                 _%default102669%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h102666%_
                             _%key102667%_
                             _%update102668%_
                             _%default102669%_)))
                        _g106276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106276_))))))
    (define __hash-update!__%
      (lambda (_%h102606%_ _%key102607%_ _%update102608%_ _%default102609%_)
        (let ()
          (let ((_%h102612%_ _%h102606%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _%h102612%_
                 _%key102607%_
                 _%update102608%_
                 _%default102609%_)))))))
    (define __hash-update!__0
      (lambda (_%h102624%_ _%key102625%_ _%update102626%_)
        (let ((_%default102628%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h102624%_
           _%key102625%_
           _%update102626%_
           _%default102628%_))))
    (define __hash-update!
      (lambda _g106278_
        (let ((_g106277_ (let () (declare (not safe)) (##length _g106278_))))
          (cond ((let () (declare (not safe)) (##fx= _g106277_ 3))
                 (apply (lambda (_%h102624%_ _%key102625%_ _%update102626%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h102624%_
                             _%key102625%_
                             _%update102626%_)))
                        _g106278_))
                ((let () (declare (not safe)) (##fx= _g106277_ 4))
                 (apply (lambda (_%h102630%_
                                 _%key102631%_
                                 _%update102632%_
                                 _%default102633%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h102630%_
                             _%key102631%_
                             _%update102632%_
                             _%default102633%_)))
                        _g106278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106278_))))))
    (define hash-remove!
      (lambda (_%h102586%_ _%key102587%_)
        (let ()
          (let* ((_%h102593%_
                  (let ((_%$obj102590%_ _%h102586%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102590%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102590%_)))
                             '#t)
                        _%$obj102590%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102590%_)))))
                 (_%h102595%_ _%h102593%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-remove! _%h102595%_ _%key102587%_)))))))
    (define __hash-remove!
      (lambda (_%h102573%_ _%key102574%_)
        (let ()
          (let ((_%h102577%_ _%h102573%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-delete! _%h102577%_ _%key102574%_)))))))
    (define hash-key?
      (lambda (_%h102554%_ _%k102555%_)
        (let ()
          (let* ((_%h102561%_
                  (let ((_%$obj102558%_ _%h102554%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102558%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102558%_)))
                             '#t)
                        _%$obj102558%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102558%_)))))
                 (_%h102563%_ _%h102561%_))
            (let ()
              (let ()
                (declare (not safe))
                (__hash-key? _%h102563%_ _%k102555%_)))))))
    (define __hash-key?
      (lambda (_%h102541%_ _%k102542%_)
        (let ()
          (let ((_%h102545%_ _%h102541%_))
            (let ()
              (let ((__tmp106279
                     (eq? (let ()
                            (declare (not safe))
                            (&HashTable-ref
                             _%h102545%_
                             _%k102542%_
                             absent-value))
                          absent-value)))
                (declare (not safe))
                (not __tmp106279)))))))
    (define hash->list
      (lambda (_%h102523%_)
        (let ()
          (let* ((_%h102529%_
                  (let ((_%$obj102526%_ _%h102523%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102526%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102526%_)))
                             '#t)
                        _%$obj102526%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102526%_)))))
                 (_%h102531%_ _%h102529%_))
            (let ()
              (let () (declare (not safe)) (__hash->list _%h102531%_)))))))
    (define __hash->list
      (lambda (_%h102506%_)
        (let ()
          (let ((_%h102509%_ _%h102506%_))
            (let ()
              (let ((_%lst102518%_ '()))
                (let ((__tmp106280
                       (lambda (_%k102520%_ _%v102521%_)
                         (set! _%lst102518%_
                               (cons (cons _%k102520%_ _%v102521%_)
                                     _%lst102518%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102509%_ __tmp106280))
                _%lst102518%_))))))
    (define hash->plist
      (lambda (_%h102488%_)
        (let ()
          (let* ((_%h102494%_
                  (let ((_%$obj102491%_ _%h102488%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102491%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102491%_)))
                             '#t)
                        _%$obj102491%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102491%_)))))
                 (_%h102496%_ _%h102494%_))
            (let ()
              (let () (declare (not safe)) (__hash->plist _%h102496%_)))))))
    (define __hash->plist
      (lambda (_%h102471%_)
        (let ()
          (let ((_%h102474%_ _%h102471%_))
            (let ()
              (let ((_%lst102483%_ '()))
                (let ((__tmp106281
                       (lambda (_%k102485%_ _%v102486%_)
                         (set! _%lst102483%_
                               (let ((__tmp106282
                                      (let ()
                                        (declare (not safe))
                                        (cons _%v102486%_ _%lst102483%_))))
                                 (declare (not safe))
                                 (cons _%k102485%_ __tmp106282))))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102474%_ __tmp106281))
                _%lst102483%_))))))
    (define hash-for-each
      (lambda (_%proc102442%_ _%h102443%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102442%_))
              (let ()
                (let ((_%proc102447%_ _%proc102442%_))
                  (let* ((_%h102459%_
                          (let ((_%$obj102456%_ _%h102443%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102456%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102456%_)))
                                     '#t)
                                _%$obj102456%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102456%_)))))
                         (_%h102461%_ _%h102459%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-for-each _%proc102447%_ _%h102461%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc102442%_)))))
    (define __hash-for-each
      (lambda (_%proc102421%_ _%h102422%_)
        (let ()
          (let ((_%proc102425%_ _%proc102421%_))
            (let ((_%h102433%_ _%h102422%_))
              (let ()
                (let ()
                  (declare (not safe))
                  (&HashTable-for-each _%h102433%_ _%proc102425%_))))))))
    (define hash-map
      (lambda (_%proc102392%_ _%h102393%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102392%_))
              (let ()
                (let ((_%proc102397%_ _%proc102392%_))
                  (let* ((_%h102409%_
                          (let ((_%$obj102406%_ _%h102393%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102406%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102406%_)))
                                     '#t)
                                _%$obj102406%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102406%_)))))
                         (_%h102411%_ _%h102409%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-map _%proc102397%_ _%h102411%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc102392%_)))))
    (define __hash-map
      (lambda (_%proc102366%_ _%h102367%_)
        (let ()
          (let ((_%proc102370%_ _%proc102366%_))
            (let ((_%h102378%_ _%h102367%_))
              (let ()
                (let ((_%result102387%_ '()))
                  (let ((__tmp106283
                         (lambda (_%k102389%_ _%v102390%_)
                           (set! _%result102387%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%proc102370%_
                                          _%k102389%_
                                          _%v102390%_))
                                       _%result102387%_)))))
                    (declare (not safe))
                    (&HashTable-for-each _%h102378%_ __tmp106283))
                  _%result102387%_)))))))
    (define hash-fold
      (lambda (_%proc102336%_ _%iv102337%_ _%h102338%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102336%_))
              (let ()
                (let ((_%proc102342%_ _%proc102336%_))
                  (let* ((_%h102354%_
                          (let ((_%$obj102351%_ _%h102338%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102351%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102351%_)))
                                     '#t)
                                _%$obj102351%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102351%_)))))
                         (_%h102356%_ _%h102354%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-fold
                         _%proc102342%_
                         _%iv102337%_
                         _%h102356%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc102336%_)))))
    (define __hash-fold
      (lambda (_%proc102309%_ _%iv102310%_ _%h102311%_)
        (let ()
          (let ((_%proc102314%_ _%proc102309%_))
            (let ((_%h102322%_ _%h102311%_))
              (let ()
                (let ((_%result102331%_ _%iv102310%_))
                  (let ((__tmp106284
                         (lambda (_%k102333%_ _%v102334%_)
                           (set! _%result102331%_
                                 (let ()
                                   (declare (not safe))
                                   (_%proc102314%_
                                    _%k102333%_
                                    _%v102334%_
                                    _%result102331%_))))))
                    (declare (not safe))
                    (&HashTable-for-each _%h102322%_ __tmp106284))
                  _%result102331%_)))))))
    (define hash-find__%
      (lambda (_%proc102267%_ _%h102268%_ _%default-value102269%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102267%_))
              (let ()
                (let ((_%proc102273%_ _%proc102267%_))
                  (let* ((_%h102285%_
                          (let ((_%$obj102282%_ _%h102268%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj102282%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj102282%_)))
                                     '#t)
                                _%$obj102282%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj102282%_)))))
                         (_%h102287%_ _%h102285%_))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__hash-find__%
                         _%proc102273%_
                         _%h102287%_
                         _%default-value102269%_))))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc102267%_)))))
    (define hash-find__0
      (lambda (_%proc102300%_ _%h102301%_)
        (let ((_%default-value102303%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc102300%_ _%h102301%_ _%default-value102303%_))))
    (define hash-find
      (lambda _g106286_
        (let ((_g106285_ (let () (declare (not safe)) (##length _g106286_))))
          (cond ((let () (declare (not safe)) (##fx= _g106285_ 2))
                 (apply (lambda (_%proc102300%_ _%h102301%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc102300%_ _%h102301%_)))
                        _g106286_))
                ((let () (declare (not safe)) (##fx= _g106285_ 3))
                 (apply (lambda (_%proc102305%_
                                 _%h102306%_
                                 _%default-value102307%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc102305%_
                             _%h102306%_
                             _%default-value102307%_)))
                        _g106286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106286_))))))
    (define __hash-find__%
      (lambda (_%proc102224%_ _%h102225%_ _%default-value102226%_)
        (let ()
          (let ((_%proc102229%_ _%proc102224%_))
            (let ((_%h102237%_ _%h102225%_))
              (let ()
                (let ((__tmp106287
                       (lambda (_%return102246%_)
                         (let ((__tmp106288
                                (lambda (_%k102248%_ _%v102249%_)
                                  (let ((_%$e102251%_
                                         (let ()
                                           (declare (not safe))
                                           (_%proc102229%_
                                            _%k102248%_
                                            _%v102249%_))))
                                    (if _%$e102251%_
                                        (_%return102246%_ _%$e102251%_)
                                        '#!void)))))
                           (declare (not safe))
                           (&HashTable-for-each _%h102237%_ __tmp106288))
                         _%default-value102226%_)))
                  (declare (not safe))
                  (##call-with-current-continuation __tmp106287))))))))
    (define __hash-find__0
      (lambda (_%proc102257%_ _%h102258%_)
        (let ((_%default-value102260%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102257%_
           _%h102258%_
           _%default-value102260%_))))
    (define __hash-find
      (lambda _g106290_
        (let ((_g106289_ (let () (declare (not safe)) (##length _g106290_))))
          (cond ((let () (declare (not safe)) (##fx= _g106289_ 2))
                 (apply (lambda (_%proc102257%_ _%h102258%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102257%_ _%h102258%_)))
                        _g106290_))
                ((let () (declare (not safe)) (##fx= _g106289_ 3))
                 (apply (lambda (_%proc102262%_
                                 _%h102263%_
                                 _%default-value102264%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102262%_
                             _%h102263%_
                             _%default-value102264%_)))
                        _g106290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106290_))))))
    (define hash-keys
      (lambda (_%h102205%_)
        (let ()
          (let* ((_%h102211%_
                  (let ((_%$obj102208%_ _%h102205%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102208%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102208%_)))
                             '#t)
                        _%$obj102208%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102208%_)))))
                 (_%h102213%_ _%h102211%_))
            (let ()
              (let () (declare (not safe)) (__hash-keys _%h102213%_)))))))
    (define __hash-keys
      (lambda (_%h102188%_)
        (let ()
          (let ((_%h102191%_ _%h102188%_))
            (let ()
              (let ((_%result102200%_ '()))
                (let ((__tmp106291
                       (lambda (_%k102202%_ _%v102203%_)
                         (set! _%result102200%_
                               (cons _%k102202%_ _%result102200%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102191%_ __tmp106291))
                _%result102200%_))))))
    (define hash-values
      (lambda (_%h102170%_)
        (let ()
          (let* ((_%h102176%_
                  (let ((_%$obj102173%_ _%h102170%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102173%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102173%_)))
                             '#t)
                        _%$obj102173%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102173%_)))))
                 (_%h102178%_ _%h102176%_))
            (let ()
              (let () (declare (not safe)) (__hash-values _%h102178%_)))))))
    (define __hash-values
      (lambda (_%h102153%_)
        (let ()
          (let ((_%h102156%_ _%h102153%_))
            (let ()
              (let ((_%result102165%_ '()))
                (let ((__tmp106292
                       (lambda (_%k102167%_ _%v102168%_)
                         (set! _%result102165%_
                               (cons _%v102168%_ _%result102165%_)))))
                  (declare (not safe))
                  (&HashTable-for-each _%h102156%_ __tmp106292))
                _%result102165%_))))))
    (define hash-copy
      (lambda (_%h102135%_)
        (let ()
          (let* ((_%h102141%_
                  (let ((_%$obj102138%_ _%h102135%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102138%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102138%_)))
                             '#t)
                        _%$obj102138%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102138%_)))))
                 (_%h102143%_ _%h102141%_))
            (let ()
              (let () (declare (not safe)) (__hash-copy _%h102143%_)))))))
    (define __hash-copy
      (lambda (_%h102123%_)
        (let ()
          (let ((_%h102126%_ _%h102123%_))
            (let ()
              (let () (declare (not safe)) (&HashTable-copy _%h102126%_)))))))
    (define hash-clear!
      (lambda (_%h102105%_)
        (let ()
          (let* ((_%h102111%_
                  (let ((_%$obj102108%_ _%h102105%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102108%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102108%_)))
                             '#t)
                        _%$obj102108%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102108%_)))))
                 (_%h102113%_ _%h102111%_))
            (let ()
              (let () (declare (not safe)) (__hash-clear! _%h102113%_)))))))
    (define __hash-clear!
      (lambda (_%h102093%_)
        (let ()
          (let ((_%h102096%_ _%h102093%_))
            (let ()
              (let ()
                (declare (not safe))
                (&HashTable-clear! _%h102096%_)))))))
    (define hash-merge
      (lambda (_%h102074%_ . _%rest102075%_)
        (let ()
          (let* ((_%h102081%_
                  (let ((_%$obj102078%_ _%h102074%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102078%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102078%_)))
                             '#t)
                        _%$obj102078%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102078%_)))))
                 (_%h102083%_ _%h102081%_))
            (let ()
              (let ()
                (declare (not safe))
                (##apply __hash-merge _%h102083%_ _%rest102075%_)))))))
    (define __hash-merge
      (lambda (_%h102059%_ . _%rest102060%_)
        (let ()
          (let ((_%h102063%_ _%h102059%_))
            (let ()
              (let ((_%copy102072%_
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h102063%_))))
                (apply hash-merge! _%copy102072%_ _%rest102060%_)
                _%copy102072%_))))))
    (define hash-merge!
      (lambda (_%h102040%_ . _%rest102041%_)
        (let ()
          (let* ((_%h102047%_
                  (let ((_%$obj102044%_ _%h102040%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102044%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102044%_)))
                             '#t)
                        _%$obj102044%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102044%_)))))
                 (_%h102049%_ _%h102047%_))
            (let ()
              (let ()
                (declare (not safe))
                (##apply __hash-merge! _%h102049%_ _%rest102041%_)))))))
    (define __hash-merge!
      (lambda (_%h102003%_ . _%rest102004%_)
        (let ()
          (let ((_%h102007%_ _%h102003%_))
            (let ()
              (for-each
               (lambda (_%hr102016%_)
                 (let ()
                   (let* ((_%hr102022%_
                           (let ((_%$obj102019%_ _%hr102016%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj102019%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj102019%_)))
                                      '#t)
                                 _%$obj102019%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj102019%_)))))
                          (_%hr102024%_ _%hr102022%_))
                     (let ()
                       (let ((__tmp106293
                              (lambda (_%k102037%_ _%v102038%_)
                                (if (let ()
                                      (declare (not safe))
                                      (__hash-key? _%h102007%_ _%k102037%_))
                                    '#!void
                                    (let ()
                                      (declare (not safe))
                                      (&HashTable-set!
                                       _%h102007%_
                                       _%k102037%_
                                       _%v102038%_))))))
                         (declare (not safe))
                         (&HashTable-for-each _%hr102024%_ __tmp106293))))))
               _%rest102004%_)
              _%h102007%_)))))))
