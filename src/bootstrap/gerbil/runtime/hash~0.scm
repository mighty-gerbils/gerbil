(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712643207)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106190 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106190
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106170%_
        (apply make-instance UnboundKeyError::t _%$args106170%_)))
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
      (lambda (_%where106044%_ _%message106045%_ . _%irritants106046%_)
        (let ((__tmp106191
               (let ((__obj106184
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106184
                  _%message106045%_
                  'where:
                  _%where106044%_
                  'irritants:
                  _%irritants106046%_)
                 __obj106184)))
          (declare (not safe))
          (raise __tmp106191))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106192 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106192
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
      (lambda (_%obj106042%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106042%_))))
    (define try-HashTable
      (lambda (_%obj106040%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106040%_))))
    (define HashTable?
      (lambda (_%obj106038%_)
        (let ((__tmp106193
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106038%_ __tmp106193))))
    (define is-HashTable?
      (lambda (_%obj106036%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106036%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106020%_)
        (let* ((_%self106025%_
                (let ((_%$obj106022%_ _%self106020%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106022%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106022%_)))
                           '#t)
                      _%$obj106022%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106022%_)))))
               (_%self106027%_ _%self106025%_))
          (&HashTable-clear! _%self106027%_))))
    (define &HashTable-clear!
      (lambda (_%self106005%_)
        (let ((_%self106007%_ _%self106005%_))
          (declare (not safe))
          (let ((_%obj106017%_
                 (##unchecked-structure-ref _%self106007%_ '1 '#f 'clear!))
                (_%f106018%_
                 (##unchecked-structure-ref _%self106007%_ '2 '#f 'clear!)))
            (_%f106018%_ _%obj106017%_)))))
    (define HashTable-copy
      (lambda (_%self105989%_)
        (let* ((_%self105994%_
                (let ((_%$obj105991%_ _%self105989%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105991%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105991%_)))
                           '#t)
                      _%$obj105991%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105991%_)))))
               (_%self105996%_ _%self105994%_))
          (__HashTable-copy _%self105996%_))))
    (define __HashTable-copy
      (lambda (_%self105976%_)
        (let* ((_%self105978%_ _%self105976%_)
               (_%$obj105986%_ (&HashTable-copy _%self105978%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj105986%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj105986%_)))
                   '#t)
              _%$obj105986%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj105986%_))))))
    (define &HashTable-copy
      (lambda (_%self105961%_)
        (let ((_%self105963%_ _%self105961%_))
          (declare (not safe))
          (let ((_%obj105973%_
                 (##unchecked-structure-ref _%self105963%_ '1 '#f 'copy))
                (_%f105974%_
                 (##unchecked-structure-ref _%self105963%_ '3 '#f 'copy)))
            (_%f105974%_ _%obj105973%_)))))
    (define HashTable-delete!
      (lambda (_%self105944%_ _%key105945%_)
        (let* ((_%self105950%_
                (let ((_%$obj105947%_ _%self105944%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105947%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105947%_)))
                           '#t)
                      _%$obj105947%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105947%_)))))
               (_%self105952%_ _%self105950%_))
          (&HashTable-delete! _%self105952%_ _%key105945%_))))
    (define &HashTable-delete!
      (lambda (_%self105928%_ _%key105929%_)
        (let ((_%self105931%_ _%self105928%_))
          (declare (not safe))
          (let ((_%obj105941%_
                 (##unchecked-structure-ref _%self105931%_ '1 '#f 'delete!))
                (_%f105942%_
                 (##unchecked-structure-ref _%self105931%_ '4 '#f 'delete!)))
            (_%f105942%_ _%obj105941%_ _%key105929%_)))))
    (define HashTable-for-each
      (lambda (_%self105901%_ _%proc105902%_)
        (let* ((_%self105907%_
                (let ((_%$obj105904%_ _%self105901%_))
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
          (if (procedure? _%proc105902%_)
              (let ((_%proc105918%_ _%proc105902%_))
                (&HashTable-for-each _%self105909%_ _%proc105918%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc105902%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self105877%_ _%proc105878%_)
        (let* ((_%self105880%_ _%self105877%_) (_%proc105887%_ _%proc105878%_))
          (declare (not safe))
          (let ((_%obj105898%_
                 (##unchecked-structure-ref _%self105880%_ '1 '#f 'for-each))
                (_%f105899%_
                 (##unchecked-structure-ref _%self105880%_ '5 '#f 'for-each)))
            (_%f105899%_ _%obj105898%_ _%proc105887%_)))))
    (define HashTable-length
      (lambda (_%self105861%_)
        (let* ((_%self105866%_
                (let ((_%$obj105863%_ _%self105861%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105863%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105863%_)))
                           '#t)
                      _%$obj105863%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105863%_)))))
               (_%self105868%_ _%self105866%_))
          (__HashTable-length _%self105868%_))))
    (define __HashTable-length
      (lambda (_%self105848%_)
        (let* ((_%self105850%_ _%self105848%_)
               (_%val105858%_ (&HashTable-length _%self105850%_)))
          (if (fixnum? _%val105858%_)
              _%val105858%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val105858%_))))))
    (define &HashTable-length
      (lambda (_%self105833%_)
        (let ((_%self105835%_ _%self105833%_))
          (declare (not safe))
          (let ((_%obj105845%_
                 (##unchecked-structure-ref _%self105835%_ '1 '#f 'length))
                (_%f105846%_
                 (##unchecked-structure-ref _%self105835%_ '6 '#f 'length)))
            (_%f105846%_ _%obj105845%_)))))
    (define HashTable-ref
      (lambda (_%self105815%_ _%key105816%_ _%default105817%_)
        (let* ((_%self105822%_
                (let ((_%$obj105819%_ _%self105815%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105819%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105819%_)))
                           '#t)
                      _%$obj105819%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105819%_)))))
               (_%self105824%_ _%self105822%_))
          (&HashTable-ref _%self105824%_ _%key105816%_ _%default105817%_))))
    (define &HashTable-ref
      (lambda (_%self105798%_ _%key105799%_ _%default105800%_)
        (let ((_%self105802%_ _%self105798%_))
          (declare (not safe))
          (let ((_%obj105812%_
                 (##unchecked-structure-ref _%self105802%_ '1 '#f 'ref))
                (_%f105813%_
                 (##unchecked-structure-ref _%self105802%_ '7 '#f 'ref)))
            (_%f105813%_ _%obj105812%_ _%key105799%_ _%default105800%_)))))
    (define HashTable-set!
      (lambda (_%self105780%_ _%key105781%_ _%value105782%_)
        (let* ((_%self105787%_
                (let ((_%$obj105784%_ _%self105780%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105784%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105784%_)))
                           '#t)
                      _%$obj105784%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105784%_)))))
               (_%self105789%_ _%self105787%_))
          (&HashTable-set! _%self105789%_ _%key105781%_ _%value105782%_))))
    (define &HashTable-set!
      (lambda (_%self105763%_ _%key105764%_ _%value105765%_)
        (let ((_%self105767%_ _%self105763%_))
          (declare (not safe))
          (let ((_%obj105777%_
                 (##unchecked-structure-ref _%self105767%_ '1 '#f 'set!))
                (_%f105778%_
                 (##unchecked-structure-ref _%self105767%_ '8 '#f 'set!)))
            (_%f105778%_ _%obj105777%_ _%key105764%_ _%value105765%_)))))
    (define HashTable-update!
      (lambda (_%self105734%_ _%key105735%_ _%proc105736%_ _%default105737%_)
        (let* ((_%self105742%_
                (let ((_%$obj105739%_ _%self105734%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105739%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105739%_)))
                           '#t)
                      _%$obj105739%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105739%_)))))
               (_%self105744%_ _%self105742%_))
          (if (procedure? _%proc105736%_)
              (let ((_%proc105753%_ _%proc105736%_))
                (&HashTable-update!
                 _%self105744%_
                 _%key105735%_
                 _%proc105753%_
                 _%default105737%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc105736%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self105706%_ _%key105707%_ _%proc105708%_ _%default105709%_)
        (let* ((_%self105711%_ _%self105706%_) (_%proc105718%_ _%proc105708%_))
          (declare (not safe))
          (let ((_%obj105729%_
                 (##unchecked-structure-ref _%self105711%_ '1 '#f 'update!))
                (_%f105731%_
                 (##unchecked-structure-ref _%self105711%_ '9 '#f 'update!)))
            (_%f105731%_
             _%obj105729%_
             _%key105707%_
             _%proc105718%_
             _%default105709%_)))))
    (define Locker::t
      (let ((__tmp106194 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106194
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
      (lambda (_%obj105704%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj105704%_))))
    (define try-Locker
      (lambda (_%obj105702%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj105702%_))))
    (define Locker?
      (lambda (_%obj105700%_)
        (let ((__tmp106195
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj105700%_ __tmp106195))))
    (define is-Locker?
      (lambda (_%obj105698%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj105698%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self105682%_)
        (let* ((_%self105687%_
                (let ((_%$obj105684%_ _%self105682%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105684%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105684%_)))
                           '#t)
                      _%$obj105684%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105684%_)))))
               (_%self105689%_ _%self105687%_))
          (&Locker-read-lock! _%self105689%_))))
    (define &Locker-read-lock!
      (lambda (_%self105667%_)
        (let ((_%self105669%_ _%self105667%_))
          (declare (not safe))
          (let ((_%obj105679%_
                 (##unchecked-structure-ref _%self105669%_ '1 '#f 'read-lock!))
                (_%f105680%_
                 (##unchecked-structure-ref
                  _%self105669%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f105680%_ _%obj105679%_)))))
    (define Locker-read-unlock!
      (lambda (_%self105651%_)
        (let* ((_%self105656%_
                (let ((_%$obj105653%_ _%self105651%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105653%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105653%_)))
                           '#t)
                      _%$obj105653%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105653%_)))))
               (_%self105658%_ _%self105656%_))
          (&Locker-read-unlock! _%self105658%_))))
    (define &Locker-read-unlock!
      (lambda (_%self105636%_)
        (let ((_%self105638%_ _%self105636%_))
          (declare (not safe))
          (let ((_%obj105648%_
                 (##unchecked-structure-ref
                  _%self105638%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f105649%_
                 (##unchecked-structure-ref
                  _%self105638%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f105649%_ _%obj105648%_)))))
    (define Locker-write-lock!
      (lambda (_%self105620%_)
        (let* ((_%self105625%_
                (let ((_%$obj105622%_ _%self105620%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105622%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105622%_)))
                           '#t)
                      _%$obj105622%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105622%_)))))
               (_%self105627%_ _%self105625%_))
          (&Locker-write-lock! _%self105627%_))))
    (define &Locker-write-lock!
      (lambda (_%self105605%_)
        (let ((_%self105607%_ _%self105605%_))
          (declare (not safe))
          (let ((_%obj105617%_
                 (##unchecked-structure-ref
                  _%self105607%_
                  '1
                  '#f
                  'write-lock!))
                (_%f105618%_
                 (##unchecked-structure-ref
                  _%self105607%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f105618%_ _%obj105617%_)))))
    (define Locker-write-unlock!
      (lambda (_%self105589%_)
        (let* ((_%self105594%_
                (let ((_%$obj105591%_ _%self105589%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105591%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105591%_)))
                           '#t)
                      _%$obj105591%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj105591%_)))))
               (_%self105596%_ _%self105594%_))
          (&Locker-write-unlock! _%self105596%_))))
    (define &Locker-write-unlock!
      (lambda (_%self105572%_)
        (let ((_%self105574%_ _%self105572%_))
          (declare (not safe))
          (let ((_%obj105584%_
                 (##unchecked-structure-ref
                  _%self105574%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f105586%_
                 (##unchecked-structure-ref
                  _%self105574%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f105586%_ _%obj105584%_)))))
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
      (lambda (_%table105565%_
               _%key105566%_
               _%update105567%_
               _%default105568%_)
        (let ((_%result105570%_
               (table-ref _%table105565%_ _%key105566%_ _%default105568%_)))
          (table-set!
           _%table105565%_
           _%key105566%_
           (_%update105567%_ _%default105568%_)))))
    (define gambit-table-for-each
      (lambda (_%table105562%_ _%proc105563%_)
        (table-for-each _%proc105563%_ _%table105562%_)))
    (define gambit-table-clear!
      (lambda (_%table105560%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table105560%_ '0 '5 '#f '#f))))
    (let ((__tmp106196 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106196 'ref table-ref))
    (let ((__tmp106197 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106197 'set! table-set!))
    (let ((__tmp106198 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106198 'update! gambit-table-update!))
    (let ((__tmp106199 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106199 'delete! table-set!))
    (let ((__tmp106200 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106200 'for-each gambit-table-for-each))
    (let ((__tmp106201 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106201 'length table-length))
    (let ((__tmp106202 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106202 'copy table-copy))
    (let ((__tmp106203 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106203 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots105542%_ '(table count free hash test seed))
             (_%slot-vector105544%_ (list->vector (cons '#f _%slots105542%_)))
             (_%slot-table105551%_
              (let ((_%slot-table105546%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106206
                       (lambda (_%slot105548%_ _%field105549%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105546%_
                            _%slot105548%_
                            _%field105549%_))
                         (let ((__tmp106207
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105548%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105546%_
                            __tmp106207
                            _%field105549%_))))
                      (__tmp106204
                       (let ((__tmp106205
                              (let ()
                                (declare (not safe))
                                (##length _%slots105542%_))))
                         (declare (not safe))
                         (##iota __tmp106205 '1))))
                  (declare (not safe))
                  (##for-each __tmp106206 _%slots105542%_ __tmp106204))
                _%slot-table105546%_))
             (_%flags105553%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105555%_ '#())
             (_%properties105557%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105542%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106208 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags105553%_
         __table::t
         _%fields105555%_
         __tmp106208
         _%slot-vector105544%_
         _%slot-table105551%_
         _%properties105557%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots105524%_ '(gcht immediate))
             (_%slot-vector105526%_ (list->vector (cons '#f _%slots105524%_)))
             (_%slot-table105533%_
              (let ((_%slot-table105528%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106211
                       (lambda (_%slot105530%_ _%field105531%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105528%_
                            _%slot105530%_
                            _%field105531%_))
                         (let ((__tmp106212
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot105530%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table105528%_
                            __tmp106212
                            _%field105531%_))))
                      (__tmp106209
                       (let ((__tmp106210
                              (let ()
                                (declare (not safe))
                                (##length _%slots105524%_))))
                         (declare (not safe))
                         (##iota __tmp106210 '1))))
                  (declare (not safe))
                  (##for-each __tmp106211 _%slots105524%_ __tmp106209))
                _%slot-table105528%_))
             (_%flags105535%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields105537%_ '#())
             (_%properties105539%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots105524%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106213 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags105535%_
         __gc-table::t
         _%fields105537%_
         __tmp106213
         _%slot-vector105526%_
         _%slot-table105533%_
         _%properties105539%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp106215 (list))
            (__tmp106214
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106215
         '(table lock)
         __tmp106214
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args105521%_
        (apply make-instance locked-hash-table::t _%$args105521%_)))
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
      (let ((__tmp106217 (list))
            (__tmp106216
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106217
         '(table key-check)
         __tmp106216
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args105518%_
        (apply make-instance checked-hash-table::t _%$args105518%_)))
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
      (let ((__tmp106219 (list hash-table::t))
            (__tmp106218 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106219
         '()
         __tmp106218
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args105515%_
        (apply make-instance eq-hash-table::t _%$args105515%_)))
    (define eqv-hash-table::t
      (let ((__tmp106221 (list hash-table::t))
            (__tmp106220 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106221
         '()
         __tmp106220
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args105512%_
        (apply make-instance eqv-hash-table::t _%$args105512%_)))
    (define symbol-hash-table::t
      (let ((__tmp106223 (list hash-table::t))
            (__tmp106222 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106223
         '()
         __tmp106222
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args105509%_
        (apply make-instance symbol-hash-table::t _%$args105509%_)))
    (define string-hash-table::t
      (let ((__tmp106225 (list hash-table::t))
            (__tmp106224 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106225
         '()
         __tmp106224
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args105506%_
        (apply make-instance string-hash-table::t _%$args105506%_)))
    (define immediate-hash-table::t
      (let ((__tmp106227 (list hash-table::t))
            (__tmp106226 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106227
         '()
         __tmp106226
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args105503%_
        (apply make-instance immediate-hash-table::t _%$args105503%_)))
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
      (lambda (_%obj105501%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj105501%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj105499%_) (is-HashTable? _%obj105499%_)))
    (define _%locked-hash-table::ref101554%_
      (lambda (_%self105475%_ _%key105477%_ _%default105478%_)
        (let ((_%self105481%_ _%self105475%_))
          (let ((_%h105491%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105481%_ '1 '#f '#f)))
                (_%l105493%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105481%_ '2 '#f '#f))))
            (let ((__tmp106230 (lambda () (&Locker-read-lock! _%l105493%_)))
                  (__tmp106229
                   (lambda ()
                     (&HashTable-ref
                      _%h105491%_
                      _%key105477%_
                      _%default105478%_)))
                  (__tmp106228 (lambda () (&Locker-read-unlock! _%l105493%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106230 __tmp106229 __tmp106228))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref101554%_
       '#f))
    (define _%locked-hash-table::set!101556%_
      (lambda (_%self105328%_ _%key105330%_ _%value105331%_)
        (let ((_%self105334%_ _%self105328%_))
          (let ((_%h105344%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105334%_ '1 '#f '#f)))
                (_%l105346%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105334%_ '2 '#f '#f))))
            (let ((__tmp106233 (lambda () (&Locker-write-lock! _%l105346%_)))
                  (__tmp106232
                   (lambda ()
                     (&HashTable-set!
                      _%h105344%_
                      _%key105330%_
                      _%value105331%_)))
                  (__tmp106231
                   (lambda () (&Locker-write-unlock! _%l105346%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106233 __tmp106232 __tmp106231))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!101556%_
       '#f))
    (define _%locked-hash-table::update!101558%_
      (lambda (_%self105180%_ _%key105182%_ _%update105183%_ _%default105184%_)
        (let ((_%self105187%_ _%self105180%_))
          (let ((_%h105197%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105187%_ '1 '#f '#f)))
                (_%l105199%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105187%_ '2 '#f '#f))))
            (let ((__tmp106236 (lambda () (&Locker-write-lock! _%l105199%_)))
                  (__tmp106235
                   (lambda ()
                     (&HashTable-update!
                      _%h105197%_
                      _%key105182%_
                      _%update105183%_
                      _%default105184%_)))
                  (__tmp106234
                   (lambda () (&Locker-write-unlock! _%l105199%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106236 __tmp106235 __tmp106234))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!101558%_
       '#f))
    (define _%locked-hash-table::delete!101560%_
      (lambda (_%self105034%_ _%key105036%_)
        (let ((_%self105039%_ _%self105034%_))
          (let ((_%h105049%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105039%_ '1 '#f '#f)))
                (_%l105051%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105039%_ '2 '#f '#f))))
            (let ((__tmp106239 (lambda () (&Locker-write-lock! _%l105051%_)))
                  (__tmp106238
                   (lambda () (&HashTable-delete! _%h105049%_ _%key105036%_)))
                  (__tmp106237
                   (lambda () (&Locker-write-unlock! _%l105051%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106239 __tmp106238 __tmp106237))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!101560%_
       '#f))
    (define _%locked-hash-table::for-each101562%_
      (lambda (_%self104888%_ _%proc104890%_)
        (let ((_%self104893%_ _%self104888%_))
          (let ((_%h104903%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104893%_ '1 '#f '#f)))
                (_%l104905%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104893%_ '2 '#f '#f))))
            (let ((__tmp106242 (lambda () (&Locker-read-lock! _%l104905%_)))
                  (__tmp106241
                   (lambda ()
                     (&HashTable-for-each _%h104903%_ _%proc104890%_)))
                  (__tmp106240 (lambda () (&Locker-read-unlock! _%l104905%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106242 __tmp106241 __tmp106240))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each101562%_
       '#f))
    (define _%locked-hash-table::length101564%_
      (lambda (_%self104743%_)
        (let ((_%self104747%_ _%self104743%_))
          (let ((_%h104757%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104747%_ '1 '#f '#f)))
                (_%l104759%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104747%_ '2 '#f '#f))))
            (let ((__tmp106245 (lambda () (&Locker-read-lock! _%l104759%_)))
                  (__tmp106244 (lambda () (&HashTable-length _%h104757%_)))
                  (__tmp106243 (lambda () (&Locker-read-unlock! _%l104759%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106245 __tmp106244 __tmp106243))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length101564%_
       '#f))
    (define _%locked-hash-table::copy101566%_
      (lambda (_%self104598%_)
        (let ((_%self104602%_ _%self104598%_))
          (let ((_%h104612%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104602%_ '1 '#f '#f)))
                (_%l104614%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104602%_ '2 '#f '#f))))
            (let ((__tmp106248 (lambda () (&Locker-read-lock! _%l104614%_)))
                  (__tmp106247 (lambda () (&HashTable-copy _%h104612%_)))
                  (__tmp106246 (lambda () (&Locker-read-unlock! _%l104614%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106248 __tmp106247 __tmp106246))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy101566%_
       '#f))
    (define _%locked-hash-table::clear!101568%_
      (lambda (_%self104453%_)
        (let ((_%self104457%_ _%self104453%_))
          (let ((_%h104467%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104457%_ '1 '#f '#f)))
                (_%l104469%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104457%_ '2 '#f '#f))))
            (let ((__tmp106251 (lambda () (&Locker-write-lock! _%l104469%_)))
                  (__tmp106250 (lambda () (&HashTable-clear! _%h104467%_)))
                  (__tmp106249
                   (lambda () (&Locker-write-unlock! _%l104469%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106251 __tmp106250 __tmp106249))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!101568%_
       '#f))
    (let ((__tmp106252 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106252 'read-lock! mutex-lock!))
    (let ((__tmp106253 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106253 'read-unlock! mutex-unlock!))
    (let ((__tmp106254 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106254 'write-lock! mutex-lock!))
    (let ((__tmp106255 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106255 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref101846%_
      (lambda (_%self104306%_ _%key104307%_ _%default104308%_)
        (let ((_%self104311%_ _%self104306%_))
          (let ((_%h104321%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104311%_ '1 '#f '#f)))
                (_%key?104323%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104311%_ '2 '#f '#f))))
            ((lambda (_%g104325104327%_)
               (if (_%g104325104327%_ _%key104307%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104307%_))))
             _%key?104323%_)
            (&HashTable-ref _%h104321%_ _%key104307%_ _%default104308%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref101846%_
       '#f))
    (define _%checked-hash-table::set!101848%_
      (lambda (_%self104159%_ _%key104160%_ _%value104161%_)
        (let ((_%self104164%_ _%self104159%_))
          (let ((_%h104174%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104164%_ '1 '#f '#f)))
                (_%key?104176%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104164%_ '2 '#f '#f))))
            ((lambda (_%g104178104180%_)
               (if (_%g104178104180%_ _%key104160%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104160%_))))
             _%key?104176%_)
            (&HashTable-set! _%h104174%_ _%key104160%_ _%value104161%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!101848%_
       '#f))
    (define _%checked-hash-table::update!101850%_
      (lambda (_%self104013%_ _%key104014%_ _%update104015%_ _%default104016%_)
        (let ((_%self104019%_ _%self104013%_))
          (let ((_%h104029%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104019%_ '1 '#f '#f)))
                (_%key?104031%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104019%_ '2 '#f '#f))))
            ((lambda (_%key?104034%_)
               (if (_%key?104034%_ _%key104014%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104014%_)))
               (if (procedure? _%update104015%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104015%_))))
             _%key?104031%_)
            (&HashTable-update!
             _%h104029%_
             _%key104014%_
             _%update104015%_
             _%default104016%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!101850%_
       '#f))
    (define _%checked-hash-table::delete!101852%_
      (lambda (_%self103867%_ _%key103868%_)
        (let ((_%self103871%_ _%self103867%_))
          (let ((_%h103881%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103871%_ '1 '#f '#f)))
                (_%key?103883%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103871%_ '2 '#f '#f))))
            ((lambda (_%g103885103887%_)
               (if (_%g103885103887%_ _%key103868%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key103868%_))))
             _%key?103883%_)
            (&HashTable-delete! _%h103881%_ _%key103868%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!101852%_
       '#f))
    (define _%checked-hash-table::for-each101854%_
      (lambda (_%self103723%_ _%proc103724%_)
        (let ((_%self103727%_ _%self103723%_))
          (let ((_%h103737%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103727%_ '1 '#f '#f)))
                (_%key?103739%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103727%_ '2 '#f '#f))))
            ((lambda (_%_103742%_)
               (if (procedure? _%proc103724%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc103724%_))))
             _%key?103739%_)
            (&HashTable-for-each _%h103737%_ _%proc103724%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each101854%_
       '#f))
    (define _%checked-hash-table::length101856%_
      (lambda (_%self103582%_)
        (let ((_%self103585%_ _%self103582%_))
          (let ((_%h103595%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103585%_ '1 '#f '#f)))
                (_%key?103597%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103585%_ '2 '#f '#f))))
            (&HashTable-length _%h103595%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length101856%_
       '#f))
    (define _%checked-hash-table::copy101858%_
      (lambda (_%self103441%_)
        (let ((_%self103444%_ _%self103441%_))
          (let ((_%h103454%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103444%_ '1 '#f '#f)))
                (_%key?103456%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103444%_ '2 '#f '#f))))
            (&HashTable-copy _%h103454%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy101858%_
       '#f))
    (define _%checked-hash-table::clear!101860%_
      (lambda (_%self103300%_)
        (let ((_%self103303%_ _%self103300%_))
          (let ((_%h103313%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103303%_ '1 '#f '#f)))
                (_%key?103315%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103303%_ '2 '#f '#f))))
            (&HashTable-clear! _%h103313%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!101860%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103170%_
               _%count103171%_
               _%free103172%_
               _%hash103173%_
               _%test103174%_
               _%seed103175%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103170%_
           _%count103171%_
           _%free103172%_
           _%hash103173%_
           _%test103174%_
           _%seed103175%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords102993%_
               _%size-hint102983102994%_
               _%seed102984102996%_
               _%test102985102998%_
               _%hash102986103000%_
               _%lock102987103002%_
               _%check102988103004%_
               _%weak-keys102989103006%_
               _%weak-values102990103008%_)
        (let* ((_%size-hint103011%_
                (if (eq? _%size-hint102983102994%_ absent-value)
                    '#f
                    _%size-hint102983102994%_))
               (_%seed103013%_
                (if (eq? _%seed102984102996%_ absent-value)
                    '#f
                    _%seed102984102996%_))
               (_%test103015%_
                (if (eq? _%test102985102998%_ absent-value)
                    equal?
                    _%test102985102998%_))
               (_%hash103017%_
                (if (eq? _%hash102986103000%_ absent-value)
                    '#f
                    _%hash102986103000%_))
               (_%lock103019%_
                (if (eq? _%lock102987103002%_ absent-value)
                    '#f
                    _%lock102987103002%_))
               (_%check103021%_
                (if (eq? _%check102988103004%_ absent-value)
                    '#f
                    _%check102988103004%_))
               (_%weak-keys103023%_
                (if (eq? _%weak-keys102989103006%_ absent-value)
                    '#f
                    _%weak-keys102989103006%_))
               (_%weak-values103025%_
                (if (eq? _%weak-values102990103008%_ absent-value)
                    '#f
                    _%weak-values102990103008%_)))
          (letrec ((_%table-seed103027%_
                    (lambda ()
                      (if (fixnum? _%seed103013%_)
                          _%seed103013%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103028%_
                    (lambda (_%ht103148%_)
                      (if _%lock103019%_
                          (let ((_%$obj103153%_
                                 (let ((__tmp106256
                                        (let ((_%$obj103150%_ _%lock103019%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103150%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103150%_)))
                                                   '#t)
                                              _%$obj103150%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103150%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103148%_
                                    __tmp106256))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103153%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103153%_)))
                                     '#t)
                                _%$obj103153%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103153%_))))
                          _%ht103148%_)))
                   (_%wrap-checked103029%_
                    (lambda (_%ht103142%_ _%implicit103143%_)
                      (if _%check103021%_
                          (let ((_%$obj103145%_
                                 (let ((__tmp106257
                                        (if (procedure? _%check103021%_)
                                            _%check103021%_
                                            _%implicit103143%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103142%_
                                    __tmp106257))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103145%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103145%_)))
                                     '#t)
                                _%$obj103145%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103145%_))))
                          _%ht103142%_)))
                   (_%make103030%_
                    (lambda (_%kons103127%_
                             _%key?103128%_
                             _%hash103129%_
                             _%test103130%_)
                      (let* ((_%size103132%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103011%_)))
                             (_%table103134%_
                              (let ((__tmp106258 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103132%_ __tmp106258)))
                             (_%ht103139%_
                              (let ((_%$obj103136%_
                                     (_%kons103127%_
                                      _%table103134%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103132%_ '2))
                                      _%hash103129%_
                                      _%test103130%_
                                      (_%table-seed103027%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103136%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103136%_)))
                                         '#t)
                                    _%$obj103136%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103136%_))))))
                        (_%wrap-checked103029%_
                         (_%wrap-lock103028%_ _%ht103139%_)
                         _%key?103128%_))))
                   (_%make-gc-hash-table103031%_
                    (lambda ()
                      (let ((_%ht103125%_
                             (let ((_%$obj103122%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint103011%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj103122%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj103122%_)))
                                        '#t)
                                   _%$obj103122%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj103122%_))))))
                        (_%wrap-checked103029%_
                         (_%wrap-lock103028%_ _%ht103125%_)
                         true))))
                   (_%make-gambit-table103032%_
                    (lambda ()
                      (let* ((_%size103100%_
                              (let ((_%$e103097%_ _%size-hint103011%_))
                                (if _%$e103097%_
                                    _%$e103097%_
                                    (macro-absent-obj))))
                             (_%test103105%_
                              (let ((_%$e103102%_ _%test103015%_))
                                (if _%$e103102%_ _%$e103102%_ equal?)))
                             (_%hash103113%_
                              (let ((_%$e103107%_ _%hash103017%_))
                                (if _%$e103107%_
                                    _%$e103107%_
                                    (if (eq? _%test103105%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test103105%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht103118%_
                              (let ((_%$obj103115%_
                                     (make-table
                                      'size:
                                      _%size103100%_
                                      'test:
                                      _%test103105%_
                                      'hash:
                                      _%hash103113%_
                                      'weak-keys:
                                      _%weak-keys103023%_
                                      'weak-values:
                                      _%weak-values103025%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103115%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103115%_)))
                                         '#t)
                                    _%$obj103115%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103115%_))))))
                        (_%wrap-checked103029%_
                         (_%wrap-lock103028%_ _%ht103118%_)
                         true)))))
            (if (or _%weak-keys103023%_ _%weak-values103025%_)
                (_%make-gambit-table103032%_)
                (if (and (or (eq? _%test103015%_ eq?)
                             (eq? _%test103015%_ ##eq?))
                         (or (not _%hash103017%_)
                             (eq? _%hash103017%_ eq?-hash)
                             (eq? _%hash103017%_ eq-hash))
                         (not _%seed103013%_))
                    (_%make-gc-hash-table103031%_)
                    (if (and (or (eq? _%test103015%_ eq?)
                                 (eq? _%test103015%_ ##eq?))
                             (or (not _%hash103017%_)
                                 (eq? _%hash103017%_ eq?-hash)
                                 (eq? _%hash103017%_ eq-hash)))
                        (_%make103030%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test103015%_ eqv?)
                                     (eq? _%test103015%_ ##eqv?))
                                 (or (not _%hash103017%_)
                                     (eq? _%hash103017%_ eqv?-hash)
                                     (eq? _%hash103017%_ eqv-hash)))
                            (_%make103030%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test103015%_ eq?)
                                         (eq? _%test103015%_ ##eq?))
                                     (or (eq? _%hash103017%_ symbolic-hash)
                                         (eq? _%hash103017%_ ##symbol-hash)))
                                (_%make103030%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test103015%_ eq?)
                                             (eq? _%test103015%_ ##eq?))
                                         (eq? _%hash103017%_ immediate-hash))
                                    (_%make103030%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test103015%_ equal?)
                                                 (eq? _%test103015%_ ##equal?)
                                                 (eq? _%test103015%_ string=?)
                                                 (eq? _%test103015%_
                                                      ##string=?))
                                             (or (eq? _%hash103017%_
                                                      string-hash)
                                                 (eq? _%hash103017%_
                                                      ##string=?-hash)))
                                        (_%make103030%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test103015%_ equal?)
                                                 (not _%hash103017%_))
                                            (_%make103030%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (not (procedure?
                                                      _%test103015%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103015%_))
                                                (if (not (procedure?
                                                          _%hash103017%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103017%_))
                                                    (_%make103030%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash103017%_
                                                     _%test103015%_)))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103160%_ . _%args103161%_)
        (apply make-hash-table__%
               _%@@keywords103160%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103160%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103160%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103160%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103160%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103160%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103160%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103160%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103160%_
                  'weak-values:
                  absent-value))
               _%args103161%_)))
    (define make-hash-table
      (lambda _%args102991103167%_
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
               _%args102991103167%_)))
    (define make-hash-table-eq
      (lambda _%args102980%_
        (apply make-hash-table 'test: eq? _%args102980%_)))
    (define make-hash-table-eqv
      (lambda _%args102978%_
        (apply make-hash-table 'test: eqv? _%args102978%_)))
    (define make-hash-table-symbolic
      (lambda _%args102976%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args102976%_)))
    (define make-hash-table-string
      (lambda _%args102974%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args102974%_)))
    (define make-hash-table-immediate
      (lambda _%args102972%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args102972%_)))
    (define list->hash-table
      (lambda (_%lst102969%_ . _%args102970%_)
        (list->hash-table!
         _%lst102969%_
         (apply make-hash-table
                'size:
                (length _%lst102969%_)
                _%args102970%_))))
    (define list->hash-table-eq
      (lambda (_%lst102966%_ . _%args102967%_)
        (list->hash-table!
         _%lst102966%_
         (apply make-hash-table-eq
                'size:
                (length _%lst102966%_)
                _%args102967%_))))
    (define list->hash-table-eqv
      (lambda (_%lst102963%_ . _%args102964%_)
        (list->hash-table!
         _%lst102963%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst102963%_)
                _%args102964%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst102960%_ . _%args102961%_)
        (list->hash-table!
         _%lst102960%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst102960%_)
                _%args102961%_))))
    (define list->hash-table-string
      (lambda (_%lst102957%_ . _%args102958%_)
        (list->hash-table!
         _%lst102957%_
         (apply make-hash-table-string
                'size:
                (length _%lst102957%_)
                _%args102958%_))))
    (define list->hash-table-immediate
      (lambda (_%lst102954%_ . _%args102955%_)
        (list->hash-table!
         _%lst102954%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst102954%_)
                _%args102955%_))))
    (define list->hash-table!
      (lambda (_%lst102921%_ _%h102922%_)
        (for-each
         (lambda (_%el102924%_)
           (let* ((_%el102925102932%_ _%el102924%_)
                  (_%E102927102936%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el102925102932%_
                              '([k . v])))
                     '#!void))
                  (_%K102928102942%_
                   (lambda (_%v102939%_ _%k102940%_)
                     (&HashTable-set! _%h102922%_ _%k102940%_ _%v102939%_))))
             (if (let () (declare (not safe)) (##pair? _%el102925102932%_))
                 (let ((_%hd102929102945%_
                        (let ()
                          (declare (not safe))
                          (##car _%el102925102932%_)))
                       (_%tl102930102947%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el102925102932%_))))
                   (let* ((_%k102950%_ _%hd102929102945%_)
                          (_%v102952%_ _%tl102930102947%_))
                     (_%K102928102942%_ _%v102952%_ _%k102950%_)))
                 (_%E102927102936%_))))
         _%lst102921%_)
        _%h102922%_))
    (define plist->hash-table
      (lambda (_%lst102918%_ . _%args102919%_)
        (plist->hash-table!
         _%lst102918%_
         (apply make-hash-table
                'size:
                (length _%lst102918%_)
                _%args102919%_))))
    (define plist->hash-table-eq
      (lambda (_%lst102915%_ . _%args102916%_)
        (plist->hash-table!
         _%lst102915%_
         (apply make-hash-table-eq
                'size:
                (length _%lst102915%_)
                _%args102916%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst102912%_ . _%args102913%_)
        (plist->hash-table!
         _%lst102912%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst102912%_)
                _%args102913%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst102909%_ . _%args102910%_)
        (plist->hash-table!
         _%lst102909%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst102909%_)
                _%args102910%_))))
    (define plist->hash-table-string
      (lambda (_%lst102906%_ . _%args102907%_)
        (plist->hash-table!
         _%lst102906%_
         (apply make-hash-table-string
                'size:
                (length _%lst102906%_)
                _%args102907%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst102903%_ . _%args102904%_)
        (plist->hash-table!
         _%lst102903%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst102903%_)
                _%args102904%_))))
    (define plist->hash-table!
      (lambda (_%lst102843%_ _%h102844%_)
        (let _%loop102846%_ ((_%rest102848%_ _%lst102843%_))
          (let* ((_%rest102849102861%_ _%rest102848%_)
                 (_%else102852102869%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst102843%_)))))
            (let ((_%K102855102884%_
                   (lambda (_%rest102880%_ _%val102881%_ _%key102882%_)
                     (&HashTable-set! _%h102844%_ _%key102882%_ _%val102881%_)
                     (_%loop102846%_ _%rest102880%_)))
                  (_%K102854102874%_ (lambda () _%h102844%_)))
              (let ((_%try-match102851102877%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest102849102861%_))
                           (_%K102854102874%_)
                           (_%else102852102869%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest102849102861%_))
                    (let ((_%tl102857102889%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest102849102861%_)))
                          (_%hd102856102887%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest102849102861%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl102857102889%_))
                          (let ((_%tl102859102896%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl102857102889%_)))
                                (_%hd102858102894%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl102857102889%_))))
                            (let ((_%key102892%_ _%hd102856102887%_)
                                  (_%val102899%_ _%hd102858102894%_)
                                  (_%rest102901%_ _%tl102859102896%_))
                              (_%K102855102884%_
                               _%rest102901%_
                               _%val102899%_
                               _%key102892%_)))
                          (_%else102852102869%_)))
                    (_%try-match102851102877%_))))))))
    (define hash-length
      (lambda (_%h102825%_)
        (let* ((_%h102831%_
                (let ((_%$obj102828%_ _%h102825%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102828%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102828%_)))
                           '#t)
                      _%$obj102828%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102828%_)))))
               (_%h102833%_ _%h102831%_))
          (__hash-length _%h102833%_))))
    (define __hash-length
      (lambda (_%h102813%_)
        (let ((_%h102816%_ _%h102813%_)) (__HashTable-length _%h102816%_))))
    (define hash-ref__%
      (lambda (_%h102781%_ _%key102782%_ _%default102783%_)
        (let* ((_%h102789%_
                (let ((_%$obj102786%_ _%h102781%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102786%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102786%_)))
                           '#t)
                      _%$obj102786%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102786%_)))))
               (_%h102791%_ _%h102789%_))
          (__hash-ref__% _%h102791%_ _%key102782%_ _%default102783%_))))
    (define hash-ref__0
      (lambda (_%h102804%_ _%key102805%_)
        (let ((_%default102807%_ (macro-absent-obj)))
          (hash-ref__% _%h102804%_ _%key102805%_ _%default102807%_))))
    (define hash-ref
      (lambda _g106260_
        (let ((_g106259_ (let () (declare (not safe)) (##length _g106260_))))
          (cond ((let () (declare (not safe)) (##fx= _g106259_ 2))
                 (apply hash-ref__0 _g106260_))
                ((let () (declare (not safe)) (##fx= _g106259_ 3))
                 (apply hash-ref__% _g106260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106260_))))))
    (define __hash-ref__%
      (lambda (_%h102752%_ _%key102753%_ _%default102754%_)
        (let* ((_%h102757%_ _%h102752%_)
               (_%result102766%_
                (&HashTable-ref _%h102757%_ _%key102753%_ _%default102754%_)))
          (if (eq? _%result102766%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h102757%_
               'key:
               _%key102753%_)
              _%result102766%_))))
    (define __hash-ref__0
      (lambda (_%h102771%_ _%key102772%_)
        (let ((_%default102774%_ (macro-absent-obj)))
          (__hash-ref__% _%h102771%_ _%key102772%_ _%default102774%_))))
    (define __hash-ref
      (lambda _g106262_
        (let ((_g106261_ (let () (declare (not safe)) (##length _g106262_))))
          (cond ((let () (declare (not safe)) (##fx= _g106261_ 2))
                 (apply __hash-ref__0 _g106262_))
                ((let () (declare (not safe)) (##fx= _g106261_ 3))
                 (apply __hash-ref__% _g106262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106262_))))))
    (define hash-get
      (lambda (_%h102732%_ _%key102733%_)
        (let* ((_%h102739%_
                (let ((_%$obj102736%_ _%h102732%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102736%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102736%_)))
                           '#t)
                      _%$obj102736%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102736%_)))))
               (_%h102741%_ _%h102739%_))
          (__hash-get _%h102741%_ _%key102733%_))))
    (define __hash-get
      (lambda (_%h102719%_ _%key102720%_)
        (let ((_%h102723%_ _%h102719%_))
          (&HashTable-ref _%h102723%_ _%key102720%_ '#f))))
    (define hash-put!
      (lambda (_%h102699%_ _%key102700%_ _%value102701%_)
        (let* ((_%h102707%_
                (let ((_%$obj102704%_ _%h102699%_))
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
          (__hash-put! _%h102709%_ _%key102700%_ _%value102701%_))))
    (define __hash-put!
      (lambda (_%h102685%_ _%key102686%_ _%value102687%_)
        (let ((_%h102690%_ _%h102685%_))
          (&HashTable-set! _%h102690%_ _%key102686%_ _%value102687%_))))
    (define hash-update!__%
      (lambda (_%h102650%_ _%key102651%_ _%update102652%_ _%default102653%_)
        (let* ((_%h102659%_
                (let ((_%$obj102656%_ _%h102650%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102656%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102656%_)))
                           '#t)
                      _%$obj102656%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102656%_)))))
               (_%h102661%_ _%h102659%_))
          (__hash-update!__%
           _%h102661%_
           _%key102651%_
           _%update102652%_
           _%default102653%_))))
    (define hash-update!__0
      (lambda (_%h102674%_ _%key102675%_ _%update102676%_)
        (let ((_%default102678%_ '#!void))
          (hash-update!__%
           _%h102674%_
           _%key102675%_
           _%update102676%_
           _%default102678%_))))
    (define hash-update!
      (lambda _g106264_
        (let ((_g106263_ (let () (declare (not safe)) (##length _g106264_))))
          (cond ((let () (declare (not safe)) (##fx= _g106263_ 3))
                 (apply hash-update!__0 _g106264_))
                ((let () (declare (not safe)) (##fx= _g106263_ 4))
                 (apply hash-update!__% _g106264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106264_))))))
    (define __hash-update!__%
      (lambda (_%h102620%_ _%key102621%_ _%update102622%_ _%default102623%_)
        (let ((_%h102626%_ _%h102620%_))
          (HashTable-update!
           _%h102626%_
           _%key102621%_
           _%update102622%_
           _%default102623%_))))
    (define __hash-update!__0
      (lambda (_%h102638%_ _%key102639%_ _%update102640%_)
        (let ((_%default102642%_ '#!void))
          (__hash-update!__%
           _%h102638%_
           _%key102639%_
           _%update102640%_
           _%default102642%_))))
    (define __hash-update!
      (lambda _g106266_
        (let ((_g106265_ (let () (declare (not safe)) (##length _g106266_))))
          (cond ((let () (declare (not safe)) (##fx= _g106265_ 3))
                 (apply __hash-update!__0 _g106266_))
                ((let () (declare (not safe)) (##fx= _g106265_ 4))
                 (apply __hash-update!__% _g106266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106266_))))))
    (define hash-remove!
      (lambda (_%h102600%_ _%key102601%_)
        (let* ((_%h102607%_
                (let ((_%$obj102604%_ _%h102600%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102604%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102604%_)))
                           '#t)
                      _%$obj102604%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102604%_)))))
               (_%h102609%_ _%h102607%_))
          (__hash-remove! _%h102609%_ _%key102601%_))))
    (define __hash-remove!
      (lambda (_%h102587%_ _%key102588%_)
        (let ((_%h102591%_ _%h102587%_))
          (&HashTable-delete! _%h102591%_ _%key102588%_))))
    (define hash-key?
      (lambda (_%h102568%_ _%k102569%_)
        (let* ((_%h102575%_
                (let ((_%$obj102572%_ _%h102568%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102572%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102572%_)))
                           '#t)
                      _%$obj102572%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102572%_)))))
               (_%h102577%_ _%h102575%_))
          (__hash-key? _%h102577%_ _%k102569%_))))
    (define __hash-key?
      (lambda (_%h102555%_ _%k102556%_)
        (let ((_%h102559%_ _%h102555%_))
          (not (eq? (&HashTable-ref _%h102559%_ _%k102556%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h102537%_)
        (let* ((_%h102543%_
                (let ((_%$obj102540%_ _%h102537%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102540%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102540%_)))
                           '#t)
                      _%$obj102540%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102540%_)))))
               (_%h102545%_ _%h102543%_))
          (__hash->list _%h102545%_))))
    (define __hash->list
      (lambda (_%h102520%_)
        (let* ((_%h102523%_ _%h102520%_) (_%lst102532%_ '()))
          (&HashTable-for-each
           _%h102523%_
           (lambda (_%k102534%_ _%v102535%_)
             (set! _%lst102532%_
                   (cons (cons _%k102534%_ _%v102535%_) _%lst102532%_))))
          _%lst102532%_)))
    (define hash->plist
      (lambda (_%h102502%_)
        (let* ((_%h102508%_
                (let ((_%$obj102505%_ _%h102502%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102505%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102505%_)))
                           '#t)
                      _%$obj102505%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102505%_)))))
               (_%h102510%_ _%h102508%_))
          (__hash->plist _%h102510%_))))
    (define __hash->plist
      (lambda (_%h102485%_)
        (let* ((_%h102488%_ _%h102485%_) (_%lst102497%_ '()))
          (&HashTable-for-each
           _%h102488%_
           (lambda (_%k102499%_ _%v102500%_)
             (set! _%lst102497%_
                   (cons _%k102499%_ (cons _%v102500%_ _%lst102497%_)))))
          _%lst102497%_)))
    (define hash-for-each
      (lambda (_%proc102456%_ _%h102457%_)
        (if (procedure? _%proc102456%_)
            (let* ((_%proc102461%_ _%proc102456%_)
                   (_%h102473%_
                    (let ((_%$obj102470%_ _%h102457%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj102470%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj102470%_)))
                               '#t)
                          _%$obj102470%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj102470%_)))))
                   (_%h102475%_ _%h102473%_))
              (__hash-for-each _%proc102461%_ _%h102475%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc102456%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc102435%_ _%h102436%_)
        (let* ((_%proc102439%_ _%proc102435%_) (_%h102447%_ _%h102436%_))
          (&HashTable-for-each _%h102447%_ _%proc102439%_))))
    (define hash-map
      (lambda (_%proc102406%_ _%h102407%_)
        (if (procedure? _%proc102406%_)
            (let* ((_%proc102411%_ _%proc102406%_)
                   (_%h102423%_
                    (let ((_%$obj102420%_ _%h102407%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj102420%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj102420%_)))
                               '#t)
                          _%$obj102420%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj102420%_)))))
                   (_%h102425%_ _%h102423%_))
              (__hash-map _%proc102411%_ _%h102425%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc102406%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc102380%_ _%h102381%_)
        (let* ((_%proc102384%_ _%proc102380%_)
               (_%h102392%_ _%h102381%_)
               (_%result102401%_ '()))
          (&HashTable-for-each
           _%h102392%_
           (lambda (_%k102403%_ _%v102404%_)
             (set! _%result102401%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc102384%_ _%k102403%_ _%v102404%_))
                         _%result102401%_))))
          _%result102401%_)))
    (define hash-fold
      (lambda (_%proc102350%_ _%iv102351%_ _%h102352%_)
        (if (procedure? _%proc102350%_)
            (let* ((_%proc102356%_ _%proc102350%_)
                   (_%h102368%_
                    (let ((_%$obj102365%_ _%h102352%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj102365%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj102365%_)))
                               '#t)
                          _%$obj102365%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj102365%_)))))
                   (_%h102370%_ _%h102368%_))
              (__hash-fold _%proc102356%_ _%iv102351%_ _%h102370%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc102350%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc102323%_ _%iv102324%_ _%h102325%_)
        (let* ((_%proc102328%_ _%proc102323%_)
               (_%h102336%_ _%h102325%_)
               (_%result102345%_ _%iv102324%_))
          (&HashTable-for-each
           _%h102336%_
           (lambda (_%k102347%_ _%v102348%_)
             (set! _%result102345%_
                   (let ()
                     (declare (not safe))
                     (_%proc102328%_
                      _%k102347%_
                      _%v102348%_
                      _%result102345%_)))))
          _%result102345%_)))
    (define hash-find__%
      (lambda (_%proc102281%_ _%h102282%_ _%default-value102283%_)
        (if (procedure? _%proc102281%_)
            (let* ((_%proc102287%_ _%proc102281%_)
                   (_%h102299%_
                    (let ((_%$obj102296%_ _%h102282%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj102296%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj102296%_)))
                               '#t)
                          _%$obj102296%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj102296%_)))))
                   (_%h102301%_ _%h102299%_))
              (__hash-find__%
               _%proc102287%_
               _%h102301%_
               _%default-value102283%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc102281%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc102314%_ _%h102315%_)
        (let ((_%default-value102317%_ '#f))
          (hash-find__% _%proc102314%_ _%h102315%_ _%default-value102317%_))))
    (define hash-find
      (lambda _g106268_
        (let ((_g106267_ (let () (declare (not safe)) (##length _g106268_))))
          (cond ((let () (declare (not safe)) (##fx= _g106267_ 2))
                 (apply hash-find__0 _g106268_))
                ((let () (declare (not safe)) (##fx= _g106267_ 3))
                 (apply hash-find__% _g106268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106268_))))))
    (define __hash-find__%
      (lambda (_%proc102238%_ _%h102239%_ _%default-value102240%_)
        (let* ((_%proc102243%_ _%proc102238%_)
               (_%h102251%_ _%h102239%_)
               (__tmp106269
                (lambda (_%return102260%_)
                  (&HashTable-for-each
                   _%h102251%_
                   (lambda (_%k102262%_ _%v102263%_)
                     (let ((_%$e102265%_
                            (let ()
                              (declare (not safe))
                              (_%proc102243%_ _%k102262%_ _%v102263%_))))
                       (if _%$e102265%_
                           (_%return102260%_ _%$e102265%_)
                           '#!void))))
                  _%default-value102240%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp106269))))
    (define __hash-find__0
      (lambda (_%proc102271%_ _%h102272%_)
        (let ((_%default-value102274%_ '#f))
          (__hash-find__%
           _%proc102271%_
           _%h102272%_
           _%default-value102274%_))))
    (define __hash-find
      (lambda _g106271_
        (let ((_g106270_ (let () (declare (not safe)) (##length _g106271_))))
          (cond ((let () (declare (not safe)) (##fx= _g106270_ 2))
                 (apply __hash-find__0 _g106271_))
                ((let () (declare (not safe)) (##fx= _g106270_ 3))
                 (apply __hash-find__% _g106271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106271_))))))
    (define hash-keys
      (lambda (_%h102219%_)
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
          (__hash-keys _%h102227%_))))
    (define __hash-keys
      (lambda (_%h102202%_)
        (let* ((_%h102205%_ _%h102202%_) (_%result102214%_ '()))
          (&HashTable-for-each
           _%h102205%_
           (lambda (_%k102216%_ _%v102217%_)
             (set! _%result102214%_ (cons _%k102216%_ _%result102214%_))))
          _%result102214%_)))
    (define hash-values
      (lambda (_%h102184%_)
        (let* ((_%h102190%_
                (let ((_%$obj102187%_ _%h102184%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102187%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102187%_)))
                           '#t)
                      _%$obj102187%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102187%_)))))
               (_%h102192%_ _%h102190%_))
          (__hash-values _%h102192%_))))
    (define __hash-values
      (lambda (_%h102167%_)
        (let* ((_%h102170%_ _%h102167%_) (_%result102179%_ '()))
          (&HashTable-for-each
           _%h102170%_
           (lambda (_%k102181%_ _%v102182%_)
             (set! _%result102179%_ (cons _%v102182%_ _%result102179%_))))
          _%result102179%_)))
    (define hash-copy
      (lambda (_%h102149%_)
        (let* ((_%h102155%_
                (let ((_%$obj102152%_ _%h102149%_))
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
               (_%h102157%_ _%h102155%_))
          (__hash-copy _%h102157%_))))
    (define __hash-copy
      (lambda (_%h102137%_)
        (let ((_%h102140%_ _%h102137%_)) (__HashTable-copy _%h102140%_))))
    (define hash-clear!
      (lambda (_%h102119%_)
        (let* ((_%h102125%_
                (let ((_%$obj102122%_ _%h102119%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102122%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102122%_)))
                           '#t)
                      _%$obj102122%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102122%_)))))
               (_%h102127%_ _%h102125%_))
          (__hash-clear! _%h102127%_))))
    (define __hash-clear!
      (lambda (_%h102107%_)
        (let ((_%h102110%_ _%h102107%_)) (&HashTable-clear! _%h102110%_))))
    (define hash-merge
      (lambda (_%h102088%_ . _%rest102089%_)
        (let* ((_%h102095%_
                (let ((_%$obj102092%_ _%h102088%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102092%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102092%_)))
                           '#t)
                      _%$obj102092%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102092%_)))))
               (_%h102097%_ _%h102095%_))
          (declare (not safe))
          (##apply __hash-merge _%h102097%_ _%rest102089%_))))
    (define __hash-merge
      (lambda (_%h102073%_ . _%rest102074%_)
        (let* ((_%h102077%_ _%h102073%_)
               (_%copy102086%_ (__HashTable-copy _%h102077%_)))
          (apply hash-merge! _%copy102086%_ _%rest102074%_)
          _%copy102086%_)))
    (define hash-merge!
      (lambda (_%h102054%_ . _%rest102055%_)
        (let* ((_%h102061%_
                (let ((_%$obj102058%_ _%h102054%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102058%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102058%_)))
                           '#t)
                      _%$obj102058%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102058%_)))))
               (_%h102063%_ _%h102061%_))
          (declare (not safe))
          (##apply __hash-merge! _%h102063%_ _%rest102055%_))))
    (define __hash-merge!
      (lambda (_%h102017%_ . _%rest102018%_)
        (let ((_%h102021%_ _%h102017%_))
          (for-each
           (lambda (_%hr102030%_)
             (let* ((_%hr102036%_
                     (let ((_%$obj102033%_ _%hr102030%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (##structure? _%$obj102033%_))
                                (eq? HashTable::t
                                     (let ()
                                       (declare (not safe))
                                       (##structure-type _%$obj102033%_)))
                                '#t)
                           _%$obj102033%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%$obj102033%_)))))
                    (_%hr102038%_ _%hr102036%_))
               (&HashTable-for-each
                _%hr102038%_
                (lambda (_%k102051%_ _%v102052%_)
                  (if (__hash-key? _%h102021%_ _%k102051%_)
                      '#!void
                      (&HashTable-set!
                       _%h102021%_
                       _%k102051%_
                       _%v102052%_))))))
           _%rest102018%_)
          _%h102021%_)))))
