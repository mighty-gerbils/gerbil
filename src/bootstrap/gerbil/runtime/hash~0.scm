(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712784664)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp107416 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp107416
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args107396%_
        (apply make-instance UnboundKeyError::t _%$args107396%_)))
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
      (lambda (_%where107270%_ _%message107271%_ . _%irritants107272%_)
        (let ((__tmp107417
               (let ((__obj107410
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj107410
                  _%message107271%_
                  'where:
                  _%where107270%_
                  'irritants:
                  _%irritants107272%_)
                 __obj107410)))
          (declare (not safe))
          (raise __tmp107417))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp107418 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp107418
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
      (lambda (_%obj107268%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj107268%_))))
    (define try-HashTable
      (lambda (_%obj107266%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj107266%_))))
    (define HashTable?
      (lambda (_%obj107264%_)
        (let ((__tmp107419
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj107264%_ __tmp107419))))
    (define is-HashTable?
      (lambda (_%obj107262%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj107262%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self107246%_)
        (let* ((_%self107251%_
                (let ((_%$obj107248%_ _%self107246%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107248%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107248%_)))
                           '#t)
                      _%$obj107248%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107248%_)))))
               (_%self107253%_ _%self107251%_))
          (&HashTable-clear! _%self107253%_))))
    (define &HashTable-clear!
      (lambda (_%self107231%_)
        (let ((_%self107233%_ _%self107231%_))
          (declare (not safe))
          (let ((_%obj107243%_
                 (##unchecked-structure-ref _%self107233%_ '1 '#f 'clear!))
                (_%f107244%_
                 (##unchecked-structure-ref _%self107233%_ '2 '#f 'clear!)))
            (_%f107244%_ _%obj107243%_)))))
    (define HashTable-copy
      (lambda (_%self107215%_)
        (let* ((_%self107220%_
                (let ((_%$obj107217%_ _%self107215%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107217%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107217%_)))
                           '#t)
                      _%$obj107217%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107217%_)))))
               (_%self107222%_ _%self107220%_))
          (__HashTable-copy _%self107222%_))))
    (define __HashTable-copy
      (lambda (_%self107202%_)
        (let* ((_%self107204%_ _%self107202%_)
               (_%$obj107212%_ (&HashTable-copy _%self107204%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj107212%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj107212%_)))
                   '#t)
              _%$obj107212%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj107212%_))))))
    (define &HashTable-copy
      (lambda (_%self107187%_)
        (let ((_%self107189%_ _%self107187%_))
          (declare (not safe))
          (let ((_%obj107199%_
                 (##unchecked-structure-ref _%self107189%_ '1 '#f 'copy))
                (_%f107200%_
                 (##unchecked-structure-ref _%self107189%_ '3 '#f 'copy)))
            (_%f107200%_ _%obj107199%_)))))
    (define HashTable-delete!
      (lambda (_%self107170%_ _%key107171%_)
        (let* ((_%self107176%_
                (let ((_%$obj107173%_ _%self107170%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107173%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107173%_)))
                           '#t)
                      _%$obj107173%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107173%_)))))
               (_%self107178%_ _%self107176%_))
          (&HashTable-delete! _%self107178%_ _%key107171%_))))
    (define &HashTable-delete!
      (lambda (_%self107154%_ _%key107155%_)
        (let ((_%self107157%_ _%self107154%_))
          (declare (not safe))
          (let ((_%obj107167%_
                 (##unchecked-structure-ref _%self107157%_ '1 '#f 'delete!))
                (_%f107168%_
                 (##unchecked-structure-ref _%self107157%_ '4 '#f 'delete!)))
            (_%f107168%_ _%obj107167%_ _%key107155%_)))))
    (define HashTable-for-each
      (lambda (_%self107127%_ _%proc107128%_)
        (let* ((_%self107133%_
                (let ((_%$obj107130%_ _%self107127%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107130%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107130%_)))
                           '#t)
                      _%$obj107130%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107130%_)))))
               (_%self107135%_ _%self107133%_))
          (if (procedure? _%proc107128%_)
              (let ((_%proc107144%_ _%proc107128%_))
                (&HashTable-for-each _%self107135%_ _%proc107144%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc107128%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self107103%_ _%proc107104%_)
        (let* ((_%self107106%_ _%self107103%_) (_%proc107113%_ _%proc107104%_))
          (declare (not safe))
          (let ((_%obj107124%_
                 (##unchecked-structure-ref _%self107106%_ '1 '#f 'for-each))
                (_%f107125%_
                 (##unchecked-structure-ref _%self107106%_ '5 '#f 'for-each)))
            (_%f107125%_ _%obj107124%_ _%proc107113%_)))))
    (define HashTable-length
      (lambda (_%self107087%_)
        (let* ((_%self107092%_
                (let ((_%$obj107089%_ _%self107087%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107089%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107089%_)))
                           '#t)
                      _%$obj107089%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107089%_)))))
               (_%self107094%_ _%self107092%_))
          (__HashTable-length _%self107094%_))))
    (define __HashTable-length
      (lambda (_%self107074%_)
        (let* ((_%self107076%_ _%self107074%_)
               (_%val107084%_ (&HashTable-length _%self107076%_)))
          (if '#t
              _%val107084%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val107084%_))))))
    (define &HashTable-length
      (lambda (_%self107059%_)
        (let ((_%self107061%_ _%self107059%_))
          (declare (not safe))
          (let ((_%obj107071%_
                 (##unchecked-structure-ref _%self107061%_ '1 '#f 'length))
                (_%f107072%_
                 (##unchecked-structure-ref _%self107061%_ '6 '#f 'length)))
            (_%f107072%_ _%obj107071%_)))))
    (define HashTable-ref
      (lambda (_%self107041%_ _%key107042%_ _%default107043%_)
        (let* ((_%self107048%_
                (let ((_%$obj107045%_ _%self107041%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107045%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107045%_)))
                           '#t)
                      _%$obj107045%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107045%_)))))
               (_%self107050%_ _%self107048%_))
          (&HashTable-ref _%self107050%_ _%key107042%_ _%default107043%_))))
    (define &HashTable-ref
      (lambda (_%self107024%_ _%key107025%_ _%default107026%_)
        (let ((_%self107028%_ _%self107024%_))
          (declare (not safe))
          (let ((_%obj107038%_
                 (##unchecked-structure-ref _%self107028%_ '1 '#f 'ref))
                (_%f107039%_
                 (##unchecked-structure-ref _%self107028%_ '7 '#f 'ref)))
            (_%f107039%_ _%obj107038%_ _%key107025%_ _%default107026%_)))))
    (define HashTable-set!
      (lambda (_%self107006%_ _%key107007%_ _%value107008%_)
        (let* ((_%self107013%_
                (let ((_%$obj107010%_ _%self107006%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107010%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107010%_)))
                           '#t)
                      _%$obj107010%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107010%_)))))
               (_%self107015%_ _%self107013%_))
          (&HashTable-set! _%self107015%_ _%key107007%_ _%value107008%_))))
    (define &HashTable-set!
      (lambda (_%self106989%_ _%key106990%_ _%value106991%_)
        (let ((_%self106993%_ _%self106989%_))
          (declare (not safe))
          (let ((_%obj107003%_
                 (##unchecked-structure-ref _%self106993%_ '1 '#f 'set!))
                (_%f107004%_
                 (##unchecked-structure-ref _%self106993%_ '8 '#f 'set!)))
            (_%f107004%_ _%obj107003%_ _%key106990%_ _%value106991%_)))))
    (define HashTable-update!
      (lambda (_%self106960%_ _%key106961%_ _%proc106962%_ _%default106963%_)
        (let* ((_%self106968%_
                (let ((_%$obj106965%_ _%self106960%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106965%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106965%_)))
                           '#t)
                      _%$obj106965%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106965%_)))))
               (_%self106970%_ _%self106968%_))
          (if (procedure? _%proc106962%_)
              (let ((_%proc106979%_ _%proc106962%_))
                (&HashTable-update!
                 _%self106970%_
                 _%key106961%_
                 _%proc106979%_
                 _%default106963%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106962%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self106932%_ _%key106933%_ _%proc106934%_ _%default106935%_)
        (let* ((_%self106937%_ _%self106932%_) (_%proc106944%_ _%proc106934%_))
          (declare (not safe))
          (let ((_%obj106955%_
                 (##unchecked-structure-ref _%self106937%_ '1 '#f 'update!))
                (_%f106957%_
                 (##unchecked-structure-ref _%self106937%_ '9 '#f 'update!)))
            (_%f106957%_
             _%obj106955%_
             _%key106933%_
             _%proc106944%_
             _%default106935%_)))))
    (define Locker::t
      (let ((__tmp107420 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp107420
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
      (lambda (_%obj106930%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj106930%_))))
    (define try-Locker
      (lambda (_%obj106928%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj106928%_))))
    (define Locker?
      (lambda (_%obj106926%_)
        (let ((__tmp107421
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106926%_ __tmp107421))))
    (define is-Locker?
      (lambda (_%obj106924%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj106924%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self106908%_)
        (let* ((_%self106913%_
                (let ((_%$obj106910%_ _%self106908%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106910%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106910%_)))
                           '#t)
                      _%$obj106910%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106910%_)))))
               (_%self106915%_ _%self106913%_))
          (&Locker-read-lock! _%self106915%_))))
    (define &Locker-read-lock!
      (lambda (_%self106893%_)
        (let ((_%self106895%_ _%self106893%_))
          (declare (not safe))
          (let ((_%obj106905%_
                 (##unchecked-structure-ref _%self106895%_ '1 '#f 'read-lock!))
                (_%f106906%_
                 (##unchecked-structure-ref
                  _%self106895%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f106906%_ _%obj106905%_)))))
    (define Locker-read-unlock!
      (lambda (_%self106877%_)
        (let* ((_%self106882%_
                (let ((_%$obj106879%_ _%self106877%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106879%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106879%_)))
                           '#t)
                      _%$obj106879%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106879%_)))))
               (_%self106884%_ _%self106882%_))
          (&Locker-read-unlock! _%self106884%_))))
    (define &Locker-read-unlock!
      (lambda (_%self106862%_)
        (let ((_%self106864%_ _%self106862%_))
          (declare (not safe))
          (let ((_%obj106874%_
                 (##unchecked-structure-ref
                  _%self106864%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f106875%_
                 (##unchecked-structure-ref
                  _%self106864%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f106875%_ _%obj106874%_)))))
    (define Locker-write-lock!
      (lambda (_%self106846%_)
        (let* ((_%self106851%_
                (let ((_%$obj106848%_ _%self106846%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106848%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106848%_)))
                           '#t)
                      _%$obj106848%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106848%_)))))
               (_%self106853%_ _%self106851%_))
          (&Locker-write-lock! _%self106853%_))))
    (define &Locker-write-lock!
      (lambda (_%self106831%_)
        (let ((_%self106833%_ _%self106831%_))
          (declare (not safe))
          (let ((_%obj106843%_
                 (##unchecked-structure-ref
                  _%self106833%_
                  '1
                  '#f
                  'write-lock!))
                (_%f106844%_
                 (##unchecked-structure-ref
                  _%self106833%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f106844%_ _%obj106843%_)))))
    (define Locker-write-unlock!
      (lambda (_%self106815%_)
        (let* ((_%self106820%_
                (let ((_%$obj106817%_ _%self106815%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106817%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106817%_)))
                           '#t)
                      _%$obj106817%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106817%_)))))
               (_%self106822%_ _%self106820%_))
          (&Locker-write-unlock! _%self106822%_))))
    (define &Locker-write-unlock!
      (lambda (_%self106798%_)
        (let ((_%self106800%_ _%self106798%_))
          (declare (not safe))
          (let ((_%obj106810%_
                 (##unchecked-structure-ref
                  _%self106800%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f106812%_
                 (##unchecked-structure-ref
                  _%self106800%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f106812%_ _%obj106810%_)))))
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
      (lambda (_%table106791%_
               _%key106792%_
               _%update106793%_
               _%default106794%_)
        (let ((_%result106796%_
               (table-ref _%table106791%_ _%key106792%_ _%default106794%_)))
          (table-set!
           _%table106791%_
           _%key106792%_
           (_%update106793%_ _%default106794%_)))))
    (define gambit-table-for-each
      (lambda (_%table106788%_ _%proc106789%_)
        (table-for-each _%proc106789%_ _%table106788%_)))
    (define gambit-table-clear!
      (lambda (_%table106786%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table106786%_ '0 '5 '#f '#f))))
    (let ((__tmp107422 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp107422 'ref table-ref))
    (let ((__tmp107423 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp107423 'set! table-set!))
    (let ((__tmp107424 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp107424 'update! gambit-table-update!))
    (let ((__tmp107425 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp107425 'delete! table-set!))
    (let ((__tmp107426 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp107426 'for-each gambit-table-for-each))
    (let ((__tmp107427 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp107427 'length table-length))
    (let ((__tmp107428 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp107428 'copy table-copy))
    (let ((__tmp107429 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp107429 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots106768%_ '(table count free hash test seed))
             (_%slot-vector106770%_ (list->vector (cons '#f _%slots106768%_)))
             (_%slot-table106777%_
              (let ((_%slot-table106772%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp107432
                       (lambda (_%slot106774%_ _%field106775%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106772%_
                            _%slot106774%_
                            _%field106775%_))
                         (let ((__tmp107433
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106774%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106772%_
                            __tmp107433
                            _%field106775%_))))
                      (__tmp107430
                       (let ((__tmp107431
                              (let ()
                                (declare (not safe))
                                (##length _%slots106768%_))))
                         (declare (not safe))
                         (##iota __tmp107431 '1))))
                  (declare (not safe))
                  (##for-each __tmp107432 _%slots106768%_ __tmp107430))
                _%slot-table106772%_))
             (_%flags106779%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106781%_ '#())
             (_%properties106783%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106768%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp107434 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags106779%_
         __table::t
         _%fields106781%_
         __tmp107434
         _%slot-vector106770%_
         _%slot-table106777%_
         _%properties106783%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots106750%_ '(gcht immediate))
             (_%slot-vector106752%_ (list->vector (cons '#f _%slots106750%_)))
             (_%slot-table106759%_
              (let ((_%slot-table106754%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp107437
                       (lambda (_%slot106756%_ _%field106757%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106754%_
                            _%slot106756%_
                            _%field106757%_))
                         (let ((__tmp107438
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106756%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106754%_
                            __tmp107438
                            _%field106757%_))))
                      (__tmp107435
                       (let ((__tmp107436
                              (let ()
                                (declare (not safe))
                                (##length _%slots106750%_))))
                         (declare (not safe))
                         (##iota __tmp107436 '1))))
                  (declare (not safe))
                  (##for-each __tmp107437 _%slots106750%_ __tmp107435))
                _%slot-table106754%_))
             (_%flags106761%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106763%_ '#())
             (_%properties106765%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106750%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp107439 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags106761%_
         __gc-table::t
         _%fields106763%_
         __tmp107439
         _%slot-vector106752%_
         _%slot-table106759%_
         _%properties106765%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp107441 (list))
            (__tmp107440
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp107441
         '(table lock)
         __tmp107440
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args106747%_
        (apply make-instance locked-hash-table::t _%$args106747%_)))
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
      (let ((__tmp107443 (list))
            (__tmp107442
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp107443
         '(table key-check)
         __tmp107442
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args106744%_
        (apply make-instance checked-hash-table::t _%$args106744%_)))
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
      (let ((__tmp107445 (list hash-table::t))
            (__tmp107444 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp107445
         '()
         __tmp107444
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args106741%_
        (apply make-instance eq-hash-table::t _%$args106741%_)))
    (define eqv-hash-table::t
      (let ((__tmp107447 (list hash-table::t))
            (__tmp107446 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp107447
         '()
         __tmp107446
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args106738%_
        (apply make-instance eqv-hash-table::t _%$args106738%_)))
    (define symbol-hash-table::t
      (let ((__tmp107449 (list hash-table::t))
            (__tmp107448 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp107449
         '()
         __tmp107448
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args106735%_
        (apply make-instance symbol-hash-table::t _%$args106735%_)))
    (define string-hash-table::t
      (let ((__tmp107451 (list hash-table::t))
            (__tmp107450 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp107451
         '()
         __tmp107450
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args106732%_
        (apply make-instance string-hash-table::t _%$args106732%_)))
    (define immediate-hash-table::t
      (let ((__tmp107453 (list hash-table::t))
            (__tmp107452 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp107453
         '()
         __tmp107452
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args106729%_
        (apply make-instance immediate-hash-table::t _%$args106729%_)))
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
      (lambda (_%obj106727%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj106727%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj106725%_) (is-HashTable? _%obj106725%_)))
    (define _%locked-hash-table::ref102733%_
      (lambda (_%self102732106699%_ _%key106701%_ _%default106702%_)
        (let* ((_%self106704%_ _%self102732106699%_)
               (_%self106707%_ _%self106704%_))
          (let ((_%h106717%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106707%_ '1 '#f '#f)))
                (_%l106719%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106707%_ '2 '#f '#f))))
            (let ((__tmp107456 (lambda () (&Locker-read-lock! _%l106719%_)))
                  (__tmp107455
                   (lambda ()
                     (&HashTable-ref
                      _%h106717%_
                      _%key106701%_
                      _%default106702%_)))
                  (__tmp107454 (lambda () (&Locker-read-unlock! _%l106719%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107456 __tmp107455 __tmp107454))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref102733%_
       '#f))
    (define _%locked-hash-table::set!102736%_
      (lambda (_%self102735106550%_ _%key106552%_ _%value106553%_)
        (let* ((_%self106555%_ _%self102735106550%_)
               (_%self106558%_ _%self106555%_))
          (let ((_%h106568%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106558%_ '1 '#f '#f)))
                (_%l106570%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106558%_ '2 '#f '#f))))
            (let ((__tmp107459 (lambda () (&Locker-write-lock! _%l106570%_)))
                  (__tmp107458
                   (lambda ()
                     (&HashTable-set!
                      _%h106568%_
                      _%key106552%_
                      _%value106553%_)))
                  (__tmp107457
                   (lambda () (&Locker-write-unlock! _%l106570%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107459 __tmp107458 __tmp107457))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!102736%_
       '#f))
    (define _%locked-hash-table::update!102739%_
      (lambda (_%self102738106400%_
               _%key106402%_
               _%update106403%_
               _%default106404%_)
        (let* ((_%self106406%_ _%self102738106400%_)
               (_%self106409%_ _%self106406%_))
          (let ((_%h106419%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106409%_ '1 '#f '#f)))
                (_%l106421%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106409%_ '2 '#f '#f))))
            (let ((__tmp107462 (lambda () (&Locker-write-lock! _%l106421%_)))
                  (__tmp107461
                   (lambda ()
                     (&HashTable-update!
                      _%h106419%_
                      _%key106402%_
                      _%update106403%_
                      _%default106404%_)))
                  (__tmp107460
                   (lambda () (&Locker-write-unlock! _%l106421%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107462 __tmp107461 __tmp107460))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!102739%_
       '#f))
    (define _%locked-hash-table::delete!102742%_
      (lambda (_%self102741106252%_ _%key106254%_)
        (let* ((_%self106256%_ _%self102741106252%_)
               (_%self106259%_ _%self106256%_))
          (let ((_%h106269%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106259%_ '1 '#f '#f)))
                (_%l106271%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106259%_ '2 '#f '#f))))
            (let ((__tmp107465 (lambda () (&Locker-write-lock! _%l106271%_)))
                  (__tmp107464
                   (lambda () (&HashTable-delete! _%h106269%_ _%key106254%_)))
                  (__tmp107463
                   (lambda () (&Locker-write-unlock! _%l106271%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107465 __tmp107464 __tmp107463))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!102742%_
       '#f))
    (define _%locked-hash-table::for-each102745%_
      (lambda (_%self102744106104%_ _%proc106106%_)
        (let* ((_%self106108%_ _%self102744106104%_)
               (_%self106111%_ _%self106108%_))
          (let ((_%h106121%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106111%_ '1 '#f '#f)))
                (_%l106123%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106111%_ '2 '#f '#f))))
            (let ((__tmp107468 (lambda () (&Locker-read-lock! _%l106123%_)))
                  (__tmp107467
                   (lambda ()
                     (&HashTable-for-each _%h106121%_ _%proc106106%_)))
                  (__tmp107466 (lambda () (&Locker-read-unlock! _%l106123%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107468 __tmp107467 __tmp107466))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each102745%_
       '#f))
    (define _%locked-hash-table::length102748%_
      (lambda (_%self102747105957%_)
        (let* ((_%self105960%_ _%self102747105957%_)
               (_%self105963%_ _%self105960%_))
          (let ((_%h105973%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105963%_ '1 '#f '#f)))
                (_%l105975%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105963%_ '2 '#f '#f))))
            (let ((__tmp107471 (lambda () (&Locker-read-lock! _%l105975%_)))
                  (__tmp107470 (lambda () (&HashTable-length _%h105973%_)))
                  (__tmp107469 (lambda () (&Locker-read-unlock! _%l105975%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107471 __tmp107470 __tmp107469))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length102748%_
       '#f))
    (define _%locked-hash-table::copy102751%_
      (lambda (_%self102750105810%_)
        (let* ((_%self105813%_ _%self102750105810%_)
               (_%self105816%_ _%self105813%_))
          (let ((_%h105826%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105816%_ '1 '#f '#f)))
                (_%l105828%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105816%_ '2 '#f '#f))))
            (let ((__tmp107474 (lambda () (&Locker-read-lock! _%l105828%_)))
                  (__tmp107473 (lambda () (&HashTable-copy _%h105826%_)))
                  (__tmp107472 (lambda () (&Locker-read-unlock! _%l105828%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107474 __tmp107473 __tmp107472))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy102751%_
       '#f))
    (define _%locked-hash-table::clear!102754%_
      (lambda (_%self102753105663%_)
        (let* ((_%self105666%_ _%self102753105663%_)
               (_%self105669%_ _%self105666%_))
          (let ((_%h105679%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105669%_ '1 '#f '#f)))
                (_%l105681%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105669%_ '2 '#f '#f))))
            (let ((__tmp107477 (lambda () (&Locker-write-lock! _%l105681%_)))
                  (__tmp107476 (lambda () (&HashTable-clear! _%h105679%_)))
                  (__tmp107475
                   (lambda () (&Locker-write-unlock! _%l105681%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107477 __tmp107476 __tmp107475))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!102754%_
       '#f))
    (let ((__tmp107478 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp107478 'read-lock! mutex-lock!))
    (let ((__tmp107479 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp107479 'read-unlock! mutex-unlock!))
    (let ((__tmp107480 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp107480 'write-lock! mutex-lock!))
    (let ((__tmp107481 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp107481 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref103033%_
      (lambda (_%self103032105514%_ _%key105516%_ _%default105517%_)
        (let* ((_%self105519%_ _%self103032105514%_)
               (_%self105521%_ _%self105519%_))
          (let ((_%h105531%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105521%_ '1 '#f '#f)))
                (_%key?105533%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105521%_ '2 '#f '#f))))
            ((lambda (_%g105535105537%_)
               (if (_%g105535105537%_ _%key105516%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105516%_))))
             _%key?105533%_)
            (&HashTable-ref _%h105531%_ _%key105516%_ _%default105517%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref103033%_
       '#f))
    (define _%checked-hash-table::set!103036%_
      (lambda (_%self103035105365%_ _%key105367%_ _%value105368%_)
        (let* ((_%self105370%_ _%self103035105365%_)
               (_%self105372%_ _%self105370%_))
          (let ((_%h105382%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105372%_ '1 '#f '#f)))
                (_%key?105384%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105372%_ '2 '#f '#f))))
            ((lambda (_%g105386105388%_)
               (if (_%g105386105388%_ _%key105367%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105367%_))))
             _%key?105384%_)
            (&HashTable-set! _%h105382%_ _%key105367%_ _%value105368%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!103036%_
       '#f))
    (define _%checked-hash-table::update!103039%_
      (lambda (_%self103038105217%_
               _%key105219%_
               _%update105220%_
               _%default105221%_)
        (let* ((_%self105223%_ _%self103038105217%_)
               (_%self105225%_ _%self105223%_))
          (let ((_%h105235%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105225%_ '1 '#f '#f)))
                (_%key?105237%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105225%_ '2 '#f '#f))))
            ((lambda (_%key?105240%_)
               (if (_%key?105240%_ _%key105219%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105219%_)))
               (if (procedure? _%update105220%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update105220%_))))
             _%key?105237%_)
            (&HashTable-update!
             _%h105235%_
             _%key105219%_
             _%update105220%_
             _%default105221%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!103039%_
       '#f))
    (define _%checked-hash-table::delete!103042%_
      (lambda (_%self103041105069%_ _%key105071%_)
        (let* ((_%self105073%_ _%self103041105069%_)
               (_%self105075%_ _%self105073%_))
          (let ((_%h105085%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105075%_ '1 '#f '#f)))
                (_%key?105087%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105075%_ '2 '#f '#f))))
            ((lambda (_%g105089105091%_)
               (if (_%g105089105091%_ _%key105071%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105071%_))))
             _%key?105087%_)
            (&HashTable-delete! _%h105085%_ _%key105071%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!103042%_
       '#f))
    (define _%checked-hash-table::for-each103045%_
      (lambda (_%self103044104923%_ _%proc104925%_)
        (let* ((_%self104927%_ _%self103044104923%_)
               (_%self104929%_ _%self104927%_))
          (let ((_%h104939%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104929%_ '1 '#f '#f)))
                (_%key?104941%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104929%_ '2 '#f '#f))))
            ((lambda (_%_104944%_)
               (if (procedure? _%proc104925%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc104925%_))))
             _%key?104941%_)
            (&HashTable-for-each _%h104939%_ _%proc104925%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each103045%_
       '#f))
    (define _%checked-hash-table::length103048%_
      (lambda (_%self103047104780%_)
        (let* ((_%self104783%_ _%self103047104780%_)
               (_%self104785%_ _%self104783%_))
          (let ((_%h104795%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104785%_ '1 '#f '#f)))
                (_%key?104797%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104785%_ '2 '#f '#f))))
            (&HashTable-length _%h104795%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length103048%_
       '#f))
    (define _%checked-hash-table::copy103051%_
      (lambda (_%self103050104637%_)
        (let* ((_%self104640%_ _%self103050104637%_)
               (_%self104642%_ _%self104640%_))
          (let ((_%h104652%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104642%_ '1 '#f '#f)))
                (_%key?104654%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104642%_ '2 '#f '#f))))
            (&HashTable-copy _%h104652%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy103051%_
       '#f))
    (define _%checked-hash-table::clear!103054%_
      (lambda (_%self103053104494%_)
        (let* ((_%self104497%_ _%self103053104494%_)
               (_%self104499%_ _%self104497%_))
          (let ((_%h104509%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104499%_ '1 '#f '#f)))
                (_%key?104511%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104499%_ '2 '#f '#f))))
            (&HashTable-clear! _%h104509%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!103054%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table104364%_
               _%count104365%_
               _%free104366%_
               _%hash104367%_
               _%test104368%_
               _%seed104369%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table104364%_
           _%count104365%_
           _%free104366%_
           _%hash104367%_
           _%test104368%_
           _%seed104369%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords104187%_
               _%size-hint104177104188%_
               _%seed104178104190%_
               _%test104179104192%_
               _%hash104180104194%_
               _%lock104181104196%_
               _%check104182104198%_
               _%weak-keys104183104200%_
               _%weak-values104184104202%_)
        (let* ((_%size-hint104205%_
                (if (eq? _%size-hint104177104188%_ absent-value)
                    '#f
                    _%size-hint104177104188%_))
               (_%seed104207%_
                (if (eq? _%seed104178104190%_ absent-value)
                    '#f
                    _%seed104178104190%_))
               (_%test104209%_
                (if (eq? _%test104179104192%_ absent-value)
                    equal?
                    _%test104179104192%_))
               (_%hash104211%_
                (if (eq? _%hash104180104194%_ absent-value)
                    '#f
                    _%hash104180104194%_))
               (_%lock104213%_
                (if (eq? _%lock104181104196%_ absent-value)
                    '#f
                    _%lock104181104196%_))
               (_%check104215%_
                (if (eq? _%check104182104198%_ absent-value)
                    '#f
                    _%check104182104198%_))
               (_%weak-keys104217%_
                (if (eq? _%weak-keys104183104200%_ absent-value)
                    '#f
                    _%weak-keys104183104200%_))
               (_%weak-values104219%_
                (if (eq? _%weak-values104184104202%_ absent-value)
                    '#f
                    _%weak-values104184104202%_)))
          (letrec ((_%table-seed104221%_
                    (lambda ()
                      (if (fixnum? _%seed104207%_)
                          _%seed104207%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock104222%_
                    (lambda (_%ht104342%_)
                      (if _%lock104213%_
                          (let ((_%$obj104347%_
                                 (let ((__tmp107482
                                        (let ((_%$obj104344%_ _%lock104213%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj104344%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj104344%_)))
                                                   '#t)
                                              _%$obj104344%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj104344%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht104342%_
                                    __tmp107482))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj104347%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj104347%_)))
                                     '#t)
                                _%$obj104347%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj104347%_))))
                          _%ht104342%_)))
                   (_%wrap-checked104223%_
                    (lambda (_%ht104336%_ _%implicit104337%_)
                      (if _%check104215%_
                          (let ((_%$obj104339%_
                                 (let ((__tmp107483
                                        (if (procedure? _%check104215%_)
                                            _%check104215%_
                                            _%implicit104337%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht104336%_
                                    __tmp107483))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj104339%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj104339%_)))
                                     '#t)
                                _%$obj104339%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj104339%_))))
                          _%ht104336%_)))
                   (_%make104224%_
                    (lambda (_%kons104321%_
                             _%key?104322%_
                             _%hash104323%_
                             _%test104324%_)
                      (let* ((_%size104326%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint104205%_)))
                             (_%table104328%_
                              (let ((__tmp107484 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size104326%_ __tmp107484)))
                             (_%ht104333%_
                              (let ((_%$obj104330%_
                                     (_%kons104321%_
                                      _%table104328%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size104326%_ '2))
                                      _%hash104323%_
                                      _%test104324%_
                                      (_%table-seed104221%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj104330%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj104330%_)))
                                         '#t)
                                    _%$obj104330%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj104330%_))))))
                        (_%wrap-checked104223%_
                         (_%wrap-lock104222%_ _%ht104333%_)
                         _%key?104322%_))))
                   (_%make-gc-hash-table104225%_
                    (lambda ()
                      (let ((_%ht104319%_
                             (let ((_%$obj104316%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint104205%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj104316%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj104316%_)))
                                        '#t)
                                   _%$obj104316%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj104316%_))))))
                        (_%wrap-checked104223%_
                         (_%wrap-lock104222%_ _%ht104319%_)
                         true))))
                   (_%make-gambit-table104226%_
                    (lambda ()
                      (let* ((_%size104294%_
                              (let ((_%$e104291%_ _%size-hint104205%_))
                                (if _%$e104291%_
                                    _%$e104291%_
                                    (macro-absent-obj))))
                             (_%test104299%_
                              (let ((_%$e104296%_ _%test104209%_))
                                (if _%$e104296%_ _%$e104296%_ equal?)))
                             (_%hash104307%_
                              (let ((_%$e104301%_ _%hash104211%_))
                                (if _%$e104301%_
                                    _%$e104301%_
                                    (if (eq? _%test104299%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test104299%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht104312%_
                              (let ((_%$obj104309%_
                                     (make-table
                                      'size:
                                      _%size104294%_
                                      'test:
                                      _%test104299%_
                                      'hash:
                                      _%hash104307%_
                                      'weak-keys:
                                      _%weak-keys104217%_
                                      'weak-values:
                                      _%weak-values104219%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj104309%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj104309%_)))
                                         '#t)
                                    _%$obj104309%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj104309%_))))))
                        (_%wrap-checked104223%_
                         (_%wrap-lock104222%_ _%ht104312%_)
                         true)))))
            (if (or _%weak-keys104217%_ _%weak-values104219%_)
                (_%make-gambit-table104226%_)
                (if (and (or (eq? _%test104209%_ eq?)
                             (eq? _%test104209%_ ##eq?))
                         (or (not _%hash104211%_)
                             (eq? _%hash104211%_ eq?-hash)
                             (eq? _%hash104211%_ eq-hash))
                         (not _%seed104207%_))
                    (_%make-gc-hash-table104225%_)
                    (if (and (or (eq? _%test104209%_ eq?)
                                 (eq? _%test104209%_ ##eq?))
                             (or (not _%hash104211%_)
                                 (eq? _%hash104211%_ eq?-hash)
                                 (eq? _%hash104211%_ eq-hash)))
                        (_%make104224%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test104209%_ eqv?)
                                     (eq? _%test104209%_ ##eqv?))
                                 (or (not _%hash104211%_)
                                     (eq? _%hash104211%_ eqv?-hash)
                                     (eq? _%hash104211%_ eqv-hash)))
                            (_%make104224%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test104209%_ eq?)
                                         (eq? _%test104209%_ ##eq?))
                                     (or (eq? _%hash104211%_ symbolic-hash)
                                         (eq? _%hash104211%_ ##symbol-hash)))
                                (_%make104224%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test104209%_ eq?)
                                             (eq? _%test104209%_ ##eq?))
                                         (eq? _%hash104211%_ immediate-hash))
                                    (_%make104224%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test104209%_ equal?)
                                                 (eq? _%test104209%_ ##equal?)
                                                 (eq? _%test104209%_ string=?)
                                                 (eq? _%test104209%_
                                                      ##string=?))
                                             (or (eq? _%hash104211%_
                                                      string-hash)
                                                 (eq? _%hash104211%_
                                                      ##string=?-hash)))
                                        (_%make104224%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test104209%_ equal?)
                                                 (not _%hash104211%_))
                                            (_%make104224%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (not (procedure?
                                                      _%test104209%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test104209%_))
                                                (if (not (procedure?
                                                          _%hash104211%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash104211%_))
                                                    (_%make104224%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash104211%_
                                                     _%test104209%_)))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords104354%_ . _%args104355%_)
        (apply make-hash-table__%
               _%@@keywords104354%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords104354%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords104354%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords104354%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords104354%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords104354%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104354%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104354%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104354%_
                  'weak-values:
                  absent-value))
               _%args104355%_)))
    (define make-hash-table
      (lambda _%args104185104361%_
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
               _%args104185104361%_)))
    (define make-hash-table-eq
      (lambda _%args104174%_
        (apply make-hash-table 'test: eq? _%args104174%_)))
    (define make-hash-table-eqv
      (lambda _%args104172%_
        (apply make-hash-table 'test: eqv? _%args104172%_)))
    (define make-hash-table-symbolic
      (lambda _%args104170%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args104170%_)))
    (define make-hash-table-string
      (lambda _%args104168%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args104168%_)))
    (define make-hash-table-immediate
      (lambda _%args104166%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args104166%_)))
    (define list->hash-table
      (lambda (_%lst104163%_ . _%args104164%_)
        (list->hash-table!
         _%lst104163%_
         (apply make-hash-table
                'size:
                (length _%lst104163%_)
                _%args104164%_))))
    (define list->hash-table-eq
      (lambda (_%lst104160%_ . _%args104161%_)
        (list->hash-table!
         _%lst104160%_
         (apply make-hash-table-eq
                'size:
                (length _%lst104160%_)
                _%args104161%_))))
    (define list->hash-table-eqv
      (lambda (_%lst104157%_ . _%args104158%_)
        (list->hash-table!
         _%lst104157%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst104157%_)
                _%args104158%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst104154%_ . _%args104155%_)
        (list->hash-table!
         _%lst104154%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst104154%_)
                _%args104155%_))))
    (define list->hash-table-string
      (lambda (_%lst104151%_ . _%args104152%_)
        (list->hash-table!
         _%lst104151%_
         (apply make-hash-table-string
                'size:
                (length _%lst104151%_)
                _%args104152%_))))
    (define list->hash-table-immediate
      (lambda (_%lst104148%_ . _%args104149%_)
        (list->hash-table!
         _%lst104148%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst104148%_)
                _%args104149%_))))
    (define list->hash-table!
      (lambda (_%lst104115%_ _%h104116%_)
        (for-each
         (lambda (_%el104118%_)
           (let* ((_%el104119104126%_ _%el104118%_)
                  (_%E104121104130%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el104119104126%_
                              '([k . v])))
                     '#!void))
                  (_%K104122104136%_
                   (lambda (_%v104133%_ _%k104134%_)
                     (&HashTable-set! _%h104116%_ _%k104134%_ _%v104133%_))))
             (if (let () (declare (not safe)) (##pair? _%el104119104126%_))
                 (let ((_%hd104123104139%_
                        (let ()
                          (declare (not safe))
                          (##car _%el104119104126%_)))
                       (_%tl104124104141%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el104119104126%_))))
                   (let* ((_%k104144%_ _%hd104123104139%_)
                          (_%v104146%_ _%tl104124104141%_))
                     (_%K104122104136%_ _%v104146%_ _%k104144%_)))
                 (_%E104121104130%_))))
         _%lst104115%_)
        _%h104116%_))
    (define plist->hash-table
      (lambda (_%lst104112%_ . _%args104113%_)
        (plist->hash-table!
         _%lst104112%_
         (apply make-hash-table
                'size:
                (length _%lst104112%_)
                _%args104113%_))))
    (define plist->hash-table-eq
      (lambda (_%lst104109%_ . _%args104110%_)
        (plist->hash-table!
         _%lst104109%_
         (apply make-hash-table-eq
                'size:
                (length _%lst104109%_)
                _%args104110%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst104106%_ . _%args104107%_)
        (plist->hash-table!
         _%lst104106%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst104106%_)
                _%args104107%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst104103%_ . _%args104104%_)
        (plist->hash-table!
         _%lst104103%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst104103%_)
                _%args104104%_))))
    (define plist->hash-table-string
      (lambda (_%lst104100%_ . _%args104101%_)
        (plist->hash-table!
         _%lst104100%_
         (apply make-hash-table-string
                'size:
                (length _%lst104100%_)
                _%args104101%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst104097%_ . _%args104098%_)
        (plist->hash-table!
         _%lst104097%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst104097%_)
                _%args104098%_))))
    (define plist->hash-table!
      (lambda (_%lst104037%_ _%h104038%_)
        (let _%loop104040%_ ((_%rest104042%_ _%lst104037%_))
          (let* ((_%rest104043104055%_ _%rest104042%_)
                 (_%else104046104063%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst104037%_)))))
            (let ((_%K104049104078%_
                   (lambda (_%rest104074%_ _%val104075%_ _%key104076%_)
                     (&HashTable-set! _%h104038%_ _%key104076%_ _%val104075%_)
                     (_%loop104040%_ _%rest104074%_)))
                  (_%K104048104068%_ (lambda () _%h104038%_)))
              (let ((_%try-match104045104071%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest104043104055%_))
                           (_%K104048104068%_)
                           (_%else104046104063%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest104043104055%_))
                    (let ((_%tl104051104083%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest104043104055%_)))
                          (_%hd104050104081%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest104043104055%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl104051104083%_))
                          (let ((_%tl104053104090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl104051104083%_)))
                                (_%hd104052104088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl104051104083%_))))
                            (let ((_%key104086%_ _%hd104050104081%_)
                                  (_%val104093%_ _%hd104052104088%_)
                                  (_%rest104095%_ _%tl104053104090%_))
                              (_%K104049104078%_
                               _%rest104095%_
                               _%val104093%_
                               _%key104086%_)))
                          (_%else104046104063%_)))
                    (_%try-match104045104071%_))))))))
    (define hash-length
      (lambda (_%h104019%_)
        (let* ((_%h104025%_
                (let ((_%$obj104022%_ _%h104019%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104022%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104022%_)))
                           '#t)
                      _%$obj104022%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104022%_)))))
               (_%h104027%_ _%h104025%_))
          (__hash-length _%h104027%_))))
    (define __hash-length
      (lambda (_%h104007%_)
        (let ((_%h104010%_ _%h104007%_)) (__HashTable-length _%h104010%_))))
    (define hash-ref__%
      (lambda (_%h103975%_ _%key103976%_ _%default103977%_)
        (let* ((_%h103983%_
                (let ((_%$obj103980%_ _%h103975%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103980%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103980%_)))
                           '#t)
                      _%$obj103980%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103980%_)))))
               (_%h103985%_ _%h103983%_))
          (__hash-ref__% _%h103985%_ _%key103976%_ _%default103977%_))))
    (define hash-ref__0
      (lambda (_%h103998%_ _%key103999%_)
        (let ((_%default104001%_ (macro-absent-obj)))
          (hash-ref__% _%h103998%_ _%key103999%_ _%default104001%_))))
    (define hash-ref
      (lambda _g107486_
        (let ((_g107485_ (let () (declare (not safe)) (##length _g107486_))))
          (cond ((let () (declare (not safe)) (##fx= _g107485_ 2))
                 (apply hash-ref__0 _g107486_))
                ((let () (declare (not safe)) (##fx= _g107485_ 3))
                 (apply hash-ref__% _g107486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g107486_))))))
    (define __hash-ref__%
      (lambda (_%h103946%_ _%key103947%_ _%default103948%_)
        (let* ((_%h103951%_ _%h103946%_)
               (_%result103960%_
                (&HashTable-ref _%h103951%_ _%key103947%_ _%default103948%_)))
          (if (eq? _%result103960%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h103951%_
               'key:
               _%key103947%_)
              _%result103960%_))))
    (define __hash-ref__0
      (lambda (_%h103965%_ _%key103966%_)
        (let ((_%default103968%_ (macro-absent-obj)))
          (__hash-ref__% _%h103965%_ _%key103966%_ _%default103968%_))))
    (define __hash-ref
      (lambda _g107488_
        (let ((_g107487_ (let () (declare (not safe)) (##length _g107488_))))
          (cond ((let () (declare (not safe)) (##fx= _g107487_ 2))
                 (apply __hash-ref__0 _g107488_))
                ((let () (declare (not safe)) (##fx= _g107487_ 3))
                 (apply __hash-ref__% _g107488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g107488_))))))
    (define hash-get
      (lambda (_%h103926%_ _%key103927%_)
        (let* ((_%h103933%_
                (let ((_%$obj103930%_ _%h103926%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103930%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103930%_)))
                           '#t)
                      _%$obj103930%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103930%_)))))
               (_%h103935%_ _%h103933%_))
          (__hash-get _%h103935%_ _%key103927%_))))
    (define __hash-get
      (lambda (_%h103913%_ _%key103914%_)
        (let ((_%h103917%_ _%h103913%_))
          (&HashTable-ref _%h103917%_ _%key103914%_ '#f))))
    (define hash-put!
      (lambda (_%h103893%_ _%key103894%_ _%value103895%_)
        (let* ((_%h103901%_
                (let ((_%$obj103898%_ _%h103893%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103898%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103898%_)))
                           '#t)
                      _%$obj103898%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103898%_)))))
               (_%h103903%_ _%h103901%_))
          (__hash-put! _%h103903%_ _%key103894%_ _%value103895%_))))
    (define __hash-put!
      (lambda (_%h103879%_ _%key103880%_ _%value103881%_)
        (let ((_%h103884%_ _%h103879%_))
          (&HashTable-set! _%h103884%_ _%key103880%_ _%value103881%_))))
    (define hash-update!__%
      (lambda (_%h103844%_ _%key103845%_ _%update103846%_ _%default103847%_)
        (let* ((_%h103853%_
                (let ((_%$obj103850%_ _%h103844%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103850%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103850%_)))
                           '#t)
                      _%$obj103850%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103850%_)))))
               (_%h103855%_ _%h103853%_))
          (__hash-update!__%
           _%h103855%_
           _%key103845%_
           _%update103846%_
           _%default103847%_))))
    (define hash-update!__0
      (lambda (_%h103868%_ _%key103869%_ _%update103870%_)
        (let ((_%default103872%_ '#!void))
          (hash-update!__%
           _%h103868%_
           _%key103869%_
           _%update103870%_
           _%default103872%_))))
    (define hash-update!
      (lambda _g107490_
        (let ((_g107489_ (let () (declare (not safe)) (##length _g107490_))))
          (cond ((let () (declare (not safe)) (##fx= _g107489_ 3))
                 (apply hash-update!__0 _g107490_))
                ((let () (declare (not safe)) (##fx= _g107489_ 4))
                 (apply hash-update!__% _g107490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g107490_))))))
    (define __hash-update!__%
      (lambda (_%h103814%_ _%key103815%_ _%update103816%_ _%default103817%_)
        (let ((_%h103820%_ _%h103814%_))
          (HashTable-update!
           _%h103820%_
           _%key103815%_
           _%update103816%_
           _%default103817%_))))
    (define __hash-update!__0
      (lambda (_%h103832%_ _%key103833%_ _%update103834%_)
        (let ((_%default103836%_ '#!void))
          (__hash-update!__%
           _%h103832%_
           _%key103833%_
           _%update103834%_
           _%default103836%_))))
    (define __hash-update!
      (lambda _g107492_
        (let ((_g107491_ (let () (declare (not safe)) (##length _g107492_))))
          (cond ((let () (declare (not safe)) (##fx= _g107491_ 3))
                 (apply __hash-update!__0 _g107492_))
                ((let () (declare (not safe)) (##fx= _g107491_ 4))
                 (apply __hash-update!__% _g107492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g107492_))))))
    (define hash-remove!
      (lambda (_%h103794%_ _%key103795%_)
        (let* ((_%h103801%_
                (let ((_%$obj103798%_ _%h103794%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103798%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103798%_)))
                           '#t)
                      _%$obj103798%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103798%_)))))
               (_%h103803%_ _%h103801%_))
          (__hash-remove! _%h103803%_ _%key103795%_))))
    (define __hash-remove!
      (lambda (_%h103781%_ _%key103782%_)
        (let ((_%h103785%_ _%h103781%_))
          (&HashTable-delete! _%h103785%_ _%key103782%_))))
    (define hash-key?
      (lambda (_%h103762%_ _%k103763%_)
        (let* ((_%h103769%_
                (let ((_%$obj103766%_ _%h103762%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103766%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103766%_)))
                           '#t)
                      _%$obj103766%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103766%_)))))
               (_%h103771%_ _%h103769%_))
          (__hash-key? _%h103771%_ _%k103763%_))))
    (define __hash-key?
      (lambda (_%h103749%_ _%k103750%_)
        (let ((_%h103753%_ _%h103749%_))
          (not (eq? (&HashTable-ref _%h103753%_ _%k103750%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h103731%_)
        (let* ((_%h103737%_
                (let ((_%$obj103734%_ _%h103731%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103734%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103734%_)))
                           '#t)
                      _%$obj103734%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103734%_)))))
               (_%h103739%_ _%h103737%_))
          (__hash->list _%h103739%_))))
    (define __hash->list
      (lambda (_%h103714%_)
        (let* ((_%h103717%_ _%h103714%_) (_%lst103726%_ '()))
          (&HashTable-for-each
           _%h103717%_
           (lambda (_%k103728%_ _%v103729%_)
             (set! _%lst103726%_
                   (cons (cons _%k103728%_ _%v103729%_) _%lst103726%_))))
          _%lst103726%_)))
    (define hash->plist
      (lambda (_%h103696%_)
        (let* ((_%h103702%_
                (let ((_%$obj103699%_ _%h103696%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103699%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103699%_)))
                           '#t)
                      _%$obj103699%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103699%_)))))
               (_%h103704%_ _%h103702%_))
          (__hash->plist _%h103704%_))))
    (define __hash->plist
      (lambda (_%h103679%_)
        (let* ((_%h103682%_ _%h103679%_) (_%lst103691%_ '()))
          (&HashTable-for-each
           _%h103682%_
           (lambda (_%k103693%_ _%v103694%_)
             (set! _%lst103691%_
                   (cons _%k103693%_ (cons _%v103694%_ _%lst103691%_)))))
          _%lst103691%_)))
    (define hash-for-each
      (lambda (_%proc103650%_ _%h103651%_)
        (if (procedure? _%proc103650%_)
            (let* ((_%proc103655%_ _%proc103650%_)
                   (_%h103667%_
                    (let ((_%$obj103664%_ _%h103651%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj103664%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj103664%_)))
                               '#t)
                          _%$obj103664%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj103664%_)))))
                   (_%h103669%_ _%h103667%_))
              (__hash-for-each _%proc103655%_ _%h103669%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc103650%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc103629%_ _%h103630%_)
        (let* ((_%proc103633%_ _%proc103629%_) (_%h103641%_ _%h103630%_))
          (&HashTable-for-each _%h103641%_ _%proc103633%_))))
    (define hash-map
      (lambda (_%proc103600%_ _%h103601%_)
        (if (procedure? _%proc103600%_)
            (let* ((_%proc103605%_ _%proc103600%_)
                   (_%h103617%_
                    (let ((_%$obj103614%_ _%h103601%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj103614%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj103614%_)))
                               '#t)
                          _%$obj103614%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj103614%_)))))
                   (_%h103619%_ _%h103617%_))
              (__hash-map _%proc103605%_ _%h103619%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc103600%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc103574%_ _%h103575%_)
        (let* ((_%proc103578%_ _%proc103574%_)
               (_%h103586%_ _%h103575%_)
               (_%result103595%_ '()))
          (&HashTable-for-each
           _%h103586%_
           (lambda (_%k103597%_ _%v103598%_)
             (set! _%result103595%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc103578%_ _%k103597%_ _%v103598%_))
                         _%result103595%_))))
          _%result103595%_)))
    (define hash-fold
      (lambda (_%proc103544%_ _%iv103545%_ _%h103546%_)
        (if (procedure? _%proc103544%_)
            (let* ((_%proc103550%_ _%proc103544%_)
                   (_%h103562%_
                    (let ((_%$obj103559%_ _%h103546%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj103559%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj103559%_)))
                               '#t)
                          _%$obj103559%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj103559%_)))))
                   (_%h103564%_ _%h103562%_))
              (__hash-fold _%proc103550%_ _%iv103545%_ _%h103564%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc103544%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc103517%_ _%iv103518%_ _%h103519%_)
        (let* ((_%proc103522%_ _%proc103517%_)
               (_%h103530%_ _%h103519%_)
               (_%result103539%_ _%iv103518%_))
          (&HashTable-for-each
           _%h103530%_
           (lambda (_%k103541%_ _%v103542%_)
             (set! _%result103539%_
                   (let ()
                     (declare (not safe))
                     (_%proc103522%_
                      _%k103541%_
                      _%v103542%_
                      _%result103539%_)))))
          _%result103539%_)))
    (define hash-find__%
      (lambda (_%proc103475%_ _%h103476%_ _%default-value103477%_)
        (if (procedure? _%proc103475%_)
            (let* ((_%proc103481%_ _%proc103475%_)
                   (_%h103493%_
                    (let ((_%$obj103490%_ _%h103476%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj103490%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj103490%_)))
                               '#t)
                          _%$obj103490%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj103490%_)))))
                   (_%h103495%_ _%h103493%_))
              (__hash-find__%
               _%proc103481%_
               _%h103495%_
               _%default-value103477%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc103475%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc103508%_ _%h103509%_)
        (let ((_%default-value103511%_ '#f))
          (hash-find__% _%proc103508%_ _%h103509%_ _%default-value103511%_))))
    (define hash-find
      (lambda _g107494_
        (let ((_g107493_ (let () (declare (not safe)) (##length _g107494_))))
          (cond ((let () (declare (not safe)) (##fx= _g107493_ 2))
                 (apply hash-find__0 _g107494_))
                ((let () (declare (not safe)) (##fx= _g107493_ 3))
                 (apply hash-find__% _g107494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g107494_))))))
    (define __hash-find__%
      (lambda (_%proc103432%_ _%h103433%_ _%default-value103434%_)
        (let* ((_%proc103437%_ _%proc103432%_)
               (_%h103445%_ _%h103433%_)
               (__tmp107495
                (lambda (_%return103454%_)
                  (&HashTable-for-each
                   _%h103445%_
                   (lambda (_%k103456%_ _%v103457%_)
                     (let ((_%$e103459%_
                            (let ()
                              (declare (not safe))
                              (_%proc103437%_ _%k103456%_ _%v103457%_))))
                       (if _%$e103459%_
                           (_%return103454%_ _%$e103459%_)
                           '#!void))))
                  _%default-value103434%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp107495))))
    (define __hash-find__0
      (lambda (_%proc103465%_ _%h103466%_)
        (let ((_%default-value103468%_ '#f))
          (__hash-find__%
           _%proc103465%_
           _%h103466%_
           _%default-value103468%_))))
    (define __hash-find
      (lambda _g107497_
        (let ((_g107496_ (let () (declare (not safe)) (##length _g107497_))))
          (cond ((let () (declare (not safe)) (##fx= _g107496_ 2))
                 (apply __hash-find__0 _g107497_))
                ((let () (declare (not safe)) (##fx= _g107496_ 3))
                 (apply __hash-find__% _g107497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g107497_))))))
    (define hash-keys
      (lambda (_%h103413%_)
        (let* ((_%h103419%_
                (let ((_%$obj103416%_ _%h103413%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103416%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103416%_)))
                           '#t)
                      _%$obj103416%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103416%_)))))
               (_%h103421%_ _%h103419%_))
          (__hash-keys _%h103421%_))))
    (define __hash-keys
      (lambda (_%h103396%_)
        (let* ((_%h103399%_ _%h103396%_) (_%result103408%_ '()))
          (&HashTable-for-each
           _%h103399%_
           (lambda (_%k103410%_ _%v103411%_)
             (set! _%result103408%_ (cons _%k103410%_ _%result103408%_))))
          _%result103408%_)))
    (define hash-values
      (lambda (_%h103378%_)
        (let* ((_%h103384%_
                (let ((_%$obj103381%_ _%h103378%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103381%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103381%_)))
                           '#t)
                      _%$obj103381%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103381%_)))))
               (_%h103386%_ _%h103384%_))
          (__hash-values _%h103386%_))))
    (define __hash-values
      (lambda (_%h103361%_)
        (let* ((_%h103364%_ _%h103361%_) (_%result103373%_ '()))
          (&HashTable-for-each
           _%h103364%_
           (lambda (_%k103375%_ _%v103376%_)
             (set! _%result103373%_ (cons _%v103376%_ _%result103373%_))))
          _%result103373%_)))
    (define hash-copy
      (lambda (_%h103343%_)
        (let* ((_%h103349%_
                (let ((_%$obj103346%_ _%h103343%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103346%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103346%_)))
                           '#t)
                      _%$obj103346%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103346%_)))))
               (_%h103351%_ _%h103349%_))
          (__hash-copy _%h103351%_))))
    (define __hash-copy
      (lambda (_%h103331%_)
        (let ((_%h103334%_ _%h103331%_)) (__HashTable-copy _%h103334%_))))
    (define hash-clear!
      (lambda (_%h103313%_)
        (let* ((_%h103319%_
                (let ((_%$obj103316%_ _%h103313%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103316%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103316%_)))
                           '#t)
                      _%$obj103316%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103316%_)))))
               (_%h103321%_ _%h103319%_))
          (__hash-clear! _%h103321%_))))
    (define __hash-clear!
      (lambda (_%h103301%_)
        (let ((_%h103304%_ _%h103301%_)) (&HashTable-clear! _%h103304%_))))
    (define hash-merge
      (lambda (_%h103282%_ . _%rest103283%_)
        (let* ((_%h103289%_
                (let ((_%$obj103286%_ _%h103282%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103286%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103286%_)))
                           '#t)
                      _%$obj103286%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103286%_)))))
               (_%h103291%_ _%h103289%_))
          (declare (not safe))
          (##apply __hash-merge _%h103291%_ _%rest103283%_))))
    (define __hash-merge
      (lambda (_%h103267%_ . _%rest103268%_)
        (let* ((_%h103271%_ _%h103267%_)
               (_%copy103280%_ (__HashTable-copy _%h103271%_)))
          (apply hash-merge! _%copy103280%_ _%rest103268%_)
          _%copy103280%_)))
    (define hash-merge!
      (lambda (_%h103248%_ . _%rest103249%_)
        (let* ((_%h103255%_
                (let ((_%$obj103252%_ _%h103248%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103252%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103252%_)))
                           '#t)
                      _%$obj103252%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103252%_)))))
               (_%h103257%_ _%h103255%_))
          (declare (not safe))
          (##apply __hash-merge! _%h103257%_ _%rest103249%_))))
    (define __hash-merge!
      (lambda (_%h103211%_ . _%rest103212%_)
        (let ((_%h103215%_ _%h103211%_))
          (let ((__tmp107498
                 (lambda (_%hr103224%_)
                   (let* ((_%hr103230%_
                           (let ((_%$obj103227%_ _%hr103224%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj103227%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj103227%_)))
                                      '#t)
                                 _%$obj103227%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj103227%_)))))
                          (_%hr103232%_ _%hr103230%_))
                     (&HashTable-for-each
                      _%hr103232%_
                      (lambda (_%k103245%_ _%v103246%_)
                        (if (__hash-key? _%h103215%_ _%k103245%_)
                            '#!void
                            (&HashTable-set!
                             _%h103215%_
                             _%k103245%_
                             _%v103246%_))))))))
            (declare (not safe))
            (##for-each __tmp107498 _%rest103212%_))
          _%h103215%_)))))
