(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1734215269)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp110301 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp110301
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args110281%_
        (apply make-instance UnboundKeyError::t _%$args110281%_)))
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
      (lambda (_%where110155%_ _%message110156%_ . _%irritants110157%_)
        (let ((__tmp110302
               (let ((__obj110295
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj110295
                    _%message110156%_
                    'where:
                    _%where110155%_
                    'irritants:
                    _%irritants110157%_))
                 __obj110295)))
          (declare (not safe))
          (raise __tmp110302))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp110303 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp110303
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
      (lambda (_%obj110153%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj110153%_))))
    (define try-HashTable
      (lambda (_%obj110151%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj110151%_))))
    (define HashTable?
      (lambda (_%obj110149%_)
        (let ((__tmp110304
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110149%_ __tmp110304))))
    (define is-HashTable?
      (lambda (_%obj110147%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj110147%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self110131%_)
        (let* ((_%self110136%_
                (let ((_%$obj110133%_ _%self110131%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110133%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110133%_)))
                           '#t)
                      _%$obj110133%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110133%_)))))
               (_%self110138%_ _%self110136%_))
          (&HashTable-clear! _%self110138%_))))
    (define &HashTable-clear!
      (lambda (_%self110116%_)
        (let ((_%self110118%_ _%self110116%_))
          (declare (not safe))
          (let ((_%obj110128%_
                 (##unchecked-structure-ref _%self110118%_ '1 '#f 'clear!))
                (_%f110129%_
                 (##unchecked-structure-ref _%self110118%_ '2 '#f 'clear!)))
            (_%f110129%_ _%obj110128%_)))))
    (define HashTable-copy
      (lambda (_%self110100%_)
        (let* ((_%self110105%_
                (let ((_%$obj110102%_ _%self110100%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110102%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110102%_)))
                           '#t)
                      _%$obj110102%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110102%_)))))
               (_%self110107%_ _%self110105%_))
          (__HashTable-copy _%self110107%_))))
    (define __HashTable-copy
      (lambda (_%self110087%_)
        (let* ((_%self110089%_ _%self110087%_)
               (_%$obj110097%_ (&HashTable-copy _%self110089%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj110097%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj110097%_)))
                   '#t)
              _%$obj110097%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj110097%_))))))
    (define &HashTable-copy
      (lambda (_%self110072%_)
        (let ((_%self110074%_ _%self110072%_))
          (declare (not safe))
          (let ((_%obj110084%_
                 (##unchecked-structure-ref _%self110074%_ '1 '#f 'copy))
                (_%f110085%_
                 (##unchecked-structure-ref _%self110074%_ '3 '#f 'copy)))
            (_%f110085%_ _%obj110084%_)))))
    (define HashTable-delete!
      (lambda (_%self110055%_ _%key110056%_)
        (let* ((_%self110061%_
                (let ((_%$obj110058%_ _%self110055%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110058%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110058%_)))
                           '#t)
                      _%$obj110058%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110058%_)))))
               (_%self110063%_ _%self110061%_))
          (&HashTable-delete! _%self110063%_ _%key110056%_))))
    (define &HashTable-delete!
      (lambda (_%self110039%_ _%key110040%_)
        (let ((_%self110042%_ _%self110039%_))
          (declare (not safe))
          (let ((_%obj110052%_
                 (##unchecked-structure-ref _%self110042%_ '1 '#f 'delete!))
                (_%f110053%_
                 (##unchecked-structure-ref _%self110042%_ '4 '#f 'delete!)))
            (_%f110053%_ _%obj110052%_ _%key110040%_)))))
    (define HashTable-for-each
      (lambda (_%self110012%_ _%proc110013%_)
        (let* ((_%self110018%_
                (let ((_%$obj110015%_ _%self110012%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110015%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110015%_)))
                           '#t)
                      _%$obj110015%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110015%_)))))
               (_%self110020%_ _%self110018%_))
          (if (procedure? _%proc110013%_)
              (let ((_%proc110029%_ _%proc110013%_))
                (&HashTable-for-each _%self110020%_ _%proc110029%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110013%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self109988%_ _%proc109989%_)
        (let* ((_%self109991%_ _%self109988%_) (_%proc109998%_ _%proc109989%_))
          (declare (not safe))
          (let ((_%obj110009%_
                 (##unchecked-structure-ref _%self109991%_ '1 '#f 'for-each))
                (_%f110010%_
                 (##unchecked-structure-ref _%self109991%_ '5 '#f 'for-each)))
            (_%f110010%_ _%obj110009%_ _%proc109998%_)))))
    (define HashTable-length
      (lambda (_%self109972%_)
        (let* ((_%self109977%_
                (let ((_%$obj109974%_ _%self109972%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109974%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109974%_)))
                           '#t)
                      _%$obj109974%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109974%_)))))
               (_%self109979%_ _%self109977%_))
          (__HashTable-length _%self109979%_))))
    (define __HashTable-length
      (lambda (_%self109959%_)
        (let* ((_%self109961%_ _%self109959%_)
               (_%val109969%_ (&HashTable-length _%self109961%_)))
          _%val109969%_)))
    (define &HashTable-length
      (lambda (_%self109944%_)
        (let ((_%self109946%_ _%self109944%_))
          (declare (not safe))
          (let ((_%obj109956%_
                 (##unchecked-structure-ref _%self109946%_ '1 '#f 'length))
                (_%f109957%_
                 (##unchecked-structure-ref _%self109946%_ '6 '#f 'length)))
            (_%f109957%_ _%obj109956%_)))))
    (define HashTable-ref
      (lambda (_%self109926%_ _%key109927%_ _%default109928%_)
        (let* ((_%self109933%_
                (let ((_%$obj109930%_ _%self109926%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109930%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109930%_)))
                           '#t)
                      _%$obj109930%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109930%_)))))
               (_%self109935%_ _%self109933%_))
          (&HashTable-ref _%self109935%_ _%key109927%_ _%default109928%_))))
    (define &HashTable-ref
      (lambda (_%self109909%_ _%key109910%_ _%default109911%_)
        (let ((_%self109913%_ _%self109909%_))
          (declare (not safe))
          (let ((_%obj109923%_
                 (##unchecked-structure-ref _%self109913%_ '1 '#f 'ref))
                (_%f109924%_
                 (##unchecked-structure-ref _%self109913%_ '7 '#f 'ref)))
            (_%f109924%_ _%obj109923%_ _%key109910%_ _%default109911%_)))))
    (define HashTable-set!
      (lambda (_%self109891%_ _%key109892%_ _%value109893%_)
        (let* ((_%self109898%_
                (let ((_%$obj109895%_ _%self109891%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109895%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109895%_)))
                           '#t)
                      _%$obj109895%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109895%_)))))
               (_%self109900%_ _%self109898%_))
          (&HashTable-set! _%self109900%_ _%key109892%_ _%value109893%_))))
    (define &HashTable-set!
      (lambda (_%self109874%_ _%key109875%_ _%value109876%_)
        (let ((_%self109878%_ _%self109874%_))
          (declare (not safe))
          (let ((_%obj109888%_
                 (##unchecked-structure-ref _%self109878%_ '1 '#f 'set!))
                (_%f109889%_
                 (##unchecked-structure-ref _%self109878%_ '8 '#f 'set!)))
            (_%f109889%_ _%obj109888%_ _%key109875%_ _%value109876%_)))))
    (define HashTable-update!
      (lambda (_%self109845%_ _%key109846%_ _%proc109847%_ _%default109848%_)
        (let* ((_%self109853%_
                (let ((_%$obj109850%_ _%self109845%_))
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
          (if (procedure? _%proc109847%_)
              (let ((_%proc109864%_ _%proc109847%_))
                (&HashTable-update!
                 _%self109855%_
                 _%key109846%_
                 _%proc109864%_
                 _%default109848%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc109847%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self109817%_ _%key109818%_ _%proc109819%_ _%default109820%_)
        (let* ((_%self109822%_ _%self109817%_) (_%proc109829%_ _%proc109819%_))
          (declare (not safe))
          (let ((_%obj109840%_
                 (##unchecked-structure-ref _%self109822%_ '1 '#f 'update!))
                (_%f109842%_
                 (##unchecked-structure-ref _%self109822%_ '9 '#f 'update!)))
            (_%f109842%_
             _%obj109840%_
             _%key109818%_
             _%proc109829%_
             _%default109820%_)))))
    (define Locker::t
      (let ((__tmp110305 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp110305
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
      (lambda (_%obj109815%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj109815%_))))
    (define try-Locker
      (lambda (_%obj109813%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj109813%_))))
    (define Locker?
      (lambda (_%obj109811%_)
        (let ((__tmp110306
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj109811%_ __tmp110306))))
    (define is-Locker?
      (lambda (_%obj109809%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj109809%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self109793%_)
        (let* ((_%self109798%_
                (let ((_%$obj109795%_ _%self109793%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109795%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109795%_)))
                           '#t)
                      _%$obj109795%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109795%_)))))
               (_%self109800%_ _%self109798%_))
          (&Locker-read-lock! _%self109800%_))))
    (define &Locker-read-lock!
      (lambda (_%self109778%_)
        (let ((_%self109780%_ _%self109778%_))
          (declare (not safe))
          (let ((_%obj109790%_
                 (##unchecked-structure-ref _%self109780%_ '1 '#f 'read-lock!))
                (_%f109791%_
                 (##unchecked-structure-ref
                  _%self109780%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f109791%_ _%obj109790%_)))))
    (define Locker-read-unlock!
      (lambda (_%self109762%_)
        (let* ((_%self109767%_
                (let ((_%$obj109764%_ _%self109762%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109764%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109764%_)))
                           '#t)
                      _%$obj109764%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109764%_)))))
               (_%self109769%_ _%self109767%_))
          (&Locker-read-unlock! _%self109769%_))))
    (define &Locker-read-unlock!
      (lambda (_%self109747%_)
        (let ((_%self109749%_ _%self109747%_))
          (declare (not safe))
          (let ((_%obj109759%_
                 (##unchecked-structure-ref
                  _%self109749%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f109760%_
                 (##unchecked-structure-ref
                  _%self109749%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f109760%_ _%obj109759%_)))))
    (define Locker-write-lock!
      (lambda (_%self109731%_)
        (let* ((_%self109736%_
                (let ((_%$obj109733%_ _%self109731%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109733%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109733%_)))
                           '#t)
                      _%$obj109733%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109733%_)))))
               (_%self109738%_ _%self109736%_))
          (&Locker-write-lock! _%self109738%_))))
    (define &Locker-write-lock!
      (lambda (_%self109716%_)
        (let ((_%self109718%_ _%self109716%_))
          (declare (not safe))
          (let ((_%obj109728%_
                 (##unchecked-structure-ref
                  _%self109718%_
                  '1
                  '#f
                  'write-lock!))
                (_%f109729%_
                 (##unchecked-structure-ref
                  _%self109718%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f109729%_ _%obj109728%_)))))
    (define Locker-write-unlock!
      (lambda (_%self109700%_)
        (let* ((_%self109705%_
                (let ((_%$obj109702%_ _%self109700%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109702%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109702%_)))
                           '#t)
                      _%$obj109702%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109702%_)))))
               (_%self109707%_ _%self109705%_))
          (&Locker-write-unlock! _%self109707%_))))
    (define &Locker-write-unlock!
      (lambda (_%self109683%_)
        (let ((_%self109685%_ _%self109683%_))
          (declare (not safe))
          (let ((_%obj109695%_
                 (##unchecked-structure-ref
                  _%self109685%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f109697%_
                 (##unchecked-structure-ref
                  _%self109685%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f109697%_ _%obj109695%_)))))
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
      (lambda (_%table109676%_
               _%key109677%_
               _%update109678%_
               _%default109679%_)
        (let ((_%result109681%_
               (table-ref _%table109676%_ _%key109677%_ _%default109679%_)))
          (table-set!
           _%table109676%_
           _%key109677%_
           (_%update109678%_ _%default109679%_)))))
    (define gambit-table-for-each
      (lambda (_%table109673%_ _%proc109674%_)
        (table-for-each _%proc109674%_ _%table109673%_)))
    (define gambit-table-clear!
      (lambda (_%table109671%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table109671%_ '0 '5 '#f '#f))))
    (let ((__tmp110307 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110307 'ref table-ref))
    (let ((__tmp110308 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110308 'set! table-set!))
    (let ((__tmp110309 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110309 'update! gambit-table-update!))
    (let ((__tmp110310 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110310 'delete! table-set!))
    (let ((__tmp110311 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110311 'for-each gambit-table-for-each))
    (let ((__tmp110312 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110312 'length table-length))
    (let ((__tmp110313 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110313 'copy table-copy))
    (let ((__tmp110314 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110314 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots109653%_ '(table count free hash test seed))
             (_%slot-vector109655%_ (list->vector (cons '#f _%slots109653%_)))
             (_%slot-table109662%_
              (let ((_%slot-table109657%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp110317
                       (lambda (_%slot109659%_ _%field109660%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109657%_
                            _%slot109659%_
                            _%field109660%_))
                         (let ((__tmp110318
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot109659%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109657%_
                            __tmp110318
                            _%field109660%_))))
                      (__tmp110315
                       (let ((__tmp110316
                              (let ()
                                (declare (not safe))
                                (##length _%slots109653%_))))
                         (declare (not safe))
                         (##iota __tmp110316 '1))))
                  (declare (not safe))
                  (##for-each __tmp110317 _%slots109653%_ __tmp110315))
                _%slot-table109657%_))
             (_%flags109664%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields109666%_ '#())
             (_%properties109668%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots109653%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp110319 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags109664%_
         __table::t
         _%fields109666%_
         __tmp110319
         _%slot-vector109655%_
         _%slot-table109662%_
         _%properties109668%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots109635%_ '(gcht immediate))
             (_%slot-vector109637%_ (list->vector (cons '#f _%slots109635%_)))
             (_%slot-table109644%_
              (let ((_%slot-table109639%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp110322
                       (lambda (_%slot109641%_ _%field109642%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109639%_
                            _%slot109641%_
                            _%field109642%_))
                         (let ((__tmp110323
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot109641%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109639%_
                            __tmp110323
                            _%field109642%_))))
                      (__tmp110320
                       (let ((__tmp110321
                              (let ()
                                (declare (not safe))
                                (##length _%slots109635%_))))
                         (declare (not safe))
                         (##iota __tmp110321 '1))))
                  (declare (not safe))
                  (##for-each __tmp110322 _%slots109635%_ __tmp110320))
                _%slot-table109639%_))
             (_%flags109646%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields109648%_ '#())
             (_%properties109650%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots109635%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp110324 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags109646%_
         __gc-table::t
         _%fields109648%_
         __tmp110324
         _%slot-vector109637%_
         _%slot-table109644%_
         _%properties109650%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp110326 (list))
            (__tmp110325
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp110326
         '(table lock)
         __tmp110325
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args109632%_
        (apply make-instance locked-hash-table::t _%$args109632%_)))
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
      (let ((__tmp110328 (list))
            (__tmp110327
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp110328
         '(table key-check)
         __tmp110327
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args109629%_
        (apply make-instance checked-hash-table::t _%$args109629%_)))
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
      (let ((__tmp110330 (list hash-table::t))
            (__tmp110329 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp110330
         '()
         __tmp110329
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args109626%_
        (apply make-instance eq-hash-table::t _%$args109626%_)))
    (define eqv-hash-table::t
      (let ((__tmp110332 (list hash-table::t))
            (__tmp110331 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp110332
         '()
         __tmp110331
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args109623%_
        (apply make-instance eqv-hash-table::t _%$args109623%_)))
    (define symbol-hash-table::t
      (let ((__tmp110334 (list hash-table::t))
            (__tmp110333 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp110334
         '()
         __tmp110333
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args109620%_
        (apply make-instance symbol-hash-table::t _%$args109620%_)))
    (define string-hash-table::t
      (let ((__tmp110336 (list hash-table::t))
            (__tmp110335 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp110336
         '()
         __tmp110335
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args109617%_
        (apply make-instance string-hash-table::t _%$args109617%_)))
    (define immediate-hash-table::t
      (let ((__tmp110338 (list hash-table::t))
            (__tmp110337 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp110338
         '()
         __tmp110337
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args109614%_
        (apply make-instance immediate-hash-table::t _%$args109614%_)))
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
    (define _%locked-hash-table::ref105614%_
      (lambda (_%self105613109588%_ _%key109590%_ _%default109591%_)
        (let* ((_%self109593%_ _%self105613109588%_)
               (_%self109596%_ _%self109593%_))
          (let ((_%h109606%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109596%_ '1 '#f '#f)))
                (_%l109608%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109596%_ '2 '#f '#f))))
            (let ((__tmp110341 (lambda () (&Locker-read-lock! _%l109608%_)))
                  (__tmp110340
                   (lambda ()
                     (&HashTable-ref
                      _%h109606%_
                      _%key109590%_
                      _%default109591%_)))
                  (__tmp110339 (lambda () (&Locker-read-unlock! _%l109608%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110341 __tmp110340 __tmp110339))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref105614%_
       '#f))
    (define _%locked-hash-table::set!105617%_
      (lambda (_%self105616109439%_ _%key109441%_ _%value109442%_)
        (let* ((_%self109444%_ _%self105616109439%_)
               (_%self109447%_ _%self109444%_))
          (let ((_%h109457%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109447%_ '1 '#f '#f)))
                (_%l109459%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109447%_ '2 '#f '#f))))
            (let ((__tmp110344 (lambda () (&Locker-write-lock! _%l109459%_)))
                  (__tmp110343
                   (lambda ()
                     (&HashTable-set!
                      _%h109457%_
                      _%key109441%_
                      _%value109442%_)))
                  (__tmp110342
                   (lambda () (&Locker-write-unlock! _%l109459%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110344 __tmp110343 __tmp110342))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!105617%_
       '#f))
    (define _%locked-hash-table::update!105620%_
      (lambda (_%self105619109289%_
               _%key109291%_
               _%update109292%_
               _%default109293%_)
        (let* ((_%self109295%_ _%self105619109289%_)
               (_%self109298%_ _%self109295%_))
          (let ((_%h109308%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109298%_ '1 '#f '#f)))
                (_%l109310%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109298%_ '2 '#f '#f))))
            (let ((__tmp110347 (lambda () (&Locker-write-lock! _%l109310%_)))
                  (__tmp110346
                   (lambda ()
                     (&HashTable-update!
                      _%h109308%_
                      _%key109291%_
                      _%update109292%_
                      _%default109293%_)))
                  (__tmp110345
                   (lambda () (&Locker-write-unlock! _%l109310%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110347 __tmp110346 __tmp110345))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!105620%_
       '#f))
    (define _%locked-hash-table::delete!105623%_
      (lambda (_%self105622109141%_ _%key109143%_)
        (let* ((_%self109145%_ _%self105622109141%_)
               (_%self109148%_ _%self109145%_))
          (let ((_%h109158%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109148%_ '1 '#f '#f)))
                (_%l109160%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109148%_ '2 '#f '#f))))
            (let ((__tmp110350 (lambda () (&Locker-write-lock! _%l109160%_)))
                  (__tmp110349
                   (lambda () (&HashTable-delete! _%h109158%_ _%key109143%_)))
                  (__tmp110348
                   (lambda () (&Locker-write-unlock! _%l109160%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110350 __tmp110349 __tmp110348))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!105623%_
       '#f))
    (define _%locked-hash-table::for-each105626%_
      (lambda (_%self105625108993%_ _%proc108995%_)
        (let* ((_%self108997%_ _%self105625108993%_)
               (_%self109000%_ _%self108997%_))
          (let ((_%h109010%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109000%_ '1 '#f '#f)))
                (_%l109012%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109000%_ '2 '#f '#f))))
            (let ((__tmp110353 (lambda () (&Locker-read-lock! _%l109012%_)))
                  (__tmp110352
                   (lambda ()
                     (&HashTable-for-each _%h109010%_ _%proc108995%_)))
                  (__tmp110351 (lambda () (&Locker-read-unlock! _%l109012%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110353 __tmp110352 __tmp110351))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each105626%_
       '#f))
    (define _%locked-hash-table::length105629%_
      (lambda (_%self105628108846%_)
        (let* ((_%self108849%_ _%self105628108846%_)
               (_%self108852%_ _%self108849%_))
          (let ((_%h108862%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108852%_ '1 '#f '#f)))
                (_%l108864%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108852%_ '2 '#f '#f))))
            (let ((__tmp110356 (lambda () (&Locker-read-lock! _%l108864%_)))
                  (__tmp110355 (lambda () (&HashTable-length _%h108862%_)))
                  (__tmp110354 (lambda () (&Locker-read-unlock! _%l108864%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110356 __tmp110355 __tmp110354))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length105629%_
       '#f))
    (define _%locked-hash-table::copy105632%_
      (lambda (_%self105631108699%_)
        (let* ((_%self108702%_ _%self105631108699%_)
               (_%self108705%_ _%self108702%_))
          (let ((_%h108715%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108705%_ '1 '#f '#f)))
                (_%l108717%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108705%_ '2 '#f '#f))))
            (let ((__tmp110359 (lambda () (&Locker-read-lock! _%l108717%_)))
                  (__tmp110358 (lambda () (&HashTable-copy _%h108715%_)))
                  (__tmp110357 (lambda () (&Locker-read-unlock! _%l108717%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110359 __tmp110358 __tmp110357))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy105632%_
       '#f))
    (define _%locked-hash-table::clear!105635%_
      (lambda (_%self105634108552%_)
        (let* ((_%self108555%_ _%self105634108552%_)
               (_%self108558%_ _%self108555%_))
          (let ((_%h108568%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108558%_ '1 '#f '#f)))
                (_%l108570%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108558%_ '2 '#f '#f))))
            (let ((__tmp110362 (lambda () (&Locker-write-lock! _%l108570%_)))
                  (__tmp110361 (lambda () (&HashTable-clear! _%h108568%_)))
                  (__tmp110360
                   (lambda () (&Locker-write-unlock! _%l108570%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110362 __tmp110361 __tmp110360))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!105635%_
       '#f))
    (let ((__tmp110363 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110363 'read-lock! mutex-lock!))
    (let ((__tmp110364 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110364 'read-unlock! mutex-unlock!))
    (let ((__tmp110365 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110365 'write-lock! mutex-lock!))
    (let ((__tmp110366 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110366 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref105849%_
      (lambda (_%self105848108402%_ _%key108404%_ _%default108405%_)
        (let* ((_%self108407%_ _%self105848108402%_)
               (_%self108409%_ _%self108407%_))
          (declare (not safe))
          (let ((_%h108420%_
                 (##unchecked-structure-ref _%self108409%_ '1 '#f '#f))
                (_%key?108422%_
                 (##unchecked-structure-ref _%self108409%_ '2 '#f '#f)))
            (if ((lambda (_%key?108425%_ _%key108426%_ _%default108427%_)
                   (_%key?108425%_ _%key108426%_))
                 _%key?108422%_
                 _%key108404%_
                 _%default108405%_)
                (&HashTable-ref _%h108420%_ _%key108404%_ _%default108405%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key108404%_ (cons _%default108405%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref105849%_
       '#f))
    (define _%checked-hash-table::set!105852%_
      (lambda (_%self105851108252%_ _%key108254%_ _%value108255%_)
        (let* ((_%self108257%_ _%self105851108252%_)
               (_%self108259%_ _%self108257%_))
          (declare (not safe))
          (let ((_%h108270%_
                 (##unchecked-structure-ref _%self108259%_ '1 '#f '#f))
                (_%key?108272%_
                 (##unchecked-structure-ref _%self108259%_ '2 '#f '#f)))
            (if ((lambda (_%key?108275%_ _%key108276%_ _%value108277%_)
                   (_%key?108275%_ _%key108276%_))
                 _%key?108272%_
                 _%key108254%_
                 _%value108255%_)
                (&HashTable-set! _%h108270%_ _%key108254%_ _%value108255%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key108254%_ (cons _%value108255%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!105852%_
       '#f))
    (define _%checked-hash-table::update!105855%_
      (lambda (_%self105854108100%_
               _%key108102%_
               _%update108103%_
               _%default108104%_)
        (let* ((_%self108106%_ _%self105854108100%_)
               (_%self108108%_ _%self108106%_))
          (declare (not safe))
          (let ((_%h108119%_
                 (##unchecked-structure-ref _%self108108%_ '1 '#f '#f))
                (_%key?108121%_
                 (##unchecked-structure-ref _%self108108%_ '2 '#f '#f)))
            (if ((lambda (_%key?108124%_
                          _%key108125%_
                          _%update108126%_
                          _%default108127%_)
                   (_%key?108124%_ _%key108125%_))
                 _%key?108121%_
                 _%key108102%_
                 _%update108103%_
                 _%default108104%_)
                (&HashTable-update!
                 _%h108119%_
                 _%key108102%_
                 _%update108103%_
                 _%default108104%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key108102%_
                         (cons _%update108103%_ (cons _%default108104%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!105855%_
       '#f))
    (define _%checked-hash-table::delete!105858%_
      (lambda (_%self105857107952%_ _%key107954%_)
        (let* ((_%self107956%_ _%self105857107952%_)
               (_%self107958%_ _%self107956%_))
          (declare (not safe))
          (let ((_%h107969%_
                 (##unchecked-structure-ref _%self107958%_ '1 '#f '#f))
                (_%key?107971%_
                 (##unchecked-structure-ref _%self107958%_ '2 '#f '#f)))
            (if ((lambda (_%key?107974%_ _%key107975%_)
                   (_%key?107974%_ _%key107975%_))
                 _%key?107971%_
                 _%key107954%_)
                (&HashTable-delete! _%h107969%_ _%key107954%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key107954%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!105858%_
       '#f))
    (define _%checked-hash-table::for-each105861%_
      (lambda (_%self105860107804%_ _%proc107806%_)
        (let* ((_%self107808%_ _%self105860107804%_)
               (_%self107810%_ _%self107808%_))
          (declare (not safe))
          (let ((_%h107821%_
                 (##unchecked-structure-ref _%self107810%_ '1 '#f '#f))
                (_%key?107823%_
                 (##unchecked-structure-ref _%self107810%_ '2 '#f '#f)))
            (if ((lambda (_%key?107826%_ _%proc107827%_) '#t)
                 _%key?107823%_
                 _%proc107806%_)
                (&HashTable-for-each _%h107821%_ _%proc107806%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc107806%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each105861%_
       '#f))
    (define _%checked-hash-table::length105864%_
      (lambda (_%self105863107660%_)
        (let* ((_%self107663%_ _%self105863107660%_)
               (_%self107665%_ _%self107663%_))
          (declare (not safe))
          (let ((_%h107676%_
                 (##unchecked-structure-ref _%self107665%_ '1 '#f '#f))
                (_%key?107678%_
                 (##unchecked-structure-ref _%self107665%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h107676%_)
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
       _%checked-hash-table::length105864%_
       '#f))
    (define _%checked-hash-table::copy105867%_
      (lambda (_%self105866107516%_)
        (let* ((_%self107519%_ _%self105866107516%_)
               (_%self107521%_ _%self107519%_))
          (declare (not safe))
          (let ((_%h107532%_
                 (##unchecked-structure-ref _%self107521%_ '1 '#f '#f))
                (_%key?107534%_
                 (##unchecked-structure-ref _%self107521%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h107532%_)
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
       _%checked-hash-table::copy105867%_
       '#f))
    (define _%checked-hash-table::clear!105870%_
      (lambda (_%self105869107372%_)
        (let* ((_%self107375%_ _%self105869107372%_)
               (_%self107377%_ _%self107375%_))
          (declare (not safe))
          (let ((_%h107388%_
                 (##unchecked-structure-ref _%self107377%_ '1 '#f '#f))
                (_%key?107390%_
                 (##unchecked-structure-ref _%self107377%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h107388%_)
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
       _%checked-hash-table::clear!105870%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table107242%_
               _%count107243%_
               _%free107244%_
               _%hash107245%_
               _%test107246%_
               _%seed107247%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table107242%_
           _%count107243%_
           _%free107244%_
           _%hash107245%_
           _%test107246%_
           _%seed107247%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords107003%_
               _%size-hint106993107004%_
               _%seed106994107006%_
               _%test106995107008%_
               _%hash106996107010%_
               _%lock106997107012%_
               _%check106998107014%_
               _%weak-keys106999107016%_
               _%weak-values107000107018%_)
        (let* ((_%size-hint107021%_
                (if (eq? _%size-hint106993107004%_ absent-value)
                    '#f
                    _%size-hint106993107004%_))
               (_%seed107023%_
                (if (eq? _%seed106994107006%_ absent-value)
                    '#f
                    _%seed106994107006%_))
               (_%test107025%_
                (if (eq? _%test106995107008%_ absent-value)
                    equal?
                    _%test106995107008%_))
               (_%hash107027%_
                (if (eq? _%hash106996107010%_ absent-value)
                    '#f
                    _%hash106996107010%_))
               (_%lock107029%_
                (if (eq? _%lock106997107012%_ absent-value)
                    '#f
                    _%lock106997107012%_))
               (_%check107031%_
                (if (eq? _%check106998107014%_ absent-value)
                    '#f
                    _%check106998107014%_))
               (_%weak-keys107033%_
                (if (eq? _%weak-keys106999107016%_ absent-value)
                    '#f
                    _%weak-keys106999107016%_))
               (_%weak-values107035%_
                (if (eq? _%weak-values107000107018%_ absent-value)
                    '#f
                    _%weak-values107000107018%_)))
          (letrec ((_%table-seed107038%_
                    (lambda ()
                      (if (fixnum? _%seed107023%_)
                          _%seed107023%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock107039%_
                    (lambda (_%ht107216%_)
                      (let ((_%ht107219%_ _%ht107216%_))
                        (_%__wrap-lock107040%_ _%ht107219%_))))
                   (_%__wrap-lock107040%_
                    (lambda (_%ht107198%_)
                      (let ((_%ht107201%_ _%ht107198%_))
                        (if _%lock107029%_
                            (let ((_%$obj107213%_
                                   (let ((__tmp110367
                                          (let ((_%$obj107210%_
                                                 _%lock107029%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj107210%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj107210%_)))
                                                     '#t)
                                                _%$obj107210%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj107210%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht107201%_
                                      __tmp110367))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107213%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107213%_)))
                                       '#t)
                                  _%$obj107213%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107213%_))))
                            _%ht107201%_))))
                   (_%wrap-checked107041%_
                    (lambda (_%ht107185%_ _%implicit107186%_)
                      (let ((_%ht107189%_ _%ht107185%_))
                        (_%__wrap-checked107042%_
                         _%ht107189%_
                         _%implicit107186%_))))
                   (_%__wrap-checked107042%_
                    (lambda (_%ht107158%_ _%implicit107159%_)
                      (let ((_%ht107162%_ _%ht107158%_))
                        (if _%check107031%_
                            (let ((_%$obj107182%_
                                   (let ((__tmp110368
                                          (if (procedure? _%check107031%_)
                                              _%check107031%_
                                              _%implicit107159%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht107162%_
                                      __tmp110368))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107182%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107182%_)))
                                       '#t)
                                  _%$obj107182%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107182%_))))
                            _%ht107162%_))))
                   (_%make107043%_
                    (lambda (_%kons107142%_
                             _%key?107143%_
                             _%hash107144%_
                             _%test107145%_)
                      (let* ((_%size107148%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint107021%_)))
                             (_%table107150%_
                              (let ((__tmp110369 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size107148%_ __tmp110369)))
                             (_%ht107155%_
                              (let ((_%$obj107152%_
                                     (_%kons107142%_
                                      _%table107150%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size107148%_ '2))
                                      _%hash107144%_
                                      _%test107145%_
                                      (_%table-seed107038%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107152%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107152%_)))
                                         '#t)
                                    _%$obj107152%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107152%_))))))
                        (_%__wrap-checked107042%_
                         (_%__wrap-lock107040%_ _%ht107155%_)
                         _%key?107143%_))))
                   (_%make-gc-hash-table107044%_
                    (lambda ()
                      (let ((_%ht107140%_
                             (let ((_%$obj107137%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint107021%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj107137%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj107137%_)))
                                        '#t)
                                   _%$obj107137%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj107137%_))))))
                        (_%__wrap-checked107042%_
                         (_%__wrap-lock107040%_ _%ht107140%_)
                         true))))
                   (_%make-gambit-table107045%_
                    (lambda ()
                      (let* ((_%size107114%_
                              (let ((_%$e107111%_ _%size-hint107021%_))
                                (if _%$e107111%_
                                    _%$e107111%_
                                    (macro-absent-obj))))
                             (_%test107119%_
                              (let ((_%$e107116%_ _%test107025%_))
                                (if _%$e107116%_ _%$e107116%_ equal?)))
                             (_%hash107127%_
                              (let ((_%$e107121%_ _%hash107027%_))
                                (if _%$e107121%_
                                    _%$e107121%_
                                    (if (eq? _%test107119%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test107119%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht107132%_
                              (let ((_%$obj107129%_
                                     (make-table
                                      'size:
                                      _%size107114%_
                                      'test:
                                      _%test107119%_
                                      'hash:
                                      _%hash107127%_
                                      'weak-keys:
                                      _%weak-keys107033%_
                                      'weak-values:
                                      _%weak-values107035%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107129%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107129%_)))
                                         '#t)
                                    _%$obj107129%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107129%_))))))
                        (_%__wrap-checked107042%_
                         (_%__wrap-lock107040%_ _%ht107132%_)
                         true)))))
            (if (or _%weak-keys107033%_ _%weak-values107035%_)
                (_%make-gambit-table107045%_)
                (if (and (or (eq? _%test107025%_ eq?)
                             (eq? _%test107025%_ ##eq?))
                         (or (not _%hash107027%_)
                             (eq? _%hash107027%_ eq?-hash)
                             (eq? _%hash107027%_ eq-hash))
                         (not _%seed107023%_))
                    (_%make-gc-hash-table107044%_)
                    (if (and (or (eq? _%test107025%_ eq?)
                                 (eq? _%test107025%_ ##eq?))
                             (or (not _%hash107027%_)
                                 (eq? _%hash107027%_ eq?-hash)
                                 (eq? _%hash107027%_ eq-hash)))
                        (_%make107043%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test107025%_ eqv?)
                                     (eq? _%test107025%_ ##eqv?))
                                 (or (not _%hash107027%_)
                                     (eq? _%hash107027%_ eqv?-hash)
                                     (eq? _%hash107027%_ eqv-hash)))
                            (_%make107043%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test107025%_ eq?)
                                         (eq? _%test107025%_ ##eq?))
                                     (or (eq? _%hash107027%_ symbolic-hash)
                                         (eq? _%hash107027%_ ##symbol-hash)))
                                (_%make107043%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test107025%_ eq?)
                                             (eq? _%test107025%_ ##eq?))
                                         (eq? _%hash107027%_ immediate-hash))
                                    (_%make107043%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test107025%_ equal?)
                                                 (eq? _%test107025%_ ##equal?)
                                                 (eq? _%test107025%_ string=?)
                                                 (eq? _%test107025%_
                                                      ##string=?))
                                             (or (eq? _%hash107027%_
                                                      string-hash)
                                                 (eq? _%hash107027%_
                                                      ##string=?-hash)))
                                        (_%make107043%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test107025%_ equal?)
                                                 (not _%hash107027%_))
                                            (_%make107043%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test107025%_)
                                                (if (procedure? _%hash107027%_)
                                                    (_%make107043%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash107027%_
                                                     _%test107025%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash107027%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test107025%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords107232%_ . _%args107233%_)
        (apply make-hash-table__%
               _%@@keywords107232%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107232%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107232%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107232%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107232%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107232%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107232%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107232%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107232%_
                  'weak-values:
                  absent-value))
               _%args107233%_)))
    (define make-hash-table
      (lambda _%args107001107239%_
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
               _%args107001107239%_)))
    (define make-hash-table-eq
      (lambda _%args106990%_
        (apply make-hash-table 'test: eq? _%args106990%_)))
    (define make-hash-table-eqv
      (lambda _%args106988%_
        (apply make-hash-table 'test: eqv? _%args106988%_)))
    (define make-hash-table-symbolic
      (lambda _%args106986%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args106986%_)))
    (define make-hash-table-string
      (lambda _%args106984%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args106984%_)))
    (define make-hash-table-immediate
      (lambda _%args106982%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args106982%_)))
    (define list->hash-table
      (lambda (_%lst106979%_ . _%args106980%_)
        (list->hash-table!
         _%lst106979%_
         (apply make-hash-table
                'size:
                (length _%lst106979%_)
                _%args106980%_))))
    (define list->hash-table-eq
      (lambda (_%lst106976%_ . _%args106977%_)
        (list->hash-table!
         _%lst106976%_
         (apply make-hash-table-eq
                'size:
                (length _%lst106976%_)
                _%args106977%_))))
    (define list->hash-table-eqv
      (lambda (_%lst106973%_ . _%args106974%_)
        (list->hash-table!
         _%lst106973%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst106973%_)
                _%args106974%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst106970%_ . _%args106971%_)
        (list->hash-table!
         _%lst106970%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst106970%_)
                _%args106971%_))))
    (define list->hash-table-string
      (lambda (_%lst106967%_ . _%args106968%_)
        (list->hash-table!
         _%lst106967%_
         (apply make-hash-table-string
                'size:
                (length _%lst106967%_)
                _%args106968%_))))
    (define list->hash-table-immediate
      (lambda (_%lst106964%_ . _%args106965%_)
        (list->hash-table!
         _%lst106964%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst106964%_)
                _%args106965%_))))
    (define list->hash-table!
      (lambda (_%lst106931%_ _%h106932%_)
        (for-each
         (lambda (_%el106934%_)
           (let* ((_%el106935106942%_ _%el106934%_)
                  (_%E106937106946%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el106935106942%_
                              '([k . v])))
                     '#!void))
                  (_%K106938106952%_
                   (lambda (_%v106949%_ _%k106950%_)
                     (&HashTable-set! _%h106932%_ _%k106950%_ _%v106949%_))))
             (if (pair? _%el106935106942%_)
                 (let ((_%hd106939106955%_
                        (let ()
                          (declare (not safe))
                          (##car _%el106935106942%_)))
                       (_%tl106940106957%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el106935106942%_))))
                   (let* ((_%k106960%_ _%hd106939106955%_)
                          (_%v106962%_ _%tl106940106957%_))
                     (_%K106938106952%_ _%v106962%_ _%k106960%_)))
                 (_%E106937106946%_))))
         _%lst106931%_)
        _%h106932%_))
    (define plist->hash-table
      (lambda (_%lst106928%_ . _%args106929%_)
        (plist->hash-table!
         _%lst106928%_
         (apply make-hash-table
                'size:
                (length _%lst106928%_)
                _%args106929%_))))
    (define plist->hash-table-eq
      (lambda (_%lst106925%_ . _%args106926%_)
        (plist->hash-table!
         _%lst106925%_
         (apply make-hash-table-eq
                'size:
                (length _%lst106925%_)
                _%args106926%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst106922%_ . _%args106923%_)
        (plist->hash-table!
         _%lst106922%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst106922%_)
                _%args106923%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst106919%_ . _%args106920%_)
        (plist->hash-table!
         _%lst106919%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst106919%_)
                _%args106920%_))))
    (define plist->hash-table-string
      (lambda (_%lst106916%_ . _%args106917%_)
        (plist->hash-table!
         _%lst106916%_
         (apply make-hash-table-string
                'size:
                (length _%lst106916%_)
                _%args106917%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst106913%_ . _%args106914%_)
        (plist->hash-table!
         _%lst106913%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst106913%_)
                _%args106914%_))))
    (define plist->hash-table!
      (lambda (_%lst106853%_ _%h106854%_)
        (let _%loop106856%_ ((_%rest106858%_ _%lst106853%_))
          (let* ((_%rest106859106871%_ _%rest106858%_)
                 (_%else106862106879%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst106853%_)))))
            (let ((_%K106865106894%_
                   (lambda (_%rest106890%_ _%val106891%_ _%key106892%_)
                     (&HashTable-set! _%h106854%_ _%key106892%_ _%val106891%_)
                     (_%loop106856%_ _%rest106890%_)))
                  (_%K106864106884%_ (lambda () _%h106854%_)))
              (let ((_%try-match106861106887%_
                     (lambda ()
                       (if (null? _%rest106859106871%_)
                           (_%K106864106884%_)
                           (_%else106862106879%_)))))
                (if (pair? _%rest106859106871%_)
                    (let ((_%tl106867106899%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest106859106871%_)))
                          (_%hd106866106897%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest106859106871%_))))
                      (if (pair? _%tl106867106899%_)
                          (let ((_%tl106869106906%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl106867106899%_)))
                                (_%hd106868106904%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl106867106899%_))))
                            (let ((_%key106902%_ _%hd106866106897%_)
                                  (_%val106909%_ _%hd106868106904%_)
                                  (_%rest106911%_ _%tl106869106906%_))
                              (_%K106865106894%_
                               _%rest106911%_
                               _%val106909%_
                               _%key106902%_)))
                          (_%else106862106879%_)))
                    (_%try-match106861106887%_))))))))
    (define hash-length
      (lambda (_%h106835%_)
        (let* ((_%h106841%_
                (let ((_%$obj106838%_ _%h106835%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106838%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106838%_)))
                           '#t)
                      _%$obj106838%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106838%_)))))
               (_%h106843%_ _%h106841%_))
          (__hash-length _%h106843%_))))
    (define __hash-length
      (lambda (_%h106823%_)
        (let ((_%h106826%_ _%h106823%_)) (__HashTable-length _%h106826%_))))
    (define hash-ref__%
      (lambda (_%h106791%_ _%key106792%_ _%default106793%_)
        (let* ((_%h106799%_
                (let ((_%$obj106796%_ _%h106791%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106796%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106796%_)))
                           '#t)
                      _%$obj106796%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106796%_)))))
               (_%h106801%_ _%h106799%_))
          (__hash-ref__% _%h106801%_ _%key106792%_ _%default106793%_))))
    (define hash-ref__0
      (lambda (_%h106814%_ _%key106815%_)
        (let ((_%default106817%_ (macro-absent-obj)))
          (hash-ref__% _%h106814%_ _%key106815%_ _%default106817%_))))
    (define hash-ref
      (lambda _g110371_
        (let ((_g110370_ (let () (declare (not safe)) (##length _g110371_))))
          (cond ((let () (declare (not safe)) (##fx= _g110370_ 2))
                 (apply hash-ref__0 _g110371_))
                ((let () (declare (not safe)) (##fx= _g110370_ 3))
                 (apply hash-ref__% _g110371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g110371_))))))
    (define __hash-ref__%
      (lambda (_%h106762%_ _%key106763%_ _%default106764%_)
        (let* ((_%h106767%_ _%h106762%_)
               (_%result106776%_
                (&HashTable-ref _%h106767%_ _%key106763%_ _%default106764%_)))
          (if (eq? _%result106776%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h106767%_
               'key:
               _%key106763%_)
              _%result106776%_))))
    (define __hash-ref__0
      (lambda (_%h106781%_ _%key106782%_)
        (let ((_%default106784%_ (macro-absent-obj)))
          (__hash-ref__% _%h106781%_ _%key106782%_ _%default106784%_))))
    (define __hash-ref
      (lambda _g110373_
        (let ((_g110372_ (let () (declare (not safe)) (##length _g110373_))))
          (cond ((let () (declare (not safe)) (##fx= _g110372_ 2))
                 (apply __hash-ref__0 _g110373_))
                ((let () (declare (not safe)) (##fx= _g110372_ 3))
                 (apply __hash-ref__% _g110373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g110373_))))))
    (define hash-get
      (lambda (_%h106742%_ _%key106743%_)
        (let* ((_%h106749%_
                (let ((_%$obj106746%_ _%h106742%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106746%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106746%_)))
                           '#t)
                      _%$obj106746%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106746%_)))))
               (_%h106751%_ _%h106749%_))
          (__hash-get _%h106751%_ _%key106743%_))))
    (define __hash-get
      (lambda (_%h106729%_ _%key106730%_)
        (let ((_%h106733%_ _%h106729%_))
          (&HashTable-ref _%h106733%_ _%key106730%_ '#f))))
    (define hash-put!
      (lambda (_%h106709%_ _%key106710%_ _%value106711%_)
        (let* ((_%h106717%_
                (let ((_%$obj106714%_ _%h106709%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106714%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106714%_)))
                           '#t)
                      _%$obj106714%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106714%_)))))
               (_%h106719%_ _%h106717%_))
          (__hash-put! _%h106719%_ _%key106710%_ _%value106711%_))))
    (define __hash-put!
      (lambda (_%h106695%_ _%key106696%_ _%value106697%_)
        (let ((_%h106700%_ _%h106695%_))
          (&HashTable-set! _%h106700%_ _%key106696%_ _%value106697%_))))
    (define hash-update!__%
      (lambda (_%h106660%_ _%key106661%_ _%update106662%_ _%default106663%_)
        (let* ((_%h106669%_
                (let ((_%$obj106666%_ _%h106660%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106666%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106666%_)))
                           '#t)
                      _%$obj106666%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106666%_)))))
               (_%h106671%_ _%h106669%_))
          (__hash-update!__%
           _%h106671%_
           _%key106661%_
           _%update106662%_
           _%default106663%_))))
    (define hash-update!__0
      (lambda (_%h106684%_ _%key106685%_ _%update106686%_)
        (let ((_%default106688%_ '#!void))
          (hash-update!__%
           _%h106684%_
           _%key106685%_
           _%update106686%_
           _%default106688%_))))
    (define hash-update!
      (lambda _g110375_
        (let ((_g110374_ (let () (declare (not safe)) (##length _g110375_))))
          (cond ((let () (declare (not safe)) (##fx= _g110374_ 3))
                 (apply hash-update!__0 _g110375_))
                ((let () (declare (not safe)) (##fx= _g110374_ 4))
                 (apply hash-update!__% _g110375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g110375_))))))
    (define __hash-update!__%
      (lambda (_%h106630%_ _%key106631%_ _%update106632%_ _%default106633%_)
        (let ((_%h106636%_ _%h106630%_))
          (HashTable-update!
           _%h106636%_
           _%key106631%_
           _%update106632%_
           _%default106633%_))))
    (define __hash-update!__0
      (lambda (_%h106648%_ _%key106649%_ _%update106650%_)
        (let ((_%default106652%_ '#!void))
          (__hash-update!__%
           _%h106648%_
           _%key106649%_
           _%update106650%_
           _%default106652%_))))
    (define __hash-update!
      (lambda _g110377_
        (let ((_g110376_ (let () (declare (not safe)) (##length _g110377_))))
          (cond ((let () (declare (not safe)) (##fx= _g110376_ 3))
                 (apply __hash-update!__0 _g110377_))
                ((let () (declare (not safe)) (##fx= _g110376_ 4))
                 (apply __hash-update!__% _g110377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g110377_))))))
    (define hash-remove!
      (lambda (_%h106610%_ _%key106611%_)
        (let* ((_%h106617%_
                (let ((_%$obj106614%_ _%h106610%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106614%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106614%_)))
                           '#t)
                      _%$obj106614%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106614%_)))))
               (_%h106619%_ _%h106617%_))
          (__hash-remove! _%h106619%_ _%key106611%_))))
    (define __hash-remove!
      (lambda (_%h106597%_ _%key106598%_)
        (let ((_%h106601%_ _%h106597%_))
          (&HashTable-delete! _%h106601%_ _%key106598%_))))
    (define hash-key?
      (lambda (_%h106578%_ _%k106579%_)
        (let* ((_%h106585%_
                (let ((_%$obj106582%_ _%h106578%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106582%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106582%_)))
                           '#t)
                      _%$obj106582%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106582%_)))))
               (_%h106587%_ _%h106585%_))
          (__hash-key? _%h106587%_ _%k106579%_))))
    (define __hash-key?
      (lambda (_%h106565%_ _%k106566%_)
        (let ((_%h106569%_ _%h106565%_))
          (not (eq? (&HashTable-ref _%h106569%_ _%k106566%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h106547%_)
        (let* ((_%h106553%_
                (let ((_%$obj106550%_ _%h106547%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106550%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106550%_)))
                           '#t)
                      _%$obj106550%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106550%_)))))
               (_%h106555%_ _%h106553%_))
          (__hash->list _%h106555%_))))
    (define __hash->list
      (lambda (_%h106530%_)
        (let* ((_%h106533%_ _%h106530%_) (_%lst106542%_ '()))
          (&HashTable-for-each
           _%h106533%_
           (lambda (_%k106544%_ _%v106545%_)
             (set! _%lst106542%_
                   (cons (cons _%k106544%_ _%v106545%_) _%lst106542%_))))
          _%lst106542%_)))
    (define hash->plist
      (lambda (_%h106512%_)
        (let* ((_%h106518%_
                (let ((_%$obj106515%_ _%h106512%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106515%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106515%_)))
                           '#t)
                      _%$obj106515%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106515%_)))))
               (_%h106520%_ _%h106518%_))
          (__hash->plist _%h106520%_))))
    (define __hash->plist
      (lambda (_%h106495%_)
        (let* ((_%h106498%_ _%h106495%_) (_%lst106507%_ '()))
          (&HashTable-for-each
           _%h106498%_
           (lambda (_%k106509%_ _%v106510%_)
             (set! _%lst106507%_
                   (cons _%k106509%_ (cons _%v106510%_ _%lst106507%_)))))
          _%lst106507%_)))
    (define hash-for-each
      (lambda (_%proc106466%_ _%h106467%_)
        (if (procedure? _%proc106466%_)
            (let* ((_%proc106471%_ _%proc106466%_)
                   (_%h106483%_
                    (let ((_%$obj106480%_ _%h106467%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106480%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106480%_)))
                               '#t)
                          _%$obj106480%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106480%_)))))
                   (_%h106485%_ _%h106483%_))
              (__hash-for-each _%proc106471%_ _%h106485%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@567.22-567.26"
               'contract:
               'procedure?
               'value:
               _%proc106466%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc106445%_ _%h106446%_)
        (let* ((_%proc106449%_ _%proc106445%_) (_%h106457%_ _%h106446%_))
          (&HashTable-for-each _%h106457%_ _%proc106449%_))))
    (define hash-map
      (lambda (_%proc106416%_ _%h106417%_)
        (if (procedure? _%proc106416%_)
            (let* ((_%proc106421%_ _%proc106416%_)
                   (_%h106433%_
                    (let ((_%$obj106430%_ _%h106417%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106430%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106430%_)))
                               '#t)
                          _%$obj106430%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106430%_)))))
                   (_%h106435%_ _%h106433%_))
              (__hash-map _%proc106421%_ _%h106435%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@570.17-570.21"
               'contract:
               'procedure?
               'value:
               _%proc106416%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc106390%_ _%h106391%_)
        (let* ((_%proc106394%_ _%proc106390%_)
               (_%h106402%_ _%h106391%_)
               (_%result106411%_ '()))
          (&HashTable-for-each
           _%h106402%_
           (lambda (_%k106413%_ _%v106414%_)
             (set! _%result106411%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc106394%_ _%k106413%_ _%v106414%_))
                         _%result106411%_))))
          _%result106411%_)))
    (define hash-fold
      (lambda (_%proc106360%_ _%iv106361%_ _%h106362%_)
        (if (procedure? _%proc106360%_)
            (let* ((_%proc106366%_ _%proc106360%_)
                   (_%h106378%_
                    (let ((_%$obj106375%_ _%h106362%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106375%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106375%_)))
                               '#t)
                          _%$obj106375%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106375%_)))))
                   (_%h106380%_ _%h106378%_))
              (__hash-fold _%proc106366%_ _%iv106361%_ _%h106380%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@575.18-575.22"
               'contract:
               'procedure?
               'value:
               _%proc106360%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc106333%_ _%iv106334%_ _%h106335%_)
        (let* ((_%proc106338%_ _%proc106333%_)
               (_%h106346%_ _%h106335%_)
               (_%result106355%_ _%iv106334%_))
          (&HashTable-for-each
           _%h106346%_
           (lambda (_%k106357%_ _%v106358%_)
             (set! _%result106355%_
                   (let ()
                     (declare (not safe))
                     (_%proc106338%_
                      _%k106357%_
                      _%v106358%_
                      _%result106355%_)))))
          _%result106355%_)))
    (define hash-find__%
      (lambda (_%proc106291%_ _%h106292%_ _%default-value106293%_)
        (if (procedure? _%proc106291%_)
            (let* ((_%proc106297%_ _%proc106291%_)
                   (_%h106309%_
                    (let ((_%$obj106306%_ _%h106292%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106306%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106306%_)))
                               '#t)
                          _%$obj106306%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106306%_)))))
                   (_%h106311%_ _%h106309%_))
              (__hash-find__%
               _%proc106297%_
               _%h106311%_
               _%default-value106293%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@580.18-580.22"
               'contract:
               'procedure?
               'value:
               _%proc106291%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc106324%_ _%h106325%_)
        (let ((_%default-value106327%_ '#f))
          (hash-find__% _%proc106324%_ _%h106325%_ _%default-value106327%_))))
    (define hash-find
      (lambda _g110379_
        (let ((_g110378_ (let () (declare (not safe)) (##length _g110379_))))
          (cond ((let () (declare (not safe)) (##fx= _g110378_ 2))
                 (apply hash-find__0 _g110379_))
                ((let () (declare (not safe)) (##fx= _g110378_ 3))
                 (apply hash-find__% _g110379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g110379_))))))
    (define __hash-find__%
      (lambda (_%proc106248%_ _%h106249%_ _%default-value106250%_)
        (let* ((_%proc106253%_ _%proc106248%_)
               (_%h106261%_ _%h106249%_)
               (__tmp110380
                (lambda (_%return106270%_)
                  (&HashTable-for-each
                   _%h106261%_
                   (lambda (_%k106272%_ _%v106273%_)
                     (let ((_%$e106275%_
                            (let ()
                              (declare (not safe))
                              (_%proc106253%_ _%k106272%_ _%v106273%_))))
                       (if _%$e106275%_
                           (_%return106270%_ _%$e106275%_)
                           '#!void))))
                  _%default-value106250%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp110380))))
    (define __hash-find__0
      (lambda (_%proc106281%_ _%h106282%_)
        (let ((_%default-value106284%_ '#f))
          (__hash-find__%
           _%proc106281%_
           _%h106282%_
           _%default-value106284%_))))
    (define __hash-find
      (lambda _g110382_
        (let ((_g110381_ (let () (declare (not safe)) (##length _g110382_))))
          (cond ((let () (declare (not safe)) (##fx= _g110381_ 2))
                 (apply __hash-find__0 _g110382_))
                ((let () (declare (not safe)) (##fx= _g110381_ 3))
                 (apply __hash-find__% _g110382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g110382_))))))
    (define hash-keys
      (lambda (_%h106229%_)
        (let* ((_%h106235%_
                (let ((_%$obj106232%_ _%h106229%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106232%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106232%_)))
                           '#t)
                      _%$obj106232%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106232%_)))))
               (_%h106237%_ _%h106235%_))
          (__hash-keys _%h106237%_))))
    (define __hash-keys
      (lambda (_%h106212%_)
        (let* ((_%h106215%_ _%h106212%_) (_%result106224%_ '()))
          (&HashTable-for-each
           _%h106215%_
           (lambda (_%k106226%_ _%v106227%_)
             (set! _%result106224%_ (cons _%k106226%_ _%result106224%_))))
          _%result106224%_)))
    (define hash-values
      (lambda (_%h106194%_)
        (let* ((_%h106200%_
                (let ((_%$obj106197%_ _%h106194%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106197%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106197%_)))
                           '#t)
                      _%$obj106197%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106197%_)))))
               (_%h106202%_ _%h106200%_))
          (__hash-values _%h106202%_))))
    (define __hash-values
      (lambda (_%h106177%_)
        (let* ((_%h106180%_ _%h106177%_) (_%result106189%_ '()))
          (&HashTable-for-each
           _%h106180%_
           (lambda (_%k106191%_ _%v106192%_)
             (set! _%result106189%_ (cons _%v106192%_ _%result106189%_))))
          _%result106189%_)))
    (define hash-copy
      (lambda (_%h106159%_)
        (let* ((_%h106165%_
                (let ((_%$obj106162%_ _%h106159%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106162%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106162%_)))
                           '#t)
                      _%$obj106162%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106162%_)))))
               (_%h106167%_ _%h106165%_))
          (__hash-copy _%h106167%_))))
    (define __hash-copy
      (lambda (_%h106147%_)
        (let ((_%h106150%_ _%h106147%_)) (__HashTable-copy _%h106150%_))))
    (define hash-clear!
      (lambda (_%h106129%_)
        (let* ((_%h106135%_
                (let ((_%$obj106132%_ _%h106129%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106132%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106132%_)))
                           '#t)
                      _%$obj106132%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106132%_)))))
               (_%h106137%_ _%h106135%_))
          (__hash-clear! _%h106137%_))))
    (define __hash-clear!
      (lambda (_%h106117%_)
        (let ((_%h106120%_ _%h106117%_)) (&HashTable-clear! _%h106120%_))))
    (define hash-merge
      (lambda (_%h106098%_ . _%rest106099%_)
        (let* ((_%h106105%_
                (let ((_%$obj106102%_ _%h106098%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106102%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106102%_)))
                           '#t)
                      _%$obj106102%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106102%_)))))
               (_%h106107%_ _%h106105%_))
          (declare (not safe))
          (##apply __hash-merge _%h106107%_ _%rest106099%_))))
    (define __hash-merge
      (lambda (_%h106083%_ . _%rest106084%_)
        (let* ((_%h106087%_ _%h106083%_)
               (_%copy106096%_ (__HashTable-copy _%h106087%_)))
          (apply hash-merge! _%copy106096%_ _%rest106084%_)
          _%copy106096%_)))
    (define hash-merge!
      (lambda (_%h106064%_ . _%rest106065%_)
        (let* ((_%h106071%_
                (let ((_%$obj106068%_ _%h106064%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106068%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106068%_)))
                           '#t)
                      _%$obj106068%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106068%_)))))
               (_%h106073%_ _%h106071%_))
          (declare (not safe))
          (##apply __hash-merge! _%h106073%_ _%rest106065%_))))
    (define __hash-merge!
      (lambda (_%h106027%_ . _%rest106028%_)
        (let ((_%h106031%_ _%h106027%_))
          (let ((__tmp110383
                 (lambda (_%hr106040%_)
                   (let* ((_%hr106046%_
                           (let ((_%$obj106043%_ _%hr106040%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj106043%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj106043%_)))
                                      '#t)
                                 _%$obj106043%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj106043%_)))))
                          (_%hr106048%_ _%hr106046%_))
                     (&HashTable-for-each
                      _%hr106048%_
                      (lambda (_%k106061%_ _%v106062%_)
                        (if (__hash-key? _%h106031%_ _%k106061%_)
                            '#!void
                            (&HashTable-set!
                             _%h106031%_
                             _%k106061%_
                             _%v106062%_))))))))
            (declare (not safe))
            (##for-each __tmp110383 _%rest106028%_))
          _%h106031%_)))))
