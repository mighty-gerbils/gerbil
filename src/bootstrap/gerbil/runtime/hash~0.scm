(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1742226231)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp111139 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp111139
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args111119%_
        (apply make-instance UnboundKeyError::t _%$args111119%_)))
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
      (lambda (_%where110993%_ _%message110994%_ . _%irritants110995%_)
        (let ((__tmp111140
               (let ((__obj111133
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj111133
                    _%message110994%_
                    'where:
                    _%where110993%_
                    'irritants:
                    _%irritants110995%_))
                 __obj111133)))
          (declare (not safe))
          (raise __tmp111140))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp111141 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp111141
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
      (lambda (_%obj110991%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj110991%_))))
    (define try-HashTable
      (lambda (_%obj110989%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj110989%_))))
    (define HashTable?
      (lambda (_%obj110987%_)
        (let ((__tmp111142
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110987%_ __tmp111142))))
    (define is-HashTable?
      (lambda (_%obj110985%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj110985%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self110969%_)
        (let* ((_%self110974%_
                (let ((_%$obj110971%_ _%self110969%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110971%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110971%_)))
                           '#t)
                      _%$obj110971%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110971%_)))))
               (_%self110976%_ _%self110974%_))
          (&HashTable-clear! _%self110976%_))))
    (define &HashTable-clear!
      (lambda (_%self110954%_)
        (let ((_%self110956%_ _%self110954%_))
          (declare (not safe))
          (let ((_%obj110966%_
                 (##unchecked-structure-ref _%self110956%_ '1 '#f 'clear!))
                (_%f110967%_
                 (##unchecked-structure-ref _%self110956%_ '2 '#f 'clear!)))
            (_%f110967%_ _%obj110966%_)))))
    (define HashTable-copy
      (lambda (_%self110938%_)
        (let* ((_%self110943%_
                (let ((_%$obj110940%_ _%self110938%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110940%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110940%_)))
                           '#t)
                      _%$obj110940%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110940%_)))))
               (_%self110945%_ _%self110943%_))
          (__HashTable-copy _%self110945%_))))
    (define __HashTable-copy
      (lambda (_%self110925%_)
        (let* ((_%self110927%_ _%self110925%_)
               (_%$obj110935%_ (&HashTable-copy _%self110927%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj110935%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj110935%_)))
                   '#t)
              _%$obj110935%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj110935%_))))))
    (define &HashTable-copy
      (lambda (_%self110910%_)
        (let ((_%self110912%_ _%self110910%_))
          (declare (not safe))
          (let ((_%obj110922%_
                 (##unchecked-structure-ref _%self110912%_ '1 '#f 'copy))
                (_%f110923%_
                 (##unchecked-structure-ref _%self110912%_ '3 '#f 'copy)))
            (_%f110923%_ _%obj110922%_)))))
    (define HashTable-delete!
      (lambda (_%self110893%_ _%key110894%_)
        (let* ((_%self110899%_
                (let ((_%$obj110896%_ _%self110893%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110896%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110896%_)))
                           '#t)
                      _%$obj110896%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110896%_)))))
               (_%self110901%_ _%self110899%_))
          (&HashTable-delete! _%self110901%_ _%key110894%_))))
    (define &HashTable-delete!
      (lambda (_%self110877%_ _%key110878%_)
        (let ((_%self110880%_ _%self110877%_))
          (declare (not safe))
          (let ((_%obj110890%_
                 (##unchecked-structure-ref _%self110880%_ '1 '#f 'delete!))
                (_%f110891%_
                 (##unchecked-structure-ref _%self110880%_ '4 '#f 'delete!)))
            (_%f110891%_ _%obj110890%_ _%key110878%_)))))
    (define HashTable-for-each
      (lambda (_%self110850%_ _%proc110851%_)
        (let* ((_%self110856%_
                (let ((_%$obj110853%_ _%self110850%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110853%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110853%_)))
                           '#t)
                      _%$obj110853%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110853%_)))))
               (_%self110858%_ _%self110856%_))
          (if (procedure? _%proc110851%_)
              (let ((_%proc110867%_ _%proc110851%_))
                (&HashTable-for-each _%self110858%_ _%proc110867%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110851%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self110826%_ _%proc110827%_)
        (let* ((_%self110829%_ _%self110826%_) (_%proc110836%_ _%proc110827%_))
          (declare (not safe))
          (let ((_%obj110847%_
                 (##unchecked-structure-ref _%self110829%_ '1 '#f 'for-each))
                (_%f110848%_
                 (##unchecked-structure-ref _%self110829%_ '5 '#f 'for-each)))
            (_%f110848%_ _%obj110847%_ _%proc110836%_)))))
    (define HashTable-length
      (lambda (_%self110810%_)
        (let* ((_%self110815%_
                (let ((_%$obj110812%_ _%self110810%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110812%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110812%_)))
                           '#t)
                      _%$obj110812%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110812%_)))))
               (_%self110817%_ _%self110815%_))
          (__HashTable-length _%self110817%_))))
    (define __HashTable-length
      (lambda (_%self110797%_)
        (let* ((_%self110799%_ _%self110797%_)
               (_%val110807%_ (&HashTable-length _%self110799%_)))
          _%val110807%_)))
    (define &HashTable-length
      (lambda (_%self110782%_)
        (let ((_%self110784%_ _%self110782%_))
          (declare (not safe))
          (let ((_%obj110794%_
                 (##unchecked-structure-ref _%self110784%_ '1 '#f 'length))
                (_%f110795%_
                 (##unchecked-structure-ref _%self110784%_ '6 '#f 'length)))
            (_%f110795%_ _%obj110794%_)))))
    (define HashTable-ref
      (lambda (_%self110764%_ _%key110765%_ _%default110766%_)
        (let* ((_%self110771%_
                (let ((_%$obj110768%_ _%self110764%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110768%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110768%_)))
                           '#t)
                      _%$obj110768%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110768%_)))))
               (_%self110773%_ _%self110771%_))
          (&HashTable-ref _%self110773%_ _%key110765%_ _%default110766%_))))
    (define &HashTable-ref
      (lambda (_%self110747%_ _%key110748%_ _%default110749%_)
        (let ((_%self110751%_ _%self110747%_))
          (declare (not safe))
          (let ((_%obj110761%_
                 (##unchecked-structure-ref _%self110751%_ '1 '#f 'ref))
                (_%f110762%_
                 (##unchecked-structure-ref _%self110751%_ '7 '#f 'ref)))
            (_%f110762%_ _%obj110761%_ _%key110748%_ _%default110749%_)))))
    (define HashTable-set!
      (lambda (_%self110729%_ _%key110730%_ _%value110731%_)
        (let* ((_%self110736%_
                (let ((_%$obj110733%_ _%self110729%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110733%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110733%_)))
                           '#t)
                      _%$obj110733%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110733%_)))))
               (_%self110738%_ _%self110736%_))
          (&HashTable-set! _%self110738%_ _%key110730%_ _%value110731%_))))
    (define &HashTable-set!
      (lambda (_%self110712%_ _%key110713%_ _%value110714%_)
        (let ((_%self110716%_ _%self110712%_))
          (declare (not safe))
          (let ((_%obj110726%_
                 (##unchecked-structure-ref _%self110716%_ '1 '#f 'set!))
                (_%f110727%_
                 (##unchecked-structure-ref _%self110716%_ '8 '#f 'set!)))
            (_%f110727%_ _%obj110726%_ _%key110713%_ _%value110714%_)))))
    (define HashTable-update!
      (lambda (_%self110683%_ _%key110684%_ _%proc110685%_ _%default110686%_)
        (let* ((_%self110691%_
                (let ((_%$obj110688%_ _%self110683%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110688%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110688%_)))
                           '#t)
                      _%$obj110688%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110688%_)))))
               (_%self110693%_ _%self110691%_))
          (if (procedure? _%proc110685%_)
              (let ((_%proc110702%_ _%proc110685%_))
                (&HashTable-update!
                 _%self110693%_
                 _%key110684%_
                 _%proc110702%_
                 _%default110686%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110685%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self110655%_ _%key110656%_ _%proc110657%_ _%default110658%_)
        (let* ((_%self110660%_ _%self110655%_) (_%proc110667%_ _%proc110657%_))
          (declare (not safe))
          (let ((_%obj110678%_
                 (##unchecked-structure-ref _%self110660%_ '1 '#f 'update!))
                (_%f110680%_
                 (##unchecked-structure-ref _%self110660%_ '9 '#f 'update!)))
            (_%f110680%_
             _%obj110678%_
             _%key110656%_
             _%proc110667%_
             _%default110658%_)))))
    (define Locker::t
      (let ((__tmp111143 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp111143
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
      (lambda (_%obj110653%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj110653%_))))
    (define try-Locker
      (lambda (_%obj110651%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj110651%_))))
    (define Locker?
      (lambda (_%obj110649%_)
        (let ((__tmp111144
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110649%_ __tmp111144))))
    (define is-Locker?
      (lambda (_%obj110647%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj110647%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self110631%_)
        (let* ((_%self110636%_
                (let ((_%$obj110633%_ _%self110631%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110633%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110633%_)))
                           '#t)
                      _%$obj110633%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110633%_)))))
               (_%self110638%_ _%self110636%_))
          (&Locker-read-lock! _%self110638%_))))
    (define &Locker-read-lock!
      (lambda (_%self110616%_)
        (let ((_%self110618%_ _%self110616%_))
          (declare (not safe))
          (let ((_%obj110628%_
                 (##unchecked-structure-ref _%self110618%_ '1 '#f 'read-lock!))
                (_%f110629%_
                 (##unchecked-structure-ref
                  _%self110618%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f110629%_ _%obj110628%_)))))
    (define Locker-read-unlock!
      (lambda (_%self110600%_)
        (let* ((_%self110605%_
                (let ((_%$obj110602%_ _%self110600%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110602%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110602%_)))
                           '#t)
                      _%$obj110602%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110602%_)))))
               (_%self110607%_ _%self110605%_))
          (&Locker-read-unlock! _%self110607%_))))
    (define &Locker-read-unlock!
      (lambda (_%self110585%_)
        (let ((_%self110587%_ _%self110585%_))
          (declare (not safe))
          (let ((_%obj110597%_
                 (##unchecked-structure-ref
                  _%self110587%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f110598%_
                 (##unchecked-structure-ref
                  _%self110587%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f110598%_ _%obj110597%_)))))
    (define Locker-write-lock!
      (lambda (_%self110569%_)
        (let* ((_%self110574%_
                (let ((_%$obj110571%_ _%self110569%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110571%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110571%_)))
                           '#t)
                      _%$obj110571%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110571%_)))))
               (_%self110576%_ _%self110574%_))
          (&Locker-write-lock! _%self110576%_))))
    (define &Locker-write-lock!
      (lambda (_%self110554%_)
        (let ((_%self110556%_ _%self110554%_))
          (declare (not safe))
          (let ((_%obj110566%_
                 (##unchecked-structure-ref
                  _%self110556%_
                  '1
                  '#f
                  'write-lock!))
                (_%f110567%_
                 (##unchecked-structure-ref
                  _%self110556%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f110567%_ _%obj110566%_)))))
    (define Locker-write-unlock!
      (lambda (_%self110538%_)
        (let* ((_%self110543%_
                (let ((_%$obj110540%_ _%self110538%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110540%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110540%_)))
                           '#t)
                      _%$obj110540%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110540%_)))))
               (_%self110545%_ _%self110543%_))
          (&Locker-write-unlock! _%self110545%_))))
    (define &Locker-write-unlock!
      (lambda (_%self110521%_)
        (let ((_%self110523%_ _%self110521%_))
          (declare (not safe))
          (let ((_%obj110533%_
                 (##unchecked-structure-ref
                  _%self110523%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f110535%_
                 (##unchecked-structure-ref
                  _%self110523%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f110535%_ _%obj110533%_)))))
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
      (lambda (_%table110514%_
               _%key110515%_
               _%update110516%_
               _%default110517%_)
        (let ((_%result110519%_
               (table-ref _%table110514%_ _%key110515%_ _%default110517%_)))
          (table-set!
           _%table110514%_
           _%key110515%_
           (_%update110516%_ _%default110517%_)))))
    (define gambit-table-for-each
      (lambda (_%table110511%_ _%proc110512%_)
        (table-for-each _%proc110512%_ _%table110511%_)))
    (define gambit-table-clear!
      (lambda (_%table110509%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table110509%_ '0 '5 '#f '#f))))
    (let ((__tmp111145 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111145 'HashTable::ref table-ref))
    (let ((__tmp111146 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111146 'HashTable::set! table-set!))
    (let ((__tmp111147 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111147 'HashTable::update! gambit-table-update!))
    (let ((__tmp111148 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111148 'HashTable::delete! table-set!))
    (let ((__tmp111149 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111149 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp111150 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111150 'HashTable::length table-length))
    (let ((__tmp111151 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111151 'HashTable::copy table-copy))
    (let ((__tmp111152 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111152 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots110491%_ '(table count free hash test seed))
             (_%slot-vector110493%_ (list->vector (cons '#f _%slots110491%_)))
             (_%slot-table110500%_
              (let ((_%slot-table110495%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111155
                       (lambda (_%slot110497%_ _%field110498%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110495%_
                            _%slot110497%_
                            _%field110498%_))
                         (let ((__tmp111156
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110497%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110495%_
                            __tmp111156
                            _%field110498%_))))
                      (__tmp111153
                       (let ((__tmp111154
                              (let ()
                                (declare (not safe))
                                (##length _%slots110491%_))))
                         (declare (not safe))
                         (##iota __tmp111154 '1))))
                  (declare (not safe))
                  (##for-each __tmp111155 _%slots110491%_ __tmp111153))
                _%slot-table110495%_))
             (_%flags110502%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110504%_ '#())
             (_%properties110506%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110491%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111157 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags110502%_
         __table::t
         _%fields110504%_
         __tmp111157
         _%slot-vector110493%_
         _%slot-table110500%_
         _%properties110506%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots110473%_ '(gcht immediate))
             (_%slot-vector110475%_ (list->vector (cons '#f _%slots110473%_)))
             (_%slot-table110482%_
              (let ((_%slot-table110477%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111160
                       (lambda (_%slot110479%_ _%field110480%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110477%_
                            _%slot110479%_
                            _%field110480%_))
                         (let ((__tmp111161
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110479%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110477%_
                            __tmp111161
                            _%field110480%_))))
                      (__tmp111158
                       (let ((__tmp111159
                              (let ()
                                (declare (not safe))
                                (##length _%slots110473%_))))
                         (declare (not safe))
                         (##iota __tmp111159 '1))))
                  (declare (not safe))
                  (##for-each __tmp111160 _%slots110473%_ __tmp111158))
                _%slot-table110477%_))
             (_%flags110484%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110486%_ '#())
             (_%properties110488%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110473%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111162 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags110484%_
         __gc-table::t
         _%fields110486%_
         __tmp111162
         _%slot-vector110475%_
         _%slot-table110482%_
         _%properties110488%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp111164 (list))
            (__tmp111163
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp111164
         '(table lock)
         __tmp111163
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args110470%_
        (apply make-instance locked-hash-table::t _%$args110470%_)))
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
      (let ((__tmp111166 (list))
            (__tmp111165
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp111166
         '(table key-check)
         __tmp111165
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args110467%_
        (apply make-instance checked-hash-table::t _%$args110467%_)))
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
      (let ((__tmp111168 (list hash-table::t))
            (__tmp111167 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp111168
         '()
         __tmp111167
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args110464%_
        (apply make-instance eq-hash-table::t _%$args110464%_)))
    (define eqv-hash-table::t
      (let ((__tmp111170 (list hash-table::t))
            (__tmp111169 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp111170
         '()
         __tmp111169
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args110461%_
        (apply make-instance eqv-hash-table::t _%$args110461%_)))
    (define symbol-hash-table::t
      (let ((__tmp111172 (list hash-table::t))
            (__tmp111171 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp111172
         '()
         __tmp111171
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args110458%_
        (apply make-instance symbol-hash-table::t _%$args110458%_)))
    (define string-hash-table::t
      (let ((__tmp111174 (list hash-table::t))
            (__tmp111173 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp111174
         '()
         __tmp111173
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args110455%_
        (apply make-instance string-hash-table::t _%$args110455%_)))
    (define immediate-hash-table::t
      (let ((__tmp111176 (list hash-table::t))
            (__tmp111175 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp111176
         '()
         __tmp111175
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args110452%_
        (apply make-instance immediate-hash-table::t _%$args110452%_)))
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
    (define _%locked-hash-table::HashTable::ref106452%_
      (lambda (_%self106451110426%_ _%key110428%_ _%default110429%_)
        (let* ((_%self110431%_ _%self106451110426%_)
               (_%self110434%_ _%self110431%_))
          (let ((_%h110444%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110434%_ '1 '#f '#f)))
                (_%l110446%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110434%_ '2 '#f '#f))))
            (let ((__tmp111179 (lambda () (&Locker-read-lock! _%l110446%_)))
                  (__tmp111178
                   (lambda ()
                     (&HashTable-ref
                      _%h110444%_
                      _%key110428%_
                      _%default110429%_)))
                  (__tmp111177 (lambda () (&Locker-read-unlock! _%l110446%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111179 __tmp111178 __tmp111177))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref106452%_
       '#f))
    (define _%locked-hash-table::HashTable::set!106455%_
      (lambda (_%self106454110277%_ _%key110279%_ _%value110280%_)
        (let* ((_%self110282%_ _%self106454110277%_)
               (_%self110285%_ _%self110282%_))
          (let ((_%h110295%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110285%_ '1 '#f '#f)))
                (_%l110297%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110285%_ '2 '#f '#f))))
            (let ((__tmp111182 (lambda () (&Locker-write-lock! _%l110297%_)))
                  (__tmp111181
                   (lambda ()
                     (&HashTable-set!
                      _%h110295%_
                      _%key110279%_
                      _%value110280%_)))
                  (__tmp111180
                   (lambda () (&Locker-write-unlock! _%l110297%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111182 __tmp111181 __tmp111180))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!106455%_
       '#f))
    (define _%locked-hash-table::HashTable::update!106458%_
      (lambda (_%self106457110127%_
               _%key110129%_
               _%update110130%_
               _%default110131%_)
        (let* ((_%self110133%_ _%self106457110127%_)
               (_%self110136%_ _%self110133%_))
          (let ((_%h110146%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110136%_ '1 '#f '#f)))
                (_%l110148%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110136%_ '2 '#f '#f))))
            (let ((__tmp111185 (lambda () (&Locker-write-lock! _%l110148%_)))
                  (__tmp111184
                   (lambda ()
                     (&HashTable-update!
                      _%h110146%_
                      _%key110129%_
                      _%update110130%_
                      _%default110131%_)))
                  (__tmp111183
                   (lambda () (&Locker-write-unlock! _%l110148%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111185 __tmp111184 __tmp111183))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!106458%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!106461%_
      (lambda (_%self106460109979%_ _%key109981%_)
        (let* ((_%self109983%_ _%self106460109979%_)
               (_%self109986%_ _%self109983%_))
          (let ((_%h109996%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109986%_ '1 '#f '#f)))
                (_%l109998%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109986%_ '2 '#f '#f))))
            (let ((__tmp111188 (lambda () (&Locker-write-lock! _%l109998%_)))
                  (__tmp111187
                   (lambda () (&HashTable-delete! _%h109996%_ _%key109981%_)))
                  (__tmp111186
                   (lambda () (&Locker-write-unlock! _%l109998%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111188 __tmp111187 __tmp111186))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!106461%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each106464%_
      (lambda (_%self106463109831%_ _%proc109833%_)
        (let* ((_%self109835%_ _%self106463109831%_)
               (_%self109838%_ _%self109835%_))
          (let ((_%h109848%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109838%_ '1 '#f '#f)))
                (_%l109850%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109838%_ '2 '#f '#f))))
            (let ((__tmp111191 (lambda () (&Locker-read-lock! _%l109850%_)))
                  (__tmp111190
                   (lambda ()
                     (&HashTable-for-each _%h109848%_ _%proc109833%_)))
                  (__tmp111189 (lambda () (&Locker-read-unlock! _%l109850%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111191 __tmp111190 __tmp111189))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each106464%_
       '#f))
    (define _%locked-hash-table::HashTable::length106467%_
      (lambda (_%self106466109684%_)
        (let* ((_%self109687%_ _%self106466109684%_)
               (_%self109690%_ _%self109687%_))
          (let ((_%h109700%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109690%_ '1 '#f '#f)))
                (_%l109702%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109690%_ '2 '#f '#f))))
            (let ((__tmp111194 (lambda () (&Locker-read-lock! _%l109702%_)))
                  (__tmp111193 (lambda () (&HashTable-length _%h109700%_)))
                  (__tmp111192 (lambda () (&Locker-read-unlock! _%l109702%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111194 __tmp111193 __tmp111192))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length106467%_
       '#f))
    (define _%locked-hash-table::HashTable::copy106470%_
      (lambda (_%self106469109537%_)
        (let* ((_%self109540%_ _%self106469109537%_)
               (_%self109543%_ _%self109540%_))
          (let ((_%h109553%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109543%_ '1 '#f '#f)))
                (_%l109555%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109543%_ '2 '#f '#f))))
            (let ((__tmp111197 (lambda () (&Locker-read-lock! _%l109555%_)))
                  (__tmp111196 (lambda () (&HashTable-copy _%h109553%_)))
                  (__tmp111195 (lambda () (&Locker-read-unlock! _%l109555%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111197 __tmp111196 __tmp111195))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy106470%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!106473%_
      (lambda (_%self106472109390%_)
        (let* ((_%self109393%_ _%self106472109390%_)
               (_%self109396%_ _%self109393%_))
          (let ((_%h109406%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109396%_ '1 '#f '#f)))
                (_%l109408%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109396%_ '2 '#f '#f))))
            (let ((__tmp111200 (lambda () (&Locker-write-lock! _%l109408%_)))
                  (__tmp111199 (lambda () (&HashTable-clear! _%h109406%_)))
                  (__tmp111198
                   (lambda () (&Locker-write-unlock! _%l109408%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111200 __tmp111199 __tmp111198))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!106473%_
       '#f))
    (let ((__tmp111201 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111201 'Locker::read-lock! mutex-lock!))
    (let ((__tmp111202 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111202 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp111203 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111203 'Locker::write-lock! mutex-lock!))
    (let ((__tmp111204 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111204 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref106687%_
      (lambda (_%self106686109240%_ _%key109242%_ _%default109243%_)
        (let* ((_%self109245%_ _%self106686109240%_)
               (_%self109247%_ _%self109245%_))
          (declare (not safe))
          (let ((_%h109258%_
                 (##unchecked-structure-ref _%self109247%_ '1 '#f '#f))
                (_%key?109260%_
                 (##unchecked-structure-ref _%self109247%_ '2 '#f '#f)))
            (if ((lambda (_%key?109263%_ _%key109264%_ _%default109265%_)
                   (_%key?109263%_ _%key109264%_))
                 _%key?109260%_
                 _%key109242%_
                 _%default109243%_)
                (&HashTable-ref _%h109258%_ _%key109242%_ _%default109243%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key109242%_ (cons _%default109243%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref106687%_
       '#f))
    (define _%checked-hash-table::HashTable::set!106690%_
      (lambda (_%self106689109090%_ _%key109092%_ _%value109093%_)
        (let* ((_%self109095%_ _%self106689109090%_)
               (_%self109097%_ _%self109095%_))
          (declare (not safe))
          (let ((_%h109108%_
                 (##unchecked-structure-ref _%self109097%_ '1 '#f '#f))
                (_%key?109110%_
                 (##unchecked-structure-ref _%self109097%_ '2 '#f '#f)))
            (if ((lambda (_%key?109113%_ _%key109114%_ _%value109115%_)
                   (_%key?109113%_ _%key109114%_))
                 _%key?109110%_
                 _%key109092%_
                 _%value109093%_)
                (&HashTable-set! _%h109108%_ _%key109092%_ _%value109093%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key109092%_ (cons _%value109093%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!106690%_
       '#f))
    (define _%checked-hash-table::HashTable::update!106693%_
      (lambda (_%self106692108938%_
               _%key108940%_
               _%update108941%_
               _%default108942%_)
        (let* ((_%self108944%_ _%self106692108938%_)
               (_%self108946%_ _%self108944%_))
          (declare (not safe))
          (let ((_%h108957%_
                 (##unchecked-structure-ref _%self108946%_ '1 '#f '#f))
                (_%key?108959%_
                 (##unchecked-structure-ref _%self108946%_ '2 '#f '#f)))
            (if ((lambda (_%key?108962%_
                          _%key108963%_
                          _%update108964%_
                          _%default108965%_)
                   (_%key?108962%_ _%key108963%_))
                 _%key?108959%_
                 _%key108940%_
                 _%update108941%_
                 _%default108942%_)
                (&HashTable-update!
                 _%h108957%_
                 _%key108940%_
                 _%update108941%_
                 _%default108942%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key108940%_
                         (cons _%update108941%_ (cons _%default108942%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!106693%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!106696%_
      (lambda (_%self106695108790%_ _%key108792%_)
        (let* ((_%self108794%_ _%self106695108790%_)
               (_%self108796%_ _%self108794%_))
          (declare (not safe))
          (let ((_%h108807%_
                 (##unchecked-structure-ref _%self108796%_ '1 '#f '#f))
                (_%key?108809%_
                 (##unchecked-structure-ref _%self108796%_ '2 '#f '#f)))
            (if ((lambda (_%key?108812%_ _%key108813%_)
                   (_%key?108812%_ _%key108813%_))
                 _%key?108809%_
                 _%key108792%_)
                (&HashTable-delete! _%h108807%_ _%key108792%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key108792%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!106696%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each106699%_
      (lambda (_%self106698108642%_ _%proc108644%_)
        (let* ((_%self108646%_ _%self106698108642%_)
               (_%self108648%_ _%self108646%_))
          (declare (not safe))
          (let ((_%h108659%_
                 (##unchecked-structure-ref _%self108648%_ '1 '#f '#f))
                (_%key?108661%_
                 (##unchecked-structure-ref _%self108648%_ '2 '#f '#f)))
            (if ((lambda (_%key?108664%_ _%proc108665%_) '#t)
                 _%key?108661%_
                 _%proc108644%_)
                (&HashTable-for-each _%h108659%_ _%proc108644%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc108644%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each106699%_
       '#f))
    (define _%checked-hash-table::HashTable::length106702%_
      (lambda (_%self106701108498%_)
        (let* ((_%self108501%_ _%self106701108498%_)
               (_%self108503%_ _%self108501%_))
          (declare (not safe))
          (let ((_%h108514%_
                 (##unchecked-structure-ref _%self108503%_ '1 '#f '#f))
                (_%key?108516%_
                 (##unchecked-structure-ref _%self108503%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h108514%_)
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
       _%checked-hash-table::HashTable::length106702%_
       '#f))
    (define _%checked-hash-table::HashTable::copy106705%_
      (lambda (_%self106704108354%_)
        (let* ((_%self108357%_ _%self106704108354%_)
               (_%self108359%_ _%self108357%_))
          (declare (not safe))
          (let ((_%h108370%_
                 (##unchecked-structure-ref _%self108359%_ '1 '#f '#f))
                (_%key?108372%_
                 (##unchecked-structure-ref _%self108359%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h108370%_)
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
       _%checked-hash-table::HashTable::copy106705%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!106708%_
      (lambda (_%self106707108210%_)
        (let* ((_%self108213%_ _%self106707108210%_)
               (_%self108215%_ _%self108213%_))
          (declare (not safe))
          (let ((_%h108226%_
                 (##unchecked-structure-ref _%self108215%_ '1 '#f '#f))
                (_%key?108228%_
                 (##unchecked-structure-ref _%self108215%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h108226%_)
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
       _%checked-hash-table::HashTable::clear!106708%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table108080%_
               _%count108081%_
               _%free108082%_
               _%hash108083%_
               _%test108084%_
               _%seed108085%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table108080%_
           _%count108081%_
           _%free108082%_
           _%hash108083%_
           _%test108084%_
           _%seed108085%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords107841%_
               _%size-hint107831107842%_
               _%seed107832107844%_
               _%test107833107846%_
               _%hash107834107848%_
               _%lock107835107850%_
               _%check107836107852%_
               _%weak-keys107837107854%_
               _%weak-values107838107856%_)
        (let* ((_%size-hint107859%_
                (if (eq? _%size-hint107831107842%_ absent-value)
                    '#f
                    _%size-hint107831107842%_))
               (_%seed107861%_
                (if (eq? _%seed107832107844%_ absent-value)
                    '#f
                    _%seed107832107844%_))
               (_%test107863%_
                (if (eq? _%test107833107846%_ absent-value)
                    equal?
                    _%test107833107846%_))
               (_%hash107865%_
                (if (eq? _%hash107834107848%_ absent-value)
                    '#f
                    _%hash107834107848%_))
               (_%lock107867%_
                (if (eq? _%lock107835107850%_ absent-value)
                    '#f
                    _%lock107835107850%_))
               (_%check107869%_
                (if (eq? _%check107836107852%_ absent-value)
                    '#f
                    _%check107836107852%_))
               (_%weak-keys107871%_
                (if (eq? _%weak-keys107837107854%_ absent-value)
                    '#f
                    _%weak-keys107837107854%_))
               (_%weak-values107873%_
                (if (eq? _%weak-values107838107856%_ absent-value)
                    '#f
                    _%weak-values107838107856%_)))
          (letrec ((_%table-seed107876%_
                    (lambda ()
                      (if (fixnum? _%seed107861%_)
                          _%seed107861%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock107877%_
                    (lambda (_%ht108054%_)
                      (let ((_%ht108057%_ _%ht108054%_))
                        (_%__wrap-lock107878%_ _%ht108057%_))))
                   (_%__wrap-lock107878%_
                    (lambda (_%ht108036%_)
                      (let ((_%ht108039%_ _%ht108036%_))
                        (if _%lock107867%_
                            (let ((_%$obj108051%_
                                   (let ((__tmp111205
                                          (let ((_%$obj108048%_
                                                 _%lock107867%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj108048%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj108048%_)))
                                                     '#t)
                                                _%$obj108048%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj108048%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht108039%_
                                      __tmp111205))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj108051%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj108051%_)))
                                       '#t)
                                  _%$obj108051%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj108051%_))))
                            _%ht108039%_))))
                   (_%wrap-checked107879%_
                    (lambda (_%ht108023%_ _%implicit108024%_)
                      (let ((_%ht108027%_ _%ht108023%_))
                        (_%__wrap-checked107880%_
                         _%ht108027%_
                         _%implicit108024%_))))
                   (_%__wrap-checked107880%_
                    (lambda (_%ht107996%_ _%implicit107997%_)
                      (let ((_%ht108000%_ _%ht107996%_))
                        (if _%check107869%_
                            (let ((_%$obj108020%_
                                   (let ((__tmp111206
                                          (if (procedure? _%check107869%_)
                                              _%check107869%_
                                              _%implicit107997%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht108000%_
                                      __tmp111206))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj108020%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj108020%_)))
                                       '#t)
                                  _%$obj108020%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj108020%_))))
                            _%ht108000%_))))
                   (_%make107881%_
                    (lambda (_%kons107980%_
                             _%key?107981%_
                             _%hash107982%_
                             _%test107983%_)
                      (let* ((_%size107986%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint107859%_)))
                             (_%table107988%_
                              (let ((__tmp111207 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size107986%_ __tmp111207)))
                             (_%ht107993%_
                              (let ((_%$obj107990%_
                                     (_%kons107980%_
                                      _%table107988%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size107986%_ '2))
                                      _%hash107982%_
                                      _%test107983%_
                                      (_%table-seed107876%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107990%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107990%_)))
                                         '#t)
                                    _%$obj107990%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107990%_))))))
                        (_%__wrap-checked107880%_
                         (_%__wrap-lock107878%_ _%ht107993%_)
                         _%key?107981%_))))
                   (_%make-gc-hash-table107882%_
                    (lambda ()
                      (let ((_%ht107978%_
                             (let ((_%$obj107975%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint107859%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj107975%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj107975%_)))
                                        '#t)
                                   _%$obj107975%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj107975%_))))))
                        (_%__wrap-checked107880%_
                         (_%__wrap-lock107878%_ _%ht107978%_)
                         true))))
                   (_%make-gambit-table107883%_
                    (lambda ()
                      (let* ((_%size107952%_
                              (let ((_%$e107949%_ _%size-hint107859%_))
                                (if _%$e107949%_
                                    _%$e107949%_
                                    (macro-absent-obj))))
                             (_%test107957%_
                              (let ((_%$e107954%_ _%test107863%_))
                                (if _%$e107954%_ _%$e107954%_ equal?)))
                             (_%hash107965%_
                              (let ((_%$e107959%_ _%hash107865%_))
                                (if _%$e107959%_
                                    _%$e107959%_
                                    (if (eq? _%test107957%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test107957%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht107970%_
                              (let ((_%$obj107967%_
                                     (make-table
                                      'size:
                                      _%size107952%_
                                      'test:
                                      _%test107957%_
                                      'hash:
                                      _%hash107965%_
                                      'weak-keys:
                                      _%weak-keys107871%_
                                      'weak-values:
                                      _%weak-values107873%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107967%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107967%_)))
                                         '#t)
                                    _%$obj107967%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107967%_))))))
                        (_%__wrap-checked107880%_
                         (_%__wrap-lock107878%_ _%ht107970%_)
                         true)))))
            (if (or _%weak-keys107871%_ _%weak-values107873%_)
                (_%make-gambit-table107883%_)
                (if (and (or (eq? _%test107863%_ eq?)
                             (eq? _%test107863%_ ##eq?))
                         (or (not _%hash107865%_)
                             (eq? _%hash107865%_ eq?-hash)
                             (eq? _%hash107865%_ eq-hash))
                         (not _%seed107861%_))
                    (_%make-gc-hash-table107882%_)
                    (if (and (or (eq? _%test107863%_ eq?)
                                 (eq? _%test107863%_ ##eq?))
                             (or (not _%hash107865%_)
                                 (eq? _%hash107865%_ eq?-hash)
                                 (eq? _%hash107865%_ eq-hash)))
                        (_%make107881%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test107863%_ eqv?)
                                     (eq? _%test107863%_ ##eqv?))
                                 (or (not _%hash107865%_)
                                     (eq? _%hash107865%_ eqv?-hash)
                                     (eq? _%hash107865%_ eqv-hash)))
                            (_%make107881%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test107863%_ eq?)
                                         (eq? _%test107863%_ ##eq?))
                                     (or (eq? _%hash107865%_ symbolic-hash)
                                         (eq? _%hash107865%_ ##symbol-hash)))
                                (_%make107881%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test107863%_ eq?)
                                             (eq? _%test107863%_ ##eq?))
                                         (eq? _%hash107865%_ immediate-hash))
                                    (_%make107881%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test107863%_ equal?)
                                                 (eq? _%test107863%_ ##equal?)
                                                 (eq? _%test107863%_ string=?)
                                                 (eq? _%test107863%_
                                                      ##string=?))
                                             (or (eq? _%hash107865%_
                                                      string-hash)
                                                 (eq? _%hash107865%_
                                                      ##string=?-hash)))
                                        (_%make107881%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test107863%_ equal?)
                                                 (not _%hash107865%_))
                                            (_%make107881%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test107863%_)
                                                (if (procedure? _%hash107865%_)
                                                    (_%make107881%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash107865%_
                                                     _%test107863%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash107865%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test107863%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords108070%_ . _%args108071%_)
        (apply make-hash-table__%
               _%@@keywords108070%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108070%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108070%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108070%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108070%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108070%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108070%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108070%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108070%_
                  'weak-values:
                  absent-value))
               _%args108071%_)))
    (define make-hash-table
      (lambda _%args107839108077%_
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
               _%args107839108077%_)))
    (define make-hash-table-eq
      (lambda _%args107828%_
        (apply make-hash-table 'test: eq? _%args107828%_)))
    (define make-hash-table-eqv
      (lambda _%args107826%_
        (apply make-hash-table 'test: eqv? _%args107826%_)))
    (define make-hash-table-symbolic
      (lambda _%args107824%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args107824%_)))
    (define make-hash-table-string
      (lambda _%args107822%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args107822%_)))
    (define make-hash-table-immediate
      (lambda _%args107820%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args107820%_)))
    (define list->hash-table
      (lambda (_%lst107817%_ . _%args107818%_)
        (list->hash-table!
         _%lst107817%_
         (apply make-hash-table
                'size:
                (length _%lst107817%_)
                _%args107818%_))))
    (define list->hash-table-eq
      (lambda (_%lst107814%_ . _%args107815%_)
        (list->hash-table!
         _%lst107814%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107814%_)
                _%args107815%_))))
    (define list->hash-table-eqv
      (lambda (_%lst107811%_ . _%args107812%_)
        (list->hash-table!
         _%lst107811%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107811%_)
                _%args107812%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst107808%_ . _%args107809%_)
        (list->hash-table!
         _%lst107808%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107808%_)
                _%args107809%_))))
    (define list->hash-table-string
      (lambda (_%lst107805%_ . _%args107806%_)
        (list->hash-table!
         _%lst107805%_
         (apply make-hash-table-string
                'size:
                (length _%lst107805%_)
                _%args107806%_))))
    (define list->hash-table-immediate
      (lambda (_%lst107802%_ . _%args107803%_)
        (list->hash-table!
         _%lst107802%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107802%_)
                _%args107803%_))))
    (define list->hash-table!
      (lambda (_%lst107769%_ _%h107770%_)
        (for-each
         (lambda (_%el107772%_)
           (let* ((_%el107773107780%_ _%el107772%_)
                  (_%E107775107784%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el107773107780%_
                              '([k . v])))
                     '#!void))
                  (_%K107776107790%_
                   (lambda (_%v107787%_ _%k107788%_)
                     (&HashTable-set! _%h107770%_ _%k107788%_ _%v107787%_))))
             (if (pair? _%el107773107780%_)
                 (let ((_%hd107777107793%_
                        (let ()
                          (declare (not safe))
                          (##car _%el107773107780%_)))
                       (_%tl107778107795%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el107773107780%_))))
                   (let* ((_%k107798%_ _%hd107777107793%_)
                          (_%v107800%_ _%tl107778107795%_))
                     (_%K107776107790%_ _%v107800%_ _%k107798%_)))
                 (_%E107775107784%_))))
         _%lst107769%_)
        _%h107770%_))
    (define plist->hash-table
      (lambda (_%lst107766%_ . _%args107767%_)
        (plist->hash-table!
         _%lst107766%_
         (apply make-hash-table
                'size:
                (length _%lst107766%_)
                _%args107767%_))))
    (define plist->hash-table-eq
      (lambda (_%lst107763%_ . _%args107764%_)
        (plist->hash-table!
         _%lst107763%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107763%_)
                _%args107764%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst107760%_ . _%args107761%_)
        (plist->hash-table!
         _%lst107760%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107760%_)
                _%args107761%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst107757%_ . _%args107758%_)
        (plist->hash-table!
         _%lst107757%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107757%_)
                _%args107758%_))))
    (define plist->hash-table-string
      (lambda (_%lst107754%_ . _%args107755%_)
        (plist->hash-table!
         _%lst107754%_
         (apply make-hash-table-string
                'size:
                (length _%lst107754%_)
                _%args107755%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst107751%_ . _%args107752%_)
        (plist->hash-table!
         _%lst107751%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107751%_)
                _%args107752%_))))
    (define plist->hash-table!
      (lambda (_%lst107691%_ _%h107692%_)
        (let _%loop107694%_ ((_%rest107696%_ _%lst107691%_))
          (let* ((_%rest107697107709%_ _%rest107696%_)
                 (_%else107700107717%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst107691%_)))))
            (let ((_%K107703107732%_
                   (lambda (_%rest107728%_ _%val107729%_ _%key107730%_)
                     (&HashTable-set! _%h107692%_ _%key107730%_ _%val107729%_)
                     (_%loop107694%_ _%rest107728%_)))
                  (_%K107702107722%_ (lambda () _%h107692%_)))
              (let ((_%try-match107699107725%_
                     (lambda ()
                       (if (null? _%rest107697107709%_)
                           (_%K107702107722%_)
                           (_%else107700107717%_)))))
                (if (pair? _%rest107697107709%_)
                    (let ((_%tl107705107737%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest107697107709%_)))
                          (_%hd107704107735%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest107697107709%_))))
                      (if (pair? _%tl107705107737%_)
                          (let ((_%tl107707107744%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl107705107737%_)))
                                (_%hd107706107742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl107705107737%_))))
                            (let ((_%key107740%_ _%hd107704107735%_)
                                  (_%val107747%_ _%hd107706107742%_)
                                  (_%rest107749%_ _%tl107707107744%_))
                              (_%K107703107732%_
                               _%rest107749%_
                               _%val107747%_
                               _%key107740%_)))
                          (_%else107700107717%_)))
                    (_%try-match107699107725%_))))))))
    (define hash-length
      (lambda (_%h107673%_)
        (let* ((_%h107679%_
                (let ((_%$obj107676%_ _%h107673%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107676%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107676%_)))
                           '#t)
                      _%$obj107676%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107676%_)))))
               (_%h107681%_ _%h107679%_))
          (__hash-length _%h107681%_))))
    (define __hash-length
      (lambda (_%h107661%_)
        (let ((_%h107664%_ _%h107661%_)) (__HashTable-length _%h107664%_))))
    (define hash-ref__%
      (lambda (_%h107629%_ _%key107630%_ _%default107631%_)
        (let* ((_%h107637%_
                (let ((_%$obj107634%_ _%h107629%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107634%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107634%_)))
                           '#t)
                      _%$obj107634%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107634%_)))))
               (_%h107639%_ _%h107637%_))
          (__hash-ref__% _%h107639%_ _%key107630%_ _%default107631%_))))
    (define hash-ref__0
      (lambda (_%h107652%_ _%key107653%_)
        (let ((_%default107655%_ (macro-absent-obj)))
          (hash-ref__% _%h107652%_ _%key107653%_ _%default107655%_))))
    (define hash-ref
      (lambda _g111209_
        (let ((_g111208_ (let () (declare (not safe)) (##length _g111209_))))
          (cond ((let () (declare (not safe)) (##fx= _g111208_ 2))
                 (apply hash-ref__0 _g111209_))
                ((let () (declare (not safe)) (##fx= _g111208_ 3))
                 (apply hash-ref__% _g111209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g111209_))))))
    (define __hash-ref__%
      (lambda (_%h107600%_ _%key107601%_ _%default107602%_)
        (let* ((_%h107605%_ _%h107600%_)
               (_%result107614%_
                (&HashTable-ref _%h107605%_ _%key107601%_ _%default107602%_)))
          (if (eq? _%result107614%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h107605%_
               'key:
               _%key107601%_)
              _%result107614%_))))
    (define __hash-ref__0
      (lambda (_%h107619%_ _%key107620%_)
        (let ((_%default107622%_ (macro-absent-obj)))
          (__hash-ref__% _%h107619%_ _%key107620%_ _%default107622%_))))
    (define __hash-ref
      (lambda _g111211_
        (let ((_g111210_ (let () (declare (not safe)) (##length _g111211_))))
          (cond ((let () (declare (not safe)) (##fx= _g111210_ 2))
                 (apply __hash-ref__0 _g111211_))
                ((let () (declare (not safe)) (##fx= _g111210_ 3))
                 (apply __hash-ref__% _g111211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g111211_))))))
    (define hash-get
      (lambda (_%h107580%_ _%key107581%_)
        (let* ((_%h107587%_
                (let ((_%$obj107584%_ _%h107580%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107584%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107584%_)))
                           '#t)
                      _%$obj107584%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107584%_)))))
               (_%h107589%_ _%h107587%_))
          (__hash-get _%h107589%_ _%key107581%_))))
    (define __hash-get
      (lambda (_%h107567%_ _%key107568%_)
        (let ((_%h107571%_ _%h107567%_))
          (&HashTable-ref _%h107571%_ _%key107568%_ '#f))))
    (define hash-put!
      (lambda (_%h107547%_ _%key107548%_ _%value107549%_)
        (let* ((_%h107555%_
                (let ((_%$obj107552%_ _%h107547%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107552%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107552%_)))
                           '#t)
                      _%$obj107552%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107552%_)))))
               (_%h107557%_ _%h107555%_))
          (__hash-put! _%h107557%_ _%key107548%_ _%value107549%_))))
    (define __hash-put!
      (lambda (_%h107533%_ _%key107534%_ _%value107535%_)
        (let ((_%h107538%_ _%h107533%_))
          (&HashTable-set! _%h107538%_ _%key107534%_ _%value107535%_))))
    (define hash-update!__%
      (lambda (_%h107498%_ _%key107499%_ _%update107500%_ _%default107501%_)
        (let* ((_%h107507%_
                (let ((_%$obj107504%_ _%h107498%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107504%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107504%_)))
                           '#t)
                      _%$obj107504%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107504%_)))))
               (_%h107509%_ _%h107507%_))
          (__hash-update!__%
           _%h107509%_
           _%key107499%_
           _%update107500%_
           _%default107501%_))))
    (define hash-update!__0
      (lambda (_%h107522%_ _%key107523%_ _%update107524%_)
        (let ((_%default107526%_ '#!void))
          (hash-update!__%
           _%h107522%_
           _%key107523%_
           _%update107524%_
           _%default107526%_))))
    (define hash-update!
      (lambda _g111213_
        (let ((_g111212_ (let () (declare (not safe)) (##length _g111213_))))
          (cond ((let () (declare (not safe)) (##fx= _g111212_ 3))
                 (apply hash-update!__0 _g111213_))
                ((let () (declare (not safe)) (##fx= _g111212_ 4))
                 (apply hash-update!__% _g111213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g111213_))))))
    (define __hash-update!__%
      (lambda (_%h107468%_ _%key107469%_ _%update107470%_ _%default107471%_)
        (let ((_%h107474%_ _%h107468%_))
          (HashTable-update!
           _%h107474%_
           _%key107469%_
           _%update107470%_
           _%default107471%_))))
    (define __hash-update!__0
      (lambda (_%h107486%_ _%key107487%_ _%update107488%_)
        (let ((_%default107490%_ '#!void))
          (__hash-update!__%
           _%h107486%_
           _%key107487%_
           _%update107488%_
           _%default107490%_))))
    (define __hash-update!
      (lambda _g111215_
        (let ((_g111214_ (let () (declare (not safe)) (##length _g111215_))))
          (cond ((let () (declare (not safe)) (##fx= _g111214_ 3))
                 (apply __hash-update!__0 _g111215_))
                ((let () (declare (not safe)) (##fx= _g111214_ 4))
                 (apply __hash-update!__% _g111215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g111215_))))))
    (define hash-remove!
      (lambda (_%h107448%_ _%key107449%_)
        (let* ((_%h107455%_
                (let ((_%$obj107452%_ _%h107448%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107452%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107452%_)))
                           '#t)
                      _%$obj107452%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107452%_)))))
               (_%h107457%_ _%h107455%_))
          (__hash-remove! _%h107457%_ _%key107449%_))))
    (define __hash-remove!
      (lambda (_%h107435%_ _%key107436%_)
        (let ((_%h107439%_ _%h107435%_))
          (&HashTable-delete! _%h107439%_ _%key107436%_))))
    (define hash-key?
      (lambda (_%h107416%_ _%k107417%_)
        (let* ((_%h107423%_
                (let ((_%$obj107420%_ _%h107416%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107420%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107420%_)))
                           '#t)
                      _%$obj107420%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107420%_)))))
               (_%h107425%_ _%h107423%_))
          (__hash-key? _%h107425%_ _%k107417%_))))
    (define __hash-key?
      (lambda (_%h107403%_ _%k107404%_)
        (let ((_%h107407%_ _%h107403%_))
          (not (eq? (&HashTable-ref _%h107407%_ _%k107404%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h107385%_)
        (let* ((_%h107391%_
                (let ((_%$obj107388%_ _%h107385%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107388%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107388%_)))
                           '#t)
                      _%$obj107388%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107388%_)))))
               (_%h107393%_ _%h107391%_))
          (__hash->list _%h107393%_))))
    (define __hash->list
      (lambda (_%h107368%_)
        (let* ((_%h107371%_ _%h107368%_) (_%lst107380%_ '()))
          (&HashTable-for-each
           _%h107371%_
           (lambda (_%k107382%_ _%v107383%_)
             (set! _%lst107380%_
                   (cons (cons _%k107382%_ _%v107383%_) _%lst107380%_))))
          _%lst107380%_)))
    (define hash->plist
      (lambda (_%h107350%_)
        (let* ((_%h107356%_
                (let ((_%$obj107353%_ _%h107350%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107353%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107353%_)))
                           '#t)
                      _%$obj107353%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107353%_)))))
               (_%h107358%_ _%h107356%_))
          (__hash->plist _%h107358%_))))
    (define __hash->plist
      (lambda (_%h107333%_)
        (let* ((_%h107336%_ _%h107333%_) (_%lst107345%_ '()))
          (&HashTable-for-each
           _%h107336%_
           (lambda (_%k107347%_ _%v107348%_)
             (set! _%lst107345%_
                   (cons _%k107347%_ (cons _%v107348%_ _%lst107345%_)))))
          _%lst107345%_)))
    (define hash-for-each
      (lambda (_%proc107304%_ _%h107305%_)
        (if (procedure? _%proc107304%_)
            (let* ((_%proc107309%_ _%proc107304%_)
                   (_%h107321%_
                    (let ((_%$obj107318%_ _%h107305%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107318%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107318%_)))
                               '#t)
                          _%$obj107318%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107318%_)))))
                   (_%h107323%_ _%h107321%_))
              (__hash-for-each _%proc107309%_ _%h107323%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@569.22-569.26"
               'contract:
               'procedure?
               'value:
               _%proc107304%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc107283%_ _%h107284%_)
        (let* ((_%proc107287%_ _%proc107283%_) (_%h107295%_ _%h107284%_))
          (&HashTable-for-each _%h107295%_ _%proc107287%_))))
    (define hash-map
      (lambda (_%proc107254%_ _%h107255%_)
        (if (procedure? _%proc107254%_)
            (let* ((_%proc107259%_ _%proc107254%_)
                   (_%h107271%_
                    (let ((_%$obj107268%_ _%h107255%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107268%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107268%_)))
                               '#t)
                          _%$obj107268%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107268%_)))))
                   (_%h107273%_ _%h107271%_))
              (__hash-map _%proc107259%_ _%h107273%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@572.17-572.21"
               'contract:
               'procedure?
               'value:
               _%proc107254%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc107228%_ _%h107229%_)
        (let* ((_%proc107232%_ _%proc107228%_)
               (_%h107240%_ _%h107229%_)
               (_%result107249%_ '()))
          (&HashTable-for-each
           _%h107240%_
           (lambda (_%k107251%_ _%v107252%_)
             (set! _%result107249%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc107232%_ _%k107251%_ _%v107252%_))
                         _%result107249%_))))
          _%result107249%_)))
    (define hash-fold
      (lambda (_%proc107198%_ _%iv107199%_ _%h107200%_)
        (if (procedure? _%proc107198%_)
            (let* ((_%proc107204%_ _%proc107198%_)
                   (_%h107216%_
                    (let ((_%$obj107213%_ _%h107200%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107213%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107213%_)))
                               '#t)
                          _%$obj107213%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107213%_)))))
                   (_%h107218%_ _%h107216%_))
              (__hash-fold _%proc107204%_ _%iv107199%_ _%h107218%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@577.18-577.22"
               'contract:
               'procedure?
               'value:
               _%proc107198%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc107171%_ _%iv107172%_ _%h107173%_)
        (let* ((_%proc107176%_ _%proc107171%_)
               (_%h107184%_ _%h107173%_)
               (_%result107193%_ _%iv107172%_))
          (&HashTable-for-each
           _%h107184%_
           (lambda (_%k107195%_ _%v107196%_)
             (set! _%result107193%_
                   (let ()
                     (declare (not safe))
                     (_%proc107176%_
                      _%k107195%_
                      _%v107196%_
                      _%result107193%_)))))
          _%result107193%_)))
    (define hash-find__%
      (lambda (_%proc107129%_ _%h107130%_ _%default-value107131%_)
        (if (procedure? _%proc107129%_)
            (let* ((_%proc107135%_ _%proc107129%_)
                   (_%h107147%_
                    (let ((_%$obj107144%_ _%h107130%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107144%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107144%_)))
                               '#t)
                          _%$obj107144%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107144%_)))))
                   (_%h107149%_ _%h107147%_))
              (__hash-find__%
               _%proc107135%_
               _%h107149%_
               _%default-value107131%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@582.18-582.22"
               'contract:
               'procedure?
               'value:
               _%proc107129%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc107162%_ _%h107163%_)
        (let ((_%default-value107165%_ '#f))
          (hash-find__% _%proc107162%_ _%h107163%_ _%default-value107165%_))))
    (define hash-find
      (lambda _g111217_
        (let ((_g111216_ (let () (declare (not safe)) (##length _g111217_))))
          (cond ((let () (declare (not safe)) (##fx= _g111216_ 2))
                 (apply hash-find__0 _g111217_))
                ((let () (declare (not safe)) (##fx= _g111216_ 3))
                 (apply hash-find__% _g111217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g111217_))))))
    (define __hash-find__%
      (lambda (_%proc107086%_ _%h107087%_ _%default-value107088%_)
        (let* ((_%proc107091%_ _%proc107086%_)
               (_%h107099%_ _%h107087%_)
               (__tmp111218
                (lambda (_%return107108%_)
                  (&HashTable-for-each
                   _%h107099%_
                   (lambda (_%k107110%_ _%v107111%_)
                     (let ((_%$e107113%_
                            (let ()
                              (declare (not safe))
                              (_%proc107091%_ _%k107110%_ _%v107111%_))))
                       (if _%$e107113%_
                           (_%return107108%_ _%$e107113%_)
                           '#!void))))
                  _%default-value107088%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp111218))))
    (define __hash-find__0
      (lambda (_%proc107119%_ _%h107120%_)
        (let ((_%default-value107122%_ '#f))
          (__hash-find__%
           _%proc107119%_
           _%h107120%_
           _%default-value107122%_))))
    (define __hash-find
      (lambda _g111220_
        (let ((_g111219_ (let () (declare (not safe)) (##length _g111220_))))
          (cond ((let () (declare (not safe)) (##fx= _g111219_ 2))
                 (apply __hash-find__0 _g111220_))
                ((let () (declare (not safe)) (##fx= _g111219_ 3))
                 (apply __hash-find__% _g111220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g111220_))))))
    (define hash-keys
      (lambda (_%h107067%_)
        (let* ((_%h107073%_
                (let ((_%$obj107070%_ _%h107067%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107070%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107070%_)))
                           '#t)
                      _%$obj107070%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107070%_)))))
               (_%h107075%_ _%h107073%_))
          (__hash-keys _%h107075%_))))
    (define __hash-keys
      (lambda (_%h107050%_)
        (let* ((_%h107053%_ _%h107050%_) (_%result107062%_ '()))
          (&HashTable-for-each
           _%h107053%_
           (lambda (_%k107064%_ _%v107065%_)
             (set! _%result107062%_ (cons _%k107064%_ _%result107062%_))))
          _%result107062%_)))
    (define hash-values
      (lambda (_%h107032%_)
        (let* ((_%h107038%_
                (let ((_%$obj107035%_ _%h107032%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107035%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107035%_)))
                           '#t)
                      _%$obj107035%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107035%_)))))
               (_%h107040%_ _%h107038%_))
          (__hash-values _%h107040%_))))
    (define __hash-values
      (lambda (_%h107015%_)
        (let* ((_%h107018%_ _%h107015%_) (_%result107027%_ '()))
          (&HashTable-for-each
           _%h107018%_
           (lambda (_%k107029%_ _%v107030%_)
             (set! _%result107027%_ (cons _%v107030%_ _%result107027%_))))
          _%result107027%_)))
    (define hash-copy
      (lambda (_%h106997%_)
        (let* ((_%h107003%_
                (let ((_%$obj107000%_ _%h106997%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107000%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107000%_)))
                           '#t)
                      _%$obj107000%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107000%_)))))
               (_%h107005%_ _%h107003%_))
          (__hash-copy _%h107005%_))))
    (define __hash-copy
      (lambda (_%h106985%_)
        (let ((_%h106988%_ _%h106985%_)) (__HashTable-copy _%h106988%_))))
    (define hash-clear!
      (lambda (_%h106967%_)
        (let* ((_%h106973%_
                (let ((_%$obj106970%_ _%h106967%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106970%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106970%_)))
                           '#t)
                      _%$obj106970%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106970%_)))))
               (_%h106975%_ _%h106973%_))
          (__hash-clear! _%h106975%_))))
    (define __hash-clear!
      (lambda (_%h106955%_)
        (let ((_%h106958%_ _%h106955%_)) (&HashTable-clear! _%h106958%_))))
    (define hash-merge
      (lambda (_%h106936%_ . _%rest106937%_)
        (let* ((_%h106943%_
                (let ((_%$obj106940%_ _%h106936%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106940%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106940%_)))
                           '#t)
                      _%$obj106940%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106940%_)))))
               (_%h106945%_ _%h106943%_))
          (declare (not safe))
          (##apply __hash-merge _%h106945%_ _%rest106937%_))))
    (define __hash-merge
      (lambda (_%h106921%_ . _%rest106922%_)
        (let* ((_%h106925%_ _%h106921%_)
               (_%copy106934%_ (__HashTable-copy _%h106925%_)))
          (apply hash-merge! _%copy106934%_ _%rest106922%_)
          _%copy106934%_)))
    (define hash-merge!
      (lambda (_%h106902%_ . _%rest106903%_)
        (let* ((_%h106909%_
                (let ((_%$obj106906%_ _%h106902%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106906%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106906%_)))
                           '#t)
                      _%$obj106906%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106906%_)))))
               (_%h106911%_ _%h106909%_))
          (declare (not safe))
          (##apply __hash-merge! _%h106911%_ _%rest106903%_))))
    (define __hash-merge!
      (lambda (_%h106865%_ . _%rest106866%_)
        (let ((_%h106869%_ _%h106865%_))
          (let ((__tmp111221
                 (lambda (_%hr106878%_)
                   (let* ((_%hr106884%_
                           (let ((_%$obj106881%_ _%hr106878%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj106881%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj106881%_)))
                                      '#t)
                                 _%$obj106881%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj106881%_)))))
                          (_%hr106886%_ _%hr106884%_))
                     (&HashTable-for-each
                      _%hr106886%_
                      (lambda (_%k106899%_ _%v106900%_)
                        (if (__hash-key? _%h106869%_ _%k106899%_)
                            '#!void
                            (&HashTable-set!
                             _%h106869%_
                             _%k106899%_
                             _%v106900%_))))))))
            (declare (not safe))
            (##for-each __tmp111221 _%rest106866%_))
          _%h106869%_)))))
