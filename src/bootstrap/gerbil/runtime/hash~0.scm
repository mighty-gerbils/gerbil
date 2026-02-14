(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1771037607)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp170071 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp170071
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args168813%_
        (apply make-instance UnboundKeyError::t _%$args168813%_)))
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
      (lambda (_%where168687%_ _%message168688%_ . _%irritants168689%_)
        (let ((__tmp170072
               (let ((__obj170063
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj170063
                    _%message168688%_
                    'where:
                    _%where168687%_
                    'irritants:
                    _%irritants168689%_))
                 __obj170063)))
          (declare (not safe))
          (raise __tmp170072))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp170073 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp170073
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj170065
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170065
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj170065))
    (define make-HashTable
      (lambda (_%obj168685%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj168685%_))))
    (define try-HashTable
      (lambda (_%obj168683%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj168683%_))))
    (define HashTable?
      (lambda (_%obj168681%_)
        (let ((__tmp170074
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168681%_ __tmp170074))))
    (define is-HashTable?
      (lambda (_%obj168678%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj168678%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self153668153912%_)
        (let ((_%self153668153914%_ _%self153668153912%_))
          (declare (not safe))
          (let ((_%object153921153926%_
                 (##unchecked-structure-ref
                  _%self153668153914%_
                  '1
                  '#f
                  'clear!))
                (_%method153922153927%_
                 (##unchecked-structure-ref
                  _%self153668153914%_
                  '2
                  '#f
                  'clear!)))
            (_%method153922153927%_ _%object153921153926%_)))))
    (define ::HashTable-clear!
      (lambda (_%self153669153929%_)
        (let* ((_%self153669153934%_
                (let ((_%$obj153931%_ _%self153669153929%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153931%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153931%_)))
                           '#t)
                      _%$obj153931%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153931%_)))))
               (_%self153669153936%_ _%self153669153934%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153944153949%_
                       (##unchecked-structure-ref
                        _%self153669153936%_
                        '1
                        '#f
                        'clear!))
                      (_%method153945153950%_
                       (##unchecked-structure-ref
                        _%self153669153936%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153945153950%_ _%object153944153949%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153951153956%_
                       (##unchecked-structure-ref
                        _%self153669153936%_
                        '1
                        '#f
                        'clear!))
                      (_%method153952153957%_
                       (##unchecked-structure-ref
                        _%self153669153936%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153952153957%_ _%object153951153956%_)))))))
    (define __HashTable-copy
      (lambda (_%self153960154203%_)
        (let ((_%self153960154205%_ _%self153960154203%_))
          (declare (not safe))
          (let ((_%object154212154217%_
                 (##unchecked-structure-ref _%self153960154205%_ '1 '#f 'copy))
                (_%method154213154218%_
                 (##unchecked-structure-ref
                  _%self153960154205%_
                  '3
                  '#f
                  'copy)))
            (_%method154213154218%_ _%object154212154217%_)))))
    (define ::HashTable-copy
      (lambda (_%self153961154220%_)
        (let* ((_%self153961154225%_
                (let ((_%$obj154222%_ _%self153961154220%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154222%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154222%_)))
                           '#t)
                      _%$obj154222%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154222%_)))))
               (_%self153961154227%_ _%self153961154225%_))
          (if __DEBUG
              (let ((_%$obj154243%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object154235154240%_
                              (##unchecked-structure-ref
                               _%self153961154227%_
                               '1
                               '#f
                               'copy))
                             (_%method154236154241%_
                              (##unchecked-structure-ref
                               _%self153961154227%_
                               '3
                               '#f
                               'copy)))
                         (_%method154236154241%_ _%object154235154240%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj154243%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj154243%_)))
                         '#t)
                    _%$obj154243%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj154243%_))))
              (let ()
                (declare (not safe))
                (let ((_%object154245154250%_
                       (##unchecked-structure-ref
                        _%self153961154227%_
                        '1
                        '#f
                        'copy))
                      (_%method154246154251%_
                       (##unchecked-structure-ref
                        _%self153961154227%_
                        '3
                        '#f
                        'copy)))
                  (_%method154246154251%_ _%object154245154250%_)))))))
    (define __HashTable-delete!
      (lambda (_%self154254154497%_ _%key154498%_)
        (let ((_%self154254154500%_ _%self154254154497%_))
          (declare (not safe))
          (let ((_%object154507154512%_
                 (##unchecked-structure-ref
                  _%self154254154500%_
                  '1
                  '#f
                  'delete!))
                (_%method154508154513%_
                 (##unchecked-structure-ref
                  _%self154254154500%_
                  '4
                  '#f
                  'delete!)))
            (_%method154508154513%_ _%object154507154512%_ _%key154498%_)))))
    (define ::HashTable-delete!
      (lambda (_%self154255154515%_ _%key154516%_)
        (let* ((_%self154255154521%_
                (let ((_%$obj154518%_ _%self154255154515%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154518%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154518%_)))
                           '#t)
                      _%$obj154518%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154518%_)))))
               (_%self154255154523%_ _%self154255154521%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154531154536%_
                       (##unchecked-structure-ref
                        _%self154255154523%_
                        '1
                        '#f
                        'delete!))
                      (_%method154532154537%_
                       (##unchecked-structure-ref
                        _%self154255154523%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154532154537%_
                   _%object154531154536%_
                   _%key154516%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154538154543%_
                       (##unchecked-structure-ref
                        _%self154255154523%_
                        '1
                        '#f
                        'delete!))
                      (_%method154539154544%_
                       (##unchecked-structure-ref
                        _%self154255154523%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154539154544%_
                   _%object154538154543%_
                   _%key154516%_)))))))
    (define __HashTable-for-each
      (lambda (_%self154547154790%_ _%proc154791%_)
        (let* ((_%self154547154793%_ _%self154547154790%_)
               (_%proc154800%_ _%proc154791%_))
          (declare (not safe))
          (let ((_%object154808154813%_
                 (##unchecked-structure-ref
                  _%self154547154793%_
                  '1
                  '#f
                  'for-each))
                (_%method154809154814%_
                 (##unchecked-structure-ref
                  _%self154547154793%_
                  '5
                  '#f
                  'for-each)))
            (_%method154809154814%_ _%object154808154813%_ _%proc154800%_)))))
    (define ::HashTable-for-each
      (lambda (_%self154548154816%_ _%proc154817%_)
        (let* ((_%self154548154822%_
                (let ((_%$obj154819%_ _%self154548154816%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154819%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154819%_)))
                           '#t)
                      _%$obj154819%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154819%_)))))
               (_%self154548154824%_ _%self154548154822%_))
          (if (procedure? _%proc154817%_)
              (let ((_%proc154833%_ _%proc154817%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object154842154847%_
                             (##unchecked-structure-ref
                              _%self154548154824%_
                              '1
                              '#f
                              'for-each))
                            (_%method154843154848%_
                             (##unchecked-structure-ref
                              _%self154548154824%_
                              '5
                              '#f
                              'for-each)))
                        (_%method154843154848%_
                         _%object154842154847%_
                         _%proc154833%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object154849154854%_
                             (##unchecked-structure-ref
                              _%self154548154824%_
                              '1
                              '#f
                              'for-each))
                            (_%method154850154855%_
                             (##unchecked-structure-ref
                              _%self154548154824%_
                              '5
                              '#f
                              'for-each)))
                        (_%method154850154855%_
                         _%object154849154854%_
                         _%proc154833%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc154817%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self154858155101%_)
        (let ((_%self154858155103%_ _%self154858155101%_))
          (declare (not safe))
          (let ((_%object155110155115%_
                 (##unchecked-structure-ref
                  _%self154858155103%_
                  '1
                  '#f
                  'length))
                (_%method155111155116%_
                 (##unchecked-structure-ref
                  _%self154858155103%_
                  '6
                  '#f
                  'length)))
            (_%method155111155116%_ _%object155110155115%_)))))
    (define ::HashTable-length
      (lambda (_%self154859155118%_)
        (let* ((_%self154859155123%_
                (let ((_%$obj155120%_ _%self154859155118%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155120%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155120%_)))
                           '#t)
                      _%$obj155120%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155120%_)))))
               (_%self154859155125%_ _%self154859155123%_))
          (if __DEBUG
              (let ((_%val155141%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object155133155138%_
                              (##unchecked-structure-ref
                               _%self154859155125%_
                               '1
                               '#f
                               'length))
                             (_%method155134155139%_
                              (##unchecked-structure-ref
                               _%self154859155125%_
                               '6
                               '#f
                               'length)))
                         (_%method155134155139%_ _%object155133155138%_)))))
                (if (fixnum? _%val155141%_)
                    _%val155141%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val155141%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object155143155148%_
                       (##unchecked-structure-ref
                        _%self154859155125%_
                        '1
                        '#f
                        'length))
                      (_%method155144155149%_
                       (##unchecked-structure-ref
                        _%self154859155125%_
                        '6
                        '#f
                        'length)))
                  (_%method155144155149%_ _%object155143155148%_)))))))
    (define __HashTable-ref
      (lambda (_%self155152155395%_ _%key155396%_ _%default155397%_)
        (let ((_%self155152155399%_ _%self155152155395%_))
          (declare (not safe))
          (let ((_%object155406155411%_
                 (##unchecked-structure-ref _%self155152155399%_ '1 '#f 'ref))
                (_%method155407155412%_
                 (##unchecked-structure-ref _%self155152155399%_ '7 '#f 'ref)))
            (_%method155407155412%_
             _%object155406155411%_
             _%key155396%_
             _%default155397%_)))))
    (define ::HashTable-ref
      (lambda (_%self155153155414%_ _%key155415%_ _%default155416%_)
        (let* ((_%self155153155421%_
                (let ((_%$obj155418%_ _%self155153155414%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155418%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155418%_)))
                           '#t)
                      _%$obj155418%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155418%_)))))
               (_%self155153155423%_ _%self155153155421%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object155431155436%_
                       (##unchecked-structure-ref
                        _%self155153155423%_
                        '1
                        '#f
                        'ref))
                      (_%method155432155437%_
                       (##unchecked-structure-ref
                        _%self155153155423%_
                        '7
                        '#f
                        'ref)))
                  (_%method155432155437%_
                   _%object155431155436%_
                   _%key155415%_
                   _%default155416%_)))
              (let ()
                (declare (not safe))
                (let ((_%object155438155443%_
                       (##unchecked-structure-ref
                        _%self155153155423%_
                        '1
                        '#f
                        'ref))
                      (_%method155439155444%_
                       (##unchecked-structure-ref
                        _%self155153155423%_
                        '7
                        '#f
                        'ref)))
                  (_%method155439155444%_
                   _%object155438155443%_
                   _%key155415%_
                   _%default155416%_)))))))
    (define __HashTable-set!
      (lambda (_%self155447155690%_ _%key155691%_ _%value155692%_)
        (let ((_%self155447155694%_ _%self155447155690%_))
          (declare (not safe))
          (let ((_%object155701155706%_
                 (##unchecked-structure-ref _%self155447155694%_ '1 '#f 'set!))
                (_%method155702155707%_
                 (##unchecked-structure-ref
                  _%self155447155694%_
                  '8
                  '#f
                  'set!)))
            (_%method155702155707%_
             _%object155701155706%_
             _%key155691%_
             _%value155692%_)))))
    (define ::HashTable-set!
      (lambda (_%self155448155709%_ _%key155710%_ _%value155711%_)
        (let* ((_%self155448155716%_
                (let ((_%$obj155713%_ _%self155448155709%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155713%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155713%_)))
                           '#t)
                      _%$obj155713%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155713%_)))))
               (_%self155448155718%_ _%self155448155716%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object155726155731%_
                       (##unchecked-structure-ref
                        _%self155448155718%_
                        '1
                        '#f
                        'set!))
                      (_%method155727155732%_
                       (##unchecked-structure-ref
                        _%self155448155718%_
                        '8
                        '#f
                        'set!)))
                  (_%method155727155732%_
                   _%object155726155731%_
                   _%key155710%_
                   _%value155711%_)))
              (let ()
                (declare (not safe))
                (let ((_%object155733155738%_
                       (##unchecked-structure-ref
                        _%self155448155718%_
                        '1
                        '#f
                        'set!))
                      (_%method155734155739%_
                       (##unchecked-structure-ref
                        _%self155448155718%_
                        '8
                        '#f
                        'set!)))
                  (_%method155734155739%_
                   _%object155733155738%_
                   _%key155710%_
                   _%value155711%_)))))))
    (define __HashTable-update!
      (lambda (_%self155742155985%_
               _%key155986%_
               _%proc155987%_
               _%default155988%_)
        (let* ((_%self155742155990%_ _%self155742155985%_)
               (_%proc155997%_ _%proc155987%_))
          (declare (not safe))
          (let ((_%object156005156010%_
                 (##unchecked-structure-ref
                  _%self155742155990%_
                  '1
                  '#f
                  'update!))
                (_%method156006156011%_
                 (##unchecked-structure-ref
                  _%self155742155990%_
                  '9
                  '#f
                  'update!)))
            (_%method156006156011%_
             _%object156005156010%_
             _%key155986%_
             _%proc155997%_
             _%default155988%_)))))
    (define ::HashTable-update!
      (lambda (_%self155743156013%_
               _%key156014%_
               _%proc156015%_
               _%default156016%_)
        (let* ((_%self155743156021%_
                (let ((_%$obj156018%_ _%self155743156013%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156018%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156018%_)))
                           '#t)
                      _%$obj156018%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156018%_)))))
               (_%self155743156023%_ _%self155743156021%_))
          (if (procedure? _%proc156015%_)
              (let ((_%proc156032%_ _%proc156015%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object156041156046%_
                             (##unchecked-structure-ref
                              _%self155743156023%_
                              '1
                              '#f
                              'update!))
                            (_%method156042156047%_
                             (##unchecked-structure-ref
                              _%self155743156023%_
                              '9
                              '#f
                              'update!)))
                        (_%method156042156047%_
                         _%object156041156046%_
                         _%key156014%_
                         _%proc156032%_
                         _%default156016%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object156048156053%_
                             (##unchecked-structure-ref
                              _%self155743156023%_
                              '1
                              '#f
                              'update!))
                            (_%method156049156054%_
                             (##unchecked-structure-ref
                              _%self155743156023%_
                              '9
                              '#f
                              'update!)))
                        (_%method156049156054%_
                         _%object156048156053%_
                         _%key156014%_
                         _%proc156032%_
                         _%default156016%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc156015%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp170075 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp170075
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj170067
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170067
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj170067))
    (define make-Locker
      (lambda (_%obj168676%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj168676%_))))
    (define try-Locker
      (lambda (_%obj168674%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj168674%_))))
    (define Locker?
      (lambda (_%obj168672%_)
        (let ((__tmp170076
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168672%_ __tmp170076))))
    (define is-Locker?
      (lambda (_%obj168669%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj168669%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self156057156300%_)
        (let ((_%self156057156302%_ _%self156057156300%_))
          (declare (not safe))
          (let ((_%object156309156314%_
                 (##unchecked-structure-ref
                  _%self156057156302%_
                  '1
                  '#f
                  'read-lock!))
                (_%method156310156315%_
                 (##unchecked-structure-ref
                  _%self156057156302%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method156310156315%_ _%object156309156314%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self156058156317%_)
        (let* ((_%self156058156322%_
                (let ((_%$obj156319%_ _%self156058156317%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156319%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156319%_)))
                           '#t)
                      _%$obj156319%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj156319%_)))))
               (_%self156058156324%_ _%self156058156322%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156332156337%_
                       (##unchecked-structure-ref
                        _%self156058156324%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method156333156338%_
                       (##unchecked-structure-ref
                        _%self156058156324%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method156333156338%_ _%object156332156337%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156339156344%_
                       (##unchecked-structure-ref
                        _%self156058156324%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method156340156345%_
                       (##unchecked-structure-ref
                        _%self156058156324%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method156340156345%_ _%object156339156344%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self156348156591%_)
        (let ((_%self156348156593%_ _%self156348156591%_))
          (declare (not safe))
          (let ((_%object156600156605%_
                 (##unchecked-structure-ref
                  _%self156348156593%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method156601156606%_
                 (##unchecked-structure-ref
                  _%self156348156593%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method156601156606%_ _%object156600156605%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self156349156608%_)
        (let* ((_%self156349156613%_
                (let ((_%$obj156610%_ _%self156349156608%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156610%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156610%_)))
                           '#t)
                      _%$obj156610%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj156610%_)))))
               (_%self156349156615%_ _%self156349156613%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156623156628%_
                       (##unchecked-structure-ref
                        _%self156349156615%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method156624156629%_
                       (##unchecked-structure-ref
                        _%self156349156615%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method156624156629%_ _%object156623156628%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156630156635%_
                       (##unchecked-structure-ref
                        _%self156349156615%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method156631156636%_
                       (##unchecked-structure-ref
                        _%self156349156615%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method156631156636%_ _%object156630156635%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self156639156882%_)
        (let ((_%self156639156884%_ _%self156639156882%_))
          (declare (not safe))
          (let ((_%object156891156896%_
                 (##unchecked-structure-ref
                  _%self156639156884%_
                  '1
                  '#f
                  'write-lock!))
                (_%method156892156897%_
                 (##unchecked-structure-ref
                  _%self156639156884%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method156892156897%_ _%object156891156896%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self156640156899%_)
        (let* ((_%self156640156904%_
                (let ((_%$obj156901%_ _%self156640156899%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156901%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156901%_)))
                           '#t)
                      _%$obj156901%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj156901%_)))))
               (_%self156640156906%_ _%self156640156904%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156914156919%_
                       (##unchecked-structure-ref
                        _%self156640156906%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method156915156920%_
                       (##unchecked-structure-ref
                        _%self156640156906%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method156915156920%_ _%object156914156919%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156921156926%_
                       (##unchecked-structure-ref
                        _%self156640156906%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method156922156927%_
                       (##unchecked-structure-ref
                        _%self156640156906%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method156922156927%_ _%object156921156926%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self156930157173%_)
        (let ((_%self156930157175%_ _%self156930157173%_))
          (declare (not safe))
          (let ((_%object157182157187%_
                 (##unchecked-structure-ref
                  _%self156930157175%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method157183157188%_
                 (##unchecked-structure-ref
                  _%self156930157175%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method157183157188%_ _%object157182157187%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self156931157190%_)
        (let* ((_%self156931157195%_
                (let ((_%$obj157192%_ _%self156931157190%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157192%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157192%_)))
                           '#t)
                      _%$obj157192%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj157192%_)))))
               (_%self156931157197%_ _%self156931157195%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object157205157210%_
                       (##unchecked-structure-ref
                        _%self156931157197%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method157206157211%_
                       (##unchecked-structure-ref
                        _%self156931157197%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method157206157211%_ _%object157205157210%_)))
              (let ()
                (declare (not safe))
                (let ((_%object157212157217%_
                       (##unchecked-structure-ref
                        _%self156931157197%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method157213157218%_
                       (##unchecked-structure-ref
                        _%self156931157197%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method157213157218%_ _%object157212157217%_)))))))
    (let* ((_%klass168632%_ __table::t)
           (_%id168635%_ 'HashTable::ref)
           (_%proc168638%_ raw-table-ref)
           (_%rebind?168641%_ '#f)
           (_%id168646%_ _%id168635%_)
           (_%proc168659%_ _%proc168638%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168632%_
       _%id168646%_
       _%proc168659%_
       _%rebind?168641%_))
    (let* ((_%klass168595%_ __table::t)
           (_%id168598%_ 'HashTable::set!)
           (_%proc168601%_ raw-table-set!)
           (_%rebind?168604%_ '#f)
           (_%id168609%_ _%id168598%_)
           (_%proc168622%_ _%proc168601%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168595%_
       _%id168609%_
       _%proc168622%_
       _%rebind?168604%_))
    (let* ((_%klass168558%_ __table::t)
           (_%id168561%_ 'HashTable::update!)
           (_%proc168564%_ raw-table-update!)
           (_%rebind?168567%_ '#f)
           (_%id168572%_ _%id168561%_)
           (_%proc168585%_ _%proc168564%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168558%_
       _%id168572%_
       _%proc168585%_
       _%rebind?168567%_))
    (let* ((_%klass168521%_ __table::t)
           (_%id168524%_ 'HashTable::delete!)
           (_%proc168527%_ raw-table-delete!)
           (_%rebind?168530%_ '#f)
           (_%id168535%_ _%id168524%_)
           (_%proc168548%_ _%proc168527%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168521%_
       _%id168535%_
       _%proc168548%_
       _%rebind?168530%_))
    (let* ((_%klass168484%_ __table::t)
           (_%id168487%_ 'HashTable::for-each)
           (_%proc168490%_ raw-table-for-each)
           (_%rebind?168493%_ '#f)
           (_%id168498%_ _%id168487%_)
           (_%proc168511%_ _%proc168490%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168484%_
       _%id168498%_
       _%proc168511%_
       _%rebind?168493%_))
    (let* ((_%klass168447%_ __table::t)
           (_%id168450%_ 'HashTable::length)
           (_%proc168453%_ &raw-table-count)
           (_%rebind?168456%_ '#f)
           (_%id168461%_ _%id168450%_)
           (_%proc168474%_ _%proc168453%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168447%_
       _%id168461%_
       _%proc168474%_
       _%rebind?168456%_))
    (let* ((_%klass168410%_ __table::t)
           (_%id168413%_ 'HashTable::copy)
           (_%proc168416%_ raw-table-copy)
           (_%rebind?168419%_ '#f)
           (_%id168424%_ _%id168413%_)
           (_%proc168437%_ _%proc168416%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168410%_
       _%id168424%_
       _%proc168437%_
       _%rebind?168419%_))
    (let* ((_%klass168373%_ __table::t)
           (_%id168376%_ 'HashTable::clear!)
           (_%proc168379%_ raw-table-clear!)
           (_%rebind?168382%_ '#f)
           (_%id168387%_ _%id168376%_)
           (_%proc168400%_ _%proc168379%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168373%_
       _%id168387%_
       _%proc168400%_
       _%rebind?168382%_))
    (let* ((_%klass168336%_ __gc-table::t)
           (_%id168339%_ 'HashTable::ref)
           (_%proc168342%_ gc-table-ref)
           (_%rebind?168345%_ '#f)
           (_%id168350%_ _%id168339%_)
           (_%proc168363%_ _%proc168342%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168336%_
       _%id168350%_
       _%proc168363%_
       _%rebind?168345%_))
    (let* ((_%klass168299%_ __gc-table::t)
           (_%id168302%_ 'HashTable::set!)
           (_%proc168305%_ gc-table-set!)
           (_%rebind?168308%_ '#f)
           (_%id168313%_ _%id168302%_)
           (_%proc168326%_ _%proc168305%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168299%_
       _%id168313%_
       _%proc168326%_
       _%rebind?168308%_))
    (let* ((_%klass168262%_ __gc-table::t)
           (_%id168265%_ 'HashTable::update!)
           (_%proc168268%_ gc-table-update!)
           (_%rebind?168271%_ '#f)
           (_%id168276%_ _%id168265%_)
           (_%proc168289%_ _%proc168268%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168262%_
       _%id168276%_
       _%proc168289%_
       _%rebind?168271%_))
    (let* ((_%klass168225%_ __gc-table::t)
           (_%id168228%_ 'HashTable::delete!)
           (_%proc168231%_ gc-table-delete!)
           (_%rebind?168234%_ '#f)
           (_%id168239%_ _%id168228%_)
           (_%proc168252%_ _%proc168231%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168225%_
       _%id168239%_
       _%proc168252%_
       _%rebind?168234%_))
    (let* ((_%klass168188%_ __gc-table::t)
           (_%id168191%_ 'HashTable::for-each)
           (_%proc168194%_ gc-table-for-each)
           (_%rebind?168197%_ '#f)
           (_%id168202%_ _%id168191%_)
           (_%proc168215%_ _%proc168194%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168188%_
       _%id168202%_
       _%proc168215%_
       _%rebind?168197%_))
    (let* ((_%klass168151%_ __gc-table::t)
           (_%id168154%_ 'HashTable::length)
           (_%proc168157%_ gc-table-length)
           (_%rebind?168160%_ '#f)
           (_%id168165%_ _%id168154%_)
           (_%proc168178%_ _%proc168157%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168151%_
       _%id168165%_
       _%proc168178%_
       _%rebind?168160%_))
    (let* ((_%klass168114%_ __gc-table::t)
           (_%id168117%_ 'HashTable::copy)
           (_%proc168120%_ gc-table-copy)
           (_%rebind?168123%_ '#f)
           (_%id168128%_ _%id168117%_)
           (_%proc168141%_ _%proc168120%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168114%_
       _%id168128%_
       _%proc168141%_
       _%rebind?168123%_))
    (let* ((_%klass168077%_ __gc-table::t)
           (_%id168080%_ 'HashTable::clear!)
           (_%proc168083%_ gc-table-clear!)
           (_%rebind?168086%_ '#f)
           (_%id168091%_ _%id168080%_)
           (_%proc168104%_ _%proc168083%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168077%_
       _%id168091%_
       _%proc168104%_
       _%rebind?168086%_))
    (define gambit-table-update!
      (lambda (_%table168070%_
               _%key168071%_
               _%update168072%_
               _%default168073%_)
        (let ((_%result168075%_
               (table-ref _%table168070%_ _%key168071%_ _%default168073%_)))
          (table-set!
           _%table168070%_
           _%key168071%_
           (_%update168072%_ _%default168073%_)))))
    (define gambit-table-for-each
      (lambda (_%table168067%_ _%proc168068%_)
        (table-for-each _%proc168068%_ _%table168067%_)))
    (define gambit-table-clear!
      (lambda (_%table168065%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table168065%_ '0 '5 '#f '#f))))
    (let* ((_%klass168028%_ (macro-type-table))
           (_%id168031%_ 'HashTable::ref)
           (_%proc168034%_ table-ref)
           (_%rebind?168037%_ '#f)
           (_%id168042%_ _%id168031%_)
           (_%proc168055%_ _%proc168034%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168028%_
       _%id168042%_
       _%proc168055%_
       _%rebind?168037%_))
    (let* ((_%klass167991%_ (macro-type-table))
           (_%id167994%_ 'HashTable::set!)
           (_%proc167997%_ table-set!)
           (_%rebind?168000%_ '#f)
           (_%id168005%_ _%id167994%_)
           (_%proc168018%_ _%proc167997%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167991%_
       _%id168005%_
       _%proc168018%_
       _%rebind?168000%_))
    (let* ((_%klass167954%_ (macro-type-table))
           (_%id167957%_ 'HashTable::update!)
           (_%proc167960%_ gambit-table-update!)
           (_%rebind?167963%_ '#f)
           (_%id167968%_ _%id167957%_)
           (_%proc167981%_ _%proc167960%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167954%_
       _%id167968%_
       _%proc167981%_
       _%rebind?167963%_))
    (let* ((_%klass167917%_ (macro-type-table))
           (_%id167920%_ 'HashTable::delete!)
           (_%proc167923%_ table-set!)
           (_%rebind?167926%_ '#f)
           (_%id167931%_ _%id167920%_)
           (_%proc167944%_ _%proc167923%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167917%_
       _%id167931%_
       _%proc167944%_
       _%rebind?167926%_))
    (let* ((_%klass167880%_ (macro-type-table))
           (_%id167883%_ 'HashTable::for-each)
           (_%proc167886%_ gambit-table-for-each)
           (_%rebind?167889%_ '#f)
           (_%id167894%_ _%id167883%_)
           (_%proc167907%_ _%proc167886%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167880%_
       _%id167894%_
       _%proc167907%_
       _%rebind?167889%_))
    (let* ((_%klass167843%_ (macro-type-table))
           (_%id167846%_ 'HashTable::length)
           (_%proc167849%_ table-length)
           (_%rebind?167852%_ '#f)
           (_%id167857%_ _%id167846%_)
           (_%proc167870%_ _%proc167849%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167843%_
       _%id167857%_
       _%proc167870%_
       _%rebind?167852%_))
    (let* ((_%klass167806%_ (macro-type-table))
           (_%id167809%_ 'HashTable::copy)
           (_%proc167812%_ table-copy)
           (_%rebind?167815%_ '#f)
           (_%id167820%_ _%id167809%_)
           (_%proc167833%_ _%proc167812%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167806%_
       _%id167820%_
       _%proc167833%_
       _%rebind?167815%_))
    (let* ((_%klass167769%_ (macro-type-table))
           (_%id167772%_ 'HashTable::clear!)
           (_%proc167775%_ gambit-table-clear!)
           (_%rebind?167778%_ '#f)
           (_%id167783%_ _%id167772%_)
           (_%proc167796%_ _%proc167775%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167769%_
       _%id167783%_
       _%proc167796%_
       _%rebind?167778%_))
    (define hash-table::t
      (let* ((_%slots167732%_ '(table count free hash test seed))
             (_%slot-vector167734%_ (list->vector (cons '#f _%slots167732%_)))
             (_%slot-table167760%_
              (let ((_%slot-table167736%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170079
                       (lambda (_%slot167738%_ _%field167739%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table167736%_
                            _%slot167738%_
                            _%field167739%_))
                         (let ((__tmp170080
                                (let ((_%sym167741%_ _%slot167738%_))
                                  (if (symbol? _%sym167741%_)
                                      (let ((_%sym167746%_ _%sym167741%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym167746%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym167741%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table167736%_
                            __tmp170080
                            _%field167739%_))))
                      (__tmp170077
                       (let ((__tmp170078
                              (let ()
                                (declare (not safe))
                                (##length _%slots167732%_))))
                         (declare (not safe))
                         (##iota __tmp170078 '1))))
                  (declare (not safe))
                  (##for-each __tmp170079 _%slots167732%_ __tmp170077))
                _%slot-table167736%_))
             (_%flags167762%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields167764%_ '#())
             (_%properties167766%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots167732%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp170081 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags167762%_
         __table::t
         _%fields167764%_
         __tmp170081
         _%slot-vector167734%_
         _%slot-table167760%_
         _%properties167766%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots167695%_ '(gcht immediate))
             (_%slot-vector167697%_ (list->vector (cons '#f _%slots167695%_)))
             (_%slot-table167723%_
              (let ((_%slot-table167699%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170084
                       (lambda (_%slot167701%_ _%field167702%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table167699%_
                            _%slot167701%_
                            _%field167702%_))
                         (let ((__tmp170085
                                (let ((_%sym167704%_ _%slot167701%_))
                                  (if (symbol? _%sym167704%_)
                                      (let ((_%sym167709%_ _%sym167704%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym167709%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym167704%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table167699%_
                            __tmp170085
                            _%field167702%_))))
                      (__tmp170082
                       (let ((__tmp170083
                              (let ()
                                (declare (not safe))
                                (##length _%slots167695%_))))
                         (declare (not safe))
                         (##iota __tmp170083 '1))))
                  (declare (not safe))
                  (##for-each __tmp170084 _%slots167695%_ __tmp170082))
                _%slot-table167699%_))
             (_%flags167725%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields167727%_ '#())
             (_%properties167729%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots167695%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp170086 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags167725%_
         __gc-table::t
         _%fields167727%_
         __tmp170086
         _%slot-vector167697%_
         _%slot-table167723%_
         _%properties167729%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp170088 (list))
            (__tmp170087
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp170088
         '(table lock)
         __tmp170087
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args167692%_
        (apply make-instance locked-hash-table::t _%$args167692%_)))
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
      (let ((__tmp170090 (list))
            (__tmp170089
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp170090
         '(table key-check)
         __tmp170089
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args167689%_
        (apply make-instance checked-hash-table::t _%$args167689%_)))
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
      (let ((__tmp170092 (list hash-table::t))
            (__tmp170091 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp170092
         '()
         __tmp170091
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args167686%_
        (apply make-instance eq-hash-table::t _%$args167686%_)))
    (define eqv-hash-table::t
      (let ((__tmp170094 (list hash-table::t))
            (__tmp170093 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp170094
         '()
         __tmp170093
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args167683%_
        (apply make-instance eqv-hash-table::t _%$args167683%_)))
    (define symbol-hash-table::t
      (let ((__tmp170096 (list hash-table::t))
            (__tmp170095 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp170096
         '()
         __tmp170095
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args167680%_
        (apply make-instance symbol-hash-table::t _%$args167680%_)))
    (define string-hash-table::t
      (let ((__tmp170098 (list hash-table::t))
            (__tmp170097 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp170098
         '()
         __tmp170097
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args167677%_
        (apply make-instance string-hash-table::t _%$args167677%_)))
    (define immediate-hash-table::t
      (let ((__tmp170100 (list hash-table::t))
            (__tmp170099 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp170100
         '()
         __tmp170099
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args167674%_
        (apply make-instance immediate-hash-table::t _%$args167674%_)))
    (let* ((_%klass167637%_ hash-table::t)
           (_%id167640%_ 'HashTable::ref)
           (_%proc167643%_ raw-table-ref)
           (_%rebind?167646%_ '#f)
           (_%id167651%_ _%id167640%_)
           (_%proc167664%_ _%proc167643%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167637%_
       _%id167651%_
       _%proc167664%_
       _%rebind?167646%_))
    (let* ((_%klass167600%_ hash-table::t)
           (_%id167603%_ 'HashTable::set!)
           (_%proc167606%_ raw-table-set!)
           (_%rebind?167609%_ '#f)
           (_%id167614%_ _%id167603%_)
           (_%proc167627%_ _%proc167606%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167600%_
       _%id167614%_
       _%proc167627%_
       _%rebind?167609%_))
    (let* ((_%klass167563%_ hash-table::t)
           (_%id167566%_ 'HashTable::update!)
           (_%proc167569%_ raw-table-update!)
           (_%rebind?167572%_ '#f)
           (_%id167577%_ _%id167566%_)
           (_%proc167590%_ _%proc167569%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167563%_
       _%id167577%_
       _%proc167590%_
       _%rebind?167572%_))
    (let* ((_%klass167526%_ hash-table::t)
           (_%id167529%_ 'HashTable::delete!)
           (_%proc167532%_ raw-table-delete!)
           (_%rebind?167535%_ '#f)
           (_%id167540%_ _%id167529%_)
           (_%proc167553%_ _%proc167532%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167526%_
       _%id167540%_
       _%proc167553%_
       _%rebind?167535%_))
    (let* ((_%klass167489%_ hash-table::t)
           (_%id167492%_ 'HashTable::for-each)
           (_%proc167495%_ raw-table-for-each)
           (_%rebind?167498%_ '#f)
           (_%id167503%_ _%id167492%_)
           (_%proc167516%_ _%proc167495%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167489%_
       _%id167503%_
       _%proc167516%_
       _%rebind?167498%_))
    (let* ((_%klass167452%_ hash-table::t)
           (_%id167455%_ 'HashTable::length)
           (_%proc167458%_ &raw-table-count)
           (_%rebind?167461%_ '#f)
           (_%id167466%_ _%id167455%_)
           (_%proc167479%_ _%proc167458%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167452%_
       _%id167466%_
       _%proc167479%_
       _%rebind?167461%_))
    (let* ((_%klass167415%_ hash-table::t)
           (_%id167418%_ 'HashTable::copy)
           (_%proc167421%_ raw-table-copy)
           (_%rebind?167424%_ '#f)
           (_%id167429%_ _%id167418%_)
           (_%proc167442%_ _%proc167421%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167415%_
       _%id167429%_
       _%proc167442%_
       _%rebind?167424%_))
    (let* ((_%klass167378%_ hash-table::t)
           (_%id167381%_ 'HashTable::clear!)
           (_%proc167384%_ raw-table-clear!)
           (_%rebind?167387%_ '#f)
           (_%id167392%_ _%id167381%_)
           (_%proc167405%_ _%proc167384%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167378%_
       _%id167392%_
       _%proc167405%_
       _%rebind?167387%_))
    (let* ((_%klass167341%_ eq-hash-table::t)
           (_%id167344%_ 'HashTable::ref)
           (_%proc167347%_ eq-table-ref)
           (_%rebind?167350%_ '#f)
           (_%id167355%_ _%id167344%_)
           (_%proc167368%_ _%proc167347%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167341%_
       _%id167355%_
       _%proc167368%_
       _%rebind?167350%_))
    (let* ((_%klass167304%_ eq-hash-table::t)
           (_%id167307%_ 'HashTable::set!)
           (_%proc167310%_ eq-table-set!)
           (_%rebind?167313%_ '#f)
           (_%id167318%_ _%id167307%_)
           (_%proc167331%_ _%proc167310%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167304%_
       _%id167318%_
       _%proc167331%_
       _%rebind?167313%_))
    (let* ((_%klass167267%_ eq-hash-table::t)
           (_%id167270%_ 'HashTable::update!)
           (_%proc167273%_ eq-table-update!)
           (_%rebind?167276%_ '#f)
           (_%id167281%_ _%id167270%_)
           (_%proc167294%_ _%proc167273%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167267%_
       _%id167281%_
       _%proc167294%_
       _%rebind?167276%_))
    (let* ((_%klass167230%_ eq-hash-table::t)
           (_%id167233%_ 'HashTable::delete!)
           (_%proc167236%_ eq-table-delete!)
           (_%rebind?167239%_ '#f)
           (_%id167244%_ _%id167233%_)
           (_%proc167257%_ _%proc167236%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167230%_
       _%id167244%_
       _%proc167257%_
       _%rebind?167239%_))
    (let* ((_%klass167193%_ eqv-hash-table::t)
           (_%id167196%_ 'HashTable::ref)
           (_%proc167199%_ eqv-table-ref)
           (_%rebind?167202%_ '#f)
           (_%id167207%_ _%id167196%_)
           (_%proc167220%_ _%proc167199%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167193%_
       _%id167207%_
       _%proc167220%_
       _%rebind?167202%_))
    (let* ((_%klass167156%_ eqv-hash-table::t)
           (_%id167159%_ 'HashTable::set!)
           (_%proc167162%_ eqv-table-set!)
           (_%rebind?167165%_ '#f)
           (_%id167170%_ _%id167159%_)
           (_%proc167183%_ _%proc167162%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167156%_
       _%id167170%_
       _%proc167183%_
       _%rebind?167165%_))
    (let* ((_%klass167119%_ eqv-hash-table::t)
           (_%id167122%_ 'HashTable::update!)
           (_%proc167125%_ eqv-table-update!)
           (_%rebind?167128%_ '#f)
           (_%id167133%_ _%id167122%_)
           (_%proc167146%_ _%proc167125%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167119%_
       _%id167133%_
       _%proc167146%_
       _%rebind?167128%_))
    (let* ((_%klass167082%_ eqv-hash-table::t)
           (_%id167085%_ 'HashTable::delete!)
           (_%proc167088%_ eqv-table-delete!)
           (_%rebind?167091%_ '#f)
           (_%id167096%_ _%id167085%_)
           (_%proc167109%_ _%proc167088%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167082%_
       _%id167096%_
       _%proc167109%_
       _%rebind?167091%_))
    (let* ((_%klass167045%_ symbol-hash-table::t)
           (_%id167048%_ 'HashTable::ref)
           (_%proc167051%_ symbolic-table-ref)
           (_%rebind?167054%_ '#f)
           (_%id167059%_ _%id167048%_)
           (_%proc167072%_ _%proc167051%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167045%_
       _%id167059%_
       _%proc167072%_
       _%rebind?167054%_))
    (let* ((_%klass167008%_ symbol-hash-table::t)
           (_%id167011%_ 'HashTable::set!)
           (_%proc167014%_ symbolic-table-set!)
           (_%rebind?167017%_ '#f)
           (_%id167022%_ _%id167011%_)
           (_%proc167035%_ _%proc167014%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167008%_
       _%id167022%_
       _%proc167035%_
       _%rebind?167017%_))
    (let* ((_%klass166971%_ symbol-hash-table::t)
           (_%id166974%_ 'HashTable::update!)
           (_%proc166977%_ symbolic-table-update!)
           (_%rebind?166980%_ '#f)
           (_%id166985%_ _%id166974%_)
           (_%proc166998%_ _%proc166977%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166971%_
       _%id166985%_
       _%proc166998%_
       _%rebind?166980%_))
    (let* ((_%klass166934%_ symbol-hash-table::t)
           (_%id166937%_ 'HashTable::delete!)
           (_%proc166940%_ symbolic-table-delete!)
           (_%rebind?166943%_ '#f)
           (_%id166948%_ _%id166937%_)
           (_%proc166961%_ _%proc166940%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166934%_
       _%id166948%_
       _%proc166961%_
       _%rebind?166943%_))
    (let* ((_%klass166897%_ string-hash-table::t)
           (_%id166900%_ 'HashTable::ref)
           (_%proc166903%_ string-table-ref)
           (_%rebind?166906%_ '#f)
           (_%id166911%_ _%id166900%_)
           (_%proc166924%_ _%proc166903%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166897%_
       _%id166911%_
       _%proc166924%_
       _%rebind?166906%_))
    (let* ((_%klass166860%_ string-hash-table::t)
           (_%id166863%_ 'HashTable::set!)
           (_%proc166866%_ string-table-set!)
           (_%rebind?166869%_ '#f)
           (_%id166874%_ _%id166863%_)
           (_%proc166887%_ _%proc166866%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166860%_
       _%id166874%_
       _%proc166887%_
       _%rebind?166869%_))
    (let* ((_%klass166823%_ string-hash-table::t)
           (_%id166826%_ 'HashTable::update!)
           (_%proc166829%_ string-table-update!)
           (_%rebind?166832%_ '#f)
           (_%id166837%_ _%id166826%_)
           (_%proc166850%_ _%proc166829%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166823%_
       _%id166837%_
       _%proc166850%_
       _%rebind?166832%_))
    (let* ((_%klass166786%_ string-hash-table::t)
           (_%id166789%_ 'HashTable::delete!)
           (_%proc166792%_ string-table-delete!)
           (_%rebind?166795%_ '#f)
           (_%id166800%_ _%id166789%_)
           (_%proc166813%_ _%proc166792%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166786%_
       _%id166800%_
       _%proc166813%_
       _%rebind?166795%_))
    (let* ((_%klass166749%_ immediate-hash-table::t)
           (_%id166752%_ 'HashTable::ref)
           (_%proc166755%_ immediate-table-ref)
           (_%rebind?166758%_ '#f)
           (_%id166763%_ _%id166752%_)
           (_%proc166776%_ _%proc166755%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166749%_
       _%id166763%_
       _%proc166776%_
       _%rebind?166758%_))
    (let* ((_%klass166712%_ immediate-hash-table::t)
           (_%id166715%_ 'HashTable::set!)
           (_%proc166718%_ immediate-table-set!)
           (_%rebind?166721%_ '#f)
           (_%id166726%_ _%id166715%_)
           (_%proc166739%_ _%proc166718%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166712%_
       _%id166726%_
       _%proc166739%_
       _%rebind?166721%_))
    (let* ((_%klass166675%_ immediate-hash-table::t)
           (_%id166678%_ 'HashTable::update!)
           (_%proc166681%_ immediate-table-update!)
           (_%rebind?166684%_ '#f)
           (_%id166689%_ _%id166678%_)
           (_%proc166702%_ _%proc166681%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166675%_
       _%id166689%_
       _%proc166702%_
       _%rebind?166684%_))
    (let* ((_%klass166638%_ immediate-hash-table::t)
           (_%id166641%_ 'HashTable::delete!)
           (_%proc166644%_ immediate-table-delete!)
           (_%rebind?166647%_ '#f)
           (_%id166652%_ _%id166641%_)
           (_%proc166665%_ _%proc166644%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166638%_
       _%id166652%_
       _%proc166665%_
       _%rebind?166647%_))
    (let* ((_%klass166601%_ gc-hash-table::t)
           (_%id166604%_ 'HashTable::ref)
           (_%proc166607%_ gc-table-ref)
           (_%rebind?166610%_ '#f)
           (_%id166615%_ _%id166604%_)
           (_%proc166628%_ _%proc166607%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166601%_
       _%id166615%_
       _%proc166628%_
       _%rebind?166610%_))
    (let* ((_%klass166564%_ gc-hash-table::t)
           (_%id166567%_ 'HashTable::set!)
           (_%proc166570%_ gc-table-set!)
           (_%rebind?166573%_ '#f)
           (_%id166578%_ _%id166567%_)
           (_%proc166591%_ _%proc166570%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166564%_
       _%id166578%_
       _%proc166591%_
       _%rebind?166573%_))
    (let* ((_%klass166527%_ gc-hash-table::t)
           (_%id166530%_ 'HashTable::update!)
           (_%proc166533%_ gc-table-update!)
           (_%rebind?166536%_ '#f)
           (_%id166541%_ _%id166530%_)
           (_%proc166554%_ _%proc166533%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166527%_
       _%id166541%_
       _%proc166554%_
       _%rebind?166536%_))
    (let* ((_%klass166490%_ gc-hash-table::t)
           (_%id166493%_ 'HashTable::delete!)
           (_%proc166496%_ gc-table-delete!)
           (_%rebind?166499%_ '#f)
           (_%id166504%_ _%id166493%_)
           (_%proc166517%_ _%proc166496%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166490%_
       _%id166504%_
       _%proc166517%_
       _%rebind?166499%_))
    (let* ((_%klass166453%_ gc-hash-table::t)
           (_%id166456%_ 'HashTable::for-each)
           (_%proc166459%_ gc-table-for-each)
           (_%rebind?166462%_ '#f)
           (_%id166467%_ _%id166456%_)
           (_%proc166480%_ _%proc166459%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166453%_
       _%id166467%_
       _%proc166480%_
       _%rebind?166462%_))
    (let* ((_%klass166416%_ gc-hash-table::t)
           (_%id166419%_ 'HashTable::length)
           (_%proc166422%_ gc-table-length)
           (_%rebind?166425%_ '#f)
           (_%id166430%_ _%id166419%_)
           (_%proc166443%_ _%proc166422%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166416%_
       _%id166430%_
       _%proc166443%_
       _%rebind?166425%_))
    (let* ((_%klass166379%_ gc-hash-table::t)
           (_%id166382%_ 'HashTable::copy)
           (_%proc166385%_ gc-table-copy)
           (_%rebind?166388%_ '#f)
           (_%id166393%_ _%id166382%_)
           (_%proc166406%_ _%proc166385%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166379%_
       _%id166393%_
       _%proc166406%_
       _%rebind?166388%_))
    (let* ((_%klass166342%_ gc-hash-table::t)
           (_%id166345%_ 'HashTable::clear!)
           (_%proc166348%_ gc-table-clear!)
           (_%rebind?166351%_ '#f)
           (_%id166356%_ _%id166345%_)
           (_%proc166369%_ _%proc166348%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166342%_
       _%id166356%_
       _%proc166369%_
       _%rebind?166351%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref157603%_
      (lambda (_%self166263%_ _%key166265%_ _%default166266%_)
        (let* ((_%self166269%_ _%self166263%_)
               (_%key166278%_ _%key166265%_)
               (_%default166286%_ _%default166266%_))
          (let ((_%h166295%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166269%_ '1 '#f '#f)))
                (_%l166297%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166269%_ '2 '#f '#f))))
            (let ((__tmp170103
                   (lambda ()
                     (let ((_%self156055166301%_ _%l166297%_))
                       (declare (not safe))
                       (let ((_%object166304166309%_
                              (##unchecked-structure-ref
                               _%self156055166301%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method166305166310%_
                              (##unchecked-structure-ref
                               _%self156055166301%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method166305166310%_ _%object166304166309%_)))))
                  (__tmp170102
                   (lambda ()
                     (let* ((_%self155150166313%_ _%h166295%_)
                            (_%key166316%_ _%key166278%_)
                            (_%default166319%_ _%default166286%_))
                       (declare (not safe))
                       (let ((_%object166322166327%_
                              (##unchecked-structure-ref
                               _%self155150166313%_
                               '1
                               '#f
                               'ref))
                             (_%method166323166328%_
                              (##unchecked-structure-ref
                               _%self155150166313%_
                               '7
                               '#f
                               'ref)))
                         (_%method166323166328%_
                          _%object166322166327%_
                          _%key166316%_
                          _%default166319%_)))))
                  (__tmp170101
                   (lambda ()
                     (let ((_%self156346166331%_ _%l166297%_))
                       (declare (not safe))
                       (let ((_%object166334166339%_
                              (##unchecked-structure-ref
                               _%self156346166331%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method166335166340%_
                              (##unchecked-structure-ref
                               _%self156346166331%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method166335166340%_ _%object166334166339%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170103 __tmp170102 __tmp170101))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref157603%_
       '#f))
    (define _%locked-hash-table::HashTable::set!157605%_
      (lambda (_%self166061%_ _%key166063%_ _%value166064%_)
        (let* ((_%self166067%_ _%self166061%_)
               (_%key166076%_ _%key166063%_)
               (_%value166084%_ _%value166064%_))
          (let ((_%h166093%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166067%_ '1 '#f '#f)))
                (_%l166095%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166067%_ '2 '#f '#f))))
            (let ((__tmp170106
                   (lambda ()
                     (let ((_%self156637166099%_ _%l166095%_))
                       (declare (not safe))
                       (let ((_%object166102166107%_
                              (##unchecked-structure-ref
                               _%self156637166099%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method166103166108%_
                              (##unchecked-structure-ref
                               _%self156637166099%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method166103166108%_ _%object166102166107%_)))))
                  (__tmp170105
                   (lambda ()
                     (let* ((_%self155445166111%_ _%h166093%_)
                            (_%key166114%_ _%key166076%_)
                            (_%value166117%_ _%value166084%_))
                       (declare (not safe))
                       (let ((_%object166120166125%_
                              (##unchecked-structure-ref
                               _%self155445166111%_
                               '1
                               '#f
                               'set!))
                             (_%method166121166126%_
                              (##unchecked-structure-ref
                               _%self155445166111%_
                               '8
                               '#f
                               'set!)))
                         (_%method166121166126%_
                          _%object166120166125%_
                          _%key166114%_
                          _%value166117%_)))))
                  (__tmp170104
                   (lambda ()
                     (let ((_%self156928166129%_ _%l166095%_))
                       (declare (not safe))
                       (let ((_%object166132166137%_
                              (##unchecked-structure-ref
                               _%self156928166129%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method166133166138%_
                              (##unchecked-structure-ref
                               _%self156928166129%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method166133166138%_ _%object166132166137%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170106 __tmp170105 __tmp170104))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!157605%_
       '#f))
    (define _%locked-hash-table::HashTable::update!157607%_
      (lambda (_%self165847%_ _%key165849%_ _%update165850%_ _%default165851%_)
        (let* ((_%self165854%_ _%self165847%_)
               (_%key165863%_ _%key165849%_)
               (_%update165871%_ _%update165850%_)
               (_%default165879%_ _%default165851%_))
          (let ((_%h165888%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165854%_ '1 '#f '#f)))
                (_%l165890%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165854%_ '2 '#f '#f))))
            (let ((__tmp170109
                   (lambda ()
                     (let ((_%self156637165894%_ _%l165890%_))
                       (declare (not safe))
                       (let ((_%object165897165902%_
                              (##unchecked-structure-ref
                               _%self156637165894%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165898165903%_
                              (##unchecked-structure-ref
                               _%self156637165894%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165898165903%_ _%object165897165902%_)))))
                  (__tmp170108
                   (lambda ()
                     (let* ((_%self155740165906%_ _%h165888%_)
                            (_%key165909%_ _%key165863%_)
                            (_%proc165912%_ _%update165871%_)
                            (_%default165915%_ _%default165879%_))
                       (declare (not safe))
                       (let ((_%object165918165923%_
                              (##unchecked-structure-ref
                               _%self155740165906%_
                               '1
                               '#f
                               'update!))
                             (_%method165919165924%_
                              (##unchecked-structure-ref
                               _%self155740165906%_
                               '9
                               '#f
                               'update!)))
                         (_%method165919165924%_
                          _%object165918165923%_
                          _%key165909%_
                          _%proc165912%_
                          _%default165915%_)))))
                  (__tmp170107
                   (lambda ()
                     (let ((_%self156928165927%_ _%l165890%_))
                       (declare (not safe))
                       (let ((_%object165930165935%_
                              (##unchecked-structure-ref
                               _%self156928165927%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165931165936%_
                              (##unchecked-structure-ref
                               _%self156928165927%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165931165936%_ _%object165930165935%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170109 __tmp170108 __tmp170107))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!157607%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!157609%_
      (lambda (_%self165657%_ _%key165659%_)
        (let* ((_%self165662%_ _%self165657%_) (_%key165671%_ _%key165659%_))
          (let ((_%h165680%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165662%_ '1 '#f '#f)))
                (_%l165682%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165662%_ '2 '#f '#f))))
            (let ((__tmp170112
                   (lambda ()
                     (let ((_%self156637165686%_ _%l165682%_))
                       (declare (not safe))
                       (let ((_%object165689165694%_
                              (##unchecked-structure-ref
                               _%self156637165686%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165690165695%_
                              (##unchecked-structure-ref
                               _%self156637165686%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165690165695%_ _%object165689165694%_)))))
                  (__tmp170111
                   (lambda ()
                     (let* ((_%self154252165698%_ _%h165680%_)
                            (_%key165701%_ _%key165671%_))
                       (declare (not safe))
                       (let ((_%object165704165709%_
                              (##unchecked-structure-ref
                               _%self154252165698%_
                               '1
                               '#f
                               'delete!))
                             (_%method165705165710%_
                              (##unchecked-structure-ref
                               _%self154252165698%_
                               '4
                               '#f
                               'delete!)))
                         (_%method165705165710%_
                          _%object165704165709%_
                          _%key165701%_)))))
                  (__tmp170110
                   (lambda ()
                     (let ((_%self156928165713%_ _%l165682%_))
                       (declare (not safe))
                       (let ((_%object165716165721%_
                              (##unchecked-structure-ref
                               _%self156928165713%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165717165722%_
                              (##unchecked-structure-ref
                               _%self156928165713%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165717165722%_ _%object165716165721%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170112 __tmp170111 __tmp170110))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!157609%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each157611%_
      (lambda (_%self165467%_ _%proc165469%_)
        (let* ((_%self165472%_ _%self165467%_) (_%proc165481%_ _%proc165469%_))
          (let ((_%h165490%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165472%_ '1 '#f '#f)))
                (_%l165492%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165472%_ '2 '#f '#f))))
            (let ((__tmp170115
                   (lambda ()
                     (let ((_%self156055165496%_ _%l165492%_))
                       (declare (not safe))
                       (let ((_%object165499165504%_
                              (##unchecked-structure-ref
                               _%self156055165496%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method165500165505%_
                              (##unchecked-structure-ref
                               _%self156055165496%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method165500165505%_ _%object165499165504%_)))))
                  (__tmp170114
                   (lambda ()
                     (let* ((_%self154545165508%_ _%h165490%_)
                            (_%proc165511%_ _%proc165481%_))
                       (declare (not safe))
                       (let ((_%object165514165519%_
                              (##unchecked-structure-ref
                               _%self154545165508%_
                               '1
                               '#f
                               'for-each))
                             (_%method165515165520%_
                              (##unchecked-structure-ref
                               _%self154545165508%_
                               '5
                               '#f
                               'for-each)))
                         (_%method165515165520%_
                          _%object165514165519%_
                          _%proc165511%_)))))
                  (__tmp170113
                   (lambda ()
                     (let ((_%self156346165523%_ _%l165492%_))
                       (declare (not safe))
                       (let ((_%object165526165531%_
                              (##unchecked-structure-ref
                               _%self156346165523%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method165527165532%_
                              (##unchecked-structure-ref
                               _%self156346165523%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method165527165532%_ _%object165526165531%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170115 __tmp170114 __tmp170113))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each157611%_
       '#f))
    (define _%locked-hash-table::HashTable::length157613%_
      (lambda (_%self165282%_)
        (let ((_%self165286%_ _%self165282%_))
          (let ((_%h165296%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165286%_ '1 '#f '#f)))
                (_%l165298%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165286%_ '2 '#f '#f))))
            ((lambda (_%g165300165302%_)
               (let ((_%val165305%_ _%g165300165302%_))
                 (if (fixnum? _%val165305%_)
                     _%val165305%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val165305%_)
                       '#!void))))
             (let ((__tmp170118
                    (lambda ()
                      (let ((_%self156055165309%_ _%l165298%_))
                        (declare (not safe))
                        (let ((_%object165312165317%_
                               (##unchecked-structure-ref
                                _%self156055165309%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method165313165318%_
                               (##unchecked-structure-ref
                                _%self156055165309%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method165313165318%_ _%object165312165317%_)))))
                   (__tmp170117
                    (lambda ()
                      (let ((_%self154856165321%_ _%h165296%_))
                        (declare (not safe))
                        (let ((_%object165324165329%_
                               (##unchecked-structure-ref
                                _%self154856165321%_
                                '1
                                '#f
                                'length))
                              (_%method165325165330%_
                               (##unchecked-structure-ref
                                _%self154856165321%_
                                '6
                                '#f
                                'length)))
                          (_%method165325165330%_ _%object165324165329%_)))))
                   (__tmp170116
                    (lambda ()
                      (let ((_%self156346165333%_ _%l165298%_))
                        (declare (not safe))
                        (let ((_%object165336165341%_
                               (##unchecked-structure-ref
                                _%self156346165333%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method165337165342%_
                               (##unchecked-structure-ref
                                _%self156346165333%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method165337165342%_ _%object165336165341%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp170118 __tmp170117 __tmp170116)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length157613%_
       '#f))
    (define _%locked-hash-table::HashTable::copy157615%_
      (lambda (_%self165101%_)
        (let ((_%self165105%_ _%self165101%_))
          (let ((_%h165115%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165105%_ '1 '#f '#f)))
                (_%l165117%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165105%_ '2 '#f '#f))))
            (let ((_%$obj165156%_
                   (let ((__tmp170121
                          (lambda ()
                            (let ((_%self156055165121%_ _%l165117%_))
                              (declare (not safe))
                              (let ((_%object165124165129%_
                                     (##unchecked-structure-ref
                                      _%self156055165121%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method165125165130%_
                                     (##unchecked-structure-ref
                                      _%self156055165121%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method165125165130%_
                                 _%object165124165129%_)))))
                         (__tmp170120
                          (lambda ()
                            (let ((_%self153958165133%_ _%h165115%_))
                              (declare (not safe))
                              (let ((_%object165136165141%_
                                     (##unchecked-structure-ref
                                      _%self153958165133%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method165137165142%_
                                     (##unchecked-structure-ref
                                      _%self153958165133%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method165137165142%_
                                 _%object165136165141%_)))))
                         (__tmp170119
                          (lambda ()
                            (let ((_%self156346165145%_ _%l165117%_))
                              (declare (not safe))
                              (let ((_%object165148165153%_
                                     (##unchecked-structure-ref
                                      _%self156346165145%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method165149165154%_
                                     (##unchecked-structure-ref
                                      _%self156346165145%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method165149165154%_
                                 _%object165148165153%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp170121 __tmp170120 __tmp170119))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj165156%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj165156%_)))
                       '#t)
                  _%$obj165156%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj165156%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy157615%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!157617%_
      (lambda (_%self164923%_)
        (let ((_%self164927%_ _%self164923%_))
          (let ((_%h164937%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164927%_ '1 '#f '#f)))
                (_%l164939%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164927%_ '2 '#f '#f))))
            (let ((__tmp170124
                   (lambda ()
                     (let ((_%self156637164943%_ _%l164939%_))
                       (declare (not safe))
                       (let ((_%object164946164951%_
                              (##unchecked-structure-ref
                               _%self156637164943%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164947164952%_
                              (##unchecked-structure-ref
                               _%self156637164943%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164947164952%_ _%object164946164951%_)))))
                  (__tmp170123
                   (lambda ()
                     (let ((_%self153666164955%_ _%h164937%_))
                       (declare (not safe))
                       (let ((_%object164958164963%_
                              (##unchecked-structure-ref
                               _%self153666164955%_
                               '1
                               '#f
                               'clear!))
                             (_%method164959164964%_
                              (##unchecked-structure-ref
                               _%self153666164955%_
                               '2
                               '#f
                               'clear!)))
                         (_%method164959164964%_ _%object164958164963%_)))))
                  (__tmp170122
                   (lambda ()
                     (let ((_%self156928164967%_ _%l164939%_))
                       (declare (not safe))
                       (let ((_%object164970164975%_
                              (##unchecked-structure-ref
                               _%self156928164967%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method164971164976%_
                              (##unchecked-structure-ref
                               _%self156928164967%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method164971164976%_ _%object164970164975%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170124 __tmp170123 __tmp170122))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!157617%_
       '#f))
    (let* ((_%klass164763%_ (macro-type-mutex))
           (_%id164766%_ 'Locker::read-lock!)
           (_%proc164769%_ mutex-lock!)
           (_%rebind?164772%_ '#f)
           (_%id164777%_ _%id164766%_)
           (_%proc164790%_ _%proc164769%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164763%_
       _%id164777%_
       _%proc164790%_
       _%rebind?164772%_))
    (let* ((_%klass164726%_ (macro-type-mutex))
           (_%id164729%_ 'Locker::read-unlock!)
           (_%proc164732%_ mutex-unlock!)
           (_%rebind?164735%_ '#f)
           (_%id164740%_ _%id164729%_)
           (_%proc164753%_ _%proc164732%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164726%_
       _%id164740%_
       _%proc164753%_
       _%rebind?164735%_))
    (let* ((_%klass164689%_ (macro-type-mutex))
           (_%id164692%_ 'Locker::write-lock!)
           (_%proc164695%_ mutex-lock!)
           (_%rebind?164698%_ '#f)
           (_%id164703%_ _%id164692%_)
           (_%proc164716%_ _%proc164695%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164689%_
       _%id164703%_
       _%proc164716%_
       _%rebind?164698%_))
    (let* ((_%klass164652%_ (macro-type-mutex))
           (_%id164655%_ 'Locker::write-unlock!)
           (_%proc164658%_ mutex-unlock!)
           (_%rebind?164661%_ '#f)
           (_%id164666%_ _%id164655%_)
           (_%proc164679%_ _%proc164658%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164652%_
       _%id164666%_
       _%proc164679%_
       _%rebind?164661%_))
    (define _%checked-hash-table::HashTable::ref157828%_
      (lambda (_%self164593%_ _%key164594%_ _%default164595%_)
        (let* ((_%self164598%_ _%self164593%_)
               (_%key164607%_ _%key164594%_)
               (_%default164615%_ _%default164595%_))
          (declare (not safe))
          (let ((_%h164626%_
                 (##unchecked-structure-ref _%self164598%_ '1 '#f '#f))
                (_%key?164628%_
                 (##unchecked-structure-ref _%self164598%_ '2 '#f '#f)))
            (if ((lambda (_%key?164631%_ _%key164632%_ _%default164633%_)
                   (_%key?164631%_ _%key164632%_))
                 _%key?164628%_
                 _%key164607%_
                 _%default164615%_)
                (let* ((_%self155150164635%_ _%h164626%_)
                       (_%key164638%_ _%key164607%_)
                       (_%default164641%_ _%default164615%_))
                  (declare (not safe))
                  (let ((_%object164644164649%_
                         (##unchecked-structure-ref
                          _%self155150164635%_
                          '1
                          '#f
                          'ref))
                        (_%method164645164650%_
                         (##unchecked-structure-ref
                          _%self155150164635%_
                          '7
                          '#f
                          'ref)))
                    (_%method164645164650%_
                     _%object164644164649%_
                     _%key164638%_
                     _%default164641%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key164607%_ (cons _%default164615%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref157828%_
       '#f))
    (define _%checked-hash-table::HashTable::set!157830%_
      (lambda (_%self164411%_ _%key164412%_ _%value164413%_)
        (let* ((_%self164416%_ _%self164411%_)
               (_%key164425%_ _%key164412%_)
               (_%value164433%_ _%value164413%_))
          (declare (not safe))
          (let ((_%h164444%_
                 (##unchecked-structure-ref _%self164416%_ '1 '#f '#f))
                (_%key?164446%_
                 (##unchecked-structure-ref _%self164416%_ '2 '#f '#f)))
            (if ((lambda (_%key?164449%_ _%key164450%_ _%value164451%_)
                   (_%key?164449%_ _%key164450%_))
                 _%key?164446%_
                 _%key164425%_
                 _%value164433%_)
                (let* ((_%self155445164453%_ _%h164444%_)
                       (_%key164456%_ _%key164425%_)
                       (_%value164459%_ _%value164433%_))
                  (declare (not safe))
                  (let ((_%object164462164467%_
                         (##unchecked-structure-ref
                          _%self155445164453%_
                          '1
                          '#f
                          'set!))
                        (_%method164463164468%_
                         (##unchecked-structure-ref
                          _%self155445164453%_
                          '8
                          '#f
                          'set!)))
                    (_%method164463164468%_
                     _%object164462164467%_
                     _%key164456%_
                     _%value164459%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key164425%_ (cons _%value164433%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!157830%_
       '#f))
    (define _%checked-hash-table::HashTable::update!157832%_
      (lambda (_%self164216%_ _%key164217%_ _%update164218%_ _%default164219%_)
        (let* ((_%self164222%_ _%self164216%_)
               (_%key164231%_ _%key164217%_)
               (_%update164239%_ _%update164218%_)
               (_%default164247%_ _%default164219%_))
          (declare (not safe))
          (let ((_%h164258%_
                 (##unchecked-structure-ref _%self164222%_ '1 '#f '#f))
                (_%key?164260%_
                 (##unchecked-structure-ref _%self164222%_ '2 '#f '#f)))
            (if ((lambda (_%key?164263%_
                          _%key164264%_
                          _%update164265%_
                          _%default164266%_)
                   (_%key?164263%_ _%key164264%_))
                 _%key?164260%_
                 _%key164231%_
                 _%update164239%_
                 _%default164247%_)
                (let* ((_%self155740164268%_ _%h164258%_)
                       (_%key164271%_ _%key164231%_)
                       (_%proc164274%_ _%update164239%_)
                       (_%default164277%_ _%default164247%_))
                  (declare (not safe))
                  (let ((_%object164280164285%_
                         (##unchecked-structure-ref
                          _%self155740164268%_
                          '1
                          '#f
                          'update!))
                        (_%method164281164286%_
                         (##unchecked-structure-ref
                          _%self155740164268%_
                          '9
                          '#f
                          'update!)))
                    (_%method164281164286%_
                     _%object164280164285%_
                     _%key164271%_
                     _%proc164274%_
                     _%default164277%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key164231%_
                         (cons _%update164239%_ (cons _%default164247%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!157832%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!157834%_
      (lambda (_%self164047%_ _%key164048%_)
        (let* ((_%self164051%_ _%self164047%_) (_%key164060%_ _%key164048%_))
          (declare (not safe))
          (let ((_%h164071%_
                 (##unchecked-structure-ref _%self164051%_ '1 '#f '#f))
                (_%key?164073%_
                 (##unchecked-structure-ref _%self164051%_ '2 '#f '#f)))
            (if ((lambda (_%key?164076%_ _%key164077%_)
                   (_%key?164076%_ _%key164077%_))
                 _%key?164073%_
                 _%key164060%_)
                (let* ((_%self154252164079%_ _%h164071%_)
                       (_%key164082%_ _%key164060%_))
                  (declare (not safe))
                  (let ((_%object164085164090%_
                         (##unchecked-structure-ref
                          _%self154252164079%_
                          '1
                          '#f
                          'delete!))
                        (_%method164086164091%_
                         (##unchecked-structure-ref
                          _%self154252164079%_
                          '4
                          '#f
                          'delete!)))
                    (_%method164086164091%_
                     _%object164085164090%_
                     _%key164082%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key164060%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!157834%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each157836%_
      (lambda (_%self163878%_ _%proc163879%_)
        (let* ((_%self163882%_ _%self163878%_) (_%proc163891%_ _%proc163879%_))
          (declare (not safe))
          (let ((_%h163902%_
                 (##unchecked-structure-ref _%self163882%_ '1 '#f '#f))
                (_%key?163904%_
                 (##unchecked-structure-ref _%self163882%_ '2 '#f '#f)))
            (if ((lambda (_%key?163907%_ _%proc163908%_) '#t)
                 _%key?163904%_
                 _%proc163891%_)
                (let* ((_%self154545163910%_ _%h163902%_)
                       (_%proc163913%_ _%proc163891%_))
                  (declare (not safe))
                  (let ((_%object163916163921%_
                         (##unchecked-structure-ref
                          _%self154545163910%_
                          '1
                          '#f
                          'for-each))
                        (_%method163917163922%_
                         (##unchecked-structure-ref
                          _%self154545163910%_
                          '5
                          '#f
                          'for-each)))
                    (_%method163917163922%_
                     _%object163916163921%_
                     _%proc163913%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc163891%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each157836%_
       '#f))
    (define _%checked-hash-table::HashTable::length157838%_
      (lambda (_%self163724%_)
        (let ((_%self163727%_ _%self163724%_))
          (declare (not safe))
          (let ((_%h163739%_
                 (##unchecked-structure-ref _%self163727%_ '1 '#f '#f))
                (_%key?163741%_
                 (##unchecked-structure-ref _%self163727%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self154856163744%_ _%h163739%_))
                  (declare (not safe))
                  (let ((_%object163747163752%_
                         (##unchecked-structure-ref
                          _%self154856163744%_
                          '1
                          '#f
                          'length))
                        (_%method163748163753%_
                         (##unchecked-structure-ref
                          _%self154856163744%_
                          '6
                          '#f
                          'length)))
                    (_%method163748163753%_ _%object163747163752%_)))
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
       _%checked-hash-table::HashTable::length157838%_
       '#f))
    (define _%checked-hash-table::HashTable::copy157840%_
      (lambda (_%self163570%_)
        (let ((_%self163573%_ _%self163570%_))
          (declare (not safe))
          (let ((_%h163585%_
                 (##unchecked-structure-ref _%self163573%_ '1 '#f '#f))
                (_%key?163587%_
                 (##unchecked-structure-ref _%self163573%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self153958163590%_ _%h163585%_))
                  (declare (not safe))
                  (let ((_%object163593163598%_
                         (##unchecked-structure-ref
                          _%self153958163590%_
                          '1
                          '#f
                          'copy))
                        (_%method163594163599%_
                         (##unchecked-structure-ref
                          _%self153958163590%_
                          '3
                          '#f
                          'copy)))
                    (_%method163594163599%_ _%object163593163598%_)))
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
       _%checked-hash-table::HashTable::copy157840%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!157842%_
      (lambda (_%self163416%_)
        (let ((_%self163419%_ _%self163416%_))
          (declare (not safe))
          (let ((_%h163431%_
                 (##unchecked-structure-ref _%self163419%_ '1 '#f '#f))
                (_%key?163433%_
                 (##unchecked-structure-ref _%self163419%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self153666163436%_ _%h163431%_))
                  (declare (not safe))
                  (let ((_%object163439163444%_
                         (##unchecked-structure-ref
                          _%self153666163436%_
                          '1
                          '#f
                          'clear!))
                        (_%method163440163445%_
                         (##unchecked-structure-ref
                          _%self153666163436%_
                          '2
                          '#f
                          'clear!)))
                    (_%method163440163445%_ _%object163439163444%_)))
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
       _%checked-hash-table::HashTable::clear!157842%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table163286%_
               _%count163287%_
               _%free163288%_
               _%hash163289%_
               _%test163290%_
               _%seed163291%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table163286%_
           _%count163287%_
           _%free163288%_
           _%hash163289%_
           _%test163290%_
           _%seed163291%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords162696%_
               _%size-hint162686162697%_
               _%seed162687162698%_
               _%test162688162699%_
               _%hash162689162700%_
               _%lock162690162701%_
               _%check162691162702%_
               _%weak-keys162692162703%_
               _%weak-values162693162704%_)
        (let* ((_%size-hint162706%_
                (if (eq? _%size-hint162686162697%_ absent-value)
                    '#f
                    _%size-hint162686162697%_))
               (_%seed162708%_
                (if (eq? _%seed162687162698%_ absent-value)
                    '#f
                    _%seed162687162698%_))
               (_%test162710%_
                (if (eq? _%test162688162699%_ absent-value)
                    equal?
                    _%test162688162699%_))
               (_%hash162712%_
                (if (eq? _%hash162689162700%_ absent-value)
                    '#f
                    _%hash162689162700%_))
               (_%lock162714%_
                (if (eq? _%lock162690162701%_ absent-value)
                    '#f
                    _%lock162690162701%_))
               (_%check162716%_
                (if (eq? _%check162691162702%_ absent-value)
                    '#f
                    _%check162691162702%_))
               (_%weak-keys162718%_
                (if (eq? _%weak-keys162692162703%_ absent-value)
                    '#f
                    _%weak-keys162692162703%_))
               (_%weak-values162720%_
                (if (eq? _%weak-values162693162704%_ absent-value)
                    '#f
                    _%weak-values162693162704%_)))
          (letrec ((_%table-seed162723%_
                    (lambda ()
                      (if (fixnum? _%seed162708%_)
                          _%seed162708%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock162867%_
                    (lambda (_%ht163254%_)
                      (let ((_%ht163257%_ _%ht163254%_))
                        (if _%lock162714%_
                            (let ((_%$obj163269%_
                                   (let ((__tmp170125
                                          (let ((_%$obj163266%_
                                                 _%lock162714%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj163266%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj163266%_)))
                                                     '#t)
                                                _%$obj163266%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj163266%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht163257%_
                                      __tmp170125))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj163269%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj163269%_)))
                                       '#t)
                                  _%$obj163269%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj163269%_))))
                            _%ht163257%_))))
                   (_%wrap-lock162868%_
                    (lambda (_%ht163242%_)
                      (let ((_%ht163245%_ _%ht163242%_))
                        (_%__wrap-lock162867%_ _%ht163245%_))))
                   (_%__wrap-checked162990%_
                    (lambda (_%ht163226%_ _%implicit163227%_)
                      (let ((_%ht163230%_ _%ht163226%_))
                        (if _%check162716%_
                            (let ((_%$obj163239%_
                                   (let ((__tmp170126
                                          (if (procedure? _%check162716%_)
                                              _%check162716%_
                                              _%implicit163227%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht163230%_
                                      __tmp170126))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj163239%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj163239%_)))
                                       '#t)
                                  _%$obj163239%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj163239%_))))
                            _%ht163230%_))))
                   (_%wrap-checked162991%_
                    (lambda (_%ht163213%_ _%implicit163214%_)
                      (let ((_%ht163217%_ _%ht163213%_))
                        (_%__wrap-checked162990%_
                         _%ht163217%_
                         _%implicit163214%_))))
                   (_%make162992%_
                    (lambda (_%kons163161%_
                             _%key?163162%_
                             _%hash163163%_
                             _%test163164%_)
                      (let* ((_%size163167%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint162706%_)))
                             (_%table163169%_
                              (let ((__tmp170127 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size163167%_ __tmp170127)))
                             (_%ht163174%_
                              (let ((_%$obj163171%_
                                     (_%kons163161%_
                                      _%table163169%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size163167%_ '2))
                                      _%hash163163%_
                                      _%test163164%_
                                      (_%table-seed162723%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj163171%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj163171%_)))
                                         '#t)
                                    _%$obj163171%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj163171%_)))))
                             (_%ht163196%_
                              (let* ((_%ht163177%_ _%ht163174%_)
                                     (_%ht163181%_ _%ht163177%_))
                                (_%__wrap-lock162867%_ _%ht163181%_)))
                             (_%implicit163199%_ _%key?163162%_)
                             (_%ht163203%_ _%ht163196%_))
                        (_%__wrap-checked162990%_
                         _%ht163203%_
                         _%implicit163199%_))))
                   (_%make-gc-hash-table162993%_
                    (lambda ()
                      (let* ((_%ht163126%_
                              (let ((_%$obj163123%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint162706%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj163123%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj163123%_)))
                                         '#t)
                                    _%$obj163123%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj163123%_)))))
                             (_%ht163144%_
                              (let* ((_%ht163128%_ _%ht163126%_)
                                     (_%ht163132%_ _%ht163128%_))
                                (_%__wrap-lock162867%_ _%ht163132%_)))
                             (_%implicit163147%_ true)
                             (_%ht163151%_ _%ht163144%_))
                        (_%__wrap-checked162990%_
                         _%ht163151%_
                         _%implicit163147%_))))
                   (_%make-gambit-table162994%_
                    (lambda ()
                      (let* ((_%size163063%_
                              (let ((_%$e163060%_ _%size-hint162706%_))
                                (if _%$e163060%_
                                    _%$e163060%_
                                    (macro-absent-obj))))
                             (_%test163068%_
                              (let ((_%$e163065%_ _%test162710%_))
                                (if _%$e163065%_ _%$e163065%_ equal?)))
                             (_%hash163076%_
                              (let ((_%$e163070%_ _%hash162712%_))
                                (if _%$e163070%_
                                    _%$e163070%_
                                    (if (eq? _%test163068%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test163068%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht163081%_
                              (let ((_%$obj163078%_
                                     (make-table
                                      'size:
                                      _%size163063%_
                                      'test:
                                      _%test163068%_
                                      'hash:
                                      _%hash163076%_
                                      'weak-keys:
                                      _%weak-keys162718%_
                                      'weak-values:
                                      _%weak-values162720%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj163078%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj163078%_)))
                                         '#t)
                                    _%$obj163078%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj163078%_)))))
                             (_%ht163104%_
                              (let* ((_%ht163084%_ _%ht163081%_)
                                     (_%ht163088%_ _%ht163084%_))
                                (_%__wrap-lock162867%_ _%ht163088%_)))
                             (_%implicit163107%_ true)
                             (_%ht163111%_ _%ht163104%_))
                        (_%__wrap-checked162990%_
                         _%ht163111%_
                         _%implicit163107%_)))))
            (if (or _%weak-keys162718%_ _%weak-values162720%_)
                (_%make-gambit-table162994%_)
                (if (and (or (eq? _%test162710%_ eq?)
                             (eq? _%test162710%_ ##eq?))
                         (or (not _%hash162712%_)
                             (eq? _%hash162712%_ eq?-hash)
                             (eq? _%hash162712%_ eq-hash))
                         (not _%seed162708%_))
                    (_%make-gc-hash-table162993%_)
                    (if (and (or (eq? _%test162710%_ eq?)
                                 (eq? _%test162710%_ ##eq?))
                             (or (not _%hash162712%_)
                                 (eq? _%hash162712%_ eq?-hash)
                                 (eq? _%hash162712%_ eq-hash)))
                        (_%make162992%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test162710%_ eqv?)
                                     (eq? _%test162710%_ ##eqv?))
                                 (or (not _%hash162712%_)
                                     (eq? _%hash162712%_ eqv?-hash)
                                     (eq? _%hash162712%_ eqv-hash)))
                            (_%make162992%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test162710%_ eq?)
                                         (eq? _%test162710%_ ##eq?))
                                     (or (eq? _%hash162712%_ symbolic-hash)
                                         (eq? _%hash162712%_ ##symbol-hash)))
                                (_%make162992%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test162710%_ eq?)
                                             (eq? _%test162710%_ ##eq?))
                                         (eq? _%hash162712%_ immediate-hash))
                                    (_%make162992%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test162710%_ equal?)
                                                 (eq? _%test162710%_ ##equal?)
                                                 (eq? _%test162710%_ string=?)
                                                 (eq? _%test162710%_
                                                      ##string=?))
                                             (or (eq? _%hash162712%_
                                                      string-hash)
                                                 (eq? _%hash162712%_
                                                      ##string=?-hash)))
                                        (_%make162992%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test162710%_ equal?)
                                                 (not _%hash162712%_))
                                            (_%make162992%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test162710%_)
                                                (if (procedure? _%hash162712%_)
                                                    (_%make162992%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash162712%_
                                                     _%test162710%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash162712%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test162710%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords163276%_ . _%args163277%_)
        (apply make-hash-table__%
               _%@@keywords163276%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords163276%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords163276%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords163276%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords163276%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords163276%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords163276%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords163276%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords163276%_
                  'weak-values:
                  absent-value))
               _%args163277%_)))
    (define make-hash-table
      (lambda _%args162694163283%_
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
               _%args162694163283%_)))
    (define make-hash-table-eq
      (lambda _%args162683%_
        (apply make-hash-table 'test: eq? _%args162683%_)))
    (define make-hash-table-eqv
      (lambda _%args162681%_
        (apply make-hash-table 'test: eqv? _%args162681%_)))
    (define make-hash-table-symbolic
      (lambda _%args162679%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args162679%_)))
    (define make-hash-table-string
      (lambda _%args162677%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args162677%_)))
    (define make-hash-table-immediate
      (lambda _%args162675%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args162675%_)))
    (define list->hash-table
      (lambda (_%lst162672%_ . _%args162673%_)
        (list->hash-table!
         _%lst162672%_
         (apply make-hash-table
                'size:
                (length _%lst162672%_)
                _%args162673%_))))
    (define list->hash-table-eq
      (lambda (_%lst162669%_ . _%args162670%_)
        (list->hash-table!
         _%lst162669%_
         (apply make-hash-table-eq
                'size:
                (length _%lst162669%_)
                _%args162670%_))))
    (define list->hash-table-eqv
      (lambda (_%lst162666%_ . _%args162667%_)
        (list->hash-table!
         _%lst162666%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst162666%_)
                _%args162667%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst162663%_ . _%args162664%_)
        (list->hash-table!
         _%lst162663%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst162663%_)
                _%args162664%_))))
    (define list->hash-table-string
      (lambda (_%lst162660%_ . _%args162661%_)
        (list->hash-table!
         _%lst162660%_
         (apply make-hash-table-string
                'size:
                (length _%lst162660%_)
                _%args162661%_))))
    (define list->hash-table-immediate
      (lambda (_%lst162657%_ . _%args162658%_)
        (list->hash-table!
         _%lst162657%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst162657%_)
                _%args162658%_))))
    (define list->hash-table!
      (lambda (_%lst162608%_ _%h162609%_)
        (for-each
         (lambda (_%el162611%_)
           (let* ((_%el162612162619%_ _%el162611%_)
                  (_%E162614162622%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el162612162619%_
                              '([k . v])))
                     '#!void))
                  (_%K162615162645%_
                   (lambda (_%v162625%_ _%k162626%_)
                     (let* ((_%self155445162628%_ _%h162609%_)
                            (_%key162631%_ _%k162626%_)
                            (_%value162634%_ _%v162625%_))
                       (declare (not safe))
                       (let ((_%object162637162642%_
                              (##unchecked-structure-ref
                               _%self155445162628%_
                               '1
                               '#f
                               'set!))
                             (_%method162638162643%_
                              (##unchecked-structure-ref
                               _%self155445162628%_
                               '8
                               '#f
                               'set!)))
                         (_%method162638162643%_
                          _%object162637162642%_
                          _%key162631%_
                          _%value162634%_))))))
             (if (pair? _%el162612162619%_)
                 (let ((_%hd162616162648%_
                        (let ()
                          (declare (not safe))
                          (##car _%el162612162619%_)))
                       (_%tl162617162650%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el162612162619%_))))
                   (let* ((_%k162653%_ _%hd162616162648%_)
                          (_%v162655%_ _%tl162617162650%_))
                     (_%K162615162645%_ _%v162655%_ _%k162653%_)))
                 (_%E162614162622%_))))
         _%lst162608%_)
        _%h162609%_))
    (define plist->hash-table
      (lambda (_%lst162605%_ . _%args162606%_)
        (plist->hash-table!
         _%lst162605%_
         (apply make-hash-table
                'size:
                (length _%lst162605%_)
                _%args162606%_))))
    (define plist->hash-table-eq
      (lambda (_%lst162602%_ . _%args162603%_)
        (plist->hash-table!
         _%lst162602%_
         (apply make-hash-table-eq
                'size:
                (length _%lst162602%_)
                _%args162603%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst162599%_ . _%args162600%_)
        (plist->hash-table!
         _%lst162599%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst162599%_)
                _%args162600%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst162596%_ . _%args162597%_)
        (plist->hash-table!
         _%lst162596%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst162596%_)
                _%args162597%_))))
    (define plist->hash-table-string
      (lambda (_%lst162593%_ . _%args162594%_)
        (plist->hash-table!
         _%lst162593%_
         (apply make-hash-table-string
                'size:
                (length _%lst162593%_)
                _%args162594%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst162590%_ . _%args162591%_)
        (plist->hash-table!
         _%lst162590%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst162590%_)
                _%args162591%_))))
    (define plist->hash-table!
      (lambda (_%lst162513%_ _%h162514%_)
        (let _%loop162516%_ ((_%rest162518%_ _%lst162513%_))
          (let* ((_%rest162519162531%_ _%rest162518%_)
                 (_%else162522162539%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst162513%_)))))
            (let ((_%K162525162571%_
                   (lambda (_%rest162550%_ _%val162551%_ _%key162552%_)
                     (let* ((_%self155445162554%_ _%h162514%_)
                            (_%key162557%_ _%key162552%_)
                            (_%value162560%_ _%val162551%_))
                       (declare (not safe))
                       (let ((_%object162563162568%_
                              (##unchecked-structure-ref
                               _%self155445162554%_
                               '1
                               '#f
                               'set!))
                             (_%method162564162569%_
                              (##unchecked-structure-ref
                               _%self155445162554%_
                               '8
                               '#f
                               'set!)))
                         (_%method162564162569%_
                          _%object162563162568%_
                          _%key162557%_
                          _%value162560%_)))
                     (_%loop162516%_ _%rest162550%_)))
                  (_%K162524162544%_ (lambda () _%h162514%_)))
              (let ((_%try-match162521162547%_
                     (lambda ()
                       (if (null? _%rest162519162531%_)
                           (_%K162524162544%_)
                           (_%else162522162539%_)))))
                (if (pair? _%rest162519162531%_)
                    (let ((_%tl162527162576%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest162519162531%_)))
                          (_%hd162526162574%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest162519162531%_))))
                      (if (pair? _%tl162527162576%_)
                          (let ((_%tl162529162583%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl162527162576%_)))
                                (_%hd162528162581%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl162527162576%_))))
                            (let ((_%key162579%_ _%hd162526162574%_)
                                  (_%val162586%_ _%hd162528162581%_)
                                  (_%rest162588%_ _%tl162529162583%_))
                              (_%K162525162571%_
                               _%rest162588%_
                               _%val162586%_
                               _%key162579%_)))
                          (_%else162522162539%_)))
                    (_%try-match162521162547%_))))))))
    (define __hash-length
      (lambda (_%h162462%_)
        (let* ((_%h162465%_ _%h162462%_)
               (_%self154857162474%_ _%h162465%_)
               (_%self154857162481%_
                (let ((_%$obj162478%_ _%self154857162474%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj162478%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj162478%_)))
                           '#t)
                      _%$obj162478%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj162478%_)))))
               (_%self154857162483%_ _%self154857162481%_))
          (if __DEBUG
              (let ((_%val162503%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object162495162500%_
                              (##unchecked-structure-ref
                               _%self154857162483%_
                               '1
                               '#f
                               'length))
                             (_%method162496162501%_
                              (##unchecked-structure-ref
                               _%self154857162483%_
                               '6
                               '#f
                               'length)))
                         (_%method162496162501%_ _%object162495162500%_)))))
                (if (fixnum? _%val162503%_)
                    _%val162503%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val162503%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object162505162510%_
                       (##unchecked-structure-ref
                        _%self154857162483%_
                        '1
                        '#f
                        'length))
                      (_%method162506162511%_
                       (##unchecked-structure-ref
                        _%self154857162483%_
                        '6
                        '#f
                        'length)))
                  (_%method162506162511%_ _%object162505162510%_)))))))
    (define hash-length
      (lambda (_%h158117%_)
        (let* ((_%h158123%_
                (let ((_%$obj158120%_ _%h158117%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158120%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158120%_)))
                           '#t)
                      _%$obj158120%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158120%_)))))
               (_%h158125%_ _%h158123%_))
          (__hash-length _%h158125%_))))
    (define __hash-ref__%
      (lambda (_%h162390%_ _%key162391%_ _%default162392%_)
        (let* ((_%h162395%_ _%h162390%_)
               (_%result162448%_
                (let* ((_%self155151162404%_ _%h162395%_)
                       (_%key162407%_ _%key162391%_)
                       (_%default162410%_ _%default162392%_)
                       (_%self155151162417%_
                        (let ((_%$obj162414%_ _%self155151162404%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj162414%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj162414%_)))
                                   '#t)
                              _%$obj162414%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj162414%_)))))
                       (_%self155151162419%_ _%self155151162417%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object162433162438%_
                               (##unchecked-structure-ref
                                _%self155151162419%_
                                '1
                                '#f
                                'ref))
                              (_%method162434162439%_
                               (##unchecked-structure-ref
                                _%self155151162419%_
                                '7
                                '#f
                                'ref)))
                          (_%method162434162439%_
                           _%object162433162438%_
                           _%key162407%_
                           _%default162410%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object162440162445%_
                               (##unchecked-structure-ref
                                _%self155151162419%_
                                '1
                                '#f
                                'ref))
                              (_%method162441162446%_
                               (##unchecked-structure-ref
                                _%self155151162419%_
                                '7
                                '#f
                                'ref)))
                          (_%method162441162446%_
                           _%object162440162445%_
                           _%key162407%_
                           _%default162410%_)))))))
          (if (eq? _%result162448%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h162395%_
               'key:
               _%key162391%_)
              _%result162448%_))))
    (define __hash-ref__0
      (lambda (_%h162453%_ _%key162454%_)
        (let ((_%default162456%_ absent-obj))
          (__hash-ref__% _%h162453%_ _%key162454%_ _%default162456%_))))
    (define __hash-ref
      (lambda _g170128_
        (let ((_g170129_ (let () (declare (not safe)) (##length _g170128_))))
          (cond ((let () (declare (not safe)) (##fx= _g170129_ 2))
                 (apply __hash-ref__0 _g170128_))
                ((let () (declare (not safe)) (##fx= _g170129_ 3))
                 (apply __hash-ref__% _g170128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g170128_))))))
    (define hash-ref__%
      (lambda (_%h158256%_ _%key158257%_ _%default158258%_)
        (let* ((_%h158264%_
                (let ((_%$obj158261%_ _%h158256%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158261%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158261%_)))
                           '#t)
                      _%$obj158261%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158261%_)))))
               (_%h158266%_ _%h158264%_))
          (__hash-ref__% _%h158266%_ _%key158257%_ _%default158258%_))))
    (define hash-ref__0
      (lambda (_%h158279%_ _%key158280%_)
        (let ((_%default158282%_ absent-obj))
          (hash-ref__% _%h158279%_ _%key158280%_ _%default158282%_))))
    (define hash-ref
      (lambda _g170130_
        (let ((_g170131_ (let () (declare (not safe)) (##length _g170130_))))
          (cond ((let () (declare (not safe)) (##fx= _g170131_ 2))
                 (apply hash-ref__0 _g170130_))
                ((let () (declare (not safe)) (##fx= _g170131_ 3))
                 (apply hash-ref__% _g170130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g170130_))))))
    (define __hash-get
      (lambda (_%h162332%_ _%key162333%_)
        (let* ((_%h162336%_ _%h162332%_)
               (_%self155151162345%_ _%h162336%_)
               (_%key162348%_ _%key162333%_)
               (_%default162351%_ '#f)
               (_%self155151162358%_
                (let ((_%$obj162355%_ _%self155151162345%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj162355%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj162355%_)))
                           '#t)
                      _%$obj162355%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj162355%_)))))
               (_%self155151162360%_ _%self155151162358%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object162374162379%_
                       (##unchecked-structure-ref
                        _%self155151162360%_
                        '1
                        '#f
                        'ref))
                      (_%method162375162380%_
                       (##unchecked-structure-ref
                        _%self155151162360%_
                        '7
                        '#f
                        'ref)))
                  (_%method162375162380%_
                   _%object162374162379%_
                   _%key162348%_
                   _%default162351%_)))
              (let ()
                (declare (not safe))
                (let ((_%object162381162386%_
                       (##unchecked-structure-ref
                        _%self155151162360%_
                        '1
                        '#f
                        'ref))
                      (_%method162382162387%_
                       (##unchecked-structure-ref
                        _%self155151162360%_
                        '7
                        '#f
                        'ref)))
                  (_%method162382162387%_
                   _%object162381162386%_
                   _%key162348%_
                   _%default162351%_)))))))
    (define hash-get
      (lambda (_%h158408%_ _%key158409%_)
        (let* ((_%h158415%_
                (let ((_%$obj158412%_ _%h158408%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158412%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158412%_)))
                           '#t)
                      _%$obj158412%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158412%_)))))
               (_%h158417%_ _%h158415%_))
          (__hash-get _%h158417%_ _%key158409%_))))
    (define __hash-put!
      (lambda (_%h162274%_ _%key162275%_ _%value162276%_)
        (let* ((_%h162279%_ _%h162274%_)
               (_%self155446162288%_ _%h162279%_)
               (_%key162291%_ _%key162275%_)
               (_%value162294%_ _%value162276%_)
               (_%self155446162301%_
                (let ((_%$obj162298%_ _%self155446162288%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj162298%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj162298%_)))
                           '#t)
                      _%$obj162298%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj162298%_)))))
               (_%self155446162303%_ _%self155446162301%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object162317162322%_
                       (##unchecked-structure-ref
                        _%self155446162303%_
                        '1
                        '#f
                        'set!))
                      (_%method162318162323%_
                       (##unchecked-structure-ref
                        _%self155446162303%_
                        '8
                        '#f
                        'set!)))
                  (_%method162318162323%_
                   _%object162317162322%_
                   _%key162291%_
                   _%value162294%_)))
              (let ()
                (declare (not safe))
                (let ((_%object162324162329%_
                       (##unchecked-structure-ref
                        _%self155446162303%_
                        '1
                        '#f
                        'set!))
                      (_%method162325162330%_
                       (##unchecked-structure-ref
                        _%self155446162303%_
                        '8
                        '#f
                        'set!)))
                  (_%method162325162330%_
                   _%object162324162329%_
                   _%key162291%_
                   _%value162294%_)))))))
    (define hash-put!
      (lambda (_%h158547%_ _%key158548%_ _%value158549%_)
        (let* ((_%h158555%_
                (let ((_%$obj158552%_ _%h158547%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158552%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158552%_)))
                           '#t)
                      _%$obj158552%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158552%_)))))
               (_%h158557%_ _%h158555%_))
          (__hash-put! _%h158557%_ _%key158548%_ _%value158549%_))))
    (define __hash-update!__%
      (lambda (_%h162187%_ _%key162188%_ _%update162189%_ _%default162190%_)
        (let* ((_%h162193%_ _%h162187%_)
               (_%self155741162202%_ _%h162193%_)
               (_%key162205%_ _%key162188%_)
               (_%proc162208%_ _%update162189%_)
               (_%default162211%_ _%default162190%_)
               (_%self155741162218%_
                (let ((_%$obj162215%_ _%self155741162202%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj162215%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj162215%_)))
                           '#t)
                      _%$obj162215%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj162215%_)))))
               (_%self155741162220%_ _%self155741162218%_))
          (if (procedure? _%proc162208%_)
              (let ((_%proc162236%_ _%proc162208%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object162245162250%_
                             (##unchecked-structure-ref
                              _%self155741162220%_
                              '1
                              '#f
                              'update!))
                            (_%method162246162251%_
                             (##unchecked-structure-ref
                              _%self155741162220%_
                              '9
                              '#f
                              'update!)))
                        (_%method162246162251%_
                         _%object162245162250%_
                         _%key162205%_
                         _%proc162236%_
                         _%default162211%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object162252162257%_
                             (##unchecked-structure-ref
                              _%self155741162220%_
                              '1
                              '#f
                              'update!))
                            (_%method162253162258%_
                             (##unchecked-structure-ref
                              _%self155741162220%_
                              '9
                              '#f
                              'update!)))
                        (_%method162253162258%_
                         _%object162252162257%_
                         _%key162205%_
                         _%proc162236%_
                         _%default162211%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc162208%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h162263%_ _%key162264%_ _%update162265%_)
        (let ((_%default162267%_ '#!void))
          (__hash-update!__%
           _%h162263%_
           _%key162264%_
           _%update162265%_
           _%default162267%_))))
    (define __hash-update!
      (lambda _g170132_
        (let ((_g170133_ (let () (declare (not safe)) (##length _g170132_))))
          (cond ((let () (declare (not safe)) (##fx= _g170133_ 3))
                 (apply __hash-update!__0 _g170132_))
                ((let () (declare (not safe)) (##fx= _g170133_ 4))
                 (apply __hash-update!__% _g170132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g170132_))))))
    (define hash-update!__%
      (lambda (_%h158688%_ _%key158689%_ _%update158690%_ _%default158691%_)
        (let* ((_%h158697%_
                (let ((_%$obj158694%_ _%h158688%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158694%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158694%_)))
                           '#t)
                      _%$obj158694%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158694%_)))))
               (_%h158699%_ _%h158697%_))
          (__hash-update!__%
           _%h158699%_
           _%key158689%_
           _%update158690%_
           _%default158691%_))))
    (define hash-update!__0
      (lambda (_%h158712%_ _%key158713%_ _%update158714%_)
        (let ((_%default158716%_ '#!void))
          (hash-update!__%
           _%h158712%_
           _%key158713%_
           _%update158714%_
           _%default158716%_))))
    (define hash-update!
      (lambda _g170134_
        (let ((_g170135_ (let () (declare (not safe)) (##length _g170134_))))
          (cond ((let () (declare (not safe)) (##fx= _g170135_ 3))
                 (apply hash-update!__0 _g170134_))
                ((let () (declare (not safe)) (##fx= _g170135_ 4))
                 (apply hash-update!__% _g170134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g170134_))))))
    (define __hash-remove!
      (lambda (_%h162133%_ _%key162134%_)
        (let* ((_%h162137%_ _%h162133%_)
               (_%self154253162146%_ _%h162137%_)
               (_%key162149%_ _%key162134%_)
               (_%self154253162156%_
                (let ((_%$obj162153%_ _%self154253162146%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj162153%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj162153%_)))
                           '#t)
                      _%$obj162153%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj162153%_)))))
               (_%self154253162158%_ _%self154253162156%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object162171162176%_
                       (##unchecked-structure-ref
                        _%self154253162158%_
                        '1
                        '#f
                        'delete!))
                      (_%method162172162177%_
                       (##unchecked-structure-ref
                        _%self154253162158%_
                        '4
                        '#f
                        'delete!)))
                  (_%method162172162177%_
                   _%object162171162176%_
                   _%key162149%_)))
              (let ()
                (declare (not safe))
                (let ((_%object162178162183%_
                       (##unchecked-structure-ref
                        _%self154253162158%_
                        '1
                        '#f
                        'delete!))
                      (_%method162179162184%_
                       (##unchecked-structure-ref
                        _%self154253162158%_
                        '4
                        '#f
                        'delete!)))
                  (_%method162179162184%_
                   _%object162178162183%_
                   _%key162149%_)))))))
    (define hash-remove!
      (lambda (_%h158843%_ _%key158844%_)
        (let* ((_%h158850%_
                (let ((_%$obj158847%_ _%h158843%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158847%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158847%_)))
                           '#t)
                      _%$obj158847%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158847%_)))))
               (_%h158852%_ _%h158850%_))
          (__hash-remove! _%h158852%_ _%key158844%_))))
    (define __hash-key?
      (lambda (_%h162076%_ _%k162077%_)
        (let ((_%h162080%_ _%h162076%_))
          (not (eq? (let* ((_%self155151162089%_ _%h162080%_)
                           (_%key162092%_ _%k162077%_)
                           (_%default162095%_ absent-value)
                           (_%self155151162102%_
                            (let ((_%$obj162099%_ _%self155151162089%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj162099%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj162099%_)))
                                       '#t)
                                  _%$obj162099%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj162099%_)))))
                           (_%self155151162104%_ _%self155151162102%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object162118162123%_
                                   (##unchecked-structure-ref
                                    _%self155151162104%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method162119162124%_
                                   (##unchecked-structure-ref
                                    _%self155151162104%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method162119162124%_
                               _%object162118162123%_
                               _%key162092%_
                               _%default162095%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object162125162130%_
                                   (##unchecked-structure-ref
                                    _%self155151162104%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method162126162131%_
                                   (##unchecked-structure-ref
                                    _%self155151162104%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method162126162131%_
                               _%object162125162130%_
                               _%key162092%_
                               _%default162095%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h158982%_ _%k158983%_)
        (let* ((_%h158989%_
                (let ((_%$obj158986%_ _%h158982%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158986%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158986%_)))
                           '#t)
                      _%$obj158986%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158986%_)))))
               (_%h158991%_ _%h158989%_))
          (__hash-key? _%h158991%_ _%k158983%_))))
    (define __hash->list
      (lambda (_%h162008%_)
        (let* ((_%h162011%_ _%h162008%_) (_%lst162020%_ '()))
          (let* ((_%self154546162022%_ _%h162011%_)
                 (_%proc162028%_
                  (lambda (_%k162025%_ _%v162026%_)
                    (set! _%lst162020%_
                          (cons (cons _%k162025%_ _%v162026%_)
                                _%lst162020%_))))
                 (_%self154546162035%_
                  (let ((_%$obj162032%_ _%self154546162022%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj162032%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj162032%_)))
                             '#t)
                        _%$obj162032%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj162032%_)))))
                 (_%self154546162037%_ _%self154546162035%_)
                 (_%proc162052%_ _%proc162028%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162061162066%_
                         (##unchecked-structure-ref
                          _%self154546162037%_
                          '1
                          '#f
                          'for-each))
                        (_%method162062162067%_
                         (##unchecked-structure-ref
                          _%self154546162037%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162062162067%_
                     _%object162061162066%_
                     _%proc162052%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162068162073%_
                         (##unchecked-structure-ref
                          _%self154546162037%_
                          '1
                          '#f
                          'for-each))
                        (_%method162069162074%_
                         (##unchecked-structure-ref
                          _%self154546162037%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162069162074%_
                     _%object162068162073%_
                     _%proc162052%_)))))
          _%lst162020%_)))
    (define hash->list
      (lambda (_%h159121%_)
        (let* ((_%h159127%_
                (let ((_%$obj159124%_ _%h159121%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159124%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159124%_)))
                           '#t)
                      _%$obj159124%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159124%_)))))
               (_%h159129%_ _%h159127%_))
          (__hash->list _%h159129%_))))
    (define __hash->plist
      (lambda (_%h161940%_)
        (let* ((_%h161943%_ _%h161940%_) (_%lst161952%_ '()))
          (let* ((_%self154546161954%_ _%h161943%_)
                 (_%proc161960%_
                  (lambda (_%k161957%_ _%v161958%_)
                    (set! _%lst161952%_
                          (cons _%k161957%_
                                (cons _%v161958%_ _%lst161952%_)))))
                 (_%self154546161967%_
                  (let ((_%$obj161964%_ _%self154546161954%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj161964%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj161964%_)))
                             '#t)
                        _%$obj161964%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj161964%_)))))
                 (_%self154546161969%_ _%self154546161967%_)
                 (_%proc161984%_ _%proc161960%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object161993161998%_
                         (##unchecked-structure-ref
                          _%self154546161969%_
                          '1
                          '#f
                          'for-each))
                        (_%method161994161999%_
                         (##unchecked-structure-ref
                          _%self154546161969%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161994161999%_
                     _%object161993161998%_
                     _%proc161984%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162000162005%_
                         (##unchecked-structure-ref
                          _%self154546161969%_
                          '1
                          '#f
                          'for-each))
                        (_%method162001162006%_
                         (##unchecked-structure-ref
                          _%self154546161969%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162001162006%_
                     _%object162000162005%_
                     _%proc161984%_)))))
          _%lst161952%_)))
    (define hash->plist
      (lambda (_%h159259%_)
        (let* ((_%h159265%_
                (let ((_%$obj159262%_ _%h159259%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159262%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159262%_)))
                           '#t)
                      _%$obj159262%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159262%_)))))
               (_%h159267%_ _%h159265%_))
          (__hash->plist _%h159267%_))))
    (define __hash-for-each
      (lambda (_%proc161869%_ _%h161870%_)
        (let* ((_%proc161873%_ _%proc161869%_)
               (_%h161881%_ _%h161870%_)
               (_%self154546161890%_ _%h161881%_)
               (_%proc161893%_ _%proc161873%_)
               (_%self154546161900%_
                (let ((_%$obj161897%_ _%self154546161890%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161897%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161897%_)))
                           '#t)
                      _%$obj161897%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161897%_)))))
               (_%self154546161902%_ _%self154546161900%_)
               (_%proc161916%_ _%proc161893%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161925161930%_
                       (##unchecked-structure-ref
                        _%self154546161902%_
                        '1
                        '#f
                        'for-each))
                      (_%method161926161931%_
                       (##unchecked-structure-ref
                        _%self154546161902%_
                        '5
                        '#f
                        'for-each)))
                  (_%method161926161931%_
                   _%object161925161930%_
                   _%proc161916%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161932161937%_
                       (##unchecked-structure-ref
                        _%self154546161902%_
                        '1
                        '#f
                        'for-each))
                      (_%method161933161938%_
                       (##unchecked-structure-ref
                        _%self154546161902%_
                        '5
                        '#f
                        'for-each)))
                  (_%method161933161938%_
                   _%object161932161937%_
                   _%proc161916%_)))))))
    (define hash-for-each
      (lambda (_%proc159397%_ _%h159398%_)
        (if (procedure? _%proc159397%_)
            (let* ((_%proc159402%_ _%proc159397%_)
                   (_%h159414%_
                    (let ((_%$obj159411%_ _%h159398%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159411%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159411%_)))
                               '#t)
                          _%$obj159411%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159411%_)))))
                   (_%h159416%_ _%h159414%_))
              (__hash-for-each _%proc159402%_ _%h159416%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc159397%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc161792%_ _%h161793%_)
        (let* ((_%proc161796%_ _%proc161792%_)
               (_%h161804%_ _%h161793%_)
               (_%result161813%_ '()))
          (let* ((_%self154546161815%_ _%h161804%_)
                 (_%proc161821%_
                  (lambda (_%k161818%_ _%v161819%_)
                    (set! _%result161813%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc161796%_ _%k161818%_ _%v161819%_))
                                _%result161813%_))))
                 (_%self154546161828%_
                  (let ((_%$obj161825%_ _%self154546161815%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj161825%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj161825%_)))
                             '#t)
                        _%$obj161825%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj161825%_)))))
                 (_%self154546161830%_ _%self154546161828%_)
                 (_%proc161845%_ _%proc161821%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object161854161859%_
                         (##unchecked-structure-ref
                          _%self154546161830%_
                          '1
                          '#f
                          'for-each))
                        (_%method161855161860%_
                         (##unchecked-structure-ref
                          _%self154546161830%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161855161860%_
                     _%object161854161859%_
                     _%proc161845%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object161861161866%_
                         (##unchecked-structure-ref
                          _%self154546161830%_
                          '1
                          '#f
                          'for-each))
                        (_%method161862161867%_
                         (##unchecked-structure-ref
                          _%self154546161830%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161862161867%_
                     _%object161861161866%_
                     _%proc161845%_)))))
          _%result161813%_)))
    (define hash-map
      (lambda (_%proc159546%_ _%h159547%_)
        (if (procedure? _%proc159546%_)
            (let* ((_%proc159551%_ _%proc159546%_)
                   (_%h159563%_
                    (let ((_%$obj159560%_ _%h159547%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159560%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159560%_)))
                               '#t)
                          _%$obj159560%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159560%_)))))
                   (_%h159565%_ _%h159563%_))
              (__hash-map _%proc159551%_ _%h159565%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc159546%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc161714%_ _%iv161715%_ _%h161716%_)
        (let* ((_%proc161719%_ _%proc161714%_)
               (_%h161727%_ _%h161716%_)
               (_%result161736%_ _%iv161715%_))
          (let* ((_%self154546161738%_ _%h161727%_)
                 (_%proc161744%_
                  (lambda (_%k161741%_ _%v161742%_)
                    (set! _%result161736%_
                          (let ()
                            (declare (not safe))
                            (_%proc161719%_
                             _%k161741%_
                             _%v161742%_
                             _%result161736%_)))))
                 (_%self154546161751%_
                  (let ((_%$obj161748%_ _%self154546161738%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj161748%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj161748%_)))
                             '#t)
                        _%$obj161748%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj161748%_)))))
                 (_%self154546161753%_ _%self154546161751%_)
                 (_%proc161768%_ _%proc161744%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object161777161782%_
                         (##unchecked-structure-ref
                          _%self154546161753%_
                          '1
                          '#f
                          'for-each))
                        (_%method161778161783%_
                         (##unchecked-structure-ref
                          _%self154546161753%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161778161783%_
                     _%object161777161782%_
                     _%proc161768%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object161784161789%_
                         (##unchecked-structure-ref
                          _%self154546161753%_
                          '1
                          '#f
                          'for-each))
                        (_%method161785161790%_
                         (##unchecked-structure-ref
                          _%self154546161753%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161785161790%_
                     _%object161784161789%_
                     _%proc161768%_)))))
          _%result161736%_)))
    (define hash-fold
      (lambda (_%proc159695%_ _%iv159696%_ _%h159697%_)
        (if (procedure? _%proc159695%_)
            (let* ((_%proc159701%_ _%proc159695%_)
                   (_%h159713%_
                    (let ((_%$obj159710%_ _%h159697%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159710%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159710%_)))
                               '#t)
                          _%$obj159710%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159710%_)))))
                   (_%h159715%_ _%h159713%_))
              (__hash-fold _%proc159701%_ _%iv159696%_ _%h159715%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc159695%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc161621%_ _%h161622%_ _%default-value161623%_)
        (let* ((_%proc161626%_ _%proc161621%_)
               (_%h161634%_ _%h161622%_)
               (__tmp170136
                (lambda (_%return161643%_)
                  (let* ((_%self154546161645%_ _%h161634%_)
                         (_%proc161654%_
                          (lambda (_%k161648%_ _%v161649%_)
                            (let ((_%$e161651%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc161626%_
                                      _%k161648%_
                                      _%v161649%_))))
                              (if _%$e161651%_
                                  (_%return161643%_ _%$e161651%_)
                                  '#!void))))
                         (_%self154546161661%_
                          (let ((_%$obj161658%_ _%self154546161645%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj161658%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj161658%_)))
                                     '#t)
                                _%$obj161658%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj161658%_)))))
                         (_%self154546161663%_ _%self154546161661%_)
                         (_%proc161678%_ _%proc161654%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object161687161692%_
                                 (##unchecked-structure-ref
                                  _%self154546161663%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method161688161693%_
                                 (##unchecked-structure-ref
                                  _%self154546161663%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method161688161693%_
                             _%object161687161692%_
                             _%proc161678%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object161694161699%_
                                 (##unchecked-structure-ref
                                  _%self154546161663%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method161695161700%_
                                 (##unchecked-structure-ref
                                  _%self154546161663%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method161695161700%_
                             _%object161694161699%_
                             _%proc161678%_)))))
                  _%default-value161623%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp170136))))
    (define __hash-find__0
      (lambda (_%proc161705%_ _%h161706%_)
        (let ((_%default-value161708%_ '#f))
          (__hash-find__%
           _%proc161705%_
           _%h161706%_
           _%default-value161708%_))))
    (define __hash-find
      (lambda _g170137_
        (let ((_g170138_ (let () (declare (not safe)) (##length _g170137_))))
          (cond ((let () (declare (not safe)) (##fx= _g170138_ 2))
                 (apply __hash-find__0 _g170137_))
                ((let () (declare (not safe)) (##fx= _g170138_ 3))
                 (apply __hash-find__% _g170137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g170137_))))))
    (define hash-find__%
      (lambda (_%proc159846%_ _%h159847%_ _%default-value159848%_)
        (if (procedure? _%proc159846%_)
            (let* ((_%proc159852%_ _%proc159846%_)
                   (_%h159864%_
                    (let ((_%$obj159861%_ _%h159847%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159861%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159861%_)))
                               '#t)
                          _%$obj159861%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159861%_)))))
                   (_%h159866%_ _%h159864%_))
              (__hash-find__%
               _%proc159852%_
               _%h159866%_
               _%default-value159848%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc159846%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc159879%_ _%h159880%_)
        (let ((_%default-value159882%_ '#f))
          (hash-find__% _%proc159879%_ _%h159880%_ _%default-value159882%_))))
    (define hash-find
      (lambda _g170139_
        (let ((_g170140_ (let () (declare (not safe)) (##length _g170139_))))
          (cond ((let () (declare (not safe)) (##fx= _g170140_ 2))
                 (apply hash-find__0 _g170139_))
                ((let () (declare (not safe)) (##fx= _g170140_ 3))
                 (apply hash-find__% _g170139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g170139_))))))
    (define __hash-keys
      (lambda (_%h161552%_)
        (let* ((_%h161555%_ _%h161552%_) (_%result161564%_ '()))
          (let* ((_%self154546161566%_ _%h161555%_)
                 (_%proc161572%_
                  (lambda (_%k161569%_ _%v161570%_)
                    (set! _%result161564%_
                          (cons _%k161569%_ _%result161564%_))))
                 (_%self154546161579%_
                  (let ((_%$obj161576%_ _%self154546161566%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj161576%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj161576%_)))
                             '#t)
                        _%$obj161576%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj161576%_)))))
                 (_%self154546161581%_ _%self154546161579%_)
                 (_%proc161596%_ _%proc161572%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object161605161610%_
                         (##unchecked-structure-ref
                          _%self154546161581%_
                          '1
                          '#f
                          'for-each))
                        (_%method161606161611%_
                         (##unchecked-structure-ref
                          _%self154546161581%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161606161611%_
                     _%object161605161610%_
                     _%proc161596%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object161612161617%_
                         (##unchecked-structure-ref
                          _%self154546161581%_
                          '1
                          '#f
                          'for-each))
                        (_%method161613161618%_
                         (##unchecked-structure-ref
                          _%self154546161581%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161613161618%_
                     _%object161612161617%_
                     _%proc161596%_)))))
          _%result161564%_)))
    (define hash-keys
      (lambda (_%h160008%_)
        (let* ((_%h160014%_
                (let ((_%$obj160011%_ _%h160008%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160011%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160011%_)))
                           '#t)
                      _%$obj160011%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160011%_)))))
               (_%h160016%_ _%h160014%_))
          (__hash-keys _%h160016%_))))
    (define __hash-values
      (lambda (_%h161484%_)
        (let* ((_%h161487%_ _%h161484%_) (_%result161496%_ '()))
          (let* ((_%self154546161498%_ _%h161487%_)
                 (_%proc161504%_
                  (lambda (_%k161501%_ _%v161502%_)
                    (set! _%result161496%_
                          (cons _%v161502%_ _%result161496%_))))
                 (_%self154546161511%_
                  (let ((_%$obj161508%_ _%self154546161498%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj161508%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj161508%_)))
                             '#t)
                        _%$obj161508%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj161508%_)))))
                 (_%self154546161513%_ _%self154546161511%_)
                 (_%proc161528%_ _%proc161504%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object161537161542%_
                         (##unchecked-structure-ref
                          _%self154546161513%_
                          '1
                          '#f
                          'for-each))
                        (_%method161538161543%_
                         (##unchecked-structure-ref
                          _%self154546161513%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161538161543%_
                     _%object161537161542%_
                     _%proc161528%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object161544161549%_
                         (##unchecked-structure-ref
                          _%self154546161513%_
                          '1
                          '#f
                          'for-each))
                        (_%method161545161550%_
                         (##unchecked-structure-ref
                          _%self154546161513%_
                          '5
                          '#f
                          'for-each)))
                    (_%method161545161550%_
                     _%object161544161549%_
                     _%proc161528%_)))))
          _%result161496%_)))
    (define hash-values
      (lambda (_%h160146%_)
        (let* ((_%h160152%_
                (let ((_%$obj160149%_ _%h160146%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160149%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160149%_)))
                           '#t)
                      _%$obj160149%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160149%_)))))
               (_%h160154%_ _%h160152%_))
          (__hash-values _%h160154%_))))
    (define __hash-copy
      (lambda (_%h161433%_)
        (let* ((_%h161436%_ _%h161433%_)
               (_%self153959161445%_ _%h161436%_)
               (_%self153959161452%_
                (let ((_%$obj161449%_ _%self153959161445%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161449%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161449%_)))
                           '#t)
                      _%$obj161449%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161449%_)))))
               (_%self153959161454%_ _%self153959161452%_))
          (if __DEBUG
              (let ((_%$obj161474%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161466161471%_
                              (##unchecked-structure-ref
                               _%self153959161454%_
                               '1
                               '#f
                               'copy))
                             (_%method161467161472%_
                              (##unchecked-structure-ref
                               _%self153959161454%_
                               '3
                               '#f
                               'copy)))
                         (_%method161467161472%_ _%object161466161471%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj161474%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj161474%_)))
                         '#t)
                    _%$obj161474%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj161474%_))))
              (let ()
                (declare (not safe))
                (let ((_%object161476161481%_
                       (##unchecked-structure-ref
                        _%self153959161454%_
                        '1
                        '#f
                        'copy))
                      (_%method161477161482%_
                       (##unchecked-structure-ref
                        _%self153959161454%_
                        '3
                        '#f
                        'copy)))
                  (_%method161477161482%_ _%object161476161481%_)))))))
    (define hash-copy
      (lambda (_%h160284%_)
        (let* ((_%h160290%_
                (let ((_%$obj160287%_ _%h160284%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160287%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160287%_)))
                           '#t)
                      _%$obj160287%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160287%_)))))
               (_%h160292%_ _%h160290%_))
          (__hash-copy _%h160292%_))))
    (define __hash-clear!
      (lambda (_%h161385%_)
        (let* ((_%h161388%_ _%h161385%_)
               (_%self153667161397%_ _%h161388%_)
               (_%self153667161404%_
                (let ((_%$obj161401%_ _%self153667161397%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161401%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161401%_)))
                           '#t)
                      _%$obj161401%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161401%_)))))
               (_%self153667161406%_ _%self153667161404%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161418161423%_
                       (##unchecked-structure-ref
                        _%self153667161406%_
                        '1
                        '#f
                        'clear!))
                      (_%method161419161424%_
                       (##unchecked-structure-ref
                        _%self153667161406%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161419161424%_ _%object161418161423%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161425161430%_
                       (##unchecked-structure-ref
                        _%self153667161406%_
                        '1
                        '#f
                        'clear!))
                      (_%method161426161431%_
                       (##unchecked-structure-ref
                        _%self153667161406%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161426161431%_ _%object161425161430%_)))))))
    (define hash-clear!
      (lambda (_%h160422%_)
        (let* ((_%h160428%_
                (let ((_%$obj160425%_ _%h160422%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160425%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160425%_)))
                           '#t)
                      _%$obj160425%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160425%_)))))
               (_%h160430%_ _%h160428%_))
          (__hash-clear! _%h160430%_))))
    (define __hash-merge
      (lambda (_%h161331%_ . _%rest161332%_)
        (let* ((_%h161335%_ _%h161331%_)
               (_%copy161383%_
                (let* ((_%self153959161344%_ _%h161335%_)
                       (_%self153959161351%_
                        (let ((_%$obj161348%_ _%self153959161344%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj161348%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj161348%_)))
                                   '#t)
                              _%$obj161348%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj161348%_)))))
                       (_%self153959161353%_ _%self153959161351%_))
                  (if __DEBUG
                      (let ((_%$obj161373%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object161365161370%_
                                      (##unchecked-structure-ref
                                       _%self153959161353%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method161366161371%_
                                      (##unchecked-structure-ref
                                       _%self153959161353%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method161366161371%_
                                  _%object161365161370%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj161373%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj161373%_)))
                                 '#t)
                            _%$obj161373%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj161373%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161375161380%_
                               (##unchecked-structure-ref
                                _%self153959161353%_
                                '1
                                '#f
                                'copy))
                              (_%method161376161381%_
                               (##unchecked-structure-ref
                                _%self153959161353%_
                                '3
                                '#f
                                'copy)))
                          (_%method161376161381%_ _%object161375161380%_)))))))
          (apply hash-merge! _%copy161383%_ _%rest161332%_)
          _%copy161383%_)))
    (define hash-merge
      (lambda (_%h160560%_ . _%rest160561%_)
        (let* ((_%h160567%_
                (let ((_%$obj160564%_ _%h160560%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160564%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160564%_)))
                           '#t)
                      _%$obj160564%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160564%_)))))
               (_%h160569%_ _%h160567%_))
          (declare (not safe))
          (##apply __hash-merge _%h160569%_ _%rest160561%_))))
    (define __hash-merge-right
      (lambda (_%h161277%_ . _%rest161278%_)
        (let* ((_%h161281%_ _%h161277%_)
               (_%copy161329%_
                (let* ((_%self153959161290%_ _%h161281%_)
                       (_%self153959161297%_
                        (let ((_%$obj161294%_ _%self153959161290%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj161294%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj161294%_)))
                                   '#t)
                              _%$obj161294%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj161294%_)))))
                       (_%self153959161299%_ _%self153959161297%_))
                  (if __DEBUG
                      (let ((_%$obj161319%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object161311161316%_
                                      (##unchecked-structure-ref
                                       _%self153959161299%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method161312161317%_
                                      (##unchecked-structure-ref
                                       _%self153959161299%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method161312161317%_
                                  _%object161311161316%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj161319%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj161319%_)))
                                 '#t)
                            _%$obj161319%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj161319%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161321161326%_
                               (##unchecked-structure-ref
                                _%self153959161299%_
                                '1
                                '#f
                                'copy))
                              (_%method161322161327%_
                               (##unchecked-structure-ref
                                _%self153959161299%_
                                '3
                                '#f
                                'copy)))
                          (_%method161322161327%_ _%object161321161326%_)))))))
          (apply hash-merge-right! _%copy161329%_ _%rest161278%_)
          _%copy161329%_)))
    (define hash-merge-right
      (lambda (_%h160699%_ . _%rest160700%_)
        (let* ((_%h160706%_
                (let ((_%$obj160703%_ _%h160699%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160703%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160703%_)))
                           '#t)
                      _%$obj160703%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160703%_)))))
               (_%h160708%_ _%h160706%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h160708%_ _%rest160700%_))))
    (define __hash-merge!
      (lambda (_%h161125%_ . _%rest161126%_)
        (let ((_%h161129%_ _%h161125%_))
          (let ((__tmp170141
                 (lambda (_%hr161138%_)
                   (let* ((_%hr161144%_
                           (let ((_%$obj161141%_ _%hr161138%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj161141%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj161141%_)))
                                      '#t)
                                 _%$obj161141%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj161141%_)))))
                          (_%hr161146%_ _%hr161144%_)
                          (_%self154546161159%_ _%hr161146%_)
                          (_%proc161234%_
                           (lambda (_%k161162%_ _%v161163%_)
                             (if (let* ((_%h161165%_ _%h161129%_)
                                        (_%k161168%_ _%k161162%_)
                                        (_%h161175%_
                                         (let ((_%$obj161172%_ _%h161165%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj161172%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj161172%_)))
                                                    '#t)
                                               _%$obj161172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj161172%_)))))
                                        (_%h161177%_ _%h161175%_))
                                   (__hash-key? _%h161177%_ _%k161168%_))
                                 '#!void
                                 (let* ((_%self155446161193%_ _%h161129%_)
                                        (_%key161196%_ _%k161162%_)
                                        (_%value161199%_ _%v161163%_)
                                        (_%self155446161206%_
                                         (let ((_%$obj161203%_
                                                _%self155446161193%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj161203%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj161203%_)))
                                                    '#t)
                                               _%$obj161203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj161203%_)))))
                                        (_%self155446161208%_
                                         _%self155446161206%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object161219161224%_
                                                (##unchecked-structure-ref
                                                 _%self155446161208%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method161220161225%_
                                                (##unchecked-structure-ref
                                                 _%self155446161208%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method161220161225%_
                                            _%object161219161224%_
                                            _%key161196%_
                                            _%value161199%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object161226161231%_
                                                (##unchecked-structure-ref
                                                 _%self155446161208%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method161227161232%_
                                                (##unchecked-structure-ref
                                                 _%self155446161208%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method161227161232%_
                                            _%object161226161231%_
                                            _%key161196%_
                                            _%value161199%_))))))))
                          (_%self154546161241%_
                           (let ((_%$obj161238%_ _%self154546161159%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj161238%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj161238%_)))
                                      '#t)
                                 _%$obj161238%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj161238%_)))))
                          (_%self154546161243%_ _%self154546161241%_)
                          (_%proc161253%_ _%proc161234%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object161262161267%_
                                  (##unchecked-structure-ref
                                   _%self154546161243%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161263161268%_
                                  (##unchecked-structure-ref
                                   _%self154546161243%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161263161268%_
                              _%object161262161267%_
                              _%proc161253%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object161269161274%_
                                  (##unchecked-structure-ref
                                   _%self154546161243%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161270161275%_
                                  (##unchecked-structure-ref
                                   _%self154546161243%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161270161275%_
                              _%object161269161274%_
                              _%proc161253%_))))))))
            (declare (not safe))
            (##for-each __tmp170141 _%rest161126%_))
          _%h161129%_)))
    (define hash-merge!
      (lambda (_%h160838%_ . _%rest160839%_)
        (let* ((_%h160845%_
                (let ((_%$obj160842%_ _%h160838%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160842%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160842%_)))
                           '#t)
                      _%$obj160842%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160842%_)))))
               (_%h160847%_ _%h160845%_))
          (declare (not safe))
          (##apply __hash-merge! _%h160847%_ _%rest160839%_))))
    (define __hash-merge-right!
      (lambda (_%h160996%_ . _%rest160997%_)
        (let ((_%h161000%_ _%h160996%_))
          (let ((__tmp170142
                 (lambda (_%hr161009%_)
                   (let* ((_%hr161015%_
                           (let ((_%$obj161012%_ _%hr161009%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj161012%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj161012%_)))
                                      '#t)
                                 _%$obj161012%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj161012%_)))))
                          (_%hr161017%_ _%hr161015%_)
                          (_%self154546161030%_ _%hr161017%_)
                          (_%proc161082%_
                           (lambda (_%k161033%_ _%v161034%_)
                             (let* ((_%self155446161036%_ _%h161000%_)
                                    (_%key161039%_ _%k161033%_)
                                    (_%value161042%_ _%v161034%_)
                                    (_%self155446161049%_
                                     (let ((_%$obj161046%_
                                            _%self155446161036%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj161046%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj161046%_)))
                                                '#t)
                                           _%$obj161046%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj161046%_)))))
                                    (_%self155446161051%_
                                     _%self155446161049%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object161067161072%_
                                            (##unchecked-structure-ref
                                             _%self155446161051%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method161068161073%_
                                            (##unchecked-structure-ref
                                             _%self155446161051%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method161068161073%_
                                        _%object161067161072%_
                                        _%key161039%_
                                        _%value161042%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object161074161079%_
                                            (##unchecked-structure-ref
                                             _%self155446161051%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method161075161080%_
                                            (##unchecked-structure-ref
                                             _%self155446161051%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method161075161080%_
                                        _%object161074161079%_
                                        _%key161039%_
                                        _%value161042%_)))))))
                          (_%self154546161089%_
                           (let ((_%$obj161086%_ _%self154546161030%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj161086%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj161086%_)))
                                      '#t)
                                 _%$obj161086%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj161086%_)))))
                          (_%self154546161091%_ _%self154546161089%_)
                          (_%proc161101%_ _%proc161082%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object161110161115%_
                                  (##unchecked-structure-ref
                                   _%self154546161091%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161111161116%_
                                  (##unchecked-structure-ref
                                   _%self154546161091%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161111161116%_
                              _%object161110161115%_
                              _%proc161101%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object161117161122%_
                                  (##unchecked-structure-ref
                                   _%self154546161091%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161118161123%_
                                  (##unchecked-structure-ref
                                   _%self154546161091%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161118161123%_
                              _%object161117161122%_
                              _%proc161101%_))))))))
            (declare (not safe))
            (##for-each __tmp170142 _%rest160997%_))
          _%h161000%_)))
    (define hash-merge-right!
      (lambda (_%h160977%_ . _%rest160978%_)
        (let* ((_%h160984%_
                (let ((_%$obj160981%_ _%h160977%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160981%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160981%_)))
                           '#t)
                      _%$obj160981%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160981%_)))))
               (_%h160986%_ _%h160984%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h160986%_ _%rest160978%_))))))
