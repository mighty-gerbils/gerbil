(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1713000276)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp109159 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp109159
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args109139%_
        (apply make-instance UnboundKeyError::t _%$args109139%_)))
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
      (lambda (_%where109013%_ _%message109014%_ . _%irritants109015%_)
        (let ((__tmp109160
               (let ((__obj109153
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj109153
                    _%message109014%_
                    'where:
                    _%where109013%_
                    'irritants:
                    _%irritants109015%_))
                 __obj109153)))
          (declare (not safe))
          (raise __tmp109160))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp109161 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp109161
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
      (lambda (_%obj109011%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj109011%_))))
    (define try-HashTable
      (lambda (_%obj109009%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj109009%_))))
    (define HashTable?
      (lambda (_%obj109007%_)
        (let ((__tmp109162
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj109007%_ __tmp109162))))
    (define is-HashTable?
      (lambda (_%obj109005%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj109005%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self108989%_)
        (let* ((_%self108994%_
                (let ((_%$obj108991%_ _%self108989%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108991%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108991%_)))
                           '#t)
                      _%$obj108991%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108991%_)))))
               (_%self108996%_ _%self108994%_))
          (&HashTable-clear! _%self108996%_))))
    (define &HashTable-clear!
      (lambda (_%self108974%_)
        (let ((_%self108976%_ _%self108974%_))
          (declare (not safe))
          (let ((_%obj108986%_
                 (##unchecked-structure-ref _%self108976%_ '1 '#f 'clear!))
                (_%f108987%_
                 (##unchecked-structure-ref _%self108976%_ '2 '#f 'clear!)))
            (_%f108987%_ _%obj108986%_)))))
    (define HashTable-copy
      (lambda (_%self108958%_)
        (let* ((_%self108963%_
                (let ((_%$obj108960%_ _%self108958%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108960%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108960%_)))
                           '#t)
                      _%$obj108960%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108960%_)))))
               (_%self108965%_ _%self108963%_))
          (__HashTable-copy _%self108965%_))))
    (define __HashTable-copy
      (lambda (_%self108945%_)
        (let* ((_%self108947%_ _%self108945%_)
               (_%$obj108955%_ (&HashTable-copy _%self108947%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj108955%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj108955%_)))
                   '#t)
              _%$obj108955%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj108955%_))))))
    (define &HashTable-copy
      (lambda (_%self108930%_)
        (let ((_%self108932%_ _%self108930%_))
          (declare (not safe))
          (let ((_%obj108942%_
                 (##unchecked-structure-ref _%self108932%_ '1 '#f 'copy))
                (_%f108943%_
                 (##unchecked-structure-ref _%self108932%_ '3 '#f 'copy)))
            (_%f108943%_ _%obj108942%_)))))
    (define HashTable-delete!
      (lambda (_%self108913%_ _%key108914%_)
        (let* ((_%self108919%_
                (let ((_%$obj108916%_ _%self108913%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108916%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108916%_)))
                           '#t)
                      _%$obj108916%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108916%_)))))
               (_%self108921%_ _%self108919%_))
          (&HashTable-delete! _%self108921%_ _%key108914%_))))
    (define &HashTable-delete!
      (lambda (_%self108897%_ _%key108898%_)
        (let ((_%self108900%_ _%self108897%_))
          (declare (not safe))
          (let ((_%obj108910%_
                 (##unchecked-structure-ref _%self108900%_ '1 '#f 'delete!))
                (_%f108911%_
                 (##unchecked-structure-ref _%self108900%_ '4 '#f 'delete!)))
            (_%f108911%_ _%obj108910%_ _%key108898%_)))))
    (define HashTable-for-each
      (lambda (_%self108870%_ _%proc108871%_)
        (let* ((_%self108876%_
                (let ((_%$obj108873%_ _%self108870%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108873%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108873%_)))
                           '#t)
                      _%$obj108873%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108873%_)))))
               (_%self108878%_ _%self108876%_))
          (if (procedure? _%proc108871%_)
              (let ((_%proc108887%_ _%proc108871%_))
                (&HashTable-for-each _%self108878%_ _%proc108887%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108871%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self108846%_ _%proc108847%_)
        (let* ((_%self108849%_ _%self108846%_) (_%proc108856%_ _%proc108847%_))
          (declare (not safe))
          (let ((_%obj108867%_
                 (##unchecked-structure-ref _%self108849%_ '1 '#f 'for-each))
                (_%f108868%_
                 (##unchecked-structure-ref _%self108849%_ '5 '#f 'for-each)))
            (_%f108868%_ _%obj108867%_ _%proc108856%_)))))
    (define HashTable-length
      (lambda (_%self108830%_)
        (let* ((_%self108835%_
                (let ((_%$obj108832%_ _%self108830%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108832%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108832%_)))
                           '#t)
                      _%$obj108832%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108832%_)))))
               (_%self108837%_ _%self108835%_))
          (__HashTable-length _%self108837%_))))
    (define __HashTable-length
      (lambda (_%self108817%_)
        (let* ((_%self108819%_ _%self108817%_)
               (_%val108827%_ (&HashTable-length _%self108819%_)))
          _%val108827%_)))
    (define &HashTable-length
      (lambda (_%self108802%_)
        (let ((_%self108804%_ _%self108802%_))
          (declare (not safe))
          (let ((_%obj108814%_
                 (##unchecked-structure-ref _%self108804%_ '1 '#f 'length))
                (_%f108815%_
                 (##unchecked-structure-ref _%self108804%_ '6 '#f 'length)))
            (_%f108815%_ _%obj108814%_)))))
    (define HashTable-ref
      (lambda (_%self108784%_ _%key108785%_ _%default108786%_)
        (let* ((_%self108791%_
                (let ((_%$obj108788%_ _%self108784%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108788%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108788%_)))
                           '#t)
                      _%$obj108788%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108788%_)))))
               (_%self108793%_ _%self108791%_))
          (&HashTable-ref _%self108793%_ _%key108785%_ _%default108786%_))))
    (define &HashTable-ref
      (lambda (_%self108767%_ _%key108768%_ _%default108769%_)
        (let ((_%self108771%_ _%self108767%_))
          (declare (not safe))
          (let ((_%obj108781%_
                 (##unchecked-structure-ref _%self108771%_ '1 '#f 'ref))
                (_%f108782%_
                 (##unchecked-structure-ref _%self108771%_ '7 '#f 'ref)))
            (_%f108782%_ _%obj108781%_ _%key108768%_ _%default108769%_)))))
    (define HashTable-set!
      (lambda (_%self108749%_ _%key108750%_ _%value108751%_)
        (let* ((_%self108756%_
                (let ((_%$obj108753%_ _%self108749%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108753%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108753%_)))
                           '#t)
                      _%$obj108753%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108753%_)))))
               (_%self108758%_ _%self108756%_))
          (&HashTable-set! _%self108758%_ _%key108750%_ _%value108751%_))))
    (define &HashTable-set!
      (lambda (_%self108732%_ _%key108733%_ _%value108734%_)
        (let ((_%self108736%_ _%self108732%_))
          (declare (not safe))
          (let ((_%obj108746%_
                 (##unchecked-structure-ref _%self108736%_ '1 '#f 'set!))
                (_%f108747%_
                 (##unchecked-structure-ref _%self108736%_ '8 '#f 'set!)))
            (_%f108747%_ _%obj108746%_ _%key108733%_ _%value108734%_)))))
    (define HashTable-update!
      (lambda (_%self108703%_ _%key108704%_ _%proc108705%_ _%default108706%_)
        (let* ((_%self108711%_
                (let ((_%$obj108708%_ _%self108703%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108708%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108708%_)))
                           '#t)
                      _%$obj108708%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108708%_)))))
               (_%self108713%_ _%self108711%_))
          (if (procedure? _%proc108705%_)
              (let ((_%proc108722%_ _%proc108705%_))
                (&HashTable-update!
                 _%self108713%_
                 _%key108704%_
                 _%proc108722%_
                 _%default108706%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108705%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self108675%_ _%key108676%_ _%proc108677%_ _%default108678%_)
        (let* ((_%self108680%_ _%self108675%_) (_%proc108687%_ _%proc108677%_))
          (declare (not safe))
          (let ((_%obj108698%_
                 (##unchecked-structure-ref _%self108680%_ '1 '#f 'update!))
                (_%f108700%_
                 (##unchecked-structure-ref _%self108680%_ '9 '#f 'update!)))
            (_%f108700%_
             _%obj108698%_
             _%key108676%_
             _%proc108687%_
             _%default108678%_)))))
    (define Locker::t
      (let ((__tmp109163 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp109163
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
      (lambda (_%obj108673%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj108673%_))))
    (define try-Locker
      (lambda (_%obj108671%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj108671%_))))
    (define Locker?
      (lambda (_%obj108669%_)
        (let ((__tmp109164
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108669%_ __tmp109164))))
    (define is-Locker?
      (lambda (_%obj108667%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj108667%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self108651%_)
        (let* ((_%self108656%_
                (let ((_%$obj108653%_ _%self108651%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108653%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108653%_)))
                           '#t)
                      _%$obj108653%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108653%_)))))
               (_%self108658%_ _%self108656%_))
          (&Locker-read-lock! _%self108658%_))))
    (define &Locker-read-lock!
      (lambda (_%self108636%_)
        (let ((_%self108638%_ _%self108636%_))
          (declare (not safe))
          (let ((_%obj108648%_
                 (##unchecked-structure-ref _%self108638%_ '1 '#f 'read-lock!))
                (_%f108649%_
                 (##unchecked-structure-ref
                  _%self108638%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f108649%_ _%obj108648%_)))))
    (define Locker-read-unlock!
      (lambda (_%self108620%_)
        (let* ((_%self108625%_
                (let ((_%$obj108622%_ _%self108620%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108622%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108622%_)))
                           '#t)
                      _%$obj108622%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108622%_)))))
               (_%self108627%_ _%self108625%_))
          (&Locker-read-unlock! _%self108627%_))))
    (define &Locker-read-unlock!
      (lambda (_%self108605%_)
        (let ((_%self108607%_ _%self108605%_))
          (declare (not safe))
          (let ((_%obj108617%_
                 (##unchecked-structure-ref
                  _%self108607%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f108618%_
                 (##unchecked-structure-ref
                  _%self108607%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f108618%_ _%obj108617%_)))))
    (define Locker-write-lock!
      (lambda (_%self108589%_)
        (let* ((_%self108594%_
                (let ((_%$obj108591%_ _%self108589%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108591%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108591%_)))
                           '#t)
                      _%$obj108591%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108591%_)))))
               (_%self108596%_ _%self108594%_))
          (&Locker-write-lock! _%self108596%_))))
    (define &Locker-write-lock!
      (lambda (_%self108574%_)
        (let ((_%self108576%_ _%self108574%_))
          (declare (not safe))
          (let ((_%obj108586%_
                 (##unchecked-structure-ref
                  _%self108576%_
                  '1
                  '#f
                  'write-lock!))
                (_%f108587%_
                 (##unchecked-structure-ref
                  _%self108576%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f108587%_ _%obj108586%_)))))
    (define Locker-write-unlock!
      (lambda (_%self108558%_)
        (let* ((_%self108563%_
                (let ((_%$obj108560%_ _%self108558%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108560%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108560%_)))
                           '#t)
                      _%$obj108560%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108560%_)))))
               (_%self108565%_ _%self108563%_))
          (&Locker-write-unlock! _%self108565%_))))
    (define &Locker-write-unlock!
      (lambda (_%self108541%_)
        (let ((_%self108543%_ _%self108541%_))
          (declare (not safe))
          (let ((_%obj108553%_
                 (##unchecked-structure-ref
                  _%self108543%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f108555%_
                 (##unchecked-structure-ref
                  _%self108543%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f108555%_ _%obj108553%_)))))
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
      (lambda (_%table108534%_
               _%key108535%_
               _%update108536%_
               _%default108537%_)
        (let ((_%result108539%_
               (table-ref _%table108534%_ _%key108535%_ _%default108537%_)))
          (table-set!
           _%table108534%_
           _%key108535%_
           (_%update108536%_ _%default108537%_)))))
    (define gambit-table-for-each
      (lambda (_%table108531%_ _%proc108532%_)
        (table-for-each _%proc108532%_ _%table108531%_)))
    (define gambit-table-clear!
      (lambda (_%table108529%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table108529%_ '0 '5 '#f '#f))))
    (let ((__tmp109165 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109165 'ref table-ref))
    (let ((__tmp109166 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109166 'set! table-set!))
    (let ((__tmp109167 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109167 'update! gambit-table-update!))
    (let ((__tmp109168 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109168 'delete! table-set!))
    (let ((__tmp109169 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109169 'for-each gambit-table-for-each))
    (let ((__tmp109170 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109170 'length table-length))
    (let ((__tmp109171 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109171 'copy table-copy))
    (let ((__tmp109172 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp109172 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots108511%_ '(table count free hash test seed))
             (_%slot-vector108513%_ (list->vector (cons '#f _%slots108511%_)))
             (_%slot-table108520%_
              (let ((_%slot-table108515%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp109175
                       (lambda (_%slot108517%_ _%field108518%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table108515%_
                            _%slot108517%_
                            _%field108518%_))
                         (let ((__tmp109176
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot108517%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table108515%_
                            __tmp109176
                            _%field108518%_))))
                      (__tmp109173
                       (let ((__tmp109174
                              (let ()
                                (declare (not safe))
                                (##length _%slots108511%_))))
                         (declare (not safe))
                         (##iota __tmp109174 '1))))
                  (declare (not safe))
                  (##for-each __tmp109175 _%slots108511%_ __tmp109173))
                _%slot-table108515%_))
             (_%flags108522%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields108524%_ '#())
             (_%properties108526%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots108511%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp109177 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags108522%_
         __table::t
         _%fields108524%_
         __tmp109177
         _%slot-vector108513%_
         _%slot-table108520%_
         _%properties108526%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots108493%_ '(gcht immediate))
             (_%slot-vector108495%_ (list->vector (cons '#f _%slots108493%_)))
             (_%slot-table108502%_
              (let ((_%slot-table108497%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp109180
                       (lambda (_%slot108499%_ _%field108500%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table108497%_
                            _%slot108499%_
                            _%field108500%_))
                         (let ((__tmp109181
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot108499%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table108497%_
                            __tmp109181
                            _%field108500%_))))
                      (__tmp109178
                       (let ((__tmp109179
                              (let ()
                                (declare (not safe))
                                (##length _%slots108493%_))))
                         (declare (not safe))
                         (##iota __tmp109179 '1))))
                  (declare (not safe))
                  (##for-each __tmp109180 _%slots108493%_ __tmp109178))
                _%slot-table108497%_))
             (_%flags108504%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields108506%_ '#())
             (_%properties108508%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots108493%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp109182 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags108504%_
         __gc-table::t
         _%fields108506%_
         __tmp109182
         _%slot-vector108495%_
         _%slot-table108502%_
         _%properties108508%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp109184 (list))
            (__tmp109183
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp109184
         '(table lock)
         __tmp109183
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args108490%_
        (apply make-instance locked-hash-table::t _%$args108490%_)))
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
      (let ((__tmp109186 (list))
            (__tmp109185
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp109186
         '(table key-check)
         __tmp109185
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args108487%_
        (apply make-instance checked-hash-table::t _%$args108487%_)))
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
      (let ((__tmp109188 (list hash-table::t))
            (__tmp109187 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp109188
         '()
         __tmp109187
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args108484%_
        (apply make-instance eq-hash-table::t _%$args108484%_)))
    (define eqv-hash-table::t
      (let ((__tmp109190 (list hash-table::t))
            (__tmp109189 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp109190
         '()
         __tmp109189
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args108481%_
        (apply make-instance eqv-hash-table::t _%$args108481%_)))
    (define symbol-hash-table::t
      (let ((__tmp109192 (list hash-table::t))
            (__tmp109191 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp109192
         '()
         __tmp109191
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args108478%_
        (apply make-instance symbol-hash-table::t _%$args108478%_)))
    (define string-hash-table::t
      (let ((__tmp109194 (list hash-table::t))
            (__tmp109193 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp109194
         '()
         __tmp109193
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args108475%_
        (apply make-instance string-hash-table::t _%$args108475%_)))
    (define immediate-hash-table::t
      (let ((__tmp109196 (list hash-table::t))
            (__tmp109195 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp109196
         '()
         __tmp109195
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args108472%_
        (apply make-instance immediate-hash-table::t _%$args108472%_)))
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
    (define _%locked-hash-table::ref104418%_
      (lambda (_%self104417108446%_ _%key108448%_ _%default108449%_)
        (let* ((_%self108451%_ _%self104417108446%_)
               (_%self108454%_ _%self108451%_))
          (let ((_%h108464%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108454%_ '1 '#f '#f)))
                (_%l108466%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108454%_ '2 '#f '#f))))
            (let ((__tmp109199 (lambda () (&Locker-read-lock! _%l108466%_)))
                  (__tmp109198
                   (lambda ()
                     (&HashTable-ref
                      _%h108464%_
                      _%key108448%_
                      _%default108449%_)))
                  (__tmp109197 (lambda () (&Locker-read-unlock! _%l108466%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109199 __tmp109198 __tmp109197))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref104418%_
       '#f))
    (define _%locked-hash-table::set!104421%_
      (lambda (_%self104420108297%_ _%key108299%_ _%value108300%_)
        (let* ((_%self108302%_ _%self104420108297%_)
               (_%self108305%_ _%self108302%_))
          (let ((_%h108315%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108305%_ '1 '#f '#f)))
                (_%l108317%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108305%_ '2 '#f '#f))))
            (let ((__tmp109202 (lambda () (&Locker-write-lock! _%l108317%_)))
                  (__tmp109201
                   (lambda ()
                     (&HashTable-set!
                      _%h108315%_
                      _%key108299%_
                      _%value108300%_)))
                  (__tmp109200
                   (lambda () (&Locker-write-unlock! _%l108317%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109202 __tmp109201 __tmp109200))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!104421%_
       '#f))
    (define _%locked-hash-table::update!104424%_
      (lambda (_%self104423108147%_
               _%key108149%_
               _%update108150%_
               _%default108151%_)
        (let* ((_%self108153%_ _%self104423108147%_)
               (_%self108156%_ _%self108153%_))
          (let ((_%h108166%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108156%_ '1 '#f '#f)))
                (_%l108168%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108156%_ '2 '#f '#f))))
            (let ((__tmp109205 (lambda () (&Locker-write-lock! _%l108168%_)))
                  (__tmp109204
                   (lambda ()
                     (&HashTable-update!
                      _%h108166%_
                      _%key108149%_
                      _%update108150%_
                      _%default108151%_)))
                  (__tmp109203
                   (lambda () (&Locker-write-unlock! _%l108168%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109205 __tmp109204 __tmp109203))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!104424%_
       '#f))
    (define _%locked-hash-table::delete!104427%_
      (lambda (_%self104426107999%_ _%key108001%_)
        (let* ((_%self108003%_ _%self104426107999%_)
               (_%self108006%_ _%self108003%_))
          (let ((_%h108016%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108006%_ '1 '#f '#f)))
                (_%l108018%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108006%_ '2 '#f '#f))))
            (let ((__tmp109208 (lambda () (&Locker-write-lock! _%l108018%_)))
                  (__tmp109207
                   (lambda () (&HashTable-delete! _%h108016%_ _%key108001%_)))
                  (__tmp109206
                   (lambda () (&Locker-write-unlock! _%l108018%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109208 __tmp109207 __tmp109206))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!104427%_
       '#f))
    (define _%locked-hash-table::for-each104430%_
      (lambda (_%self104429107851%_ _%proc107853%_)
        (let* ((_%self107855%_ _%self104429107851%_)
               (_%self107858%_ _%self107855%_))
          (let ((_%h107868%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107858%_ '1 '#f '#f)))
                (_%l107870%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107858%_ '2 '#f '#f))))
            (let ((__tmp109211 (lambda () (&Locker-read-lock! _%l107870%_)))
                  (__tmp109210
                   (lambda ()
                     (&HashTable-for-each _%h107868%_ _%proc107853%_)))
                  (__tmp109209 (lambda () (&Locker-read-unlock! _%l107870%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109211 __tmp109210 __tmp109209))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each104430%_
       '#f))
    (define _%locked-hash-table::length104433%_
      (lambda (_%self104432107704%_)
        (let* ((_%self107707%_ _%self104432107704%_)
               (_%self107710%_ _%self107707%_))
          (let ((_%h107720%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107710%_ '1 '#f '#f)))
                (_%l107722%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107710%_ '2 '#f '#f))))
            (let ((__tmp109214 (lambda () (&Locker-read-lock! _%l107722%_)))
                  (__tmp109213 (lambda () (&HashTable-length _%h107720%_)))
                  (__tmp109212 (lambda () (&Locker-read-unlock! _%l107722%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109214 __tmp109213 __tmp109212))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length104433%_
       '#f))
    (define _%locked-hash-table::copy104436%_
      (lambda (_%self104435107557%_)
        (let* ((_%self107560%_ _%self104435107557%_)
               (_%self107563%_ _%self107560%_))
          (let ((_%h107573%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107563%_ '1 '#f '#f)))
                (_%l107575%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107563%_ '2 '#f '#f))))
            (let ((__tmp109217 (lambda () (&Locker-read-lock! _%l107575%_)))
                  (__tmp109216 (lambda () (&HashTable-copy _%h107573%_)))
                  (__tmp109215 (lambda () (&Locker-read-unlock! _%l107575%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109217 __tmp109216 __tmp109215))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy104436%_
       '#f))
    (define _%locked-hash-table::clear!104439%_
      (lambda (_%self104438107410%_)
        (let* ((_%self107413%_ _%self104438107410%_)
               (_%self107416%_ _%self107413%_))
          (let ((_%h107426%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107416%_ '1 '#f '#f)))
                (_%l107428%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107416%_ '2 '#f '#f))))
            (let ((__tmp109220 (lambda () (&Locker-write-lock! _%l107428%_)))
                  (__tmp109219 (lambda () (&HashTable-clear! _%h107426%_)))
                  (__tmp109218
                   (lambda () (&Locker-write-unlock! _%l107428%_))))
              (declare (not safe))
              (##dynamic-wind __tmp109220 __tmp109219 __tmp109218))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!104439%_
       '#f))
    (let ((__tmp109221 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp109221 'read-lock! mutex-lock!))
    (let ((__tmp109222 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp109222 'read-unlock! mutex-unlock!))
    (let ((__tmp109223 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp109223 'write-lock! mutex-lock!))
    (let ((__tmp109224 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp109224 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref104718%_
      (lambda (_%self104717107261%_ _%key107263%_ _%default107264%_)
        (let* ((_%self107266%_ _%self104717107261%_)
               (_%self107268%_ _%self107266%_))
          (let ((_%h107278%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107268%_ '1 '#f '#f)))
                (_%key?107280%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107268%_ '2 '#f '#f))))
            ((lambda (_%g107282107284%_)
               (if (_%g107282107284%_ _%key107263%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key107263%_))))
             _%key?107280%_)
            (&HashTable-ref _%h107278%_ _%key107263%_ _%default107264%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref104718%_
       '#f))
    (define _%checked-hash-table::set!104721%_
      (lambda (_%self104720107112%_ _%key107114%_ _%value107115%_)
        (let* ((_%self107117%_ _%self104720107112%_)
               (_%self107119%_ _%self107117%_))
          (let ((_%h107129%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107119%_ '1 '#f '#f)))
                (_%key?107131%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107119%_ '2 '#f '#f))))
            ((lambda (_%g107133107135%_)
               (if (_%g107133107135%_ _%key107114%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key107114%_))))
             _%key?107131%_)
            (&HashTable-set! _%h107129%_ _%key107114%_ _%value107115%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!104721%_
       '#f))
    (define _%checked-hash-table::update!104724%_
      (lambda (_%self104723106964%_
               _%key106966%_
               _%update106967%_
               _%default106968%_)
        (let* ((_%self106970%_ _%self104723106964%_)
               (_%self106972%_ _%self106970%_))
          (let ((_%h106982%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106972%_ '1 '#f '#f)))
                (_%key?106984%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106972%_ '2 '#f '#f))))
            ((lambda (_%key?106987%_)
               (if (_%key?106987%_ _%key106966%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106966%_)))
               (if (procedure? _%update106967%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update106967%_))))
             _%key?106984%_)
            (&HashTable-update!
             _%h106982%_
             _%key106966%_
             _%update106967%_
             _%default106968%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!104724%_
       '#f))
    (define _%checked-hash-table::delete!104727%_
      (lambda (_%self104726106816%_ _%key106818%_)
        (let* ((_%self106820%_ _%self104726106816%_)
               (_%self106822%_ _%self106820%_))
          (let ((_%h106832%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106822%_ '1 '#f '#f)))
                (_%key?106834%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106822%_ '2 '#f '#f))))
            ((lambda (_%g106836106838%_)
               (if (_%g106836106838%_ _%key106818%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106818%_))))
             _%key?106834%_)
            (&HashTable-delete! _%h106832%_ _%key106818%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!104727%_
       '#f))
    (define _%checked-hash-table::for-each104730%_
      (lambda (_%self104729106670%_ _%proc106672%_)
        (let* ((_%self106674%_ _%self104729106670%_)
               (_%self106676%_ _%self106674%_))
          (let ((_%h106686%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106676%_ '1 '#f '#f)))
                (_%key?106688%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106676%_ '2 '#f '#f))))
            ((lambda (_%_106691%_)
               (if (procedure? _%proc106672%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc106672%_))))
             _%key?106688%_)
            (&HashTable-for-each _%h106686%_ _%proc106672%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each104730%_
       '#f))
    (define _%checked-hash-table::length104733%_
      (lambda (_%self104732106527%_)
        (let* ((_%self106530%_ _%self104732106527%_)
               (_%self106532%_ _%self106530%_))
          (let ((_%h106542%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106532%_ '1 '#f '#f)))
                (_%key?106544%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106532%_ '2 '#f '#f))))
            (&HashTable-length _%h106542%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'length
       _%checked-hash-table::length104733%_
       '#f))
    (define _%checked-hash-table::copy104736%_
      (lambda (_%self104735106384%_)
        (let* ((_%self106387%_ _%self104735106384%_)
               (_%self106389%_ _%self106387%_))
          (let ((_%h106399%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106389%_ '1 '#f '#f)))
                (_%key?106401%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106389%_ '2 '#f '#f))))
            (&HashTable-copy _%h106399%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy104736%_
       '#f))
    (define _%checked-hash-table::clear!104739%_
      (lambda (_%self104738106241%_)
        (let* ((_%self106244%_ _%self104738106241%_)
               (_%self106246%_ _%self106244%_))
          (let ((_%h106256%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106246%_ '1 '#f '#f)))
                (_%key?106258%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106246%_ '2 '#f '#f))))
            (&HashTable-clear! _%h106256%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!104739%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table106111%_
               _%count106112%_
               _%free106113%_
               _%hash106114%_
               _%test106115%_
               _%seed106116%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table106111%_
           _%count106112%_
           _%free106113%_
           _%hash106114%_
           _%test106115%_
           _%seed106116%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords105872%_
               _%size-hint105862105873%_
               _%seed105863105875%_
               _%test105864105877%_
               _%hash105865105879%_
               _%lock105866105881%_
               _%check105867105883%_
               _%weak-keys105868105885%_
               _%weak-values105869105887%_)
        (let* ((_%size-hint105890%_
                (if (eq? _%size-hint105862105873%_ absent-value)
                    '#f
                    _%size-hint105862105873%_))
               (_%seed105892%_
                (if (eq? _%seed105863105875%_ absent-value)
                    '#f
                    _%seed105863105875%_))
               (_%test105894%_
                (if (eq? _%test105864105877%_ absent-value)
                    equal?
                    _%test105864105877%_))
               (_%hash105896%_
                (if (eq? _%hash105865105879%_ absent-value)
                    '#f
                    _%hash105865105879%_))
               (_%lock105898%_
                (if (eq? _%lock105866105881%_ absent-value)
                    '#f
                    _%lock105866105881%_))
               (_%check105900%_
                (if (eq? _%check105867105883%_ absent-value)
                    '#f
                    _%check105867105883%_))
               (_%weak-keys105902%_
                (if (eq? _%weak-keys105868105885%_ absent-value)
                    '#f
                    _%weak-keys105868105885%_))
               (_%weak-values105904%_
                (if (eq? _%weak-values105869105887%_ absent-value)
                    '#f
                    _%weak-values105869105887%_)))
          (letrec ((_%table-seed105907%_
                    (lambda ()
                      (if (fixnum? _%seed105892%_)
                          _%seed105892%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock105908%_
                    (lambda (_%ht106085%_)
                      (let ((_%ht106088%_ _%ht106085%_))
                        (_%__wrap-lock105909%_ _%ht106088%_))))
                   (_%__wrap-lock105909%_
                    (lambda (_%ht106067%_)
                      (let ((_%ht106070%_ _%ht106067%_))
                        (if _%lock105898%_
                            (let ((_%$obj106082%_
                                   (let ((__tmp109225
                                          (let ((_%$obj106079%_
                                                 _%lock105898%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj106079%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj106079%_)))
                                                     '#t)
                                                _%$obj106079%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj106079%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht106070%_
                                      __tmp109225))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj106082%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj106082%_)))
                                       '#t)
                                  _%$obj106082%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj106082%_))))
                            _%ht106070%_))))
                   (_%wrap-checked105910%_
                    (lambda (_%ht106054%_ _%implicit106055%_)
                      (let ((_%ht106058%_ _%ht106054%_))
                        (_%__wrap-checked105911%_
                         _%ht106058%_
                         _%implicit106055%_))))
                   (_%__wrap-checked105911%_
                    (lambda (_%ht106027%_ _%implicit106028%_)
                      (let ((_%ht106031%_ _%ht106027%_))
                        (if _%check105900%_
                            (let ((_%$obj106051%_
                                   (let ((__tmp109226
                                          (if (procedure? _%check105900%_)
                                              _%check105900%_
                                              _%implicit106028%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht106031%_
                                      __tmp109226))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj106051%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj106051%_)))
                                       '#t)
                                  _%$obj106051%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj106051%_))))
                            _%ht106031%_))))
                   (_%make105912%_
                    (lambda (_%kons106011%_
                             _%key?106012%_
                             _%hash106013%_
                             _%test106014%_)
                      (let* ((_%size106017%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint105890%_)))
                             (_%table106019%_
                              (let ((__tmp109227 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size106017%_ __tmp109227)))
                             (_%ht106024%_
                              (let ((_%$obj106021%_
                                     (_%kons106011%_
                                      _%table106019%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size106017%_ '2))
                                      _%hash106013%_
                                      _%test106014%_
                                      (_%table-seed105907%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj106021%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj106021%_)))
                                         '#t)
                                    _%$obj106021%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj106021%_))))))
                        (_%__wrap-checked105911%_
                         (_%__wrap-lock105909%_ _%ht106024%_)
                         _%key?106012%_))))
                   (_%make-gc-hash-table105913%_
                    (lambda ()
                      (let ((_%ht106009%_
                             (let ((_%$obj106006%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint105890%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj106006%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj106006%_)))
                                        '#t)
                                   _%$obj106006%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj106006%_))))))
                        (_%__wrap-checked105911%_
                         (_%__wrap-lock105909%_ _%ht106009%_)
                         true))))
                   (_%make-gambit-table105914%_
                    (lambda ()
                      (let* ((_%size105983%_
                              (let ((_%$e105980%_ _%size-hint105890%_))
                                (if _%$e105980%_
                                    _%$e105980%_
                                    (macro-absent-obj))))
                             (_%test105988%_
                              (let ((_%$e105985%_ _%test105894%_))
                                (if _%$e105985%_ _%$e105985%_ equal?)))
                             (_%hash105996%_
                              (let ((_%$e105990%_ _%hash105896%_))
                                (if _%$e105990%_
                                    _%$e105990%_
                                    (if (eq? _%test105988%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test105988%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht106001%_
                              (let ((_%$obj105998%_
                                     (make-table
                                      'size:
                                      _%size105983%_
                                      'test:
                                      _%test105988%_
                                      'hash:
                                      _%hash105996%_
                                      'weak-keys:
                                      _%weak-keys105902%_
                                      'weak-values:
                                      _%weak-values105904%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105998%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105998%_)))
                                         '#t)
                                    _%$obj105998%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105998%_))))))
                        (_%__wrap-checked105911%_
                         (_%__wrap-lock105909%_ _%ht106001%_)
                         true)))))
            (if (or _%weak-keys105902%_ _%weak-values105904%_)
                (_%make-gambit-table105914%_)
                (if (and (or (eq? _%test105894%_ eq?)
                             (eq? _%test105894%_ ##eq?))
                         (or (not _%hash105896%_)
                             (eq? _%hash105896%_ eq?-hash)
                             (eq? _%hash105896%_ eq-hash))
                         (not _%seed105892%_))
                    (_%make-gc-hash-table105913%_)
                    (if (and (or (eq? _%test105894%_ eq?)
                                 (eq? _%test105894%_ ##eq?))
                             (or (not _%hash105896%_)
                                 (eq? _%hash105896%_ eq?-hash)
                                 (eq? _%hash105896%_ eq-hash)))
                        (_%make105912%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test105894%_ eqv?)
                                     (eq? _%test105894%_ ##eqv?))
                                 (or (not _%hash105896%_)
                                     (eq? _%hash105896%_ eqv?-hash)
                                     (eq? _%hash105896%_ eqv-hash)))
                            (_%make105912%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test105894%_ eq?)
                                         (eq? _%test105894%_ ##eq?))
                                     (or (eq? _%hash105896%_ symbolic-hash)
                                         (eq? _%hash105896%_ ##symbol-hash)))
                                (_%make105912%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test105894%_ eq?)
                                             (eq? _%test105894%_ ##eq?))
                                         (eq? _%hash105896%_ immediate-hash))
                                    (_%make105912%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test105894%_ equal?)
                                                 (eq? _%test105894%_ ##equal?)
                                                 (eq? _%test105894%_ string=?)
                                                 (eq? _%test105894%_
                                                      ##string=?))
                                             (or (eq? _%hash105896%_
                                                      string-hash)
                                                 (eq? _%hash105896%_
                                                      ##string=?-hash)))
                                        (_%make105912%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test105894%_ equal?)
                                                 (not _%hash105896%_))
                                            (_%make105912%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test105894%_)
                                                (if (procedure? _%hash105896%_)
                                                    (_%make105912%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash105896%_
                                                     _%test105894%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash105896%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test105894%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords106101%_ . _%args106102%_)
        (apply make-hash-table__%
               _%@@keywords106101%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106101%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106101%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106101%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106101%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords106101%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords106101%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords106101%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords106101%_
                  'weak-values:
                  absent-value))
               _%args106102%_)))
    (define make-hash-table
      (lambda _%args105870106108%_
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
               _%args105870106108%_)))
    (define make-hash-table-eq
      (lambda _%args105859%_
        (apply make-hash-table 'test: eq? _%args105859%_)))
    (define make-hash-table-eqv
      (lambda _%args105857%_
        (apply make-hash-table 'test: eqv? _%args105857%_)))
    (define make-hash-table-symbolic
      (lambda _%args105855%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args105855%_)))
    (define make-hash-table-string
      (lambda _%args105853%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args105853%_)))
    (define make-hash-table-immediate
      (lambda _%args105851%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args105851%_)))
    (define list->hash-table
      (lambda (_%lst105848%_ . _%args105849%_)
        (list->hash-table!
         _%lst105848%_
         (apply make-hash-table
                'size:
                (length _%lst105848%_)
                _%args105849%_))))
    (define list->hash-table-eq
      (lambda (_%lst105845%_ . _%args105846%_)
        (list->hash-table!
         _%lst105845%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105845%_)
                _%args105846%_))))
    (define list->hash-table-eqv
      (lambda (_%lst105842%_ . _%args105843%_)
        (list->hash-table!
         _%lst105842%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105842%_)
                _%args105843%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst105839%_ . _%args105840%_)
        (list->hash-table!
         _%lst105839%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105839%_)
                _%args105840%_))))
    (define list->hash-table-string
      (lambda (_%lst105836%_ . _%args105837%_)
        (list->hash-table!
         _%lst105836%_
         (apply make-hash-table-string
                'size:
                (length _%lst105836%_)
                _%args105837%_))))
    (define list->hash-table-immediate
      (lambda (_%lst105833%_ . _%args105834%_)
        (list->hash-table!
         _%lst105833%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105833%_)
                _%args105834%_))))
    (define list->hash-table!
      (lambda (_%lst105800%_ _%h105801%_)
        (for-each
         (lambda (_%el105803%_)
           (let* ((_%el105804105811%_ _%el105803%_)
                  (_%E105806105815%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el105804105811%_
                              '([k . v])))
                     '#!void))
                  (_%K105807105821%_
                   (lambda (_%v105818%_ _%k105819%_)
                     (&HashTable-set! _%h105801%_ _%k105819%_ _%v105818%_))))
             (if (let () (declare (not safe)) (##pair? _%el105804105811%_))
                 (let ((_%hd105808105824%_
                        (let ()
                          (declare (not safe))
                          (##car _%el105804105811%_)))
                       (_%tl105809105826%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el105804105811%_))))
                   (let* ((_%k105829%_ _%hd105808105824%_)
                          (_%v105831%_ _%tl105809105826%_))
                     (_%K105807105821%_ _%v105831%_ _%k105829%_)))
                 (_%E105806105815%_))))
         _%lst105800%_)
        _%h105801%_))
    (define plist->hash-table
      (lambda (_%lst105797%_ . _%args105798%_)
        (plist->hash-table!
         _%lst105797%_
         (apply make-hash-table
                'size:
                (length _%lst105797%_)
                _%args105798%_))))
    (define plist->hash-table-eq
      (lambda (_%lst105794%_ . _%args105795%_)
        (plist->hash-table!
         _%lst105794%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105794%_)
                _%args105795%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst105791%_ . _%args105792%_)
        (plist->hash-table!
         _%lst105791%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105791%_)
                _%args105792%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst105788%_ . _%args105789%_)
        (plist->hash-table!
         _%lst105788%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105788%_)
                _%args105789%_))))
    (define plist->hash-table-string
      (lambda (_%lst105785%_ . _%args105786%_)
        (plist->hash-table!
         _%lst105785%_
         (apply make-hash-table-string
                'size:
                (length _%lst105785%_)
                _%args105786%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst105782%_ . _%args105783%_)
        (plist->hash-table!
         _%lst105782%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105782%_)
                _%args105783%_))))
    (define plist->hash-table!
      (lambda (_%lst105722%_ _%h105723%_)
        (let _%loop105725%_ ((_%rest105727%_ _%lst105722%_))
          (let* ((_%rest105728105740%_ _%rest105727%_)
                 (_%else105731105748%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst105722%_)))))
            (let ((_%K105734105763%_
                   (lambda (_%rest105759%_ _%val105760%_ _%key105761%_)
                     (&HashTable-set! _%h105723%_ _%key105761%_ _%val105760%_)
                     (_%loop105725%_ _%rest105759%_)))
                  (_%K105733105753%_ (lambda () _%h105723%_)))
              (let ((_%try-match105730105756%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest105728105740%_))
                           (_%K105733105753%_)
                           (_%else105731105748%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest105728105740%_))
                    (let ((_%tl105736105768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105728105740%_)))
                          (_%hd105735105766%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105728105740%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl105736105768%_))
                          (let ((_%tl105738105775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl105736105768%_)))
                                (_%hd105737105773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl105736105768%_))))
                            (let ((_%key105771%_ _%hd105735105766%_)
                                  (_%val105778%_ _%hd105737105773%_)
                                  (_%rest105780%_ _%tl105738105775%_))
                              (_%K105734105763%_
                               _%rest105780%_
                               _%val105778%_
                               _%key105771%_)))
                          (_%else105731105748%_)))
                    (_%try-match105730105756%_))))))))
    (define hash-length
      (lambda (_%h105704%_)
        (let* ((_%h105710%_
                (let ((_%$obj105707%_ _%h105704%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105707%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105707%_)))
                           '#t)
                      _%$obj105707%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105707%_)))))
               (_%h105712%_ _%h105710%_))
          (__hash-length _%h105712%_))))
    (define __hash-length
      (lambda (_%h105692%_)
        (let ((_%h105695%_ _%h105692%_)) (__HashTable-length _%h105695%_))))
    (define hash-ref__%
      (lambda (_%h105660%_ _%key105661%_ _%default105662%_)
        (let* ((_%h105668%_
                (let ((_%$obj105665%_ _%h105660%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105665%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105665%_)))
                           '#t)
                      _%$obj105665%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105665%_)))))
               (_%h105670%_ _%h105668%_))
          (__hash-ref__% _%h105670%_ _%key105661%_ _%default105662%_))))
    (define hash-ref__0
      (lambda (_%h105683%_ _%key105684%_)
        (let ((_%default105686%_ (macro-absent-obj)))
          (hash-ref__% _%h105683%_ _%key105684%_ _%default105686%_))))
    (define hash-ref
      (lambda _g109229_
        (let ((_g109228_ (let () (declare (not safe)) (##length _g109229_))))
          (cond ((let () (declare (not safe)) (##fx= _g109228_ 2))
                 (apply hash-ref__0 _g109229_))
                ((let () (declare (not safe)) (##fx= _g109228_ 3))
                 (apply hash-ref__% _g109229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g109229_))))))
    (define __hash-ref__%
      (lambda (_%h105631%_ _%key105632%_ _%default105633%_)
        (let* ((_%h105636%_ _%h105631%_)
               (_%result105645%_
                (&HashTable-ref _%h105636%_ _%key105632%_ _%default105633%_)))
          (if (eq? _%result105645%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h105636%_
               'key:
               _%key105632%_)
              _%result105645%_))))
    (define __hash-ref__0
      (lambda (_%h105650%_ _%key105651%_)
        (let ((_%default105653%_ (macro-absent-obj)))
          (__hash-ref__% _%h105650%_ _%key105651%_ _%default105653%_))))
    (define __hash-ref
      (lambda _g109231_
        (let ((_g109230_ (let () (declare (not safe)) (##length _g109231_))))
          (cond ((let () (declare (not safe)) (##fx= _g109230_ 2))
                 (apply __hash-ref__0 _g109231_))
                ((let () (declare (not safe)) (##fx= _g109230_ 3))
                 (apply __hash-ref__% _g109231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g109231_))))))
    (define hash-get
      (lambda (_%h105611%_ _%key105612%_)
        (let* ((_%h105618%_
                (let ((_%$obj105615%_ _%h105611%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105615%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105615%_)))
                           '#t)
                      _%$obj105615%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105615%_)))))
               (_%h105620%_ _%h105618%_))
          (__hash-get _%h105620%_ _%key105612%_))))
    (define __hash-get
      (lambda (_%h105598%_ _%key105599%_)
        (let ((_%h105602%_ _%h105598%_))
          (&HashTable-ref _%h105602%_ _%key105599%_ '#f))))
    (define hash-put!
      (lambda (_%h105578%_ _%key105579%_ _%value105580%_)
        (let* ((_%h105586%_
                (let ((_%$obj105583%_ _%h105578%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105583%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105583%_)))
                           '#t)
                      _%$obj105583%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105583%_)))))
               (_%h105588%_ _%h105586%_))
          (__hash-put! _%h105588%_ _%key105579%_ _%value105580%_))))
    (define __hash-put!
      (lambda (_%h105564%_ _%key105565%_ _%value105566%_)
        (let ((_%h105569%_ _%h105564%_))
          (&HashTable-set! _%h105569%_ _%key105565%_ _%value105566%_))))
    (define hash-update!__%
      (lambda (_%h105529%_ _%key105530%_ _%update105531%_ _%default105532%_)
        (let* ((_%h105538%_
                (let ((_%$obj105535%_ _%h105529%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105535%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105535%_)))
                           '#t)
                      _%$obj105535%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105535%_)))))
               (_%h105540%_ _%h105538%_))
          (__hash-update!__%
           _%h105540%_
           _%key105530%_
           _%update105531%_
           _%default105532%_))))
    (define hash-update!__0
      (lambda (_%h105553%_ _%key105554%_ _%update105555%_)
        (let ((_%default105557%_ '#!void))
          (hash-update!__%
           _%h105553%_
           _%key105554%_
           _%update105555%_
           _%default105557%_))))
    (define hash-update!
      (lambda _g109233_
        (let ((_g109232_ (let () (declare (not safe)) (##length _g109233_))))
          (cond ((let () (declare (not safe)) (##fx= _g109232_ 3))
                 (apply hash-update!__0 _g109233_))
                ((let () (declare (not safe)) (##fx= _g109232_ 4))
                 (apply hash-update!__% _g109233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g109233_))))))
    (define __hash-update!__%
      (lambda (_%h105499%_ _%key105500%_ _%update105501%_ _%default105502%_)
        (let ((_%h105505%_ _%h105499%_))
          (HashTable-update!
           _%h105505%_
           _%key105500%_
           _%update105501%_
           _%default105502%_))))
    (define __hash-update!__0
      (lambda (_%h105517%_ _%key105518%_ _%update105519%_)
        (let ((_%default105521%_ '#!void))
          (__hash-update!__%
           _%h105517%_
           _%key105518%_
           _%update105519%_
           _%default105521%_))))
    (define __hash-update!
      (lambda _g109235_
        (let ((_g109234_ (let () (declare (not safe)) (##length _g109235_))))
          (cond ((let () (declare (not safe)) (##fx= _g109234_ 3))
                 (apply __hash-update!__0 _g109235_))
                ((let () (declare (not safe)) (##fx= _g109234_ 4))
                 (apply __hash-update!__% _g109235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g109235_))))))
    (define hash-remove!
      (lambda (_%h105479%_ _%key105480%_)
        (let* ((_%h105486%_
                (let ((_%$obj105483%_ _%h105479%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105483%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105483%_)))
                           '#t)
                      _%$obj105483%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105483%_)))))
               (_%h105488%_ _%h105486%_))
          (__hash-remove! _%h105488%_ _%key105480%_))))
    (define __hash-remove!
      (lambda (_%h105466%_ _%key105467%_)
        (let ((_%h105470%_ _%h105466%_))
          (&HashTable-delete! _%h105470%_ _%key105467%_))))
    (define hash-key?
      (lambda (_%h105447%_ _%k105448%_)
        (let* ((_%h105454%_
                (let ((_%$obj105451%_ _%h105447%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105451%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105451%_)))
                           '#t)
                      _%$obj105451%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105451%_)))))
               (_%h105456%_ _%h105454%_))
          (__hash-key? _%h105456%_ _%k105448%_))))
    (define __hash-key?
      (lambda (_%h105434%_ _%k105435%_)
        (let ((_%h105438%_ _%h105434%_))
          (not (eq? (&HashTable-ref _%h105438%_ _%k105435%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h105416%_)
        (let* ((_%h105422%_
                (let ((_%$obj105419%_ _%h105416%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105419%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105419%_)))
                           '#t)
                      _%$obj105419%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105419%_)))))
               (_%h105424%_ _%h105422%_))
          (__hash->list _%h105424%_))))
    (define __hash->list
      (lambda (_%h105399%_)
        (let* ((_%h105402%_ _%h105399%_) (_%lst105411%_ '()))
          (&HashTable-for-each
           _%h105402%_
           (lambda (_%k105413%_ _%v105414%_)
             (set! _%lst105411%_
                   (cons (cons _%k105413%_ _%v105414%_) _%lst105411%_))))
          _%lst105411%_)))
    (define hash->plist
      (lambda (_%h105381%_)
        (let* ((_%h105387%_
                (let ((_%$obj105384%_ _%h105381%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105384%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105384%_)))
                           '#t)
                      _%$obj105384%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105384%_)))))
               (_%h105389%_ _%h105387%_))
          (__hash->plist _%h105389%_))))
    (define __hash->plist
      (lambda (_%h105364%_)
        (let* ((_%h105367%_ _%h105364%_) (_%lst105376%_ '()))
          (&HashTable-for-each
           _%h105367%_
           (lambda (_%k105378%_ _%v105379%_)
             (set! _%lst105376%_
                   (cons _%k105378%_ (cons _%v105379%_ _%lst105376%_)))))
          _%lst105376%_)))
    (define hash-for-each
      (lambda (_%proc105335%_ _%h105336%_)
        (if (procedure? _%proc105335%_)
            (let* ((_%proc105340%_ _%proc105335%_)
                   (_%h105352%_
                    (let ((_%$obj105349%_ _%h105336%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj105349%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj105349%_)))
                               '#t)
                          _%$obj105349%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj105349%_)))))
                   (_%h105354%_ _%h105352%_))
              (__hash-for-each _%proc105340%_ _%h105354%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.22-568.26"
               'contract:
               'procedure?
               'value:
               _%proc105335%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc105314%_ _%h105315%_)
        (let* ((_%proc105318%_ _%proc105314%_) (_%h105326%_ _%h105315%_))
          (&HashTable-for-each _%h105326%_ _%proc105318%_))))
    (define hash-map
      (lambda (_%proc105285%_ _%h105286%_)
        (if (procedure? _%proc105285%_)
            (let* ((_%proc105290%_ _%proc105285%_)
                   (_%h105302%_
                    (let ((_%$obj105299%_ _%h105286%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj105299%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj105299%_)))
                               '#t)
                          _%$obj105299%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj105299%_)))))
                   (_%h105304%_ _%h105302%_))
              (__hash-map _%proc105290%_ _%h105304%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@571.17-571.21"
               'contract:
               'procedure?
               'value:
               _%proc105285%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc105259%_ _%h105260%_)
        (let* ((_%proc105263%_ _%proc105259%_)
               (_%h105271%_ _%h105260%_)
               (_%result105280%_ '()))
          (&HashTable-for-each
           _%h105271%_
           (lambda (_%k105282%_ _%v105283%_)
             (set! _%result105280%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc105263%_ _%k105282%_ _%v105283%_))
                         _%result105280%_))))
          _%result105280%_)))
    (define hash-fold
      (lambda (_%proc105229%_ _%iv105230%_ _%h105231%_)
        (if (procedure? _%proc105229%_)
            (let* ((_%proc105235%_ _%proc105229%_)
                   (_%h105247%_
                    (let ((_%$obj105244%_ _%h105231%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj105244%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj105244%_)))
                               '#t)
                          _%$obj105244%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj105244%_)))))
                   (_%h105249%_ _%h105247%_))
              (__hash-fold _%proc105235%_ _%iv105230%_ _%h105249%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@576.18-576.22"
               'contract:
               'procedure?
               'value:
               _%proc105229%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc105202%_ _%iv105203%_ _%h105204%_)
        (let* ((_%proc105207%_ _%proc105202%_)
               (_%h105215%_ _%h105204%_)
               (_%result105224%_ _%iv105203%_))
          (&HashTable-for-each
           _%h105215%_
           (lambda (_%k105226%_ _%v105227%_)
             (set! _%result105224%_
                   (let ()
                     (declare (not safe))
                     (_%proc105207%_
                      _%k105226%_
                      _%v105227%_
                      _%result105224%_)))))
          _%result105224%_)))
    (define hash-find__%
      (lambda (_%proc105160%_ _%h105161%_ _%default-value105162%_)
        (if (procedure? _%proc105160%_)
            (let* ((_%proc105166%_ _%proc105160%_)
                   (_%h105178%_
                    (let ((_%$obj105175%_ _%h105161%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj105175%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj105175%_)))
                               '#t)
                          _%$obj105175%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj105175%_)))))
                   (_%h105180%_ _%h105178%_))
              (__hash-find__%
               _%proc105166%_
               _%h105180%_
               _%default-value105162%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@581.18-581.22"
               'contract:
               'procedure?
               'value:
               _%proc105160%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc105193%_ _%h105194%_)
        (let ((_%default-value105196%_ '#f))
          (hash-find__% _%proc105193%_ _%h105194%_ _%default-value105196%_))))
    (define hash-find
      (lambda _g109237_
        (let ((_g109236_ (let () (declare (not safe)) (##length _g109237_))))
          (cond ((let () (declare (not safe)) (##fx= _g109236_ 2))
                 (apply hash-find__0 _g109237_))
                ((let () (declare (not safe)) (##fx= _g109236_ 3))
                 (apply hash-find__% _g109237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g109237_))))))
    (define __hash-find__%
      (lambda (_%proc105117%_ _%h105118%_ _%default-value105119%_)
        (let* ((_%proc105122%_ _%proc105117%_)
               (_%h105130%_ _%h105118%_)
               (__tmp109238
                (lambda (_%return105139%_)
                  (&HashTable-for-each
                   _%h105130%_
                   (lambda (_%k105141%_ _%v105142%_)
                     (let ((_%$e105144%_
                            (let ()
                              (declare (not safe))
                              (_%proc105122%_ _%k105141%_ _%v105142%_))))
                       (if _%$e105144%_
                           (_%return105139%_ _%$e105144%_)
                           '#!void))))
                  _%default-value105119%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp109238))))
    (define __hash-find__0
      (lambda (_%proc105150%_ _%h105151%_)
        (let ((_%default-value105153%_ '#f))
          (__hash-find__%
           _%proc105150%_
           _%h105151%_
           _%default-value105153%_))))
    (define __hash-find
      (lambda _g109240_
        (let ((_g109239_ (let () (declare (not safe)) (##length _g109240_))))
          (cond ((let () (declare (not safe)) (##fx= _g109239_ 2))
                 (apply __hash-find__0 _g109240_))
                ((let () (declare (not safe)) (##fx= _g109239_ 3))
                 (apply __hash-find__% _g109240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g109240_))))))
    (define hash-keys
      (lambda (_%h105098%_)
        (let* ((_%h105104%_
                (let ((_%$obj105101%_ _%h105098%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105101%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105101%_)))
                           '#t)
                      _%$obj105101%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105101%_)))))
               (_%h105106%_ _%h105104%_))
          (__hash-keys _%h105106%_))))
    (define __hash-keys
      (lambda (_%h105081%_)
        (let* ((_%h105084%_ _%h105081%_) (_%result105093%_ '()))
          (&HashTable-for-each
           _%h105084%_
           (lambda (_%k105095%_ _%v105096%_)
             (set! _%result105093%_ (cons _%k105095%_ _%result105093%_))))
          _%result105093%_)))
    (define hash-values
      (lambda (_%h105063%_)
        (let* ((_%h105069%_
                (let ((_%$obj105066%_ _%h105063%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105066%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105066%_)))
                           '#t)
                      _%$obj105066%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105066%_)))))
               (_%h105071%_ _%h105069%_))
          (__hash-values _%h105071%_))))
    (define __hash-values
      (lambda (_%h105046%_)
        (let* ((_%h105049%_ _%h105046%_) (_%result105058%_ '()))
          (&HashTable-for-each
           _%h105049%_
           (lambda (_%k105060%_ _%v105061%_)
             (set! _%result105058%_ (cons _%v105061%_ _%result105058%_))))
          _%result105058%_)))
    (define hash-copy
      (lambda (_%h105028%_)
        (let* ((_%h105034%_
                (let ((_%$obj105031%_ _%h105028%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105031%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105031%_)))
                           '#t)
                      _%$obj105031%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105031%_)))))
               (_%h105036%_ _%h105034%_))
          (__hash-copy _%h105036%_))))
    (define __hash-copy
      (lambda (_%h105016%_)
        (let ((_%h105019%_ _%h105016%_)) (__HashTable-copy _%h105019%_))))
    (define hash-clear!
      (lambda (_%h104998%_)
        (let* ((_%h105004%_
                (let ((_%$obj105001%_ _%h104998%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105001%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105001%_)))
                           '#t)
                      _%$obj105001%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105001%_)))))
               (_%h105006%_ _%h105004%_))
          (__hash-clear! _%h105006%_))))
    (define __hash-clear!
      (lambda (_%h104986%_)
        (let ((_%h104989%_ _%h104986%_)) (&HashTable-clear! _%h104989%_))))
    (define hash-merge
      (lambda (_%h104967%_ . _%rest104968%_)
        (let* ((_%h104974%_
                (let ((_%$obj104971%_ _%h104967%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104971%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104971%_)))
                           '#t)
                      _%$obj104971%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104971%_)))))
               (_%h104976%_ _%h104974%_))
          (declare (not safe))
          (##apply __hash-merge _%h104976%_ _%rest104968%_))))
    (define __hash-merge
      (lambda (_%h104952%_ . _%rest104953%_)
        (let* ((_%h104956%_ _%h104952%_)
               (_%copy104965%_ (__HashTable-copy _%h104956%_)))
          (apply hash-merge! _%copy104965%_ _%rest104953%_)
          _%copy104965%_)))
    (define hash-merge!
      (lambda (_%h104933%_ . _%rest104934%_)
        (let* ((_%h104940%_
                (let ((_%$obj104937%_ _%h104933%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104937%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104937%_)))
                           '#t)
                      _%$obj104937%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104937%_)))))
               (_%h104942%_ _%h104940%_))
          (declare (not safe))
          (##apply __hash-merge! _%h104942%_ _%rest104934%_))))
    (define __hash-merge!
      (lambda (_%h104896%_ . _%rest104897%_)
        (let ((_%h104900%_ _%h104896%_))
          (let ((__tmp109241
                 (lambda (_%hr104909%_)
                   (let* ((_%hr104915%_
                           (let ((_%$obj104912%_ _%hr104909%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj104912%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj104912%_)))
                                      '#t)
                                 _%$obj104912%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj104912%_)))))
                          (_%hr104917%_ _%hr104915%_))
                     (&HashTable-for-each
                      _%hr104917%_
                      (lambda (_%k104930%_ _%v104931%_)
                        (if (__hash-key? _%h104900%_ _%k104930%_)
                            '#!void
                            (&HashTable-set!
                             _%h104900%_
                             _%k104930%_
                             _%v104931%_))))))))
            (declare (not safe))
            (##for-each __tmp109241 _%rest104897%_))
          _%h104900%_)))))
