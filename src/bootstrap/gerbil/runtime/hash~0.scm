(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1734131746)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp110199 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp110199
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args110179%_
        (apply make-instance UnboundKeyError::t _%$args110179%_)))
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
      (lambda (_%where110053%_ _%message110054%_ . _%irritants110055%_)
        (let ((__tmp110200
               (let ((__obj110193
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj110193
                    _%message110054%_
                    'where:
                    _%where110053%_
                    'irritants:
                    _%irritants110055%_))
                 __obj110193)))
          (declare (not safe))
          (raise __tmp110200))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp110201 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp110201
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
      (lambda (_%obj110051%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj110051%_))))
    (define try-HashTable
      (lambda (_%obj110049%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj110049%_))))
    (define HashTable?
      (lambda (_%obj110047%_)
        (let ((__tmp110202
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110047%_ __tmp110202))))
    (define is-HashTable?
      (lambda (_%obj110045%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj110045%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self110029%_)
        (let* ((_%self110034%_
                (let ((_%$obj110031%_ _%self110029%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110031%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110031%_)))
                           '#t)
                      _%$obj110031%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110031%_)))))
               (_%self110036%_ _%self110034%_))
          (&HashTable-clear! _%self110036%_))))
    (define &HashTable-clear!
      (lambda (_%self110014%_)
        (let ((_%self110016%_ _%self110014%_))
          (declare (not safe))
          (let ((_%obj110026%_
                 (##unchecked-structure-ref _%self110016%_ '1 '#f 'clear!))
                (_%f110027%_
                 (##unchecked-structure-ref _%self110016%_ '2 '#f 'clear!)))
            (_%f110027%_ _%obj110026%_)))))
    (define HashTable-copy
      (lambda (_%self109998%_)
        (let* ((_%self110003%_
                (let ((_%$obj110000%_ _%self109998%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110000%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110000%_)))
                           '#t)
                      _%$obj110000%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110000%_)))))
               (_%self110005%_ _%self110003%_))
          (__HashTable-copy _%self110005%_))))
    (define __HashTable-copy
      (lambda (_%self109985%_)
        (let* ((_%self109987%_ _%self109985%_)
               (_%$obj109995%_ (&HashTable-copy _%self109987%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj109995%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj109995%_)))
                   '#t)
              _%$obj109995%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj109995%_))))))
    (define &HashTable-copy
      (lambda (_%self109970%_)
        (let ((_%self109972%_ _%self109970%_))
          (declare (not safe))
          (let ((_%obj109982%_
                 (##unchecked-structure-ref _%self109972%_ '1 '#f 'copy))
                (_%f109983%_
                 (##unchecked-structure-ref _%self109972%_ '3 '#f 'copy)))
            (_%f109983%_ _%obj109982%_)))))
    (define HashTable-delete!
      (lambda (_%self109953%_ _%key109954%_)
        (let* ((_%self109959%_
                (let ((_%$obj109956%_ _%self109953%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109956%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109956%_)))
                           '#t)
                      _%$obj109956%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109956%_)))))
               (_%self109961%_ _%self109959%_))
          (&HashTable-delete! _%self109961%_ _%key109954%_))))
    (define &HashTable-delete!
      (lambda (_%self109937%_ _%key109938%_)
        (let ((_%self109940%_ _%self109937%_))
          (declare (not safe))
          (let ((_%obj109950%_
                 (##unchecked-structure-ref _%self109940%_ '1 '#f 'delete!))
                (_%f109951%_
                 (##unchecked-structure-ref _%self109940%_ '4 '#f 'delete!)))
            (_%f109951%_ _%obj109950%_ _%key109938%_)))))
    (define HashTable-for-each
      (lambda (_%self109910%_ _%proc109911%_)
        (let* ((_%self109916%_
                (let ((_%$obj109913%_ _%self109910%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109913%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109913%_)))
                           '#t)
                      _%$obj109913%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109913%_)))))
               (_%self109918%_ _%self109916%_))
          (if (procedure? _%proc109911%_)
              (let ((_%proc109927%_ _%proc109911%_))
                (&HashTable-for-each _%self109918%_ _%proc109927%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc109911%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self109886%_ _%proc109887%_)
        (let* ((_%self109889%_ _%self109886%_) (_%proc109896%_ _%proc109887%_))
          (declare (not safe))
          (let ((_%obj109907%_
                 (##unchecked-structure-ref _%self109889%_ '1 '#f 'for-each))
                (_%f109908%_
                 (##unchecked-structure-ref _%self109889%_ '5 '#f 'for-each)))
            (_%f109908%_ _%obj109907%_ _%proc109896%_)))))
    (define HashTable-length
      (lambda (_%self109870%_)
        (let* ((_%self109875%_
                (let ((_%$obj109872%_ _%self109870%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109872%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109872%_)))
                           '#t)
                      _%$obj109872%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109872%_)))))
               (_%self109877%_ _%self109875%_))
          (__HashTable-length _%self109877%_))))
    (define __HashTable-length
      (lambda (_%self109857%_)
        (let* ((_%self109859%_ _%self109857%_)
               (_%val109867%_ (&HashTable-length _%self109859%_)))
          _%val109867%_)))
    (define &HashTable-length
      (lambda (_%self109842%_)
        (let ((_%self109844%_ _%self109842%_))
          (declare (not safe))
          (let ((_%obj109854%_
                 (##unchecked-structure-ref _%self109844%_ '1 '#f 'length))
                (_%f109855%_
                 (##unchecked-structure-ref _%self109844%_ '6 '#f 'length)))
            (_%f109855%_ _%obj109854%_)))))
    (define HashTable-ref
      (lambda (_%self109824%_ _%key109825%_ _%default109826%_)
        (let* ((_%self109831%_
                (let ((_%$obj109828%_ _%self109824%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109828%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109828%_)))
                           '#t)
                      _%$obj109828%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109828%_)))))
               (_%self109833%_ _%self109831%_))
          (&HashTable-ref _%self109833%_ _%key109825%_ _%default109826%_))))
    (define &HashTable-ref
      (lambda (_%self109807%_ _%key109808%_ _%default109809%_)
        (let ((_%self109811%_ _%self109807%_))
          (declare (not safe))
          (let ((_%obj109821%_
                 (##unchecked-structure-ref _%self109811%_ '1 '#f 'ref))
                (_%f109822%_
                 (##unchecked-structure-ref _%self109811%_ '7 '#f 'ref)))
            (_%f109822%_ _%obj109821%_ _%key109808%_ _%default109809%_)))))
    (define HashTable-set!
      (lambda (_%self109789%_ _%key109790%_ _%value109791%_)
        (let* ((_%self109796%_
                (let ((_%$obj109793%_ _%self109789%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109793%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109793%_)))
                           '#t)
                      _%$obj109793%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109793%_)))))
               (_%self109798%_ _%self109796%_))
          (&HashTable-set! _%self109798%_ _%key109790%_ _%value109791%_))))
    (define &HashTable-set!
      (lambda (_%self109772%_ _%key109773%_ _%value109774%_)
        (let ((_%self109776%_ _%self109772%_))
          (declare (not safe))
          (let ((_%obj109786%_
                 (##unchecked-structure-ref _%self109776%_ '1 '#f 'set!))
                (_%f109787%_
                 (##unchecked-structure-ref _%self109776%_ '8 '#f 'set!)))
            (_%f109787%_ _%obj109786%_ _%key109773%_ _%value109774%_)))))
    (define HashTable-update!
      (lambda (_%self109743%_ _%key109744%_ _%proc109745%_ _%default109746%_)
        (let* ((_%self109751%_
                (let ((_%$obj109748%_ _%self109743%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109748%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109748%_)))
                           '#t)
                      _%$obj109748%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj109748%_)))))
               (_%self109753%_ _%self109751%_))
          (if (procedure? _%proc109745%_)
              (let ((_%proc109762%_ _%proc109745%_))
                (&HashTable-update!
                 _%self109753%_
                 _%key109744%_
                 _%proc109762%_
                 _%default109746%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc109745%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self109715%_ _%key109716%_ _%proc109717%_ _%default109718%_)
        (let* ((_%self109720%_ _%self109715%_) (_%proc109727%_ _%proc109717%_))
          (declare (not safe))
          (let ((_%obj109738%_
                 (##unchecked-structure-ref _%self109720%_ '1 '#f 'update!))
                (_%f109740%_
                 (##unchecked-structure-ref _%self109720%_ '9 '#f 'update!)))
            (_%f109740%_
             _%obj109738%_
             _%key109716%_
             _%proc109727%_
             _%default109718%_)))))
    (define Locker::t
      (let ((__tmp110203 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp110203
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
      (lambda (_%obj109713%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj109713%_))))
    (define try-Locker
      (lambda (_%obj109711%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj109711%_))))
    (define Locker?
      (lambda (_%obj109709%_)
        (let ((__tmp110204
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj109709%_ __tmp110204))))
    (define is-Locker?
      (lambda (_%obj109707%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj109707%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self109691%_)
        (let* ((_%self109696%_
                (let ((_%$obj109693%_ _%self109691%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109693%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109693%_)))
                           '#t)
                      _%$obj109693%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109693%_)))))
               (_%self109698%_ _%self109696%_))
          (&Locker-read-lock! _%self109698%_))))
    (define &Locker-read-lock!
      (lambda (_%self109676%_)
        (let ((_%self109678%_ _%self109676%_))
          (declare (not safe))
          (let ((_%obj109688%_
                 (##unchecked-structure-ref _%self109678%_ '1 '#f 'read-lock!))
                (_%f109689%_
                 (##unchecked-structure-ref
                  _%self109678%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f109689%_ _%obj109688%_)))))
    (define Locker-read-unlock!
      (lambda (_%self109660%_)
        (let* ((_%self109665%_
                (let ((_%$obj109662%_ _%self109660%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109662%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109662%_)))
                           '#t)
                      _%$obj109662%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109662%_)))))
               (_%self109667%_ _%self109665%_))
          (&Locker-read-unlock! _%self109667%_))))
    (define &Locker-read-unlock!
      (lambda (_%self109645%_)
        (let ((_%self109647%_ _%self109645%_))
          (declare (not safe))
          (let ((_%obj109657%_
                 (##unchecked-structure-ref
                  _%self109647%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f109658%_
                 (##unchecked-structure-ref
                  _%self109647%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f109658%_ _%obj109657%_)))))
    (define Locker-write-lock!
      (lambda (_%self109629%_)
        (let* ((_%self109634%_
                (let ((_%$obj109631%_ _%self109629%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109631%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109631%_)))
                           '#t)
                      _%$obj109631%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109631%_)))))
               (_%self109636%_ _%self109634%_))
          (&Locker-write-lock! _%self109636%_))))
    (define &Locker-write-lock!
      (lambda (_%self109614%_)
        (let ((_%self109616%_ _%self109614%_))
          (declare (not safe))
          (let ((_%obj109626%_
                 (##unchecked-structure-ref
                  _%self109616%_
                  '1
                  '#f
                  'write-lock!))
                (_%f109627%_
                 (##unchecked-structure-ref
                  _%self109616%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f109627%_ _%obj109626%_)))))
    (define Locker-write-unlock!
      (lambda (_%self109598%_)
        (let* ((_%self109603%_
                (let ((_%$obj109600%_ _%self109598%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj109600%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj109600%_)))
                           '#t)
                      _%$obj109600%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj109600%_)))))
               (_%self109605%_ _%self109603%_))
          (&Locker-write-unlock! _%self109605%_))))
    (define &Locker-write-unlock!
      (lambda (_%self109581%_)
        (let ((_%self109583%_ _%self109581%_))
          (declare (not safe))
          (let ((_%obj109593%_
                 (##unchecked-structure-ref
                  _%self109583%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f109595%_
                 (##unchecked-structure-ref
                  _%self109583%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f109595%_ _%obj109593%_)))))
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
      (lambda (_%table109574%_
               _%key109575%_
               _%update109576%_
               _%default109577%_)
        (let ((_%result109579%_
               (table-ref _%table109574%_ _%key109575%_ _%default109577%_)))
          (table-set!
           _%table109574%_
           _%key109575%_
           (_%update109576%_ _%default109577%_)))))
    (define gambit-table-for-each
      (lambda (_%table109571%_ _%proc109572%_)
        (table-for-each _%proc109572%_ _%table109571%_)))
    (define gambit-table-clear!
      (lambda (_%table109569%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table109569%_ '0 '5 '#f '#f))))
    (let ((__tmp110205 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110205 'ref table-ref))
    (let ((__tmp110206 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110206 'set! table-set!))
    (let ((__tmp110207 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110207 'update! gambit-table-update!))
    (let ((__tmp110208 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110208 'delete! table-set!))
    (let ((__tmp110209 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110209 'for-each gambit-table-for-each))
    (let ((__tmp110210 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110210 'length table-length))
    (let ((__tmp110211 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110211 'copy table-copy))
    (let ((__tmp110212 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp110212 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots109551%_ '(table count free hash test seed))
             (_%slot-vector109553%_ (list->vector (cons '#f _%slots109551%_)))
             (_%slot-table109560%_
              (let ((_%slot-table109555%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp110215
                       (lambda (_%slot109557%_ _%field109558%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109555%_
                            _%slot109557%_
                            _%field109558%_))
                         (let ((__tmp110216
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot109557%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109555%_
                            __tmp110216
                            _%field109558%_))))
                      (__tmp110213
                       (let ((__tmp110214
                              (let ()
                                (declare (not safe))
                                (##length _%slots109551%_))))
                         (declare (not safe))
                         (##iota __tmp110214 '1))))
                  (declare (not safe))
                  (##for-each __tmp110215 _%slots109551%_ __tmp110213))
                _%slot-table109555%_))
             (_%flags109562%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields109564%_ '#())
             (_%properties109566%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots109551%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp110217 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags109562%_
         __table::t
         _%fields109564%_
         __tmp110217
         _%slot-vector109553%_
         _%slot-table109560%_
         _%properties109566%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots109533%_ '(gcht immediate))
             (_%slot-vector109535%_ (list->vector (cons '#f _%slots109533%_)))
             (_%slot-table109542%_
              (let ((_%slot-table109537%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp110220
                       (lambda (_%slot109539%_ _%field109540%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109537%_
                            _%slot109539%_
                            _%field109540%_))
                         (let ((__tmp110221
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot109539%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table109537%_
                            __tmp110221
                            _%field109540%_))))
                      (__tmp110218
                       (let ((__tmp110219
                              (let ()
                                (declare (not safe))
                                (##length _%slots109533%_))))
                         (declare (not safe))
                         (##iota __tmp110219 '1))))
                  (declare (not safe))
                  (##for-each __tmp110220 _%slots109533%_ __tmp110218))
                _%slot-table109537%_))
             (_%flags109544%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields109546%_ '#())
             (_%properties109548%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots109533%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp110222 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags109544%_
         __gc-table::t
         _%fields109546%_
         __tmp110222
         _%slot-vector109535%_
         _%slot-table109542%_
         _%properties109548%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp110224 (list))
            (__tmp110223
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp110224
         '(table lock)
         __tmp110223
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args109530%_
        (apply make-instance locked-hash-table::t _%$args109530%_)))
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
      (let ((__tmp110226 (list))
            (__tmp110225
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp110226
         '(table key-check)
         __tmp110225
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args109527%_
        (apply make-instance checked-hash-table::t _%$args109527%_)))
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
      (let ((__tmp110228 (list hash-table::t))
            (__tmp110227 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp110228
         '()
         __tmp110227
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args109524%_
        (apply make-instance eq-hash-table::t _%$args109524%_)))
    (define eqv-hash-table::t
      (let ((__tmp110230 (list hash-table::t))
            (__tmp110229 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp110230
         '()
         __tmp110229
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args109521%_
        (apply make-instance eqv-hash-table::t _%$args109521%_)))
    (define symbol-hash-table::t
      (let ((__tmp110232 (list hash-table::t))
            (__tmp110231 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp110232
         '()
         __tmp110231
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args109518%_
        (apply make-instance symbol-hash-table::t _%$args109518%_)))
    (define string-hash-table::t
      (let ((__tmp110234 (list hash-table::t))
            (__tmp110233 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp110234
         '()
         __tmp110233
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args109515%_
        (apply make-instance string-hash-table::t _%$args109515%_)))
    (define immediate-hash-table::t
      (let ((__tmp110236 (list hash-table::t))
            (__tmp110235 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp110236
         '()
         __tmp110235
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args109512%_
        (apply make-instance immediate-hash-table::t _%$args109512%_)))
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
    (define _%locked-hash-table::ref105512%_
      (lambda (_%self105511109486%_ _%key109488%_ _%default109489%_)
        (let* ((_%self109491%_ _%self105511109486%_)
               (_%self109494%_ _%self109491%_))
          (let ((_%h109504%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109494%_ '1 '#f '#f)))
                (_%l109506%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109494%_ '2 '#f '#f))))
            (let ((__tmp110239 (lambda () (&Locker-read-lock! _%l109506%_)))
                  (__tmp110238
                   (lambda ()
                     (&HashTable-ref
                      _%h109504%_
                      _%key109488%_
                      _%default109489%_)))
                  (__tmp110237 (lambda () (&Locker-read-unlock! _%l109506%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110239 __tmp110238 __tmp110237))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref105512%_
       '#f))
    (define _%locked-hash-table::set!105515%_
      (lambda (_%self105514109337%_ _%key109339%_ _%value109340%_)
        (let* ((_%self109342%_ _%self105514109337%_)
               (_%self109345%_ _%self109342%_))
          (let ((_%h109355%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109345%_ '1 '#f '#f)))
                (_%l109357%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109345%_ '2 '#f '#f))))
            (let ((__tmp110242 (lambda () (&Locker-write-lock! _%l109357%_)))
                  (__tmp110241
                   (lambda ()
                     (&HashTable-set!
                      _%h109355%_
                      _%key109339%_
                      _%value109340%_)))
                  (__tmp110240
                   (lambda () (&Locker-write-unlock! _%l109357%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110242 __tmp110241 __tmp110240))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!105515%_
       '#f))
    (define _%locked-hash-table::update!105518%_
      (lambda (_%self105517109187%_
               _%key109189%_
               _%update109190%_
               _%default109191%_)
        (let* ((_%self109193%_ _%self105517109187%_)
               (_%self109196%_ _%self109193%_))
          (let ((_%h109206%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109196%_ '1 '#f '#f)))
                (_%l109208%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109196%_ '2 '#f '#f))))
            (let ((__tmp110245 (lambda () (&Locker-write-lock! _%l109208%_)))
                  (__tmp110244
                   (lambda ()
                     (&HashTable-update!
                      _%h109206%_
                      _%key109189%_
                      _%update109190%_
                      _%default109191%_)))
                  (__tmp110243
                   (lambda () (&Locker-write-unlock! _%l109208%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110245 __tmp110244 __tmp110243))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!105518%_
       '#f))
    (define _%locked-hash-table::delete!105521%_
      (lambda (_%self105520109039%_ _%key109041%_)
        (let* ((_%self109043%_ _%self105520109039%_)
               (_%self109046%_ _%self109043%_))
          (let ((_%h109056%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109046%_ '1 '#f '#f)))
                (_%l109058%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109046%_ '2 '#f '#f))))
            (let ((__tmp110248 (lambda () (&Locker-write-lock! _%l109058%_)))
                  (__tmp110247
                   (lambda () (&HashTable-delete! _%h109056%_ _%key109041%_)))
                  (__tmp110246
                   (lambda () (&Locker-write-unlock! _%l109058%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110248 __tmp110247 __tmp110246))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!105521%_
       '#f))
    (define _%locked-hash-table::for-each105524%_
      (lambda (_%self105523108891%_ _%proc108893%_)
        (let* ((_%self108895%_ _%self105523108891%_)
               (_%self108898%_ _%self108895%_))
          (let ((_%h108908%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108898%_ '1 '#f '#f)))
                (_%l108910%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108898%_ '2 '#f '#f))))
            (let ((__tmp110251 (lambda () (&Locker-read-lock! _%l108910%_)))
                  (__tmp110250
                   (lambda ()
                     (&HashTable-for-each _%h108908%_ _%proc108893%_)))
                  (__tmp110249 (lambda () (&Locker-read-unlock! _%l108910%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110251 __tmp110250 __tmp110249))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each105524%_
       '#f))
    (define _%locked-hash-table::length105527%_
      (lambda (_%self105526108744%_)
        (let* ((_%self108747%_ _%self105526108744%_)
               (_%self108750%_ _%self108747%_))
          (let ((_%h108760%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108750%_ '1 '#f '#f)))
                (_%l108762%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108750%_ '2 '#f '#f))))
            (let ((__tmp110254 (lambda () (&Locker-read-lock! _%l108762%_)))
                  (__tmp110253 (lambda () (&HashTable-length _%h108760%_)))
                  (__tmp110252 (lambda () (&Locker-read-unlock! _%l108762%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110254 __tmp110253 __tmp110252))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length105527%_
       '#f))
    (define _%locked-hash-table::copy105530%_
      (lambda (_%self105529108597%_)
        (let* ((_%self108600%_ _%self105529108597%_)
               (_%self108603%_ _%self108600%_))
          (let ((_%h108613%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108603%_ '1 '#f '#f)))
                (_%l108615%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108603%_ '2 '#f '#f))))
            (let ((__tmp110257 (lambda () (&Locker-read-lock! _%l108615%_)))
                  (__tmp110256 (lambda () (&HashTable-copy _%h108613%_)))
                  (__tmp110255 (lambda () (&Locker-read-unlock! _%l108615%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110257 __tmp110256 __tmp110255))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy105530%_
       '#f))
    (define _%locked-hash-table::clear!105533%_
      (lambda (_%self105532108450%_)
        (let* ((_%self108453%_ _%self105532108450%_)
               (_%self108456%_ _%self108453%_))
          (let ((_%h108466%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108456%_ '1 '#f '#f)))
                (_%l108468%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108456%_ '2 '#f '#f))))
            (let ((__tmp110260 (lambda () (&Locker-write-lock! _%l108468%_)))
                  (__tmp110259 (lambda () (&HashTable-clear! _%h108466%_)))
                  (__tmp110258
                   (lambda () (&Locker-write-unlock! _%l108468%_))))
              (declare (not safe))
              (##dynamic-wind __tmp110260 __tmp110259 __tmp110258))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!105533%_
       '#f))
    (let ((__tmp110261 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110261 'read-lock! mutex-lock!))
    (let ((__tmp110262 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110262 'read-unlock! mutex-unlock!))
    (let ((__tmp110263 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110263 'write-lock! mutex-lock!))
    (let ((__tmp110264 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp110264 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref105747%_
      (lambda (_%self105746108300%_ _%key108302%_ _%default108303%_)
        (let* ((_%self108305%_ _%self105746108300%_)
               (_%self108307%_ _%self108305%_))
          (declare (not safe))
          (let ((_%h108318%_
                 (##unchecked-structure-ref _%self108307%_ '1 '#f '#f))
                (_%key?108320%_
                 (##unchecked-structure-ref _%self108307%_ '2 '#f '#f)))
            (if ((lambda (_%key?108323%_ _%key108324%_ _%default108325%_)
                   (_%key?108323%_ _%key108324%_))
                 _%key?108320%_
                 _%key108302%_
                 _%default108303%_)
                (&HashTable-ref _%h108318%_ _%key108302%_ _%default108303%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key108302%_ (cons _%default108303%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref105747%_
       '#f))
    (define _%checked-hash-table::set!105750%_
      (lambda (_%self105749108150%_ _%key108152%_ _%value108153%_)
        (let* ((_%self108155%_ _%self105749108150%_)
               (_%self108157%_ _%self108155%_))
          (declare (not safe))
          (let ((_%h108168%_
                 (##unchecked-structure-ref _%self108157%_ '1 '#f '#f))
                (_%key?108170%_
                 (##unchecked-structure-ref _%self108157%_ '2 '#f '#f)))
            (if ((lambda (_%key?108173%_ _%key108174%_ _%value108175%_)
                   (_%key?108173%_ _%key108174%_))
                 _%key?108170%_
                 _%key108152%_
                 _%value108153%_)
                (&HashTable-set! _%h108168%_ _%key108152%_ _%value108153%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key108152%_ (cons _%value108153%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!105750%_
       '#f))
    (define _%checked-hash-table::update!105753%_
      (lambda (_%self105752107998%_
               _%key108000%_
               _%update108001%_
               _%default108002%_)
        (let* ((_%self108004%_ _%self105752107998%_)
               (_%self108006%_ _%self108004%_))
          (declare (not safe))
          (let ((_%h108017%_
                 (##unchecked-structure-ref _%self108006%_ '1 '#f '#f))
                (_%key?108019%_
                 (##unchecked-structure-ref _%self108006%_ '2 '#f '#f)))
            (if ((lambda (_%key?108022%_
                          _%key108023%_
                          _%update108024%_
                          _%default108025%_)
                   (_%key?108022%_ _%key108023%_))
                 _%key?108019%_
                 _%key108000%_
                 _%update108001%_
                 _%default108002%_)
                (&HashTable-update!
                 _%h108017%_
                 _%key108000%_
                 _%update108001%_
                 _%default108002%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key108000%_
                         (cons _%update108001%_ (cons _%default108002%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!105753%_
       '#f))
    (define _%checked-hash-table::delete!105756%_
      (lambda (_%self105755107850%_ _%key107852%_)
        (let* ((_%self107854%_ _%self105755107850%_)
               (_%self107856%_ _%self107854%_))
          (declare (not safe))
          (let ((_%h107867%_
                 (##unchecked-structure-ref _%self107856%_ '1 '#f '#f))
                (_%key?107869%_
                 (##unchecked-structure-ref _%self107856%_ '2 '#f '#f)))
            (if ((lambda (_%key?107872%_ _%key107873%_)
                   (_%key?107872%_ _%key107873%_))
                 _%key?107869%_
                 _%key107852%_)
                (&HashTable-delete! _%h107867%_ _%key107852%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key107852%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!105756%_
       '#f))
    (define _%checked-hash-table::for-each105759%_
      (lambda (_%self105758107702%_ _%proc107704%_)
        (let* ((_%self107706%_ _%self105758107702%_)
               (_%self107708%_ _%self107706%_))
          (declare (not safe))
          (let ((_%h107719%_
                 (##unchecked-structure-ref _%self107708%_ '1 '#f '#f))
                (_%key?107721%_
                 (##unchecked-structure-ref _%self107708%_ '2 '#f '#f)))
            (if ((lambda (_%key?107724%_ _%proc107725%_) '#t)
                 _%key?107721%_
                 _%proc107704%_)
                (&HashTable-for-each _%h107719%_ _%proc107704%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc107704%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each105759%_
       '#f))
    (define _%checked-hash-table::length105762%_
      (lambda (_%self105761107558%_)
        (let* ((_%self107561%_ _%self105761107558%_)
               (_%self107563%_ _%self107561%_))
          (declare (not safe))
          (let ((_%h107574%_
                 (##unchecked-structure-ref _%self107563%_ '1 '#f '#f))
                (_%key?107576%_
                 (##unchecked-structure-ref _%self107563%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h107574%_)
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
       _%checked-hash-table::length105762%_
       '#f))
    (define _%checked-hash-table::copy105765%_
      (lambda (_%self105764107414%_)
        (let* ((_%self107417%_ _%self105764107414%_)
               (_%self107419%_ _%self107417%_))
          (declare (not safe))
          (let ((_%h107430%_
                 (##unchecked-structure-ref _%self107419%_ '1 '#f '#f))
                (_%key?107432%_
                 (##unchecked-structure-ref _%self107419%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h107430%_)
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
       _%checked-hash-table::copy105765%_
       '#f))
    (define _%checked-hash-table::clear!105768%_
      (lambda (_%self105767107270%_)
        (let* ((_%self107273%_ _%self105767107270%_)
               (_%self107275%_ _%self107273%_))
          (declare (not safe))
          (let ((_%h107286%_
                 (##unchecked-structure-ref _%self107275%_ '1 '#f '#f))
                (_%key?107288%_
                 (##unchecked-structure-ref _%self107275%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h107286%_)
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
       _%checked-hash-table::clear!105768%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table107140%_
               _%count107141%_
               _%free107142%_
               _%hash107143%_
               _%test107144%_
               _%seed107145%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table107140%_
           _%count107141%_
           _%free107142%_
           _%hash107143%_
           _%test107144%_
           _%seed107145%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords106901%_
               _%size-hint106891106902%_
               _%seed106892106904%_
               _%test106893106906%_
               _%hash106894106908%_
               _%lock106895106910%_
               _%check106896106912%_
               _%weak-keys106897106914%_
               _%weak-values106898106916%_)
        (let* ((_%size-hint106919%_
                (if (eq? _%size-hint106891106902%_ absent-value)
                    '#f
                    _%size-hint106891106902%_))
               (_%seed106921%_
                (if (eq? _%seed106892106904%_ absent-value)
                    '#f
                    _%seed106892106904%_))
               (_%test106923%_
                (if (eq? _%test106893106906%_ absent-value)
                    equal?
                    _%test106893106906%_))
               (_%hash106925%_
                (if (eq? _%hash106894106908%_ absent-value)
                    '#f
                    _%hash106894106908%_))
               (_%lock106927%_
                (if (eq? _%lock106895106910%_ absent-value)
                    '#f
                    _%lock106895106910%_))
               (_%check106929%_
                (if (eq? _%check106896106912%_ absent-value)
                    '#f
                    _%check106896106912%_))
               (_%weak-keys106931%_
                (if (eq? _%weak-keys106897106914%_ absent-value)
                    '#f
                    _%weak-keys106897106914%_))
               (_%weak-values106933%_
                (if (eq? _%weak-values106898106916%_ absent-value)
                    '#f
                    _%weak-values106898106916%_)))
          (letrec ((_%table-seed106936%_
                    (lambda ()
                      (if (fixnum? _%seed106921%_)
                          _%seed106921%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock106937%_
                    (lambda (_%ht107114%_)
                      (let ((_%ht107117%_ _%ht107114%_))
                        (_%__wrap-lock106938%_ _%ht107117%_))))
                   (_%__wrap-lock106938%_
                    (lambda (_%ht107096%_)
                      (let ((_%ht107099%_ _%ht107096%_))
                        (if _%lock106927%_
                            (let ((_%$obj107111%_
                                   (let ((__tmp110265
                                          (let ((_%$obj107108%_
                                                 _%lock106927%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj107108%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj107108%_)))
                                                     '#t)
                                                _%$obj107108%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj107108%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht107099%_
                                      __tmp110265))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107111%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107111%_)))
                                       '#t)
                                  _%$obj107111%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107111%_))))
                            _%ht107099%_))))
                   (_%wrap-checked106939%_
                    (lambda (_%ht107083%_ _%implicit107084%_)
                      (let ((_%ht107087%_ _%ht107083%_))
                        (_%__wrap-checked106940%_
                         _%ht107087%_
                         _%implicit107084%_))))
                   (_%__wrap-checked106940%_
                    (lambda (_%ht107056%_ _%implicit107057%_)
                      (let ((_%ht107060%_ _%ht107056%_))
                        (if _%check106929%_
                            (let ((_%$obj107080%_
                                   (let ((__tmp110266
                                          (if (procedure? _%check106929%_)
                                              _%check106929%_
                                              _%implicit107057%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht107060%_
                                      __tmp110266))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107080%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107080%_)))
                                       '#t)
                                  _%$obj107080%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107080%_))))
                            _%ht107060%_))))
                   (_%make106941%_
                    (lambda (_%kons107040%_
                             _%key?107041%_
                             _%hash107042%_
                             _%test107043%_)
                      (let* ((_%size107046%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint106919%_)))
                             (_%table107048%_
                              (let ((__tmp110267 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size107046%_ __tmp110267)))
                             (_%ht107053%_
                              (let ((_%$obj107050%_
                                     (_%kons107040%_
                                      _%table107048%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size107046%_ '2))
                                      _%hash107042%_
                                      _%test107043%_
                                      (_%table-seed106936%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107050%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107050%_)))
                                         '#t)
                                    _%$obj107050%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107050%_))))))
                        (_%__wrap-checked106940%_
                         (_%__wrap-lock106938%_ _%ht107053%_)
                         _%key?107041%_))))
                   (_%make-gc-hash-table106942%_
                    (lambda ()
                      (let ((_%ht107038%_
                             (let ((_%$obj107035%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint106919%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj107035%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj107035%_)))
                                        '#t)
                                   _%$obj107035%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj107035%_))))))
                        (_%__wrap-checked106940%_
                         (_%__wrap-lock106938%_ _%ht107038%_)
                         true))))
                   (_%make-gambit-table106943%_
                    (lambda ()
                      (let* ((_%size107012%_
                              (let ((_%$e107009%_ _%size-hint106919%_))
                                (if _%$e107009%_
                                    _%$e107009%_
                                    (macro-absent-obj))))
                             (_%test107017%_
                              (let ((_%$e107014%_ _%test106923%_))
                                (if _%$e107014%_ _%$e107014%_ equal?)))
                             (_%hash107025%_
                              (let ((_%$e107019%_ _%hash106925%_))
                                (if _%$e107019%_
                                    _%$e107019%_
                                    (if (eq? _%test107017%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test107017%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht107030%_
                              (let ((_%$obj107027%_
                                     (make-table
                                      'size:
                                      _%size107012%_
                                      'test:
                                      _%test107017%_
                                      'hash:
                                      _%hash107025%_
                                      'weak-keys:
                                      _%weak-keys106931%_
                                      'weak-values:
                                      _%weak-values106933%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107027%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107027%_)))
                                         '#t)
                                    _%$obj107027%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107027%_))))))
                        (_%__wrap-checked106940%_
                         (_%__wrap-lock106938%_ _%ht107030%_)
                         true)))))
            (if (or _%weak-keys106931%_ _%weak-values106933%_)
                (_%make-gambit-table106943%_)
                (if (and (or (eq? _%test106923%_ eq?)
                             (eq? _%test106923%_ ##eq?))
                         (or (not _%hash106925%_)
                             (eq? _%hash106925%_ eq?-hash)
                             (eq? _%hash106925%_ eq-hash))
                         (not _%seed106921%_))
                    (_%make-gc-hash-table106942%_)
                    (if (and (or (eq? _%test106923%_ eq?)
                                 (eq? _%test106923%_ ##eq?))
                             (or (not _%hash106925%_)
                                 (eq? _%hash106925%_ eq?-hash)
                                 (eq? _%hash106925%_ eq-hash)))
                        (_%make106941%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test106923%_ eqv?)
                                     (eq? _%test106923%_ ##eqv?))
                                 (or (not _%hash106925%_)
                                     (eq? _%hash106925%_ eqv?-hash)
                                     (eq? _%hash106925%_ eqv-hash)))
                            (_%make106941%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test106923%_ eq?)
                                         (eq? _%test106923%_ ##eq?))
                                     (or (eq? _%hash106925%_ symbolic-hash)
                                         (eq? _%hash106925%_ ##symbol-hash)))
                                (_%make106941%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test106923%_ eq?)
                                             (eq? _%test106923%_ ##eq?))
                                         (eq? _%hash106925%_ immediate-hash))
                                    (_%make106941%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test106923%_ equal?)
                                                 (eq? _%test106923%_ ##equal?)
                                                 (eq? _%test106923%_ string=?)
                                                 (eq? _%test106923%_
                                                      ##string=?))
                                             (or (eq? _%hash106925%_
                                                      string-hash)
                                                 (eq? _%hash106925%_
                                                      ##string=?-hash)))
                                        (_%make106941%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test106923%_ equal?)
                                                 (not _%hash106925%_))
                                            (_%make106941%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test106923%_)
                                                (if (procedure? _%hash106925%_)
                                                    (_%make106941%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash106925%_
                                                     _%test106923%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash106925%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test106923%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords107130%_ . _%args107131%_)
        (apply make-hash-table__%
               _%@@keywords107130%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107130%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107130%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107130%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107130%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords107130%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107130%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107130%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords107130%_
                  'weak-values:
                  absent-value))
               _%args107131%_)))
    (define make-hash-table
      (lambda _%args106899107137%_
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
               _%args106899107137%_)))
    (define make-hash-table-eq
      (lambda _%args106888%_
        (apply make-hash-table 'test: eq? _%args106888%_)))
    (define make-hash-table-eqv
      (lambda _%args106886%_
        (apply make-hash-table 'test: eqv? _%args106886%_)))
    (define make-hash-table-symbolic
      (lambda _%args106884%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args106884%_)))
    (define make-hash-table-string
      (lambda _%args106882%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args106882%_)))
    (define make-hash-table-immediate
      (lambda _%args106880%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args106880%_)))
    (define list->hash-table
      (lambda (_%lst106877%_ . _%args106878%_)
        (list->hash-table!
         _%lst106877%_
         (apply make-hash-table
                'size:
                (length _%lst106877%_)
                _%args106878%_))))
    (define list->hash-table-eq
      (lambda (_%lst106874%_ . _%args106875%_)
        (list->hash-table!
         _%lst106874%_
         (apply make-hash-table-eq
                'size:
                (length _%lst106874%_)
                _%args106875%_))))
    (define list->hash-table-eqv
      (lambda (_%lst106871%_ . _%args106872%_)
        (list->hash-table!
         _%lst106871%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst106871%_)
                _%args106872%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst106868%_ . _%args106869%_)
        (list->hash-table!
         _%lst106868%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst106868%_)
                _%args106869%_))))
    (define list->hash-table-string
      (lambda (_%lst106865%_ . _%args106866%_)
        (list->hash-table!
         _%lst106865%_
         (apply make-hash-table-string
                'size:
                (length _%lst106865%_)
                _%args106866%_))))
    (define list->hash-table-immediate
      (lambda (_%lst106862%_ . _%args106863%_)
        (list->hash-table!
         _%lst106862%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst106862%_)
                _%args106863%_))))
    (define list->hash-table!
      (lambda (_%lst106829%_ _%h106830%_)
        (for-each
         (lambda (_%el106832%_)
           (let* ((_%el106833106840%_ _%el106832%_)
                  (_%E106835106844%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el106833106840%_
                              '([k . v])))
                     '#!void))
                  (_%K106836106850%_
                   (lambda (_%v106847%_ _%k106848%_)
                     (&HashTable-set! _%h106830%_ _%k106848%_ _%v106847%_))))
             (if (pair? _%el106833106840%_)
                 (let ((_%hd106837106853%_
                        (let ()
                          (declare (not safe))
                          (##car _%el106833106840%_)))
                       (_%tl106838106855%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el106833106840%_))))
                   (let* ((_%k106858%_ _%hd106837106853%_)
                          (_%v106860%_ _%tl106838106855%_))
                     (_%K106836106850%_ _%v106860%_ _%k106858%_)))
                 (_%E106835106844%_))))
         _%lst106829%_)
        _%h106830%_))
    (define plist->hash-table
      (lambda (_%lst106826%_ . _%args106827%_)
        (plist->hash-table!
         _%lst106826%_
         (apply make-hash-table
                'size:
                (length _%lst106826%_)
                _%args106827%_))))
    (define plist->hash-table-eq
      (lambda (_%lst106823%_ . _%args106824%_)
        (plist->hash-table!
         _%lst106823%_
         (apply make-hash-table-eq
                'size:
                (length _%lst106823%_)
                _%args106824%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst106820%_ . _%args106821%_)
        (plist->hash-table!
         _%lst106820%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst106820%_)
                _%args106821%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst106817%_ . _%args106818%_)
        (plist->hash-table!
         _%lst106817%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst106817%_)
                _%args106818%_))))
    (define plist->hash-table-string
      (lambda (_%lst106814%_ . _%args106815%_)
        (plist->hash-table!
         _%lst106814%_
         (apply make-hash-table-string
                'size:
                (length _%lst106814%_)
                _%args106815%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst106811%_ . _%args106812%_)
        (plist->hash-table!
         _%lst106811%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst106811%_)
                _%args106812%_))))
    (define plist->hash-table!
      (lambda (_%lst106751%_ _%h106752%_)
        (let _%loop106754%_ ((_%rest106756%_ _%lst106751%_))
          (let* ((_%rest106757106769%_ _%rest106756%_)
                 (_%else106760106777%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst106751%_)))))
            (let ((_%K106763106792%_
                   (lambda (_%rest106788%_ _%val106789%_ _%key106790%_)
                     (&HashTable-set! _%h106752%_ _%key106790%_ _%val106789%_)
                     (_%loop106754%_ _%rest106788%_)))
                  (_%K106762106782%_ (lambda () _%h106752%_)))
              (let ((_%try-match106759106785%_
                     (lambda ()
                       (if (null? _%rest106757106769%_)
                           (_%K106762106782%_)
                           (_%else106760106777%_)))))
                (if (pair? _%rest106757106769%_)
                    (let ((_%tl106765106797%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest106757106769%_)))
                          (_%hd106764106795%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest106757106769%_))))
                      (if (pair? _%tl106765106797%_)
                          (let ((_%tl106767106804%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl106765106797%_)))
                                (_%hd106766106802%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl106765106797%_))))
                            (let ((_%key106800%_ _%hd106764106795%_)
                                  (_%val106807%_ _%hd106766106802%_)
                                  (_%rest106809%_ _%tl106767106804%_))
                              (_%K106763106792%_
                               _%rest106809%_
                               _%val106807%_
                               _%key106800%_)))
                          (_%else106760106777%_)))
                    (_%try-match106759106785%_))))))))
    (define hash-length
      (lambda (_%h106733%_)
        (let* ((_%h106739%_
                (let ((_%$obj106736%_ _%h106733%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106736%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106736%_)))
                           '#t)
                      _%$obj106736%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106736%_)))))
               (_%h106741%_ _%h106739%_))
          (__hash-length _%h106741%_))))
    (define __hash-length
      (lambda (_%h106721%_)
        (let ((_%h106724%_ _%h106721%_)) (__HashTable-length _%h106724%_))))
    (define hash-ref__%
      (lambda (_%h106689%_ _%key106690%_ _%default106691%_)
        (let* ((_%h106697%_
                (let ((_%$obj106694%_ _%h106689%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106694%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106694%_)))
                           '#t)
                      _%$obj106694%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106694%_)))))
               (_%h106699%_ _%h106697%_))
          (__hash-ref__% _%h106699%_ _%key106690%_ _%default106691%_))))
    (define hash-ref__0
      (lambda (_%h106712%_ _%key106713%_)
        (let ((_%default106715%_ (macro-absent-obj)))
          (hash-ref__% _%h106712%_ _%key106713%_ _%default106715%_))))
    (define hash-ref
      (lambda _g110269_
        (let ((_g110268_ (let () (declare (not safe)) (##length _g110269_))))
          (cond ((let () (declare (not safe)) (##fx= _g110268_ 2))
                 (apply hash-ref__0 _g110269_))
                ((let () (declare (not safe)) (##fx= _g110268_ 3))
                 (apply hash-ref__% _g110269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g110269_))))))
    (define __hash-ref__%
      (lambda (_%h106660%_ _%key106661%_ _%default106662%_)
        (let* ((_%h106665%_ _%h106660%_)
               (_%result106674%_
                (&HashTable-ref _%h106665%_ _%key106661%_ _%default106662%_)))
          (if (eq? _%result106674%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h106665%_
               'key:
               _%key106661%_)
              _%result106674%_))))
    (define __hash-ref__0
      (lambda (_%h106679%_ _%key106680%_)
        (let ((_%default106682%_ (macro-absent-obj)))
          (__hash-ref__% _%h106679%_ _%key106680%_ _%default106682%_))))
    (define __hash-ref
      (lambda _g110271_
        (let ((_g110270_ (let () (declare (not safe)) (##length _g110271_))))
          (cond ((let () (declare (not safe)) (##fx= _g110270_ 2))
                 (apply __hash-ref__0 _g110271_))
                ((let () (declare (not safe)) (##fx= _g110270_ 3))
                 (apply __hash-ref__% _g110271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g110271_))))))
    (define hash-get
      (lambda (_%h106640%_ _%key106641%_)
        (let* ((_%h106647%_
                (let ((_%$obj106644%_ _%h106640%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106644%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106644%_)))
                           '#t)
                      _%$obj106644%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106644%_)))))
               (_%h106649%_ _%h106647%_))
          (__hash-get _%h106649%_ _%key106641%_))))
    (define __hash-get
      (lambda (_%h106627%_ _%key106628%_)
        (let ((_%h106631%_ _%h106627%_))
          (&HashTable-ref _%h106631%_ _%key106628%_ '#f))))
    (define hash-put!
      (lambda (_%h106607%_ _%key106608%_ _%value106609%_)
        (let* ((_%h106615%_
                (let ((_%$obj106612%_ _%h106607%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106612%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106612%_)))
                           '#t)
                      _%$obj106612%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106612%_)))))
               (_%h106617%_ _%h106615%_))
          (__hash-put! _%h106617%_ _%key106608%_ _%value106609%_))))
    (define __hash-put!
      (lambda (_%h106593%_ _%key106594%_ _%value106595%_)
        (let ((_%h106598%_ _%h106593%_))
          (&HashTable-set! _%h106598%_ _%key106594%_ _%value106595%_))))
    (define hash-update!__%
      (lambda (_%h106558%_ _%key106559%_ _%update106560%_ _%default106561%_)
        (let* ((_%h106567%_
                (let ((_%$obj106564%_ _%h106558%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106564%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106564%_)))
                           '#t)
                      _%$obj106564%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106564%_)))))
               (_%h106569%_ _%h106567%_))
          (__hash-update!__%
           _%h106569%_
           _%key106559%_
           _%update106560%_
           _%default106561%_))))
    (define hash-update!__0
      (lambda (_%h106582%_ _%key106583%_ _%update106584%_)
        (let ((_%default106586%_ '#!void))
          (hash-update!__%
           _%h106582%_
           _%key106583%_
           _%update106584%_
           _%default106586%_))))
    (define hash-update!
      (lambda _g110273_
        (let ((_g110272_ (let () (declare (not safe)) (##length _g110273_))))
          (cond ((let () (declare (not safe)) (##fx= _g110272_ 3))
                 (apply hash-update!__0 _g110273_))
                ((let () (declare (not safe)) (##fx= _g110272_ 4))
                 (apply hash-update!__% _g110273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g110273_))))))
    (define __hash-update!__%
      (lambda (_%h106528%_ _%key106529%_ _%update106530%_ _%default106531%_)
        (let ((_%h106534%_ _%h106528%_))
          (HashTable-update!
           _%h106534%_
           _%key106529%_
           _%update106530%_
           _%default106531%_))))
    (define __hash-update!__0
      (lambda (_%h106546%_ _%key106547%_ _%update106548%_)
        (let ((_%default106550%_ '#!void))
          (__hash-update!__%
           _%h106546%_
           _%key106547%_
           _%update106548%_
           _%default106550%_))))
    (define __hash-update!
      (lambda _g110275_
        (let ((_g110274_ (let () (declare (not safe)) (##length _g110275_))))
          (cond ((let () (declare (not safe)) (##fx= _g110274_ 3))
                 (apply __hash-update!__0 _g110275_))
                ((let () (declare (not safe)) (##fx= _g110274_ 4))
                 (apply __hash-update!__% _g110275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g110275_))))))
    (define hash-remove!
      (lambda (_%h106508%_ _%key106509%_)
        (let* ((_%h106515%_
                (let ((_%$obj106512%_ _%h106508%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106512%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106512%_)))
                           '#t)
                      _%$obj106512%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106512%_)))))
               (_%h106517%_ _%h106515%_))
          (__hash-remove! _%h106517%_ _%key106509%_))))
    (define __hash-remove!
      (lambda (_%h106495%_ _%key106496%_)
        (let ((_%h106499%_ _%h106495%_))
          (&HashTable-delete! _%h106499%_ _%key106496%_))))
    (define hash-key?
      (lambda (_%h106476%_ _%k106477%_)
        (let* ((_%h106483%_
                (let ((_%$obj106480%_ _%h106476%_))
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
          (__hash-key? _%h106485%_ _%k106477%_))))
    (define __hash-key?
      (lambda (_%h106463%_ _%k106464%_)
        (let ((_%h106467%_ _%h106463%_))
          (not (eq? (&HashTable-ref _%h106467%_ _%k106464%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h106445%_)
        (let* ((_%h106451%_
                (let ((_%$obj106448%_ _%h106445%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106448%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106448%_)))
                           '#t)
                      _%$obj106448%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106448%_)))))
               (_%h106453%_ _%h106451%_))
          (__hash->list _%h106453%_))))
    (define __hash->list
      (lambda (_%h106428%_)
        (let* ((_%h106431%_ _%h106428%_) (_%lst106440%_ '()))
          (&HashTable-for-each
           _%h106431%_
           (lambda (_%k106442%_ _%v106443%_)
             (set! _%lst106440%_
                   (cons (cons _%k106442%_ _%v106443%_) _%lst106440%_))))
          _%lst106440%_)))
    (define hash->plist
      (lambda (_%h106410%_)
        (let* ((_%h106416%_
                (let ((_%$obj106413%_ _%h106410%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106413%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106413%_)))
                           '#t)
                      _%$obj106413%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106413%_)))))
               (_%h106418%_ _%h106416%_))
          (__hash->plist _%h106418%_))))
    (define __hash->plist
      (lambda (_%h106393%_)
        (let* ((_%h106396%_ _%h106393%_) (_%lst106405%_ '()))
          (&HashTable-for-each
           _%h106396%_
           (lambda (_%k106407%_ _%v106408%_)
             (set! _%lst106405%_
                   (cons _%k106407%_ (cons _%v106408%_ _%lst106405%_)))))
          _%lst106405%_)))
    (define hash-for-each
      (lambda (_%proc106364%_ _%h106365%_)
        (if (procedure? _%proc106364%_)
            (let* ((_%proc106369%_ _%proc106364%_)
                   (_%h106381%_
                    (let ((_%$obj106378%_ _%h106365%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106378%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106378%_)))
                               '#t)
                          _%$obj106378%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106378%_)))))
                   (_%h106383%_ _%h106381%_))
              (__hash-for-each _%proc106369%_ _%h106383%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@567.22-567.26"
               'contract:
               'procedure?
               'value:
               _%proc106364%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc106343%_ _%h106344%_)
        (let* ((_%proc106347%_ _%proc106343%_) (_%h106355%_ _%h106344%_))
          (&HashTable-for-each _%h106355%_ _%proc106347%_))))
    (define hash-map
      (lambda (_%proc106314%_ _%h106315%_)
        (if (procedure? _%proc106314%_)
            (let* ((_%proc106319%_ _%proc106314%_)
                   (_%h106331%_
                    (let ((_%$obj106328%_ _%h106315%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106328%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106328%_)))
                               '#t)
                          _%$obj106328%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106328%_)))))
                   (_%h106333%_ _%h106331%_))
              (__hash-map _%proc106319%_ _%h106333%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@570.17-570.21"
               'contract:
               'procedure?
               'value:
               _%proc106314%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc106288%_ _%h106289%_)
        (let* ((_%proc106292%_ _%proc106288%_)
               (_%h106300%_ _%h106289%_)
               (_%result106309%_ '()))
          (&HashTable-for-each
           _%h106300%_
           (lambda (_%k106311%_ _%v106312%_)
             (set! _%result106309%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc106292%_ _%k106311%_ _%v106312%_))
                         _%result106309%_))))
          _%result106309%_)))
    (define hash-fold
      (lambda (_%proc106258%_ _%iv106259%_ _%h106260%_)
        (if (procedure? _%proc106258%_)
            (let* ((_%proc106264%_ _%proc106258%_)
                   (_%h106276%_
                    (let ((_%$obj106273%_ _%h106260%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106273%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106273%_)))
                               '#t)
                          _%$obj106273%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106273%_)))))
                   (_%h106278%_ _%h106276%_))
              (__hash-fold _%proc106264%_ _%iv106259%_ _%h106278%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@575.18-575.22"
               'contract:
               'procedure?
               'value:
               _%proc106258%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc106231%_ _%iv106232%_ _%h106233%_)
        (let* ((_%proc106236%_ _%proc106231%_)
               (_%h106244%_ _%h106233%_)
               (_%result106253%_ _%iv106232%_))
          (&HashTable-for-each
           _%h106244%_
           (lambda (_%k106255%_ _%v106256%_)
             (set! _%result106253%_
                   (let ()
                     (declare (not safe))
                     (_%proc106236%_
                      _%k106255%_
                      _%v106256%_
                      _%result106253%_)))))
          _%result106253%_)))
    (define hash-find__%
      (lambda (_%proc106189%_ _%h106190%_ _%default-value106191%_)
        (if (procedure? _%proc106189%_)
            (let* ((_%proc106195%_ _%proc106189%_)
                   (_%h106207%_
                    (let ((_%$obj106204%_ _%h106190%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj106204%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj106204%_)))
                               '#t)
                          _%$obj106204%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj106204%_)))))
                   (_%h106209%_ _%h106207%_))
              (__hash-find__%
               _%proc106195%_
               _%h106209%_
               _%default-value106191%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@580.18-580.22"
               'contract:
               'procedure?
               'value:
               _%proc106189%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc106222%_ _%h106223%_)
        (let ((_%default-value106225%_ '#f))
          (hash-find__% _%proc106222%_ _%h106223%_ _%default-value106225%_))))
    (define hash-find
      (lambda _g110277_
        (let ((_g110276_ (let () (declare (not safe)) (##length _g110277_))))
          (cond ((let () (declare (not safe)) (##fx= _g110276_ 2))
                 (apply hash-find__0 _g110277_))
                ((let () (declare (not safe)) (##fx= _g110276_ 3))
                 (apply hash-find__% _g110277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g110277_))))))
    (define __hash-find__%
      (lambda (_%proc106146%_ _%h106147%_ _%default-value106148%_)
        (let* ((_%proc106151%_ _%proc106146%_)
               (_%h106159%_ _%h106147%_)
               (__tmp110278
                (lambda (_%return106168%_)
                  (&HashTable-for-each
                   _%h106159%_
                   (lambda (_%k106170%_ _%v106171%_)
                     (let ((_%$e106173%_
                            (let ()
                              (declare (not safe))
                              (_%proc106151%_ _%k106170%_ _%v106171%_))))
                       (if _%$e106173%_
                           (_%return106168%_ _%$e106173%_)
                           '#!void))))
                  _%default-value106148%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp110278))))
    (define __hash-find__0
      (lambda (_%proc106179%_ _%h106180%_)
        (let ((_%default-value106182%_ '#f))
          (__hash-find__%
           _%proc106179%_
           _%h106180%_
           _%default-value106182%_))))
    (define __hash-find
      (lambda _g110280_
        (let ((_g110279_ (let () (declare (not safe)) (##length _g110280_))))
          (cond ((let () (declare (not safe)) (##fx= _g110279_ 2))
                 (apply __hash-find__0 _g110280_))
                ((let () (declare (not safe)) (##fx= _g110279_ 3))
                 (apply __hash-find__% _g110280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g110280_))))))
    (define hash-keys
      (lambda (_%h106127%_)
        (let* ((_%h106133%_
                (let ((_%$obj106130%_ _%h106127%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106130%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106130%_)))
                           '#t)
                      _%$obj106130%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106130%_)))))
               (_%h106135%_ _%h106133%_))
          (__hash-keys _%h106135%_))))
    (define __hash-keys
      (lambda (_%h106110%_)
        (let* ((_%h106113%_ _%h106110%_) (_%result106122%_ '()))
          (&HashTable-for-each
           _%h106113%_
           (lambda (_%k106124%_ _%v106125%_)
             (set! _%result106122%_ (cons _%k106124%_ _%result106122%_))))
          _%result106122%_)))
    (define hash-values
      (lambda (_%h106092%_)
        (let* ((_%h106098%_
                (let ((_%$obj106095%_ _%h106092%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106095%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106095%_)))
                           '#t)
                      _%$obj106095%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106095%_)))))
               (_%h106100%_ _%h106098%_))
          (__hash-values _%h106100%_))))
    (define __hash-values
      (lambda (_%h106075%_)
        (let* ((_%h106078%_ _%h106075%_) (_%result106087%_ '()))
          (&HashTable-for-each
           _%h106078%_
           (lambda (_%k106089%_ _%v106090%_)
             (set! _%result106087%_ (cons _%v106090%_ _%result106087%_))))
          _%result106087%_)))
    (define hash-copy
      (lambda (_%h106057%_)
        (let* ((_%h106063%_
                (let ((_%$obj106060%_ _%h106057%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106060%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106060%_)))
                           '#t)
                      _%$obj106060%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106060%_)))))
               (_%h106065%_ _%h106063%_))
          (__hash-copy _%h106065%_))))
    (define __hash-copy
      (lambda (_%h106045%_)
        (let ((_%h106048%_ _%h106045%_)) (__HashTable-copy _%h106048%_))))
    (define hash-clear!
      (lambda (_%h106027%_)
        (let* ((_%h106033%_
                (let ((_%$obj106030%_ _%h106027%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106030%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106030%_)))
                           '#t)
                      _%$obj106030%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106030%_)))))
               (_%h106035%_ _%h106033%_))
          (__hash-clear! _%h106035%_))))
    (define __hash-clear!
      (lambda (_%h106015%_)
        (let ((_%h106018%_ _%h106015%_)) (&HashTable-clear! _%h106018%_))))
    (define hash-merge
      (lambda (_%h105996%_ . _%rest105997%_)
        (let* ((_%h106003%_
                (let ((_%$obj106000%_ _%h105996%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106000%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106000%_)))
                           '#t)
                      _%$obj106000%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106000%_)))))
               (_%h106005%_ _%h106003%_))
          (declare (not safe))
          (##apply __hash-merge _%h106005%_ _%rest105997%_))))
    (define __hash-merge
      (lambda (_%h105981%_ . _%rest105982%_)
        (let* ((_%h105985%_ _%h105981%_)
               (_%copy105994%_ (__HashTable-copy _%h105985%_)))
          (apply hash-merge! _%copy105994%_ _%rest105982%_)
          _%copy105994%_)))
    (define hash-merge!
      (lambda (_%h105962%_ . _%rest105963%_)
        (let* ((_%h105969%_
                (let ((_%$obj105966%_ _%h105962%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105966%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105966%_)))
                           '#t)
                      _%$obj105966%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105966%_)))))
               (_%h105971%_ _%h105969%_))
          (declare (not safe))
          (##apply __hash-merge! _%h105971%_ _%rest105963%_))))
    (define __hash-merge!
      (lambda (_%h105925%_ . _%rest105926%_)
        (let ((_%h105929%_ _%h105925%_))
          (let ((__tmp110281
                 (lambda (_%hr105938%_)
                   (let* ((_%hr105944%_
                           (let ((_%$obj105941%_ _%hr105938%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj105941%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj105941%_)))
                                      '#t)
                                 _%$obj105941%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj105941%_)))))
                          (_%hr105946%_ _%hr105944%_))
                     (&HashTable-for-each
                      _%hr105946%_
                      (lambda (_%k105959%_ _%v105960%_)
                        (if (__hash-key? _%h105929%_ _%k105959%_)
                            '#!void
                            (&HashTable-set!
                             _%h105929%_
                             _%k105959%_
                             _%v105960%_))))))))
            (declare (not safe))
            (##for-each __tmp110281 _%rest105926%_))
          _%h105929%_)))))
