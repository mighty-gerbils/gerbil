(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1771092626)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp161064 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp161064
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args159806%_
        (apply make-instance UnboundKeyError::t _%$args159806%_)))
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
      (lambda (_%where159680%_ _%message159681%_ . _%irritants159682%_)
        (let ((__tmp161065
               (let ((__obj161056
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj161056
                    _%message159681%_
                    'where:
                    _%where159680%_
                    'irritants:
                    _%irritants159682%_))
                 __obj161056)))
          (declare (not safe))
          (raise __tmp161065))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp161066 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp161066
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj161058
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161058
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj161058))
    (define make-HashTable
      (lambda (_%obj159678%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj159678%_))))
    (define try-HashTable
      (lambda (_%obj159676%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj159676%_))))
    (define HashTable?
      (lambda (_%obj159674%_)
        (let ((__tmp161067
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj159674%_ __tmp161067))))
    (define is-HashTable?
      (lambda (_%obj159671%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj159671%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self144661144905%_)
        (let ((_%self144661144907%_ _%self144661144905%_))
          (declare (not safe))
          (let ((_%object144914144919%_
                 (##unchecked-structure-ref
                  _%self144661144907%_
                  '1
                  '#f
                  'clear!))
                (_%method144915144920%_
                 (##unchecked-structure-ref
                  _%self144661144907%_
                  '2
                  '#f
                  'clear!)))
            (_%method144915144920%_ _%object144914144919%_)))))
    (define ::HashTable-clear!
      (lambda (_%self144662144922%_)
        (let* ((_%self144662144927%_
                (let ((_%$obj144924%_ _%self144662144922%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144924%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144924%_)))
                           '#t)
                      _%$obj144924%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144924%_)))))
               (_%self144662144929%_ _%self144662144927%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144937144942%_
                       (##unchecked-structure-ref
                        _%self144662144929%_
                        '1
                        '#f
                        'clear!))
                      (_%method144938144943%_
                       (##unchecked-structure-ref
                        _%self144662144929%_
                        '2
                        '#f
                        'clear!)))
                  (_%method144938144943%_ _%object144937144942%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144944144949%_
                       (##unchecked-structure-ref
                        _%self144662144929%_
                        '1
                        '#f
                        'clear!))
                      (_%method144945144950%_
                       (##unchecked-structure-ref
                        _%self144662144929%_
                        '2
                        '#f
                        'clear!)))
                  (_%method144945144950%_ _%object144944144949%_)))))))
    (define __HashTable-copy
      (lambda (_%self144953145196%_)
        (let ((_%self144953145198%_ _%self144953145196%_))
          (declare (not safe))
          (let ((_%object145205145210%_
                 (##unchecked-structure-ref _%self144953145198%_ '1 '#f 'copy))
                (_%method145206145211%_
                 (##unchecked-structure-ref
                  _%self144953145198%_
                  '3
                  '#f
                  'copy)))
            (_%method145206145211%_ _%object145205145210%_)))))
    (define ::HashTable-copy
      (lambda (_%self144954145213%_)
        (let* ((_%self144954145218%_
                (let ((_%$obj145215%_ _%self144954145213%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145215%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145215%_)))
                           '#t)
                      _%$obj145215%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145215%_)))))
               (_%self144954145220%_ _%self144954145218%_))
          (if __DEBUG
              (let ((_%$obj145236%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object145228145233%_
                              (##unchecked-structure-ref
                               _%self144954145220%_
                               '1
                               '#f
                               'copy))
                             (_%method145229145234%_
                              (##unchecked-structure-ref
                               _%self144954145220%_
                               '3
                               '#f
                               'copy)))
                         (_%method145229145234%_ _%object145228145233%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj145236%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj145236%_)))
                         '#t)
                    _%$obj145236%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj145236%_))))
              (let ()
                (declare (not safe))
                (let ((_%object145238145243%_
                       (##unchecked-structure-ref
                        _%self144954145220%_
                        '1
                        '#f
                        'copy))
                      (_%method145239145244%_
                       (##unchecked-structure-ref
                        _%self144954145220%_
                        '3
                        '#f
                        'copy)))
                  (_%method145239145244%_ _%object145238145243%_)))))))
    (define __HashTable-delete!
      (lambda (_%self145247145490%_ _%key145491%_)
        (let ((_%self145247145493%_ _%self145247145490%_))
          (declare (not safe))
          (let ((_%object145500145505%_
                 (##unchecked-structure-ref
                  _%self145247145493%_
                  '1
                  '#f
                  'delete!))
                (_%method145501145506%_
                 (##unchecked-structure-ref
                  _%self145247145493%_
                  '4
                  '#f
                  'delete!)))
            (_%method145501145506%_ _%object145500145505%_ _%key145491%_)))))
    (define ::HashTable-delete!
      (lambda (_%self145248145508%_ _%key145509%_)
        (let* ((_%self145248145514%_
                (let ((_%$obj145511%_ _%self145248145508%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145511%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145511%_)))
                           '#t)
                      _%$obj145511%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145511%_)))))
               (_%self145248145516%_ _%self145248145514%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145524145529%_
                       (##unchecked-structure-ref
                        _%self145248145516%_
                        '1
                        '#f
                        'delete!))
                      (_%method145525145530%_
                       (##unchecked-structure-ref
                        _%self145248145516%_
                        '4
                        '#f
                        'delete!)))
                  (_%method145525145530%_
                   _%object145524145529%_
                   _%key145509%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145531145536%_
                       (##unchecked-structure-ref
                        _%self145248145516%_
                        '1
                        '#f
                        'delete!))
                      (_%method145532145537%_
                       (##unchecked-structure-ref
                        _%self145248145516%_
                        '4
                        '#f
                        'delete!)))
                  (_%method145532145537%_
                   _%object145531145536%_
                   _%key145509%_)))))))
    (define __HashTable-for-each
      (lambda (_%self145540145783%_ _%proc145784%_)
        (let* ((_%self145540145786%_ _%self145540145783%_)
               (_%proc145793%_ _%proc145784%_))
          (declare (not safe))
          (let ((_%object145801145806%_
                 (##unchecked-structure-ref
                  _%self145540145786%_
                  '1
                  '#f
                  'for-each))
                (_%method145802145807%_
                 (##unchecked-structure-ref
                  _%self145540145786%_
                  '5
                  '#f
                  'for-each)))
            (_%method145802145807%_ _%object145801145806%_ _%proc145793%_)))))
    (define ::HashTable-for-each
      (lambda (_%self145541145809%_ _%proc145810%_)
        (let* ((_%self145541145815%_
                (let ((_%$obj145812%_ _%self145541145809%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145812%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145812%_)))
                           '#t)
                      _%$obj145812%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145812%_)))))
               (_%self145541145817%_ _%self145541145815%_))
          (if (procedure? _%proc145810%_)
              (let ((_%proc145826%_ _%proc145810%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object145835145840%_
                             (##unchecked-structure-ref
                              _%self145541145817%_
                              '1
                              '#f
                              'for-each))
                            (_%method145836145841%_
                             (##unchecked-structure-ref
                              _%self145541145817%_
                              '5
                              '#f
                              'for-each)))
                        (_%method145836145841%_
                         _%object145835145840%_
                         _%proc145826%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object145842145847%_
                             (##unchecked-structure-ref
                              _%self145541145817%_
                              '1
                              '#f
                              'for-each))
                            (_%method145843145848%_
                             (##unchecked-structure-ref
                              _%self145541145817%_
                              '5
                              '#f
                              'for-each)))
                        (_%method145843145848%_
                         _%object145842145847%_
                         _%proc145826%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc145810%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self145851146094%_)
        (let ((_%self145851146096%_ _%self145851146094%_))
          (declare (not safe))
          (let ((_%object146103146108%_
                 (##unchecked-structure-ref
                  _%self145851146096%_
                  '1
                  '#f
                  'length))
                (_%method146104146109%_
                 (##unchecked-structure-ref
                  _%self145851146096%_
                  '6
                  '#f
                  'length)))
            (_%method146104146109%_ _%object146103146108%_)))))
    (define ::HashTable-length
      (lambda (_%self145852146111%_)
        (let* ((_%self145852146116%_
                (let ((_%$obj146113%_ _%self145852146111%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146113%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146113%_)))
                           '#t)
                      _%$obj146113%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146113%_)))))
               (_%self145852146118%_ _%self145852146116%_))
          (if __DEBUG
              (let ((_%val146134%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146126146131%_
                              (##unchecked-structure-ref
                               _%self145852146118%_
                               '1
                               '#f
                               'length))
                             (_%method146127146132%_
                              (##unchecked-structure-ref
                               _%self145852146118%_
                               '6
                               '#f
                               'length)))
                         (_%method146127146132%_ _%object146126146131%_)))))
                (if (fixnum? _%val146134%_)
                    _%val146134%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val146134%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object146136146141%_
                       (##unchecked-structure-ref
                        _%self145852146118%_
                        '1
                        '#f
                        'length))
                      (_%method146137146142%_
                       (##unchecked-structure-ref
                        _%self145852146118%_
                        '6
                        '#f
                        'length)))
                  (_%method146137146142%_ _%object146136146141%_)))))))
    (define __HashTable-ref
      (lambda (_%self146145146388%_ _%key146389%_ _%default146390%_)
        (let ((_%self146145146392%_ _%self146145146388%_))
          (declare (not safe))
          (let ((_%object146399146404%_
                 (##unchecked-structure-ref _%self146145146392%_ '1 '#f 'ref))
                (_%method146400146405%_
                 (##unchecked-structure-ref _%self146145146392%_ '7 '#f 'ref)))
            (_%method146400146405%_
             _%object146399146404%_
             _%key146389%_
             _%default146390%_)))))
    (define ::HashTable-ref
      (lambda (_%self146146146407%_ _%key146408%_ _%default146409%_)
        (let* ((_%self146146146414%_
                (let ((_%$obj146411%_ _%self146146146407%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146411%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146411%_)))
                           '#t)
                      _%$obj146411%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146411%_)))))
               (_%self146146146416%_ _%self146146146414%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146424146429%_
                       (##unchecked-structure-ref
                        _%self146146146416%_
                        '1
                        '#f
                        'ref))
                      (_%method146425146430%_
                       (##unchecked-structure-ref
                        _%self146146146416%_
                        '7
                        '#f
                        'ref)))
                  (_%method146425146430%_
                   _%object146424146429%_
                   _%key146408%_
                   _%default146409%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146431146436%_
                       (##unchecked-structure-ref
                        _%self146146146416%_
                        '1
                        '#f
                        'ref))
                      (_%method146432146437%_
                       (##unchecked-structure-ref
                        _%self146146146416%_
                        '7
                        '#f
                        'ref)))
                  (_%method146432146437%_
                   _%object146431146436%_
                   _%key146408%_
                   _%default146409%_)))))))
    (define __HashTable-set!
      (lambda (_%self146440146683%_ _%key146684%_ _%value146685%_)
        (let ((_%self146440146687%_ _%self146440146683%_))
          (declare (not safe))
          (let ((_%object146694146699%_
                 (##unchecked-structure-ref _%self146440146687%_ '1 '#f 'set!))
                (_%method146695146700%_
                 (##unchecked-structure-ref
                  _%self146440146687%_
                  '8
                  '#f
                  'set!)))
            (_%method146695146700%_
             _%object146694146699%_
             _%key146684%_
             _%value146685%_)))))
    (define ::HashTable-set!
      (lambda (_%self146441146702%_ _%key146703%_ _%value146704%_)
        (let* ((_%self146441146709%_
                (let ((_%$obj146706%_ _%self146441146702%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146706%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146706%_)))
                           '#t)
                      _%$obj146706%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146706%_)))))
               (_%self146441146711%_ _%self146441146709%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146719146724%_
                       (##unchecked-structure-ref
                        _%self146441146711%_
                        '1
                        '#f
                        'set!))
                      (_%method146720146725%_
                       (##unchecked-structure-ref
                        _%self146441146711%_
                        '8
                        '#f
                        'set!)))
                  (_%method146720146725%_
                   _%object146719146724%_
                   _%key146703%_
                   _%value146704%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146726146731%_
                       (##unchecked-structure-ref
                        _%self146441146711%_
                        '1
                        '#f
                        'set!))
                      (_%method146727146732%_
                       (##unchecked-structure-ref
                        _%self146441146711%_
                        '8
                        '#f
                        'set!)))
                  (_%method146727146732%_
                   _%object146726146731%_
                   _%key146703%_
                   _%value146704%_)))))))
    (define __HashTable-update!
      (lambda (_%self146735146978%_
               _%key146979%_
               _%proc146980%_
               _%default146981%_)
        (let* ((_%self146735146983%_ _%self146735146978%_)
               (_%proc146990%_ _%proc146980%_))
          (declare (not safe))
          (let ((_%object146998147003%_
                 (##unchecked-structure-ref
                  _%self146735146983%_
                  '1
                  '#f
                  'update!))
                (_%method146999147004%_
                 (##unchecked-structure-ref
                  _%self146735146983%_
                  '9
                  '#f
                  'update!)))
            (_%method146999147004%_
             _%object146998147003%_
             _%key146979%_
             _%proc146990%_
             _%default146981%_)))))
    (define ::HashTable-update!
      (lambda (_%self146736147006%_
               _%key147007%_
               _%proc147008%_
               _%default147009%_)
        (let* ((_%self146736147014%_
                (let ((_%$obj147011%_ _%self146736147006%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147011%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147011%_)))
                           '#t)
                      _%$obj147011%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147011%_)))))
               (_%self146736147016%_ _%self146736147014%_))
          (if (procedure? _%proc147008%_)
              (let ((_%proc147025%_ _%proc147008%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object147034147039%_
                             (##unchecked-structure-ref
                              _%self146736147016%_
                              '1
                              '#f
                              'update!))
                            (_%method147035147040%_
                             (##unchecked-structure-ref
                              _%self146736147016%_
                              '9
                              '#f
                              'update!)))
                        (_%method147035147040%_
                         _%object147034147039%_
                         _%key147007%_
                         _%proc147025%_
                         _%default147009%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object147041147046%_
                             (##unchecked-structure-ref
                              _%self146736147016%_
                              '1
                              '#f
                              'update!))
                            (_%method147042147047%_
                             (##unchecked-structure-ref
                              _%self146736147016%_
                              '9
                              '#f
                              'update!)))
                        (_%method147042147047%_
                         _%object147041147046%_
                         _%key147007%_
                         _%proc147025%_
                         _%default147009%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc147008%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp161068 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp161068
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj161060
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161060
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj161060))
    (define make-Locker
      (lambda (_%obj159669%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj159669%_))))
    (define try-Locker
      (lambda (_%obj159667%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj159667%_))))
    (define Locker?
      (lambda (_%obj159665%_)
        (let ((__tmp161069
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj159665%_ __tmp161069))))
    (define is-Locker?
      (lambda (_%obj159662%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj159662%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self147050147293%_)
        (let ((_%self147050147295%_ _%self147050147293%_))
          (declare (not safe))
          (let ((_%object147302147307%_
                 (##unchecked-structure-ref
                  _%self147050147295%_
                  '1
                  '#f
                  'read-lock!))
                (_%method147303147308%_
                 (##unchecked-structure-ref
                  _%self147050147295%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method147303147308%_ _%object147302147307%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self147051147310%_)
        (let* ((_%self147051147315%_
                (let ((_%$obj147312%_ _%self147051147310%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147312%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147312%_)))
                           '#t)
                      _%$obj147312%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147312%_)))))
               (_%self147051147317%_ _%self147051147315%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147325147330%_
                       (##unchecked-structure-ref
                        _%self147051147317%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147326147331%_
                       (##unchecked-structure-ref
                        _%self147051147317%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147326147331%_ _%object147325147330%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147332147337%_
                       (##unchecked-structure-ref
                        _%self147051147317%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147333147338%_
                       (##unchecked-structure-ref
                        _%self147051147317%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147333147338%_ _%object147332147337%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self147341147584%_)
        (let ((_%self147341147586%_ _%self147341147584%_))
          (declare (not safe))
          (let ((_%object147593147598%_
                 (##unchecked-structure-ref
                  _%self147341147586%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method147594147599%_
                 (##unchecked-structure-ref
                  _%self147341147586%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method147594147599%_ _%object147593147598%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self147342147601%_)
        (let* ((_%self147342147606%_
                (let ((_%$obj147603%_ _%self147342147601%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147603%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147603%_)))
                           '#t)
                      _%$obj147603%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147603%_)))))
               (_%self147342147608%_ _%self147342147606%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147616147621%_
                       (##unchecked-structure-ref
                        _%self147342147608%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method147617147622%_
                       (##unchecked-structure-ref
                        _%self147342147608%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method147617147622%_ _%object147616147621%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147623147628%_
                       (##unchecked-structure-ref
                        _%self147342147608%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method147624147629%_
                       (##unchecked-structure-ref
                        _%self147342147608%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method147624147629%_ _%object147623147628%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self147632147875%_)
        (let ((_%self147632147877%_ _%self147632147875%_))
          (declare (not safe))
          (let ((_%object147884147889%_
                 (##unchecked-structure-ref
                  _%self147632147877%_
                  '1
                  '#f
                  'write-lock!))
                (_%method147885147890%_
                 (##unchecked-structure-ref
                  _%self147632147877%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method147885147890%_ _%object147884147889%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self147633147892%_)
        (let* ((_%self147633147897%_
                (let ((_%$obj147894%_ _%self147633147892%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147894%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147894%_)))
                           '#t)
                      _%$obj147894%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147894%_)))))
               (_%self147633147899%_ _%self147633147897%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147907147912%_
                       (##unchecked-structure-ref
                        _%self147633147899%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method147908147913%_
                       (##unchecked-structure-ref
                        _%self147633147899%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method147908147913%_ _%object147907147912%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147914147919%_
                       (##unchecked-structure-ref
                        _%self147633147899%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method147915147920%_
                       (##unchecked-structure-ref
                        _%self147633147899%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method147915147920%_ _%object147914147919%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self147923148166%_)
        (let ((_%self147923148168%_ _%self147923148166%_))
          (declare (not safe))
          (let ((_%object148175148180%_
                 (##unchecked-structure-ref
                  _%self147923148168%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method148176148181%_
                 (##unchecked-structure-ref
                  _%self147923148168%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method148176148181%_ _%object148175148180%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self147924148183%_)
        (let* ((_%self147924148188%_
                (let ((_%$obj148185%_ _%self147924148183%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148185%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148185%_)))
                           '#t)
                      _%$obj148185%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148185%_)))))
               (_%self147924148190%_ _%self147924148188%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148198148203%_
                       (##unchecked-structure-ref
                        _%self147924148190%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148199148204%_
                       (##unchecked-structure-ref
                        _%self147924148190%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148199148204%_ _%object148198148203%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148205148210%_
                       (##unchecked-structure-ref
                        _%self147924148190%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148206148211%_
                       (##unchecked-structure-ref
                        _%self147924148190%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148206148211%_ _%object148205148210%_)))))))
    (let* ((_%klass159625%_ __table::t)
           (_%id159628%_ 'HashTable::ref)
           (_%proc159631%_ raw-table-ref)
           (_%rebind?159634%_ '#f)
           (_%id159639%_ _%id159628%_)
           (_%proc159652%_ _%proc159631%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159625%_
       _%id159639%_
       _%proc159652%_
       _%rebind?159634%_))
    (let* ((_%klass159588%_ __table::t)
           (_%id159591%_ 'HashTable::set!)
           (_%proc159594%_ raw-table-set!)
           (_%rebind?159597%_ '#f)
           (_%id159602%_ _%id159591%_)
           (_%proc159615%_ _%proc159594%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159588%_
       _%id159602%_
       _%proc159615%_
       _%rebind?159597%_))
    (let* ((_%klass159551%_ __table::t)
           (_%id159554%_ 'HashTable::update!)
           (_%proc159557%_ raw-table-update!)
           (_%rebind?159560%_ '#f)
           (_%id159565%_ _%id159554%_)
           (_%proc159578%_ _%proc159557%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159551%_
       _%id159565%_
       _%proc159578%_
       _%rebind?159560%_))
    (let* ((_%klass159514%_ __table::t)
           (_%id159517%_ 'HashTable::delete!)
           (_%proc159520%_ raw-table-delete!)
           (_%rebind?159523%_ '#f)
           (_%id159528%_ _%id159517%_)
           (_%proc159541%_ _%proc159520%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159514%_
       _%id159528%_
       _%proc159541%_
       _%rebind?159523%_))
    (let* ((_%klass159477%_ __table::t)
           (_%id159480%_ 'HashTable::for-each)
           (_%proc159483%_ raw-table-for-each)
           (_%rebind?159486%_ '#f)
           (_%id159491%_ _%id159480%_)
           (_%proc159504%_ _%proc159483%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159477%_
       _%id159491%_
       _%proc159504%_
       _%rebind?159486%_))
    (let* ((_%klass159440%_ __table::t)
           (_%id159443%_ 'HashTable::length)
           (_%proc159446%_ &raw-table-count)
           (_%rebind?159449%_ '#f)
           (_%id159454%_ _%id159443%_)
           (_%proc159467%_ _%proc159446%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159440%_
       _%id159454%_
       _%proc159467%_
       _%rebind?159449%_))
    (let* ((_%klass159403%_ __table::t)
           (_%id159406%_ 'HashTable::copy)
           (_%proc159409%_ raw-table-copy)
           (_%rebind?159412%_ '#f)
           (_%id159417%_ _%id159406%_)
           (_%proc159430%_ _%proc159409%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159403%_
       _%id159417%_
       _%proc159430%_
       _%rebind?159412%_))
    (let* ((_%klass159366%_ __table::t)
           (_%id159369%_ 'HashTable::clear!)
           (_%proc159372%_ raw-table-clear!)
           (_%rebind?159375%_ '#f)
           (_%id159380%_ _%id159369%_)
           (_%proc159393%_ _%proc159372%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159366%_
       _%id159380%_
       _%proc159393%_
       _%rebind?159375%_))
    (let* ((_%klass159329%_ __gc-table::t)
           (_%id159332%_ 'HashTable::ref)
           (_%proc159335%_ gc-table-ref)
           (_%rebind?159338%_ '#f)
           (_%id159343%_ _%id159332%_)
           (_%proc159356%_ _%proc159335%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159329%_
       _%id159343%_
       _%proc159356%_
       _%rebind?159338%_))
    (let* ((_%klass159292%_ __gc-table::t)
           (_%id159295%_ 'HashTable::set!)
           (_%proc159298%_ gc-table-set!)
           (_%rebind?159301%_ '#f)
           (_%id159306%_ _%id159295%_)
           (_%proc159319%_ _%proc159298%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159292%_
       _%id159306%_
       _%proc159319%_
       _%rebind?159301%_))
    (let* ((_%klass159255%_ __gc-table::t)
           (_%id159258%_ 'HashTable::update!)
           (_%proc159261%_ gc-table-update!)
           (_%rebind?159264%_ '#f)
           (_%id159269%_ _%id159258%_)
           (_%proc159282%_ _%proc159261%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159255%_
       _%id159269%_
       _%proc159282%_
       _%rebind?159264%_))
    (let* ((_%klass159218%_ __gc-table::t)
           (_%id159221%_ 'HashTable::delete!)
           (_%proc159224%_ gc-table-delete!)
           (_%rebind?159227%_ '#f)
           (_%id159232%_ _%id159221%_)
           (_%proc159245%_ _%proc159224%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159218%_
       _%id159232%_
       _%proc159245%_
       _%rebind?159227%_))
    (let* ((_%klass159181%_ __gc-table::t)
           (_%id159184%_ 'HashTable::for-each)
           (_%proc159187%_ gc-table-for-each)
           (_%rebind?159190%_ '#f)
           (_%id159195%_ _%id159184%_)
           (_%proc159208%_ _%proc159187%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159181%_
       _%id159195%_
       _%proc159208%_
       _%rebind?159190%_))
    (let* ((_%klass159144%_ __gc-table::t)
           (_%id159147%_ 'HashTable::length)
           (_%proc159150%_ gc-table-length)
           (_%rebind?159153%_ '#f)
           (_%id159158%_ _%id159147%_)
           (_%proc159171%_ _%proc159150%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159144%_
       _%id159158%_
       _%proc159171%_
       _%rebind?159153%_))
    (let* ((_%klass159107%_ __gc-table::t)
           (_%id159110%_ 'HashTable::copy)
           (_%proc159113%_ gc-table-copy)
           (_%rebind?159116%_ '#f)
           (_%id159121%_ _%id159110%_)
           (_%proc159134%_ _%proc159113%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159107%_
       _%id159121%_
       _%proc159134%_
       _%rebind?159116%_))
    (let* ((_%klass159070%_ __gc-table::t)
           (_%id159073%_ 'HashTable::clear!)
           (_%proc159076%_ gc-table-clear!)
           (_%rebind?159079%_ '#f)
           (_%id159084%_ _%id159073%_)
           (_%proc159097%_ _%proc159076%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159070%_
       _%id159084%_
       _%proc159097%_
       _%rebind?159079%_))
    (define gambit-table-update!
      (lambda (_%table159063%_
               _%key159064%_
               _%update159065%_
               _%default159066%_)
        (let ((_%result159068%_
               (table-ref _%table159063%_ _%key159064%_ _%default159066%_)))
          (table-set!
           _%table159063%_
           _%key159064%_
           (_%update159065%_ _%default159066%_)))))
    (define gambit-table-for-each
      (lambda (_%table159060%_ _%proc159061%_)
        (table-for-each _%proc159061%_ _%table159060%_)))
    (define gambit-table-clear!
      (lambda (_%table159058%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table159058%_ '0 '5 '#f '#f))))
    (let* ((_%klass159021%_ (macro-type-table))
           (_%id159024%_ 'HashTable::ref)
           (_%proc159027%_ table-ref)
           (_%rebind?159030%_ '#f)
           (_%id159035%_ _%id159024%_)
           (_%proc159048%_ _%proc159027%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159021%_
       _%id159035%_
       _%proc159048%_
       _%rebind?159030%_))
    (let* ((_%klass158984%_ (macro-type-table))
           (_%id158987%_ 'HashTable::set!)
           (_%proc158990%_ table-set!)
           (_%rebind?158993%_ '#f)
           (_%id158998%_ _%id158987%_)
           (_%proc159011%_ _%proc158990%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158984%_
       _%id158998%_
       _%proc159011%_
       _%rebind?158993%_))
    (let* ((_%klass158947%_ (macro-type-table))
           (_%id158950%_ 'HashTable::update!)
           (_%proc158953%_ gambit-table-update!)
           (_%rebind?158956%_ '#f)
           (_%id158961%_ _%id158950%_)
           (_%proc158974%_ _%proc158953%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158947%_
       _%id158961%_
       _%proc158974%_
       _%rebind?158956%_))
    (let* ((_%klass158910%_ (macro-type-table))
           (_%id158913%_ 'HashTable::delete!)
           (_%proc158916%_ table-set!)
           (_%rebind?158919%_ '#f)
           (_%id158924%_ _%id158913%_)
           (_%proc158937%_ _%proc158916%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158910%_
       _%id158924%_
       _%proc158937%_
       _%rebind?158919%_))
    (let* ((_%klass158873%_ (macro-type-table))
           (_%id158876%_ 'HashTable::for-each)
           (_%proc158879%_ gambit-table-for-each)
           (_%rebind?158882%_ '#f)
           (_%id158887%_ _%id158876%_)
           (_%proc158900%_ _%proc158879%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158873%_
       _%id158887%_
       _%proc158900%_
       _%rebind?158882%_))
    (let* ((_%klass158836%_ (macro-type-table))
           (_%id158839%_ 'HashTable::length)
           (_%proc158842%_ table-length)
           (_%rebind?158845%_ '#f)
           (_%id158850%_ _%id158839%_)
           (_%proc158863%_ _%proc158842%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158836%_
       _%id158850%_
       _%proc158863%_
       _%rebind?158845%_))
    (let* ((_%klass158799%_ (macro-type-table))
           (_%id158802%_ 'HashTable::copy)
           (_%proc158805%_ table-copy)
           (_%rebind?158808%_ '#f)
           (_%id158813%_ _%id158802%_)
           (_%proc158826%_ _%proc158805%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158799%_
       _%id158813%_
       _%proc158826%_
       _%rebind?158808%_))
    (let* ((_%klass158762%_ (macro-type-table))
           (_%id158765%_ 'HashTable::clear!)
           (_%proc158768%_ gambit-table-clear!)
           (_%rebind?158771%_ '#f)
           (_%id158776%_ _%id158765%_)
           (_%proc158789%_ _%proc158768%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158762%_
       _%id158776%_
       _%proc158789%_
       _%rebind?158771%_))
    (define hash-table::t
      (let* ((_%slots158725%_ '(table count free hash test seed))
             (_%slot-vector158727%_ (list->vector (cons '#f _%slots158725%_)))
             (_%slot-table158753%_
              (let ((_%slot-table158729%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161072
                       (lambda (_%slot158731%_ _%field158732%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158729%_
                            _%slot158731%_
                            _%field158732%_))
                         (let ((__tmp161073
                                (let ((_%sym158734%_ _%slot158731%_))
                                  (if (symbol? _%sym158734%_)
                                      (let ((_%sym158739%_ _%sym158734%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym158739%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym158734%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158729%_
                            __tmp161073
                            _%field158732%_))))
                      (__tmp161070
                       (let ((__tmp161071
                              (let ()
                                (declare (not safe))
                                (##length _%slots158725%_))))
                         (declare (not safe))
                         (##iota __tmp161071 '1))))
                  (declare (not safe))
                  (##for-each __tmp161072 _%slots158725%_ __tmp161070))
                _%slot-table158729%_))
             (_%flags158755%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields158757%_ '#())
             (_%properties158759%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots158725%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161074 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags158755%_
         __table::t
         _%fields158757%_
         __tmp161074
         _%slot-vector158727%_
         _%slot-table158753%_
         _%properties158759%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots158688%_ '(gcht immediate))
             (_%slot-vector158690%_ (list->vector (cons '#f _%slots158688%_)))
             (_%slot-table158716%_
              (let ((_%slot-table158692%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161077
                       (lambda (_%slot158694%_ _%field158695%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158692%_
                            _%slot158694%_
                            _%field158695%_))
                         (let ((__tmp161078
                                (let ((_%sym158697%_ _%slot158694%_))
                                  (if (symbol? _%sym158697%_)
                                      (let ((_%sym158702%_ _%sym158697%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym158702%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym158697%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158692%_
                            __tmp161078
                            _%field158695%_))))
                      (__tmp161075
                       (let ((__tmp161076
                              (let ()
                                (declare (not safe))
                                (##length _%slots158688%_))))
                         (declare (not safe))
                         (##iota __tmp161076 '1))))
                  (declare (not safe))
                  (##for-each __tmp161077 _%slots158688%_ __tmp161075))
                _%slot-table158692%_))
             (_%flags158718%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields158720%_ '#())
             (_%properties158722%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots158688%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161079 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags158718%_
         __gc-table::t
         _%fields158720%_
         __tmp161079
         _%slot-vector158690%_
         _%slot-table158716%_
         _%properties158722%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp161081 (list))
            (__tmp161080
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp161081
         '(table lock)
         __tmp161080
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args158685%_
        (apply make-instance locked-hash-table::t _%$args158685%_)))
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
      (let ((__tmp161083 (list))
            (__tmp161082
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp161083
         '(table key-check)
         __tmp161082
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args158682%_
        (apply make-instance checked-hash-table::t _%$args158682%_)))
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
      (let ((__tmp161085 (list hash-table::t))
            (__tmp161084 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp161085
         '()
         __tmp161084
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args158679%_
        (apply make-instance eq-hash-table::t _%$args158679%_)))
    (define eqv-hash-table::t
      (let ((__tmp161087 (list hash-table::t))
            (__tmp161086 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp161087
         '()
         __tmp161086
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args158676%_
        (apply make-instance eqv-hash-table::t _%$args158676%_)))
    (define symbol-hash-table::t
      (let ((__tmp161089 (list hash-table::t))
            (__tmp161088 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp161089
         '()
         __tmp161088
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args158673%_
        (apply make-instance symbol-hash-table::t _%$args158673%_)))
    (define string-hash-table::t
      (let ((__tmp161091 (list hash-table::t))
            (__tmp161090 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp161091
         '()
         __tmp161090
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args158670%_
        (apply make-instance string-hash-table::t _%$args158670%_)))
    (define immediate-hash-table::t
      (let ((__tmp161093 (list hash-table::t))
            (__tmp161092 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp161093
         '()
         __tmp161092
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args158667%_
        (apply make-instance immediate-hash-table::t _%$args158667%_)))
    (let* ((_%klass158630%_ hash-table::t)
           (_%id158633%_ 'HashTable::ref)
           (_%proc158636%_ raw-table-ref)
           (_%rebind?158639%_ '#f)
           (_%id158644%_ _%id158633%_)
           (_%proc158657%_ _%proc158636%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158630%_
       _%id158644%_
       _%proc158657%_
       _%rebind?158639%_))
    (let* ((_%klass158593%_ hash-table::t)
           (_%id158596%_ 'HashTable::set!)
           (_%proc158599%_ raw-table-set!)
           (_%rebind?158602%_ '#f)
           (_%id158607%_ _%id158596%_)
           (_%proc158620%_ _%proc158599%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158593%_
       _%id158607%_
       _%proc158620%_
       _%rebind?158602%_))
    (let* ((_%klass158556%_ hash-table::t)
           (_%id158559%_ 'HashTable::update!)
           (_%proc158562%_ raw-table-update!)
           (_%rebind?158565%_ '#f)
           (_%id158570%_ _%id158559%_)
           (_%proc158583%_ _%proc158562%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158556%_
       _%id158570%_
       _%proc158583%_
       _%rebind?158565%_))
    (let* ((_%klass158519%_ hash-table::t)
           (_%id158522%_ 'HashTable::delete!)
           (_%proc158525%_ raw-table-delete!)
           (_%rebind?158528%_ '#f)
           (_%id158533%_ _%id158522%_)
           (_%proc158546%_ _%proc158525%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158519%_
       _%id158533%_
       _%proc158546%_
       _%rebind?158528%_))
    (let* ((_%klass158482%_ hash-table::t)
           (_%id158485%_ 'HashTable::for-each)
           (_%proc158488%_ raw-table-for-each)
           (_%rebind?158491%_ '#f)
           (_%id158496%_ _%id158485%_)
           (_%proc158509%_ _%proc158488%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158482%_
       _%id158496%_
       _%proc158509%_
       _%rebind?158491%_))
    (let* ((_%klass158445%_ hash-table::t)
           (_%id158448%_ 'HashTable::length)
           (_%proc158451%_ &raw-table-count)
           (_%rebind?158454%_ '#f)
           (_%id158459%_ _%id158448%_)
           (_%proc158472%_ _%proc158451%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158445%_
       _%id158459%_
       _%proc158472%_
       _%rebind?158454%_))
    (let* ((_%klass158408%_ hash-table::t)
           (_%id158411%_ 'HashTable::copy)
           (_%proc158414%_ raw-table-copy)
           (_%rebind?158417%_ '#f)
           (_%id158422%_ _%id158411%_)
           (_%proc158435%_ _%proc158414%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158408%_
       _%id158422%_
       _%proc158435%_
       _%rebind?158417%_))
    (let* ((_%klass158371%_ hash-table::t)
           (_%id158374%_ 'HashTable::clear!)
           (_%proc158377%_ raw-table-clear!)
           (_%rebind?158380%_ '#f)
           (_%id158385%_ _%id158374%_)
           (_%proc158398%_ _%proc158377%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158371%_
       _%id158385%_
       _%proc158398%_
       _%rebind?158380%_))
    (let* ((_%klass158334%_ eq-hash-table::t)
           (_%id158337%_ 'HashTable::ref)
           (_%proc158340%_ eq-table-ref)
           (_%rebind?158343%_ '#f)
           (_%id158348%_ _%id158337%_)
           (_%proc158361%_ _%proc158340%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158334%_
       _%id158348%_
       _%proc158361%_
       _%rebind?158343%_))
    (let* ((_%klass158297%_ eq-hash-table::t)
           (_%id158300%_ 'HashTable::set!)
           (_%proc158303%_ eq-table-set!)
           (_%rebind?158306%_ '#f)
           (_%id158311%_ _%id158300%_)
           (_%proc158324%_ _%proc158303%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158297%_
       _%id158311%_
       _%proc158324%_
       _%rebind?158306%_))
    (let* ((_%klass158260%_ eq-hash-table::t)
           (_%id158263%_ 'HashTable::update!)
           (_%proc158266%_ eq-table-update!)
           (_%rebind?158269%_ '#f)
           (_%id158274%_ _%id158263%_)
           (_%proc158287%_ _%proc158266%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158260%_
       _%id158274%_
       _%proc158287%_
       _%rebind?158269%_))
    (let* ((_%klass158223%_ eq-hash-table::t)
           (_%id158226%_ 'HashTable::delete!)
           (_%proc158229%_ eq-table-delete!)
           (_%rebind?158232%_ '#f)
           (_%id158237%_ _%id158226%_)
           (_%proc158250%_ _%proc158229%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158223%_
       _%id158237%_
       _%proc158250%_
       _%rebind?158232%_))
    (let* ((_%klass158186%_ eqv-hash-table::t)
           (_%id158189%_ 'HashTable::ref)
           (_%proc158192%_ eqv-table-ref)
           (_%rebind?158195%_ '#f)
           (_%id158200%_ _%id158189%_)
           (_%proc158213%_ _%proc158192%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158186%_
       _%id158200%_
       _%proc158213%_
       _%rebind?158195%_))
    (let* ((_%klass158149%_ eqv-hash-table::t)
           (_%id158152%_ 'HashTable::set!)
           (_%proc158155%_ eqv-table-set!)
           (_%rebind?158158%_ '#f)
           (_%id158163%_ _%id158152%_)
           (_%proc158176%_ _%proc158155%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158149%_
       _%id158163%_
       _%proc158176%_
       _%rebind?158158%_))
    (let* ((_%klass158112%_ eqv-hash-table::t)
           (_%id158115%_ 'HashTable::update!)
           (_%proc158118%_ eqv-table-update!)
           (_%rebind?158121%_ '#f)
           (_%id158126%_ _%id158115%_)
           (_%proc158139%_ _%proc158118%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158112%_
       _%id158126%_
       _%proc158139%_
       _%rebind?158121%_))
    (let* ((_%klass158075%_ eqv-hash-table::t)
           (_%id158078%_ 'HashTable::delete!)
           (_%proc158081%_ eqv-table-delete!)
           (_%rebind?158084%_ '#f)
           (_%id158089%_ _%id158078%_)
           (_%proc158102%_ _%proc158081%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158075%_
       _%id158089%_
       _%proc158102%_
       _%rebind?158084%_))
    (let* ((_%klass158038%_ symbol-hash-table::t)
           (_%id158041%_ 'HashTable::ref)
           (_%proc158044%_ symbolic-table-ref)
           (_%rebind?158047%_ '#f)
           (_%id158052%_ _%id158041%_)
           (_%proc158065%_ _%proc158044%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158038%_
       _%id158052%_
       _%proc158065%_
       _%rebind?158047%_))
    (let* ((_%klass158001%_ symbol-hash-table::t)
           (_%id158004%_ 'HashTable::set!)
           (_%proc158007%_ symbolic-table-set!)
           (_%rebind?158010%_ '#f)
           (_%id158015%_ _%id158004%_)
           (_%proc158028%_ _%proc158007%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158001%_
       _%id158015%_
       _%proc158028%_
       _%rebind?158010%_))
    (let* ((_%klass157964%_ symbol-hash-table::t)
           (_%id157967%_ 'HashTable::update!)
           (_%proc157970%_ symbolic-table-update!)
           (_%rebind?157973%_ '#f)
           (_%id157978%_ _%id157967%_)
           (_%proc157991%_ _%proc157970%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157964%_
       _%id157978%_
       _%proc157991%_
       _%rebind?157973%_))
    (let* ((_%klass157927%_ symbol-hash-table::t)
           (_%id157930%_ 'HashTable::delete!)
           (_%proc157933%_ symbolic-table-delete!)
           (_%rebind?157936%_ '#f)
           (_%id157941%_ _%id157930%_)
           (_%proc157954%_ _%proc157933%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157927%_
       _%id157941%_
       _%proc157954%_
       _%rebind?157936%_))
    (let* ((_%klass157890%_ string-hash-table::t)
           (_%id157893%_ 'HashTable::ref)
           (_%proc157896%_ string-table-ref)
           (_%rebind?157899%_ '#f)
           (_%id157904%_ _%id157893%_)
           (_%proc157917%_ _%proc157896%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157890%_
       _%id157904%_
       _%proc157917%_
       _%rebind?157899%_))
    (let* ((_%klass157853%_ string-hash-table::t)
           (_%id157856%_ 'HashTable::set!)
           (_%proc157859%_ string-table-set!)
           (_%rebind?157862%_ '#f)
           (_%id157867%_ _%id157856%_)
           (_%proc157880%_ _%proc157859%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157853%_
       _%id157867%_
       _%proc157880%_
       _%rebind?157862%_))
    (let* ((_%klass157816%_ string-hash-table::t)
           (_%id157819%_ 'HashTable::update!)
           (_%proc157822%_ string-table-update!)
           (_%rebind?157825%_ '#f)
           (_%id157830%_ _%id157819%_)
           (_%proc157843%_ _%proc157822%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157816%_
       _%id157830%_
       _%proc157843%_
       _%rebind?157825%_))
    (let* ((_%klass157779%_ string-hash-table::t)
           (_%id157782%_ 'HashTable::delete!)
           (_%proc157785%_ string-table-delete!)
           (_%rebind?157788%_ '#f)
           (_%id157793%_ _%id157782%_)
           (_%proc157806%_ _%proc157785%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157779%_
       _%id157793%_
       _%proc157806%_
       _%rebind?157788%_))
    (let* ((_%klass157742%_ immediate-hash-table::t)
           (_%id157745%_ 'HashTable::ref)
           (_%proc157748%_ immediate-table-ref)
           (_%rebind?157751%_ '#f)
           (_%id157756%_ _%id157745%_)
           (_%proc157769%_ _%proc157748%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157742%_
       _%id157756%_
       _%proc157769%_
       _%rebind?157751%_))
    (let* ((_%klass157705%_ immediate-hash-table::t)
           (_%id157708%_ 'HashTable::set!)
           (_%proc157711%_ immediate-table-set!)
           (_%rebind?157714%_ '#f)
           (_%id157719%_ _%id157708%_)
           (_%proc157732%_ _%proc157711%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157705%_
       _%id157719%_
       _%proc157732%_
       _%rebind?157714%_))
    (let* ((_%klass157668%_ immediate-hash-table::t)
           (_%id157671%_ 'HashTable::update!)
           (_%proc157674%_ immediate-table-update!)
           (_%rebind?157677%_ '#f)
           (_%id157682%_ _%id157671%_)
           (_%proc157695%_ _%proc157674%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157668%_
       _%id157682%_
       _%proc157695%_
       _%rebind?157677%_))
    (let* ((_%klass157631%_ immediate-hash-table::t)
           (_%id157634%_ 'HashTable::delete!)
           (_%proc157637%_ immediate-table-delete!)
           (_%rebind?157640%_ '#f)
           (_%id157645%_ _%id157634%_)
           (_%proc157658%_ _%proc157637%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157631%_
       _%id157645%_
       _%proc157658%_
       _%rebind?157640%_))
    (let* ((_%klass157594%_ gc-hash-table::t)
           (_%id157597%_ 'HashTable::ref)
           (_%proc157600%_ gc-table-ref)
           (_%rebind?157603%_ '#f)
           (_%id157608%_ _%id157597%_)
           (_%proc157621%_ _%proc157600%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157594%_
       _%id157608%_
       _%proc157621%_
       _%rebind?157603%_))
    (let* ((_%klass157557%_ gc-hash-table::t)
           (_%id157560%_ 'HashTable::set!)
           (_%proc157563%_ gc-table-set!)
           (_%rebind?157566%_ '#f)
           (_%id157571%_ _%id157560%_)
           (_%proc157584%_ _%proc157563%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157557%_
       _%id157571%_
       _%proc157584%_
       _%rebind?157566%_))
    (let* ((_%klass157520%_ gc-hash-table::t)
           (_%id157523%_ 'HashTable::update!)
           (_%proc157526%_ gc-table-update!)
           (_%rebind?157529%_ '#f)
           (_%id157534%_ _%id157523%_)
           (_%proc157547%_ _%proc157526%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157520%_
       _%id157534%_
       _%proc157547%_
       _%rebind?157529%_))
    (let* ((_%klass157483%_ gc-hash-table::t)
           (_%id157486%_ 'HashTable::delete!)
           (_%proc157489%_ gc-table-delete!)
           (_%rebind?157492%_ '#f)
           (_%id157497%_ _%id157486%_)
           (_%proc157510%_ _%proc157489%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157483%_
       _%id157497%_
       _%proc157510%_
       _%rebind?157492%_))
    (let* ((_%klass157446%_ gc-hash-table::t)
           (_%id157449%_ 'HashTable::for-each)
           (_%proc157452%_ gc-table-for-each)
           (_%rebind?157455%_ '#f)
           (_%id157460%_ _%id157449%_)
           (_%proc157473%_ _%proc157452%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157446%_
       _%id157460%_
       _%proc157473%_
       _%rebind?157455%_))
    (let* ((_%klass157409%_ gc-hash-table::t)
           (_%id157412%_ 'HashTable::length)
           (_%proc157415%_ gc-table-length)
           (_%rebind?157418%_ '#f)
           (_%id157423%_ _%id157412%_)
           (_%proc157436%_ _%proc157415%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157409%_
       _%id157423%_
       _%proc157436%_
       _%rebind?157418%_))
    (let* ((_%klass157372%_ gc-hash-table::t)
           (_%id157375%_ 'HashTable::copy)
           (_%proc157378%_ gc-table-copy)
           (_%rebind?157381%_ '#f)
           (_%id157386%_ _%id157375%_)
           (_%proc157399%_ _%proc157378%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157372%_
       _%id157386%_
       _%proc157399%_
       _%rebind?157381%_))
    (let* ((_%klass157335%_ gc-hash-table::t)
           (_%id157338%_ 'HashTable::clear!)
           (_%proc157341%_ gc-table-clear!)
           (_%rebind?157344%_ '#f)
           (_%id157349%_ _%id157338%_)
           (_%proc157362%_ _%proc157341%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157335%_
       _%id157349%_
       _%proc157362%_
       _%rebind?157344%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref148596%_
      (lambda (_%self157256%_ _%key157258%_ _%default157259%_)
        (let* ((_%self157262%_ _%self157256%_)
               (_%key157271%_ _%key157258%_)
               (_%default157279%_ _%default157259%_))
          (let ((_%h157288%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157262%_ '1 '#f '#f)))
                (_%l157290%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157262%_ '2 '#f '#f))))
            (let ((__tmp161096
                   (lambda ()
                     (let ((_%self147048157294%_ _%l157290%_))
                       (declare (not safe))
                       (let ((_%object157297157302%_
                              (##unchecked-structure-ref
                               _%self147048157294%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157298157303%_
                              (##unchecked-structure-ref
                               _%self147048157294%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157298157303%_ _%object157297157302%_)))))
                  (__tmp161095
                   (lambda ()
                     (let* ((_%self146143157306%_ _%h157288%_)
                            (_%key157309%_ _%key157271%_)
                            (_%default157312%_ _%default157279%_))
                       (declare (not safe))
                       (let ((_%object157315157320%_
                              (##unchecked-structure-ref
                               _%self146143157306%_
                               '1
                               '#f
                               'ref))
                             (_%method157316157321%_
                              (##unchecked-structure-ref
                               _%self146143157306%_
                               '7
                               '#f
                               'ref)))
                         (_%method157316157321%_
                          _%object157315157320%_
                          _%key157309%_
                          _%default157312%_)))))
                  (__tmp161094
                   (lambda ()
                     (let ((_%self147339157324%_ _%l157290%_))
                       (declare (not safe))
                       (let ((_%object157327157332%_
                              (##unchecked-structure-ref
                               _%self147339157324%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157328157333%_
                              (##unchecked-structure-ref
                               _%self147339157324%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157328157333%_ _%object157327157332%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161096 __tmp161095 __tmp161094))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref148596%_
       '#f))
    (define _%locked-hash-table::HashTable::set!148598%_
      (lambda (_%self157054%_ _%key157056%_ _%value157057%_)
        (let* ((_%self157060%_ _%self157054%_)
               (_%key157069%_ _%key157056%_)
               (_%value157077%_ _%value157057%_))
          (let ((_%h157086%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157060%_ '1 '#f '#f)))
                (_%l157088%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157060%_ '2 '#f '#f))))
            (let ((__tmp161099
                   (lambda ()
                     (let ((_%self147630157092%_ _%l157088%_))
                       (declare (not safe))
                       (let ((_%object157095157100%_
                              (##unchecked-structure-ref
                               _%self147630157092%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157096157101%_
                              (##unchecked-structure-ref
                               _%self147630157092%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157096157101%_ _%object157095157100%_)))))
                  (__tmp161098
                   (lambda ()
                     (let* ((_%self146438157104%_ _%h157086%_)
                            (_%key157107%_ _%key157069%_)
                            (_%value157110%_ _%value157077%_))
                       (declare (not safe))
                       (let ((_%object157113157118%_
                              (##unchecked-structure-ref
                               _%self146438157104%_
                               '1
                               '#f
                               'set!))
                             (_%method157114157119%_
                              (##unchecked-structure-ref
                               _%self146438157104%_
                               '8
                               '#f
                               'set!)))
                         (_%method157114157119%_
                          _%object157113157118%_
                          _%key157107%_
                          _%value157110%_)))))
                  (__tmp161097
                   (lambda ()
                     (let ((_%self147921157122%_ _%l157088%_))
                       (declare (not safe))
                       (let ((_%object157125157130%_
                              (##unchecked-structure-ref
                               _%self147921157122%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157126157131%_
                              (##unchecked-structure-ref
                               _%self147921157122%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157126157131%_ _%object157125157130%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161099 __tmp161098 __tmp161097))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!148598%_
       '#f))
    (define _%locked-hash-table::HashTable::update!148600%_
      (lambda (_%self156840%_ _%key156842%_ _%update156843%_ _%default156844%_)
        (let* ((_%self156847%_ _%self156840%_)
               (_%key156856%_ _%key156842%_)
               (_%update156864%_ _%update156843%_)
               (_%default156872%_ _%default156844%_))
          (let ((_%h156881%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156847%_ '1 '#f '#f)))
                (_%l156883%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156847%_ '2 '#f '#f))))
            (let ((__tmp161102
                   (lambda ()
                     (let ((_%self147630156887%_ _%l156883%_))
                       (declare (not safe))
                       (let ((_%object156890156895%_
                              (##unchecked-structure-ref
                               _%self147630156887%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156891156896%_
                              (##unchecked-structure-ref
                               _%self147630156887%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156891156896%_ _%object156890156895%_)))))
                  (__tmp161101
                   (lambda ()
                     (let* ((_%self146733156899%_ _%h156881%_)
                            (_%key156902%_ _%key156856%_)
                            (_%proc156905%_ _%update156864%_)
                            (_%default156908%_ _%default156872%_))
                       (declare (not safe))
                       (let ((_%object156911156916%_
                              (##unchecked-structure-ref
                               _%self146733156899%_
                               '1
                               '#f
                               'update!))
                             (_%method156912156917%_
                              (##unchecked-structure-ref
                               _%self146733156899%_
                               '9
                               '#f
                               'update!)))
                         (_%method156912156917%_
                          _%object156911156916%_
                          _%key156902%_
                          _%proc156905%_
                          _%default156908%_)))))
                  (__tmp161100
                   (lambda ()
                     (let ((_%self147921156920%_ _%l156883%_))
                       (declare (not safe))
                       (let ((_%object156923156928%_
                              (##unchecked-structure-ref
                               _%self147921156920%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156924156929%_
                              (##unchecked-structure-ref
                               _%self147921156920%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156924156929%_ _%object156923156928%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161102 __tmp161101 __tmp161100))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!148600%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!148602%_
      (lambda (_%self156650%_ _%key156652%_)
        (let* ((_%self156655%_ _%self156650%_) (_%key156664%_ _%key156652%_))
          (let ((_%h156673%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156655%_ '1 '#f '#f)))
                (_%l156675%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156655%_ '2 '#f '#f))))
            (let ((__tmp161105
                   (lambda ()
                     (let ((_%self147630156679%_ _%l156675%_))
                       (declare (not safe))
                       (let ((_%object156682156687%_
                              (##unchecked-structure-ref
                               _%self147630156679%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156683156688%_
                              (##unchecked-structure-ref
                               _%self147630156679%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156683156688%_ _%object156682156687%_)))))
                  (__tmp161104
                   (lambda ()
                     (let* ((_%self145245156691%_ _%h156673%_)
                            (_%key156694%_ _%key156664%_))
                       (declare (not safe))
                       (let ((_%object156697156702%_
                              (##unchecked-structure-ref
                               _%self145245156691%_
                               '1
                               '#f
                               'delete!))
                             (_%method156698156703%_
                              (##unchecked-structure-ref
                               _%self145245156691%_
                               '4
                               '#f
                               'delete!)))
                         (_%method156698156703%_
                          _%object156697156702%_
                          _%key156694%_)))))
                  (__tmp161103
                   (lambda ()
                     (let ((_%self147921156706%_ _%l156675%_))
                       (declare (not safe))
                       (let ((_%object156709156714%_
                              (##unchecked-structure-ref
                               _%self147921156706%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156710156715%_
                              (##unchecked-structure-ref
                               _%self147921156706%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156710156715%_ _%object156709156714%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161105 __tmp161104 __tmp161103))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!148602%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each148604%_
      (lambda (_%self156460%_ _%proc156462%_)
        (let* ((_%self156465%_ _%self156460%_) (_%proc156474%_ _%proc156462%_))
          (let ((_%h156483%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156465%_ '1 '#f '#f)))
                (_%l156485%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156465%_ '2 '#f '#f))))
            (let ((__tmp161108
                   (lambda ()
                     (let ((_%self147048156489%_ _%l156485%_))
                       (declare (not safe))
                       (let ((_%object156492156497%_
                              (##unchecked-structure-ref
                               _%self147048156489%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method156493156498%_
                              (##unchecked-structure-ref
                               _%self147048156489%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method156493156498%_ _%object156492156497%_)))))
                  (__tmp161107
                   (lambda ()
                     (let* ((_%self145538156501%_ _%h156483%_)
                            (_%proc156504%_ _%proc156474%_))
                       (declare (not safe))
                       (let ((_%object156507156512%_
                              (##unchecked-structure-ref
                               _%self145538156501%_
                               '1
                               '#f
                               'for-each))
                             (_%method156508156513%_
                              (##unchecked-structure-ref
                               _%self145538156501%_
                               '5
                               '#f
                               'for-each)))
                         (_%method156508156513%_
                          _%object156507156512%_
                          _%proc156504%_)))))
                  (__tmp161106
                   (lambda ()
                     (let ((_%self147339156516%_ _%l156485%_))
                       (declare (not safe))
                       (let ((_%object156519156524%_
                              (##unchecked-structure-ref
                               _%self147339156516%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method156520156525%_
                              (##unchecked-structure-ref
                               _%self147339156516%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method156520156525%_ _%object156519156524%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161108 __tmp161107 __tmp161106))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each148604%_
       '#f))
    (define _%locked-hash-table::HashTable::length148606%_
      (lambda (_%self156275%_)
        (let ((_%self156279%_ _%self156275%_))
          (let ((_%h156289%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156279%_ '1 '#f '#f)))
                (_%l156291%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156279%_ '2 '#f '#f))))
            ((lambda (_%g156293156295%_)
               (let ((_%val156298%_ _%g156293156295%_))
                 (if (fixnum? _%val156298%_)
                     _%val156298%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val156298%_)
                       '#!void))))
             (let ((__tmp161111
                    (lambda ()
                      (let ((_%self147048156302%_ _%l156291%_))
                        (declare (not safe))
                        (let ((_%object156305156310%_
                               (##unchecked-structure-ref
                                _%self147048156302%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method156306156311%_
                               (##unchecked-structure-ref
                                _%self147048156302%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method156306156311%_ _%object156305156310%_)))))
                   (__tmp161110
                    (lambda ()
                      (let ((_%self145849156314%_ _%h156289%_))
                        (declare (not safe))
                        (let ((_%object156317156322%_
                               (##unchecked-structure-ref
                                _%self145849156314%_
                                '1
                                '#f
                                'length))
                              (_%method156318156323%_
                               (##unchecked-structure-ref
                                _%self145849156314%_
                                '6
                                '#f
                                'length)))
                          (_%method156318156323%_ _%object156317156322%_)))))
                   (__tmp161109
                    (lambda ()
                      (let ((_%self147339156326%_ _%l156291%_))
                        (declare (not safe))
                        (let ((_%object156329156334%_
                               (##unchecked-structure-ref
                                _%self147339156326%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method156330156335%_
                               (##unchecked-structure-ref
                                _%self147339156326%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method156330156335%_ _%object156329156334%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp161111 __tmp161110 __tmp161109)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length148606%_
       '#f))
    (define _%locked-hash-table::HashTable::copy148608%_
      (lambda (_%self156094%_)
        (let ((_%self156098%_ _%self156094%_))
          (let ((_%h156108%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156098%_ '1 '#f '#f)))
                (_%l156110%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156098%_ '2 '#f '#f))))
            (let ((_%$obj156149%_
                   (let ((__tmp161114
                          (lambda ()
                            (let ((_%self147048156114%_ _%l156110%_))
                              (declare (not safe))
                              (let ((_%object156117156122%_
                                     (##unchecked-structure-ref
                                      _%self147048156114%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method156118156123%_
                                     (##unchecked-structure-ref
                                      _%self147048156114%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method156118156123%_
                                 _%object156117156122%_)))))
                         (__tmp161113
                          (lambda ()
                            (let ((_%self144951156126%_ _%h156108%_))
                              (declare (not safe))
                              (let ((_%object156129156134%_
                                     (##unchecked-structure-ref
                                      _%self144951156126%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method156130156135%_
                                     (##unchecked-structure-ref
                                      _%self144951156126%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method156130156135%_
                                 _%object156129156134%_)))))
                         (__tmp161112
                          (lambda ()
                            (let ((_%self147339156138%_ _%l156110%_))
                              (declare (not safe))
                              (let ((_%object156141156146%_
                                     (##unchecked-structure-ref
                                      _%self147339156138%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method156142156147%_
                                     (##unchecked-structure-ref
                                      _%self147339156138%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method156142156147%_
                                 _%object156141156146%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp161114 __tmp161113 __tmp161112))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj156149%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj156149%_)))
                       '#t)
                  _%$obj156149%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj156149%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy148608%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!148610%_
      (lambda (_%self155916%_)
        (let ((_%self155920%_ _%self155916%_))
          (let ((_%h155930%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155920%_ '1 '#f '#f)))
                (_%l155932%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155920%_ '2 '#f '#f))))
            (let ((__tmp161117
                   (lambda ()
                     (let ((_%self147630155936%_ _%l155932%_))
                       (declare (not safe))
                       (let ((_%object155939155944%_
                              (##unchecked-structure-ref
                               _%self147630155936%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method155940155945%_
                              (##unchecked-structure-ref
                               _%self147630155936%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method155940155945%_ _%object155939155944%_)))))
                  (__tmp161116
                   (lambda ()
                     (let ((_%self144659155948%_ _%h155930%_))
                       (declare (not safe))
                       (let ((_%object155951155956%_
                              (##unchecked-structure-ref
                               _%self144659155948%_
                               '1
                               '#f
                               'clear!))
                             (_%method155952155957%_
                              (##unchecked-structure-ref
                               _%self144659155948%_
                               '2
                               '#f
                               'clear!)))
                         (_%method155952155957%_ _%object155951155956%_)))))
                  (__tmp161115
                   (lambda ()
                     (let ((_%self147921155960%_ _%l155932%_))
                       (declare (not safe))
                       (let ((_%object155963155968%_
                              (##unchecked-structure-ref
                               _%self147921155960%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method155964155969%_
                              (##unchecked-structure-ref
                               _%self147921155960%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method155964155969%_ _%object155963155968%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161117 __tmp161116 __tmp161115))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!148610%_
       '#f))
    (let* ((_%klass155756%_ (macro-type-mutex))
           (_%id155759%_ 'Locker::read-lock!)
           (_%proc155762%_ mutex-lock!)
           (_%rebind?155765%_ '#f)
           (_%id155770%_ _%id155759%_)
           (_%proc155783%_ _%proc155762%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155756%_
       _%id155770%_
       _%proc155783%_
       _%rebind?155765%_))
    (let* ((_%klass155719%_ (macro-type-mutex))
           (_%id155722%_ 'Locker::read-unlock!)
           (_%proc155725%_ mutex-unlock!)
           (_%rebind?155728%_ '#f)
           (_%id155733%_ _%id155722%_)
           (_%proc155746%_ _%proc155725%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155719%_
       _%id155733%_
       _%proc155746%_
       _%rebind?155728%_))
    (let* ((_%klass155682%_ (macro-type-mutex))
           (_%id155685%_ 'Locker::write-lock!)
           (_%proc155688%_ mutex-lock!)
           (_%rebind?155691%_ '#f)
           (_%id155696%_ _%id155685%_)
           (_%proc155709%_ _%proc155688%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155682%_
       _%id155696%_
       _%proc155709%_
       _%rebind?155691%_))
    (let* ((_%klass155645%_ (macro-type-mutex))
           (_%id155648%_ 'Locker::write-unlock!)
           (_%proc155651%_ mutex-unlock!)
           (_%rebind?155654%_ '#f)
           (_%id155659%_ _%id155648%_)
           (_%proc155672%_ _%proc155651%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155645%_
       _%id155659%_
       _%proc155672%_
       _%rebind?155654%_))
    (define _%checked-hash-table::HashTable::ref148821%_
      (lambda (_%self155586%_ _%key155587%_ _%default155588%_)
        (let* ((_%self155591%_ _%self155586%_)
               (_%key155600%_ _%key155587%_)
               (_%default155608%_ _%default155588%_))
          (declare (not safe))
          (let ((_%h155619%_
                 (##unchecked-structure-ref _%self155591%_ '1 '#f '#f))
                (_%key?155621%_
                 (##unchecked-structure-ref _%self155591%_ '2 '#f '#f)))
            (if ((lambda (_%key?155624%_ _%key155625%_ _%default155626%_)
                   (_%key?155624%_ _%key155625%_))
                 _%key?155621%_
                 _%key155600%_
                 _%default155608%_)
                (let* ((_%self146143155628%_ _%h155619%_)
                       (_%key155631%_ _%key155600%_)
                       (_%default155634%_ _%default155608%_))
                  (declare (not safe))
                  (let ((_%object155637155642%_
                         (##unchecked-structure-ref
                          _%self146143155628%_
                          '1
                          '#f
                          'ref))
                        (_%method155638155643%_
                         (##unchecked-structure-ref
                          _%self146143155628%_
                          '7
                          '#f
                          'ref)))
                    (_%method155638155643%_
                     _%object155637155642%_
                     _%key155631%_
                     _%default155634%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key155600%_ (cons _%default155608%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref148821%_
       '#f))
    (define _%checked-hash-table::HashTable::set!148823%_
      (lambda (_%self155404%_ _%key155405%_ _%value155406%_)
        (let* ((_%self155409%_ _%self155404%_)
               (_%key155418%_ _%key155405%_)
               (_%value155426%_ _%value155406%_))
          (declare (not safe))
          (let ((_%h155437%_
                 (##unchecked-structure-ref _%self155409%_ '1 '#f '#f))
                (_%key?155439%_
                 (##unchecked-structure-ref _%self155409%_ '2 '#f '#f)))
            (if ((lambda (_%key?155442%_ _%key155443%_ _%value155444%_)
                   (_%key?155442%_ _%key155443%_))
                 _%key?155439%_
                 _%key155418%_
                 _%value155426%_)
                (let* ((_%self146438155446%_ _%h155437%_)
                       (_%key155449%_ _%key155418%_)
                       (_%value155452%_ _%value155426%_))
                  (declare (not safe))
                  (let ((_%object155455155460%_
                         (##unchecked-structure-ref
                          _%self146438155446%_
                          '1
                          '#f
                          'set!))
                        (_%method155456155461%_
                         (##unchecked-structure-ref
                          _%self146438155446%_
                          '8
                          '#f
                          'set!)))
                    (_%method155456155461%_
                     _%object155455155460%_
                     _%key155449%_
                     _%value155452%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key155418%_ (cons _%value155426%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!148823%_
       '#f))
    (define _%checked-hash-table::HashTable::update!148825%_
      (lambda (_%self155209%_ _%key155210%_ _%update155211%_ _%default155212%_)
        (let* ((_%self155215%_ _%self155209%_)
               (_%key155224%_ _%key155210%_)
               (_%update155232%_ _%update155211%_)
               (_%default155240%_ _%default155212%_))
          (declare (not safe))
          (let ((_%h155251%_
                 (##unchecked-structure-ref _%self155215%_ '1 '#f '#f))
                (_%key?155253%_
                 (##unchecked-structure-ref _%self155215%_ '2 '#f '#f)))
            (if ((lambda (_%key?155256%_
                          _%key155257%_
                          _%update155258%_
                          _%default155259%_)
                   (_%key?155256%_ _%key155257%_))
                 _%key?155253%_
                 _%key155224%_
                 _%update155232%_
                 _%default155240%_)
                (let* ((_%self146733155261%_ _%h155251%_)
                       (_%key155264%_ _%key155224%_)
                       (_%proc155267%_ _%update155232%_)
                       (_%default155270%_ _%default155240%_))
                  (declare (not safe))
                  (let ((_%object155273155278%_
                         (##unchecked-structure-ref
                          _%self146733155261%_
                          '1
                          '#f
                          'update!))
                        (_%method155274155279%_
                         (##unchecked-structure-ref
                          _%self146733155261%_
                          '9
                          '#f
                          'update!)))
                    (_%method155274155279%_
                     _%object155273155278%_
                     _%key155264%_
                     _%proc155267%_
                     _%default155270%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key155224%_
                         (cons _%update155232%_ (cons _%default155240%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!148825%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!148827%_
      (lambda (_%self155040%_ _%key155041%_)
        (let* ((_%self155044%_ _%self155040%_) (_%key155053%_ _%key155041%_))
          (declare (not safe))
          (let ((_%h155064%_
                 (##unchecked-structure-ref _%self155044%_ '1 '#f '#f))
                (_%key?155066%_
                 (##unchecked-structure-ref _%self155044%_ '2 '#f '#f)))
            (if ((lambda (_%key?155069%_ _%key155070%_)
                   (_%key?155069%_ _%key155070%_))
                 _%key?155066%_
                 _%key155053%_)
                (let* ((_%self145245155072%_ _%h155064%_)
                       (_%key155075%_ _%key155053%_))
                  (declare (not safe))
                  (let ((_%object155078155083%_
                         (##unchecked-structure-ref
                          _%self145245155072%_
                          '1
                          '#f
                          'delete!))
                        (_%method155079155084%_
                         (##unchecked-structure-ref
                          _%self145245155072%_
                          '4
                          '#f
                          'delete!)))
                    (_%method155079155084%_
                     _%object155078155083%_
                     _%key155075%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key155053%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!148827%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each148829%_
      (lambda (_%self154871%_ _%proc154872%_)
        (let* ((_%self154875%_ _%self154871%_) (_%proc154884%_ _%proc154872%_))
          (declare (not safe))
          (let ((_%h154895%_
                 (##unchecked-structure-ref _%self154875%_ '1 '#f '#f))
                (_%key?154897%_
                 (##unchecked-structure-ref _%self154875%_ '2 '#f '#f)))
            (if ((lambda (_%key?154900%_ _%proc154901%_) '#t)
                 _%key?154897%_
                 _%proc154884%_)
                (let* ((_%self145538154903%_ _%h154895%_)
                       (_%proc154906%_ _%proc154884%_))
                  (declare (not safe))
                  (let ((_%object154909154914%_
                         (##unchecked-structure-ref
                          _%self145538154903%_
                          '1
                          '#f
                          'for-each))
                        (_%method154910154915%_
                         (##unchecked-structure-ref
                          _%self145538154903%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154910154915%_
                     _%object154909154914%_
                     _%proc154906%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc154884%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each148829%_
       '#f))
    (define _%checked-hash-table::HashTable::length148831%_
      (lambda (_%self154717%_)
        (let ((_%self154720%_ _%self154717%_))
          (declare (not safe))
          (let ((_%h154732%_
                 (##unchecked-structure-ref _%self154720%_ '1 '#f '#f))
                (_%key?154734%_
                 (##unchecked-structure-ref _%self154720%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145849154737%_ _%h154732%_))
                  (declare (not safe))
                  (let ((_%object154740154745%_
                         (##unchecked-structure-ref
                          _%self145849154737%_
                          '1
                          '#f
                          'length))
                        (_%method154741154746%_
                         (##unchecked-structure-ref
                          _%self145849154737%_
                          '6
                          '#f
                          'length)))
                    (_%method154741154746%_ _%object154740154745%_)))
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
       _%checked-hash-table::HashTable::length148831%_
       '#f))
    (define _%checked-hash-table::HashTable::copy148833%_
      (lambda (_%self154563%_)
        (let ((_%self154566%_ _%self154563%_))
          (declare (not safe))
          (let ((_%h154578%_
                 (##unchecked-structure-ref _%self154566%_ '1 '#f '#f))
                (_%key?154580%_
                 (##unchecked-structure-ref _%self154566%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self144951154583%_ _%h154578%_))
                  (declare (not safe))
                  (let ((_%object154586154591%_
                         (##unchecked-structure-ref
                          _%self144951154583%_
                          '1
                          '#f
                          'copy))
                        (_%method154587154592%_
                         (##unchecked-structure-ref
                          _%self144951154583%_
                          '3
                          '#f
                          'copy)))
                    (_%method154587154592%_ _%object154586154591%_)))
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
       _%checked-hash-table::HashTable::copy148833%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!148835%_
      (lambda (_%self154409%_)
        (let ((_%self154412%_ _%self154409%_))
          (declare (not safe))
          (let ((_%h154424%_
                 (##unchecked-structure-ref _%self154412%_ '1 '#f '#f))
                (_%key?154426%_
                 (##unchecked-structure-ref _%self154412%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self144659154429%_ _%h154424%_))
                  (declare (not safe))
                  (let ((_%object154432154437%_
                         (##unchecked-structure-ref
                          _%self144659154429%_
                          '1
                          '#f
                          'clear!))
                        (_%method154433154438%_
                         (##unchecked-structure-ref
                          _%self144659154429%_
                          '2
                          '#f
                          'clear!)))
                    (_%method154433154438%_ _%object154432154437%_)))
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
       _%checked-hash-table::HashTable::clear!148835%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table154279%_
               _%count154280%_
               _%free154281%_
               _%hash154282%_
               _%test154283%_
               _%seed154284%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table154279%_
           _%count154280%_
           _%free154281%_
           _%hash154282%_
           _%test154283%_
           _%seed154284%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords153689%_
               _%size-hint153679153690%_
               _%seed153680153691%_
               _%test153681153692%_
               _%hash153682153693%_
               _%lock153683153694%_
               _%check153684153695%_
               _%weak-keys153685153696%_
               _%weak-values153686153697%_)
        (let* ((_%size-hint153699%_
                (if (eq? _%size-hint153679153690%_ absent-value)
                    '#f
                    _%size-hint153679153690%_))
               (_%seed153701%_
                (if (eq? _%seed153680153691%_ absent-value)
                    '#f
                    _%seed153680153691%_))
               (_%test153703%_
                (if (eq? _%test153681153692%_ absent-value)
                    equal?
                    _%test153681153692%_))
               (_%hash153705%_
                (if (eq? _%hash153682153693%_ absent-value)
                    '#f
                    _%hash153682153693%_))
               (_%lock153707%_
                (if (eq? _%lock153683153694%_ absent-value)
                    '#f
                    _%lock153683153694%_))
               (_%check153709%_
                (if (eq? _%check153684153695%_ absent-value)
                    '#f
                    _%check153684153695%_))
               (_%weak-keys153711%_
                (if (eq? _%weak-keys153685153696%_ absent-value)
                    '#f
                    _%weak-keys153685153696%_))
               (_%weak-values153713%_
                (if (eq? _%weak-values153686153697%_ absent-value)
                    '#f
                    _%weak-values153686153697%_)))
          (letrec ((_%table-seed153716%_
                    (lambda ()
                      (if (fixnum? _%seed153701%_)
                          _%seed153701%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock153860%_
                    (lambda (_%ht154247%_)
                      (let ((_%ht154250%_ _%ht154247%_))
                        (if _%lock153707%_
                            (let ((_%$obj154262%_
                                   (let ((__tmp161118
                                          (let ((_%$obj154259%_
                                                 _%lock153707%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj154259%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj154259%_)))
                                                     '#t)
                                                _%$obj154259%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj154259%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht154250%_
                                      __tmp161118))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154262%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154262%_)))
                                       '#t)
                                  _%$obj154262%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154262%_))))
                            _%ht154250%_))))
                   (_%wrap-lock153861%_
                    (lambda (_%ht154235%_)
                      (let ((_%ht154238%_ _%ht154235%_))
                        (_%__wrap-lock153860%_ _%ht154238%_))))
                   (_%__wrap-checked153983%_
                    (lambda (_%ht154219%_ _%implicit154220%_)
                      (let ((_%ht154223%_ _%ht154219%_))
                        (if _%check153709%_
                            (let ((_%$obj154232%_
                                   (let ((__tmp161119
                                          (if (procedure? _%check153709%_)
                                              _%check153709%_
                                              _%implicit154220%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht154223%_
                                      __tmp161119))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154232%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154232%_)))
                                       '#t)
                                  _%$obj154232%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154232%_))))
                            _%ht154223%_))))
                   (_%wrap-checked153984%_
                    (lambda (_%ht154206%_ _%implicit154207%_)
                      (let ((_%ht154210%_ _%ht154206%_))
                        (_%__wrap-checked153983%_
                         _%ht154210%_
                         _%implicit154207%_))))
                   (_%make153985%_
                    (lambda (_%kons154154%_
                             _%key?154155%_
                             _%hash154156%_
                             _%test154157%_)
                      (let* ((_%size154160%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint153699%_)))
                             (_%table154162%_
                              (let ((__tmp161120 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size154160%_ __tmp161120)))
                             (_%ht154167%_
                              (let ((_%$obj154164%_
                                     (_%kons154154%_
                                      _%table154162%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size154160%_ '2))
                                      _%hash154156%_
                                      _%test154157%_
                                      (_%table-seed153716%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154164%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154164%_)))
                                         '#t)
                                    _%$obj154164%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154164%_)))))
                             (_%ht154189%_
                              (let* ((_%ht154170%_ _%ht154167%_)
                                     (_%ht154174%_ _%ht154170%_))
                                (_%__wrap-lock153860%_ _%ht154174%_)))
                             (_%implicit154192%_ _%key?154155%_)
                             (_%ht154196%_ _%ht154189%_))
                        (_%__wrap-checked153983%_
                         _%ht154196%_
                         _%implicit154192%_))))
                   (_%make-gc-hash-table153986%_
                    (lambda ()
                      (let* ((_%ht154119%_
                              (let ((_%$obj154116%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint153699%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154116%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154116%_)))
                                         '#t)
                                    _%$obj154116%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154116%_)))))
                             (_%ht154137%_
                              (let* ((_%ht154121%_ _%ht154119%_)
                                     (_%ht154125%_ _%ht154121%_))
                                (_%__wrap-lock153860%_ _%ht154125%_)))
                             (_%implicit154140%_ true)
                             (_%ht154144%_ _%ht154137%_))
                        (_%__wrap-checked153983%_
                         _%ht154144%_
                         _%implicit154140%_))))
                   (_%make-gambit-table153987%_
                    (lambda ()
                      (let* ((_%size154056%_
                              (let ((_%$e154053%_ _%size-hint153699%_))
                                (if _%$e154053%_
                                    _%$e154053%_
                                    (macro-absent-obj))))
                             (_%test154061%_
                              (let ((_%$e154058%_ _%test153703%_))
                                (if _%$e154058%_ _%$e154058%_ equal?)))
                             (_%hash154069%_
                              (let ((_%$e154063%_ _%hash153705%_))
                                (if _%$e154063%_
                                    _%$e154063%_
                                    (if (eq? _%test154061%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test154061%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht154074%_
                              (let ((_%$obj154071%_
                                     (make-table
                                      'size:
                                      _%size154056%_
                                      'test:
                                      _%test154061%_
                                      'hash:
                                      _%hash154069%_
                                      'weak-keys:
                                      _%weak-keys153711%_
                                      'weak-values:
                                      _%weak-values153713%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154071%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154071%_)))
                                         '#t)
                                    _%$obj154071%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154071%_)))))
                             (_%ht154097%_
                              (let* ((_%ht154077%_ _%ht154074%_)
                                     (_%ht154081%_ _%ht154077%_))
                                (_%__wrap-lock153860%_ _%ht154081%_)))
                             (_%implicit154100%_ true)
                             (_%ht154104%_ _%ht154097%_))
                        (_%__wrap-checked153983%_
                         _%ht154104%_
                         _%implicit154100%_)))))
            (if (or _%weak-keys153711%_ _%weak-values153713%_)
                (_%make-gambit-table153987%_)
                (if (and (or (eq? _%test153703%_ eq?)
                             (eq? _%test153703%_ ##eq?))
                         (or (not _%hash153705%_)
                             (eq? _%hash153705%_ eq?-hash)
                             (eq? _%hash153705%_ eq-hash))
                         (not _%seed153701%_))
                    (_%make-gc-hash-table153986%_)
                    (if (and (or (eq? _%test153703%_ eq?)
                                 (eq? _%test153703%_ ##eq?))
                             (or (not _%hash153705%_)
                                 (eq? _%hash153705%_ eq?-hash)
                                 (eq? _%hash153705%_ eq-hash)))
                        (_%make153985%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test153703%_ eqv?)
                                     (eq? _%test153703%_ ##eqv?))
                                 (or (not _%hash153705%_)
                                     (eq? _%hash153705%_ eqv?-hash)
                                     (eq? _%hash153705%_ eqv-hash)))
                            (_%make153985%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test153703%_ eq?)
                                         (eq? _%test153703%_ ##eq?))
                                     (or (eq? _%hash153705%_ symbolic-hash)
                                         (eq? _%hash153705%_ ##symbol-hash)))
                                (_%make153985%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test153703%_ eq?)
                                             (eq? _%test153703%_ ##eq?))
                                         (eq? _%hash153705%_ immediate-hash))
                                    (_%make153985%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test153703%_ equal?)
                                                 (eq? _%test153703%_ ##equal?)
                                                 (eq? _%test153703%_ string=?)
                                                 (eq? _%test153703%_
                                                      ##string=?))
                                             (or (eq? _%hash153705%_
                                                      string-hash)
                                                 (eq? _%hash153705%_
                                                      ##string=?-hash)))
                                        (_%make153985%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test153703%_ equal?)
                                                 (not _%hash153705%_))
                                            (_%make153985%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test153703%_)
                                                (if (procedure? _%hash153705%_)
                                                    (_%make153985%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash153705%_
                                                     _%test153703%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash153705%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test153703%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords154269%_ . _%args154270%_)
        (apply make-hash-table__%
               _%@@keywords154269%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154269%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154269%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154269%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154269%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154269%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154269%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154269%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154269%_
                  'weak-values:
                  absent-value))
               _%args154270%_)))
    (define make-hash-table
      (lambda _%args153687154276%_
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
               _%args153687154276%_)))
    (define make-hash-table-eq
      (lambda _%args153676%_
        (apply make-hash-table 'test: eq? _%args153676%_)))
    (define make-hash-table-eqv
      (lambda _%args153674%_
        (apply make-hash-table 'test: eqv? _%args153674%_)))
    (define make-hash-table-symbolic
      (lambda _%args153672%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args153672%_)))
    (define make-hash-table-string
      (lambda _%args153670%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args153670%_)))
    (define make-hash-table-immediate
      (lambda _%args153668%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args153668%_)))
    (define list->hash-table
      (lambda (_%lst153665%_ . _%args153666%_)
        (list->hash-table!
         _%lst153665%_
         (apply make-hash-table
                'size:
                (length _%lst153665%_)
                _%args153666%_))))
    (define list->hash-table-eq
      (lambda (_%lst153662%_ . _%args153663%_)
        (list->hash-table!
         _%lst153662%_
         (apply make-hash-table-eq
                'size:
                (length _%lst153662%_)
                _%args153663%_))))
    (define list->hash-table-eqv
      (lambda (_%lst153659%_ . _%args153660%_)
        (list->hash-table!
         _%lst153659%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst153659%_)
                _%args153660%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst153656%_ . _%args153657%_)
        (list->hash-table!
         _%lst153656%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst153656%_)
                _%args153657%_))))
    (define list->hash-table-string
      (lambda (_%lst153653%_ . _%args153654%_)
        (list->hash-table!
         _%lst153653%_
         (apply make-hash-table-string
                'size:
                (length _%lst153653%_)
                _%args153654%_))))
    (define list->hash-table-immediate
      (lambda (_%lst153650%_ . _%args153651%_)
        (list->hash-table!
         _%lst153650%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst153650%_)
                _%args153651%_))))
    (define list->hash-table!
      (lambda (_%lst153601%_ _%h153602%_)
        (for-each
         (lambda (_%el153604%_)
           (let* ((_%el153605153612%_ _%el153604%_)
                  (_%E153607153615%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el153605153612%_
                              '([k . v])))
                     '#!void))
                  (_%K153608153638%_
                   (lambda (_%v153618%_ _%k153619%_)
                     (let* ((_%self146438153621%_ _%h153602%_)
                            (_%key153624%_ _%k153619%_)
                            (_%value153627%_ _%v153618%_))
                       (declare (not safe))
                       (let ((_%object153630153635%_
                              (##unchecked-structure-ref
                               _%self146438153621%_
                               '1
                               '#f
                               'set!))
                             (_%method153631153636%_
                              (##unchecked-structure-ref
                               _%self146438153621%_
                               '8
                               '#f
                               'set!)))
                         (_%method153631153636%_
                          _%object153630153635%_
                          _%key153624%_
                          _%value153627%_))))))
             (if (pair? _%el153605153612%_)
                 (let ((_%hd153609153641%_
                        (let ()
                          (declare (not safe))
                          (##car _%el153605153612%_)))
                       (_%tl153610153643%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el153605153612%_))))
                   (let* ((_%k153646%_ _%hd153609153641%_)
                          (_%v153648%_ _%tl153610153643%_))
                     (_%K153608153638%_ _%v153648%_ _%k153646%_)))
                 (_%E153607153615%_))))
         _%lst153601%_)
        _%h153602%_))
    (define plist->hash-table
      (lambda (_%lst153598%_ . _%args153599%_)
        (plist->hash-table!
         _%lst153598%_
         (apply make-hash-table
                'size:
                (length _%lst153598%_)
                _%args153599%_))))
    (define plist->hash-table-eq
      (lambda (_%lst153595%_ . _%args153596%_)
        (plist->hash-table!
         _%lst153595%_
         (apply make-hash-table-eq
                'size:
                (length _%lst153595%_)
                _%args153596%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst153592%_ . _%args153593%_)
        (plist->hash-table!
         _%lst153592%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst153592%_)
                _%args153593%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst153589%_ . _%args153590%_)
        (plist->hash-table!
         _%lst153589%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst153589%_)
                _%args153590%_))))
    (define plist->hash-table-string
      (lambda (_%lst153586%_ . _%args153587%_)
        (plist->hash-table!
         _%lst153586%_
         (apply make-hash-table-string
                'size:
                (length _%lst153586%_)
                _%args153587%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst153583%_ . _%args153584%_)
        (plist->hash-table!
         _%lst153583%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst153583%_)
                _%args153584%_))))
    (define plist->hash-table!
      (lambda (_%lst153506%_ _%h153507%_)
        (let _%loop153509%_ ((_%rest153511%_ _%lst153506%_))
          (let* ((_%rest153512153524%_ _%rest153511%_)
                 (_%else153515153532%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst153506%_)))))
            (let ((_%K153518153564%_
                   (lambda (_%rest153543%_ _%val153544%_ _%key153545%_)
                     (let* ((_%self146438153547%_ _%h153507%_)
                            (_%key153550%_ _%key153545%_)
                            (_%value153553%_ _%val153544%_))
                       (declare (not safe))
                       (let ((_%object153556153561%_
                              (##unchecked-structure-ref
                               _%self146438153547%_
                               '1
                               '#f
                               'set!))
                             (_%method153557153562%_
                              (##unchecked-structure-ref
                               _%self146438153547%_
                               '8
                               '#f
                               'set!)))
                         (_%method153557153562%_
                          _%object153556153561%_
                          _%key153550%_
                          _%value153553%_)))
                     (_%loop153509%_ _%rest153543%_)))
                  (_%K153517153537%_ (lambda () _%h153507%_)))
              (let ((_%try-match153514153540%_
                     (lambda ()
                       (if (null? _%rest153512153524%_)
                           (_%K153517153537%_)
                           (_%else153515153532%_)))))
                (if (pair? _%rest153512153524%_)
                    (let ((_%tl153520153569%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest153512153524%_)))
                          (_%hd153519153567%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest153512153524%_))))
                      (if (pair? _%tl153520153569%_)
                          (let ((_%tl153522153576%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl153520153569%_)))
                                (_%hd153521153574%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl153520153569%_))))
                            (let ((_%key153572%_ _%hd153519153567%_)
                                  (_%val153579%_ _%hd153521153574%_)
                                  (_%rest153581%_ _%tl153522153576%_))
                              (_%K153518153564%_
                               _%rest153581%_
                               _%val153579%_
                               _%key153572%_)))
                          (_%else153515153532%_)))
                    (_%try-match153514153540%_))))))))
    (define __hash-length
      (lambda (_%h153455%_)
        (let* ((_%h153458%_ _%h153455%_)
               (_%self145850153467%_ _%h153458%_)
               (_%self145850153474%_
                (let ((_%$obj153471%_ _%self145850153467%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153471%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153471%_)))
                           '#t)
                      _%$obj153471%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153471%_)))))
               (_%self145850153476%_ _%self145850153474%_))
          (if __DEBUG
              (let ((_%val153496%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153488153493%_
                              (##unchecked-structure-ref
                               _%self145850153476%_
                               '1
                               '#f
                               'length))
                             (_%method153489153494%_
                              (##unchecked-structure-ref
                               _%self145850153476%_
                               '6
                               '#f
                               'length)))
                         (_%method153489153494%_ _%object153488153493%_)))))
                (if (fixnum? _%val153496%_)
                    _%val153496%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val153496%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object153498153503%_
                       (##unchecked-structure-ref
                        _%self145850153476%_
                        '1
                        '#f
                        'length))
                      (_%method153499153504%_
                       (##unchecked-structure-ref
                        _%self145850153476%_
                        '6
                        '#f
                        'length)))
                  (_%method153499153504%_ _%object153498153503%_)))))))
    (define hash-length
      (lambda (_%h149110%_)
        (let* ((_%h149116%_
                (let ((_%$obj149113%_ _%h149110%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149113%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149113%_)))
                           '#t)
                      _%$obj149113%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149113%_)))))
               (_%h149118%_ _%h149116%_))
          (__hash-length _%h149118%_))))
    (define __hash-ref__%
      (lambda (_%h153383%_ _%key153384%_ _%default153385%_)
        (let* ((_%h153388%_ _%h153383%_)
               (_%result153441%_
                (let* ((_%self146144153397%_ _%h153388%_)
                       (_%key153400%_ _%key153384%_)
                       (_%default153403%_ _%default153385%_)
                       (_%self146144153410%_
                        (let ((_%$obj153407%_ _%self146144153397%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153407%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153407%_)))
                                   '#t)
                              _%$obj153407%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153407%_)))))
                       (_%self146144153412%_ _%self146144153410%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object153426153431%_
                               (##unchecked-structure-ref
                                _%self146144153412%_
                                '1
                                '#f
                                'ref))
                              (_%method153427153432%_
                               (##unchecked-structure-ref
                                _%self146144153412%_
                                '7
                                '#f
                                'ref)))
                          (_%method153427153432%_
                           _%object153426153431%_
                           _%key153400%_
                           _%default153403%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153433153438%_
                               (##unchecked-structure-ref
                                _%self146144153412%_
                                '1
                                '#f
                                'ref))
                              (_%method153434153439%_
                               (##unchecked-structure-ref
                                _%self146144153412%_
                                '7
                                '#f
                                'ref)))
                          (_%method153434153439%_
                           _%object153433153438%_
                           _%key153400%_
                           _%default153403%_)))))))
          (if (eq? _%result153441%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h153388%_
               'key:
               _%key153384%_)
              _%result153441%_))))
    (define __hash-ref__0
      (lambda (_%h153446%_ _%key153447%_)
        (let ((_%default153449%_ absent-obj))
          (__hash-ref__% _%h153446%_ _%key153447%_ _%default153449%_))))
    (define __hash-ref
      (lambda _g161121_
        (let ((_g161122_ (let () (declare (not safe)) (##length _g161121_))))
          (cond ((let () (declare (not safe)) (##fx= _g161122_ 2))
                 (apply __hash-ref__0 _g161121_))
                ((let () (declare (not safe)) (##fx= _g161122_ 3))
                 (apply __hash-ref__% _g161121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g161121_))))))
    (define hash-ref__%
      (lambda (_%h149249%_ _%key149250%_ _%default149251%_)
        (let* ((_%h149257%_
                (let ((_%$obj149254%_ _%h149249%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149254%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149254%_)))
                           '#t)
                      _%$obj149254%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149254%_)))))
               (_%h149259%_ _%h149257%_))
          (__hash-ref__% _%h149259%_ _%key149250%_ _%default149251%_))))
    (define hash-ref__0
      (lambda (_%h149272%_ _%key149273%_)
        (let ((_%default149275%_ absent-obj))
          (hash-ref__% _%h149272%_ _%key149273%_ _%default149275%_))))
    (define hash-ref
      (lambda _g161123_
        (let ((_g161124_ (let () (declare (not safe)) (##length _g161123_))))
          (cond ((let () (declare (not safe)) (##fx= _g161124_ 2))
                 (apply hash-ref__0 _g161123_))
                ((let () (declare (not safe)) (##fx= _g161124_ 3))
                 (apply hash-ref__% _g161123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g161123_))))))
    (define __hash-get
      (lambda (_%h153325%_ _%key153326%_)
        (let* ((_%h153329%_ _%h153325%_)
               (_%self146144153338%_ _%h153329%_)
               (_%key153341%_ _%key153326%_)
               (_%default153344%_ '#f)
               (_%self146144153351%_
                (let ((_%$obj153348%_ _%self146144153338%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153348%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153348%_)))
                           '#t)
                      _%$obj153348%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153348%_)))))
               (_%self146144153353%_ _%self146144153351%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153367153372%_
                       (##unchecked-structure-ref
                        _%self146144153353%_
                        '1
                        '#f
                        'ref))
                      (_%method153368153373%_
                       (##unchecked-structure-ref
                        _%self146144153353%_
                        '7
                        '#f
                        'ref)))
                  (_%method153368153373%_
                   _%object153367153372%_
                   _%key153341%_
                   _%default153344%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153374153379%_
                       (##unchecked-structure-ref
                        _%self146144153353%_
                        '1
                        '#f
                        'ref))
                      (_%method153375153380%_
                       (##unchecked-structure-ref
                        _%self146144153353%_
                        '7
                        '#f
                        'ref)))
                  (_%method153375153380%_
                   _%object153374153379%_
                   _%key153341%_
                   _%default153344%_)))))))
    (define hash-get
      (lambda (_%h149401%_ _%key149402%_)
        (let* ((_%h149408%_
                (let ((_%$obj149405%_ _%h149401%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149405%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149405%_)))
                           '#t)
                      _%$obj149405%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149405%_)))))
               (_%h149410%_ _%h149408%_))
          (__hash-get _%h149410%_ _%key149402%_))))
    (define __hash-put!
      (lambda (_%h153267%_ _%key153268%_ _%value153269%_)
        (let* ((_%h153272%_ _%h153267%_)
               (_%self146439153281%_ _%h153272%_)
               (_%key153284%_ _%key153268%_)
               (_%value153287%_ _%value153269%_)
               (_%self146439153294%_
                (let ((_%$obj153291%_ _%self146439153281%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153291%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153291%_)))
                           '#t)
                      _%$obj153291%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153291%_)))))
               (_%self146439153296%_ _%self146439153294%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153310153315%_
                       (##unchecked-structure-ref
                        _%self146439153296%_
                        '1
                        '#f
                        'set!))
                      (_%method153311153316%_
                       (##unchecked-structure-ref
                        _%self146439153296%_
                        '8
                        '#f
                        'set!)))
                  (_%method153311153316%_
                   _%object153310153315%_
                   _%key153284%_
                   _%value153287%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153317153322%_
                       (##unchecked-structure-ref
                        _%self146439153296%_
                        '1
                        '#f
                        'set!))
                      (_%method153318153323%_
                       (##unchecked-structure-ref
                        _%self146439153296%_
                        '8
                        '#f
                        'set!)))
                  (_%method153318153323%_
                   _%object153317153322%_
                   _%key153284%_
                   _%value153287%_)))))))
    (define hash-put!
      (lambda (_%h149540%_ _%key149541%_ _%value149542%_)
        (let* ((_%h149548%_
                (let ((_%$obj149545%_ _%h149540%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149545%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149545%_)))
                           '#t)
                      _%$obj149545%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149545%_)))))
               (_%h149550%_ _%h149548%_))
          (__hash-put! _%h149550%_ _%key149541%_ _%value149542%_))))
    (define __hash-update!__%
      (lambda (_%h153180%_ _%key153181%_ _%update153182%_ _%default153183%_)
        (let* ((_%h153186%_ _%h153180%_)
               (_%self146734153195%_ _%h153186%_)
               (_%key153198%_ _%key153181%_)
               (_%proc153201%_ _%update153182%_)
               (_%default153204%_ _%default153183%_)
               (_%self146734153211%_
                (let ((_%$obj153208%_ _%self146734153195%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153208%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153208%_)))
                           '#t)
                      _%$obj153208%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153208%_)))))
               (_%self146734153213%_ _%self146734153211%_))
          (if (procedure? _%proc153201%_)
              (let ((_%proc153229%_ _%proc153201%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object153238153243%_
                             (##unchecked-structure-ref
                              _%self146734153213%_
                              '1
                              '#f
                              'update!))
                            (_%method153239153244%_
                             (##unchecked-structure-ref
                              _%self146734153213%_
                              '9
                              '#f
                              'update!)))
                        (_%method153239153244%_
                         _%object153238153243%_
                         _%key153198%_
                         _%proc153229%_
                         _%default153204%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object153245153250%_
                             (##unchecked-structure-ref
                              _%self146734153213%_
                              '1
                              '#f
                              'update!))
                            (_%method153246153251%_
                             (##unchecked-structure-ref
                              _%self146734153213%_
                              '9
                              '#f
                              'update!)))
                        (_%method153246153251%_
                         _%object153245153250%_
                         _%key153198%_
                         _%proc153229%_
                         _%default153204%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc153201%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h153256%_ _%key153257%_ _%update153258%_)
        (let ((_%default153260%_ '#!void))
          (__hash-update!__%
           _%h153256%_
           _%key153257%_
           _%update153258%_
           _%default153260%_))))
    (define __hash-update!
      (lambda _g161125_
        (let ((_g161126_ (let () (declare (not safe)) (##length _g161125_))))
          (cond ((let () (declare (not safe)) (##fx= _g161126_ 3))
                 (apply __hash-update!__0 _g161125_))
                ((let () (declare (not safe)) (##fx= _g161126_ 4))
                 (apply __hash-update!__% _g161125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g161125_))))))
    (define hash-update!__%
      (lambda (_%h149681%_ _%key149682%_ _%update149683%_ _%default149684%_)
        (let* ((_%h149690%_
                (let ((_%$obj149687%_ _%h149681%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149687%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149687%_)))
                           '#t)
                      _%$obj149687%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149687%_)))))
               (_%h149692%_ _%h149690%_))
          (__hash-update!__%
           _%h149692%_
           _%key149682%_
           _%update149683%_
           _%default149684%_))))
    (define hash-update!__0
      (lambda (_%h149705%_ _%key149706%_ _%update149707%_)
        (let ((_%default149709%_ '#!void))
          (hash-update!__%
           _%h149705%_
           _%key149706%_
           _%update149707%_
           _%default149709%_))))
    (define hash-update!
      (lambda _g161127_
        (let ((_g161128_ (let () (declare (not safe)) (##length _g161127_))))
          (cond ((let () (declare (not safe)) (##fx= _g161128_ 3))
                 (apply hash-update!__0 _g161127_))
                ((let () (declare (not safe)) (##fx= _g161128_ 4))
                 (apply hash-update!__% _g161127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g161127_))))))
    (define __hash-remove!
      (lambda (_%h153126%_ _%key153127%_)
        (let* ((_%h153130%_ _%h153126%_)
               (_%self145246153139%_ _%h153130%_)
               (_%key153142%_ _%key153127%_)
               (_%self145246153149%_
                (let ((_%$obj153146%_ _%self145246153139%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153146%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153146%_)))
                           '#t)
                      _%$obj153146%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153146%_)))))
               (_%self145246153151%_ _%self145246153149%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153164153169%_
                       (##unchecked-structure-ref
                        _%self145246153151%_
                        '1
                        '#f
                        'delete!))
                      (_%method153165153170%_
                       (##unchecked-structure-ref
                        _%self145246153151%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153165153170%_
                   _%object153164153169%_
                   _%key153142%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153171153176%_
                       (##unchecked-structure-ref
                        _%self145246153151%_
                        '1
                        '#f
                        'delete!))
                      (_%method153172153177%_
                       (##unchecked-structure-ref
                        _%self145246153151%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153172153177%_
                   _%object153171153176%_
                   _%key153142%_)))))))
    (define hash-remove!
      (lambda (_%h149836%_ _%key149837%_)
        (let* ((_%h149843%_
                (let ((_%$obj149840%_ _%h149836%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149840%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149840%_)))
                           '#t)
                      _%$obj149840%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149840%_)))))
               (_%h149845%_ _%h149843%_))
          (__hash-remove! _%h149845%_ _%key149837%_))))
    (define __hash-key?
      (lambda (_%h153069%_ _%k153070%_)
        (let ((_%h153073%_ _%h153069%_))
          (not (eq? (let* ((_%self146144153082%_ _%h153073%_)
                           (_%key153085%_ _%k153070%_)
                           (_%default153088%_ absent-value)
                           (_%self146144153095%_
                            (let ((_%$obj153092%_ _%self146144153082%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj153092%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj153092%_)))
                                       '#t)
                                  _%$obj153092%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj153092%_)))))
                           (_%self146144153097%_ _%self146144153095%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object153111153116%_
                                   (##unchecked-structure-ref
                                    _%self146144153097%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153112153117%_
                                   (##unchecked-structure-ref
                                    _%self146144153097%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153112153117%_
                               _%object153111153116%_
                               _%key153085%_
                               _%default153088%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object153118153123%_
                                   (##unchecked-structure-ref
                                    _%self146144153097%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153119153124%_
                                   (##unchecked-structure-ref
                                    _%self146144153097%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153119153124%_
                               _%object153118153123%_
                               _%key153085%_
                               _%default153088%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h149975%_ _%k149976%_)
        (let* ((_%h149982%_
                (let ((_%$obj149979%_ _%h149975%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149979%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149979%_)))
                           '#t)
                      _%$obj149979%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149979%_)))))
               (_%h149984%_ _%h149982%_))
          (__hash-key? _%h149984%_ _%k149976%_))))
    (define __hash->list
      (lambda (_%h153001%_)
        (let* ((_%h153004%_ _%h153001%_) (_%lst153013%_ '()))
          (let* ((_%self145539153015%_ _%h153004%_)
                 (_%proc153021%_
                  (lambda (_%k153018%_ _%v153019%_)
                    (set! _%lst153013%_
                          (cons (cons _%k153018%_ _%v153019%_)
                                _%lst153013%_))))
                 (_%self145539153028%_
                  (let ((_%$obj153025%_ _%self145539153015%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153025%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153025%_)))
                             '#t)
                        _%$obj153025%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153025%_)))))
                 (_%self145539153030%_ _%self145539153028%_)
                 (_%proc153045%_ _%proc153021%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153054153059%_
                         (##unchecked-structure-ref
                          _%self145539153030%_
                          '1
                          '#f
                          'for-each))
                        (_%method153055153060%_
                         (##unchecked-structure-ref
                          _%self145539153030%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153055153060%_
                     _%object153054153059%_
                     _%proc153045%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153061153066%_
                         (##unchecked-structure-ref
                          _%self145539153030%_
                          '1
                          '#f
                          'for-each))
                        (_%method153062153067%_
                         (##unchecked-structure-ref
                          _%self145539153030%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153062153067%_
                     _%object153061153066%_
                     _%proc153045%_)))))
          _%lst153013%_)))
    (define hash->list
      (lambda (_%h150114%_)
        (let* ((_%h150120%_
                (let ((_%$obj150117%_ _%h150114%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150117%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150117%_)))
                           '#t)
                      _%$obj150117%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150117%_)))))
               (_%h150122%_ _%h150120%_))
          (__hash->list _%h150122%_))))
    (define __hash->plist
      (lambda (_%h152933%_)
        (let* ((_%h152936%_ _%h152933%_) (_%lst152945%_ '()))
          (let* ((_%self145539152947%_ _%h152936%_)
                 (_%proc152953%_
                  (lambda (_%k152950%_ _%v152951%_)
                    (set! _%lst152945%_
                          (cons _%k152950%_
                                (cons _%v152951%_ _%lst152945%_)))))
                 (_%self145539152960%_
                  (let ((_%$obj152957%_ _%self145539152947%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152957%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152957%_)))
                             '#t)
                        _%$obj152957%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152957%_)))))
                 (_%self145539152962%_ _%self145539152960%_)
                 (_%proc152977%_ _%proc152953%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152986152991%_
                         (##unchecked-structure-ref
                          _%self145539152962%_
                          '1
                          '#f
                          'for-each))
                        (_%method152987152992%_
                         (##unchecked-structure-ref
                          _%self145539152962%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152987152992%_
                     _%object152986152991%_
                     _%proc152977%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152993152998%_
                         (##unchecked-structure-ref
                          _%self145539152962%_
                          '1
                          '#f
                          'for-each))
                        (_%method152994152999%_
                         (##unchecked-structure-ref
                          _%self145539152962%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152994152999%_
                     _%object152993152998%_
                     _%proc152977%_)))))
          _%lst152945%_)))
    (define hash->plist
      (lambda (_%h150252%_)
        (let* ((_%h150258%_
                (let ((_%$obj150255%_ _%h150252%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150255%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150255%_)))
                           '#t)
                      _%$obj150255%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150255%_)))))
               (_%h150260%_ _%h150258%_))
          (__hash->plist _%h150260%_))))
    (define __hash-for-each
      (lambda (_%proc152862%_ _%h152863%_)
        (let* ((_%proc152866%_ _%proc152862%_)
               (_%h152874%_ _%h152863%_)
               (_%self145539152883%_ _%h152874%_)
               (_%proc152886%_ _%proc152866%_)
               (_%self145539152893%_
                (let ((_%$obj152890%_ _%self145539152883%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152890%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152890%_)))
                           '#t)
                      _%$obj152890%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152890%_)))))
               (_%self145539152895%_ _%self145539152893%_)
               (_%proc152909%_ _%proc152886%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152918152923%_
                       (##unchecked-structure-ref
                        _%self145539152895%_
                        '1
                        '#f
                        'for-each))
                      (_%method152919152924%_
                       (##unchecked-structure-ref
                        _%self145539152895%_
                        '5
                        '#f
                        'for-each)))
                  (_%method152919152924%_
                   _%object152918152923%_
                   _%proc152909%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152925152930%_
                       (##unchecked-structure-ref
                        _%self145539152895%_
                        '1
                        '#f
                        'for-each))
                      (_%method152926152931%_
                       (##unchecked-structure-ref
                        _%self145539152895%_
                        '5
                        '#f
                        'for-each)))
                  (_%method152926152931%_
                   _%object152925152930%_
                   _%proc152909%_)))))))
    (define hash-for-each
      (lambda (_%proc150390%_ _%h150391%_)
        (if (procedure? _%proc150390%_)
            (let* ((_%proc150395%_ _%proc150390%_)
                   (_%h150407%_
                    (let ((_%$obj150404%_ _%h150391%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150404%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150404%_)))
                               '#t)
                          _%$obj150404%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150404%_)))))
                   (_%h150409%_ _%h150407%_))
              (__hash-for-each _%proc150395%_ _%h150409%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc150390%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc152785%_ _%h152786%_)
        (let* ((_%proc152789%_ _%proc152785%_)
               (_%h152797%_ _%h152786%_)
               (_%result152806%_ '()))
          (let* ((_%self145539152808%_ _%h152797%_)
                 (_%proc152814%_
                  (lambda (_%k152811%_ _%v152812%_)
                    (set! _%result152806%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc152789%_ _%k152811%_ _%v152812%_))
                                _%result152806%_))))
                 (_%self145539152821%_
                  (let ((_%$obj152818%_ _%self145539152808%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152818%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152818%_)))
                             '#t)
                        _%$obj152818%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152818%_)))))
                 (_%self145539152823%_ _%self145539152821%_)
                 (_%proc152838%_ _%proc152814%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152847152852%_
                         (##unchecked-structure-ref
                          _%self145539152823%_
                          '1
                          '#f
                          'for-each))
                        (_%method152848152853%_
                         (##unchecked-structure-ref
                          _%self145539152823%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152848152853%_
                     _%object152847152852%_
                     _%proc152838%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152854152859%_
                         (##unchecked-structure-ref
                          _%self145539152823%_
                          '1
                          '#f
                          'for-each))
                        (_%method152855152860%_
                         (##unchecked-structure-ref
                          _%self145539152823%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152855152860%_
                     _%object152854152859%_
                     _%proc152838%_)))))
          _%result152806%_)))
    (define hash-map
      (lambda (_%proc150539%_ _%h150540%_)
        (if (procedure? _%proc150539%_)
            (let* ((_%proc150544%_ _%proc150539%_)
                   (_%h150556%_
                    (let ((_%$obj150553%_ _%h150540%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150553%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150553%_)))
                               '#t)
                          _%$obj150553%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150553%_)))))
                   (_%h150558%_ _%h150556%_))
              (__hash-map _%proc150544%_ _%h150558%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc150539%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc152707%_ _%iv152708%_ _%h152709%_)
        (let* ((_%proc152712%_ _%proc152707%_)
               (_%h152720%_ _%h152709%_)
               (_%result152729%_ _%iv152708%_))
          (let* ((_%self145539152731%_ _%h152720%_)
                 (_%proc152737%_
                  (lambda (_%k152734%_ _%v152735%_)
                    (set! _%result152729%_
                          (let ()
                            (declare (not safe))
                            (_%proc152712%_
                             _%k152734%_
                             _%v152735%_
                             _%result152729%_)))))
                 (_%self145539152744%_
                  (let ((_%$obj152741%_ _%self145539152731%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152741%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152741%_)))
                             '#t)
                        _%$obj152741%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152741%_)))))
                 (_%self145539152746%_ _%self145539152744%_)
                 (_%proc152761%_ _%proc152737%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152770152775%_
                         (##unchecked-structure-ref
                          _%self145539152746%_
                          '1
                          '#f
                          'for-each))
                        (_%method152771152776%_
                         (##unchecked-structure-ref
                          _%self145539152746%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152771152776%_
                     _%object152770152775%_
                     _%proc152761%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152777152782%_
                         (##unchecked-structure-ref
                          _%self145539152746%_
                          '1
                          '#f
                          'for-each))
                        (_%method152778152783%_
                         (##unchecked-structure-ref
                          _%self145539152746%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152778152783%_
                     _%object152777152782%_
                     _%proc152761%_)))))
          _%result152729%_)))
    (define hash-fold
      (lambda (_%proc150688%_ _%iv150689%_ _%h150690%_)
        (if (procedure? _%proc150688%_)
            (let* ((_%proc150694%_ _%proc150688%_)
                   (_%h150706%_
                    (let ((_%$obj150703%_ _%h150690%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150703%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150703%_)))
                               '#t)
                          _%$obj150703%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150703%_)))))
                   (_%h150708%_ _%h150706%_))
              (__hash-fold _%proc150694%_ _%iv150689%_ _%h150708%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc150688%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc152614%_ _%h152615%_ _%default-value152616%_)
        (let* ((_%proc152619%_ _%proc152614%_)
               (_%h152627%_ _%h152615%_)
               (__tmp161129
                (lambda (_%return152636%_)
                  (let* ((_%self145539152638%_ _%h152627%_)
                         (_%proc152647%_
                          (lambda (_%k152641%_ _%v152642%_)
                            (let ((_%$e152644%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc152619%_
                                      _%k152641%_
                                      _%v152642%_))))
                              (if _%$e152644%_
                                  (_%return152636%_ _%$e152644%_)
                                  '#!void))))
                         (_%self145539152654%_
                          (let ((_%$obj152651%_ _%self145539152638%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj152651%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj152651%_)))
                                     '#t)
                                _%$obj152651%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj152651%_)))))
                         (_%self145539152656%_ _%self145539152654%_)
                         (_%proc152671%_ _%proc152647%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object152680152685%_
                                 (##unchecked-structure-ref
                                  _%self145539152656%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method152681152686%_
                                 (##unchecked-structure-ref
                                  _%self145539152656%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method152681152686%_
                             _%object152680152685%_
                             _%proc152671%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object152687152692%_
                                 (##unchecked-structure-ref
                                  _%self145539152656%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method152688152693%_
                                 (##unchecked-structure-ref
                                  _%self145539152656%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method152688152693%_
                             _%object152687152692%_
                             _%proc152671%_)))))
                  _%default-value152616%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp161129))))
    (define __hash-find__0
      (lambda (_%proc152698%_ _%h152699%_)
        (let ((_%default-value152701%_ '#f))
          (__hash-find__%
           _%proc152698%_
           _%h152699%_
           _%default-value152701%_))))
    (define __hash-find
      (lambda _g161130_
        (let ((_g161131_ (let () (declare (not safe)) (##length _g161130_))))
          (cond ((let () (declare (not safe)) (##fx= _g161131_ 2))
                 (apply __hash-find__0 _g161130_))
                ((let () (declare (not safe)) (##fx= _g161131_ 3))
                 (apply __hash-find__% _g161130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g161130_))))))
    (define hash-find__%
      (lambda (_%proc150839%_ _%h150840%_ _%default-value150841%_)
        (if (procedure? _%proc150839%_)
            (let* ((_%proc150845%_ _%proc150839%_)
                   (_%h150857%_
                    (let ((_%$obj150854%_ _%h150840%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150854%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150854%_)))
                               '#t)
                          _%$obj150854%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150854%_)))))
                   (_%h150859%_ _%h150857%_))
              (__hash-find__%
               _%proc150845%_
               _%h150859%_
               _%default-value150841%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc150839%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc150872%_ _%h150873%_)
        (let ((_%default-value150875%_ '#f))
          (hash-find__% _%proc150872%_ _%h150873%_ _%default-value150875%_))))
    (define hash-find
      (lambda _g161132_
        (let ((_g161133_ (let () (declare (not safe)) (##length _g161132_))))
          (cond ((let () (declare (not safe)) (##fx= _g161133_ 2))
                 (apply hash-find__0 _g161132_))
                ((let () (declare (not safe)) (##fx= _g161133_ 3))
                 (apply hash-find__% _g161132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g161132_))))))
    (define __hash-keys
      (lambda (_%h152545%_)
        (let* ((_%h152548%_ _%h152545%_) (_%result152557%_ '()))
          (let* ((_%self145539152559%_ _%h152548%_)
                 (_%proc152565%_
                  (lambda (_%k152562%_ _%v152563%_)
                    (set! _%result152557%_
                          (cons _%k152562%_ _%result152557%_))))
                 (_%self145539152572%_
                  (let ((_%$obj152569%_ _%self145539152559%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152569%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152569%_)))
                             '#t)
                        _%$obj152569%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152569%_)))))
                 (_%self145539152574%_ _%self145539152572%_)
                 (_%proc152589%_ _%proc152565%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152598152603%_
                         (##unchecked-structure-ref
                          _%self145539152574%_
                          '1
                          '#f
                          'for-each))
                        (_%method152599152604%_
                         (##unchecked-structure-ref
                          _%self145539152574%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152599152604%_
                     _%object152598152603%_
                     _%proc152589%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152605152610%_
                         (##unchecked-structure-ref
                          _%self145539152574%_
                          '1
                          '#f
                          'for-each))
                        (_%method152606152611%_
                         (##unchecked-structure-ref
                          _%self145539152574%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152606152611%_
                     _%object152605152610%_
                     _%proc152589%_)))))
          _%result152557%_)))
    (define hash-keys
      (lambda (_%h151001%_)
        (let* ((_%h151007%_
                (let ((_%$obj151004%_ _%h151001%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151004%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151004%_)))
                           '#t)
                      _%$obj151004%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151004%_)))))
               (_%h151009%_ _%h151007%_))
          (__hash-keys _%h151009%_))))
    (define __hash-values
      (lambda (_%h152477%_)
        (let* ((_%h152480%_ _%h152477%_) (_%result152489%_ '()))
          (let* ((_%self145539152491%_ _%h152480%_)
                 (_%proc152497%_
                  (lambda (_%k152494%_ _%v152495%_)
                    (set! _%result152489%_
                          (cons _%v152495%_ _%result152489%_))))
                 (_%self145539152504%_
                  (let ((_%$obj152501%_ _%self145539152491%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152501%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152501%_)))
                             '#t)
                        _%$obj152501%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152501%_)))))
                 (_%self145539152506%_ _%self145539152504%_)
                 (_%proc152521%_ _%proc152497%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152530152535%_
                         (##unchecked-structure-ref
                          _%self145539152506%_
                          '1
                          '#f
                          'for-each))
                        (_%method152531152536%_
                         (##unchecked-structure-ref
                          _%self145539152506%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152531152536%_
                     _%object152530152535%_
                     _%proc152521%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152537152542%_
                         (##unchecked-structure-ref
                          _%self145539152506%_
                          '1
                          '#f
                          'for-each))
                        (_%method152538152543%_
                         (##unchecked-structure-ref
                          _%self145539152506%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152538152543%_
                     _%object152537152542%_
                     _%proc152521%_)))))
          _%result152489%_)))
    (define hash-values
      (lambda (_%h151139%_)
        (let* ((_%h151145%_
                (let ((_%$obj151142%_ _%h151139%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151142%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151142%_)))
                           '#t)
                      _%$obj151142%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151142%_)))))
               (_%h151147%_ _%h151145%_))
          (__hash-values _%h151147%_))))
    (define __hash-copy
      (lambda (_%h152426%_)
        (let* ((_%h152429%_ _%h152426%_)
               (_%self144952152438%_ _%h152429%_)
               (_%self144952152445%_
                (let ((_%$obj152442%_ _%self144952152438%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152442%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152442%_)))
                           '#t)
                      _%$obj152442%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152442%_)))))
               (_%self144952152447%_ _%self144952152445%_))
          (if __DEBUG
              (let ((_%$obj152467%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object152459152464%_
                              (##unchecked-structure-ref
                               _%self144952152447%_
                               '1
                               '#f
                               'copy))
                             (_%method152460152465%_
                              (##unchecked-structure-ref
                               _%self144952152447%_
                               '3
                               '#f
                               'copy)))
                         (_%method152460152465%_ _%object152459152464%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj152467%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj152467%_)))
                         '#t)
                    _%$obj152467%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj152467%_))))
              (let ()
                (declare (not safe))
                (let ((_%object152469152474%_
                       (##unchecked-structure-ref
                        _%self144952152447%_
                        '1
                        '#f
                        'copy))
                      (_%method152470152475%_
                       (##unchecked-structure-ref
                        _%self144952152447%_
                        '3
                        '#f
                        'copy)))
                  (_%method152470152475%_ _%object152469152474%_)))))))
    (define hash-copy
      (lambda (_%h151277%_)
        (let* ((_%h151283%_
                (let ((_%$obj151280%_ _%h151277%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151280%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151280%_)))
                           '#t)
                      _%$obj151280%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151280%_)))))
               (_%h151285%_ _%h151283%_))
          (__hash-copy _%h151285%_))))
    (define __hash-clear!
      (lambda (_%h152378%_)
        (let* ((_%h152381%_ _%h152378%_)
               (_%self144660152390%_ _%h152381%_)
               (_%self144660152397%_
                (let ((_%$obj152394%_ _%self144660152390%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152394%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152394%_)))
                           '#t)
                      _%$obj152394%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152394%_)))))
               (_%self144660152399%_ _%self144660152397%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152411152416%_
                       (##unchecked-structure-ref
                        _%self144660152399%_
                        '1
                        '#f
                        'clear!))
                      (_%method152412152417%_
                       (##unchecked-structure-ref
                        _%self144660152399%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152412152417%_ _%object152411152416%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152418152423%_
                       (##unchecked-structure-ref
                        _%self144660152399%_
                        '1
                        '#f
                        'clear!))
                      (_%method152419152424%_
                       (##unchecked-structure-ref
                        _%self144660152399%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152419152424%_ _%object152418152423%_)))))))
    (define hash-clear!
      (lambda (_%h151415%_)
        (let* ((_%h151421%_
                (let ((_%$obj151418%_ _%h151415%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151418%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151418%_)))
                           '#t)
                      _%$obj151418%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151418%_)))))
               (_%h151423%_ _%h151421%_))
          (__hash-clear! _%h151423%_))))
    (define __hash-merge
      (lambda (_%h152324%_ . _%rest152325%_)
        (let* ((_%h152328%_ _%h152324%_)
               (_%copy152376%_
                (let* ((_%self144952152337%_ _%h152328%_)
                       (_%self144952152344%_
                        (let ((_%$obj152341%_ _%self144952152337%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152341%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152341%_)))
                                   '#t)
                              _%$obj152341%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152341%_)))))
                       (_%self144952152346%_ _%self144952152344%_))
                  (if __DEBUG
                      (let ((_%$obj152366%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152358152363%_
                                      (##unchecked-structure-ref
                                       _%self144952152346%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152359152364%_
                                      (##unchecked-structure-ref
                                       _%self144952152346%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152359152364%_
                                  _%object152358152363%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152366%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152366%_)))
                                 '#t)
                            _%$obj152366%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152366%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152368152373%_
                               (##unchecked-structure-ref
                                _%self144952152346%_
                                '1
                                '#f
                                'copy))
                              (_%method152369152374%_
                               (##unchecked-structure-ref
                                _%self144952152346%_
                                '3
                                '#f
                                'copy)))
                          (_%method152369152374%_ _%object152368152373%_)))))))
          (apply hash-merge! _%copy152376%_ _%rest152325%_)
          _%copy152376%_)))
    (define hash-merge
      (lambda (_%h151553%_ . _%rest151554%_)
        (let* ((_%h151560%_
                (let ((_%$obj151557%_ _%h151553%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151557%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151557%_)))
                           '#t)
                      _%$obj151557%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151557%_)))))
               (_%h151562%_ _%h151560%_))
          (declare (not safe))
          (##apply __hash-merge _%h151562%_ _%rest151554%_))))
    (define __hash-merge-right
      (lambda (_%h152270%_ . _%rest152271%_)
        (let* ((_%h152274%_ _%h152270%_)
               (_%copy152322%_
                (let* ((_%self144952152283%_ _%h152274%_)
                       (_%self144952152290%_
                        (let ((_%$obj152287%_ _%self144952152283%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152287%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152287%_)))
                                   '#t)
                              _%$obj152287%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152287%_)))))
                       (_%self144952152292%_ _%self144952152290%_))
                  (if __DEBUG
                      (let ((_%$obj152312%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152304152309%_
                                      (##unchecked-structure-ref
                                       _%self144952152292%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152305152310%_
                                      (##unchecked-structure-ref
                                       _%self144952152292%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152305152310%_
                                  _%object152304152309%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152312%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152312%_)))
                                 '#t)
                            _%$obj152312%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152312%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152314152319%_
                               (##unchecked-structure-ref
                                _%self144952152292%_
                                '1
                                '#f
                                'copy))
                              (_%method152315152320%_
                               (##unchecked-structure-ref
                                _%self144952152292%_
                                '3
                                '#f
                                'copy)))
                          (_%method152315152320%_ _%object152314152319%_)))))))
          (apply hash-merge-right! _%copy152322%_ _%rest152271%_)
          _%copy152322%_)))
    (define hash-merge-right
      (lambda (_%h151692%_ . _%rest151693%_)
        (let* ((_%h151699%_
                (let ((_%$obj151696%_ _%h151692%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151696%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151696%_)))
                           '#t)
                      _%$obj151696%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151696%_)))))
               (_%h151701%_ _%h151699%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h151701%_ _%rest151693%_))))
    (define __hash-merge!
      (lambda (_%h152118%_ . _%rest152119%_)
        (let ((_%h152122%_ _%h152118%_))
          (let ((__tmp161134
                 (lambda (_%hr152131%_)
                   (let* ((_%hr152137%_
                           (let ((_%$obj152134%_ _%hr152131%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152134%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152134%_)))
                                      '#t)
                                 _%$obj152134%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152134%_)))))
                          (_%hr152139%_ _%hr152137%_)
                          (_%self145539152152%_ _%hr152139%_)
                          (_%proc152227%_
                           (lambda (_%k152155%_ _%v152156%_)
                             (if (let* ((_%h152158%_ _%h152122%_)
                                        (_%k152161%_ _%k152155%_)
                                        (_%h152168%_
                                         (let ((_%$obj152165%_ _%h152158%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152165%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152165%_)))
                                                    '#t)
                                               _%$obj152165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152165%_)))))
                                        (_%h152170%_ _%h152168%_))
                                   (__hash-key? _%h152170%_ _%k152161%_))
                                 '#!void
                                 (let* ((_%self146439152186%_ _%h152122%_)
                                        (_%key152189%_ _%k152155%_)
                                        (_%value152192%_ _%v152156%_)
                                        (_%self146439152199%_
                                         (let ((_%$obj152196%_
                                                _%self146439152186%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152196%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152196%_)))
                                                    '#t)
                                               _%$obj152196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152196%_)))))
                                        (_%self146439152201%_
                                         _%self146439152199%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152212152217%_
                                                (##unchecked-structure-ref
                                                 _%self146439152201%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152213152218%_
                                                (##unchecked-structure-ref
                                                 _%self146439152201%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152213152218%_
                                            _%object152212152217%_
                                            _%key152189%_
                                            _%value152192%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152219152224%_
                                                (##unchecked-structure-ref
                                                 _%self146439152201%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152220152225%_
                                                (##unchecked-structure-ref
                                                 _%self146439152201%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152220152225%_
                                            _%object152219152224%_
                                            _%key152189%_
                                            _%value152192%_))))))))
                          (_%self145539152234%_
                           (let ((_%$obj152231%_ _%self145539152152%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152231%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152231%_)))
                                      '#t)
                                 _%$obj152231%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152231%_)))))
                          (_%self145539152236%_ _%self145539152234%_)
                          (_%proc152246%_ _%proc152227%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152255152260%_
                                  (##unchecked-structure-ref
                                   _%self145539152236%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152256152261%_
                                  (##unchecked-structure-ref
                                   _%self145539152236%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152256152261%_
                              _%object152255152260%_
                              _%proc152246%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152262152267%_
                                  (##unchecked-structure-ref
                                   _%self145539152236%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152263152268%_
                                  (##unchecked-structure-ref
                                   _%self145539152236%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152263152268%_
                              _%object152262152267%_
                              _%proc152246%_))))))))
            (declare (not safe))
            (##for-each __tmp161134 _%rest152119%_))
          _%h152122%_)))
    (define hash-merge!
      (lambda (_%h151831%_ . _%rest151832%_)
        (let* ((_%h151838%_
                (let ((_%$obj151835%_ _%h151831%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151835%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151835%_)))
                           '#t)
                      _%$obj151835%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151835%_)))))
               (_%h151840%_ _%h151838%_))
          (declare (not safe))
          (##apply __hash-merge! _%h151840%_ _%rest151832%_))))
    (define __hash-merge-right!
      (lambda (_%h151989%_ . _%rest151990%_)
        (let ((_%h151993%_ _%h151989%_))
          (let ((__tmp161135
                 (lambda (_%hr152002%_)
                   (let* ((_%hr152008%_
                           (let ((_%$obj152005%_ _%hr152002%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152005%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152005%_)))
                                      '#t)
                                 _%$obj152005%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152005%_)))))
                          (_%hr152010%_ _%hr152008%_)
                          (_%self145539152023%_ _%hr152010%_)
                          (_%proc152075%_
                           (lambda (_%k152026%_ _%v152027%_)
                             (let* ((_%self146439152029%_ _%h151993%_)
                                    (_%key152032%_ _%k152026%_)
                                    (_%value152035%_ _%v152027%_)
                                    (_%self146439152042%_
                                     (let ((_%$obj152039%_
                                            _%self146439152029%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj152039%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj152039%_)))
                                                '#t)
                                           _%$obj152039%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj152039%_)))))
                                    (_%self146439152044%_
                                     _%self146439152042%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152060152065%_
                                            (##unchecked-structure-ref
                                             _%self146439152044%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152061152066%_
                                            (##unchecked-structure-ref
                                             _%self146439152044%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152061152066%_
                                        _%object152060152065%_
                                        _%key152032%_
                                        _%value152035%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152067152072%_
                                            (##unchecked-structure-ref
                                             _%self146439152044%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152068152073%_
                                            (##unchecked-structure-ref
                                             _%self146439152044%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152068152073%_
                                        _%object152067152072%_
                                        _%key152032%_
                                        _%value152035%_)))))))
                          (_%self145539152082%_
                           (let ((_%$obj152079%_ _%self145539152023%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152079%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152079%_)))
                                      '#t)
                                 _%$obj152079%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152079%_)))))
                          (_%self145539152084%_ _%self145539152082%_)
                          (_%proc152094%_ _%proc152075%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152103152108%_
                                  (##unchecked-structure-ref
                                   _%self145539152084%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152104152109%_
                                  (##unchecked-structure-ref
                                   _%self145539152084%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152104152109%_
                              _%object152103152108%_
                              _%proc152094%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152110152115%_
                                  (##unchecked-structure-ref
                                   _%self145539152084%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152111152116%_
                                  (##unchecked-structure-ref
                                   _%self145539152084%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152111152116%_
                              _%object152110152115%_
                              _%proc152094%_))))))))
            (declare (not safe))
            (##for-each __tmp161135 _%rest151990%_))
          _%h151993%_)))
    (define hash-merge-right!
      (lambda (_%h151970%_ . _%rest151971%_)
        (let* ((_%h151977%_
                (let ((_%$obj151974%_ _%h151970%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151974%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151974%_)))
                           '#t)
                      _%$obj151974%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151974%_)))))
               (_%h151979%_ _%h151977%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h151979%_ _%rest151971%_))))))
