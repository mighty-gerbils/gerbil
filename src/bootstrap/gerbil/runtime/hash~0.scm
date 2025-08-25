(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1756142015)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp117208 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp117208
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args117122%_
        (apply make-instance UnboundKeyError::t _%$args117122%_)))
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
      (lambda (_%where116996%_ _%message116997%_ . _%irritants116998%_)
        (let ((__tmp117209
               (let ((__obj117202
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj117202
                    _%message116997%_
                    'where:
                    _%where116996%_
                    'irritants:
                    _%irritants116998%_))
                 __obj117202)))
          (declare (not safe))
          (raise __tmp117209))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp117210 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp117210
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
      (lambda (_%obj116994%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj116994%_))))
    (define try-HashTable
      (lambda (_%obj116992%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj116992%_))))
    (define HashTable?
      (lambda (_%obj116990%_)
        (let ((__tmp117211
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj116990%_ __tmp117211))))
    (define is-HashTable?
      (lambda (_%obj116988%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj116988%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self116972%_)
        (let* ((_%self116977%_
                (let ((_%$obj116974%_ _%self116972%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116974%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116974%_)))
                           '#t)
                      _%$obj116974%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj116974%_)))))
               (_%self116979%_ _%self116977%_))
          (&HashTable-clear! _%self116979%_))))
    (define &HashTable-clear!
      (lambda (_%self116957%_)
        (let ((_%self116959%_ _%self116957%_))
          (declare (not safe))
          (let ((_%obj116969%_
                 (##unchecked-structure-ref _%self116959%_ '1 '#f 'clear!))
                (_%f116970%_
                 (##unchecked-structure-ref _%self116959%_ '2 '#f 'clear!)))
            (_%f116970%_ _%obj116969%_)))))
    (define HashTable-copy
      (lambda (_%self116941%_)
        (let* ((_%self116946%_
                (let ((_%$obj116943%_ _%self116941%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116943%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116943%_)))
                           '#t)
                      _%$obj116943%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj116943%_)))))
               (_%self116948%_ _%self116946%_))
          (__HashTable-copy _%self116948%_))))
    (define __HashTable-copy
      (lambda (_%self116928%_)
        (let* ((_%self116930%_ _%self116928%_)
               (_%$obj116938%_ (&HashTable-copy _%self116930%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj116938%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj116938%_)))
                   '#t)
              _%$obj116938%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj116938%_))))))
    (define &HashTable-copy
      (lambda (_%self116913%_)
        (let ((_%self116915%_ _%self116913%_))
          (declare (not safe))
          (let ((_%obj116925%_
                 (##unchecked-structure-ref _%self116915%_ '1 '#f 'copy))
                (_%f116926%_
                 (##unchecked-structure-ref _%self116915%_ '3 '#f 'copy)))
            (_%f116926%_ _%obj116925%_)))))
    (define HashTable-delete!
      (lambda (_%self116896%_ _%key116897%_)
        (let* ((_%self116902%_
                (let ((_%$obj116899%_ _%self116896%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116899%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116899%_)))
                           '#t)
                      _%$obj116899%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj116899%_)))))
               (_%self116904%_ _%self116902%_))
          (&HashTable-delete! _%self116904%_ _%key116897%_))))
    (define &HashTable-delete!
      (lambda (_%self116880%_ _%key116881%_)
        (let ((_%self116883%_ _%self116880%_))
          (declare (not safe))
          (let ((_%obj116893%_
                 (##unchecked-structure-ref _%self116883%_ '1 '#f 'delete!))
                (_%f116894%_
                 (##unchecked-structure-ref _%self116883%_ '4 '#f 'delete!)))
            (_%f116894%_ _%obj116893%_ _%key116881%_)))))
    (define HashTable-for-each
      (lambda (_%self116853%_ _%proc116854%_)
        (let* ((_%self116859%_
                (let ((_%$obj116856%_ _%self116853%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116856%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116856%_)))
                           '#t)
                      _%$obj116856%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj116856%_)))))
               (_%self116861%_ _%self116859%_))
          (if (procedure? _%proc116854%_)
              (let ((_%proc116870%_ _%proc116854%_))
                (&HashTable-for-each _%self116861%_ _%proc116870%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc116854%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self116829%_ _%proc116830%_)
        (let* ((_%self116832%_ _%self116829%_) (_%proc116839%_ _%proc116830%_))
          (declare (not safe))
          (let ((_%obj116850%_
                 (##unchecked-structure-ref _%self116832%_ '1 '#f 'for-each))
                (_%f116851%_
                 (##unchecked-structure-ref _%self116832%_ '5 '#f 'for-each)))
            (_%f116851%_ _%obj116850%_ _%proc116839%_)))))
    (define HashTable-length
      (lambda (_%self116813%_)
        (let* ((_%self116818%_
                (let ((_%$obj116815%_ _%self116813%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116815%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116815%_)))
                           '#t)
                      _%$obj116815%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj116815%_)))))
               (_%self116820%_ _%self116818%_))
          (__HashTable-length _%self116820%_))))
    (define __HashTable-length
      (lambda (_%self116800%_)
        (let* ((_%self116802%_ _%self116800%_)
               (_%val116810%_ (&HashTable-length _%self116802%_)))
          _%val116810%_)))
    (define &HashTable-length
      (lambda (_%self116785%_)
        (let ((_%self116787%_ _%self116785%_))
          (declare (not safe))
          (let ((_%obj116797%_
                 (##unchecked-structure-ref _%self116787%_ '1 '#f 'length))
                (_%f116798%_
                 (##unchecked-structure-ref _%self116787%_ '6 '#f 'length)))
            (_%f116798%_ _%obj116797%_)))))
    (define HashTable-ref
      (lambda (_%self116767%_ _%key116768%_ _%default116769%_)
        (let* ((_%self116774%_
                (let ((_%$obj116771%_ _%self116767%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116771%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116771%_)))
                           '#t)
                      _%$obj116771%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj116771%_)))))
               (_%self116776%_ _%self116774%_))
          (&HashTable-ref _%self116776%_ _%key116768%_ _%default116769%_))))
    (define &HashTable-ref
      (lambda (_%self116750%_ _%key116751%_ _%default116752%_)
        (let ((_%self116754%_ _%self116750%_))
          (declare (not safe))
          (let ((_%obj116764%_
                 (##unchecked-structure-ref _%self116754%_ '1 '#f 'ref))
                (_%f116765%_
                 (##unchecked-structure-ref _%self116754%_ '7 '#f 'ref)))
            (_%f116765%_ _%obj116764%_ _%key116751%_ _%default116752%_)))))
    (define HashTable-set!
      (lambda (_%self116732%_ _%key116733%_ _%value116734%_)
        (let* ((_%self116739%_
                (let ((_%$obj116736%_ _%self116732%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116736%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116736%_)))
                           '#t)
                      _%$obj116736%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj116736%_)))))
               (_%self116741%_ _%self116739%_))
          (&HashTable-set! _%self116741%_ _%key116733%_ _%value116734%_))))
    (define &HashTable-set!
      (lambda (_%self116715%_ _%key116716%_ _%value116717%_)
        (let ((_%self116719%_ _%self116715%_))
          (declare (not safe))
          (let ((_%obj116729%_
                 (##unchecked-structure-ref _%self116719%_ '1 '#f 'set!))
                (_%f116730%_
                 (##unchecked-structure-ref _%self116719%_ '8 '#f 'set!)))
            (_%f116730%_ _%obj116729%_ _%key116716%_ _%value116717%_)))))
    (define HashTable-update!
      (lambda (_%self116686%_ _%key116687%_ _%proc116688%_ _%default116689%_)
        (let* ((_%self116694%_
                (let ((_%$obj116691%_ _%self116686%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116691%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116691%_)))
                           '#t)
                      _%$obj116691%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj116691%_)))))
               (_%self116696%_ _%self116694%_))
          (if (procedure? _%proc116688%_)
              (let ((_%proc116705%_ _%proc116688%_))
                (&HashTable-update!
                 _%self116696%_
                 _%key116687%_
                 _%proc116705%_
                 _%default116689%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc116688%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self116658%_ _%key116659%_ _%proc116660%_ _%default116661%_)
        (let* ((_%self116663%_ _%self116658%_) (_%proc116670%_ _%proc116660%_))
          (declare (not safe))
          (let ((_%obj116681%_
                 (##unchecked-structure-ref _%self116663%_ '1 '#f 'update!))
                (_%f116683%_
                 (##unchecked-structure-ref _%self116663%_ '9 '#f 'update!)))
            (_%f116683%_
             _%obj116681%_
             _%key116659%_
             _%proc116670%_
             _%default116661%_)))))
    (define Locker::t
      (let ((__tmp117212 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp117212
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
      (lambda (_%obj116656%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj116656%_))))
    (define try-Locker
      (lambda (_%obj116654%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj116654%_))))
    (define Locker?
      (lambda (_%obj116652%_)
        (let ((__tmp117213
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj116652%_ __tmp117213))))
    (define is-Locker?
      (lambda (_%obj116650%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj116650%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self116634%_)
        (let* ((_%self116639%_
                (let ((_%$obj116636%_ _%self116634%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116636%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116636%_)))
                           '#t)
                      _%$obj116636%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj116636%_)))))
               (_%self116641%_ _%self116639%_))
          (&Locker-read-lock! _%self116641%_))))
    (define &Locker-read-lock!
      (lambda (_%self116619%_)
        (let ((_%self116621%_ _%self116619%_))
          (declare (not safe))
          (let ((_%obj116631%_
                 (##unchecked-structure-ref _%self116621%_ '1 '#f 'read-lock!))
                (_%f116632%_
                 (##unchecked-structure-ref
                  _%self116621%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f116632%_ _%obj116631%_)))))
    (define Locker-read-unlock!
      (lambda (_%self116603%_)
        (let* ((_%self116608%_
                (let ((_%$obj116605%_ _%self116603%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116605%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116605%_)))
                           '#t)
                      _%$obj116605%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj116605%_)))))
               (_%self116610%_ _%self116608%_))
          (&Locker-read-unlock! _%self116610%_))))
    (define &Locker-read-unlock!
      (lambda (_%self116588%_)
        (let ((_%self116590%_ _%self116588%_))
          (declare (not safe))
          (let ((_%obj116600%_
                 (##unchecked-structure-ref
                  _%self116590%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f116601%_
                 (##unchecked-structure-ref
                  _%self116590%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f116601%_ _%obj116600%_)))))
    (define Locker-write-lock!
      (lambda (_%self116572%_)
        (let* ((_%self116577%_
                (let ((_%$obj116574%_ _%self116572%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116574%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116574%_)))
                           '#t)
                      _%$obj116574%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj116574%_)))))
               (_%self116579%_ _%self116577%_))
          (&Locker-write-lock! _%self116579%_))))
    (define &Locker-write-lock!
      (lambda (_%self116557%_)
        (let ((_%self116559%_ _%self116557%_))
          (declare (not safe))
          (let ((_%obj116569%_
                 (##unchecked-structure-ref
                  _%self116559%_
                  '1
                  '#f
                  'write-lock!))
                (_%f116570%_
                 (##unchecked-structure-ref
                  _%self116559%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f116570%_ _%obj116569%_)))))
    (define Locker-write-unlock!
      (lambda (_%self116541%_)
        (let* ((_%self116546%_
                (let ((_%$obj116543%_ _%self116541%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj116543%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj116543%_)))
                           '#t)
                      _%$obj116543%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj116543%_)))))
               (_%self116548%_ _%self116546%_))
          (&Locker-write-unlock! _%self116548%_))))
    (define &Locker-write-unlock!
      (lambda (_%self116524%_)
        (let ((_%self116526%_ _%self116524%_))
          (declare (not safe))
          (let ((_%obj116536%_
                 (##unchecked-structure-ref
                  _%self116526%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f116538%_
                 (##unchecked-structure-ref
                  _%self116526%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f116538%_ _%obj116536%_)))))
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
      (lambda (_%table116517%_
               _%key116518%_
               _%update116519%_
               _%default116520%_)
        (let ((_%result116522%_
               (table-ref _%table116517%_ _%key116518%_ _%default116520%_)))
          (table-set!
           _%table116517%_
           _%key116518%_
           (_%update116519%_ _%default116520%_)))))
    (define gambit-table-for-each
      (lambda (_%table116514%_ _%proc116515%_)
        (table-for-each _%proc116515%_ _%table116514%_)))
    (define gambit-table-clear!
      (lambda (_%table116512%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table116512%_ '0 '5 '#f '#f))))
    (let ((__tmp117214 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp117214 'HashTable::ref table-ref))
    (let ((__tmp117215 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp117215 'HashTable::set! table-set!))
    (let ((__tmp117216 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp117216 'HashTable::update! gambit-table-update!))
    (let ((__tmp117217 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp117217 'HashTable::delete! table-set!))
    (let ((__tmp117218 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp117218 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp117219 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp117219 'HashTable::length table-length))
    (let ((__tmp117220 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp117220 'HashTable::copy table-copy))
    (let ((__tmp117221 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp117221 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots116494%_ '(table count free hash test seed))
             (_%slot-vector116496%_ (list->vector (cons '#f _%slots116494%_)))
             (_%slot-table116503%_
              (let ((_%slot-table116498%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp117224
                       (lambda (_%slot116500%_ _%field116501%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table116498%_
                            _%slot116500%_
                            _%field116501%_))
                         (let ((__tmp117225
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot116500%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table116498%_
                            __tmp117225
                            _%field116501%_))))
                      (__tmp117222
                       (let ((__tmp117223
                              (let ()
                                (declare (not safe))
                                (##length _%slots116494%_))))
                         (declare (not safe))
                         (##iota __tmp117223 '1))))
                  (declare (not safe))
                  (##for-each __tmp117224 _%slots116494%_ __tmp117222))
                _%slot-table116498%_))
             (_%flags116505%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields116507%_ '#())
             (_%properties116509%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots116494%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp117226 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags116505%_
         __table::t
         _%fields116507%_
         __tmp117226
         _%slot-vector116496%_
         _%slot-table116503%_
         _%properties116509%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots116476%_ '(gcht immediate))
             (_%slot-vector116478%_ (list->vector (cons '#f _%slots116476%_)))
             (_%slot-table116485%_
              (let ((_%slot-table116480%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp117229
                       (lambda (_%slot116482%_ _%field116483%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table116480%_
                            _%slot116482%_
                            _%field116483%_))
                         (let ((__tmp117230
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot116482%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table116480%_
                            __tmp117230
                            _%field116483%_))))
                      (__tmp117227
                       (let ((__tmp117228
                              (let ()
                                (declare (not safe))
                                (##length _%slots116476%_))))
                         (declare (not safe))
                         (##iota __tmp117228 '1))))
                  (declare (not safe))
                  (##for-each __tmp117229 _%slots116476%_ __tmp117227))
                _%slot-table116480%_))
             (_%flags116487%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields116489%_ '#())
             (_%properties116491%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots116476%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp117231 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags116487%_
         __gc-table::t
         _%fields116489%_
         __tmp117231
         _%slot-vector116478%_
         _%slot-table116485%_
         _%properties116491%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp117233 (list))
            (__tmp117232
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp117233
         '(table lock)
         __tmp117232
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args116473%_
        (apply make-instance locked-hash-table::t _%$args116473%_)))
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
      (let ((__tmp117235 (list))
            (__tmp117234
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp117235
         '(table key-check)
         __tmp117234
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args116470%_
        (apply make-instance checked-hash-table::t _%$args116470%_)))
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
      (let ((__tmp117237 (list hash-table::t))
            (__tmp117236 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp117237
         '()
         __tmp117236
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args116467%_
        (apply make-instance eq-hash-table::t _%$args116467%_)))
    (define eqv-hash-table::t
      (let ((__tmp117239 (list hash-table::t))
            (__tmp117238 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp117239
         '()
         __tmp117238
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args116464%_
        (apply make-instance eqv-hash-table::t _%$args116464%_)))
    (define symbol-hash-table::t
      (let ((__tmp117241 (list hash-table::t))
            (__tmp117240 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp117241
         '()
         __tmp117240
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args116461%_
        (apply make-instance symbol-hash-table::t _%$args116461%_)))
    (define string-hash-table::t
      (let ((__tmp117243 (list hash-table::t))
            (__tmp117242 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp117243
         '()
         __tmp117242
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args116458%_
        (apply make-instance string-hash-table::t _%$args116458%_)))
    (define immediate-hash-table::t
      (let ((__tmp117245 (list hash-table::t))
            (__tmp117244 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp117245
         '()
         __tmp117244
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args116455%_
        (apply make-instance immediate-hash-table::t _%$args116455%_)))
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
    (define _%locked-hash-table::HashTable::ref112340%_
      (lambda (_%self116415%_ _%key116417%_ _%default116418%_)
        (let* ((_%self116421%_ _%self116415%_)
               (_%key116430%_ _%key116417%_)
               (_%default116438%_ _%default116418%_))
          (let ((_%h116447%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116421%_ '1 '#f '#f)))
                (_%l116449%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116421%_ '2 '#f '#f))))
            (let ((__tmp117248 (lambda () (&Locker-read-lock! _%l116449%_)))
                  (__tmp117247
                   (lambda ()
                     (&HashTable-ref
                      _%h116447%_
                      _%key116430%_
                      _%default116438%_)))
                  (__tmp117246 (lambda () (&Locker-read-unlock! _%l116449%_))))
              (declare (not safe))
              (##dynamic-wind __tmp117248 __tmp117247 __tmp117246))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref112340%_
       '#f))
    (define _%locked-hash-table::HashTable::set!112342%_
      (lambda (_%self116252%_ _%key116254%_ _%value116255%_)
        (let* ((_%self116258%_ _%self116252%_)
               (_%key116267%_ _%key116254%_)
               (_%value116275%_ _%value116255%_))
          (let ((_%h116284%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116258%_ '1 '#f '#f)))
                (_%l116286%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116258%_ '2 '#f '#f))))
            (let ((__tmp117251 (lambda () (&Locker-write-lock! _%l116286%_)))
                  (__tmp117250
                   (lambda ()
                     (&HashTable-set!
                      _%h116284%_
                      _%key116267%_
                      _%value116275%_)))
                  (__tmp117249
                   (lambda () (&Locker-write-unlock! _%l116286%_))))
              (declare (not safe))
              (##dynamic-wind __tmp117251 __tmp117250 __tmp117249))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!112342%_
       '#f))
    (define _%locked-hash-table::HashTable::update!112344%_
      (lambda (_%self116080%_ _%key116082%_ _%update116083%_ _%default116084%_)
        (let* ((_%self116087%_ _%self116080%_)
               (_%key116096%_ _%key116082%_)
               (_%update116104%_ _%update116083%_)
               (_%default116112%_ _%default116084%_))
          (let ((_%h116121%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116087%_ '1 '#f '#f)))
                (_%l116123%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116087%_ '2 '#f '#f))))
            (let ((__tmp117254 (lambda () (&Locker-write-lock! _%l116123%_)))
                  (__tmp117253
                   (lambda ()
                     (&HashTable-update!
                      _%h116121%_
                      _%key116096%_
                      _%update116104%_
                      _%default116112%_)))
                  (__tmp117252
                   (lambda () (&Locker-write-unlock! _%l116123%_))))
              (declare (not safe))
              (##dynamic-wind __tmp117254 __tmp117253 __tmp117252))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!112344%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!112346%_
      (lambda (_%self115926%_ _%key115928%_)
        (let* ((_%self115931%_ _%self115926%_) (_%key115940%_ _%key115928%_))
          (let ((_%h115949%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115931%_ '1 '#f '#f)))
                (_%l115951%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115931%_ '2 '#f '#f))))
            (let ((__tmp117257 (lambda () (&Locker-write-lock! _%l115951%_)))
                  (__tmp117256
                   (lambda () (&HashTable-delete! _%h115949%_ _%key115940%_)))
                  (__tmp117255
                   (lambda () (&Locker-write-unlock! _%l115951%_))))
              (declare (not safe))
              (##dynamic-wind __tmp117257 __tmp117256 __tmp117255))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!112346%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each112348%_
      (lambda (_%self115772%_ _%proc115774%_)
        (let* ((_%self115777%_ _%self115772%_) (_%proc115786%_ _%proc115774%_))
          (let ((_%h115795%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115777%_ '1 '#f '#f)))
                (_%l115797%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115777%_ '2 '#f '#f))))
            (let ((__tmp117260 (lambda () (&Locker-read-lock! _%l115797%_)))
                  (__tmp117259
                   (lambda ()
                     (&HashTable-for-each _%h115795%_ _%proc115786%_)))
                  (__tmp117258 (lambda () (&Locker-read-unlock! _%l115797%_))))
              (declare (not safe))
              (##dynamic-wind __tmp117260 __tmp117259 __tmp117258))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each112348%_
       '#f))
    (define _%locked-hash-table::HashTable::length112350%_
      (lambda (_%self115620%_)
        (let ((_%self115624%_ _%self115620%_))
          (let ((_%h115634%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115624%_ '1 '#f '#f)))
                (_%l115636%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115624%_ '2 '#f '#f))))
            ((lambda (_%g115638115640%_)
               (let ((_%val115643%_ _%g115638115640%_))
                 (if (fixnum? _%val115643%_)
                     _%val115643%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val115643%_)))))
             (let ((__tmp117263 (lambda () (&Locker-read-lock! _%l115636%_)))
                   (__tmp117262 (lambda () (&HashTable-length _%h115634%_)))
                   (__tmp117261
                    (lambda () (&Locker-read-unlock! _%l115636%_))))
               (declare (not safe))
               (##dynamic-wind __tmp117263 __tmp117262 __tmp117261)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length112350%_
       '#f))
    (define _%locked-hash-table::HashTable::copy112352%_
      (lambda (_%self115472%_)
        (let ((_%self115476%_ _%self115472%_))
          (let ((_%h115486%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115476%_ '1 '#f '#f)))
                (_%l115488%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115476%_ '2 '#f '#f))))
            (let ((_%$obj115494%_
                   (let ((__tmp117266
                          (lambda () (&Locker-read-lock! _%l115488%_)))
                         (__tmp117265
                          (lambda () (&HashTable-copy _%h115486%_)))
                         (__tmp117264
                          (lambda () (&Locker-read-unlock! _%l115488%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp117266 __tmp117265 __tmp117264))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj115494%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj115494%_)))
                       '#t)
                  _%$obj115494%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj115494%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy112352%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!112354%_
      (lambda (_%self115327%_)
        (let ((_%self115331%_ _%self115327%_))
          (let ((_%h115341%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115331%_ '1 '#f '#f)))
                (_%l115343%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self115331%_ '2 '#f '#f))))
            (let ((__tmp117269 (lambda () (&Locker-write-lock! _%l115343%_)))
                  (__tmp117268 (lambda () (&HashTable-clear! _%h115341%_)))
                  (__tmp117267
                   (lambda () (&Locker-write-unlock! _%l115343%_))))
              (declare (not safe))
              (##dynamic-wind __tmp117269 __tmp117268 __tmp117267))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!112354%_
       '#f))
    (let ((__tmp117270 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp117270 'Locker::read-lock! mutex-lock!))
    (let ((__tmp117271 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp117271 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp117272 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp117272 'Locker::write-lock! mutex-lock!))
    (let ((__tmp117273 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp117273 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref112567%_
      (lambda (_%self115162%_ _%key115163%_ _%default115164%_)
        (let* ((_%self115167%_ _%self115162%_)
               (_%key115176%_ _%key115163%_)
               (_%default115184%_ _%default115164%_))
          (declare (not safe))
          (let ((_%h115195%_
                 (##unchecked-structure-ref _%self115167%_ '1 '#f '#f))
                (_%key?115197%_
                 (##unchecked-structure-ref _%self115167%_ '2 '#f '#f)))
            (if ((lambda (_%key?115200%_ _%key115201%_ _%default115202%_)
                   (_%key?115200%_ _%key115201%_))
                 _%key?115197%_
                 _%key115176%_
                 _%default115184%_)
                (&HashTable-ref _%h115195%_ _%key115176%_ _%default115184%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key115176%_ (cons _%default115184%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref112567%_
       '#f))
    (define _%checked-hash-table::HashTable::set!112569%_
      (lambda (_%self114997%_ _%key114998%_ _%value114999%_)
        (let* ((_%self115002%_ _%self114997%_)
               (_%key115011%_ _%key114998%_)
               (_%value115019%_ _%value114999%_))
          (declare (not safe))
          (let ((_%h115030%_
                 (##unchecked-structure-ref _%self115002%_ '1 '#f '#f))
                (_%key?115032%_
                 (##unchecked-structure-ref _%self115002%_ '2 '#f '#f)))
            (if ((lambda (_%key?115035%_ _%key115036%_ _%value115037%_)
                   (_%key?115035%_ _%key115036%_))
                 _%key?115032%_
                 _%key115011%_
                 _%value115019%_)
                (&HashTable-set! _%h115030%_ _%key115011%_ _%value115019%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key115011%_ (cons _%value115019%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!112569%_
       '#f))
    (define _%checked-hash-table::HashTable::update!112571%_
      (lambda (_%self114822%_ _%key114823%_ _%update114824%_ _%default114825%_)
        (let* ((_%self114828%_ _%self114822%_)
               (_%key114837%_ _%key114823%_)
               (_%update114845%_ _%update114824%_)
               (_%default114853%_ _%default114825%_))
          (declare (not safe))
          (let ((_%h114864%_
                 (##unchecked-structure-ref _%self114828%_ '1 '#f '#f))
                (_%key?114866%_
                 (##unchecked-structure-ref _%self114828%_ '2 '#f '#f)))
            (if ((lambda (_%key?114869%_
                          _%key114870%_
                          _%update114871%_
                          _%default114872%_)
                   (_%key?114869%_ _%key114870%_))
                 _%key?114866%_
                 _%key114837%_
                 _%update114845%_
                 _%default114853%_)
                (&HashTable-update!
                 _%h114864%_
                 _%key114837%_
                 _%update114845%_
                 _%default114853%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key114837%_
                         (cons _%update114845%_ (cons _%default114853%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!112571%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!112573%_
      (lambda (_%self114667%_ _%key114668%_)
        (let* ((_%self114671%_ _%self114667%_) (_%key114680%_ _%key114668%_))
          (declare (not safe))
          (let ((_%h114691%_
                 (##unchecked-structure-ref _%self114671%_ '1 '#f '#f))
                (_%key?114693%_
                 (##unchecked-structure-ref _%self114671%_ '2 '#f '#f)))
            (if ((lambda (_%key?114696%_ _%key114697%_)
                   (_%key?114696%_ _%key114697%_))
                 _%key?114693%_
                 _%key114680%_)
                (&HashTable-delete! _%h114691%_ _%key114680%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key114680%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!112573%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each112575%_
      (lambda (_%self114512%_ _%proc114513%_)
        (let* ((_%self114516%_ _%self114512%_) (_%proc114525%_ _%proc114513%_))
          (declare (not safe))
          (let ((_%h114536%_
                 (##unchecked-structure-ref _%self114516%_ '1 '#f '#f))
                (_%key?114538%_
                 (##unchecked-structure-ref _%self114516%_ '2 '#f '#f)))
            (if ((lambda (_%key?114541%_ _%proc114542%_) '#t)
                 _%key?114538%_
                 _%proc114525%_)
                (&HashTable-for-each _%h114536%_ _%proc114525%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc114525%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each112575%_
       '#f))
    (define _%checked-hash-table::HashTable::length112577%_
      (lambda (_%self114369%_)
        (let ((_%self114372%_ _%self114369%_))
          (declare (not safe))
          (let ((_%h114384%_
                 (##unchecked-structure-ref _%self114372%_ '1 '#f '#f))
                (_%key?114386%_
                 (##unchecked-structure-ref _%self114372%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h114384%_)
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
       _%checked-hash-table::HashTable::length112577%_
       '#f))
    (define _%checked-hash-table::HashTable::copy112579%_
      (lambda (_%self114226%_)
        (let ((_%self114229%_ _%self114226%_))
          (declare (not safe))
          (let ((_%h114241%_
                 (##unchecked-structure-ref _%self114229%_ '1 '#f '#f))
                (_%key?114243%_
                 (##unchecked-structure-ref _%self114229%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h114241%_)
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
       _%checked-hash-table::HashTable::copy112579%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!112581%_
      (lambda (_%self114083%_)
        (let ((_%self114086%_ _%self114083%_))
          (declare (not safe))
          (let ((_%h114098%_
                 (##unchecked-structure-ref _%self114086%_ '1 '#f '#f))
                (_%key?114100%_
                 (##unchecked-structure-ref _%self114086%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h114098%_)
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
       _%checked-hash-table::HashTable::clear!112581%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table113953%_
               _%count113954%_
               _%free113955%_
               _%hash113956%_
               _%test113957%_
               _%seed113958%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table113953%_
           _%count113954%_
           _%free113955%_
           _%hash113956%_
           _%test113957%_
           _%seed113958%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords113714%_
               _%size-hint113704113715%_
               _%seed113705113717%_
               _%test113706113719%_
               _%hash113707113721%_
               _%lock113708113723%_
               _%check113709113725%_
               _%weak-keys113710113727%_
               _%weak-values113711113729%_)
        (let* ((_%size-hint113732%_
                (if (eq? _%size-hint113704113715%_ absent-value)
                    '#f
                    _%size-hint113704113715%_))
               (_%seed113734%_
                (if (eq? _%seed113705113717%_ absent-value)
                    '#f
                    _%seed113705113717%_))
               (_%test113736%_
                (if (eq? _%test113706113719%_ absent-value)
                    equal?
                    _%test113706113719%_))
               (_%hash113738%_
                (if (eq? _%hash113707113721%_ absent-value)
                    '#f
                    _%hash113707113721%_))
               (_%lock113740%_
                (if (eq? _%lock113708113723%_ absent-value)
                    '#f
                    _%lock113708113723%_))
               (_%check113742%_
                (if (eq? _%check113709113725%_ absent-value)
                    '#f
                    _%check113709113725%_))
               (_%weak-keys113744%_
                (if (eq? _%weak-keys113710113727%_ absent-value)
                    '#f
                    _%weak-keys113710113727%_))
               (_%weak-values113746%_
                (if (eq? _%weak-values113711113729%_ absent-value)
                    '#f
                    _%weak-values113711113729%_)))
          (letrec ((_%table-seed113749%_
                    (lambda ()
                      (if (fixnum? _%seed113734%_)
                          _%seed113734%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock113750%_
                    (lambda (_%ht113927%_)
                      (let ((_%ht113930%_ _%ht113927%_))
                        (_%__wrap-lock113751%_ _%ht113930%_))))
                   (_%__wrap-lock113751%_
                    (lambda (_%ht113909%_)
                      (let ((_%ht113912%_ _%ht113909%_))
                        (if _%lock113740%_
                            (let ((_%$obj113924%_
                                   (let ((__tmp117274
                                          (let ((_%$obj113921%_
                                                 _%lock113740%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj113921%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj113921%_)))
                                                     '#t)
                                                _%$obj113921%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj113921%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht113912%_
                                      __tmp117274))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj113924%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj113924%_)))
                                       '#t)
                                  _%$obj113924%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj113924%_))))
                            _%ht113912%_))))
                   (_%wrap-checked113752%_
                    (lambda (_%ht113896%_ _%implicit113897%_)
                      (let ((_%ht113900%_ _%ht113896%_))
                        (_%__wrap-checked113753%_
                         _%ht113900%_
                         _%implicit113897%_))))
                   (_%__wrap-checked113753%_
                    (lambda (_%ht113869%_ _%implicit113870%_)
                      (let ((_%ht113873%_ _%ht113869%_))
                        (if _%check113742%_
                            (let ((_%$obj113893%_
                                   (let ((__tmp117275
                                          (if (procedure? _%check113742%_)
                                              _%check113742%_
                                              _%implicit113870%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht113873%_
                                      __tmp117275))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj113893%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj113893%_)))
                                       '#t)
                                  _%$obj113893%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj113893%_))))
                            _%ht113873%_))))
                   (_%make113754%_
                    (lambda (_%kons113853%_
                             _%key?113854%_
                             _%hash113855%_
                             _%test113856%_)
                      (let* ((_%size113859%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint113732%_)))
                             (_%table113861%_
                              (let ((__tmp117276 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size113859%_ __tmp117276)))
                             (_%ht113866%_
                              (let ((_%$obj113863%_
                                     (_%kons113853%_
                                      _%table113861%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size113859%_ '2))
                                      _%hash113855%_
                                      _%test113856%_
                                      (_%table-seed113749%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj113863%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj113863%_)))
                                         '#t)
                                    _%$obj113863%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj113863%_))))))
                        (_%__wrap-checked113753%_
                         (_%__wrap-lock113751%_ _%ht113866%_)
                         _%key?113854%_))))
                   (_%make-gc-hash-table113755%_
                    (lambda ()
                      (let ((_%ht113851%_
                             (let ((_%$obj113848%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint113732%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj113848%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj113848%_)))
                                        '#t)
                                   _%$obj113848%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj113848%_))))))
                        (_%__wrap-checked113753%_
                         (_%__wrap-lock113751%_ _%ht113851%_)
                         true))))
                   (_%make-gambit-table113756%_
                    (lambda ()
                      (let* ((_%size113825%_
                              (let ((_%$e113822%_ _%size-hint113732%_))
                                (if _%$e113822%_
                                    _%$e113822%_
                                    (macro-absent-obj))))
                             (_%test113830%_
                              (let ((_%$e113827%_ _%test113736%_))
                                (if _%$e113827%_ _%$e113827%_ equal?)))
                             (_%hash113838%_
                              (let ((_%$e113832%_ _%hash113738%_))
                                (if _%$e113832%_
                                    _%$e113832%_
                                    (if (eq? _%test113830%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test113830%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht113843%_
                              (let ((_%$obj113840%_
                                     (make-table
                                      'size:
                                      _%size113825%_
                                      'test:
                                      _%test113830%_
                                      'hash:
                                      _%hash113838%_
                                      'weak-keys:
                                      _%weak-keys113744%_
                                      'weak-values:
                                      _%weak-values113746%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj113840%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj113840%_)))
                                         '#t)
                                    _%$obj113840%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj113840%_))))))
                        (_%__wrap-checked113753%_
                         (_%__wrap-lock113751%_ _%ht113843%_)
                         true)))))
            (if (or _%weak-keys113744%_ _%weak-values113746%_)
                (_%make-gambit-table113756%_)
                (if (and (or (eq? _%test113736%_ eq?)
                             (eq? _%test113736%_ ##eq?))
                         (or (not _%hash113738%_)
                             (eq? _%hash113738%_ eq?-hash)
                             (eq? _%hash113738%_ eq-hash))
                         (not _%seed113734%_))
                    (_%make-gc-hash-table113755%_)
                    (if (and (or (eq? _%test113736%_ eq?)
                                 (eq? _%test113736%_ ##eq?))
                             (or (not _%hash113738%_)
                                 (eq? _%hash113738%_ eq?-hash)
                                 (eq? _%hash113738%_ eq-hash)))
                        (_%make113754%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test113736%_ eqv?)
                                     (eq? _%test113736%_ ##eqv?))
                                 (or (not _%hash113738%_)
                                     (eq? _%hash113738%_ eqv?-hash)
                                     (eq? _%hash113738%_ eqv-hash)))
                            (_%make113754%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test113736%_ eq?)
                                         (eq? _%test113736%_ ##eq?))
                                     (or (eq? _%hash113738%_ symbolic-hash)
                                         (eq? _%hash113738%_ ##symbol-hash)))
                                (_%make113754%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test113736%_ eq?)
                                             (eq? _%test113736%_ ##eq?))
                                         (eq? _%hash113738%_ immediate-hash))
                                    (_%make113754%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test113736%_ equal?)
                                                 (eq? _%test113736%_ ##equal?)
                                                 (eq? _%test113736%_ string=?)
                                                 (eq? _%test113736%_
                                                      ##string=?))
                                             (or (eq? _%hash113738%_
                                                      string-hash)
                                                 (eq? _%hash113738%_
                                                      ##string=?-hash)))
                                        (_%make113754%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test113736%_ equal?)
                                                 (not _%hash113738%_))
                                            (_%make113754%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test113736%_)
                                                (if (procedure? _%hash113738%_)
                                                    (_%make113754%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash113738%_
                                                     _%test113736%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash113738%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test113736%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords113943%_ . _%args113944%_)
        (apply make-hash-table__%
               _%@@keywords113943%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords113943%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords113943%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords113943%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords113943%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords113943%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords113943%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords113943%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords113943%_
                  'weak-values:
                  absent-value))
               _%args113944%_)))
    (define make-hash-table
      (lambda _%args113712113950%_
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
               _%args113712113950%_)))
    (define make-hash-table-eq
      (lambda _%args113701%_
        (apply make-hash-table 'test: eq? _%args113701%_)))
    (define make-hash-table-eqv
      (lambda _%args113699%_
        (apply make-hash-table 'test: eqv? _%args113699%_)))
    (define make-hash-table-symbolic
      (lambda _%args113697%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args113697%_)))
    (define make-hash-table-string
      (lambda _%args113695%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args113695%_)))
    (define make-hash-table-immediate
      (lambda _%args113693%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args113693%_)))
    (define list->hash-table
      (lambda (_%lst113690%_ . _%args113691%_)
        (list->hash-table!
         _%lst113690%_
         (apply make-hash-table
                'size:
                (length _%lst113690%_)
                _%args113691%_))))
    (define list->hash-table-eq
      (lambda (_%lst113687%_ . _%args113688%_)
        (list->hash-table!
         _%lst113687%_
         (apply make-hash-table-eq
                'size:
                (length _%lst113687%_)
                _%args113688%_))))
    (define list->hash-table-eqv
      (lambda (_%lst113684%_ . _%args113685%_)
        (list->hash-table!
         _%lst113684%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst113684%_)
                _%args113685%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst113681%_ . _%args113682%_)
        (list->hash-table!
         _%lst113681%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst113681%_)
                _%args113682%_))))
    (define list->hash-table-string
      (lambda (_%lst113678%_ . _%args113679%_)
        (list->hash-table!
         _%lst113678%_
         (apply make-hash-table-string
                'size:
                (length _%lst113678%_)
                _%args113679%_))))
    (define list->hash-table-immediate
      (lambda (_%lst113675%_ . _%args113676%_)
        (list->hash-table!
         _%lst113675%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst113675%_)
                _%args113676%_))))
    (define list->hash-table!
      (lambda (_%lst113642%_ _%h113643%_)
        (for-each
         (lambda (_%el113645%_)
           (let* ((_%el113646113653%_ _%el113645%_)
                  (_%E113648113657%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el113646113653%_
                              '([k . v])))
                     '#!void))
                  (_%K113649113663%_
                   (lambda (_%v113660%_ _%k113661%_)
                     (&HashTable-set! _%h113643%_ _%k113661%_ _%v113660%_))))
             (if (pair? _%el113646113653%_)
                 (let ((_%hd113650113666%_
                        (let ()
                          (declare (not safe))
                          (##car _%el113646113653%_)))
                       (_%tl113651113668%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el113646113653%_))))
                   (let* ((_%k113671%_ _%hd113650113666%_)
                          (_%v113673%_ _%tl113651113668%_))
                     (_%K113649113663%_ _%v113673%_ _%k113671%_)))
                 (_%E113648113657%_))))
         _%lst113642%_)
        _%h113643%_))
    (define plist->hash-table
      (lambda (_%lst113639%_ . _%args113640%_)
        (plist->hash-table!
         _%lst113639%_
         (apply make-hash-table
                'size:
                (length _%lst113639%_)
                _%args113640%_))))
    (define plist->hash-table-eq
      (lambda (_%lst113636%_ . _%args113637%_)
        (plist->hash-table!
         _%lst113636%_
         (apply make-hash-table-eq
                'size:
                (length _%lst113636%_)
                _%args113637%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst113633%_ . _%args113634%_)
        (plist->hash-table!
         _%lst113633%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst113633%_)
                _%args113634%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst113630%_ . _%args113631%_)
        (plist->hash-table!
         _%lst113630%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst113630%_)
                _%args113631%_))))
    (define plist->hash-table-string
      (lambda (_%lst113627%_ . _%args113628%_)
        (plist->hash-table!
         _%lst113627%_
         (apply make-hash-table-string
                'size:
                (length _%lst113627%_)
                _%args113628%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst113624%_ . _%args113625%_)
        (plist->hash-table!
         _%lst113624%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst113624%_)
                _%args113625%_))))
    (define plist->hash-table!
      (lambda (_%lst113564%_ _%h113565%_)
        (let _%loop113567%_ ((_%rest113569%_ _%lst113564%_))
          (let* ((_%rest113570113582%_ _%rest113569%_)
                 (_%else113573113590%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst113564%_)))))
            (let ((_%K113576113605%_
                   (lambda (_%rest113601%_ _%val113602%_ _%key113603%_)
                     (&HashTable-set! _%h113565%_ _%key113603%_ _%val113602%_)
                     (_%loop113567%_ _%rest113601%_)))
                  (_%K113575113595%_ (lambda () _%h113565%_)))
              (let ((_%try-match113572113598%_
                     (lambda ()
                       (if (null? _%rest113570113582%_)
                           (_%K113575113595%_)
                           (_%else113573113590%_)))))
                (if (pair? _%rest113570113582%_)
                    (let ((_%tl113578113610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest113570113582%_)))
                          (_%hd113577113608%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest113570113582%_))))
                      (if (pair? _%tl113578113610%_)
                          (let ((_%tl113580113617%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl113578113610%_)))
                                (_%hd113579113615%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl113578113610%_))))
                            (let ((_%key113613%_ _%hd113577113608%_)
                                  (_%val113620%_ _%hd113579113615%_)
                                  (_%rest113622%_ _%tl113580113617%_))
                              (_%K113576113605%_
                               _%rest113622%_
                               _%val113620%_
                               _%key113613%_)))
                          (_%else113573113590%_)))
                    (_%try-match113572113598%_))))))))
    (define hash-length
      (lambda (_%h113546%_)
        (let* ((_%h113552%_
                (let ((_%$obj113549%_ _%h113546%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113549%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113549%_)))
                           '#t)
                      _%$obj113549%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113549%_)))))
               (_%h113554%_ _%h113552%_))
          (__hash-length _%h113554%_))))
    (define __hash-length
      (lambda (_%h113534%_)
        (let ((_%h113537%_ _%h113534%_)) (__HashTable-length _%h113537%_))))
    (define hash-ref__%
      (lambda (_%h113502%_ _%key113503%_ _%default113504%_)
        (let* ((_%h113510%_
                (let ((_%$obj113507%_ _%h113502%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113507%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113507%_)))
                           '#t)
                      _%$obj113507%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113507%_)))))
               (_%h113512%_ _%h113510%_))
          (__hash-ref__% _%h113512%_ _%key113503%_ _%default113504%_))))
    (define hash-ref__0
      (lambda (_%h113525%_ _%key113526%_)
        (let ((_%default113528%_ (macro-absent-obj)))
          (hash-ref__% _%h113525%_ _%key113526%_ _%default113528%_))))
    (define hash-ref
      (lambda _g117277_
        (let ((_g117278_ (let () (declare (not safe)) (##length _g117277_))))
          (cond ((let () (declare (not safe)) (##fx= _g117278_ 2))
                 (apply hash-ref__0 _g117277_))
                ((let () (declare (not safe)) (##fx= _g117278_ 3))
                 (apply hash-ref__% _g117277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g117277_))))))
    (define __hash-ref__%
      (lambda (_%h113473%_ _%key113474%_ _%default113475%_)
        (let* ((_%h113478%_ _%h113473%_)
               (_%result113487%_
                (&HashTable-ref _%h113478%_ _%key113474%_ _%default113475%_)))
          (if (eq? _%result113487%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h113478%_
               'key:
               _%key113474%_)
              _%result113487%_))))
    (define __hash-ref__0
      (lambda (_%h113492%_ _%key113493%_)
        (let ((_%default113495%_ (macro-absent-obj)))
          (__hash-ref__% _%h113492%_ _%key113493%_ _%default113495%_))))
    (define __hash-ref
      (lambda _g117279_
        (let ((_g117280_ (let () (declare (not safe)) (##length _g117279_))))
          (cond ((let () (declare (not safe)) (##fx= _g117280_ 2))
                 (apply __hash-ref__0 _g117279_))
                ((let () (declare (not safe)) (##fx= _g117280_ 3))
                 (apply __hash-ref__% _g117279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g117279_))))))
    (define hash-get
      (lambda (_%h113453%_ _%key113454%_)
        (let* ((_%h113460%_
                (let ((_%$obj113457%_ _%h113453%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113457%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113457%_)))
                           '#t)
                      _%$obj113457%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113457%_)))))
               (_%h113462%_ _%h113460%_))
          (__hash-get _%h113462%_ _%key113454%_))))
    (define __hash-get
      (lambda (_%h113440%_ _%key113441%_)
        (let ((_%h113444%_ _%h113440%_))
          (&HashTable-ref _%h113444%_ _%key113441%_ '#f))))
    (define hash-put!
      (lambda (_%h113420%_ _%key113421%_ _%value113422%_)
        (let* ((_%h113428%_
                (let ((_%$obj113425%_ _%h113420%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113425%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113425%_)))
                           '#t)
                      _%$obj113425%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113425%_)))))
               (_%h113430%_ _%h113428%_))
          (__hash-put! _%h113430%_ _%key113421%_ _%value113422%_))))
    (define __hash-put!
      (lambda (_%h113406%_ _%key113407%_ _%value113408%_)
        (let ((_%h113411%_ _%h113406%_))
          (&HashTable-set! _%h113411%_ _%key113407%_ _%value113408%_))))
    (define hash-update!__%
      (lambda (_%h113371%_ _%key113372%_ _%update113373%_ _%default113374%_)
        (let* ((_%h113380%_
                (let ((_%$obj113377%_ _%h113371%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113377%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113377%_)))
                           '#t)
                      _%$obj113377%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113377%_)))))
               (_%h113382%_ _%h113380%_))
          (__hash-update!__%
           _%h113382%_
           _%key113372%_
           _%update113373%_
           _%default113374%_))))
    (define hash-update!__0
      (lambda (_%h113395%_ _%key113396%_ _%update113397%_)
        (let ((_%default113399%_ '#!void))
          (hash-update!__%
           _%h113395%_
           _%key113396%_
           _%update113397%_
           _%default113399%_))))
    (define hash-update!
      (lambda _g117281_
        (let ((_g117282_ (let () (declare (not safe)) (##length _g117281_))))
          (cond ((let () (declare (not safe)) (##fx= _g117282_ 3))
                 (apply hash-update!__0 _g117281_))
                ((let () (declare (not safe)) (##fx= _g117282_ 4))
                 (apply hash-update!__% _g117281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g117281_))))))
    (define __hash-update!__%
      (lambda (_%h113341%_ _%key113342%_ _%update113343%_ _%default113344%_)
        (let ((_%h113347%_ _%h113341%_))
          (HashTable-update!
           _%h113347%_
           _%key113342%_
           _%update113343%_
           _%default113344%_))))
    (define __hash-update!__0
      (lambda (_%h113359%_ _%key113360%_ _%update113361%_)
        (let ((_%default113363%_ '#!void))
          (__hash-update!__%
           _%h113359%_
           _%key113360%_
           _%update113361%_
           _%default113363%_))))
    (define __hash-update!
      (lambda _g117283_
        (let ((_g117284_ (let () (declare (not safe)) (##length _g117283_))))
          (cond ((let () (declare (not safe)) (##fx= _g117284_ 3))
                 (apply __hash-update!__0 _g117283_))
                ((let () (declare (not safe)) (##fx= _g117284_ 4))
                 (apply __hash-update!__% _g117283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g117283_))))))
    (define hash-remove!
      (lambda (_%h113321%_ _%key113322%_)
        (let* ((_%h113328%_
                (let ((_%$obj113325%_ _%h113321%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113325%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113325%_)))
                           '#t)
                      _%$obj113325%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113325%_)))))
               (_%h113330%_ _%h113328%_))
          (__hash-remove! _%h113330%_ _%key113322%_))))
    (define __hash-remove!
      (lambda (_%h113308%_ _%key113309%_)
        (let ((_%h113312%_ _%h113308%_))
          (&HashTable-delete! _%h113312%_ _%key113309%_))))
    (define hash-key?
      (lambda (_%h113289%_ _%k113290%_)
        (let* ((_%h113296%_
                (let ((_%$obj113293%_ _%h113289%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113293%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113293%_)))
                           '#t)
                      _%$obj113293%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113293%_)))))
               (_%h113298%_ _%h113296%_))
          (__hash-key? _%h113298%_ _%k113290%_))))
    (define __hash-key?
      (lambda (_%h113276%_ _%k113277%_)
        (let ((_%h113280%_ _%h113276%_))
          (not (eq? (&HashTable-ref _%h113280%_ _%k113277%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h113258%_)
        (let* ((_%h113264%_
                (let ((_%$obj113261%_ _%h113258%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113261%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113261%_)))
                           '#t)
                      _%$obj113261%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113261%_)))))
               (_%h113266%_ _%h113264%_))
          (__hash->list _%h113266%_))))
    (define __hash->list
      (lambda (_%h113241%_)
        (let* ((_%h113244%_ _%h113241%_) (_%lst113253%_ '()))
          (&HashTable-for-each
           _%h113244%_
           (lambda (_%k113255%_ _%v113256%_)
             (set! _%lst113253%_
                   (cons (cons _%k113255%_ _%v113256%_) _%lst113253%_))))
          _%lst113253%_)))
    (define hash->plist
      (lambda (_%h113223%_)
        (let* ((_%h113229%_
                (let ((_%$obj113226%_ _%h113223%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113226%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113226%_)))
                           '#t)
                      _%$obj113226%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113226%_)))))
               (_%h113231%_ _%h113229%_))
          (__hash->plist _%h113231%_))))
    (define __hash->plist
      (lambda (_%h113206%_)
        (let* ((_%h113209%_ _%h113206%_) (_%lst113218%_ '()))
          (&HashTable-for-each
           _%h113209%_
           (lambda (_%k113220%_ _%v113221%_)
             (set! _%lst113218%_
                   (cons _%k113220%_ (cons _%v113221%_ _%lst113218%_)))))
          _%lst113218%_)))
    (define hash-for-each
      (lambda (_%proc113177%_ _%h113178%_)
        (if (procedure? _%proc113177%_)
            (let* ((_%proc113182%_ _%proc113177%_)
                   (_%h113194%_
                    (let ((_%$obj113191%_ _%h113178%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj113191%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj113191%_)))
                               '#t)
                          _%$obj113191%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj113191%_)))))
                   (_%h113196%_ _%h113194%_))
              (__hash-for-each _%proc113182%_ _%h113196%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@579.22-579.26"
               'contract:
               'procedure?
               'value:
               _%proc113177%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc113156%_ _%h113157%_)
        (let* ((_%proc113160%_ _%proc113156%_) (_%h113168%_ _%h113157%_))
          (&HashTable-for-each _%h113168%_ _%proc113160%_))))
    (define hash-map
      (lambda (_%proc113127%_ _%h113128%_)
        (if (procedure? _%proc113127%_)
            (let* ((_%proc113132%_ _%proc113127%_)
                   (_%h113144%_
                    (let ((_%$obj113141%_ _%h113128%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj113141%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj113141%_)))
                               '#t)
                          _%$obj113141%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj113141%_)))))
                   (_%h113146%_ _%h113144%_))
              (__hash-map _%proc113132%_ _%h113146%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@582.17-582.21"
               'contract:
               'procedure?
               'value:
               _%proc113127%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc113101%_ _%h113102%_)
        (let* ((_%proc113105%_ _%proc113101%_)
               (_%h113113%_ _%h113102%_)
               (_%result113122%_ '()))
          (&HashTable-for-each
           _%h113113%_
           (lambda (_%k113124%_ _%v113125%_)
             (set! _%result113122%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc113105%_ _%k113124%_ _%v113125%_))
                         _%result113122%_))))
          _%result113122%_)))
    (define hash-fold
      (lambda (_%proc113071%_ _%iv113072%_ _%h113073%_)
        (if (procedure? _%proc113071%_)
            (let* ((_%proc113077%_ _%proc113071%_)
                   (_%h113089%_
                    (let ((_%$obj113086%_ _%h113073%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj113086%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj113086%_)))
                               '#t)
                          _%$obj113086%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj113086%_)))))
                   (_%h113091%_ _%h113089%_))
              (__hash-fold _%proc113077%_ _%iv113072%_ _%h113091%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@587.18-587.22"
               'contract:
               'procedure?
               'value:
               _%proc113071%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc113044%_ _%iv113045%_ _%h113046%_)
        (let* ((_%proc113049%_ _%proc113044%_)
               (_%h113057%_ _%h113046%_)
               (_%result113066%_ _%iv113045%_))
          (&HashTable-for-each
           _%h113057%_
           (lambda (_%k113068%_ _%v113069%_)
             (set! _%result113066%_
                   (let ()
                     (declare (not safe))
                     (_%proc113049%_
                      _%k113068%_
                      _%v113069%_
                      _%result113066%_)))))
          _%result113066%_)))
    (define hash-find__%
      (lambda (_%proc113002%_ _%h113003%_ _%default-value113004%_)
        (if (procedure? _%proc113002%_)
            (let* ((_%proc113008%_ _%proc113002%_)
                   (_%h113020%_
                    (let ((_%$obj113017%_ _%h113003%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj113017%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj113017%_)))
                               '#t)
                          _%$obj113017%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj113017%_)))))
                   (_%h113022%_ _%h113020%_))
              (__hash-find__%
               _%proc113008%_
               _%h113022%_
               _%default-value113004%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.18-592.22"
               'contract:
               'procedure?
               'value:
               _%proc113002%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc113035%_ _%h113036%_)
        (let ((_%default-value113038%_ '#f))
          (hash-find__% _%proc113035%_ _%h113036%_ _%default-value113038%_))))
    (define hash-find
      (lambda _g117285_
        (let ((_g117286_ (let () (declare (not safe)) (##length _g117285_))))
          (cond ((let () (declare (not safe)) (##fx= _g117286_ 2))
                 (apply hash-find__0 _g117285_))
                ((let () (declare (not safe)) (##fx= _g117286_ 3))
                 (apply hash-find__% _g117285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g117285_))))))
    (define __hash-find__%
      (lambda (_%proc112959%_ _%h112960%_ _%default-value112961%_)
        (let* ((_%proc112964%_ _%proc112959%_)
               (_%h112972%_ _%h112960%_)
               (__tmp117287
                (lambda (_%return112981%_)
                  (&HashTable-for-each
                   _%h112972%_
                   (lambda (_%k112983%_ _%v112984%_)
                     (let ((_%$e112986%_
                            (let ()
                              (declare (not safe))
                              (_%proc112964%_ _%k112983%_ _%v112984%_))))
                       (if _%$e112986%_
                           (_%return112981%_ _%$e112986%_)
                           '#!void))))
                  _%default-value112961%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp117287))))
    (define __hash-find__0
      (lambda (_%proc112992%_ _%h112993%_)
        (let ((_%default-value112995%_ '#f))
          (__hash-find__%
           _%proc112992%_
           _%h112993%_
           _%default-value112995%_))))
    (define __hash-find
      (lambda _g117288_
        (let ((_g117289_ (let () (declare (not safe)) (##length _g117288_))))
          (cond ((let () (declare (not safe)) (##fx= _g117289_ 2))
                 (apply __hash-find__0 _g117288_))
                ((let () (declare (not safe)) (##fx= _g117289_ 3))
                 (apply __hash-find__% _g117288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g117288_))))))
    (define hash-keys
      (lambda (_%h112940%_)
        (let* ((_%h112946%_
                (let ((_%$obj112943%_ _%h112940%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj112943%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj112943%_)))
                           '#t)
                      _%$obj112943%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj112943%_)))))
               (_%h112948%_ _%h112946%_))
          (__hash-keys _%h112948%_))))
    (define __hash-keys
      (lambda (_%h112923%_)
        (let* ((_%h112926%_ _%h112923%_) (_%result112935%_ '()))
          (&HashTable-for-each
           _%h112926%_
           (lambda (_%k112937%_ _%v112938%_)
             (set! _%result112935%_ (cons _%k112937%_ _%result112935%_))))
          _%result112935%_)))
    (define hash-values
      (lambda (_%h112905%_)
        (let* ((_%h112911%_
                (let ((_%$obj112908%_ _%h112905%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj112908%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj112908%_)))
                           '#t)
                      _%$obj112908%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj112908%_)))))
               (_%h112913%_ _%h112911%_))
          (__hash-values _%h112913%_))))
    (define __hash-values
      (lambda (_%h112888%_)
        (let* ((_%h112891%_ _%h112888%_) (_%result112900%_ '()))
          (&HashTable-for-each
           _%h112891%_
           (lambda (_%k112902%_ _%v112903%_)
             (set! _%result112900%_ (cons _%v112903%_ _%result112900%_))))
          _%result112900%_)))
    (define hash-copy
      (lambda (_%h112870%_)
        (let* ((_%h112876%_
                (let ((_%$obj112873%_ _%h112870%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj112873%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj112873%_)))
                           '#t)
                      _%$obj112873%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj112873%_)))))
               (_%h112878%_ _%h112876%_))
          (__hash-copy _%h112878%_))))
    (define __hash-copy
      (lambda (_%h112858%_)
        (let ((_%h112861%_ _%h112858%_)) (__HashTable-copy _%h112861%_))))
    (define hash-clear!
      (lambda (_%h112840%_)
        (let* ((_%h112846%_
                (let ((_%$obj112843%_ _%h112840%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj112843%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj112843%_)))
                           '#t)
                      _%$obj112843%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj112843%_)))))
               (_%h112848%_ _%h112846%_))
          (__hash-clear! _%h112848%_))))
    (define __hash-clear!
      (lambda (_%h112828%_)
        (let ((_%h112831%_ _%h112828%_)) (&HashTable-clear! _%h112831%_))))
    (define hash-merge
      (lambda (_%h112809%_ . _%rest112810%_)
        (let* ((_%h112816%_
                (let ((_%$obj112813%_ _%h112809%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj112813%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj112813%_)))
                           '#t)
                      _%$obj112813%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj112813%_)))))
               (_%h112818%_ _%h112816%_))
          (declare (not safe))
          (##apply __hash-merge _%h112818%_ _%rest112810%_))))
    (define __hash-merge
      (lambda (_%h112794%_ . _%rest112795%_)
        (let* ((_%h112798%_ _%h112794%_)
               (_%copy112807%_ (__HashTable-copy _%h112798%_)))
          (apply hash-merge! _%copy112807%_ _%rest112795%_)
          _%copy112807%_)))
    (define hash-merge!
      (lambda (_%h112775%_ . _%rest112776%_)
        (let* ((_%h112782%_
                (let ((_%$obj112779%_ _%h112775%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj112779%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj112779%_)))
                           '#t)
                      _%$obj112779%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj112779%_)))))
               (_%h112784%_ _%h112782%_))
          (declare (not safe))
          (##apply __hash-merge! _%h112784%_ _%rest112776%_))))
    (define __hash-merge!
      (lambda (_%h112738%_ . _%rest112739%_)
        (let ((_%h112742%_ _%h112738%_))
          (let ((__tmp117290
                 (lambda (_%hr112751%_)
                   (let* ((_%hr112757%_
                           (let ((_%$obj112754%_ _%hr112751%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj112754%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj112754%_)))
                                      '#t)
                                 _%$obj112754%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj112754%_)))))
                          (_%hr112759%_ _%hr112757%_))
                     (&HashTable-for-each
                      _%hr112759%_
                      (lambda (_%k112772%_ _%v112773%_)
                        (if (__hash-key? _%h112742%_ _%k112772%_)
                            '#!void
                            (&HashTable-set!
                             _%h112742%_
                             _%k112772%_
                             _%v112773%_))))))))
            (declare (not safe))
            (##for-each __tmp117290 _%rest112739%_))
          _%h112742%_)))))
