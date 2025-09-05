(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1756721294)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp118442 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp118442
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args118356%_
        (apply make-instance UnboundKeyError::t _%$args118356%_)))
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
      (lambda (_%where118230%_ _%message118231%_ . _%irritants118232%_)
        (let ((__tmp118443
               (let ((__obj118436
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj118436
                    _%message118231%_
                    'where:
                    _%where118230%_
                    'irritants:
                    _%irritants118232%_))
                 __obj118436)))
          (declare (not safe))
          (raise __tmp118443))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp118444 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp118444
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
      (lambda (_%obj118228%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj118228%_))))
    (define try-HashTable
      (lambda (_%obj118226%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj118226%_))))
    (define HashTable?
      (lambda (_%obj118224%_)
        (let ((__tmp118445
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj118224%_ __tmp118445))))
    (define is-HashTable?
      (lambda (_%obj118222%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj118222%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self118206%_)
        (let* ((_%self118211%_
                (let ((_%$obj118208%_ _%self118206%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118208%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118208%_)))
                           '#t)
                      _%$obj118208%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118208%_)))))
               (_%self118213%_ _%self118211%_))
          (&HashTable-clear! _%self118213%_))))
    (define &HashTable-clear!
      (lambda (_%self118191%_)
        (let ((_%self118193%_ _%self118191%_))
          (declare (not safe))
          (let ((_%obj118203%_
                 (##unchecked-structure-ref _%self118193%_ '1 '#f 'clear!))
                (_%f118204%_
                 (##unchecked-structure-ref _%self118193%_ '2 '#f 'clear!)))
            (_%f118204%_ _%obj118203%_)))))
    (define HashTable-copy
      (lambda (_%self118175%_)
        (let* ((_%self118180%_
                (let ((_%$obj118177%_ _%self118175%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118177%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118177%_)))
                           '#t)
                      _%$obj118177%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118177%_)))))
               (_%self118182%_ _%self118180%_))
          (__HashTable-copy _%self118182%_))))
    (define __HashTable-copy
      (lambda (_%self118162%_)
        (let* ((_%self118164%_ _%self118162%_)
               (_%$obj118172%_ (&HashTable-copy _%self118164%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj118172%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj118172%_)))
                   '#t)
              _%$obj118172%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj118172%_))))))
    (define &HashTable-copy
      (lambda (_%self118147%_)
        (let ((_%self118149%_ _%self118147%_))
          (declare (not safe))
          (let ((_%obj118159%_
                 (##unchecked-structure-ref _%self118149%_ '1 '#f 'copy))
                (_%f118160%_
                 (##unchecked-structure-ref _%self118149%_ '3 '#f 'copy)))
            (_%f118160%_ _%obj118159%_)))))
    (define HashTable-delete!
      (lambda (_%self118130%_ _%key118131%_)
        (let* ((_%self118136%_
                (let ((_%$obj118133%_ _%self118130%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118133%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118133%_)))
                           '#t)
                      _%$obj118133%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118133%_)))))
               (_%self118138%_ _%self118136%_))
          (&HashTable-delete! _%self118138%_ _%key118131%_))))
    (define &HashTable-delete!
      (lambda (_%self118114%_ _%key118115%_)
        (let ((_%self118117%_ _%self118114%_))
          (declare (not safe))
          (let ((_%obj118127%_
                 (##unchecked-structure-ref _%self118117%_ '1 '#f 'delete!))
                (_%f118128%_
                 (##unchecked-structure-ref _%self118117%_ '4 '#f 'delete!)))
            (_%f118128%_ _%obj118127%_ _%key118115%_)))))
    (define HashTable-for-each
      (lambda (_%self118087%_ _%proc118088%_)
        (let* ((_%self118093%_
                (let ((_%$obj118090%_ _%self118087%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118090%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118090%_)))
                           '#t)
                      _%$obj118090%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118090%_)))))
               (_%self118095%_ _%self118093%_))
          (if (procedure? _%proc118088%_)
              (let ((_%proc118104%_ _%proc118088%_))
                (&HashTable-for-each _%self118095%_ _%proc118104%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc118088%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self118063%_ _%proc118064%_)
        (let* ((_%self118066%_ _%self118063%_) (_%proc118073%_ _%proc118064%_))
          (declare (not safe))
          (let ((_%obj118084%_
                 (##unchecked-structure-ref _%self118066%_ '1 '#f 'for-each))
                (_%f118085%_
                 (##unchecked-structure-ref _%self118066%_ '5 '#f 'for-each)))
            (_%f118085%_ _%obj118084%_ _%proc118073%_)))))
    (define HashTable-length
      (lambda (_%self118047%_)
        (let* ((_%self118052%_
                (let ((_%$obj118049%_ _%self118047%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118049%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118049%_)))
                           '#t)
                      _%$obj118049%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118049%_)))))
               (_%self118054%_ _%self118052%_))
          (__HashTable-length _%self118054%_))))
    (define __HashTable-length
      (lambda (_%self118034%_)
        (let* ((_%self118036%_ _%self118034%_)
               (_%val118044%_ (&HashTable-length _%self118036%_)))
          _%val118044%_)))
    (define &HashTable-length
      (lambda (_%self118019%_)
        (let ((_%self118021%_ _%self118019%_))
          (declare (not safe))
          (let ((_%obj118031%_
                 (##unchecked-structure-ref _%self118021%_ '1 '#f 'length))
                (_%f118032%_
                 (##unchecked-structure-ref _%self118021%_ '6 '#f 'length)))
            (_%f118032%_ _%obj118031%_)))))
    (define HashTable-ref
      (lambda (_%self118001%_ _%key118002%_ _%default118003%_)
        (let* ((_%self118008%_
                (let ((_%$obj118005%_ _%self118001%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118005%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118005%_)))
                           '#t)
                      _%$obj118005%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118005%_)))))
               (_%self118010%_ _%self118008%_))
          (&HashTable-ref _%self118010%_ _%key118002%_ _%default118003%_))))
    (define &HashTable-ref
      (lambda (_%self117984%_ _%key117985%_ _%default117986%_)
        (let ((_%self117988%_ _%self117984%_))
          (declare (not safe))
          (let ((_%obj117998%_
                 (##unchecked-structure-ref _%self117988%_ '1 '#f 'ref))
                (_%f117999%_
                 (##unchecked-structure-ref _%self117988%_ '7 '#f 'ref)))
            (_%f117999%_ _%obj117998%_ _%key117985%_ _%default117986%_)))))
    (define HashTable-set!
      (lambda (_%self117966%_ _%key117967%_ _%value117968%_)
        (let* ((_%self117973%_
                (let ((_%$obj117970%_ _%self117966%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117970%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117970%_)))
                           '#t)
                      _%$obj117970%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117970%_)))))
               (_%self117975%_ _%self117973%_))
          (&HashTable-set! _%self117975%_ _%key117967%_ _%value117968%_))))
    (define &HashTable-set!
      (lambda (_%self117949%_ _%key117950%_ _%value117951%_)
        (let ((_%self117953%_ _%self117949%_))
          (declare (not safe))
          (let ((_%obj117963%_
                 (##unchecked-structure-ref _%self117953%_ '1 '#f 'set!))
                (_%f117964%_
                 (##unchecked-structure-ref _%self117953%_ '8 '#f 'set!)))
            (_%f117964%_ _%obj117963%_ _%key117950%_ _%value117951%_)))))
    (define HashTable-update!
      (lambda (_%self117920%_ _%key117921%_ _%proc117922%_ _%default117923%_)
        (let* ((_%self117928%_
                (let ((_%$obj117925%_ _%self117920%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117925%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117925%_)))
                           '#t)
                      _%$obj117925%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117925%_)))))
               (_%self117930%_ _%self117928%_))
          (if (procedure? _%proc117922%_)
              (let ((_%proc117939%_ _%proc117922%_))
                (&HashTable-update!
                 _%self117930%_
                 _%key117921%_
                 _%proc117939%_
                 _%default117923%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc117922%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self117892%_ _%key117893%_ _%proc117894%_ _%default117895%_)
        (let* ((_%self117897%_ _%self117892%_) (_%proc117904%_ _%proc117894%_))
          (declare (not safe))
          (let ((_%obj117915%_
                 (##unchecked-structure-ref _%self117897%_ '1 '#f 'update!))
                (_%f117917%_
                 (##unchecked-structure-ref _%self117897%_ '9 '#f 'update!)))
            (_%f117917%_
             _%obj117915%_
             _%key117893%_
             _%proc117904%_
             _%default117895%_)))))
    (define Locker::t
      (let ((__tmp118446 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp118446
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
      (lambda (_%obj117890%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj117890%_))))
    (define try-Locker
      (lambda (_%obj117888%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj117888%_))))
    (define Locker?
      (lambda (_%obj117886%_)
        (let ((__tmp118447
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj117886%_ __tmp118447))))
    (define is-Locker?
      (lambda (_%obj117884%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj117884%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self117868%_)
        (let* ((_%self117873%_
                (let ((_%$obj117870%_ _%self117868%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117870%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117870%_)))
                           '#t)
                      _%$obj117870%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117870%_)))))
               (_%self117875%_ _%self117873%_))
          (&Locker-read-lock! _%self117875%_))))
    (define &Locker-read-lock!
      (lambda (_%self117853%_)
        (let ((_%self117855%_ _%self117853%_))
          (declare (not safe))
          (let ((_%obj117865%_
                 (##unchecked-structure-ref _%self117855%_ '1 '#f 'read-lock!))
                (_%f117866%_
                 (##unchecked-structure-ref
                  _%self117855%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f117866%_ _%obj117865%_)))))
    (define Locker-read-unlock!
      (lambda (_%self117837%_)
        (let* ((_%self117842%_
                (let ((_%$obj117839%_ _%self117837%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117839%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117839%_)))
                           '#t)
                      _%$obj117839%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117839%_)))))
               (_%self117844%_ _%self117842%_))
          (&Locker-read-unlock! _%self117844%_))))
    (define &Locker-read-unlock!
      (lambda (_%self117822%_)
        (let ((_%self117824%_ _%self117822%_))
          (declare (not safe))
          (let ((_%obj117834%_
                 (##unchecked-structure-ref
                  _%self117824%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f117835%_
                 (##unchecked-structure-ref
                  _%self117824%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f117835%_ _%obj117834%_)))))
    (define Locker-write-lock!
      (lambda (_%self117806%_)
        (let* ((_%self117811%_
                (let ((_%$obj117808%_ _%self117806%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117808%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117808%_)))
                           '#t)
                      _%$obj117808%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117808%_)))))
               (_%self117813%_ _%self117811%_))
          (&Locker-write-lock! _%self117813%_))))
    (define &Locker-write-lock!
      (lambda (_%self117791%_)
        (let ((_%self117793%_ _%self117791%_))
          (declare (not safe))
          (let ((_%obj117803%_
                 (##unchecked-structure-ref
                  _%self117793%_
                  '1
                  '#f
                  'write-lock!))
                (_%f117804%_
                 (##unchecked-structure-ref
                  _%self117793%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f117804%_ _%obj117803%_)))))
    (define Locker-write-unlock!
      (lambda (_%self117775%_)
        (let* ((_%self117780%_
                (let ((_%$obj117777%_ _%self117775%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117777%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117777%_)))
                           '#t)
                      _%$obj117777%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117777%_)))))
               (_%self117782%_ _%self117780%_))
          (&Locker-write-unlock! _%self117782%_))))
    (define &Locker-write-unlock!
      (lambda (_%self117758%_)
        (let ((_%self117760%_ _%self117758%_))
          (declare (not safe))
          (let ((_%obj117770%_
                 (##unchecked-structure-ref
                  _%self117760%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f117772%_
                 (##unchecked-structure-ref
                  _%self117760%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f117772%_ _%obj117770%_)))))
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
      (lambda (_%table117751%_
               _%key117752%_
               _%update117753%_
               _%default117754%_)
        (let ((_%result117756%_
               (table-ref _%table117751%_ _%key117752%_ _%default117754%_)))
          (table-set!
           _%table117751%_
           _%key117752%_
           (_%update117753%_ _%default117754%_)))))
    (define gambit-table-for-each
      (lambda (_%table117748%_ _%proc117749%_)
        (table-for-each _%proc117749%_ _%table117748%_)))
    (define gambit-table-clear!
      (lambda (_%table117746%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table117746%_ '0 '5 '#f '#f))))
    (let ((__tmp118448 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118448 'HashTable::ref table-ref))
    (let ((__tmp118449 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118449 'HashTable::set! table-set!))
    (let ((__tmp118450 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118450 'HashTable::update! gambit-table-update!))
    (let ((__tmp118451 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118451 'HashTable::delete! table-set!))
    (let ((__tmp118452 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118452 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp118453 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118453 'HashTable::length table-length))
    (let ((__tmp118454 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118454 'HashTable::copy table-copy))
    (let ((__tmp118455 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118455 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots117728%_ '(table count free hash test seed))
             (_%slot-vector117730%_ (list->vector (cons '#f _%slots117728%_)))
             (_%slot-table117737%_
              (let ((_%slot-table117732%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp118458
                       (lambda (_%slot117734%_ _%field117735%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117732%_
                            _%slot117734%_
                            _%field117735%_))
                         (let ((__tmp118459
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot117734%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117732%_
                            __tmp118459
                            _%field117735%_))))
                      (__tmp118456
                       (let ((__tmp118457
                              (let ()
                                (declare (not safe))
                                (##length _%slots117728%_))))
                         (declare (not safe))
                         (##iota __tmp118457 '1))))
                  (declare (not safe))
                  (##for-each __tmp118458 _%slots117728%_ __tmp118456))
                _%slot-table117732%_))
             (_%flags117739%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields117741%_ '#())
             (_%properties117743%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots117728%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp118460 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags117739%_
         __table::t
         _%fields117741%_
         __tmp118460
         _%slot-vector117730%_
         _%slot-table117737%_
         _%properties117743%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots117710%_ '(gcht immediate))
             (_%slot-vector117712%_ (list->vector (cons '#f _%slots117710%_)))
             (_%slot-table117719%_
              (let ((_%slot-table117714%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp118463
                       (lambda (_%slot117716%_ _%field117717%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117714%_
                            _%slot117716%_
                            _%field117717%_))
                         (let ((__tmp118464
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot117716%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117714%_
                            __tmp118464
                            _%field117717%_))))
                      (__tmp118461
                       (let ((__tmp118462
                              (let ()
                                (declare (not safe))
                                (##length _%slots117710%_))))
                         (declare (not safe))
                         (##iota __tmp118462 '1))))
                  (declare (not safe))
                  (##for-each __tmp118463 _%slots117710%_ __tmp118461))
                _%slot-table117714%_))
             (_%flags117721%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields117723%_ '#())
             (_%properties117725%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots117710%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp118465 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags117721%_
         __gc-table::t
         _%fields117723%_
         __tmp118465
         _%slot-vector117712%_
         _%slot-table117719%_
         _%properties117725%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp118467 (list))
            (__tmp118466
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp118467
         '(table lock)
         __tmp118466
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args117707%_
        (apply make-instance locked-hash-table::t _%$args117707%_)))
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
      (let ((__tmp118469 (list))
            (__tmp118468
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp118469
         '(table key-check)
         __tmp118468
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args117704%_
        (apply make-instance checked-hash-table::t _%$args117704%_)))
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
      (let ((__tmp118471 (list hash-table::t))
            (__tmp118470 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp118471
         '()
         __tmp118470
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args117701%_
        (apply make-instance eq-hash-table::t _%$args117701%_)))
    (define eqv-hash-table::t
      (let ((__tmp118473 (list hash-table::t))
            (__tmp118472 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp118473
         '()
         __tmp118472
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args117698%_
        (apply make-instance eqv-hash-table::t _%$args117698%_)))
    (define symbol-hash-table::t
      (let ((__tmp118475 (list hash-table::t))
            (__tmp118474 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp118475
         '()
         __tmp118474
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args117695%_
        (apply make-instance symbol-hash-table::t _%$args117695%_)))
    (define string-hash-table::t
      (let ((__tmp118477 (list hash-table::t))
            (__tmp118476 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp118477
         '()
         __tmp118476
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args117692%_
        (apply make-instance string-hash-table::t _%$args117692%_)))
    (define immediate-hash-table::t
      (let ((__tmp118479 (list hash-table::t))
            (__tmp118478 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp118479
         '()
         __tmp118478
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args117689%_
        (apply make-instance immediate-hash-table::t _%$args117689%_)))
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
    (define _%locked-hash-table::HashTable::ref113484%_
      (lambda (_%self117649%_ _%key117651%_ _%default117652%_)
        (let* ((_%self117655%_ _%self117649%_)
               (_%key117664%_ _%key117651%_)
               (_%default117672%_ _%default117652%_))
          (let ((_%h117681%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117655%_ '1 '#f '#f)))
                (_%l117683%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117655%_ '2 '#f '#f))))
            (let ((__tmp118482 (lambda () (&Locker-read-lock! _%l117683%_)))
                  (__tmp118481
                   (lambda ()
                     (&HashTable-ref
                      _%h117681%_
                      _%key117664%_
                      _%default117672%_)))
                  (__tmp118480 (lambda () (&Locker-read-unlock! _%l117683%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118482 __tmp118481 __tmp118480))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref113484%_
       '#f))
    (define _%locked-hash-table::HashTable::set!113486%_
      (lambda (_%self117486%_ _%key117488%_ _%value117489%_)
        (let* ((_%self117492%_ _%self117486%_)
               (_%key117501%_ _%key117488%_)
               (_%value117509%_ _%value117489%_))
          (let ((_%h117518%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117492%_ '1 '#f '#f)))
                (_%l117520%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117492%_ '2 '#f '#f))))
            (let ((__tmp118485 (lambda () (&Locker-write-lock! _%l117520%_)))
                  (__tmp118484
                   (lambda ()
                     (&HashTable-set!
                      _%h117518%_
                      _%key117501%_
                      _%value117509%_)))
                  (__tmp118483
                   (lambda () (&Locker-write-unlock! _%l117520%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118485 __tmp118484 __tmp118483))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!113486%_
       '#f))
    (define _%locked-hash-table::HashTable::update!113488%_
      (lambda (_%self117314%_ _%key117316%_ _%update117317%_ _%default117318%_)
        (let* ((_%self117321%_ _%self117314%_)
               (_%key117330%_ _%key117316%_)
               (_%update117338%_ _%update117317%_)
               (_%default117346%_ _%default117318%_))
          (let ((_%h117355%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117321%_ '1 '#f '#f)))
                (_%l117357%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117321%_ '2 '#f '#f))))
            (let ((__tmp118488 (lambda () (&Locker-write-lock! _%l117357%_)))
                  (__tmp118487
                   (lambda ()
                     (&HashTable-update!
                      _%h117355%_
                      _%key117330%_
                      _%update117338%_
                      _%default117346%_)))
                  (__tmp118486
                   (lambda () (&Locker-write-unlock! _%l117357%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118488 __tmp118487 __tmp118486))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!113488%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!113490%_
      (lambda (_%self117160%_ _%key117162%_)
        (let* ((_%self117165%_ _%self117160%_) (_%key117174%_ _%key117162%_))
          (let ((_%h117183%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117165%_ '1 '#f '#f)))
                (_%l117185%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117165%_ '2 '#f '#f))))
            (let ((__tmp118491 (lambda () (&Locker-write-lock! _%l117185%_)))
                  (__tmp118490
                   (lambda () (&HashTable-delete! _%h117183%_ _%key117174%_)))
                  (__tmp118489
                   (lambda () (&Locker-write-unlock! _%l117185%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118491 __tmp118490 __tmp118489))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!113490%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each113492%_
      (lambda (_%self117006%_ _%proc117008%_)
        (let* ((_%self117011%_ _%self117006%_) (_%proc117020%_ _%proc117008%_))
          (let ((_%h117029%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117011%_ '1 '#f '#f)))
                (_%l117031%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117011%_ '2 '#f '#f))))
            (let ((__tmp118494 (lambda () (&Locker-read-lock! _%l117031%_)))
                  (__tmp118493
                   (lambda ()
                     (&HashTable-for-each _%h117029%_ _%proc117020%_)))
                  (__tmp118492 (lambda () (&Locker-read-unlock! _%l117031%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118494 __tmp118493 __tmp118492))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each113492%_
       '#f))
    (define _%locked-hash-table::HashTable::length113494%_
      (lambda (_%self116854%_)
        (let ((_%self116858%_ _%self116854%_))
          (let ((_%h116868%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116858%_ '1 '#f '#f)))
                (_%l116870%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116858%_ '2 '#f '#f))))
            ((lambda (_%g116872116874%_)
               (let ((_%val116877%_ _%g116872116874%_))
                 (if (fixnum? _%val116877%_)
                     _%val116877%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val116877%_)))))
             (let ((__tmp118497 (lambda () (&Locker-read-lock! _%l116870%_)))
                   (__tmp118496 (lambda () (&HashTable-length _%h116868%_)))
                   (__tmp118495
                    (lambda () (&Locker-read-unlock! _%l116870%_))))
               (declare (not safe))
               (##dynamic-wind __tmp118497 __tmp118496 __tmp118495)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length113494%_
       '#f))
    (define _%locked-hash-table::HashTable::copy113496%_
      (lambda (_%self116706%_)
        (let ((_%self116710%_ _%self116706%_))
          (let ((_%h116720%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116710%_ '1 '#f '#f)))
                (_%l116722%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116710%_ '2 '#f '#f))))
            (let ((_%$obj116728%_
                   (let ((__tmp118500
                          (lambda () (&Locker-read-lock! _%l116722%_)))
                         (__tmp118499
                          (lambda () (&HashTable-copy _%h116720%_)))
                         (__tmp118498
                          (lambda () (&Locker-read-unlock! _%l116722%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp118500 __tmp118499 __tmp118498))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj116728%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj116728%_)))
                       '#t)
                  _%$obj116728%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj116728%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy113496%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!113498%_
      (lambda (_%self116561%_)
        (let ((_%self116565%_ _%self116561%_))
          (let ((_%h116575%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116565%_ '1 '#f '#f)))
                (_%l116577%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116565%_ '2 '#f '#f))))
            (let ((__tmp118503 (lambda () (&Locker-write-lock! _%l116577%_)))
                  (__tmp118502 (lambda () (&HashTable-clear! _%h116575%_)))
                  (__tmp118501
                   (lambda () (&Locker-write-unlock! _%l116577%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118503 __tmp118502 __tmp118501))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!113498%_
       '#f))
    (let ((__tmp118504 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118504 'Locker::read-lock! mutex-lock!))
    (let ((__tmp118505 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118505 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp118506 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118506 'Locker::write-lock! mutex-lock!))
    (let ((__tmp118507 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118507 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref113711%_
      (lambda (_%self116396%_ _%key116397%_ _%default116398%_)
        (let* ((_%self116401%_ _%self116396%_)
               (_%key116410%_ _%key116397%_)
               (_%default116418%_ _%default116398%_))
          (declare (not safe))
          (let ((_%h116429%_
                 (##unchecked-structure-ref _%self116401%_ '1 '#f '#f))
                (_%key?116431%_
                 (##unchecked-structure-ref _%self116401%_ '2 '#f '#f)))
            (if ((lambda (_%key?116434%_ _%key116435%_ _%default116436%_)
                   (_%key?116434%_ _%key116435%_))
                 _%key?116431%_
                 _%key116410%_
                 _%default116418%_)
                (&HashTable-ref _%h116429%_ _%key116410%_ _%default116418%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key116410%_ (cons _%default116418%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref113711%_
       '#f))
    (define _%checked-hash-table::HashTable::set!113713%_
      (lambda (_%self116231%_ _%key116232%_ _%value116233%_)
        (let* ((_%self116236%_ _%self116231%_)
               (_%key116245%_ _%key116232%_)
               (_%value116253%_ _%value116233%_))
          (declare (not safe))
          (let ((_%h116264%_
                 (##unchecked-structure-ref _%self116236%_ '1 '#f '#f))
                (_%key?116266%_
                 (##unchecked-structure-ref _%self116236%_ '2 '#f '#f)))
            (if ((lambda (_%key?116269%_ _%key116270%_ _%value116271%_)
                   (_%key?116269%_ _%key116270%_))
                 _%key?116266%_
                 _%key116245%_
                 _%value116253%_)
                (&HashTable-set! _%h116264%_ _%key116245%_ _%value116253%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key116245%_ (cons _%value116253%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!113713%_
       '#f))
    (define _%checked-hash-table::HashTable::update!113715%_
      (lambda (_%self116056%_ _%key116057%_ _%update116058%_ _%default116059%_)
        (let* ((_%self116062%_ _%self116056%_)
               (_%key116071%_ _%key116057%_)
               (_%update116079%_ _%update116058%_)
               (_%default116087%_ _%default116059%_))
          (declare (not safe))
          (let ((_%h116098%_
                 (##unchecked-structure-ref _%self116062%_ '1 '#f '#f))
                (_%key?116100%_
                 (##unchecked-structure-ref _%self116062%_ '2 '#f '#f)))
            (if ((lambda (_%key?116103%_
                          _%key116104%_
                          _%update116105%_
                          _%default116106%_)
                   (_%key?116103%_ _%key116104%_))
                 _%key?116100%_
                 _%key116071%_
                 _%update116079%_
                 _%default116087%_)
                (&HashTable-update!
                 _%h116098%_
                 _%key116071%_
                 _%update116079%_
                 _%default116087%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key116071%_
                         (cons _%update116079%_ (cons _%default116087%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!113715%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!113717%_
      (lambda (_%self115901%_ _%key115902%_)
        (let* ((_%self115905%_ _%self115901%_) (_%key115914%_ _%key115902%_))
          (declare (not safe))
          (let ((_%h115925%_
                 (##unchecked-structure-ref _%self115905%_ '1 '#f '#f))
                (_%key?115927%_
                 (##unchecked-structure-ref _%self115905%_ '2 '#f '#f)))
            (if ((lambda (_%key?115930%_ _%key115931%_)
                   (_%key?115930%_ _%key115931%_))
                 _%key?115927%_
                 _%key115914%_)
                (&HashTable-delete! _%h115925%_ _%key115914%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key115914%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!113717%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each113719%_
      (lambda (_%self115746%_ _%proc115747%_)
        (let* ((_%self115750%_ _%self115746%_) (_%proc115759%_ _%proc115747%_))
          (declare (not safe))
          (let ((_%h115770%_
                 (##unchecked-structure-ref _%self115750%_ '1 '#f '#f))
                (_%key?115772%_
                 (##unchecked-structure-ref _%self115750%_ '2 '#f '#f)))
            (if ((lambda (_%key?115775%_ _%proc115776%_) '#t)
                 _%key?115772%_
                 _%proc115759%_)
                (&HashTable-for-each _%h115770%_ _%proc115759%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc115759%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each113719%_
       '#f))
    (define _%checked-hash-table::HashTable::length113721%_
      (lambda (_%self115603%_)
        (let ((_%self115606%_ _%self115603%_))
          (declare (not safe))
          (let ((_%h115618%_
                 (##unchecked-structure-ref _%self115606%_ '1 '#f '#f))
                (_%key?115620%_
                 (##unchecked-structure-ref _%self115606%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h115618%_)
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
       _%checked-hash-table::HashTable::length113721%_
       '#f))
    (define _%checked-hash-table::HashTable::copy113723%_
      (lambda (_%self115460%_)
        (let ((_%self115463%_ _%self115460%_))
          (declare (not safe))
          (let ((_%h115475%_
                 (##unchecked-structure-ref _%self115463%_ '1 '#f '#f))
                (_%key?115477%_
                 (##unchecked-structure-ref _%self115463%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h115475%_)
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
       _%checked-hash-table::HashTable::copy113723%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!113725%_
      (lambda (_%self115317%_)
        (let ((_%self115320%_ _%self115317%_))
          (declare (not safe))
          (let ((_%h115332%_
                 (##unchecked-structure-ref _%self115320%_ '1 '#f '#f))
                (_%key?115334%_
                 (##unchecked-structure-ref _%self115320%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h115332%_)
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
       _%checked-hash-table::HashTable::clear!113725%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table115187%_
               _%count115188%_
               _%free115189%_
               _%hash115190%_
               _%test115191%_
               _%seed115192%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table115187%_
           _%count115188%_
           _%free115189%_
           _%hash115190%_
           _%test115191%_
           _%seed115192%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords114948%_
               _%size-hint114938114949%_
               _%seed114939114951%_
               _%test114940114953%_
               _%hash114941114955%_
               _%lock114942114957%_
               _%check114943114959%_
               _%weak-keys114944114961%_
               _%weak-values114945114963%_)
        (let* ((_%size-hint114966%_
                (if (eq? _%size-hint114938114949%_ absent-value)
                    '#f
                    _%size-hint114938114949%_))
               (_%seed114968%_
                (if (eq? _%seed114939114951%_ absent-value)
                    '#f
                    _%seed114939114951%_))
               (_%test114970%_
                (if (eq? _%test114940114953%_ absent-value)
                    equal?
                    _%test114940114953%_))
               (_%hash114972%_
                (if (eq? _%hash114941114955%_ absent-value)
                    '#f
                    _%hash114941114955%_))
               (_%lock114974%_
                (if (eq? _%lock114942114957%_ absent-value)
                    '#f
                    _%lock114942114957%_))
               (_%check114976%_
                (if (eq? _%check114943114959%_ absent-value)
                    '#f
                    _%check114943114959%_))
               (_%weak-keys114978%_
                (if (eq? _%weak-keys114944114961%_ absent-value)
                    '#f
                    _%weak-keys114944114961%_))
               (_%weak-values114980%_
                (if (eq? _%weak-values114945114963%_ absent-value)
                    '#f
                    _%weak-values114945114963%_)))
          (letrec ((_%table-seed114983%_
                    (lambda ()
                      (if (fixnum? _%seed114968%_)
                          _%seed114968%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock114984%_
                    (lambda (_%ht115161%_)
                      (let ((_%ht115164%_ _%ht115161%_))
                        (_%__wrap-lock114985%_ _%ht115164%_))))
                   (_%__wrap-lock114985%_
                    (lambda (_%ht115143%_)
                      (let ((_%ht115146%_ _%ht115143%_))
                        (if _%lock114974%_
                            (let ((_%$obj115158%_
                                   (let ((__tmp118508
                                          (let ((_%$obj115155%_
                                                 _%lock114974%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj115155%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj115155%_)))
                                                     '#t)
                                                _%$obj115155%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj115155%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht115146%_
                                      __tmp118508))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj115158%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj115158%_)))
                                       '#t)
                                  _%$obj115158%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj115158%_))))
                            _%ht115146%_))))
                   (_%wrap-checked114986%_
                    (lambda (_%ht115130%_ _%implicit115131%_)
                      (let ((_%ht115134%_ _%ht115130%_))
                        (_%__wrap-checked114987%_
                         _%ht115134%_
                         _%implicit115131%_))))
                   (_%__wrap-checked114987%_
                    (lambda (_%ht115103%_ _%implicit115104%_)
                      (let ((_%ht115107%_ _%ht115103%_))
                        (if _%check114976%_
                            (let ((_%$obj115127%_
                                   (let ((__tmp118509
                                          (if (procedure? _%check114976%_)
                                              _%check114976%_
                                              _%implicit115104%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht115107%_
                                      __tmp118509))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj115127%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj115127%_)))
                                       '#t)
                                  _%$obj115127%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj115127%_))))
                            _%ht115107%_))))
                   (_%make114988%_
                    (lambda (_%kons115087%_
                             _%key?115088%_
                             _%hash115089%_
                             _%test115090%_)
                      (let* ((_%size115093%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint114966%_)))
                             (_%table115095%_
                              (let ((__tmp118510 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size115093%_ __tmp118510)))
                             (_%ht115100%_
                              (let ((_%$obj115097%_
                                     (_%kons115087%_
                                      _%table115095%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size115093%_ '2))
                                      _%hash115089%_
                                      _%test115090%_
                                      (_%table-seed114983%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj115097%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj115097%_)))
                                         '#t)
                                    _%$obj115097%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj115097%_))))))
                        (_%__wrap-checked114987%_
                         (_%__wrap-lock114985%_ _%ht115100%_)
                         _%key?115088%_))))
                   (_%make-gc-hash-table114989%_
                    (lambda ()
                      (let ((_%ht115085%_
                             (let ((_%$obj115082%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint114966%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj115082%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj115082%_)))
                                        '#t)
                                   _%$obj115082%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj115082%_))))))
                        (_%__wrap-checked114987%_
                         (_%__wrap-lock114985%_ _%ht115085%_)
                         true))))
                   (_%make-gambit-table114990%_
                    (lambda ()
                      (let* ((_%size115059%_
                              (let ((_%$e115056%_ _%size-hint114966%_))
                                (if _%$e115056%_
                                    _%$e115056%_
                                    (macro-absent-obj))))
                             (_%test115064%_
                              (let ((_%$e115061%_ _%test114970%_))
                                (if _%$e115061%_ _%$e115061%_ equal?)))
                             (_%hash115072%_
                              (let ((_%$e115066%_ _%hash114972%_))
                                (if _%$e115066%_
                                    _%$e115066%_
                                    (if (eq? _%test115064%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test115064%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht115077%_
                              (let ((_%$obj115074%_
                                     (make-table
                                      'size:
                                      _%size115059%_
                                      'test:
                                      _%test115064%_
                                      'hash:
                                      _%hash115072%_
                                      'weak-keys:
                                      _%weak-keys114978%_
                                      'weak-values:
                                      _%weak-values114980%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj115074%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj115074%_)))
                                         '#t)
                                    _%$obj115074%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj115074%_))))))
                        (_%__wrap-checked114987%_
                         (_%__wrap-lock114985%_ _%ht115077%_)
                         true)))))
            (if (or _%weak-keys114978%_ _%weak-values114980%_)
                (_%make-gambit-table114990%_)
                (if (and (or (eq? _%test114970%_ eq?)
                             (eq? _%test114970%_ ##eq?))
                         (or (not _%hash114972%_)
                             (eq? _%hash114972%_ eq?-hash)
                             (eq? _%hash114972%_ eq-hash))
                         (not _%seed114968%_))
                    (_%make-gc-hash-table114989%_)
                    (if (and (or (eq? _%test114970%_ eq?)
                                 (eq? _%test114970%_ ##eq?))
                             (or (not _%hash114972%_)
                                 (eq? _%hash114972%_ eq?-hash)
                                 (eq? _%hash114972%_ eq-hash)))
                        (_%make114988%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test114970%_ eqv?)
                                     (eq? _%test114970%_ ##eqv?))
                                 (or (not _%hash114972%_)
                                     (eq? _%hash114972%_ eqv?-hash)
                                     (eq? _%hash114972%_ eqv-hash)))
                            (_%make114988%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test114970%_ eq?)
                                         (eq? _%test114970%_ ##eq?))
                                     (or (eq? _%hash114972%_ symbolic-hash)
                                         (eq? _%hash114972%_ ##symbol-hash)))
                                (_%make114988%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test114970%_ eq?)
                                             (eq? _%test114970%_ ##eq?))
                                         (eq? _%hash114972%_ immediate-hash))
                                    (_%make114988%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test114970%_ equal?)
                                                 (eq? _%test114970%_ ##equal?)
                                                 (eq? _%test114970%_ string=?)
                                                 (eq? _%test114970%_
                                                      ##string=?))
                                             (or (eq? _%hash114972%_
                                                      string-hash)
                                                 (eq? _%hash114972%_
                                                      ##string=?-hash)))
                                        (_%make114988%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test114970%_ equal?)
                                                 (not _%hash114972%_))
                                            (_%make114988%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test114970%_)
                                                (if (procedure? _%hash114972%_)
                                                    (_%make114988%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash114972%_
                                                     _%test114970%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash114972%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test114970%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords115177%_ . _%args115178%_)
        (apply make-hash-table__%
               _%@@keywords115177%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115177%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115177%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115177%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115177%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115177%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords115177%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords115177%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords115177%_
                  'weak-values:
                  absent-value))
               _%args115178%_)))
    (define make-hash-table
      (lambda _%args114946115184%_
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
               _%args114946115184%_)))
    (define make-hash-table-eq
      (lambda _%args114935%_
        (apply make-hash-table 'test: eq? _%args114935%_)))
    (define make-hash-table-eqv
      (lambda _%args114933%_
        (apply make-hash-table 'test: eqv? _%args114933%_)))
    (define make-hash-table-symbolic
      (lambda _%args114931%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args114931%_)))
    (define make-hash-table-string
      (lambda _%args114929%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args114929%_)))
    (define make-hash-table-immediate
      (lambda _%args114927%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args114927%_)))
    (define list->hash-table
      (lambda (_%lst114924%_ . _%args114925%_)
        (list->hash-table!
         _%lst114924%_
         (apply make-hash-table
                'size:
                (length _%lst114924%_)
                _%args114925%_))))
    (define list->hash-table-eq
      (lambda (_%lst114921%_ . _%args114922%_)
        (list->hash-table!
         _%lst114921%_
         (apply make-hash-table-eq
                'size:
                (length _%lst114921%_)
                _%args114922%_))))
    (define list->hash-table-eqv
      (lambda (_%lst114918%_ . _%args114919%_)
        (list->hash-table!
         _%lst114918%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst114918%_)
                _%args114919%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst114915%_ . _%args114916%_)
        (list->hash-table!
         _%lst114915%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst114915%_)
                _%args114916%_))))
    (define list->hash-table-string
      (lambda (_%lst114912%_ . _%args114913%_)
        (list->hash-table!
         _%lst114912%_
         (apply make-hash-table-string
                'size:
                (length _%lst114912%_)
                _%args114913%_))))
    (define list->hash-table-immediate
      (lambda (_%lst114909%_ . _%args114910%_)
        (list->hash-table!
         _%lst114909%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst114909%_)
                _%args114910%_))))
    (define list->hash-table!
      (lambda (_%lst114876%_ _%h114877%_)
        (for-each
         (lambda (_%el114879%_)
           (let* ((_%el114880114887%_ _%el114879%_)
                  (_%E114882114891%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el114880114887%_
                              '([k . v])))
                     '#!void))
                  (_%K114883114897%_
                   (lambda (_%v114894%_ _%k114895%_)
                     (&HashTable-set! _%h114877%_ _%k114895%_ _%v114894%_))))
             (if (pair? _%el114880114887%_)
                 (let ((_%hd114884114900%_
                        (let ()
                          (declare (not safe))
                          (##car _%el114880114887%_)))
                       (_%tl114885114902%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el114880114887%_))))
                   (let* ((_%k114905%_ _%hd114884114900%_)
                          (_%v114907%_ _%tl114885114902%_))
                     (_%K114883114897%_ _%v114907%_ _%k114905%_)))
                 (_%E114882114891%_))))
         _%lst114876%_)
        _%h114877%_))
    (define plist->hash-table
      (lambda (_%lst114873%_ . _%args114874%_)
        (plist->hash-table!
         _%lst114873%_
         (apply make-hash-table
                'size:
                (length _%lst114873%_)
                _%args114874%_))))
    (define plist->hash-table-eq
      (lambda (_%lst114870%_ . _%args114871%_)
        (plist->hash-table!
         _%lst114870%_
         (apply make-hash-table-eq
                'size:
                (length _%lst114870%_)
                _%args114871%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst114867%_ . _%args114868%_)
        (plist->hash-table!
         _%lst114867%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst114867%_)
                _%args114868%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst114864%_ . _%args114865%_)
        (plist->hash-table!
         _%lst114864%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst114864%_)
                _%args114865%_))))
    (define plist->hash-table-string
      (lambda (_%lst114861%_ . _%args114862%_)
        (plist->hash-table!
         _%lst114861%_
         (apply make-hash-table-string
                'size:
                (length _%lst114861%_)
                _%args114862%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst114858%_ . _%args114859%_)
        (plist->hash-table!
         _%lst114858%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst114858%_)
                _%args114859%_))))
    (define plist->hash-table!
      (lambda (_%lst114798%_ _%h114799%_)
        (let _%loop114801%_ ((_%rest114803%_ _%lst114798%_))
          (let* ((_%rest114804114816%_ _%rest114803%_)
                 (_%else114807114824%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst114798%_)))))
            (let ((_%K114810114839%_
                   (lambda (_%rest114835%_ _%val114836%_ _%key114837%_)
                     (&HashTable-set! _%h114799%_ _%key114837%_ _%val114836%_)
                     (_%loop114801%_ _%rest114835%_)))
                  (_%K114809114829%_ (lambda () _%h114799%_)))
              (let ((_%try-match114806114832%_
                     (lambda ()
                       (if (null? _%rest114804114816%_)
                           (_%K114809114829%_)
                           (_%else114807114824%_)))))
                (if (pair? _%rest114804114816%_)
                    (let ((_%tl114812114844%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest114804114816%_)))
                          (_%hd114811114842%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest114804114816%_))))
                      (if (pair? _%tl114812114844%_)
                          (let ((_%tl114814114851%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl114812114844%_)))
                                (_%hd114813114849%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl114812114844%_))))
                            (let ((_%key114847%_ _%hd114811114842%_)
                                  (_%val114854%_ _%hd114813114849%_)
                                  (_%rest114856%_ _%tl114814114851%_))
                              (_%K114810114839%_
                               _%rest114856%_
                               _%val114854%_
                               _%key114847%_)))
                          (_%else114807114824%_)))
                    (_%try-match114806114832%_))))))))
    (define hash-length
      (lambda (_%h114780%_)
        (let* ((_%h114786%_
                (let ((_%$obj114783%_ _%h114780%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114783%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114783%_)))
                           '#t)
                      _%$obj114783%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114783%_)))))
               (_%h114788%_ _%h114786%_))
          (__hash-length _%h114788%_))))
    (define __hash-length
      (lambda (_%h114768%_)
        (let ((_%h114771%_ _%h114768%_)) (__HashTable-length _%h114771%_))))
    (define hash-ref__%
      (lambda (_%h114736%_ _%key114737%_ _%default114738%_)
        (let* ((_%h114744%_
                (let ((_%$obj114741%_ _%h114736%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114741%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114741%_)))
                           '#t)
                      _%$obj114741%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114741%_)))))
               (_%h114746%_ _%h114744%_))
          (__hash-ref__% _%h114746%_ _%key114737%_ _%default114738%_))))
    (define hash-ref__0
      (lambda (_%h114759%_ _%key114760%_)
        (let ((_%default114762%_ (macro-absent-obj)))
          (hash-ref__% _%h114759%_ _%key114760%_ _%default114762%_))))
    (define hash-ref
      (lambda _g118511_
        (let ((_g118512_ (let () (declare (not safe)) (##length _g118511_))))
          (cond ((let () (declare (not safe)) (##fx= _g118512_ 2))
                 (apply hash-ref__0 _g118511_))
                ((let () (declare (not safe)) (##fx= _g118512_ 3))
                 (apply hash-ref__% _g118511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g118511_))))))
    (define __hash-ref__%
      (lambda (_%h114707%_ _%key114708%_ _%default114709%_)
        (let* ((_%h114712%_ _%h114707%_)
               (_%result114721%_
                (&HashTable-ref _%h114712%_ _%key114708%_ _%default114709%_)))
          (if (eq? _%result114721%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h114712%_
               'key:
               _%key114708%_)
              _%result114721%_))))
    (define __hash-ref__0
      (lambda (_%h114726%_ _%key114727%_)
        (let ((_%default114729%_ (macro-absent-obj)))
          (__hash-ref__% _%h114726%_ _%key114727%_ _%default114729%_))))
    (define __hash-ref
      (lambda _g118513_
        (let ((_g118514_ (let () (declare (not safe)) (##length _g118513_))))
          (cond ((let () (declare (not safe)) (##fx= _g118514_ 2))
                 (apply __hash-ref__0 _g118513_))
                ((let () (declare (not safe)) (##fx= _g118514_ 3))
                 (apply __hash-ref__% _g118513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g118513_))))))
    (define hash-get
      (lambda (_%h114687%_ _%key114688%_)
        (let* ((_%h114694%_
                (let ((_%$obj114691%_ _%h114687%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114691%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114691%_)))
                           '#t)
                      _%$obj114691%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114691%_)))))
               (_%h114696%_ _%h114694%_))
          (__hash-get _%h114696%_ _%key114688%_))))
    (define __hash-get
      (lambda (_%h114674%_ _%key114675%_)
        (let ((_%h114678%_ _%h114674%_))
          (&HashTable-ref _%h114678%_ _%key114675%_ '#f))))
    (define hash-put!
      (lambda (_%h114654%_ _%key114655%_ _%value114656%_)
        (let* ((_%h114662%_
                (let ((_%$obj114659%_ _%h114654%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114659%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114659%_)))
                           '#t)
                      _%$obj114659%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114659%_)))))
               (_%h114664%_ _%h114662%_))
          (__hash-put! _%h114664%_ _%key114655%_ _%value114656%_))))
    (define __hash-put!
      (lambda (_%h114640%_ _%key114641%_ _%value114642%_)
        (let ((_%h114645%_ _%h114640%_))
          (&HashTable-set! _%h114645%_ _%key114641%_ _%value114642%_))))
    (define hash-update!__%
      (lambda (_%h114605%_ _%key114606%_ _%update114607%_ _%default114608%_)
        (let* ((_%h114614%_
                (let ((_%$obj114611%_ _%h114605%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114611%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114611%_)))
                           '#t)
                      _%$obj114611%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114611%_)))))
               (_%h114616%_ _%h114614%_))
          (__hash-update!__%
           _%h114616%_
           _%key114606%_
           _%update114607%_
           _%default114608%_))))
    (define hash-update!__0
      (lambda (_%h114629%_ _%key114630%_ _%update114631%_)
        (let ((_%default114633%_ '#!void))
          (hash-update!__%
           _%h114629%_
           _%key114630%_
           _%update114631%_
           _%default114633%_))))
    (define hash-update!
      (lambda _g118515_
        (let ((_g118516_ (let () (declare (not safe)) (##length _g118515_))))
          (cond ((let () (declare (not safe)) (##fx= _g118516_ 3))
                 (apply hash-update!__0 _g118515_))
                ((let () (declare (not safe)) (##fx= _g118516_ 4))
                 (apply hash-update!__% _g118515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g118515_))))))
    (define __hash-update!__%
      (lambda (_%h114575%_ _%key114576%_ _%update114577%_ _%default114578%_)
        (let ((_%h114581%_ _%h114575%_))
          (HashTable-update!
           _%h114581%_
           _%key114576%_
           _%update114577%_
           _%default114578%_))))
    (define __hash-update!__0
      (lambda (_%h114593%_ _%key114594%_ _%update114595%_)
        (let ((_%default114597%_ '#!void))
          (__hash-update!__%
           _%h114593%_
           _%key114594%_
           _%update114595%_
           _%default114597%_))))
    (define __hash-update!
      (lambda _g118517_
        (let ((_g118518_ (let () (declare (not safe)) (##length _g118517_))))
          (cond ((let () (declare (not safe)) (##fx= _g118518_ 3))
                 (apply __hash-update!__0 _g118517_))
                ((let () (declare (not safe)) (##fx= _g118518_ 4))
                 (apply __hash-update!__% _g118517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g118517_))))))
    (define hash-remove!
      (lambda (_%h114555%_ _%key114556%_)
        (let* ((_%h114562%_
                (let ((_%$obj114559%_ _%h114555%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114559%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114559%_)))
                           '#t)
                      _%$obj114559%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114559%_)))))
               (_%h114564%_ _%h114562%_))
          (__hash-remove! _%h114564%_ _%key114556%_))))
    (define __hash-remove!
      (lambda (_%h114542%_ _%key114543%_)
        (let ((_%h114546%_ _%h114542%_))
          (&HashTable-delete! _%h114546%_ _%key114543%_))))
    (define hash-key?
      (lambda (_%h114523%_ _%k114524%_)
        (let* ((_%h114530%_
                (let ((_%$obj114527%_ _%h114523%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114527%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114527%_)))
                           '#t)
                      _%$obj114527%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114527%_)))))
               (_%h114532%_ _%h114530%_))
          (__hash-key? _%h114532%_ _%k114524%_))))
    (define __hash-key?
      (lambda (_%h114510%_ _%k114511%_)
        (let ((_%h114514%_ _%h114510%_))
          (not (eq? (&HashTable-ref _%h114514%_ _%k114511%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h114492%_)
        (let* ((_%h114498%_
                (let ((_%$obj114495%_ _%h114492%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114495%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114495%_)))
                           '#t)
                      _%$obj114495%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114495%_)))))
               (_%h114500%_ _%h114498%_))
          (__hash->list _%h114500%_))))
    (define __hash->list
      (lambda (_%h114475%_)
        (let* ((_%h114478%_ _%h114475%_) (_%lst114487%_ '()))
          (&HashTable-for-each
           _%h114478%_
           (lambda (_%k114489%_ _%v114490%_)
             (set! _%lst114487%_
                   (cons (cons _%k114489%_ _%v114490%_) _%lst114487%_))))
          _%lst114487%_)))
    (define hash->plist
      (lambda (_%h114457%_)
        (let* ((_%h114463%_
                (let ((_%$obj114460%_ _%h114457%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114460%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114460%_)))
                           '#t)
                      _%$obj114460%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114460%_)))))
               (_%h114465%_ _%h114463%_))
          (__hash->plist _%h114465%_))))
    (define __hash->plist
      (lambda (_%h114440%_)
        (let* ((_%h114443%_ _%h114440%_) (_%lst114452%_ '()))
          (&HashTable-for-each
           _%h114443%_
           (lambda (_%k114454%_ _%v114455%_)
             (set! _%lst114452%_
                   (cons _%k114454%_ (cons _%v114455%_ _%lst114452%_)))))
          _%lst114452%_)))
    (define hash-for-each
      (lambda (_%proc114411%_ _%h114412%_)
        (if (procedure? _%proc114411%_)
            (let* ((_%proc114416%_ _%proc114411%_)
                   (_%h114428%_
                    (let ((_%$obj114425%_ _%h114412%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114425%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114425%_)))
                               '#t)
                          _%$obj114425%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114425%_)))))
                   (_%h114430%_ _%h114428%_))
              (__hash-for-each _%proc114416%_ _%h114430%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@583.22-583.26"
               'contract:
               'procedure?
               'value:
               _%proc114411%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc114390%_ _%h114391%_)
        (let* ((_%proc114394%_ _%proc114390%_) (_%h114402%_ _%h114391%_))
          (&HashTable-for-each _%h114402%_ _%proc114394%_))))
    (define hash-map
      (lambda (_%proc114361%_ _%h114362%_)
        (if (procedure? _%proc114361%_)
            (let* ((_%proc114366%_ _%proc114361%_)
                   (_%h114378%_
                    (let ((_%$obj114375%_ _%h114362%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114375%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114375%_)))
                               '#t)
                          _%$obj114375%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114375%_)))))
                   (_%h114380%_ _%h114378%_))
              (__hash-map _%proc114366%_ _%h114380%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@586.17-586.21"
               'contract:
               'procedure?
               'value:
               _%proc114361%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc114335%_ _%h114336%_)
        (let* ((_%proc114339%_ _%proc114335%_)
               (_%h114347%_ _%h114336%_)
               (_%result114356%_ '()))
          (&HashTable-for-each
           _%h114347%_
           (lambda (_%k114358%_ _%v114359%_)
             (set! _%result114356%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc114339%_ _%k114358%_ _%v114359%_))
                         _%result114356%_))))
          _%result114356%_)))
    (define hash-fold
      (lambda (_%proc114305%_ _%iv114306%_ _%h114307%_)
        (if (procedure? _%proc114305%_)
            (let* ((_%proc114311%_ _%proc114305%_)
                   (_%h114323%_
                    (let ((_%$obj114320%_ _%h114307%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114320%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114320%_)))
                               '#t)
                          _%$obj114320%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114320%_)))))
                   (_%h114325%_ _%h114323%_))
              (__hash-fold _%proc114311%_ _%iv114306%_ _%h114325%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.18-592.22"
               'contract:
               'procedure?
               'value:
               _%proc114305%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc114278%_ _%iv114279%_ _%h114280%_)
        (let* ((_%proc114283%_ _%proc114278%_)
               (_%h114291%_ _%h114280%_)
               (_%result114300%_ _%iv114279%_))
          (&HashTable-for-each
           _%h114291%_
           (lambda (_%k114302%_ _%v114303%_)
             (set! _%result114300%_
                   (let ()
                     (declare (not safe))
                     (_%proc114283%_
                      _%k114302%_
                      _%v114303%_
                      _%result114300%_)))))
          _%result114300%_)))
    (define hash-find__%
      (lambda (_%proc114236%_ _%h114237%_ _%default-value114238%_)
        (if (procedure? _%proc114236%_)
            (let* ((_%proc114242%_ _%proc114236%_)
                   (_%h114254%_
                    (let ((_%$obj114251%_ _%h114237%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114251%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114251%_)))
                               '#t)
                          _%$obj114251%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114251%_)))))
                   (_%h114256%_ _%h114254%_))
              (__hash-find__%
               _%proc114242%_
               _%h114256%_
               _%default-value114238%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@597.18-597.22"
               'contract:
               'procedure?
               'value:
               _%proc114236%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc114269%_ _%h114270%_)
        (let ((_%default-value114272%_ '#f))
          (hash-find__% _%proc114269%_ _%h114270%_ _%default-value114272%_))))
    (define hash-find
      (lambda _g118519_
        (let ((_g118520_ (let () (declare (not safe)) (##length _g118519_))))
          (cond ((let () (declare (not safe)) (##fx= _g118520_ 2))
                 (apply hash-find__0 _g118519_))
                ((let () (declare (not safe)) (##fx= _g118520_ 3))
                 (apply hash-find__% _g118519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g118519_))))))
    (define __hash-find__%
      (lambda (_%proc114193%_ _%h114194%_ _%default-value114195%_)
        (let* ((_%proc114198%_ _%proc114193%_)
               (_%h114206%_ _%h114194%_)
               (__tmp118521
                (lambda (_%return114215%_)
                  (&HashTable-for-each
                   _%h114206%_
                   (lambda (_%k114217%_ _%v114218%_)
                     (let ((_%$e114220%_
                            (let ()
                              (declare (not safe))
                              (_%proc114198%_ _%k114217%_ _%v114218%_))))
                       (if _%$e114220%_
                           (_%return114215%_ _%$e114220%_)
                           '#!void))))
                  _%default-value114195%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp118521))))
    (define __hash-find__0
      (lambda (_%proc114226%_ _%h114227%_)
        (let ((_%default-value114229%_ '#f))
          (__hash-find__%
           _%proc114226%_
           _%h114227%_
           _%default-value114229%_))))
    (define __hash-find
      (lambda _g118522_
        (let ((_g118523_ (let () (declare (not safe)) (##length _g118522_))))
          (cond ((let () (declare (not safe)) (##fx= _g118523_ 2))
                 (apply __hash-find__0 _g118522_))
                ((let () (declare (not safe)) (##fx= _g118523_ 3))
                 (apply __hash-find__% _g118522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g118522_))))))
    (define hash-keys
      (lambda (_%h114174%_)
        (let* ((_%h114180%_
                (let ((_%$obj114177%_ _%h114174%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114177%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114177%_)))
                           '#t)
                      _%$obj114177%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114177%_)))))
               (_%h114182%_ _%h114180%_))
          (__hash-keys _%h114182%_))))
    (define __hash-keys
      (lambda (_%h114157%_)
        (let* ((_%h114160%_ _%h114157%_) (_%result114169%_ '()))
          (&HashTable-for-each
           _%h114160%_
           (lambda (_%k114171%_ _%v114172%_)
             (set! _%result114169%_ (cons _%k114171%_ _%result114169%_))))
          _%result114169%_)))
    (define hash-values
      (lambda (_%h114139%_)
        (let* ((_%h114145%_
                (let ((_%$obj114142%_ _%h114139%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114142%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114142%_)))
                           '#t)
                      _%$obj114142%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114142%_)))))
               (_%h114147%_ _%h114145%_))
          (__hash-values _%h114147%_))))
    (define __hash-values
      (lambda (_%h114122%_)
        (let* ((_%h114125%_ _%h114122%_) (_%result114134%_ '()))
          (&HashTable-for-each
           _%h114125%_
           (lambda (_%k114136%_ _%v114137%_)
             (set! _%result114134%_ (cons _%v114137%_ _%result114134%_))))
          _%result114134%_)))
    (define hash-copy
      (lambda (_%h114104%_)
        (let* ((_%h114110%_
                (let ((_%$obj114107%_ _%h114104%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114107%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114107%_)))
                           '#t)
                      _%$obj114107%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114107%_)))))
               (_%h114112%_ _%h114110%_))
          (__hash-copy _%h114112%_))))
    (define __hash-copy
      (lambda (_%h114092%_)
        (let ((_%h114095%_ _%h114092%_)) (__HashTable-copy _%h114095%_))))
    (define hash-clear!
      (lambda (_%h114074%_)
        (let* ((_%h114080%_
                (let ((_%$obj114077%_ _%h114074%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114077%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114077%_)))
                           '#t)
                      _%$obj114077%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114077%_)))))
               (_%h114082%_ _%h114080%_))
          (__hash-clear! _%h114082%_))))
    (define __hash-clear!
      (lambda (_%h114062%_)
        (let ((_%h114065%_ _%h114062%_)) (&HashTable-clear! _%h114065%_))))
    (define hash-merge
      (lambda (_%h114043%_ . _%rest114044%_)
        (let* ((_%h114050%_
                (let ((_%$obj114047%_ _%h114043%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114047%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114047%_)))
                           '#t)
                      _%$obj114047%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114047%_)))))
               (_%h114052%_ _%h114050%_))
          (declare (not safe))
          (##apply __hash-merge _%h114052%_ _%rest114044%_))))
    (define __hash-merge
      (lambda (_%h114028%_ . _%rest114029%_)
        (let* ((_%h114032%_ _%h114028%_)
               (_%copy114041%_ (__HashTable-copy _%h114032%_)))
          (apply hash-merge! _%copy114041%_ _%rest114029%_)
          _%copy114041%_)))
    (define hash-merge-right
      (lambda (_%h114009%_ . _%rest114010%_)
        (let* ((_%h114016%_
                (let ((_%$obj114013%_ _%h114009%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114013%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114013%_)))
                           '#t)
                      _%$obj114013%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114013%_)))))
               (_%h114018%_ _%h114016%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h114018%_ _%rest114010%_))))
    (define __hash-merge-right
      (lambda (_%h113994%_ . _%rest113995%_)
        (let* ((_%h113998%_ _%h113994%_)
               (_%copy114007%_ (__HashTable-copy _%h113998%_)))
          (apply hash-merge-right! _%copy114007%_ _%rest113995%_)
          _%copy114007%_)))
    (define hash-merge!
      (lambda (_%h113975%_ . _%rest113976%_)
        (let* ((_%h113982%_
                (let ((_%$obj113979%_ _%h113975%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113979%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113979%_)))
                           '#t)
                      _%$obj113979%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113979%_)))))
               (_%h113984%_ _%h113982%_))
          (declare (not safe))
          (##apply __hash-merge! _%h113984%_ _%rest113976%_))))
    (define __hash-merge!
      (lambda (_%h113938%_ . _%rest113939%_)
        (let ((_%h113942%_ _%h113938%_))
          (let ((__tmp118524
                 (lambda (_%hr113951%_)
                   (let* ((_%hr113957%_
                           (let ((_%$obj113954%_ _%hr113951%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj113954%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj113954%_)))
                                      '#t)
                                 _%$obj113954%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj113954%_)))))
                          (_%hr113959%_ _%hr113957%_))
                     (&HashTable-for-each
                      _%hr113959%_
                      (lambda (_%k113972%_ _%v113973%_)
                        (if (__hash-key? _%h113942%_ _%k113972%_)
                            '#!void
                            (&HashTable-set!
                             _%h113942%_
                             _%k113972%_
                             _%v113973%_))))))))
            (declare (not safe))
            (##for-each __tmp118524 _%rest113939%_))
          _%h113942%_)))
    (define hash-merge-right!
      (lambda (_%h113919%_ . _%rest113920%_)
        (let* ((_%h113926%_
                (let ((_%$obj113923%_ _%h113919%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113923%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113923%_)))
                           '#t)
                      _%$obj113923%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113923%_)))))
               (_%h113928%_ _%h113926%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h113928%_ _%rest113920%_))))
    (define __hash-merge-right!
      (lambda (_%h113882%_ . _%rest113883%_)
        (let ((_%h113886%_ _%h113882%_))
          (let ((__tmp118525
                 (lambda (_%hr113895%_)
                   (let* ((_%hr113901%_
                           (let ((_%$obj113898%_ _%hr113895%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj113898%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj113898%_)))
                                      '#t)
                                 _%$obj113898%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj113898%_)))))
                          (_%hr113903%_ _%hr113901%_))
                     (&HashTable-for-each
                      _%hr113903%_
                      (lambda (_%k113916%_ _%v113917%_)
                        (&HashTable-set!
                         _%h113886%_
                         _%k113916%_
                         _%v113917%_)))))))
            (declare (not safe))
            (##for-each __tmp118525 _%rest113883%_))
          _%h113886%_)))))
