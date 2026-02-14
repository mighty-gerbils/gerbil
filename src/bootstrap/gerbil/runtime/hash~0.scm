(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1771093447)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp161068 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp161068
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args159810%_
        (apply make-instance UnboundKeyError::t _%$args159810%_)))
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
      (lambda (_%where159684%_ _%message159685%_ . _%irritants159686%_)
        (let ((__tmp161069
               (let ((__obj161060
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj161060
                    _%message159685%_
                    'where:
                    _%where159684%_
                    'irritants:
                    _%irritants159686%_))
                 __obj161060)))
          (declare (not safe))
          (raise __tmp161069))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp161070 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp161070
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj161062
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161062
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj161062))
    (define make-HashTable
      (lambda (_%obj159682%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj159682%_))))
    (define try-HashTable
      (lambda (_%obj159680%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj159680%_))))
    (define HashTable?
      (lambda (_%obj159678%_)
        (let ((__tmp161071
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj159678%_ __tmp161071))))
    (define is-HashTable?
      (lambda (_%obj159675%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj159675%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self144665144909%_)
        (let ((_%self144665144911%_ _%self144665144909%_))
          (declare (not safe))
          (let ((_%object144918144923%_
                 (##unchecked-structure-ref
                  _%self144665144911%_
                  '1
                  '#f
                  'clear!))
                (_%method144919144924%_
                 (##unchecked-structure-ref
                  _%self144665144911%_
                  '2
                  '#f
                  'clear!)))
            (_%method144919144924%_ _%object144918144923%_)))))
    (define ::HashTable-clear!
      (lambda (_%self144666144926%_)
        (let* ((_%self144666144931%_
                (let ((_%$obj144928%_ _%self144666144926%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144928%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144928%_)))
                           '#t)
                      _%$obj144928%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144928%_)))))
               (_%self144666144933%_ _%self144666144931%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144941144946%_
                       (##unchecked-structure-ref
                        _%self144666144933%_
                        '1
                        '#f
                        'clear!))
                      (_%method144942144947%_
                       (##unchecked-structure-ref
                        _%self144666144933%_
                        '2
                        '#f
                        'clear!)))
                  (_%method144942144947%_ _%object144941144946%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144948144953%_
                       (##unchecked-structure-ref
                        _%self144666144933%_
                        '1
                        '#f
                        'clear!))
                      (_%method144949144954%_
                       (##unchecked-structure-ref
                        _%self144666144933%_
                        '2
                        '#f
                        'clear!)))
                  (_%method144949144954%_ _%object144948144953%_)))))))
    (define __HashTable-copy
      (lambda (_%self144957145200%_)
        (let ((_%self144957145202%_ _%self144957145200%_))
          (declare (not safe))
          (let ((_%object145209145214%_
                 (##unchecked-structure-ref _%self144957145202%_ '1 '#f 'copy))
                (_%method145210145215%_
                 (##unchecked-structure-ref
                  _%self144957145202%_
                  '3
                  '#f
                  'copy)))
            (_%method145210145215%_ _%object145209145214%_)))))
    (define ::HashTable-copy
      (lambda (_%self144958145217%_)
        (let* ((_%self144958145222%_
                (let ((_%$obj145219%_ _%self144958145217%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145219%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145219%_)))
                           '#t)
                      _%$obj145219%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145219%_)))))
               (_%self144958145224%_ _%self144958145222%_))
          (if __DEBUG
              (let ((_%$obj145240%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object145232145237%_
                              (##unchecked-structure-ref
                               _%self144958145224%_
                               '1
                               '#f
                               'copy))
                             (_%method145233145238%_
                              (##unchecked-structure-ref
                               _%self144958145224%_
                               '3
                               '#f
                               'copy)))
                         (_%method145233145238%_ _%object145232145237%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj145240%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj145240%_)))
                         '#t)
                    _%$obj145240%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj145240%_))))
              (let ()
                (declare (not safe))
                (let ((_%object145242145247%_
                       (##unchecked-structure-ref
                        _%self144958145224%_
                        '1
                        '#f
                        'copy))
                      (_%method145243145248%_
                       (##unchecked-structure-ref
                        _%self144958145224%_
                        '3
                        '#f
                        'copy)))
                  (_%method145243145248%_ _%object145242145247%_)))))))
    (define __HashTable-delete!
      (lambda (_%self145251145494%_ _%key145495%_)
        (let ((_%self145251145497%_ _%self145251145494%_))
          (declare (not safe))
          (let ((_%object145504145509%_
                 (##unchecked-structure-ref
                  _%self145251145497%_
                  '1
                  '#f
                  'delete!))
                (_%method145505145510%_
                 (##unchecked-structure-ref
                  _%self145251145497%_
                  '4
                  '#f
                  'delete!)))
            (_%method145505145510%_ _%object145504145509%_ _%key145495%_)))))
    (define ::HashTable-delete!
      (lambda (_%self145252145512%_ _%key145513%_)
        (let* ((_%self145252145518%_
                (let ((_%$obj145515%_ _%self145252145512%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145515%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145515%_)))
                           '#t)
                      _%$obj145515%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145515%_)))))
               (_%self145252145520%_ _%self145252145518%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145528145533%_
                       (##unchecked-structure-ref
                        _%self145252145520%_
                        '1
                        '#f
                        'delete!))
                      (_%method145529145534%_
                       (##unchecked-structure-ref
                        _%self145252145520%_
                        '4
                        '#f
                        'delete!)))
                  (_%method145529145534%_
                   _%object145528145533%_
                   _%key145513%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145535145540%_
                       (##unchecked-structure-ref
                        _%self145252145520%_
                        '1
                        '#f
                        'delete!))
                      (_%method145536145541%_
                       (##unchecked-structure-ref
                        _%self145252145520%_
                        '4
                        '#f
                        'delete!)))
                  (_%method145536145541%_
                   _%object145535145540%_
                   _%key145513%_)))))))
    (define __HashTable-for-each
      (lambda (_%self145544145787%_ _%proc145788%_)
        (let* ((_%self145544145790%_ _%self145544145787%_)
               (_%proc145797%_ _%proc145788%_))
          (declare (not safe))
          (let ((_%object145805145810%_
                 (##unchecked-structure-ref
                  _%self145544145790%_
                  '1
                  '#f
                  'for-each))
                (_%method145806145811%_
                 (##unchecked-structure-ref
                  _%self145544145790%_
                  '5
                  '#f
                  'for-each)))
            (_%method145806145811%_ _%object145805145810%_ _%proc145797%_)))))
    (define ::HashTable-for-each
      (lambda (_%self145545145813%_ _%proc145814%_)
        (let* ((_%self145545145819%_
                (let ((_%$obj145816%_ _%self145545145813%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145816%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145816%_)))
                           '#t)
                      _%$obj145816%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145816%_)))))
               (_%self145545145821%_ _%self145545145819%_))
          (if (procedure? _%proc145814%_)
              (let ((_%proc145830%_ _%proc145814%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object145839145844%_
                             (##unchecked-structure-ref
                              _%self145545145821%_
                              '1
                              '#f
                              'for-each))
                            (_%method145840145845%_
                             (##unchecked-structure-ref
                              _%self145545145821%_
                              '5
                              '#f
                              'for-each)))
                        (_%method145840145845%_
                         _%object145839145844%_
                         _%proc145830%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object145846145851%_
                             (##unchecked-structure-ref
                              _%self145545145821%_
                              '1
                              '#f
                              'for-each))
                            (_%method145847145852%_
                             (##unchecked-structure-ref
                              _%self145545145821%_
                              '5
                              '#f
                              'for-each)))
                        (_%method145847145852%_
                         _%object145846145851%_
                         _%proc145830%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc145814%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self145855146098%_)
        (let ((_%self145855146100%_ _%self145855146098%_))
          (declare (not safe))
          (let ((_%object146107146112%_
                 (##unchecked-structure-ref
                  _%self145855146100%_
                  '1
                  '#f
                  'length))
                (_%method146108146113%_
                 (##unchecked-structure-ref
                  _%self145855146100%_
                  '6
                  '#f
                  'length)))
            (_%method146108146113%_ _%object146107146112%_)))))
    (define ::HashTable-length
      (lambda (_%self145856146115%_)
        (let* ((_%self145856146120%_
                (let ((_%$obj146117%_ _%self145856146115%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146117%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146117%_)))
                           '#t)
                      _%$obj146117%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146117%_)))))
               (_%self145856146122%_ _%self145856146120%_))
          (if __DEBUG
              (let ((_%val146138%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146130146135%_
                              (##unchecked-structure-ref
                               _%self145856146122%_
                               '1
                               '#f
                               'length))
                             (_%method146131146136%_
                              (##unchecked-structure-ref
                               _%self145856146122%_
                               '6
                               '#f
                               'length)))
                         (_%method146131146136%_ _%object146130146135%_)))))
                (if (fixnum? _%val146138%_)
                    _%val146138%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val146138%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object146140146145%_
                       (##unchecked-structure-ref
                        _%self145856146122%_
                        '1
                        '#f
                        'length))
                      (_%method146141146146%_
                       (##unchecked-structure-ref
                        _%self145856146122%_
                        '6
                        '#f
                        'length)))
                  (_%method146141146146%_ _%object146140146145%_)))))))
    (define __HashTable-ref
      (lambda (_%self146149146392%_ _%key146393%_ _%default146394%_)
        (let ((_%self146149146396%_ _%self146149146392%_))
          (declare (not safe))
          (let ((_%object146403146408%_
                 (##unchecked-structure-ref _%self146149146396%_ '1 '#f 'ref))
                (_%method146404146409%_
                 (##unchecked-structure-ref _%self146149146396%_ '7 '#f 'ref)))
            (_%method146404146409%_
             _%object146403146408%_
             _%key146393%_
             _%default146394%_)))))
    (define ::HashTable-ref
      (lambda (_%self146150146411%_ _%key146412%_ _%default146413%_)
        (let* ((_%self146150146418%_
                (let ((_%$obj146415%_ _%self146150146411%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146415%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146415%_)))
                           '#t)
                      _%$obj146415%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146415%_)))))
               (_%self146150146420%_ _%self146150146418%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146428146433%_
                       (##unchecked-structure-ref
                        _%self146150146420%_
                        '1
                        '#f
                        'ref))
                      (_%method146429146434%_
                       (##unchecked-structure-ref
                        _%self146150146420%_
                        '7
                        '#f
                        'ref)))
                  (_%method146429146434%_
                   _%object146428146433%_
                   _%key146412%_
                   _%default146413%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146435146440%_
                       (##unchecked-structure-ref
                        _%self146150146420%_
                        '1
                        '#f
                        'ref))
                      (_%method146436146441%_
                       (##unchecked-structure-ref
                        _%self146150146420%_
                        '7
                        '#f
                        'ref)))
                  (_%method146436146441%_
                   _%object146435146440%_
                   _%key146412%_
                   _%default146413%_)))))))
    (define __HashTable-set!
      (lambda (_%self146444146687%_ _%key146688%_ _%value146689%_)
        (let ((_%self146444146691%_ _%self146444146687%_))
          (declare (not safe))
          (let ((_%object146698146703%_
                 (##unchecked-structure-ref _%self146444146691%_ '1 '#f 'set!))
                (_%method146699146704%_
                 (##unchecked-structure-ref
                  _%self146444146691%_
                  '8
                  '#f
                  'set!)))
            (_%method146699146704%_
             _%object146698146703%_
             _%key146688%_
             _%value146689%_)))))
    (define ::HashTable-set!
      (lambda (_%self146445146706%_ _%key146707%_ _%value146708%_)
        (let* ((_%self146445146713%_
                (let ((_%$obj146710%_ _%self146445146706%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146710%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146710%_)))
                           '#t)
                      _%$obj146710%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146710%_)))))
               (_%self146445146715%_ _%self146445146713%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146723146728%_
                       (##unchecked-structure-ref
                        _%self146445146715%_
                        '1
                        '#f
                        'set!))
                      (_%method146724146729%_
                       (##unchecked-structure-ref
                        _%self146445146715%_
                        '8
                        '#f
                        'set!)))
                  (_%method146724146729%_
                   _%object146723146728%_
                   _%key146707%_
                   _%value146708%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146730146735%_
                       (##unchecked-structure-ref
                        _%self146445146715%_
                        '1
                        '#f
                        'set!))
                      (_%method146731146736%_
                       (##unchecked-structure-ref
                        _%self146445146715%_
                        '8
                        '#f
                        'set!)))
                  (_%method146731146736%_
                   _%object146730146735%_
                   _%key146707%_
                   _%value146708%_)))))))
    (define __HashTable-update!
      (lambda (_%self146739146982%_
               _%key146983%_
               _%proc146984%_
               _%default146985%_)
        (let* ((_%self146739146987%_ _%self146739146982%_)
               (_%proc146994%_ _%proc146984%_))
          (declare (not safe))
          (let ((_%object147002147007%_
                 (##unchecked-structure-ref
                  _%self146739146987%_
                  '1
                  '#f
                  'update!))
                (_%method147003147008%_
                 (##unchecked-structure-ref
                  _%self146739146987%_
                  '9
                  '#f
                  'update!)))
            (_%method147003147008%_
             _%object147002147007%_
             _%key146983%_
             _%proc146994%_
             _%default146985%_)))))
    (define ::HashTable-update!
      (lambda (_%self146740147010%_
               _%key147011%_
               _%proc147012%_
               _%default147013%_)
        (let* ((_%self146740147018%_
                (let ((_%$obj147015%_ _%self146740147010%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147015%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147015%_)))
                           '#t)
                      _%$obj147015%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147015%_)))))
               (_%self146740147020%_ _%self146740147018%_))
          (if (procedure? _%proc147012%_)
              (let ((_%proc147029%_ _%proc147012%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object147038147043%_
                             (##unchecked-structure-ref
                              _%self146740147020%_
                              '1
                              '#f
                              'update!))
                            (_%method147039147044%_
                             (##unchecked-structure-ref
                              _%self146740147020%_
                              '9
                              '#f
                              'update!)))
                        (_%method147039147044%_
                         _%object147038147043%_
                         _%key147011%_
                         _%proc147029%_
                         _%default147013%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object147045147050%_
                             (##unchecked-structure-ref
                              _%self146740147020%_
                              '1
                              '#f
                              'update!))
                            (_%method147046147051%_
                             (##unchecked-structure-ref
                              _%self146740147020%_
                              '9
                              '#f
                              'update!)))
                        (_%method147046147051%_
                         _%object147045147050%_
                         _%key147011%_
                         _%proc147029%_
                         _%default147013%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc147012%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp161072 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp161072
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj161064
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161064
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj161064))
    (define make-Locker
      (lambda (_%obj159673%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj159673%_))))
    (define try-Locker
      (lambda (_%obj159671%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj159671%_))))
    (define Locker?
      (lambda (_%obj159669%_)
        (let ((__tmp161073
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj159669%_ __tmp161073))))
    (define is-Locker?
      (lambda (_%obj159666%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj159666%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self147054147297%_)
        (let ((_%self147054147299%_ _%self147054147297%_))
          (declare (not safe))
          (let ((_%object147306147311%_
                 (##unchecked-structure-ref
                  _%self147054147299%_
                  '1
                  '#f
                  'read-lock!))
                (_%method147307147312%_
                 (##unchecked-structure-ref
                  _%self147054147299%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method147307147312%_ _%object147306147311%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self147055147314%_)
        (let* ((_%self147055147319%_
                (let ((_%$obj147316%_ _%self147055147314%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147316%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147316%_)))
                           '#t)
                      _%$obj147316%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147316%_)))))
               (_%self147055147321%_ _%self147055147319%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147329147334%_
                       (##unchecked-structure-ref
                        _%self147055147321%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147330147335%_
                       (##unchecked-structure-ref
                        _%self147055147321%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147330147335%_ _%object147329147334%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147336147341%_
                       (##unchecked-structure-ref
                        _%self147055147321%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147337147342%_
                       (##unchecked-structure-ref
                        _%self147055147321%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147337147342%_ _%object147336147341%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self147345147588%_)
        (let ((_%self147345147590%_ _%self147345147588%_))
          (declare (not safe))
          (let ((_%object147597147602%_
                 (##unchecked-structure-ref
                  _%self147345147590%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method147598147603%_
                 (##unchecked-structure-ref
                  _%self147345147590%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method147598147603%_ _%object147597147602%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self147346147605%_)
        (let* ((_%self147346147610%_
                (let ((_%$obj147607%_ _%self147346147605%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147607%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147607%_)))
                           '#t)
                      _%$obj147607%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147607%_)))))
               (_%self147346147612%_ _%self147346147610%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147620147625%_
                       (##unchecked-structure-ref
                        _%self147346147612%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method147621147626%_
                       (##unchecked-structure-ref
                        _%self147346147612%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method147621147626%_ _%object147620147625%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147627147632%_
                       (##unchecked-structure-ref
                        _%self147346147612%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method147628147633%_
                       (##unchecked-structure-ref
                        _%self147346147612%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method147628147633%_ _%object147627147632%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self147636147879%_)
        (let ((_%self147636147881%_ _%self147636147879%_))
          (declare (not safe))
          (let ((_%object147888147893%_
                 (##unchecked-structure-ref
                  _%self147636147881%_
                  '1
                  '#f
                  'write-lock!))
                (_%method147889147894%_
                 (##unchecked-structure-ref
                  _%self147636147881%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method147889147894%_ _%object147888147893%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self147637147896%_)
        (let* ((_%self147637147901%_
                (let ((_%$obj147898%_ _%self147637147896%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147898%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147898%_)))
                           '#t)
                      _%$obj147898%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147898%_)))))
               (_%self147637147903%_ _%self147637147901%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147911147916%_
                       (##unchecked-structure-ref
                        _%self147637147903%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method147912147917%_
                       (##unchecked-structure-ref
                        _%self147637147903%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method147912147917%_ _%object147911147916%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147918147923%_
                       (##unchecked-structure-ref
                        _%self147637147903%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method147919147924%_
                       (##unchecked-structure-ref
                        _%self147637147903%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method147919147924%_ _%object147918147923%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self147927148170%_)
        (let ((_%self147927148172%_ _%self147927148170%_))
          (declare (not safe))
          (let ((_%object148179148184%_
                 (##unchecked-structure-ref
                  _%self147927148172%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method148180148185%_
                 (##unchecked-structure-ref
                  _%self147927148172%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method148180148185%_ _%object148179148184%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self147928148187%_)
        (let* ((_%self147928148192%_
                (let ((_%$obj148189%_ _%self147928148187%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148189%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148189%_)))
                           '#t)
                      _%$obj148189%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148189%_)))))
               (_%self147928148194%_ _%self147928148192%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148202148207%_
                       (##unchecked-structure-ref
                        _%self147928148194%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148203148208%_
                       (##unchecked-structure-ref
                        _%self147928148194%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148203148208%_ _%object148202148207%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148209148214%_
                       (##unchecked-structure-ref
                        _%self147928148194%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148210148215%_
                       (##unchecked-structure-ref
                        _%self147928148194%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148210148215%_ _%object148209148214%_)))))))
    (let* ((_%klass159629%_ __table::t)
           (_%id159632%_ 'HashTable::ref)
           (_%proc159635%_ raw-table-ref)
           (_%rebind?159638%_ '#f)
           (_%id159643%_ _%id159632%_)
           (_%proc159656%_ _%proc159635%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159629%_
       _%id159643%_
       _%proc159656%_
       _%rebind?159638%_))
    (let* ((_%klass159592%_ __table::t)
           (_%id159595%_ 'HashTable::set!)
           (_%proc159598%_ raw-table-set!)
           (_%rebind?159601%_ '#f)
           (_%id159606%_ _%id159595%_)
           (_%proc159619%_ _%proc159598%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159592%_
       _%id159606%_
       _%proc159619%_
       _%rebind?159601%_))
    (let* ((_%klass159555%_ __table::t)
           (_%id159558%_ 'HashTable::update!)
           (_%proc159561%_ raw-table-update!)
           (_%rebind?159564%_ '#f)
           (_%id159569%_ _%id159558%_)
           (_%proc159582%_ _%proc159561%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159555%_
       _%id159569%_
       _%proc159582%_
       _%rebind?159564%_))
    (let* ((_%klass159518%_ __table::t)
           (_%id159521%_ 'HashTable::delete!)
           (_%proc159524%_ raw-table-delete!)
           (_%rebind?159527%_ '#f)
           (_%id159532%_ _%id159521%_)
           (_%proc159545%_ _%proc159524%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159518%_
       _%id159532%_
       _%proc159545%_
       _%rebind?159527%_))
    (let* ((_%klass159481%_ __table::t)
           (_%id159484%_ 'HashTable::for-each)
           (_%proc159487%_ raw-table-for-each)
           (_%rebind?159490%_ '#f)
           (_%id159495%_ _%id159484%_)
           (_%proc159508%_ _%proc159487%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159481%_
       _%id159495%_
       _%proc159508%_
       _%rebind?159490%_))
    (let* ((_%klass159444%_ __table::t)
           (_%id159447%_ 'HashTable::length)
           (_%proc159450%_ &raw-table-count)
           (_%rebind?159453%_ '#f)
           (_%id159458%_ _%id159447%_)
           (_%proc159471%_ _%proc159450%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159444%_
       _%id159458%_
       _%proc159471%_
       _%rebind?159453%_))
    (let* ((_%klass159407%_ __table::t)
           (_%id159410%_ 'HashTable::copy)
           (_%proc159413%_ raw-table-copy)
           (_%rebind?159416%_ '#f)
           (_%id159421%_ _%id159410%_)
           (_%proc159434%_ _%proc159413%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159407%_
       _%id159421%_
       _%proc159434%_
       _%rebind?159416%_))
    (let* ((_%klass159370%_ __table::t)
           (_%id159373%_ 'HashTable::clear!)
           (_%proc159376%_ raw-table-clear!)
           (_%rebind?159379%_ '#f)
           (_%id159384%_ _%id159373%_)
           (_%proc159397%_ _%proc159376%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159370%_
       _%id159384%_
       _%proc159397%_
       _%rebind?159379%_))
    (let* ((_%klass159333%_ __gc-table::t)
           (_%id159336%_ 'HashTable::ref)
           (_%proc159339%_ gc-table-ref)
           (_%rebind?159342%_ '#f)
           (_%id159347%_ _%id159336%_)
           (_%proc159360%_ _%proc159339%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159333%_
       _%id159347%_
       _%proc159360%_
       _%rebind?159342%_))
    (let* ((_%klass159296%_ __gc-table::t)
           (_%id159299%_ 'HashTable::set!)
           (_%proc159302%_ gc-table-set!)
           (_%rebind?159305%_ '#f)
           (_%id159310%_ _%id159299%_)
           (_%proc159323%_ _%proc159302%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159296%_
       _%id159310%_
       _%proc159323%_
       _%rebind?159305%_))
    (let* ((_%klass159259%_ __gc-table::t)
           (_%id159262%_ 'HashTable::update!)
           (_%proc159265%_ gc-table-update!)
           (_%rebind?159268%_ '#f)
           (_%id159273%_ _%id159262%_)
           (_%proc159286%_ _%proc159265%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159259%_
       _%id159273%_
       _%proc159286%_
       _%rebind?159268%_))
    (let* ((_%klass159222%_ __gc-table::t)
           (_%id159225%_ 'HashTable::delete!)
           (_%proc159228%_ gc-table-delete!)
           (_%rebind?159231%_ '#f)
           (_%id159236%_ _%id159225%_)
           (_%proc159249%_ _%proc159228%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159222%_
       _%id159236%_
       _%proc159249%_
       _%rebind?159231%_))
    (let* ((_%klass159185%_ __gc-table::t)
           (_%id159188%_ 'HashTable::for-each)
           (_%proc159191%_ gc-table-for-each)
           (_%rebind?159194%_ '#f)
           (_%id159199%_ _%id159188%_)
           (_%proc159212%_ _%proc159191%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159185%_
       _%id159199%_
       _%proc159212%_
       _%rebind?159194%_))
    (let* ((_%klass159148%_ __gc-table::t)
           (_%id159151%_ 'HashTable::length)
           (_%proc159154%_ gc-table-length)
           (_%rebind?159157%_ '#f)
           (_%id159162%_ _%id159151%_)
           (_%proc159175%_ _%proc159154%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159148%_
       _%id159162%_
       _%proc159175%_
       _%rebind?159157%_))
    (let* ((_%klass159111%_ __gc-table::t)
           (_%id159114%_ 'HashTable::copy)
           (_%proc159117%_ gc-table-copy)
           (_%rebind?159120%_ '#f)
           (_%id159125%_ _%id159114%_)
           (_%proc159138%_ _%proc159117%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159111%_
       _%id159125%_
       _%proc159138%_
       _%rebind?159120%_))
    (let* ((_%klass159074%_ __gc-table::t)
           (_%id159077%_ 'HashTable::clear!)
           (_%proc159080%_ gc-table-clear!)
           (_%rebind?159083%_ '#f)
           (_%id159088%_ _%id159077%_)
           (_%proc159101%_ _%proc159080%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159074%_
       _%id159088%_
       _%proc159101%_
       _%rebind?159083%_))
    (define gambit-table-update!
      (lambda (_%table159067%_
               _%key159068%_
               _%update159069%_
               _%default159070%_)
        (let ((_%result159072%_
               (table-ref _%table159067%_ _%key159068%_ _%default159070%_)))
          (table-set!
           _%table159067%_
           _%key159068%_
           (_%update159069%_ _%default159070%_)))))
    (define gambit-table-for-each
      (lambda (_%table159064%_ _%proc159065%_)
        (table-for-each _%proc159065%_ _%table159064%_)))
    (define gambit-table-clear!
      (lambda (_%table159062%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table159062%_ '0 '5 '#f '#f))))
    (let* ((_%klass159025%_ (macro-type-table))
           (_%id159028%_ 'HashTable::ref)
           (_%proc159031%_ table-ref)
           (_%rebind?159034%_ '#f)
           (_%id159039%_ _%id159028%_)
           (_%proc159052%_ _%proc159031%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159025%_
       _%id159039%_
       _%proc159052%_
       _%rebind?159034%_))
    (let* ((_%klass158988%_ (macro-type-table))
           (_%id158991%_ 'HashTable::set!)
           (_%proc158994%_ table-set!)
           (_%rebind?158997%_ '#f)
           (_%id159002%_ _%id158991%_)
           (_%proc159015%_ _%proc158994%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158988%_
       _%id159002%_
       _%proc159015%_
       _%rebind?158997%_))
    (let* ((_%klass158951%_ (macro-type-table))
           (_%id158954%_ 'HashTable::update!)
           (_%proc158957%_ gambit-table-update!)
           (_%rebind?158960%_ '#f)
           (_%id158965%_ _%id158954%_)
           (_%proc158978%_ _%proc158957%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158951%_
       _%id158965%_
       _%proc158978%_
       _%rebind?158960%_))
    (let* ((_%klass158914%_ (macro-type-table))
           (_%id158917%_ 'HashTable::delete!)
           (_%proc158920%_ table-set!)
           (_%rebind?158923%_ '#f)
           (_%id158928%_ _%id158917%_)
           (_%proc158941%_ _%proc158920%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158914%_
       _%id158928%_
       _%proc158941%_
       _%rebind?158923%_))
    (let* ((_%klass158877%_ (macro-type-table))
           (_%id158880%_ 'HashTable::for-each)
           (_%proc158883%_ gambit-table-for-each)
           (_%rebind?158886%_ '#f)
           (_%id158891%_ _%id158880%_)
           (_%proc158904%_ _%proc158883%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158877%_
       _%id158891%_
       _%proc158904%_
       _%rebind?158886%_))
    (let* ((_%klass158840%_ (macro-type-table))
           (_%id158843%_ 'HashTable::length)
           (_%proc158846%_ table-length)
           (_%rebind?158849%_ '#f)
           (_%id158854%_ _%id158843%_)
           (_%proc158867%_ _%proc158846%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158840%_
       _%id158854%_
       _%proc158867%_
       _%rebind?158849%_))
    (let* ((_%klass158803%_ (macro-type-table))
           (_%id158806%_ 'HashTable::copy)
           (_%proc158809%_ table-copy)
           (_%rebind?158812%_ '#f)
           (_%id158817%_ _%id158806%_)
           (_%proc158830%_ _%proc158809%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158803%_
       _%id158817%_
       _%proc158830%_
       _%rebind?158812%_))
    (let* ((_%klass158766%_ (macro-type-table))
           (_%id158769%_ 'HashTable::clear!)
           (_%proc158772%_ gambit-table-clear!)
           (_%rebind?158775%_ '#f)
           (_%id158780%_ _%id158769%_)
           (_%proc158793%_ _%proc158772%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158766%_
       _%id158780%_
       _%proc158793%_
       _%rebind?158775%_))
    (define hash-table::t
      (let* ((_%slots158729%_ '(table count free hash test seed))
             (_%slot-vector158731%_ (list->vector (cons '#f _%slots158729%_)))
             (_%slot-table158757%_
              (let ((_%slot-table158733%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161076
                       (lambda (_%slot158735%_ _%field158736%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158733%_
                            _%slot158735%_
                            _%field158736%_))
                         (let ((__tmp161077
                                (let ((_%sym158738%_ _%slot158735%_))
                                  (if (symbol? _%sym158738%_)
                                      (let ((_%sym158743%_ _%sym158738%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym158743%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym158738%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158733%_
                            __tmp161077
                            _%field158736%_))))
                      (__tmp161074
                       (let ((__tmp161075
                              (let ()
                                (declare (not safe))
                                (##length _%slots158729%_))))
                         (declare (not safe))
                         (##iota __tmp161075 '1))))
                  (declare (not safe))
                  (##for-each __tmp161076 _%slots158729%_ __tmp161074))
                _%slot-table158733%_))
             (_%flags158759%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields158761%_ '#())
             (_%properties158763%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots158729%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161078 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags158759%_
         __table::t
         _%fields158761%_
         __tmp161078
         _%slot-vector158731%_
         _%slot-table158757%_
         _%properties158763%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots158692%_ '(gcht immediate))
             (_%slot-vector158694%_ (list->vector (cons '#f _%slots158692%_)))
             (_%slot-table158720%_
              (let ((_%slot-table158696%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161081
                       (lambda (_%slot158698%_ _%field158699%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158696%_
                            _%slot158698%_
                            _%field158699%_))
                         (let ((__tmp161082
                                (let ((_%sym158701%_ _%slot158698%_))
                                  (if (symbol? _%sym158701%_)
                                      (let ((_%sym158706%_ _%sym158701%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym158706%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym158701%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158696%_
                            __tmp161082
                            _%field158699%_))))
                      (__tmp161079
                       (let ((__tmp161080
                              (let ()
                                (declare (not safe))
                                (##length _%slots158692%_))))
                         (declare (not safe))
                         (##iota __tmp161080 '1))))
                  (declare (not safe))
                  (##for-each __tmp161081 _%slots158692%_ __tmp161079))
                _%slot-table158696%_))
             (_%flags158722%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields158724%_ '#())
             (_%properties158726%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots158692%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161083 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags158722%_
         __gc-table::t
         _%fields158724%_
         __tmp161083
         _%slot-vector158694%_
         _%slot-table158720%_
         _%properties158726%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp161085 (list))
            (__tmp161084
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp161085
         '(table lock)
         __tmp161084
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args158689%_
        (apply make-instance locked-hash-table::t _%$args158689%_)))
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
      (let ((__tmp161087 (list))
            (__tmp161086
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp161087
         '(table key-check)
         __tmp161086
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args158686%_
        (apply make-instance checked-hash-table::t _%$args158686%_)))
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
      (let ((__tmp161089 (list hash-table::t))
            (__tmp161088 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp161089
         '()
         __tmp161088
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args158683%_
        (apply make-instance eq-hash-table::t _%$args158683%_)))
    (define eqv-hash-table::t
      (let ((__tmp161091 (list hash-table::t))
            (__tmp161090 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp161091
         '()
         __tmp161090
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args158680%_
        (apply make-instance eqv-hash-table::t _%$args158680%_)))
    (define symbol-hash-table::t
      (let ((__tmp161093 (list hash-table::t))
            (__tmp161092 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp161093
         '()
         __tmp161092
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args158677%_
        (apply make-instance symbol-hash-table::t _%$args158677%_)))
    (define string-hash-table::t
      (let ((__tmp161095 (list hash-table::t))
            (__tmp161094 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp161095
         '()
         __tmp161094
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args158674%_
        (apply make-instance string-hash-table::t _%$args158674%_)))
    (define immediate-hash-table::t
      (let ((__tmp161097 (list hash-table::t))
            (__tmp161096 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp161097
         '()
         __tmp161096
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args158671%_
        (apply make-instance immediate-hash-table::t _%$args158671%_)))
    (let* ((_%klass158634%_ hash-table::t)
           (_%id158637%_ 'HashTable::ref)
           (_%proc158640%_ raw-table-ref)
           (_%rebind?158643%_ '#f)
           (_%id158648%_ _%id158637%_)
           (_%proc158661%_ _%proc158640%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158634%_
       _%id158648%_
       _%proc158661%_
       _%rebind?158643%_))
    (let* ((_%klass158597%_ hash-table::t)
           (_%id158600%_ 'HashTable::set!)
           (_%proc158603%_ raw-table-set!)
           (_%rebind?158606%_ '#f)
           (_%id158611%_ _%id158600%_)
           (_%proc158624%_ _%proc158603%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158597%_
       _%id158611%_
       _%proc158624%_
       _%rebind?158606%_))
    (let* ((_%klass158560%_ hash-table::t)
           (_%id158563%_ 'HashTable::update!)
           (_%proc158566%_ raw-table-update!)
           (_%rebind?158569%_ '#f)
           (_%id158574%_ _%id158563%_)
           (_%proc158587%_ _%proc158566%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158560%_
       _%id158574%_
       _%proc158587%_
       _%rebind?158569%_))
    (let* ((_%klass158523%_ hash-table::t)
           (_%id158526%_ 'HashTable::delete!)
           (_%proc158529%_ raw-table-delete!)
           (_%rebind?158532%_ '#f)
           (_%id158537%_ _%id158526%_)
           (_%proc158550%_ _%proc158529%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158523%_
       _%id158537%_
       _%proc158550%_
       _%rebind?158532%_))
    (let* ((_%klass158486%_ hash-table::t)
           (_%id158489%_ 'HashTable::for-each)
           (_%proc158492%_ raw-table-for-each)
           (_%rebind?158495%_ '#f)
           (_%id158500%_ _%id158489%_)
           (_%proc158513%_ _%proc158492%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158486%_
       _%id158500%_
       _%proc158513%_
       _%rebind?158495%_))
    (let* ((_%klass158449%_ hash-table::t)
           (_%id158452%_ 'HashTable::length)
           (_%proc158455%_ &raw-table-count)
           (_%rebind?158458%_ '#f)
           (_%id158463%_ _%id158452%_)
           (_%proc158476%_ _%proc158455%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158449%_
       _%id158463%_
       _%proc158476%_
       _%rebind?158458%_))
    (let* ((_%klass158412%_ hash-table::t)
           (_%id158415%_ 'HashTable::copy)
           (_%proc158418%_ raw-table-copy)
           (_%rebind?158421%_ '#f)
           (_%id158426%_ _%id158415%_)
           (_%proc158439%_ _%proc158418%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158412%_
       _%id158426%_
       _%proc158439%_
       _%rebind?158421%_))
    (let* ((_%klass158375%_ hash-table::t)
           (_%id158378%_ 'HashTable::clear!)
           (_%proc158381%_ raw-table-clear!)
           (_%rebind?158384%_ '#f)
           (_%id158389%_ _%id158378%_)
           (_%proc158402%_ _%proc158381%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158375%_
       _%id158389%_
       _%proc158402%_
       _%rebind?158384%_))
    (let* ((_%klass158338%_ eq-hash-table::t)
           (_%id158341%_ 'HashTable::ref)
           (_%proc158344%_ eq-table-ref)
           (_%rebind?158347%_ '#f)
           (_%id158352%_ _%id158341%_)
           (_%proc158365%_ _%proc158344%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158338%_
       _%id158352%_
       _%proc158365%_
       _%rebind?158347%_))
    (let* ((_%klass158301%_ eq-hash-table::t)
           (_%id158304%_ 'HashTable::set!)
           (_%proc158307%_ eq-table-set!)
           (_%rebind?158310%_ '#f)
           (_%id158315%_ _%id158304%_)
           (_%proc158328%_ _%proc158307%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158301%_
       _%id158315%_
       _%proc158328%_
       _%rebind?158310%_))
    (let* ((_%klass158264%_ eq-hash-table::t)
           (_%id158267%_ 'HashTable::update!)
           (_%proc158270%_ eq-table-update!)
           (_%rebind?158273%_ '#f)
           (_%id158278%_ _%id158267%_)
           (_%proc158291%_ _%proc158270%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158264%_
       _%id158278%_
       _%proc158291%_
       _%rebind?158273%_))
    (let* ((_%klass158227%_ eq-hash-table::t)
           (_%id158230%_ 'HashTable::delete!)
           (_%proc158233%_ eq-table-delete!)
           (_%rebind?158236%_ '#f)
           (_%id158241%_ _%id158230%_)
           (_%proc158254%_ _%proc158233%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158227%_
       _%id158241%_
       _%proc158254%_
       _%rebind?158236%_))
    (let* ((_%klass158190%_ eqv-hash-table::t)
           (_%id158193%_ 'HashTable::ref)
           (_%proc158196%_ eqv-table-ref)
           (_%rebind?158199%_ '#f)
           (_%id158204%_ _%id158193%_)
           (_%proc158217%_ _%proc158196%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158190%_
       _%id158204%_
       _%proc158217%_
       _%rebind?158199%_))
    (let* ((_%klass158153%_ eqv-hash-table::t)
           (_%id158156%_ 'HashTable::set!)
           (_%proc158159%_ eqv-table-set!)
           (_%rebind?158162%_ '#f)
           (_%id158167%_ _%id158156%_)
           (_%proc158180%_ _%proc158159%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158153%_
       _%id158167%_
       _%proc158180%_
       _%rebind?158162%_))
    (let* ((_%klass158116%_ eqv-hash-table::t)
           (_%id158119%_ 'HashTable::update!)
           (_%proc158122%_ eqv-table-update!)
           (_%rebind?158125%_ '#f)
           (_%id158130%_ _%id158119%_)
           (_%proc158143%_ _%proc158122%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158116%_
       _%id158130%_
       _%proc158143%_
       _%rebind?158125%_))
    (let* ((_%klass158079%_ eqv-hash-table::t)
           (_%id158082%_ 'HashTable::delete!)
           (_%proc158085%_ eqv-table-delete!)
           (_%rebind?158088%_ '#f)
           (_%id158093%_ _%id158082%_)
           (_%proc158106%_ _%proc158085%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158079%_
       _%id158093%_
       _%proc158106%_
       _%rebind?158088%_))
    (let* ((_%klass158042%_ symbol-hash-table::t)
           (_%id158045%_ 'HashTable::ref)
           (_%proc158048%_ symbolic-table-ref)
           (_%rebind?158051%_ '#f)
           (_%id158056%_ _%id158045%_)
           (_%proc158069%_ _%proc158048%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158042%_
       _%id158056%_
       _%proc158069%_
       _%rebind?158051%_))
    (let* ((_%klass158005%_ symbol-hash-table::t)
           (_%id158008%_ 'HashTable::set!)
           (_%proc158011%_ symbolic-table-set!)
           (_%rebind?158014%_ '#f)
           (_%id158019%_ _%id158008%_)
           (_%proc158032%_ _%proc158011%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158005%_
       _%id158019%_
       _%proc158032%_
       _%rebind?158014%_))
    (let* ((_%klass157968%_ symbol-hash-table::t)
           (_%id157971%_ 'HashTable::update!)
           (_%proc157974%_ symbolic-table-update!)
           (_%rebind?157977%_ '#f)
           (_%id157982%_ _%id157971%_)
           (_%proc157995%_ _%proc157974%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157968%_
       _%id157982%_
       _%proc157995%_
       _%rebind?157977%_))
    (let* ((_%klass157931%_ symbol-hash-table::t)
           (_%id157934%_ 'HashTable::delete!)
           (_%proc157937%_ symbolic-table-delete!)
           (_%rebind?157940%_ '#f)
           (_%id157945%_ _%id157934%_)
           (_%proc157958%_ _%proc157937%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157931%_
       _%id157945%_
       _%proc157958%_
       _%rebind?157940%_))
    (let* ((_%klass157894%_ string-hash-table::t)
           (_%id157897%_ 'HashTable::ref)
           (_%proc157900%_ string-table-ref)
           (_%rebind?157903%_ '#f)
           (_%id157908%_ _%id157897%_)
           (_%proc157921%_ _%proc157900%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157894%_
       _%id157908%_
       _%proc157921%_
       _%rebind?157903%_))
    (let* ((_%klass157857%_ string-hash-table::t)
           (_%id157860%_ 'HashTable::set!)
           (_%proc157863%_ string-table-set!)
           (_%rebind?157866%_ '#f)
           (_%id157871%_ _%id157860%_)
           (_%proc157884%_ _%proc157863%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157857%_
       _%id157871%_
       _%proc157884%_
       _%rebind?157866%_))
    (let* ((_%klass157820%_ string-hash-table::t)
           (_%id157823%_ 'HashTable::update!)
           (_%proc157826%_ string-table-update!)
           (_%rebind?157829%_ '#f)
           (_%id157834%_ _%id157823%_)
           (_%proc157847%_ _%proc157826%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157820%_
       _%id157834%_
       _%proc157847%_
       _%rebind?157829%_))
    (let* ((_%klass157783%_ string-hash-table::t)
           (_%id157786%_ 'HashTable::delete!)
           (_%proc157789%_ string-table-delete!)
           (_%rebind?157792%_ '#f)
           (_%id157797%_ _%id157786%_)
           (_%proc157810%_ _%proc157789%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157783%_
       _%id157797%_
       _%proc157810%_
       _%rebind?157792%_))
    (let* ((_%klass157746%_ immediate-hash-table::t)
           (_%id157749%_ 'HashTable::ref)
           (_%proc157752%_ immediate-table-ref)
           (_%rebind?157755%_ '#f)
           (_%id157760%_ _%id157749%_)
           (_%proc157773%_ _%proc157752%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157746%_
       _%id157760%_
       _%proc157773%_
       _%rebind?157755%_))
    (let* ((_%klass157709%_ immediate-hash-table::t)
           (_%id157712%_ 'HashTable::set!)
           (_%proc157715%_ immediate-table-set!)
           (_%rebind?157718%_ '#f)
           (_%id157723%_ _%id157712%_)
           (_%proc157736%_ _%proc157715%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157709%_
       _%id157723%_
       _%proc157736%_
       _%rebind?157718%_))
    (let* ((_%klass157672%_ immediate-hash-table::t)
           (_%id157675%_ 'HashTable::update!)
           (_%proc157678%_ immediate-table-update!)
           (_%rebind?157681%_ '#f)
           (_%id157686%_ _%id157675%_)
           (_%proc157699%_ _%proc157678%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157672%_
       _%id157686%_
       _%proc157699%_
       _%rebind?157681%_))
    (let* ((_%klass157635%_ immediate-hash-table::t)
           (_%id157638%_ 'HashTable::delete!)
           (_%proc157641%_ immediate-table-delete!)
           (_%rebind?157644%_ '#f)
           (_%id157649%_ _%id157638%_)
           (_%proc157662%_ _%proc157641%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157635%_
       _%id157649%_
       _%proc157662%_
       _%rebind?157644%_))
    (let* ((_%klass157598%_ gc-hash-table::t)
           (_%id157601%_ 'HashTable::ref)
           (_%proc157604%_ gc-table-ref)
           (_%rebind?157607%_ '#f)
           (_%id157612%_ _%id157601%_)
           (_%proc157625%_ _%proc157604%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157598%_
       _%id157612%_
       _%proc157625%_
       _%rebind?157607%_))
    (let* ((_%klass157561%_ gc-hash-table::t)
           (_%id157564%_ 'HashTable::set!)
           (_%proc157567%_ gc-table-set!)
           (_%rebind?157570%_ '#f)
           (_%id157575%_ _%id157564%_)
           (_%proc157588%_ _%proc157567%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157561%_
       _%id157575%_
       _%proc157588%_
       _%rebind?157570%_))
    (let* ((_%klass157524%_ gc-hash-table::t)
           (_%id157527%_ 'HashTable::update!)
           (_%proc157530%_ gc-table-update!)
           (_%rebind?157533%_ '#f)
           (_%id157538%_ _%id157527%_)
           (_%proc157551%_ _%proc157530%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157524%_
       _%id157538%_
       _%proc157551%_
       _%rebind?157533%_))
    (let* ((_%klass157487%_ gc-hash-table::t)
           (_%id157490%_ 'HashTable::delete!)
           (_%proc157493%_ gc-table-delete!)
           (_%rebind?157496%_ '#f)
           (_%id157501%_ _%id157490%_)
           (_%proc157514%_ _%proc157493%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157487%_
       _%id157501%_
       _%proc157514%_
       _%rebind?157496%_))
    (let* ((_%klass157450%_ gc-hash-table::t)
           (_%id157453%_ 'HashTable::for-each)
           (_%proc157456%_ gc-table-for-each)
           (_%rebind?157459%_ '#f)
           (_%id157464%_ _%id157453%_)
           (_%proc157477%_ _%proc157456%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157450%_
       _%id157464%_
       _%proc157477%_
       _%rebind?157459%_))
    (let* ((_%klass157413%_ gc-hash-table::t)
           (_%id157416%_ 'HashTable::length)
           (_%proc157419%_ gc-table-length)
           (_%rebind?157422%_ '#f)
           (_%id157427%_ _%id157416%_)
           (_%proc157440%_ _%proc157419%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157413%_
       _%id157427%_
       _%proc157440%_
       _%rebind?157422%_))
    (let* ((_%klass157376%_ gc-hash-table::t)
           (_%id157379%_ 'HashTable::copy)
           (_%proc157382%_ gc-table-copy)
           (_%rebind?157385%_ '#f)
           (_%id157390%_ _%id157379%_)
           (_%proc157403%_ _%proc157382%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157376%_
       _%id157390%_
       _%proc157403%_
       _%rebind?157385%_))
    (let* ((_%klass157339%_ gc-hash-table::t)
           (_%id157342%_ 'HashTable::clear!)
           (_%proc157345%_ gc-table-clear!)
           (_%rebind?157348%_ '#f)
           (_%id157353%_ _%id157342%_)
           (_%proc157366%_ _%proc157345%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157339%_
       _%id157353%_
       _%proc157366%_
       _%rebind?157348%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref148600%_
      (lambda (_%self157260%_ _%key157262%_ _%default157263%_)
        (let* ((_%self157266%_ _%self157260%_)
               (_%key157275%_ _%key157262%_)
               (_%default157283%_ _%default157263%_))
          (let ((_%h157292%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157266%_ '1 '#f '#f)))
                (_%l157294%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157266%_ '2 '#f '#f))))
            (let ((__tmp161100
                   (lambda ()
                     (let ((_%self147052157298%_ _%l157294%_))
                       (declare (not safe))
                       (let ((_%object157301157306%_
                              (##unchecked-structure-ref
                               _%self147052157298%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157302157307%_
                              (##unchecked-structure-ref
                               _%self147052157298%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157302157307%_ _%object157301157306%_)))))
                  (__tmp161099
                   (lambda ()
                     (let* ((_%self146147157310%_ _%h157292%_)
                            (_%key157313%_ _%key157275%_)
                            (_%default157316%_ _%default157283%_))
                       (declare (not safe))
                       (let ((_%object157319157324%_
                              (##unchecked-structure-ref
                               _%self146147157310%_
                               '1
                               '#f
                               'ref))
                             (_%method157320157325%_
                              (##unchecked-structure-ref
                               _%self146147157310%_
                               '7
                               '#f
                               'ref)))
                         (_%method157320157325%_
                          _%object157319157324%_
                          _%key157313%_
                          _%default157316%_)))))
                  (__tmp161098
                   (lambda ()
                     (let ((_%self147343157328%_ _%l157294%_))
                       (declare (not safe))
                       (let ((_%object157331157336%_
                              (##unchecked-structure-ref
                               _%self147343157328%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157332157337%_
                              (##unchecked-structure-ref
                               _%self147343157328%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157332157337%_ _%object157331157336%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161100 __tmp161099 __tmp161098))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref148600%_
       '#f))
    (define _%locked-hash-table::HashTable::set!148602%_
      (lambda (_%self157058%_ _%key157060%_ _%value157061%_)
        (let* ((_%self157064%_ _%self157058%_)
               (_%key157073%_ _%key157060%_)
               (_%value157081%_ _%value157061%_))
          (let ((_%h157090%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157064%_ '1 '#f '#f)))
                (_%l157092%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157064%_ '2 '#f '#f))))
            (let ((__tmp161103
                   (lambda ()
                     (let ((_%self147634157096%_ _%l157092%_))
                       (declare (not safe))
                       (let ((_%object157099157104%_
                              (##unchecked-structure-ref
                               _%self147634157096%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157100157105%_
                              (##unchecked-structure-ref
                               _%self147634157096%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157100157105%_ _%object157099157104%_)))))
                  (__tmp161102
                   (lambda ()
                     (let* ((_%self146442157108%_ _%h157090%_)
                            (_%key157111%_ _%key157073%_)
                            (_%value157114%_ _%value157081%_))
                       (declare (not safe))
                       (let ((_%object157117157122%_
                              (##unchecked-structure-ref
                               _%self146442157108%_
                               '1
                               '#f
                               'set!))
                             (_%method157118157123%_
                              (##unchecked-structure-ref
                               _%self146442157108%_
                               '8
                               '#f
                               'set!)))
                         (_%method157118157123%_
                          _%object157117157122%_
                          _%key157111%_
                          _%value157114%_)))))
                  (__tmp161101
                   (lambda ()
                     (let ((_%self147925157126%_ _%l157092%_))
                       (declare (not safe))
                       (let ((_%object157129157134%_
                              (##unchecked-structure-ref
                               _%self147925157126%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157130157135%_
                              (##unchecked-structure-ref
                               _%self147925157126%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157130157135%_ _%object157129157134%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161103 __tmp161102 __tmp161101))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!148602%_
       '#f))
    (define _%locked-hash-table::HashTable::update!148604%_
      (lambda (_%self156844%_ _%key156846%_ _%update156847%_ _%default156848%_)
        (let* ((_%self156851%_ _%self156844%_)
               (_%key156860%_ _%key156846%_)
               (_%update156868%_ _%update156847%_)
               (_%default156876%_ _%default156848%_))
          (let ((_%h156885%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156851%_ '1 '#f '#f)))
                (_%l156887%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156851%_ '2 '#f '#f))))
            (let ((__tmp161106
                   (lambda ()
                     (let ((_%self147634156891%_ _%l156887%_))
                       (declare (not safe))
                       (let ((_%object156894156899%_
                              (##unchecked-structure-ref
                               _%self147634156891%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156895156900%_
                              (##unchecked-structure-ref
                               _%self147634156891%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156895156900%_ _%object156894156899%_)))))
                  (__tmp161105
                   (lambda ()
                     (let* ((_%self146737156903%_ _%h156885%_)
                            (_%key156906%_ _%key156860%_)
                            (_%proc156909%_ _%update156868%_)
                            (_%default156912%_ _%default156876%_))
                       (declare (not safe))
                       (let ((_%object156915156920%_
                              (##unchecked-structure-ref
                               _%self146737156903%_
                               '1
                               '#f
                               'update!))
                             (_%method156916156921%_
                              (##unchecked-structure-ref
                               _%self146737156903%_
                               '9
                               '#f
                               'update!)))
                         (_%method156916156921%_
                          _%object156915156920%_
                          _%key156906%_
                          _%proc156909%_
                          _%default156912%_)))))
                  (__tmp161104
                   (lambda ()
                     (let ((_%self147925156924%_ _%l156887%_))
                       (declare (not safe))
                       (let ((_%object156927156932%_
                              (##unchecked-structure-ref
                               _%self147925156924%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156928156933%_
                              (##unchecked-structure-ref
                               _%self147925156924%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156928156933%_ _%object156927156932%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161106 __tmp161105 __tmp161104))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!148604%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!148606%_
      (lambda (_%self156654%_ _%key156656%_)
        (let* ((_%self156659%_ _%self156654%_) (_%key156668%_ _%key156656%_))
          (let ((_%h156677%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156659%_ '1 '#f '#f)))
                (_%l156679%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156659%_ '2 '#f '#f))))
            (let ((__tmp161109
                   (lambda ()
                     (let ((_%self147634156683%_ _%l156679%_))
                       (declare (not safe))
                       (let ((_%object156686156691%_
                              (##unchecked-structure-ref
                               _%self147634156683%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156687156692%_
                              (##unchecked-structure-ref
                               _%self147634156683%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156687156692%_ _%object156686156691%_)))))
                  (__tmp161108
                   (lambda ()
                     (let* ((_%self145249156695%_ _%h156677%_)
                            (_%key156698%_ _%key156668%_))
                       (declare (not safe))
                       (let ((_%object156701156706%_
                              (##unchecked-structure-ref
                               _%self145249156695%_
                               '1
                               '#f
                               'delete!))
                             (_%method156702156707%_
                              (##unchecked-structure-ref
                               _%self145249156695%_
                               '4
                               '#f
                               'delete!)))
                         (_%method156702156707%_
                          _%object156701156706%_
                          _%key156698%_)))))
                  (__tmp161107
                   (lambda ()
                     (let ((_%self147925156710%_ _%l156679%_))
                       (declare (not safe))
                       (let ((_%object156713156718%_
                              (##unchecked-structure-ref
                               _%self147925156710%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156714156719%_
                              (##unchecked-structure-ref
                               _%self147925156710%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156714156719%_ _%object156713156718%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161109 __tmp161108 __tmp161107))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!148606%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each148608%_
      (lambda (_%self156464%_ _%proc156466%_)
        (let* ((_%self156469%_ _%self156464%_) (_%proc156478%_ _%proc156466%_))
          (let ((_%h156487%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156469%_ '1 '#f '#f)))
                (_%l156489%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156469%_ '2 '#f '#f))))
            (let ((__tmp161112
                   (lambda ()
                     (let ((_%self147052156493%_ _%l156489%_))
                       (declare (not safe))
                       (let ((_%object156496156501%_
                              (##unchecked-structure-ref
                               _%self147052156493%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method156497156502%_
                              (##unchecked-structure-ref
                               _%self147052156493%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method156497156502%_ _%object156496156501%_)))))
                  (__tmp161111
                   (lambda ()
                     (let* ((_%self145542156505%_ _%h156487%_)
                            (_%proc156508%_ _%proc156478%_))
                       (declare (not safe))
                       (let ((_%object156511156516%_
                              (##unchecked-structure-ref
                               _%self145542156505%_
                               '1
                               '#f
                               'for-each))
                             (_%method156512156517%_
                              (##unchecked-structure-ref
                               _%self145542156505%_
                               '5
                               '#f
                               'for-each)))
                         (_%method156512156517%_
                          _%object156511156516%_
                          _%proc156508%_)))))
                  (__tmp161110
                   (lambda ()
                     (let ((_%self147343156520%_ _%l156489%_))
                       (declare (not safe))
                       (let ((_%object156523156528%_
                              (##unchecked-structure-ref
                               _%self147343156520%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method156524156529%_
                              (##unchecked-structure-ref
                               _%self147343156520%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method156524156529%_ _%object156523156528%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161112 __tmp161111 __tmp161110))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each148608%_
       '#f))
    (define _%locked-hash-table::HashTable::length148610%_
      (lambda (_%self156279%_)
        (let ((_%self156283%_ _%self156279%_))
          (let ((_%h156293%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156283%_ '1 '#f '#f)))
                (_%l156295%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156283%_ '2 '#f '#f))))
            ((lambda (_%g156297156299%_)
               (let ((_%val156302%_ _%g156297156299%_))
                 (if (fixnum? _%val156302%_)
                     _%val156302%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val156302%_)
                       '#!void))))
             (let ((__tmp161115
                    (lambda ()
                      (let ((_%self147052156306%_ _%l156295%_))
                        (declare (not safe))
                        (let ((_%object156309156314%_
                               (##unchecked-structure-ref
                                _%self147052156306%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method156310156315%_
                               (##unchecked-structure-ref
                                _%self147052156306%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method156310156315%_ _%object156309156314%_)))))
                   (__tmp161114
                    (lambda ()
                      (let ((_%self145853156318%_ _%h156293%_))
                        (declare (not safe))
                        (let ((_%object156321156326%_
                               (##unchecked-structure-ref
                                _%self145853156318%_
                                '1
                                '#f
                                'length))
                              (_%method156322156327%_
                               (##unchecked-structure-ref
                                _%self145853156318%_
                                '6
                                '#f
                                'length)))
                          (_%method156322156327%_ _%object156321156326%_)))))
                   (__tmp161113
                    (lambda ()
                      (let ((_%self147343156330%_ _%l156295%_))
                        (declare (not safe))
                        (let ((_%object156333156338%_
                               (##unchecked-structure-ref
                                _%self147343156330%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method156334156339%_
                               (##unchecked-structure-ref
                                _%self147343156330%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method156334156339%_ _%object156333156338%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp161115 __tmp161114 __tmp161113)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length148610%_
       '#f))
    (define _%locked-hash-table::HashTable::copy148612%_
      (lambda (_%self156098%_)
        (let ((_%self156102%_ _%self156098%_))
          (let ((_%h156112%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156102%_ '1 '#f '#f)))
                (_%l156114%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156102%_ '2 '#f '#f))))
            (let ((_%$obj156153%_
                   (let ((__tmp161118
                          (lambda ()
                            (let ((_%self147052156118%_ _%l156114%_))
                              (declare (not safe))
                              (let ((_%object156121156126%_
                                     (##unchecked-structure-ref
                                      _%self147052156118%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method156122156127%_
                                     (##unchecked-structure-ref
                                      _%self147052156118%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method156122156127%_
                                 _%object156121156126%_)))))
                         (__tmp161117
                          (lambda ()
                            (let ((_%self144955156130%_ _%h156112%_))
                              (declare (not safe))
                              (let ((_%object156133156138%_
                                     (##unchecked-structure-ref
                                      _%self144955156130%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method156134156139%_
                                     (##unchecked-structure-ref
                                      _%self144955156130%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method156134156139%_
                                 _%object156133156138%_)))))
                         (__tmp161116
                          (lambda ()
                            (let ((_%self147343156142%_ _%l156114%_))
                              (declare (not safe))
                              (let ((_%object156145156150%_
                                     (##unchecked-structure-ref
                                      _%self147343156142%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method156146156151%_
                                     (##unchecked-structure-ref
                                      _%self147343156142%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method156146156151%_
                                 _%object156145156150%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp161118 __tmp161117 __tmp161116))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj156153%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj156153%_)))
                       '#t)
                  _%$obj156153%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj156153%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy148612%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!148614%_
      (lambda (_%self155920%_)
        (let ((_%self155924%_ _%self155920%_))
          (let ((_%h155934%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155924%_ '1 '#f '#f)))
                (_%l155936%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155924%_ '2 '#f '#f))))
            (let ((__tmp161121
                   (lambda ()
                     (let ((_%self147634155940%_ _%l155936%_))
                       (declare (not safe))
                       (let ((_%object155943155948%_
                              (##unchecked-structure-ref
                               _%self147634155940%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method155944155949%_
                              (##unchecked-structure-ref
                               _%self147634155940%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method155944155949%_ _%object155943155948%_)))))
                  (__tmp161120
                   (lambda ()
                     (let ((_%self144663155952%_ _%h155934%_))
                       (declare (not safe))
                       (let ((_%object155955155960%_
                              (##unchecked-structure-ref
                               _%self144663155952%_
                               '1
                               '#f
                               'clear!))
                             (_%method155956155961%_
                              (##unchecked-structure-ref
                               _%self144663155952%_
                               '2
                               '#f
                               'clear!)))
                         (_%method155956155961%_ _%object155955155960%_)))))
                  (__tmp161119
                   (lambda ()
                     (let ((_%self147925155964%_ _%l155936%_))
                       (declare (not safe))
                       (let ((_%object155967155972%_
                              (##unchecked-structure-ref
                               _%self147925155964%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method155968155973%_
                              (##unchecked-structure-ref
                               _%self147925155964%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method155968155973%_ _%object155967155972%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161121 __tmp161120 __tmp161119))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!148614%_
       '#f))
    (let* ((_%klass155760%_ (macro-type-mutex))
           (_%id155763%_ 'Locker::read-lock!)
           (_%proc155766%_ mutex-lock!)
           (_%rebind?155769%_ '#f)
           (_%id155774%_ _%id155763%_)
           (_%proc155787%_ _%proc155766%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155760%_
       _%id155774%_
       _%proc155787%_
       _%rebind?155769%_))
    (let* ((_%klass155723%_ (macro-type-mutex))
           (_%id155726%_ 'Locker::read-unlock!)
           (_%proc155729%_ mutex-unlock!)
           (_%rebind?155732%_ '#f)
           (_%id155737%_ _%id155726%_)
           (_%proc155750%_ _%proc155729%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155723%_
       _%id155737%_
       _%proc155750%_
       _%rebind?155732%_))
    (let* ((_%klass155686%_ (macro-type-mutex))
           (_%id155689%_ 'Locker::write-lock!)
           (_%proc155692%_ mutex-lock!)
           (_%rebind?155695%_ '#f)
           (_%id155700%_ _%id155689%_)
           (_%proc155713%_ _%proc155692%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155686%_
       _%id155700%_
       _%proc155713%_
       _%rebind?155695%_))
    (let* ((_%klass155649%_ (macro-type-mutex))
           (_%id155652%_ 'Locker::write-unlock!)
           (_%proc155655%_ mutex-unlock!)
           (_%rebind?155658%_ '#f)
           (_%id155663%_ _%id155652%_)
           (_%proc155676%_ _%proc155655%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155649%_
       _%id155663%_
       _%proc155676%_
       _%rebind?155658%_))
    (define _%checked-hash-table::HashTable::ref148825%_
      (lambda (_%self155590%_ _%key155591%_ _%default155592%_)
        (let* ((_%self155595%_ _%self155590%_)
               (_%key155604%_ _%key155591%_)
               (_%default155612%_ _%default155592%_))
          (declare (not safe))
          (let ((_%h155623%_
                 (##unchecked-structure-ref _%self155595%_ '1 '#f '#f))
                (_%key?155625%_
                 (##unchecked-structure-ref _%self155595%_ '2 '#f '#f)))
            (if ((lambda (_%key?155628%_ _%key155629%_ _%default155630%_)
                   (_%key?155628%_ _%key155629%_))
                 _%key?155625%_
                 _%key155604%_
                 _%default155612%_)
                (let* ((_%self146147155632%_ _%h155623%_)
                       (_%key155635%_ _%key155604%_)
                       (_%default155638%_ _%default155612%_))
                  (declare (not safe))
                  (let ((_%object155641155646%_
                         (##unchecked-structure-ref
                          _%self146147155632%_
                          '1
                          '#f
                          'ref))
                        (_%method155642155647%_
                         (##unchecked-structure-ref
                          _%self146147155632%_
                          '7
                          '#f
                          'ref)))
                    (_%method155642155647%_
                     _%object155641155646%_
                     _%key155635%_
                     _%default155638%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key155604%_ (cons _%default155612%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref148825%_
       '#f))
    (define _%checked-hash-table::HashTable::set!148827%_
      (lambda (_%self155408%_ _%key155409%_ _%value155410%_)
        (let* ((_%self155413%_ _%self155408%_)
               (_%key155422%_ _%key155409%_)
               (_%value155430%_ _%value155410%_))
          (declare (not safe))
          (let ((_%h155441%_
                 (##unchecked-structure-ref _%self155413%_ '1 '#f '#f))
                (_%key?155443%_
                 (##unchecked-structure-ref _%self155413%_ '2 '#f '#f)))
            (if ((lambda (_%key?155446%_ _%key155447%_ _%value155448%_)
                   (_%key?155446%_ _%key155447%_))
                 _%key?155443%_
                 _%key155422%_
                 _%value155430%_)
                (let* ((_%self146442155450%_ _%h155441%_)
                       (_%key155453%_ _%key155422%_)
                       (_%value155456%_ _%value155430%_))
                  (declare (not safe))
                  (let ((_%object155459155464%_
                         (##unchecked-structure-ref
                          _%self146442155450%_
                          '1
                          '#f
                          'set!))
                        (_%method155460155465%_
                         (##unchecked-structure-ref
                          _%self146442155450%_
                          '8
                          '#f
                          'set!)))
                    (_%method155460155465%_
                     _%object155459155464%_
                     _%key155453%_
                     _%value155456%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key155422%_ (cons _%value155430%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!148827%_
       '#f))
    (define _%checked-hash-table::HashTable::update!148829%_
      (lambda (_%self155213%_ _%key155214%_ _%update155215%_ _%default155216%_)
        (let* ((_%self155219%_ _%self155213%_)
               (_%key155228%_ _%key155214%_)
               (_%update155236%_ _%update155215%_)
               (_%default155244%_ _%default155216%_))
          (declare (not safe))
          (let ((_%h155255%_
                 (##unchecked-structure-ref _%self155219%_ '1 '#f '#f))
                (_%key?155257%_
                 (##unchecked-structure-ref _%self155219%_ '2 '#f '#f)))
            (if ((lambda (_%key?155260%_
                          _%key155261%_
                          _%update155262%_
                          _%default155263%_)
                   (_%key?155260%_ _%key155261%_))
                 _%key?155257%_
                 _%key155228%_
                 _%update155236%_
                 _%default155244%_)
                (let* ((_%self146737155265%_ _%h155255%_)
                       (_%key155268%_ _%key155228%_)
                       (_%proc155271%_ _%update155236%_)
                       (_%default155274%_ _%default155244%_))
                  (declare (not safe))
                  (let ((_%object155277155282%_
                         (##unchecked-structure-ref
                          _%self146737155265%_
                          '1
                          '#f
                          'update!))
                        (_%method155278155283%_
                         (##unchecked-structure-ref
                          _%self146737155265%_
                          '9
                          '#f
                          'update!)))
                    (_%method155278155283%_
                     _%object155277155282%_
                     _%key155268%_
                     _%proc155271%_
                     _%default155274%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key155228%_
                         (cons _%update155236%_ (cons _%default155244%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!148829%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!148831%_
      (lambda (_%self155044%_ _%key155045%_)
        (let* ((_%self155048%_ _%self155044%_) (_%key155057%_ _%key155045%_))
          (declare (not safe))
          (let ((_%h155068%_
                 (##unchecked-structure-ref _%self155048%_ '1 '#f '#f))
                (_%key?155070%_
                 (##unchecked-structure-ref _%self155048%_ '2 '#f '#f)))
            (if ((lambda (_%key?155073%_ _%key155074%_)
                   (_%key?155073%_ _%key155074%_))
                 _%key?155070%_
                 _%key155057%_)
                (let* ((_%self145249155076%_ _%h155068%_)
                       (_%key155079%_ _%key155057%_))
                  (declare (not safe))
                  (let ((_%object155082155087%_
                         (##unchecked-structure-ref
                          _%self145249155076%_
                          '1
                          '#f
                          'delete!))
                        (_%method155083155088%_
                         (##unchecked-structure-ref
                          _%self145249155076%_
                          '4
                          '#f
                          'delete!)))
                    (_%method155083155088%_
                     _%object155082155087%_
                     _%key155079%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key155057%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!148831%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each148833%_
      (lambda (_%self154875%_ _%proc154876%_)
        (let* ((_%self154879%_ _%self154875%_) (_%proc154888%_ _%proc154876%_))
          (declare (not safe))
          (let ((_%h154899%_
                 (##unchecked-structure-ref _%self154879%_ '1 '#f '#f))
                (_%key?154901%_
                 (##unchecked-structure-ref _%self154879%_ '2 '#f '#f)))
            (if ((lambda (_%key?154904%_ _%proc154905%_) '#t)
                 _%key?154901%_
                 _%proc154888%_)
                (let* ((_%self145542154907%_ _%h154899%_)
                       (_%proc154910%_ _%proc154888%_))
                  (declare (not safe))
                  (let ((_%object154913154918%_
                         (##unchecked-structure-ref
                          _%self145542154907%_
                          '1
                          '#f
                          'for-each))
                        (_%method154914154919%_
                         (##unchecked-structure-ref
                          _%self145542154907%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154914154919%_
                     _%object154913154918%_
                     _%proc154910%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc154888%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each148833%_
       '#f))
    (define _%checked-hash-table::HashTable::length148835%_
      (lambda (_%self154721%_)
        (let ((_%self154724%_ _%self154721%_))
          (declare (not safe))
          (let ((_%h154736%_
                 (##unchecked-structure-ref _%self154724%_ '1 '#f '#f))
                (_%key?154738%_
                 (##unchecked-structure-ref _%self154724%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145853154741%_ _%h154736%_))
                  (declare (not safe))
                  (let ((_%object154744154749%_
                         (##unchecked-structure-ref
                          _%self145853154741%_
                          '1
                          '#f
                          'length))
                        (_%method154745154750%_
                         (##unchecked-structure-ref
                          _%self145853154741%_
                          '6
                          '#f
                          'length)))
                    (_%method154745154750%_ _%object154744154749%_)))
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
       _%checked-hash-table::HashTable::length148835%_
       '#f))
    (define _%checked-hash-table::HashTable::copy148837%_
      (lambda (_%self154567%_)
        (let ((_%self154570%_ _%self154567%_))
          (declare (not safe))
          (let ((_%h154582%_
                 (##unchecked-structure-ref _%self154570%_ '1 '#f '#f))
                (_%key?154584%_
                 (##unchecked-structure-ref _%self154570%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self144955154587%_ _%h154582%_))
                  (declare (not safe))
                  (let ((_%object154590154595%_
                         (##unchecked-structure-ref
                          _%self144955154587%_
                          '1
                          '#f
                          'copy))
                        (_%method154591154596%_
                         (##unchecked-structure-ref
                          _%self144955154587%_
                          '3
                          '#f
                          'copy)))
                    (_%method154591154596%_ _%object154590154595%_)))
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
       _%checked-hash-table::HashTable::copy148837%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!148839%_
      (lambda (_%self154413%_)
        (let ((_%self154416%_ _%self154413%_))
          (declare (not safe))
          (let ((_%h154428%_
                 (##unchecked-structure-ref _%self154416%_ '1 '#f '#f))
                (_%key?154430%_
                 (##unchecked-structure-ref _%self154416%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self144663154433%_ _%h154428%_))
                  (declare (not safe))
                  (let ((_%object154436154441%_
                         (##unchecked-structure-ref
                          _%self144663154433%_
                          '1
                          '#f
                          'clear!))
                        (_%method154437154442%_
                         (##unchecked-structure-ref
                          _%self144663154433%_
                          '2
                          '#f
                          'clear!)))
                    (_%method154437154442%_ _%object154436154441%_)))
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
       _%checked-hash-table::HashTable::clear!148839%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table154283%_
               _%count154284%_
               _%free154285%_
               _%hash154286%_
               _%test154287%_
               _%seed154288%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table154283%_
           _%count154284%_
           _%free154285%_
           _%hash154286%_
           _%test154287%_
           _%seed154288%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords153693%_
               _%size-hint153683153694%_
               _%seed153684153695%_
               _%test153685153696%_
               _%hash153686153697%_
               _%lock153687153698%_
               _%check153688153699%_
               _%weak-keys153689153700%_
               _%weak-values153690153701%_)
        (let* ((_%size-hint153703%_
                (if (eq? _%size-hint153683153694%_ absent-value)
                    '#f
                    _%size-hint153683153694%_))
               (_%seed153705%_
                (if (eq? _%seed153684153695%_ absent-value)
                    '#f
                    _%seed153684153695%_))
               (_%test153707%_
                (if (eq? _%test153685153696%_ absent-value)
                    equal?
                    _%test153685153696%_))
               (_%hash153709%_
                (if (eq? _%hash153686153697%_ absent-value)
                    '#f
                    _%hash153686153697%_))
               (_%lock153711%_
                (if (eq? _%lock153687153698%_ absent-value)
                    '#f
                    _%lock153687153698%_))
               (_%check153713%_
                (if (eq? _%check153688153699%_ absent-value)
                    '#f
                    _%check153688153699%_))
               (_%weak-keys153715%_
                (if (eq? _%weak-keys153689153700%_ absent-value)
                    '#f
                    _%weak-keys153689153700%_))
               (_%weak-values153717%_
                (if (eq? _%weak-values153690153701%_ absent-value)
                    '#f
                    _%weak-values153690153701%_)))
          (letrec ((_%table-seed153720%_
                    (lambda ()
                      (if (fixnum? _%seed153705%_)
                          _%seed153705%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock153864%_
                    (lambda (_%ht154251%_)
                      (let ((_%ht154254%_ _%ht154251%_))
                        (if _%lock153711%_
                            (let ((_%$obj154266%_
                                   (let ((__tmp161122
                                          (let ((_%$obj154263%_
                                                 _%lock153711%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj154263%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj154263%_)))
                                                     '#t)
                                                _%$obj154263%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj154263%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht154254%_
                                      __tmp161122))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154266%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154266%_)))
                                       '#t)
                                  _%$obj154266%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154266%_))))
                            _%ht154254%_))))
                   (_%wrap-lock153865%_
                    (lambda (_%ht154239%_)
                      (let ((_%ht154242%_ _%ht154239%_))
                        (_%__wrap-lock153864%_ _%ht154242%_))))
                   (_%__wrap-checked153987%_
                    (lambda (_%ht154223%_ _%implicit154224%_)
                      (let ((_%ht154227%_ _%ht154223%_))
                        (if _%check153713%_
                            (let ((_%$obj154236%_
                                   (let ((__tmp161123
                                          (if (procedure? _%check153713%_)
                                              _%check153713%_
                                              _%implicit154224%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht154227%_
                                      __tmp161123))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154236%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154236%_)))
                                       '#t)
                                  _%$obj154236%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154236%_))))
                            _%ht154227%_))))
                   (_%wrap-checked153988%_
                    (lambda (_%ht154210%_ _%implicit154211%_)
                      (let ((_%ht154214%_ _%ht154210%_))
                        (_%__wrap-checked153987%_
                         _%ht154214%_
                         _%implicit154211%_))))
                   (_%make153989%_
                    (lambda (_%kons154158%_
                             _%key?154159%_
                             _%hash154160%_
                             _%test154161%_)
                      (let* ((_%size154164%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint153703%_)))
                             (_%table154166%_
                              (let ((__tmp161124 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size154164%_ __tmp161124)))
                             (_%ht154171%_
                              (let ((_%$obj154168%_
                                     (_%kons154158%_
                                      _%table154166%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size154164%_ '2))
                                      _%hash154160%_
                                      _%test154161%_
                                      (_%table-seed153720%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154168%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154168%_)))
                                         '#t)
                                    _%$obj154168%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154168%_)))))
                             (_%ht154193%_
                              (let* ((_%ht154174%_ _%ht154171%_)
                                     (_%ht154178%_ _%ht154174%_))
                                (_%__wrap-lock153864%_ _%ht154178%_)))
                             (_%implicit154196%_ _%key?154159%_)
                             (_%ht154200%_ _%ht154193%_))
                        (_%__wrap-checked153987%_
                         _%ht154200%_
                         _%implicit154196%_))))
                   (_%make-gc-hash-table153990%_
                    (lambda ()
                      (let* ((_%ht154123%_
                              (let ((_%$obj154120%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint153703%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154120%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154120%_)))
                                         '#t)
                                    _%$obj154120%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154120%_)))))
                             (_%ht154141%_
                              (let* ((_%ht154125%_ _%ht154123%_)
                                     (_%ht154129%_ _%ht154125%_))
                                (_%__wrap-lock153864%_ _%ht154129%_)))
                             (_%implicit154144%_ true)
                             (_%ht154148%_ _%ht154141%_))
                        (_%__wrap-checked153987%_
                         _%ht154148%_
                         _%implicit154144%_))))
                   (_%make-gambit-table153991%_
                    (lambda ()
                      (let* ((_%size154060%_
                              (let ((_%$e154057%_ _%size-hint153703%_))
                                (if _%$e154057%_
                                    _%$e154057%_
                                    (macro-absent-obj))))
                             (_%test154065%_
                              (let ((_%$e154062%_ _%test153707%_))
                                (if _%$e154062%_ _%$e154062%_ equal?)))
                             (_%hash154073%_
                              (let ((_%$e154067%_ _%hash153709%_))
                                (if _%$e154067%_
                                    _%$e154067%_
                                    (if (eq? _%test154065%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test154065%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht154078%_
                              (let ((_%$obj154075%_
                                     (make-table
                                      'size:
                                      _%size154060%_
                                      'test:
                                      _%test154065%_
                                      'hash:
                                      _%hash154073%_
                                      'weak-keys:
                                      _%weak-keys153715%_
                                      'weak-values:
                                      _%weak-values153717%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154075%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154075%_)))
                                         '#t)
                                    _%$obj154075%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154075%_)))))
                             (_%ht154101%_
                              (let* ((_%ht154081%_ _%ht154078%_)
                                     (_%ht154085%_ _%ht154081%_))
                                (_%__wrap-lock153864%_ _%ht154085%_)))
                             (_%implicit154104%_ true)
                             (_%ht154108%_ _%ht154101%_))
                        (_%__wrap-checked153987%_
                         _%ht154108%_
                         _%implicit154104%_)))))
            (if (or _%weak-keys153715%_ _%weak-values153717%_)
                (_%make-gambit-table153991%_)
                (if (and (or (eq? _%test153707%_ eq?)
                             (eq? _%test153707%_ ##eq?))
                         (or (not _%hash153709%_)
                             (eq? _%hash153709%_ eq?-hash)
                             (eq? _%hash153709%_ eq-hash))
                         (not _%seed153705%_))
                    (_%make-gc-hash-table153990%_)
                    (if (and (or (eq? _%test153707%_ eq?)
                                 (eq? _%test153707%_ ##eq?))
                             (or (not _%hash153709%_)
                                 (eq? _%hash153709%_ eq?-hash)
                                 (eq? _%hash153709%_ eq-hash)))
                        (_%make153989%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test153707%_ eqv?)
                                     (eq? _%test153707%_ ##eqv?))
                                 (or (not _%hash153709%_)
                                     (eq? _%hash153709%_ eqv?-hash)
                                     (eq? _%hash153709%_ eqv-hash)))
                            (_%make153989%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test153707%_ eq?)
                                         (eq? _%test153707%_ ##eq?))
                                     (or (eq? _%hash153709%_ symbolic-hash)
                                         (eq? _%hash153709%_ ##symbol-hash)))
                                (_%make153989%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test153707%_ eq?)
                                             (eq? _%test153707%_ ##eq?))
                                         (eq? _%hash153709%_ immediate-hash))
                                    (_%make153989%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test153707%_ equal?)
                                                 (eq? _%test153707%_ ##equal?)
                                                 (eq? _%test153707%_ string=?)
                                                 (eq? _%test153707%_
                                                      ##string=?))
                                             (or (eq? _%hash153709%_
                                                      string-hash)
                                                 (eq? _%hash153709%_
                                                      ##string=?-hash)))
                                        (_%make153989%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test153707%_ equal?)
                                                 (not _%hash153709%_))
                                            (_%make153989%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test153707%_)
                                                (if (procedure? _%hash153709%_)
                                                    (_%make153989%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash153709%_
                                                     _%test153707%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash153709%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test153707%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords154273%_ . _%args154274%_)
        (apply make-hash-table__%
               _%@@keywords154273%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154273%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154273%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154273%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154273%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154273%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154273%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154273%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154273%_
                  'weak-values:
                  absent-value))
               _%args154274%_)))
    (define make-hash-table
      (lambda _%args153691154280%_
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
               _%args153691154280%_)))
    (define make-hash-table-eq
      (lambda _%args153680%_
        (apply make-hash-table 'test: eq? _%args153680%_)))
    (define make-hash-table-eqv
      (lambda _%args153678%_
        (apply make-hash-table 'test: eqv? _%args153678%_)))
    (define make-hash-table-symbolic
      (lambda _%args153676%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args153676%_)))
    (define make-hash-table-string
      (lambda _%args153674%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args153674%_)))
    (define make-hash-table-immediate
      (lambda _%args153672%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args153672%_)))
    (define list->hash-table
      (lambda (_%lst153669%_ . _%args153670%_)
        (list->hash-table!
         _%lst153669%_
         (apply make-hash-table
                'size:
                (length _%lst153669%_)
                _%args153670%_))))
    (define list->hash-table-eq
      (lambda (_%lst153666%_ . _%args153667%_)
        (list->hash-table!
         _%lst153666%_
         (apply make-hash-table-eq
                'size:
                (length _%lst153666%_)
                _%args153667%_))))
    (define list->hash-table-eqv
      (lambda (_%lst153663%_ . _%args153664%_)
        (list->hash-table!
         _%lst153663%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst153663%_)
                _%args153664%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst153660%_ . _%args153661%_)
        (list->hash-table!
         _%lst153660%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst153660%_)
                _%args153661%_))))
    (define list->hash-table-string
      (lambda (_%lst153657%_ . _%args153658%_)
        (list->hash-table!
         _%lst153657%_
         (apply make-hash-table-string
                'size:
                (length _%lst153657%_)
                _%args153658%_))))
    (define list->hash-table-immediate
      (lambda (_%lst153654%_ . _%args153655%_)
        (list->hash-table!
         _%lst153654%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst153654%_)
                _%args153655%_))))
    (define list->hash-table!
      (lambda (_%lst153605%_ _%h153606%_)
        (for-each
         (lambda (_%el153608%_)
           (let* ((_%el153609153616%_ _%el153608%_)
                  (_%E153611153619%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el153609153616%_
                              '([k . v])))
                     '#!void))
                  (_%K153612153642%_
                   (lambda (_%v153622%_ _%k153623%_)
                     (let* ((_%self146442153625%_ _%h153606%_)
                            (_%key153628%_ _%k153623%_)
                            (_%value153631%_ _%v153622%_))
                       (declare (not safe))
                       (let ((_%object153634153639%_
                              (##unchecked-structure-ref
                               _%self146442153625%_
                               '1
                               '#f
                               'set!))
                             (_%method153635153640%_
                              (##unchecked-structure-ref
                               _%self146442153625%_
                               '8
                               '#f
                               'set!)))
                         (_%method153635153640%_
                          _%object153634153639%_
                          _%key153628%_
                          _%value153631%_))))))
             (if (pair? _%el153609153616%_)
                 (let ((_%hd153613153645%_
                        (let ()
                          (declare (not safe))
                          (##car _%el153609153616%_)))
                       (_%tl153614153647%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el153609153616%_))))
                   (let* ((_%k153650%_ _%hd153613153645%_)
                          (_%v153652%_ _%tl153614153647%_))
                     (_%K153612153642%_ _%v153652%_ _%k153650%_)))
                 (_%E153611153619%_))))
         _%lst153605%_)
        _%h153606%_))
    (define plist->hash-table
      (lambda (_%lst153602%_ . _%args153603%_)
        (plist->hash-table!
         _%lst153602%_
         (apply make-hash-table
                'size:
                (length _%lst153602%_)
                _%args153603%_))))
    (define plist->hash-table-eq
      (lambda (_%lst153599%_ . _%args153600%_)
        (plist->hash-table!
         _%lst153599%_
         (apply make-hash-table-eq
                'size:
                (length _%lst153599%_)
                _%args153600%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst153596%_ . _%args153597%_)
        (plist->hash-table!
         _%lst153596%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst153596%_)
                _%args153597%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst153593%_ . _%args153594%_)
        (plist->hash-table!
         _%lst153593%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst153593%_)
                _%args153594%_))))
    (define plist->hash-table-string
      (lambda (_%lst153590%_ . _%args153591%_)
        (plist->hash-table!
         _%lst153590%_
         (apply make-hash-table-string
                'size:
                (length _%lst153590%_)
                _%args153591%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst153587%_ . _%args153588%_)
        (plist->hash-table!
         _%lst153587%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst153587%_)
                _%args153588%_))))
    (define plist->hash-table!
      (lambda (_%lst153510%_ _%h153511%_)
        (let _%loop153513%_ ((_%rest153515%_ _%lst153510%_))
          (let* ((_%rest153516153528%_ _%rest153515%_)
                 (_%else153519153536%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst153510%_)))))
            (let ((_%K153522153568%_
                   (lambda (_%rest153547%_ _%val153548%_ _%key153549%_)
                     (let* ((_%self146442153551%_ _%h153511%_)
                            (_%key153554%_ _%key153549%_)
                            (_%value153557%_ _%val153548%_))
                       (declare (not safe))
                       (let ((_%object153560153565%_
                              (##unchecked-structure-ref
                               _%self146442153551%_
                               '1
                               '#f
                               'set!))
                             (_%method153561153566%_
                              (##unchecked-structure-ref
                               _%self146442153551%_
                               '8
                               '#f
                               'set!)))
                         (_%method153561153566%_
                          _%object153560153565%_
                          _%key153554%_
                          _%value153557%_)))
                     (_%loop153513%_ _%rest153547%_)))
                  (_%K153521153541%_ (lambda () _%h153511%_)))
              (let ((_%try-match153518153544%_
                     (lambda ()
                       (if (null? _%rest153516153528%_)
                           (_%K153521153541%_)
                           (_%else153519153536%_)))))
                (if (pair? _%rest153516153528%_)
                    (let ((_%tl153524153573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest153516153528%_)))
                          (_%hd153523153571%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest153516153528%_))))
                      (if (pair? _%tl153524153573%_)
                          (let ((_%tl153526153580%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl153524153573%_)))
                                (_%hd153525153578%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl153524153573%_))))
                            (let ((_%key153576%_ _%hd153523153571%_)
                                  (_%val153583%_ _%hd153525153578%_)
                                  (_%rest153585%_ _%tl153526153580%_))
                              (_%K153522153568%_
                               _%rest153585%_
                               _%val153583%_
                               _%key153576%_)))
                          (_%else153519153536%_)))
                    (_%try-match153518153544%_))))))))
    (define __hash-length
      (lambda (_%h153459%_)
        (let* ((_%h153462%_ _%h153459%_)
               (_%self145854153471%_ _%h153462%_)
               (_%self145854153478%_
                (let ((_%$obj153475%_ _%self145854153471%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153475%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153475%_)))
                           '#t)
                      _%$obj153475%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153475%_)))))
               (_%self145854153480%_ _%self145854153478%_))
          (if __DEBUG
              (let ((_%val153500%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153492153497%_
                              (##unchecked-structure-ref
                               _%self145854153480%_
                               '1
                               '#f
                               'length))
                             (_%method153493153498%_
                              (##unchecked-structure-ref
                               _%self145854153480%_
                               '6
                               '#f
                               'length)))
                         (_%method153493153498%_ _%object153492153497%_)))))
                (if (fixnum? _%val153500%_)
                    _%val153500%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val153500%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object153502153507%_
                       (##unchecked-structure-ref
                        _%self145854153480%_
                        '1
                        '#f
                        'length))
                      (_%method153503153508%_
                       (##unchecked-structure-ref
                        _%self145854153480%_
                        '6
                        '#f
                        'length)))
                  (_%method153503153508%_ _%object153502153507%_)))))))
    (define hash-length
      (lambda (_%h149114%_)
        (let* ((_%h149120%_
                (let ((_%$obj149117%_ _%h149114%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149117%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149117%_)))
                           '#t)
                      _%$obj149117%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149117%_)))))
               (_%h149122%_ _%h149120%_))
          (__hash-length _%h149122%_))))
    (define __hash-ref__%
      (lambda (_%h153387%_ _%key153388%_ _%default153389%_)
        (let* ((_%h153392%_ _%h153387%_)
               (_%result153445%_
                (let* ((_%self146148153401%_ _%h153392%_)
                       (_%key153404%_ _%key153388%_)
                       (_%default153407%_ _%default153389%_)
                       (_%self146148153414%_
                        (let ((_%$obj153411%_ _%self146148153401%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153411%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153411%_)))
                                   '#t)
                              _%$obj153411%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153411%_)))))
                       (_%self146148153416%_ _%self146148153414%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object153430153435%_
                               (##unchecked-structure-ref
                                _%self146148153416%_
                                '1
                                '#f
                                'ref))
                              (_%method153431153436%_
                               (##unchecked-structure-ref
                                _%self146148153416%_
                                '7
                                '#f
                                'ref)))
                          (_%method153431153436%_
                           _%object153430153435%_
                           _%key153404%_
                           _%default153407%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153437153442%_
                               (##unchecked-structure-ref
                                _%self146148153416%_
                                '1
                                '#f
                                'ref))
                              (_%method153438153443%_
                               (##unchecked-structure-ref
                                _%self146148153416%_
                                '7
                                '#f
                                'ref)))
                          (_%method153438153443%_
                           _%object153437153442%_
                           _%key153404%_
                           _%default153407%_)))))))
          (if (eq? _%result153445%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h153392%_
               'key:
               _%key153388%_)
              _%result153445%_))))
    (define __hash-ref__0
      (lambda (_%h153450%_ _%key153451%_)
        (let ((_%default153453%_ absent-obj))
          (__hash-ref__% _%h153450%_ _%key153451%_ _%default153453%_))))
    (define __hash-ref
      (lambda _g161125_
        (let ((_g161126_ (let () (declare (not safe)) (##length _g161125_))))
          (cond ((let () (declare (not safe)) (##fx= _g161126_ 2))
                 (apply __hash-ref__0 _g161125_))
                ((let () (declare (not safe)) (##fx= _g161126_ 3))
                 (apply __hash-ref__% _g161125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g161125_))))))
    (define hash-ref__%
      (lambda (_%h149253%_ _%key149254%_ _%default149255%_)
        (let* ((_%h149261%_
                (let ((_%$obj149258%_ _%h149253%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149258%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149258%_)))
                           '#t)
                      _%$obj149258%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149258%_)))))
               (_%h149263%_ _%h149261%_))
          (__hash-ref__% _%h149263%_ _%key149254%_ _%default149255%_))))
    (define hash-ref__0
      (lambda (_%h149276%_ _%key149277%_)
        (let ((_%default149279%_ absent-obj))
          (hash-ref__% _%h149276%_ _%key149277%_ _%default149279%_))))
    (define hash-ref
      (lambda _g161127_
        (let ((_g161128_ (let () (declare (not safe)) (##length _g161127_))))
          (cond ((let () (declare (not safe)) (##fx= _g161128_ 2))
                 (apply hash-ref__0 _g161127_))
                ((let () (declare (not safe)) (##fx= _g161128_ 3))
                 (apply hash-ref__% _g161127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g161127_))))))
    (define __hash-get
      (lambda (_%h153329%_ _%key153330%_)
        (let* ((_%h153333%_ _%h153329%_)
               (_%self146148153342%_ _%h153333%_)
               (_%key153345%_ _%key153330%_)
               (_%default153348%_ '#f)
               (_%self146148153355%_
                (let ((_%$obj153352%_ _%self146148153342%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153352%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153352%_)))
                           '#t)
                      _%$obj153352%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153352%_)))))
               (_%self146148153357%_ _%self146148153355%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153371153376%_
                       (##unchecked-structure-ref
                        _%self146148153357%_
                        '1
                        '#f
                        'ref))
                      (_%method153372153377%_
                       (##unchecked-structure-ref
                        _%self146148153357%_
                        '7
                        '#f
                        'ref)))
                  (_%method153372153377%_
                   _%object153371153376%_
                   _%key153345%_
                   _%default153348%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153378153383%_
                       (##unchecked-structure-ref
                        _%self146148153357%_
                        '1
                        '#f
                        'ref))
                      (_%method153379153384%_
                       (##unchecked-structure-ref
                        _%self146148153357%_
                        '7
                        '#f
                        'ref)))
                  (_%method153379153384%_
                   _%object153378153383%_
                   _%key153345%_
                   _%default153348%_)))))))
    (define hash-get
      (lambda (_%h149405%_ _%key149406%_)
        (let* ((_%h149412%_
                (let ((_%$obj149409%_ _%h149405%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149409%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149409%_)))
                           '#t)
                      _%$obj149409%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149409%_)))))
               (_%h149414%_ _%h149412%_))
          (__hash-get _%h149414%_ _%key149406%_))))
    (define __hash-put!
      (lambda (_%h153271%_ _%key153272%_ _%value153273%_)
        (let* ((_%h153276%_ _%h153271%_)
               (_%self146443153285%_ _%h153276%_)
               (_%key153288%_ _%key153272%_)
               (_%value153291%_ _%value153273%_)
               (_%self146443153298%_
                (let ((_%$obj153295%_ _%self146443153285%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153295%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153295%_)))
                           '#t)
                      _%$obj153295%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153295%_)))))
               (_%self146443153300%_ _%self146443153298%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153314153319%_
                       (##unchecked-structure-ref
                        _%self146443153300%_
                        '1
                        '#f
                        'set!))
                      (_%method153315153320%_
                       (##unchecked-structure-ref
                        _%self146443153300%_
                        '8
                        '#f
                        'set!)))
                  (_%method153315153320%_
                   _%object153314153319%_
                   _%key153288%_
                   _%value153291%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153321153326%_
                       (##unchecked-structure-ref
                        _%self146443153300%_
                        '1
                        '#f
                        'set!))
                      (_%method153322153327%_
                       (##unchecked-structure-ref
                        _%self146443153300%_
                        '8
                        '#f
                        'set!)))
                  (_%method153322153327%_
                   _%object153321153326%_
                   _%key153288%_
                   _%value153291%_)))))))
    (define hash-put!
      (lambda (_%h149544%_ _%key149545%_ _%value149546%_)
        (let* ((_%h149552%_
                (let ((_%$obj149549%_ _%h149544%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149549%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149549%_)))
                           '#t)
                      _%$obj149549%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149549%_)))))
               (_%h149554%_ _%h149552%_))
          (__hash-put! _%h149554%_ _%key149545%_ _%value149546%_))))
    (define __hash-update!__%
      (lambda (_%h153184%_ _%key153185%_ _%update153186%_ _%default153187%_)
        (let* ((_%h153190%_ _%h153184%_)
               (_%self146738153199%_ _%h153190%_)
               (_%key153202%_ _%key153185%_)
               (_%proc153205%_ _%update153186%_)
               (_%default153208%_ _%default153187%_)
               (_%self146738153215%_
                (let ((_%$obj153212%_ _%self146738153199%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153212%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153212%_)))
                           '#t)
                      _%$obj153212%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153212%_)))))
               (_%self146738153217%_ _%self146738153215%_))
          (if (procedure? _%proc153205%_)
              (let ((_%proc153233%_ _%proc153205%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object153242153247%_
                             (##unchecked-structure-ref
                              _%self146738153217%_
                              '1
                              '#f
                              'update!))
                            (_%method153243153248%_
                             (##unchecked-structure-ref
                              _%self146738153217%_
                              '9
                              '#f
                              'update!)))
                        (_%method153243153248%_
                         _%object153242153247%_
                         _%key153202%_
                         _%proc153233%_
                         _%default153208%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object153249153254%_
                             (##unchecked-structure-ref
                              _%self146738153217%_
                              '1
                              '#f
                              'update!))
                            (_%method153250153255%_
                             (##unchecked-structure-ref
                              _%self146738153217%_
                              '9
                              '#f
                              'update!)))
                        (_%method153250153255%_
                         _%object153249153254%_
                         _%key153202%_
                         _%proc153233%_
                         _%default153208%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc153205%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h153260%_ _%key153261%_ _%update153262%_)
        (let ((_%default153264%_ '#!void))
          (__hash-update!__%
           _%h153260%_
           _%key153261%_
           _%update153262%_
           _%default153264%_))))
    (define __hash-update!
      (lambda _g161129_
        (let ((_g161130_ (let () (declare (not safe)) (##length _g161129_))))
          (cond ((let () (declare (not safe)) (##fx= _g161130_ 3))
                 (apply __hash-update!__0 _g161129_))
                ((let () (declare (not safe)) (##fx= _g161130_ 4))
                 (apply __hash-update!__% _g161129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g161129_))))))
    (define hash-update!__%
      (lambda (_%h149685%_ _%key149686%_ _%update149687%_ _%default149688%_)
        (let* ((_%h149694%_
                (let ((_%$obj149691%_ _%h149685%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149691%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149691%_)))
                           '#t)
                      _%$obj149691%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149691%_)))))
               (_%h149696%_ _%h149694%_))
          (__hash-update!__%
           _%h149696%_
           _%key149686%_
           _%update149687%_
           _%default149688%_))))
    (define hash-update!__0
      (lambda (_%h149709%_ _%key149710%_ _%update149711%_)
        (let ((_%default149713%_ '#!void))
          (hash-update!__%
           _%h149709%_
           _%key149710%_
           _%update149711%_
           _%default149713%_))))
    (define hash-update!
      (lambda _g161131_
        (let ((_g161132_ (let () (declare (not safe)) (##length _g161131_))))
          (cond ((let () (declare (not safe)) (##fx= _g161132_ 3))
                 (apply hash-update!__0 _g161131_))
                ((let () (declare (not safe)) (##fx= _g161132_ 4))
                 (apply hash-update!__% _g161131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g161131_))))))
    (define __hash-remove!
      (lambda (_%h153130%_ _%key153131%_)
        (let* ((_%h153134%_ _%h153130%_)
               (_%self145250153143%_ _%h153134%_)
               (_%key153146%_ _%key153131%_)
               (_%self145250153153%_
                (let ((_%$obj153150%_ _%self145250153143%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153150%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153150%_)))
                           '#t)
                      _%$obj153150%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153150%_)))))
               (_%self145250153155%_ _%self145250153153%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153168153173%_
                       (##unchecked-structure-ref
                        _%self145250153155%_
                        '1
                        '#f
                        'delete!))
                      (_%method153169153174%_
                       (##unchecked-structure-ref
                        _%self145250153155%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153169153174%_
                   _%object153168153173%_
                   _%key153146%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153175153180%_
                       (##unchecked-structure-ref
                        _%self145250153155%_
                        '1
                        '#f
                        'delete!))
                      (_%method153176153181%_
                       (##unchecked-structure-ref
                        _%self145250153155%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153176153181%_
                   _%object153175153180%_
                   _%key153146%_)))))))
    (define hash-remove!
      (lambda (_%h149840%_ _%key149841%_)
        (let* ((_%h149847%_
                (let ((_%$obj149844%_ _%h149840%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149844%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149844%_)))
                           '#t)
                      _%$obj149844%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149844%_)))))
               (_%h149849%_ _%h149847%_))
          (__hash-remove! _%h149849%_ _%key149841%_))))
    (define __hash-key?
      (lambda (_%h153073%_ _%k153074%_)
        (let ((_%h153077%_ _%h153073%_))
          (not (eq? (let* ((_%self146148153086%_ _%h153077%_)
                           (_%key153089%_ _%k153074%_)
                           (_%default153092%_ absent-value)
                           (_%self146148153099%_
                            (let ((_%$obj153096%_ _%self146148153086%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj153096%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj153096%_)))
                                       '#t)
                                  _%$obj153096%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj153096%_)))))
                           (_%self146148153101%_ _%self146148153099%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object153115153120%_
                                   (##unchecked-structure-ref
                                    _%self146148153101%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153116153121%_
                                   (##unchecked-structure-ref
                                    _%self146148153101%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153116153121%_
                               _%object153115153120%_
                               _%key153089%_
                               _%default153092%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object153122153127%_
                                   (##unchecked-structure-ref
                                    _%self146148153101%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153123153128%_
                                   (##unchecked-structure-ref
                                    _%self146148153101%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153123153128%_
                               _%object153122153127%_
                               _%key153089%_
                               _%default153092%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h149979%_ _%k149980%_)
        (let* ((_%h149986%_
                (let ((_%$obj149983%_ _%h149979%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149983%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149983%_)))
                           '#t)
                      _%$obj149983%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149983%_)))))
               (_%h149988%_ _%h149986%_))
          (__hash-key? _%h149988%_ _%k149980%_))))
    (define __hash->list
      (lambda (_%h153005%_)
        (let* ((_%h153008%_ _%h153005%_) (_%lst153017%_ '()))
          (let* ((_%self145543153019%_ _%h153008%_)
                 (_%proc153025%_
                  (lambda (_%k153022%_ _%v153023%_)
                    (set! _%lst153017%_
                          (cons (cons _%k153022%_ _%v153023%_)
                                _%lst153017%_))))
                 (_%self145543153032%_
                  (let ((_%$obj153029%_ _%self145543153019%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153029%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153029%_)))
                             '#t)
                        _%$obj153029%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153029%_)))))
                 (_%self145543153034%_ _%self145543153032%_)
                 (_%proc153049%_ _%proc153025%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153058153063%_
                         (##unchecked-structure-ref
                          _%self145543153034%_
                          '1
                          '#f
                          'for-each))
                        (_%method153059153064%_
                         (##unchecked-structure-ref
                          _%self145543153034%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153059153064%_
                     _%object153058153063%_
                     _%proc153049%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153065153070%_
                         (##unchecked-structure-ref
                          _%self145543153034%_
                          '1
                          '#f
                          'for-each))
                        (_%method153066153071%_
                         (##unchecked-structure-ref
                          _%self145543153034%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153066153071%_
                     _%object153065153070%_
                     _%proc153049%_)))))
          _%lst153017%_)))
    (define hash->list
      (lambda (_%h150118%_)
        (let* ((_%h150124%_
                (let ((_%$obj150121%_ _%h150118%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150121%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150121%_)))
                           '#t)
                      _%$obj150121%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150121%_)))))
               (_%h150126%_ _%h150124%_))
          (__hash->list _%h150126%_))))
    (define __hash->plist
      (lambda (_%h152937%_)
        (let* ((_%h152940%_ _%h152937%_) (_%lst152949%_ '()))
          (let* ((_%self145543152951%_ _%h152940%_)
                 (_%proc152957%_
                  (lambda (_%k152954%_ _%v152955%_)
                    (set! _%lst152949%_
                          (cons _%k152954%_
                                (cons _%v152955%_ _%lst152949%_)))))
                 (_%self145543152964%_
                  (let ((_%$obj152961%_ _%self145543152951%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152961%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152961%_)))
                             '#t)
                        _%$obj152961%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152961%_)))))
                 (_%self145543152966%_ _%self145543152964%_)
                 (_%proc152981%_ _%proc152957%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152990152995%_
                         (##unchecked-structure-ref
                          _%self145543152966%_
                          '1
                          '#f
                          'for-each))
                        (_%method152991152996%_
                         (##unchecked-structure-ref
                          _%self145543152966%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152991152996%_
                     _%object152990152995%_
                     _%proc152981%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152997153002%_
                         (##unchecked-structure-ref
                          _%self145543152966%_
                          '1
                          '#f
                          'for-each))
                        (_%method152998153003%_
                         (##unchecked-structure-ref
                          _%self145543152966%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152998153003%_
                     _%object152997153002%_
                     _%proc152981%_)))))
          _%lst152949%_)))
    (define hash->plist
      (lambda (_%h150256%_)
        (let* ((_%h150262%_
                (let ((_%$obj150259%_ _%h150256%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150259%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150259%_)))
                           '#t)
                      _%$obj150259%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150259%_)))))
               (_%h150264%_ _%h150262%_))
          (__hash->plist _%h150264%_))))
    (define __hash-for-each
      (lambda (_%proc152866%_ _%h152867%_)
        (let* ((_%proc152870%_ _%proc152866%_)
               (_%h152878%_ _%h152867%_)
               (_%self145543152887%_ _%h152878%_)
               (_%proc152890%_ _%proc152870%_)
               (_%self145543152897%_
                (let ((_%$obj152894%_ _%self145543152887%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152894%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152894%_)))
                           '#t)
                      _%$obj152894%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152894%_)))))
               (_%self145543152899%_ _%self145543152897%_)
               (_%proc152913%_ _%proc152890%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152922152927%_
                       (##unchecked-structure-ref
                        _%self145543152899%_
                        '1
                        '#f
                        'for-each))
                      (_%method152923152928%_
                       (##unchecked-structure-ref
                        _%self145543152899%_
                        '5
                        '#f
                        'for-each)))
                  (_%method152923152928%_
                   _%object152922152927%_
                   _%proc152913%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152929152934%_
                       (##unchecked-structure-ref
                        _%self145543152899%_
                        '1
                        '#f
                        'for-each))
                      (_%method152930152935%_
                       (##unchecked-structure-ref
                        _%self145543152899%_
                        '5
                        '#f
                        'for-each)))
                  (_%method152930152935%_
                   _%object152929152934%_
                   _%proc152913%_)))))))
    (define hash-for-each
      (lambda (_%proc150394%_ _%h150395%_)
        (if (procedure? _%proc150394%_)
            (let* ((_%proc150399%_ _%proc150394%_)
                   (_%h150411%_
                    (let ((_%$obj150408%_ _%h150395%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150408%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150408%_)))
                               '#t)
                          _%$obj150408%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150408%_)))))
                   (_%h150413%_ _%h150411%_))
              (__hash-for-each _%proc150399%_ _%h150413%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc150394%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc152789%_ _%h152790%_)
        (let* ((_%proc152793%_ _%proc152789%_)
               (_%h152801%_ _%h152790%_)
               (_%result152810%_ '()))
          (let* ((_%self145543152812%_ _%h152801%_)
                 (_%proc152818%_
                  (lambda (_%k152815%_ _%v152816%_)
                    (set! _%result152810%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc152793%_ _%k152815%_ _%v152816%_))
                                _%result152810%_))))
                 (_%self145543152825%_
                  (let ((_%$obj152822%_ _%self145543152812%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152822%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152822%_)))
                             '#t)
                        _%$obj152822%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152822%_)))))
                 (_%self145543152827%_ _%self145543152825%_)
                 (_%proc152842%_ _%proc152818%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152851152856%_
                         (##unchecked-structure-ref
                          _%self145543152827%_
                          '1
                          '#f
                          'for-each))
                        (_%method152852152857%_
                         (##unchecked-structure-ref
                          _%self145543152827%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152852152857%_
                     _%object152851152856%_
                     _%proc152842%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152858152863%_
                         (##unchecked-structure-ref
                          _%self145543152827%_
                          '1
                          '#f
                          'for-each))
                        (_%method152859152864%_
                         (##unchecked-structure-ref
                          _%self145543152827%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152859152864%_
                     _%object152858152863%_
                     _%proc152842%_)))))
          _%result152810%_)))
    (define hash-map
      (lambda (_%proc150543%_ _%h150544%_)
        (if (procedure? _%proc150543%_)
            (let* ((_%proc150548%_ _%proc150543%_)
                   (_%h150560%_
                    (let ((_%$obj150557%_ _%h150544%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150557%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150557%_)))
                               '#t)
                          _%$obj150557%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150557%_)))))
                   (_%h150562%_ _%h150560%_))
              (__hash-map _%proc150548%_ _%h150562%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc150543%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc152711%_ _%iv152712%_ _%h152713%_)
        (let* ((_%proc152716%_ _%proc152711%_)
               (_%h152724%_ _%h152713%_)
               (_%result152733%_ _%iv152712%_))
          (let* ((_%self145543152735%_ _%h152724%_)
                 (_%proc152741%_
                  (lambda (_%k152738%_ _%v152739%_)
                    (set! _%result152733%_
                          (let ()
                            (declare (not safe))
                            (_%proc152716%_
                             _%k152738%_
                             _%v152739%_
                             _%result152733%_)))))
                 (_%self145543152748%_
                  (let ((_%$obj152745%_ _%self145543152735%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152745%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152745%_)))
                             '#t)
                        _%$obj152745%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152745%_)))))
                 (_%self145543152750%_ _%self145543152748%_)
                 (_%proc152765%_ _%proc152741%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152774152779%_
                         (##unchecked-structure-ref
                          _%self145543152750%_
                          '1
                          '#f
                          'for-each))
                        (_%method152775152780%_
                         (##unchecked-structure-ref
                          _%self145543152750%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152775152780%_
                     _%object152774152779%_
                     _%proc152765%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152781152786%_
                         (##unchecked-structure-ref
                          _%self145543152750%_
                          '1
                          '#f
                          'for-each))
                        (_%method152782152787%_
                         (##unchecked-structure-ref
                          _%self145543152750%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152782152787%_
                     _%object152781152786%_
                     _%proc152765%_)))))
          _%result152733%_)))
    (define hash-fold
      (lambda (_%proc150692%_ _%iv150693%_ _%h150694%_)
        (if (procedure? _%proc150692%_)
            (let* ((_%proc150698%_ _%proc150692%_)
                   (_%h150710%_
                    (let ((_%$obj150707%_ _%h150694%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150707%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150707%_)))
                               '#t)
                          _%$obj150707%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150707%_)))))
                   (_%h150712%_ _%h150710%_))
              (__hash-fold _%proc150698%_ _%iv150693%_ _%h150712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc150692%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc152618%_ _%h152619%_ _%default-value152620%_)
        (let* ((_%proc152623%_ _%proc152618%_)
               (_%h152631%_ _%h152619%_)
               (__tmp161133
                (lambda (_%return152640%_)
                  (let* ((_%self145543152642%_ _%h152631%_)
                         (_%proc152651%_
                          (lambda (_%k152645%_ _%v152646%_)
                            (let ((_%$e152648%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc152623%_
                                      _%k152645%_
                                      _%v152646%_))))
                              (if _%$e152648%_
                                  (_%return152640%_ _%$e152648%_)
                                  '#!void))))
                         (_%self145543152658%_
                          (let ((_%$obj152655%_ _%self145543152642%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj152655%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj152655%_)))
                                     '#t)
                                _%$obj152655%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj152655%_)))))
                         (_%self145543152660%_ _%self145543152658%_)
                         (_%proc152675%_ _%proc152651%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object152684152689%_
                                 (##unchecked-structure-ref
                                  _%self145543152660%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method152685152690%_
                                 (##unchecked-structure-ref
                                  _%self145543152660%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method152685152690%_
                             _%object152684152689%_
                             _%proc152675%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object152691152696%_
                                 (##unchecked-structure-ref
                                  _%self145543152660%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method152692152697%_
                                 (##unchecked-structure-ref
                                  _%self145543152660%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method152692152697%_
                             _%object152691152696%_
                             _%proc152675%_)))))
                  _%default-value152620%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp161133))))
    (define __hash-find__0
      (lambda (_%proc152702%_ _%h152703%_)
        (let ((_%default-value152705%_ '#f))
          (__hash-find__%
           _%proc152702%_
           _%h152703%_
           _%default-value152705%_))))
    (define __hash-find
      (lambda _g161134_
        (let ((_g161135_ (let () (declare (not safe)) (##length _g161134_))))
          (cond ((let () (declare (not safe)) (##fx= _g161135_ 2))
                 (apply __hash-find__0 _g161134_))
                ((let () (declare (not safe)) (##fx= _g161135_ 3))
                 (apply __hash-find__% _g161134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g161134_))))))
    (define hash-find__%
      (lambda (_%proc150843%_ _%h150844%_ _%default-value150845%_)
        (if (procedure? _%proc150843%_)
            (let* ((_%proc150849%_ _%proc150843%_)
                   (_%h150861%_
                    (let ((_%$obj150858%_ _%h150844%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150858%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150858%_)))
                               '#t)
                          _%$obj150858%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150858%_)))))
                   (_%h150863%_ _%h150861%_))
              (__hash-find__%
               _%proc150849%_
               _%h150863%_
               _%default-value150845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc150843%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc150876%_ _%h150877%_)
        (let ((_%default-value150879%_ '#f))
          (hash-find__% _%proc150876%_ _%h150877%_ _%default-value150879%_))))
    (define hash-find
      (lambda _g161136_
        (let ((_g161137_ (let () (declare (not safe)) (##length _g161136_))))
          (cond ((let () (declare (not safe)) (##fx= _g161137_ 2))
                 (apply hash-find__0 _g161136_))
                ((let () (declare (not safe)) (##fx= _g161137_ 3))
                 (apply hash-find__% _g161136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g161136_))))))
    (define __hash-keys
      (lambda (_%h152549%_)
        (let* ((_%h152552%_ _%h152549%_) (_%result152561%_ '()))
          (let* ((_%self145543152563%_ _%h152552%_)
                 (_%proc152569%_
                  (lambda (_%k152566%_ _%v152567%_)
                    (set! _%result152561%_
                          (cons _%k152566%_ _%result152561%_))))
                 (_%self145543152576%_
                  (let ((_%$obj152573%_ _%self145543152563%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152573%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152573%_)))
                             '#t)
                        _%$obj152573%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152573%_)))))
                 (_%self145543152578%_ _%self145543152576%_)
                 (_%proc152593%_ _%proc152569%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152602152607%_
                         (##unchecked-structure-ref
                          _%self145543152578%_
                          '1
                          '#f
                          'for-each))
                        (_%method152603152608%_
                         (##unchecked-structure-ref
                          _%self145543152578%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152603152608%_
                     _%object152602152607%_
                     _%proc152593%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152609152614%_
                         (##unchecked-structure-ref
                          _%self145543152578%_
                          '1
                          '#f
                          'for-each))
                        (_%method152610152615%_
                         (##unchecked-structure-ref
                          _%self145543152578%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152610152615%_
                     _%object152609152614%_
                     _%proc152593%_)))))
          _%result152561%_)))
    (define hash-keys
      (lambda (_%h151005%_)
        (let* ((_%h151011%_
                (let ((_%$obj151008%_ _%h151005%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151008%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151008%_)))
                           '#t)
                      _%$obj151008%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151008%_)))))
               (_%h151013%_ _%h151011%_))
          (__hash-keys _%h151013%_))))
    (define __hash-values
      (lambda (_%h152481%_)
        (let* ((_%h152484%_ _%h152481%_) (_%result152493%_ '()))
          (let* ((_%self145543152495%_ _%h152484%_)
                 (_%proc152501%_
                  (lambda (_%k152498%_ _%v152499%_)
                    (set! _%result152493%_
                          (cons _%v152499%_ _%result152493%_))))
                 (_%self145543152508%_
                  (let ((_%$obj152505%_ _%self145543152495%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152505%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152505%_)))
                             '#t)
                        _%$obj152505%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152505%_)))))
                 (_%self145543152510%_ _%self145543152508%_)
                 (_%proc152525%_ _%proc152501%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152534152539%_
                         (##unchecked-structure-ref
                          _%self145543152510%_
                          '1
                          '#f
                          'for-each))
                        (_%method152535152540%_
                         (##unchecked-structure-ref
                          _%self145543152510%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152535152540%_
                     _%object152534152539%_
                     _%proc152525%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152541152546%_
                         (##unchecked-structure-ref
                          _%self145543152510%_
                          '1
                          '#f
                          'for-each))
                        (_%method152542152547%_
                         (##unchecked-structure-ref
                          _%self145543152510%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152542152547%_
                     _%object152541152546%_
                     _%proc152525%_)))))
          _%result152493%_)))
    (define hash-values
      (lambda (_%h151143%_)
        (let* ((_%h151149%_
                (let ((_%$obj151146%_ _%h151143%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151146%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151146%_)))
                           '#t)
                      _%$obj151146%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151146%_)))))
               (_%h151151%_ _%h151149%_))
          (__hash-values _%h151151%_))))
    (define __hash-copy
      (lambda (_%h152430%_)
        (let* ((_%h152433%_ _%h152430%_)
               (_%self144956152442%_ _%h152433%_)
               (_%self144956152449%_
                (let ((_%$obj152446%_ _%self144956152442%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152446%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152446%_)))
                           '#t)
                      _%$obj152446%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152446%_)))))
               (_%self144956152451%_ _%self144956152449%_))
          (if __DEBUG
              (let ((_%$obj152471%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object152463152468%_
                              (##unchecked-structure-ref
                               _%self144956152451%_
                               '1
                               '#f
                               'copy))
                             (_%method152464152469%_
                              (##unchecked-structure-ref
                               _%self144956152451%_
                               '3
                               '#f
                               'copy)))
                         (_%method152464152469%_ _%object152463152468%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj152471%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj152471%_)))
                         '#t)
                    _%$obj152471%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj152471%_))))
              (let ()
                (declare (not safe))
                (let ((_%object152473152478%_
                       (##unchecked-structure-ref
                        _%self144956152451%_
                        '1
                        '#f
                        'copy))
                      (_%method152474152479%_
                       (##unchecked-structure-ref
                        _%self144956152451%_
                        '3
                        '#f
                        'copy)))
                  (_%method152474152479%_ _%object152473152478%_)))))))
    (define hash-copy
      (lambda (_%h151281%_)
        (let* ((_%h151287%_
                (let ((_%$obj151284%_ _%h151281%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151284%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151284%_)))
                           '#t)
                      _%$obj151284%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151284%_)))))
               (_%h151289%_ _%h151287%_))
          (__hash-copy _%h151289%_))))
    (define __hash-clear!
      (lambda (_%h152382%_)
        (let* ((_%h152385%_ _%h152382%_)
               (_%self144664152394%_ _%h152385%_)
               (_%self144664152401%_
                (let ((_%$obj152398%_ _%self144664152394%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152398%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152398%_)))
                           '#t)
                      _%$obj152398%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152398%_)))))
               (_%self144664152403%_ _%self144664152401%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152415152420%_
                       (##unchecked-structure-ref
                        _%self144664152403%_
                        '1
                        '#f
                        'clear!))
                      (_%method152416152421%_
                       (##unchecked-structure-ref
                        _%self144664152403%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152416152421%_ _%object152415152420%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152422152427%_
                       (##unchecked-structure-ref
                        _%self144664152403%_
                        '1
                        '#f
                        'clear!))
                      (_%method152423152428%_
                       (##unchecked-structure-ref
                        _%self144664152403%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152423152428%_ _%object152422152427%_)))))))
    (define hash-clear!
      (lambda (_%h151419%_)
        (let* ((_%h151425%_
                (let ((_%$obj151422%_ _%h151419%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151422%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151422%_)))
                           '#t)
                      _%$obj151422%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151422%_)))))
               (_%h151427%_ _%h151425%_))
          (__hash-clear! _%h151427%_))))
    (define __hash-merge
      (lambda (_%h152328%_ . _%rest152329%_)
        (let* ((_%h152332%_ _%h152328%_)
               (_%copy152380%_
                (let* ((_%self144956152341%_ _%h152332%_)
                       (_%self144956152348%_
                        (let ((_%$obj152345%_ _%self144956152341%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152345%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152345%_)))
                                   '#t)
                              _%$obj152345%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152345%_)))))
                       (_%self144956152350%_ _%self144956152348%_))
                  (if __DEBUG
                      (let ((_%$obj152370%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152362152367%_
                                      (##unchecked-structure-ref
                                       _%self144956152350%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152363152368%_
                                      (##unchecked-structure-ref
                                       _%self144956152350%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152363152368%_
                                  _%object152362152367%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152370%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152370%_)))
                                 '#t)
                            _%$obj152370%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152370%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152372152377%_
                               (##unchecked-structure-ref
                                _%self144956152350%_
                                '1
                                '#f
                                'copy))
                              (_%method152373152378%_
                               (##unchecked-structure-ref
                                _%self144956152350%_
                                '3
                                '#f
                                'copy)))
                          (_%method152373152378%_ _%object152372152377%_)))))))
          (apply hash-merge! _%copy152380%_ _%rest152329%_)
          _%copy152380%_)))
    (define hash-merge
      (lambda (_%h151557%_ . _%rest151558%_)
        (let* ((_%h151564%_
                (let ((_%$obj151561%_ _%h151557%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151561%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151561%_)))
                           '#t)
                      _%$obj151561%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151561%_)))))
               (_%h151566%_ _%h151564%_))
          (declare (not safe))
          (##apply __hash-merge _%h151566%_ _%rest151558%_))))
    (define __hash-merge-right
      (lambda (_%h152274%_ . _%rest152275%_)
        (let* ((_%h152278%_ _%h152274%_)
               (_%copy152326%_
                (let* ((_%self144956152287%_ _%h152278%_)
                       (_%self144956152294%_
                        (let ((_%$obj152291%_ _%self144956152287%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152291%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152291%_)))
                                   '#t)
                              _%$obj152291%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152291%_)))))
                       (_%self144956152296%_ _%self144956152294%_))
                  (if __DEBUG
                      (let ((_%$obj152316%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152308152313%_
                                      (##unchecked-structure-ref
                                       _%self144956152296%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152309152314%_
                                      (##unchecked-structure-ref
                                       _%self144956152296%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152309152314%_
                                  _%object152308152313%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152316%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152316%_)))
                                 '#t)
                            _%$obj152316%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152316%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152318152323%_
                               (##unchecked-structure-ref
                                _%self144956152296%_
                                '1
                                '#f
                                'copy))
                              (_%method152319152324%_
                               (##unchecked-structure-ref
                                _%self144956152296%_
                                '3
                                '#f
                                'copy)))
                          (_%method152319152324%_ _%object152318152323%_)))))))
          (apply hash-merge-right! _%copy152326%_ _%rest152275%_)
          _%copy152326%_)))
    (define hash-merge-right
      (lambda (_%h151696%_ . _%rest151697%_)
        (let* ((_%h151703%_
                (let ((_%$obj151700%_ _%h151696%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151700%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151700%_)))
                           '#t)
                      _%$obj151700%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151700%_)))))
               (_%h151705%_ _%h151703%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h151705%_ _%rest151697%_))))
    (define __hash-merge!
      (lambda (_%h152122%_ . _%rest152123%_)
        (let ((_%h152126%_ _%h152122%_))
          (let ((__tmp161138
                 (lambda (_%hr152135%_)
                   (let* ((_%hr152141%_
                           (let ((_%$obj152138%_ _%hr152135%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152138%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152138%_)))
                                      '#t)
                                 _%$obj152138%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152138%_)))))
                          (_%hr152143%_ _%hr152141%_)
                          (_%self145543152156%_ _%hr152143%_)
                          (_%proc152231%_
                           (lambda (_%k152159%_ _%v152160%_)
                             (if (let* ((_%h152162%_ _%h152126%_)
                                        (_%k152165%_ _%k152159%_)
                                        (_%h152172%_
                                         (let ((_%$obj152169%_ _%h152162%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152169%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152169%_)))
                                                    '#t)
                                               _%$obj152169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152169%_)))))
                                        (_%h152174%_ _%h152172%_))
                                   (__hash-key? _%h152174%_ _%k152165%_))
                                 '#!void
                                 (let* ((_%self146443152190%_ _%h152126%_)
                                        (_%key152193%_ _%k152159%_)
                                        (_%value152196%_ _%v152160%_)
                                        (_%self146443152203%_
                                         (let ((_%$obj152200%_
                                                _%self146443152190%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152200%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152200%_)))
                                                    '#t)
                                               _%$obj152200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152200%_)))))
                                        (_%self146443152205%_
                                         _%self146443152203%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152216152221%_
                                                (##unchecked-structure-ref
                                                 _%self146443152205%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152217152222%_
                                                (##unchecked-structure-ref
                                                 _%self146443152205%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152217152222%_
                                            _%object152216152221%_
                                            _%key152193%_
                                            _%value152196%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152223152228%_
                                                (##unchecked-structure-ref
                                                 _%self146443152205%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152224152229%_
                                                (##unchecked-structure-ref
                                                 _%self146443152205%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152224152229%_
                                            _%object152223152228%_
                                            _%key152193%_
                                            _%value152196%_))))))))
                          (_%self145543152238%_
                           (let ((_%$obj152235%_ _%self145543152156%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152235%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152235%_)))
                                      '#t)
                                 _%$obj152235%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152235%_)))))
                          (_%self145543152240%_ _%self145543152238%_)
                          (_%proc152250%_ _%proc152231%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152259152264%_
                                  (##unchecked-structure-ref
                                   _%self145543152240%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152260152265%_
                                  (##unchecked-structure-ref
                                   _%self145543152240%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152260152265%_
                              _%object152259152264%_
                              _%proc152250%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152266152271%_
                                  (##unchecked-structure-ref
                                   _%self145543152240%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152267152272%_
                                  (##unchecked-structure-ref
                                   _%self145543152240%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152267152272%_
                              _%object152266152271%_
                              _%proc152250%_))))))))
            (declare (not safe))
            (##for-each __tmp161138 _%rest152123%_))
          _%h152126%_)))
    (define hash-merge!
      (lambda (_%h151835%_ . _%rest151836%_)
        (let* ((_%h151842%_
                (let ((_%$obj151839%_ _%h151835%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151839%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151839%_)))
                           '#t)
                      _%$obj151839%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151839%_)))))
               (_%h151844%_ _%h151842%_))
          (declare (not safe))
          (##apply __hash-merge! _%h151844%_ _%rest151836%_))))
    (define __hash-merge-right!
      (lambda (_%h151993%_ . _%rest151994%_)
        (let ((_%h151997%_ _%h151993%_))
          (let ((__tmp161139
                 (lambda (_%hr152006%_)
                   (let* ((_%hr152012%_
                           (let ((_%$obj152009%_ _%hr152006%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152009%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152009%_)))
                                      '#t)
                                 _%$obj152009%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152009%_)))))
                          (_%hr152014%_ _%hr152012%_)
                          (_%self145543152027%_ _%hr152014%_)
                          (_%proc152079%_
                           (lambda (_%k152030%_ _%v152031%_)
                             (let* ((_%self146443152033%_ _%h151997%_)
                                    (_%key152036%_ _%k152030%_)
                                    (_%value152039%_ _%v152031%_)
                                    (_%self146443152046%_
                                     (let ((_%$obj152043%_
                                            _%self146443152033%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj152043%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj152043%_)))
                                                '#t)
                                           _%$obj152043%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj152043%_)))))
                                    (_%self146443152048%_
                                     _%self146443152046%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152064152069%_
                                            (##unchecked-structure-ref
                                             _%self146443152048%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152065152070%_
                                            (##unchecked-structure-ref
                                             _%self146443152048%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152065152070%_
                                        _%object152064152069%_
                                        _%key152036%_
                                        _%value152039%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152071152076%_
                                            (##unchecked-structure-ref
                                             _%self146443152048%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152072152077%_
                                            (##unchecked-structure-ref
                                             _%self146443152048%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152072152077%_
                                        _%object152071152076%_
                                        _%key152036%_
                                        _%value152039%_)))))))
                          (_%self145543152086%_
                           (let ((_%$obj152083%_ _%self145543152027%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152083%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152083%_)))
                                      '#t)
                                 _%$obj152083%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152083%_)))))
                          (_%self145543152088%_ _%self145543152086%_)
                          (_%proc152098%_ _%proc152079%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152107152112%_
                                  (##unchecked-structure-ref
                                   _%self145543152088%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152108152113%_
                                  (##unchecked-structure-ref
                                   _%self145543152088%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152108152113%_
                              _%object152107152112%_
                              _%proc152098%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152114152119%_
                                  (##unchecked-structure-ref
                                   _%self145543152088%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152115152120%_
                                  (##unchecked-structure-ref
                                   _%self145543152088%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152115152120%_
                              _%object152114152119%_
                              _%proc152098%_))))))))
            (declare (not safe))
            (##for-each __tmp161139 _%rest151994%_))
          _%h151997%_)))
    (define hash-merge-right!
      (lambda (_%h151974%_ . _%rest151975%_)
        (let* ((_%h151981%_
                (let ((_%$obj151978%_ _%h151974%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151978%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151978%_)))
                           '#t)
                      _%$obj151978%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151978%_)))))
               (_%h151983%_ _%h151981%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h151983%_ _%rest151975%_))))))
