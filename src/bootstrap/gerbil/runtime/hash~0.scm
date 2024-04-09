(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712533289)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106825 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106825
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106805%_
        (apply make-instance UnboundKeyError::t _%$args106805%_)))
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
      (lambda (_%where106679%_ _%message106680%_ . _%irritants106681%_)
        (let ((__tmp106826
               (let ((__obj106819
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106819
                  _%message106680%_
                  'where:
                  _%where106679%_
                  'irritants:
                  _%irritants106681%_)
                 __obj106819)))
          (declare (not safe))
          (raise __tmp106826))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106827 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106827
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
      (lambda (_%obj106677%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106677%_))))
    (define try-HashTable
      (lambda (_%obj106675%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106675%_))))
    (define HashTable?
      (lambda (_%obj106673%_)
        (let ((__tmp106828
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106673%_ __tmp106828))))
    (define is-HashTable?
      (lambda (_%obj106671%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106671%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106655%_)
        (let* ((_%self106660%_
                (let ((_%$obj106657%_ _%self106655%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106657%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106657%_)))
                           '#t)
                      _%$obj106657%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106657%_)))))
               (_%self106662%_ _%self106660%_))
          (declare (not safe))
          (&HashTable-clear! _%self106662%_))))
    (define &HashTable-clear!
      (lambda (_%self106640%_)
        (let ((_%self106642%_ _%self106640%_))
          (declare (not safe))
          (let ((_%obj106652%_
                 (##unchecked-structure-ref _%self106642%_ '1 '#f 'clear!))
                (_%f106653%_
                 (##unchecked-structure-ref _%self106642%_ '2 '#f 'clear!)))
            (_%f106653%_ _%obj106652%_)))))
    (define HashTable-copy
      (lambda (_%self106624%_)
        (let* ((_%self106629%_
                (let ((_%$obj106626%_ _%self106624%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106626%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106626%_)))
                           '#t)
                      _%$obj106626%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106626%_)))))
               (_%self106631%_ _%self106629%_))
          (declare (not safe))
          (__HashTable-copy _%self106631%_))))
    (define __HashTable-copy
      (lambda (_%self106611%_)
        (let* ((_%self106613%_ _%self106611%_)
               (_%$obj106621%_
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%self106613%_))))
          (if (and (let () (declare (not safe)) (##structure? _%$obj106621%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj106621%_)))
                   '#t)
              _%$obj106621%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj106621%_))))))
    (define &HashTable-copy
      (lambda (_%self106596%_)
        (let ((_%self106598%_ _%self106596%_))
          (declare (not safe))
          (let ((_%obj106608%_
                 (##unchecked-structure-ref _%self106598%_ '1 '#f 'copy))
                (_%f106609%_
                 (##unchecked-structure-ref _%self106598%_ '3 '#f 'copy)))
            (_%f106609%_ _%obj106608%_)))))
    (define HashTable-delete!
      (lambda (_%self106579%_ _%key106580%_)
        (let* ((_%self106585%_
                (let ((_%$obj106582%_ _%self106579%_))
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
               (_%self106587%_ _%self106585%_))
          (declare (not safe))
          (&HashTable-delete! _%self106587%_ _%key106580%_))))
    (define &HashTable-delete!
      (lambda (_%self106563%_ _%key106564%_)
        (let ((_%self106566%_ _%self106563%_))
          (declare (not safe))
          (let ((_%obj106576%_
                 (##unchecked-structure-ref _%self106566%_ '1 '#f 'delete!))
                (_%f106577%_
                 (##unchecked-structure-ref _%self106566%_ '4 '#f 'delete!)))
            (_%f106577%_ _%obj106576%_ _%key106564%_)))))
    (define HashTable-for-each
      (lambda (_%self106536%_ _%proc106537%_)
        (let* ((_%self106542%_
                (let ((_%$obj106539%_ _%self106536%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106539%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106539%_)))
                           '#t)
                      _%$obj106539%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106539%_)))))
               (_%self106544%_ _%self106542%_))
          (if (let () (declare (not safe)) (procedure? _%proc106537%_))
              (let ((_%proc106553%_ _%proc106537%_))
                (declare (not safe))
                (&HashTable-for-each _%self106544%_ _%proc106553%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106537%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self106512%_ _%proc106513%_)
        (let* ((_%self106515%_ _%self106512%_) (_%proc106522%_ _%proc106513%_))
          (declare (not safe))
          (let ((_%obj106533%_
                 (##unchecked-structure-ref _%self106515%_ '1 '#f 'for-each))
                (_%f106534%_
                 (##unchecked-structure-ref _%self106515%_ '5 '#f 'for-each)))
            (_%f106534%_ _%obj106533%_ _%proc106522%_)))))
    (define HashTable-length
      (lambda (_%self106496%_)
        (let* ((_%self106501%_
                (let ((_%$obj106498%_ _%self106496%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106498%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106498%_)))
                           '#t)
                      _%$obj106498%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106498%_)))))
               (_%self106503%_ _%self106501%_))
          (declare (not safe))
          (__HashTable-length _%self106503%_))))
    (define __HashTable-length
      (lambda (_%self106483%_)
        (let* ((_%self106485%_ _%self106483%_)
               (_%val106493%_
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%self106485%_))))
          (if (let () (declare (not safe)) (fixnum? _%val106493%_))
              _%val106493%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val106493%_))))))
    (define &HashTable-length
      (lambda (_%self106468%_)
        (let ((_%self106470%_ _%self106468%_))
          (declare (not safe))
          (let ((_%obj106480%_
                 (##unchecked-structure-ref _%self106470%_ '1 '#f 'length))
                (_%f106481%_
                 (##unchecked-structure-ref _%self106470%_ '6 '#f 'length)))
            (_%f106481%_ _%obj106480%_)))))
    (define HashTable-ref
      (lambda (_%self106450%_ _%key106451%_ _%default106452%_)
        (let* ((_%self106457%_
                (let ((_%$obj106454%_ _%self106450%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106454%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106454%_)))
                           '#t)
                      _%$obj106454%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106454%_)))))
               (_%self106459%_ _%self106457%_))
          (declare (not safe))
          (&HashTable-ref _%self106459%_ _%key106451%_ _%default106452%_))))
    (define &HashTable-ref
      (lambda (_%self106433%_ _%key106434%_ _%default106435%_)
        (let ((_%self106437%_ _%self106433%_))
          (declare (not safe))
          (let ((_%obj106447%_
                 (##unchecked-structure-ref _%self106437%_ '1 '#f 'ref))
                (_%f106448%_
                 (##unchecked-structure-ref _%self106437%_ '7 '#f 'ref)))
            (_%f106448%_ _%obj106447%_ _%key106434%_ _%default106435%_)))))
    (define HashTable-set!
      (lambda (_%self106415%_ _%key106416%_ _%value106417%_)
        (let* ((_%self106422%_
                (let ((_%$obj106419%_ _%self106415%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106419%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106419%_)))
                           '#t)
                      _%$obj106419%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106419%_)))))
               (_%self106424%_ _%self106422%_))
          (declare (not safe))
          (&HashTable-set! _%self106424%_ _%key106416%_ _%value106417%_))))
    (define &HashTable-set!
      (lambda (_%self106398%_ _%key106399%_ _%value106400%_)
        (let ((_%self106402%_ _%self106398%_))
          (declare (not safe))
          (let ((_%obj106412%_
                 (##unchecked-structure-ref _%self106402%_ '1 '#f 'set!))
                (_%f106413%_
                 (##unchecked-structure-ref _%self106402%_ '8 '#f 'set!)))
            (_%f106413%_ _%obj106412%_ _%key106399%_ _%value106400%_)))))
    (define HashTable-update!
      (lambda (_%self106369%_ _%key106370%_ _%proc106371%_ _%default106372%_)
        (let* ((_%self106377%_
                (let ((_%$obj106374%_ _%self106369%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106374%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106374%_)))
                           '#t)
                      _%$obj106374%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106374%_)))))
               (_%self106379%_ _%self106377%_))
          (if (let () (declare (not safe)) (procedure? _%proc106371%_))
              (let ((_%proc106388%_ _%proc106371%_))
                (declare (not safe))
                (&HashTable-update!
                 _%self106379%_
                 _%key106370%_
                 _%proc106388%_
                 _%default106372%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106371%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self106341%_ _%key106342%_ _%proc106343%_ _%default106344%_)
        (let* ((_%self106346%_ _%self106341%_) (_%proc106353%_ _%proc106343%_))
          (declare (not safe))
          (let ((_%obj106364%_
                 (##unchecked-structure-ref _%self106346%_ '1 '#f 'update!))
                (_%f106366%_
                 (##unchecked-structure-ref _%self106346%_ '9 '#f 'update!)))
            (_%f106366%_
             _%obj106364%_
             _%key106342%_
             _%proc106353%_
             _%default106344%_)))))
    (define Locker::t
      (let ((__tmp106829 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106829
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
      (lambda (_%obj106339%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj106339%_))))
    (define try-Locker
      (lambda (_%obj106337%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj106337%_))))
    (define Locker?
      (lambda (_%obj106335%_)
        (let ((__tmp106830
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106335%_ __tmp106830))))
    (define is-Locker?
      (lambda (_%obj106333%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj106333%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self106317%_)
        (let* ((_%self106322%_
                (let ((_%$obj106319%_ _%self106317%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106319%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106319%_)))
                           '#t)
                      _%$obj106319%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106319%_)))))
               (_%self106324%_ _%self106322%_))
          (declare (not safe))
          (&Locker-read-lock! _%self106324%_))))
    (define &Locker-read-lock!
      (lambda (_%self106302%_)
        (let ((_%self106304%_ _%self106302%_))
          (declare (not safe))
          (let ((_%obj106314%_
                 (##unchecked-structure-ref _%self106304%_ '1 '#f 'read-lock!))
                (_%f106315%_
                 (##unchecked-structure-ref
                  _%self106304%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f106315%_ _%obj106314%_)))))
    (define Locker-read-unlock!
      (lambda (_%self106286%_)
        (let* ((_%self106291%_
                (let ((_%$obj106288%_ _%self106286%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106288%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106288%_)))
                           '#t)
                      _%$obj106288%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106288%_)))))
               (_%self106293%_ _%self106291%_))
          (declare (not safe))
          (&Locker-read-unlock! _%self106293%_))))
    (define &Locker-read-unlock!
      (lambda (_%self106271%_)
        (let ((_%self106273%_ _%self106271%_))
          (declare (not safe))
          (let ((_%obj106283%_
                 (##unchecked-structure-ref
                  _%self106273%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f106284%_
                 (##unchecked-structure-ref
                  _%self106273%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f106284%_ _%obj106283%_)))))
    (define Locker-write-lock!
      (lambda (_%self106255%_)
        (let* ((_%self106260%_
                (let ((_%$obj106257%_ _%self106255%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106257%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106257%_)))
                           '#t)
                      _%$obj106257%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106257%_)))))
               (_%self106262%_ _%self106260%_))
          (declare (not safe))
          (&Locker-write-lock! _%self106262%_))))
    (define &Locker-write-lock!
      (lambda (_%self106240%_)
        (let ((_%self106242%_ _%self106240%_))
          (declare (not safe))
          (let ((_%obj106252%_
                 (##unchecked-structure-ref
                  _%self106242%_
                  '1
                  '#f
                  'write-lock!))
                (_%f106253%_
                 (##unchecked-structure-ref
                  _%self106242%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f106253%_ _%obj106252%_)))))
    (define Locker-write-unlock!
      (lambda (_%self106224%_)
        (let* ((_%self106229%_
                (let ((_%$obj106226%_ _%self106224%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106226%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106226%_)))
                           '#t)
                      _%$obj106226%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106226%_)))))
               (_%self106231%_ _%self106229%_))
          (declare (not safe))
          (&Locker-write-unlock! _%self106231%_))))
    (define &Locker-write-unlock!
      (lambda (_%self106207%_)
        (let ((_%self106209%_ _%self106207%_))
          (declare (not safe))
          (let ((_%obj106219%_
                 (##unchecked-structure-ref
                  _%self106209%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f106221%_
                 (##unchecked-structure-ref
                  _%self106209%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f106221%_ _%obj106219%_)))))
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
      (lambda (_%table106200%_
               _%key106201%_
               _%update106202%_
               _%default106203%_)
        (let ((_%result106205%_
               (table-ref _%table106200%_ _%key106201%_ _%default106203%_)))
          (table-set!
           _%table106200%_
           _%key106201%_
           (_%update106202%_ _%default106203%_)))))
    (define gambit-table-for-each
      (lambda (_%table106197%_ _%proc106198%_)
        (table-for-each _%proc106198%_ _%table106197%_)))
    (define gambit-table-clear!
      (lambda (_%table106195%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table106195%_ '0 '5 '#f '#f))))
    (let ((__tmp106831 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106831 'ref table-ref))
    (let ((__tmp106832 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106832 'set! table-set!))
    (let ((__tmp106833 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106833 'update! gambit-table-update!))
    (let ((__tmp106834 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106834 'delete! table-set!))
    (let ((__tmp106835 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106835 'for-each gambit-table-for-each))
    (let ((__tmp106836 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106836 'length table-length))
    (let ((__tmp106837 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106837 'copy table-copy))
    (let ((__tmp106838 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106838 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots106177%_ '(table count free hash test seed))
             (_%slot-vector106179%_ (list->vector (cons '#f _%slots106177%_)))
             (_%slot-table106186%_
              (let ((_%slot-table106181%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106841
                       (lambda (_%slot106183%_ _%field106184%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106181%_
                            _%slot106183%_
                            _%field106184%_))
                         (let ((__tmp106842
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106183%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106181%_
                            __tmp106842
                            _%field106184%_))))
                      (__tmp106839
                       (let ((__tmp106840
                              (let ()
                                (declare (not safe))
                                (##length _%slots106177%_))))
                         (declare (not safe))
                         (##iota __tmp106840 '1))))
                  (declare (not safe))
                  (##for-each __tmp106841 _%slots106177%_ __tmp106839))
                _%slot-table106181%_))
             (_%flags106188%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106190%_ '#())
             (_%properties106192%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106177%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106843 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags106188%_
         __table::t
         _%fields106190%_
         __tmp106843
         _%slot-vector106179%_
         _%slot-table106186%_
         _%properties106192%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots106159%_ '(gcht immediate))
             (_%slot-vector106161%_ (list->vector (cons '#f _%slots106159%_)))
             (_%slot-table106168%_
              (let ((_%slot-table106163%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106846
                       (lambda (_%slot106165%_ _%field106166%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106163%_
                            _%slot106165%_
                            _%field106166%_))
                         (let ((__tmp106847
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106165%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106163%_
                            __tmp106847
                            _%field106166%_))))
                      (__tmp106844
                       (let ((__tmp106845
                              (let ()
                                (declare (not safe))
                                (##length _%slots106159%_))))
                         (declare (not safe))
                         (##iota __tmp106845 '1))))
                  (declare (not safe))
                  (##for-each __tmp106846 _%slots106159%_ __tmp106844))
                _%slot-table106163%_))
             (_%flags106170%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106172%_ '#())
             (_%properties106174%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106159%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106848 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags106170%_
         __gc-table::t
         _%fields106172%_
         __tmp106848
         _%slot-vector106161%_
         _%slot-table106168%_
         _%properties106174%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp106850 (list))
            (__tmp106849
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106850
         '(table lock)
         __tmp106849
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args106156%_
        (apply make-instance locked-hash-table::t _%$args106156%_)))
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
      (let ((__tmp106852 (list))
            (__tmp106851
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106852
         '(table key-check)
         __tmp106851
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args106153%_
        (apply make-instance checked-hash-table::t _%$args106153%_)))
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
      (let ((__tmp106854 (list hash-table::t))
            (__tmp106853 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106854
         '()
         __tmp106853
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args106150%_
        (apply make-instance eq-hash-table::t _%$args106150%_)))
    (define eqv-hash-table::t
      (let ((__tmp106856 (list hash-table::t))
            (__tmp106855 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106856
         '()
         __tmp106855
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args106147%_
        (apply make-instance eqv-hash-table::t _%$args106147%_)))
    (define symbol-hash-table::t
      (let ((__tmp106858 (list hash-table::t))
            (__tmp106857 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106858
         '()
         __tmp106857
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args106144%_
        (apply make-instance symbol-hash-table::t _%$args106144%_)))
    (define string-hash-table::t
      (let ((__tmp106860 (list hash-table::t))
            (__tmp106859 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106860
         '()
         __tmp106859
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args106141%_
        (apply make-instance string-hash-table::t _%$args106141%_)))
    (define immediate-hash-table::t
      (let ((__tmp106862 (list hash-table::t))
            (__tmp106861 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106862
         '()
         __tmp106861
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args106138%_
        (apply make-instance immediate-hash-table::t _%$args106138%_)))
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
      (lambda (_%obj106136%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj106136%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj106134%_)
        (let () (declare (not safe)) (is-HashTable? _%obj106134%_))))
    (define _%locked-hash-table::ref102189%_
      (lambda (_%self106110%_ _%key106112%_ _%default106113%_)
        (let ((_%self106116%_ _%self106110%_))
          (let ((_%h106126%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106116%_ '1 '#f '#f)))
                (_%l106128%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106116%_ '2 '#f '#f))))
            (let ((__tmp106865
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l106128%_))))
                  (__tmp106864
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h106126%_
                        _%key106112%_
                        _%default106113%_))))
                  (__tmp106863
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l106128%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106865 __tmp106864 __tmp106863))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref102189%_
       '#f))
    (define _%locked-hash-table::set!102191%_
      (lambda (_%self105963%_ _%key105965%_ _%value105966%_)
        (let ((_%self105969%_ _%self105963%_))
          (let ((_%h105979%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105969%_ '1 '#f '#f)))
                (_%l105981%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105969%_ '2 '#f '#f))))
            (let ((__tmp106868
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105981%_))))
                  (__tmp106867
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h105979%_
                        _%key105965%_
                        _%value105966%_))))
                  (__tmp106866
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105981%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106868 __tmp106867 __tmp106866))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!102191%_
       '#f))
    (define _%locked-hash-table::update!102193%_
      (lambda (_%self105815%_ _%key105817%_ _%update105818%_ _%default105819%_)
        (let ((_%self105822%_ _%self105815%_))
          (let ((_%h105832%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105822%_ '1 '#f '#f)))
                (_%l105834%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105822%_ '2 '#f '#f))))
            (let ((__tmp106871
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105834%_))))
                  (__tmp106870
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-update!
                        _%h105832%_
                        _%key105817%_
                        _%update105818%_
                        _%default105819%_))))
                  (__tmp106869
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105834%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106871 __tmp106870 __tmp106869))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!102193%_
       '#f))
    (define _%locked-hash-table::delete!102195%_
      (lambda (_%self105669%_ _%key105671%_)
        (let ((_%self105674%_ _%self105669%_))
          (let ((_%h105684%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105674%_ '1 '#f '#f)))
                (_%l105686%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105674%_ '2 '#f '#f))))
            (let ((__tmp106874
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105686%_))))
                  (__tmp106873
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-delete! _%h105684%_ _%key105671%_))))
                  (__tmp106872
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105686%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106874 __tmp106873 __tmp106872))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!102195%_
       '#f))
    (define _%locked-hash-table::for-each102197%_
      (lambda (_%self105523%_ _%proc105525%_)
        (let ((_%self105528%_ _%self105523%_))
          (let ((_%h105538%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105528%_ '1 '#f '#f)))
                (_%l105540%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105528%_ '2 '#f '#f))))
            (let ((__tmp106877
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105540%_))))
                  (__tmp106876
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-for-each _%h105538%_ _%proc105525%_))))
                  (__tmp106875
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105540%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106877 __tmp106876 __tmp106875))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each102197%_
       '#f))
    (define _%locked-hash-table::length102199%_
      (lambda (_%self105378%_)
        (let ((_%self105382%_ _%self105378%_))
          (let ((_%h105392%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105382%_ '1 '#f '#f)))
                (_%l105394%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105382%_ '2 '#f '#f))))
            (let ((__tmp106880
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105394%_))))
                  (__tmp106879
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-length _%h105392%_))))
                  (__tmp106878
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105394%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106880 __tmp106879 __tmp106878))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length102199%_
       '#f))
    (define _%locked-hash-table::copy102201%_
      (lambda (_%self105233%_)
        (let ((_%self105237%_ _%self105233%_))
          (let ((_%h105247%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105237%_ '1 '#f '#f)))
                (_%l105249%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105237%_ '2 '#f '#f))))
            (let ((__tmp106883
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105249%_))))
                  (__tmp106882
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h105247%_))))
                  (__tmp106881
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105249%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106883 __tmp106882 __tmp106881))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy102201%_
       '#f))
    (define _%locked-hash-table::clear!102203%_
      (lambda (_%self105088%_)
        (let ((_%self105092%_ _%self105088%_))
          (let ((_%h105102%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105092%_ '1 '#f '#f)))
                (_%l105104%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105092%_ '2 '#f '#f))))
            (let ((__tmp106886
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105104%_))))
                  (__tmp106885
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-clear! _%h105102%_))))
                  (__tmp106884
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105104%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106886 __tmp106885 __tmp106884))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!102203%_
       '#f))
    (let ((__tmp106887 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106887 'read-lock! mutex-lock!))
    (let ((__tmp106888 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106888 'read-unlock! mutex-unlock!))
    (let ((__tmp106889 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106889 'write-lock! mutex-lock!))
    (let ((__tmp106890 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106890 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref102481%_
      (lambda (_%self104941%_ _%key104942%_ _%default104943%_)
        (let ((_%self104946%_ _%self104941%_))
          (let ((_%h104956%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104946%_ '1 '#f '#f)))
                (_%key?104958%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104946%_ '2 '#f '#f))))
            ((lambda (_%g104960104962%_)
               (if (_%g104960104962%_ _%key104942%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104942%_))))
             _%key?104958%_)
            (let ()
              (declare (not safe))
              (&HashTable-ref _%h104956%_ _%key104942%_ _%default104943%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref102481%_
       '#f))
    (define _%checked-hash-table::set!102483%_
      (lambda (_%self104794%_ _%key104795%_ _%value104796%_)
        (let ((_%self104799%_ _%self104794%_))
          (let ((_%h104809%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104799%_ '1 '#f '#f)))
                (_%key?104811%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104799%_ '2 '#f '#f))))
            ((lambda (_%g104813104815%_)
               (if (_%g104813104815%_ _%key104795%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104795%_))))
             _%key?104811%_)
            (let ()
              (declare (not safe))
              (&HashTable-set! _%h104809%_ _%key104795%_ _%value104796%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!102483%_
       '#f))
    (define _%checked-hash-table::update!102485%_
      (lambda (_%self104648%_ _%key104649%_ _%update104650%_ _%default104651%_)
        (let ((_%self104654%_ _%self104648%_))
          (let ((_%h104664%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104654%_ '1 '#f '#f)))
                (_%key?104666%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104654%_ '2 '#f '#f))))
            ((lambda (_%key?104669%_)
               (if (_%key?104669%_ _%key104649%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104649%_)))
               (if (let () (declare (not safe)) (procedure? _%update104650%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104650%_))))
             _%key?104666%_)
            (let ()
              (declare (not safe))
              (&HashTable-update!
               _%h104664%_
               _%key104649%_
               _%update104650%_
               _%default104651%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!102485%_
       '#f))
    (define _%checked-hash-table::delete!102487%_
      (lambda (_%self104502%_ _%key104503%_)
        (let ((_%self104506%_ _%self104502%_))
          (let ((_%h104516%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104506%_ '1 '#f '#f)))
                (_%key?104518%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104506%_ '2 '#f '#f))))
            ((lambda (_%g104520104522%_)
               (if (_%g104520104522%_ _%key104503%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104503%_))))
             _%key?104518%_)
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%h104516%_ _%key104503%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!102487%_
       '#f))
    (define _%checked-hash-table::for-each102489%_
      (lambda (_%self104358%_ _%proc104359%_)
        (let ((_%self104362%_ _%self104358%_))
          (let ((_%h104372%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104362%_ '1 '#f '#f)))
                (_%key?104374%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104362%_ '2 '#f '#f))))
            ((lambda (_%_104377%_)
               (if (let () (declare (not safe)) (procedure? _%proc104359%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc104359%_))))
             _%key?104374%_)
            (let ()
              (declare (not safe))
              (&HashTable-for-each _%h104372%_ _%proc104359%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each102489%_
       '#f))
    (define _%checked-hash-table::length102491%_
      (lambda (_%self104217%_)
        (let ((_%self104220%_ _%self104217%_))
          (let ((_%h104230%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104220%_ '1 '#f '#f)))
                (_%key?104232%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104220%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-length _%h104230%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length102491%_
       '#f))
    (define _%checked-hash-table::copy102493%_
      (lambda (_%self104076%_)
        (let ((_%self104079%_ _%self104076%_))
          (let ((_%h104089%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104079%_ '1 '#f '#f)))
                (_%key?104091%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104079%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-copy _%h104089%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy102493%_
       '#f))
    (define _%checked-hash-table::clear!102495%_
      (lambda (_%self103935%_)
        (let ((_%self103938%_ _%self103935%_))
          (let ((_%h103948%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103938%_ '1 '#f '#f)))
                (_%key?103950%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self103938%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-clear! _%h103948%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!102495%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103805%_
               _%count103806%_
               _%free103807%_
               _%hash103808%_
               _%test103809%_
               _%seed103810%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103805%_
           _%count103806%_
           _%free103807%_
           _%hash103808%_
           _%test103809%_
           _%seed103810%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords103628%_
               _%size-hint103618103629%_
               _%seed103619103631%_
               _%test103620103633%_
               _%hash103621103635%_
               _%lock103622103637%_
               _%check103623103639%_
               _%weak-keys103624103641%_
               _%weak-values103625103643%_)
        (let* ((_%size-hint103646%_
                (if (eq? _%size-hint103618103629%_ absent-value)
                    '#f
                    _%size-hint103618103629%_))
               (_%seed103648%_
                (if (eq? _%seed103619103631%_ absent-value)
                    '#f
                    _%seed103619103631%_))
               (_%test103650%_
                (if (eq? _%test103620103633%_ absent-value)
                    equal?
                    _%test103620103633%_))
               (_%hash103652%_
                (if (eq? _%hash103621103635%_ absent-value)
                    '#f
                    _%hash103621103635%_))
               (_%lock103654%_
                (if (eq? _%lock103622103637%_ absent-value)
                    '#f
                    _%lock103622103637%_))
               (_%check103656%_
                (if (eq? _%check103623103639%_ absent-value)
                    '#f
                    _%check103623103639%_))
               (_%weak-keys103658%_
                (if (eq? _%weak-keys103624103641%_ absent-value)
                    '#f
                    _%weak-keys103624103641%_))
               (_%weak-values103660%_
                (if (eq? _%weak-values103625103643%_ absent-value)
                    '#f
                    _%weak-values103625103643%_)))
          (letrec ((_%table-seed103662%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103648%_))
                          _%seed103648%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103663%_
                    (lambda (_%ht103783%_)
                      (if _%lock103654%_
                          (let ((_%$obj103788%_
                                 (let ((__tmp106891
                                        (let ((_%$obj103785%_ _%lock103654%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103785%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103785%_)))
                                                   '#t)
                                              _%$obj103785%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103785%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103783%_
                                    __tmp106891))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103788%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103788%_)))
                                     '#t)
                                _%$obj103788%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103788%_))))
                          _%ht103783%_)))
                   (_%wrap-checked103664%_
                    (lambda (_%ht103777%_ _%implicit103778%_)
                      (if _%check103656%_
                          (let ((_%$obj103780%_
                                 (let ((__tmp106892
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103656%_))
                                            _%check103656%_
                                            _%implicit103778%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103777%_
                                    __tmp106892))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103780%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103780%_)))
                                     '#t)
                                _%$obj103780%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103780%_))))
                          _%ht103777%_)))
                   (_%make103665%_
                    (lambda (_%kons103762%_
                             _%key?103763%_
                             _%hash103764%_
                             _%test103765%_)
                      (let* ((_%size103767%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103646%_)))
                             (_%table103769%_
                              (let ((__tmp106893 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103767%_ __tmp106893)))
                             (_%ht103774%_
                              (let ((_%$obj103771%_
                                     (_%kons103762%_
                                      _%table103769%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103767%_ '2))
                                      _%hash103764%_
                                      _%test103765%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103662%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103771%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103771%_)))
                                         '#t)
                                    _%$obj103771%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103771%_)))))
                             (__tmp106894
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103663%_ _%ht103774%_))))
                        (declare (not safe))
                        (_%wrap-checked103664%_ __tmp106894 _%key?103763%_))))
                   (_%make-gc-hash-table103666%_
                    (lambda ()
                      (let* ((_%ht103760%_
                              (let ((_%$obj103757%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103646%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103757%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103757%_)))
                                         '#t)
                                    _%$obj103757%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103757%_)))))
                             (__tmp106895
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103663%_ _%ht103760%_))))
                        (declare (not safe))
                        (_%wrap-checked103664%_ __tmp106895 true))))
                   (_%make-gambit-table103667%_
                    (lambda ()
                      (let* ((_%size103735%_
                              (let ((_%$e103732%_ _%size-hint103646%_))
                                (if _%$e103732%_
                                    _%$e103732%_
                                    (macro-absent-obj))))
                             (_%test103740%_
                              (let ((_%$e103737%_ _%test103650%_))
                                (if _%$e103737%_ _%$e103737%_ equal?)))
                             (_%hash103748%_
                              (let ((_%$e103742%_ _%hash103652%_))
                                (if _%$e103742%_
                                    _%$e103742%_
                                    (if (eq? _%test103740%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103740%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103753%_
                              (let ((_%$obj103750%_
                                     (make-table
                                      'size:
                                      _%size103735%_
                                      'test:
                                      _%test103740%_
                                      'hash:
                                      _%hash103748%_
                                      'weak-keys:
                                      _%weak-keys103658%_
                                      'weak-values:
                                      _%weak-values103660%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103750%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103750%_)))
                                         '#t)
                                    _%$obj103750%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103750%_)))))
                             (__tmp106896
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103663%_ _%ht103753%_))))
                        (declare (not safe))
                        (_%wrap-checked103664%_ __tmp106896 true)))))
            (if (or _%weak-keys103658%_ _%weak-values103660%_)
                (let () (declare (not safe)) (_%make-gambit-table103667%_))
                (if (and (or (eq? _%test103650%_ eq?)
                             (eq? _%test103650%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103652%_))
                             (eq? _%hash103652%_ eq?-hash)
                             (eq? _%hash103652%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103648%_)))
                    (let ()
                      (declare (not safe))
                      (_%make-gc-hash-table103666%_))
                    (if (and (or (eq? _%test103650%_ eq?)
                                 (eq? _%test103650%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103652%_))
                                 (eq? _%hash103652%_ eq?-hash)
                                 (eq? _%hash103652%_ eq-hash)))
                        (let ()
                          (declare (not safe))
                          (_%make103665%_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (eq? _%test103650%_ eqv?)
                                     (eq? _%test103650%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103652%_))
                                     (eq? _%hash103652%_ eqv?-hash)
                                     (eq? _%hash103652%_ eqv-hash)))
                            (let ()
                              (declare (not safe))
                              (_%make103665%_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (eq? _%test103650%_ eq?)
                                         (eq? _%test103650%_ ##eq?))
                                     (or (eq? _%hash103652%_ symbolic-hash)
                                         (eq? _%hash103652%_ ##symbol-hash)))
                                (let ()
                                  (declare (not safe))
                                  (_%make103665%_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (eq? _%test103650%_ eq?)
                                             (eq? _%test103650%_ ##eq?))
                                         (eq? _%hash103652%_ immediate-hash))
                                    (let ()
                                      (declare (not safe))
                                      (_%make103665%_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (eq? _%test103650%_ equal?)
                                                 (eq? _%test103650%_ ##equal?)
                                                 (eq? _%test103650%_ string=?)
                                                 (eq? _%test103650%_
                                                      ##string=?))
                                             (or (eq? _%hash103652%_
                                                      string-hash)
                                                 (eq? _%hash103652%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (declare (not safe))
                                          (_%make103665%_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (eq? _%test103650%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103652%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%make103665%_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp106897
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103650%_))))
                                                  (declare (not safe))
                                                  (not __tmp106897))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103650%_))
                                                (if (let ((__tmp106898
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103652%_))))
                                                      (declare (not safe))
                                                      (not __tmp106898))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103652%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%make103665%_
                                                       make-generic-hash-table
                                                       true
                                                       _%hash103652%_
                                                       _%test103650%_))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103795%_ . _%args103796%_)
        (apply make-hash-table__%
               _%@@keywords103795%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103795%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103795%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103795%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103795%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103795%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103795%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103795%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103795%_
                  'weak-values:
                  absent-value))
               _%args103796%_)))
    (define make-hash-table
      (lambda _%args103626103802%_
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
               _%args103626103802%_)))
    (define make-hash-table-eq
      (lambda _%args103615%_
        (apply make-hash-table 'test: eq? _%args103615%_)))
    (define make-hash-table-eqv
      (lambda _%args103613%_
        (apply make-hash-table 'test: eqv? _%args103613%_)))
    (define make-hash-table-symbolic
      (lambda _%args103611%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103611%_)))
    (define make-hash-table-string
      (lambda _%args103609%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103609%_)))
    (define make-hash-table-immediate
      (lambda _%args103607%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103607%_)))
    (define list->hash-table
      (lambda (_%lst103604%_ . _%args103605%_)
        (let ((__tmp106899
               (apply make-hash-table
                      'size:
                      (length _%lst103604%_)
                      _%args103605%_)))
          (declare (not safe))
          (list->hash-table! _%lst103604%_ __tmp106899))))
    (define list->hash-table-eq
      (lambda (_%lst103601%_ . _%args103602%_)
        (let ((__tmp106900
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103601%_)
                      _%args103602%_)))
          (declare (not safe))
          (list->hash-table! _%lst103601%_ __tmp106900))))
    (define list->hash-table-eqv
      (lambda (_%lst103598%_ . _%args103599%_)
        (let ((__tmp106901
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103598%_)
                      _%args103599%_)))
          (declare (not safe))
          (list->hash-table! _%lst103598%_ __tmp106901))))
    (define list->hash-table-symbolic
      (lambda (_%lst103595%_ . _%args103596%_)
        (let ((__tmp106902
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103595%_)
                      _%args103596%_)))
          (declare (not safe))
          (list->hash-table! _%lst103595%_ __tmp106902))))
    (define list->hash-table-string
      (lambda (_%lst103592%_ . _%args103593%_)
        (let ((__tmp106903
               (apply make-hash-table-string
                      'size:
                      (length _%lst103592%_)
                      _%args103593%_)))
          (declare (not safe))
          (list->hash-table! _%lst103592%_ __tmp106903))))
    (define list->hash-table-immediate
      (lambda (_%lst103589%_ . _%args103590%_)
        (let ((__tmp106904
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103589%_)
                      _%args103590%_)))
          (declare (not safe))
          (list->hash-table! _%lst103589%_ __tmp106904))))
    (define list->hash-table!
      (lambda (_%lst103556%_ _%h103557%_)
        (for-each
         (lambda (_%el103559%_)
           (let* ((_%el103560103567%_ _%el103559%_)
                  (_%E103562103571%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103560103567%_
                              '([k . v])))
                     '#!void))
                  (_%K103563103577%_
                   (lambda (_%v103574%_ _%k103575%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103557%_
                        _%k103575%_
                        _%v103574%_)))))
             (if (let () (declare (not safe)) (##pair? _%el103560103567%_))
                 (let ((_%hd103564103580%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103560103567%_)))
                       (_%tl103565103582%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103560103567%_))))
                   (let* ((_%k103585%_ _%hd103564103580%_)
                          (_%v103587%_ _%tl103565103582%_))
                     (declare (not safe))
                     (_%K103563103577%_ _%v103587%_ _%k103585%_)))
                 (let () (declare (not safe)) (_%E103562103571%_)))))
         _%lst103556%_)
        _%h103557%_))
    (define plist->hash-table
      (lambda (_%lst103553%_ . _%args103554%_)
        (let ((__tmp106905
               (apply make-hash-table
                      'size:
                      (length _%lst103553%_)
                      _%args103554%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103553%_ __tmp106905))))
    (define plist->hash-table-eq
      (lambda (_%lst103550%_ . _%args103551%_)
        (let ((__tmp106906
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103550%_)
                      _%args103551%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103550%_ __tmp106906))))
    (define plist->hash-table-eqv
      (lambda (_%lst103547%_ . _%args103548%_)
        (let ((__tmp106907
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103547%_)
                      _%args103548%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103547%_ __tmp106907))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103544%_ . _%args103545%_)
        (let ((__tmp106908
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103544%_)
                      _%args103545%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103544%_ __tmp106908))))
    (define plist->hash-table-string
      (lambda (_%lst103541%_ . _%args103542%_)
        (let ((__tmp106909
               (apply make-hash-table-string
                      'size:
                      (length _%lst103541%_)
                      _%args103542%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103541%_ __tmp106909))))
    (define plist->hash-table-immediate
      (lambda (_%lst103538%_ . _%args103539%_)
        (let ((__tmp106910
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103538%_)
                      _%args103539%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103538%_ __tmp106910))))
    (define plist->hash-table!
      (lambda (_%lst103478%_ _%h103479%_)
        (let _%loop103481%_ ((_%rest103483%_ _%lst103478%_))
          (let* ((_%rest103484103496%_ _%rest103483%_)
                 (_%else103487103504%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst103478%_)))))
            (let ((_%K103490103519%_
                   (lambda (_%rest103515%_ _%val103516%_ _%key103517%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103479%_
                        _%key103517%_
                        _%val103516%_))
                     (let ()
                       (declare (not safe))
                       (_%loop103481%_ _%rest103515%_))))
                  (_%K103489103509%_ (lambda () _%h103479%_)))
              (let ((_%try-match103486103512%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest103484103496%_))
                           (let () (declare (not safe)) (_%K103489103509%_))
                           (let ()
                             (declare (not safe))
                             (_%else103487103504%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest103484103496%_))
                    (let ((_%tl103492103524%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest103484103496%_)))
                          (_%hd103491103522%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest103484103496%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl103492103524%_))
                          (let ((_%tl103494103531%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl103492103524%_)))
                                (_%hd103493103529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl103492103524%_))))
                            (let ((_%key103527%_ _%hd103491103522%_)
                                  (_%val103534%_ _%hd103493103529%_)
                                  (_%rest103536%_ _%tl103494103531%_))
                              (let ()
                                (declare (not safe))
                                (_%K103490103519%_
                                 _%rest103536%_
                                 _%val103534%_
                                 _%key103527%_))))
                          (let ()
                            (declare (not safe))
                            (_%else103487103504%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match103486103512%_)))))))))
    (define hash-length
      (lambda (_%h103460%_)
        (let ()
          (let* ((_%h103466%_
                  (let ((_%$obj103463%_ _%h103460%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103463%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103463%_)))
                             '#t)
                        _%$obj103463%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103463%_)))))
                 (_%h103468%_ _%h103466%_))
            (declare (not safe))
            (__hash-length _%h103468%_)))))
    (define __hash-length
      (lambda (_%h103448%_)
        (let ((_%h103451%_ _%h103448%_))
          (declare (not safe))
          (__HashTable-length _%h103451%_))))
    (define hash-ref__%
      (lambda (_%h103416%_ _%key103417%_ _%default103418%_)
        (let ()
          (let* ((_%h103424%_
                  (let ((_%$obj103421%_ _%h103416%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103421%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103421%_)))
                             '#t)
                        _%$obj103421%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103421%_)))))
                 (_%h103426%_ _%h103424%_))
            (declare (not safe))
            (__hash-ref__% _%h103426%_ _%key103417%_ _%default103418%_)))))
    (define hash-ref__0
      (lambda (_%h103439%_ _%key103440%_)
        (let ((_%default103442%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h103439%_ _%key103440%_ _%default103442%_))))
    (define hash-ref
      (lambda _g106912_
        (let ((_g106911_ (let () (declare (not safe)) (##length _g106912_))))
          (cond ((let () (declare (not safe)) (##fx= _g106911_ 2))
                 (apply (lambda (_%h103439%_ _%key103440%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h103439%_ _%key103440%_)))
                        _g106912_))
                ((let () (declare (not safe)) (##fx= _g106911_ 3))
                 (apply (lambda (_%h103444%_ _%key103445%_ _%default103446%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h103444%_
                             _%key103445%_
                             _%default103446%_)))
                        _g106912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106912_))))))
    (define __hash-ref__%
      (lambda (_%h103387%_ _%key103388%_ _%default103389%_)
        (let ()
          (let* ((_%h103392%_ _%h103387%_)
                 (_%result103401%_
                  (let ()
                    (declare (not safe))
                    (&HashTable-ref
                     _%h103392%_
                     _%key103388%_
                     _%default103389%_))))
            (if (eq? _%result103401%_ (macro-absent-obj))
                (let ()
                  (declare (not safe))
                  (raise-unbound-key-error
                   'hash-ref
                   '"unknown hash key"
                   'hash:
                   _%h103392%_
                   'key:
                   _%key103388%_))
                _%result103401%_)))))
    (define __hash-ref__0
      (lambda (_%h103406%_ _%key103407%_)
        (let ((_%default103409%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h103406%_ _%key103407%_ _%default103409%_))))
    (define __hash-ref
      (lambda _g106914_
        (let ((_g106913_ (let () (declare (not safe)) (##length _g106914_))))
          (cond ((let () (declare (not safe)) (##fx= _g106913_ 2))
                 (apply (lambda (_%h103406%_ _%key103407%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h103406%_ _%key103407%_)))
                        _g106914_))
                ((let () (declare (not safe)) (##fx= _g106913_ 3))
                 (apply (lambda (_%h103411%_ _%key103412%_ _%default103413%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h103411%_
                             _%key103412%_
                             _%default103413%_)))
                        _g106914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106914_))))))
    (define hash-get
      (lambda (_%h103367%_ _%key103368%_)
        (let ()
          (let* ((_%h103374%_
                  (let ((_%$obj103371%_ _%h103367%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103371%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103371%_)))
                             '#t)
                        _%$obj103371%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103371%_)))))
                 (_%h103376%_ _%h103374%_))
            (declare (not safe))
            (__hash-get _%h103376%_ _%key103368%_)))))
    (define __hash-get
      (lambda (_%h103354%_ _%key103355%_)
        (let ((_%h103358%_ _%h103354%_))
          (declare (not safe))
          (&HashTable-ref _%h103358%_ _%key103355%_ '#f))))
    (define hash-put!
      (lambda (_%h103334%_ _%key103335%_ _%value103336%_)
        (let ()
          (let* ((_%h103342%_
                  (let ((_%$obj103339%_ _%h103334%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103339%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103339%_)))
                             '#t)
                        _%$obj103339%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103339%_)))))
                 (_%h103344%_ _%h103342%_))
            (declare (not safe))
            (__hash-put! _%h103344%_ _%key103335%_ _%value103336%_)))))
    (define __hash-put!
      (lambda (_%h103320%_ _%key103321%_ _%value103322%_)
        (let ((_%h103325%_ _%h103320%_))
          (declare (not safe))
          (&HashTable-set! _%h103325%_ _%key103321%_ _%value103322%_))))
    (define hash-update!__%
      (lambda (_%h103285%_ _%key103286%_ _%update103287%_ _%default103288%_)
        (let ()
          (let* ((_%h103294%_
                  (let ((_%$obj103291%_ _%h103285%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103291%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103291%_)))
                             '#t)
                        _%$obj103291%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103291%_)))))
                 (_%h103296%_ _%h103294%_))
            (declare (not safe))
            (__hash-update!__%
             _%h103296%_
             _%key103286%_
             _%update103287%_
             _%default103288%_)))))
    (define hash-update!__0
      (lambda (_%h103309%_ _%key103310%_ _%update103311%_)
        (let ((_%default103313%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h103309%_
           _%key103310%_
           _%update103311%_
           _%default103313%_))))
    (define hash-update!
      (lambda _g106916_
        (let ((_g106915_ (let () (declare (not safe)) (##length _g106916_))))
          (cond ((let () (declare (not safe)) (##fx= _g106915_ 3))
                 (apply (lambda (_%h103309%_ _%key103310%_ _%update103311%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h103309%_
                             _%key103310%_
                             _%update103311%_)))
                        _g106916_))
                ((let () (declare (not safe)) (##fx= _g106915_ 4))
                 (apply (lambda (_%h103315%_
                                 _%key103316%_
                                 _%update103317%_
                                 _%default103318%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h103315%_
                             _%key103316%_
                             _%update103317%_
                             _%default103318%_)))
                        _g106916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106916_))))))
    (define __hash-update!__%
      (lambda (_%h103255%_ _%key103256%_ _%update103257%_ _%default103258%_)
        (let ((_%h103261%_ _%h103255%_))
          (declare (not safe))
          (HashTable-update!
           _%h103261%_
           _%key103256%_
           _%update103257%_
           _%default103258%_))))
    (define __hash-update!__0
      (lambda (_%h103273%_ _%key103274%_ _%update103275%_)
        (let ((_%default103277%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h103273%_
           _%key103274%_
           _%update103275%_
           _%default103277%_))))
    (define __hash-update!
      (lambda _g106918_
        (let ((_g106917_ (let () (declare (not safe)) (##length _g106918_))))
          (cond ((let () (declare (not safe)) (##fx= _g106917_ 3))
                 (apply (lambda (_%h103273%_ _%key103274%_ _%update103275%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h103273%_
                             _%key103274%_
                             _%update103275%_)))
                        _g106918_))
                ((let () (declare (not safe)) (##fx= _g106917_ 4))
                 (apply (lambda (_%h103279%_
                                 _%key103280%_
                                 _%update103281%_
                                 _%default103282%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h103279%_
                             _%key103280%_
                             _%update103281%_
                             _%default103282%_)))
                        _g106918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106918_))))))
    (define hash-remove!
      (lambda (_%h103235%_ _%key103236%_)
        (let ()
          (let* ((_%h103242%_
                  (let ((_%$obj103239%_ _%h103235%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103239%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103239%_)))
                             '#t)
                        _%$obj103239%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103239%_)))))
                 (_%h103244%_ _%h103242%_))
            (declare (not safe))
            (__hash-remove! _%h103244%_ _%key103236%_)))))
    (define __hash-remove!
      (lambda (_%h103222%_ _%key103223%_)
        (let ((_%h103226%_ _%h103222%_))
          (declare (not safe))
          (&HashTable-delete! _%h103226%_ _%key103223%_))))
    (define hash-key?
      (lambda (_%h103203%_ _%k103204%_)
        (let ()
          (let* ((_%h103210%_
                  (let ((_%$obj103207%_ _%h103203%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103207%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103207%_)))
                             '#t)
                        _%$obj103207%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103207%_)))))
                 (_%h103212%_ _%h103210%_))
            (declare (not safe))
            (__hash-key? _%h103212%_ _%k103204%_)))))
    (define __hash-key?
      (lambda (_%h103190%_ _%k103191%_)
        (let ()
          (let* ((_%h103194%_ _%h103190%_)
                 (__tmp106919
                  (eq? (let ()
                         (declare (not safe))
                         (&HashTable-ref _%h103194%_ _%k103191%_ absent-value))
                       absent-value)))
            (declare (not safe))
            (not __tmp106919)))))
    (define hash->list
      (lambda (_%h103172%_)
        (let ()
          (let* ((_%h103178%_
                  (let ((_%$obj103175%_ _%h103172%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103175%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103175%_)))
                             '#t)
                        _%$obj103175%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103175%_)))))
                 (_%h103180%_ _%h103178%_))
            (declare (not safe))
            (__hash->list _%h103180%_)))))
    (define __hash->list
      (lambda (_%h103155%_)
        (let ()
          (let* ((_%h103158%_ _%h103155%_) (_%lst103167%_ '()))
            (let ((__tmp106920
                   (lambda (_%k103169%_ _%v103170%_)
                     (set! _%lst103167%_
                           (cons (cons _%k103169%_ _%v103170%_)
                                 _%lst103167%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103158%_ __tmp106920))
            _%lst103167%_))))
    (define hash->plist
      (lambda (_%h103137%_)
        (let ()
          (let* ((_%h103143%_
                  (let ((_%$obj103140%_ _%h103137%_))
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
                          (cast HashTable::interface _%$obj103140%_)))))
                 (_%h103145%_ _%h103143%_))
            (declare (not safe))
            (__hash->plist _%h103145%_)))))
    (define __hash->plist
      (lambda (_%h103120%_)
        (let ()
          (let* ((_%h103123%_ _%h103120%_) (_%lst103132%_ '()))
            (let ((__tmp106921
                   (lambda (_%k103134%_ _%v103135%_)
                     (set! _%lst103132%_
                           (let ((__tmp106922
                                  (let ()
                                    (declare (not safe))
                                    (cons _%v103135%_ _%lst103132%_))))
                             (declare (not safe))
                             (cons _%k103134%_ __tmp106922))))))
              (declare (not safe))
              (&HashTable-for-each _%h103123%_ __tmp106921))
            _%lst103132%_))))
    (define hash-for-each
      (lambda (_%proc103091%_ _%h103092%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103091%_))
              (let ((_%proc103096%_ _%proc103091%_))
                (let* ((_%h103108%_
                        (let ((_%$obj103105%_ _%h103092%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103105%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103105%_)))
                                   '#t)
                              _%$obj103105%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103105%_)))))
                       (_%h103110%_ _%h103108%_))
                  (declare (not safe))
                  (__hash-for-each _%proc103096%_ _%h103110%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103091%_)
                '#!void)))))
    (define __hash-for-each
      (lambda (_%proc103070%_ _%h103071%_)
        (let ()
          (let* ((_%proc103074%_ _%proc103070%_) (_%h103082%_ _%h103071%_))
            (declare (not safe))
            (&HashTable-for-each _%h103082%_ _%proc103074%_)))))
    (define hash-map
      (lambda (_%proc103041%_ _%h103042%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103041%_))
              (let ((_%proc103046%_ _%proc103041%_))
                (let* ((_%h103058%_
                        (let ((_%$obj103055%_ _%h103042%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103055%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103055%_)))
                                   '#t)
                              _%$obj103055%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103055%_)))))
                       (_%h103060%_ _%h103058%_))
                  (declare (not safe))
                  (__hash-map _%proc103046%_ _%h103060%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103041%_)
                '#!void)))))
    (define __hash-map
      (lambda (_%proc103015%_ _%h103016%_)
        (let ((_%proc103019%_ _%proc103015%_))
          (let* ((_%h103027%_ _%h103016%_) (_%result103036%_ '()))
            (let ((__tmp106923
                   (lambda (_%k103038%_ _%v103039%_)
                     (set! _%result103036%_
                           (cons (let ()
                                   (declare (not safe))
                                   (_%proc103019%_ _%k103038%_ _%v103039%_))
                                 _%result103036%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103027%_ __tmp106923))
            _%result103036%_))))
    (define hash-fold
      (lambda (_%proc102985%_ _%iv102986%_ _%h102987%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102985%_))
              (let ((_%proc102991%_ _%proc102985%_))
                (let* ((_%h103003%_
                        (let ((_%$obj103000%_ _%h102987%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103000%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103000%_)))
                                   '#t)
                              _%$obj103000%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103000%_)))))
                       (_%h103005%_ _%h103003%_))
                  (declare (not safe))
                  (__hash-fold _%proc102991%_ _%iv102986%_ _%h103005%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102985%_)
                '#!void)))))
    (define __hash-fold
      (lambda (_%proc102958%_ _%iv102959%_ _%h102960%_)
        (let ((_%proc102963%_ _%proc102958%_))
          (let* ((_%h102971%_ _%h102960%_) (_%result102980%_ _%iv102959%_))
            (let ((__tmp106924
                   (lambda (_%k102982%_ _%v102983%_)
                     (set! _%result102980%_
                           (let ()
                             (declare (not safe))
                             (_%proc102963%_
                              _%k102982%_
                              _%v102983%_
                              _%result102980%_))))))
              (declare (not safe))
              (&HashTable-for-each _%h102971%_ __tmp106924))
            _%result102980%_))))
    (define hash-find__%
      (lambda (_%proc102916%_ _%h102917%_ _%default-value102918%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102916%_))
              (let ((_%proc102922%_ _%proc102916%_))
                (let* ((_%h102934%_
                        (let ((_%$obj102931%_ _%h102917%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj102931%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj102931%_)))
                                   '#t)
                              _%$obj102931%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj102931%_)))))
                       (_%h102936%_ _%h102934%_))
                  (declare (not safe))
                  (__hash-find__%
                   _%proc102922%_
                   _%h102936%_
                   _%default-value102918%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102916%_)
                '#!void)))))
    (define hash-find__0
      (lambda (_%proc102949%_ _%h102950%_)
        (let ((_%default-value102952%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc102949%_ _%h102950%_ _%default-value102952%_))))
    (define hash-find
      (lambda _g106926_
        (let ((_g106925_ (let () (declare (not safe)) (##length _g106926_))))
          (cond ((let () (declare (not safe)) (##fx= _g106925_ 2))
                 (apply (lambda (_%proc102949%_ _%h102950%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc102949%_ _%h102950%_)))
                        _g106926_))
                ((let () (declare (not safe)) (##fx= _g106925_ 3))
                 (apply (lambda (_%proc102954%_
                                 _%h102955%_
                                 _%default-value102956%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc102954%_
                             _%h102955%_
                             _%default-value102956%_)))
                        _g106926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106926_))))))
    (define __hash-find__%
      (lambda (_%proc102873%_ _%h102874%_ _%default-value102875%_)
        (let ((_%proc102878%_ _%proc102873%_))
          (let* ((_%h102886%_ _%h102874%_)
                 (__tmp106927
                  (lambda (_%return102895%_)
                    (let ((__tmp106928
                           (lambda (_%k102897%_ _%v102898%_)
                             (let ((_%$e102900%_
                                    (let ()
                                      (declare (not safe))
                                      (_%proc102878%_
                                       _%k102897%_
                                       _%v102898%_))))
                               (if _%$e102900%_
                                   (_%return102895%_ _%$e102900%_)
                                   '#!void)))))
                      (declare (not safe))
                      (&HashTable-for-each _%h102886%_ __tmp106928))
                    _%default-value102875%_)))
            (declare (not safe))
            (##call-with-current-continuation __tmp106927)))))
    (define __hash-find__0
      (lambda (_%proc102906%_ _%h102907%_)
        (let ((_%default-value102909%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102906%_
           _%h102907%_
           _%default-value102909%_))))
    (define __hash-find
      (lambda _g106930_
        (let ((_g106929_ (let () (declare (not safe)) (##length _g106930_))))
          (cond ((let () (declare (not safe)) (##fx= _g106929_ 2))
                 (apply (lambda (_%proc102906%_ _%h102907%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102906%_ _%h102907%_)))
                        _g106930_))
                ((let () (declare (not safe)) (##fx= _g106929_ 3))
                 (apply (lambda (_%proc102911%_
                                 _%h102912%_
                                 _%default-value102913%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102911%_
                             _%h102912%_
                             _%default-value102913%_)))
                        _g106930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106930_))))))
    (define hash-keys
      (lambda (_%h102854%_)
        (let ()
          (let* ((_%h102860%_
                  (let ((_%$obj102857%_ _%h102854%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102857%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102857%_)))
                             '#t)
                        _%$obj102857%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102857%_)))))
                 (_%h102862%_ _%h102860%_))
            (declare (not safe))
            (__hash-keys _%h102862%_)))))
    (define __hash-keys
      (lambda (_%h102837%_)
        (let ()
          (let* ((_%h102840%_ _%h102837%_) (_%result102849%_ '()))
            (let ((__tmp106931
                   (lambda (_%k102851%_ _%v102852%_)
                     (set! _%result102849%_
                           (cons _%k102851%_ _%result102849%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102840%_ __tmp106931))
            _%result102849%_))))
    (define hash-values
      (lambda (_%h102819%_)
        (let ()
          (let* ((_%h102825%_
                  (let ((_%$obj102822%_ _%h102819%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102822%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102822%_)))
                             '#t)
                        _%$obj102822%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102822%_)))))
                 (_%h102827%_ _%h102825%_))
            (declare (not safe))
            (__hash-values _%h102827%_)))))
    (define __hash-values
      (lambda (_%h102802%_)
        (let ()
          (let* ((_%h102805%_ _%h102802%_) (_%result102814%_ '()))
            (let ((__tmp106932
                   (lambda (_%k102816%_ _%v102817%_)
                     (set! _%result102814%_
                           (cons _%v102817%_ _%result102814%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102805%_ __tmp106932))
            _%result102814%_))))
    (define hash-copy
      (lambda (_%h102784%_)
        (let ()
          (let* ((_%h102790%_
                  (let ((_%$obj102787%_ _%h102784%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102787%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102787%_)))
                             '#t)
                        _%$obj102787%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102787%_)))))
                 (_%h102792%_ _%h102790%_))
            (declare (not safe))
            (__hash-copy _%h102792%_)))))
    (define __hash-copy
      (lambda (_%h102772%_)
        (let ((_%h102775%_ _%h102772%_))
          (declare (not safe))
          (__HashTable-copy _%h102775%_))))
    (define hash-clear!
      (lambda (_%h102754%_)
        (let ()
          (let* ((_%h102760%_
                  (let ((_%$obj102757%_ _%h102754%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102757%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102757%_)))
                             '#t)
                        _%$obj102757%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102757%_)))))
                 (_%h102762%_ _%h102760%_))
            (declare (not safe))
            (__hash-clear! _%h102762%_)))))
    (define __hash-clear!
      (lambda (_%h102742%_)
        (let ((_%h102745%_ _%h102742%_))
          (declare (not safe))
          (&HashTable-clear! _%h102745%_))))
    (define hash-merge
      (lambda (_%h102723%_ . _%rest102724%_)
        (let ()
          (let* ((_%h102730%_
                  (let ((_%$obj102727%_ _%h102723%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102727%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102727%_)))
                             '#t)
                        _%$obj102727%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102727%_)))))
                 (_%h102732%_ _%h102730%_))
            (declare (not safe))
            (##apply __hash-merge _%h102732%_ _%rest102724%_)))))
    (define __hash-merge
      (lambda (_%h102708%_ . _%rest102709%_)
        (let ()
          (let* ((_%h102712%_ _%h102708%_)
                 (_%copy102721%_
                  (let ()
                    (declare (not safe))
                    (__HashTable-copy _%h102712%_))))
            (apply hash-merge! _%copy102721%_ _%rest102709%_)
            _%copy102721%_))))
    (define hash-merge!
      (lambda (_%h102689%_ . _%rest102690%_)
        (let ()
          (let* ((_%h102696%_
                  (let ((_%$obj102693%_ _%h102689%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102693%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102693%_)))
                             '#t)
                        _%$obj102693%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102693%_)))))
                 (_%h102698%_ _%h102696%_))
            (declare (not safe))
            (##apply __hash-merge! _%h102698%_ _%rest102690%_)))))
    (define __hash-merge!
      (lambda (_%h102652%_ . _%rest102653%_)
        (let ((_%h102656%_ _%h102652%_))
          (for-each
           (lambda (_%hr102665%_)
             (let ()
               (let* ((_%hr102671%_
                       (let ((_%$obj102668%_ _%hr102665%_))
                         (if (and (let ()
                                    (declare (not safe))
                                    (##structure? _%$obj102668%_))
                                  (eq? HashTable::t
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _%$obj102668%_)))
                                  '#t)
                             _%$obj102668%_
                             (let ()
                               (declare (not safe))
                               (cast HashTable::interface _%$obj102668%_)))))
                      (_%hr102673%_ _%hr102671%_)
                      (__tmp106933
                       (lambda (_%k102686%_ _%v102687%_)
                         (if (let ()
                               (declare (not safe))
                               (__hash-key? _%h102656%_ _%k102686%_))
                             '#!void
                             (let ()
                               (declare (not safe))
                               (&HashTable-set!
                                _%h102656%_
                                _%k102686%_
                                _%v102687%_))))))
                 (declare (not safe))
                 (&HashTable-for-each _%hr102673%_ __tmp106933))))
           _%rest102653%_)
          _%h102656%_)))))
