(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1771036671)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp343886 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp343886
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args342628%_
        (apply make-instance UnboundKeyError::t _%$args342628%_)))
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
      (lambda (_%where342502%_ _%message342503%_ . _%irritants342504%_)
        (let ((__tmp343887
               (let ((__obj343878
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj343878
                    _%message342503%_
                    'where:
                    _%where342502%_
                    'irritants:
                    _%irritants342504%_))
                 __obj343878)))
          (declare (not safe))
          (raise __tmp343887))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp343888 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp343888
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj343880
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj343880
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj343880))
    (define make-HashTable
      (lambda (_%obj342500%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj342500%_))))
    (define try-HashTable
      (lambda (_%obj342498%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj342498%_))))
    (define HashTable?
      (lambda (_%obj342496%_)
        (let ((__tmp343889
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj342496%_ __tmp343889))))
    (define is-HashTable?
      (lambda (_%obj342493%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj342493%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self327483327727%_)
        (let ((_%self327483327729%_ _%self327483327727%_))
          (declare (not safe))
          (let ((_%object327736327741%_
                 (##unchecked-structure-ref
                  _%self327483327729%_
                  '1
                  '#f
                  'clear!))
                (_%method327737327742%_
                 (##unchecked-structure-ref
                  _%self327483327729%_
                  '2
                  '#f
                  'clear!)))
            (_%method327737327742%_ _%object327736327741%_)))))
    (define ::HashTable-clear!
      (lambda (_%self327484327744%_)
        (let* ((_%self327484327749%_
                (let ((_%$obj327746%_ _%self327484327744%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj327746%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj327746%_)))
                           '#t)
                      _%$obj327746%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj327746%_)))))
               (_%self327484327751%_ _%self327484327749%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object327759327764%_
                       (##unchecked-structure-ref
                        _%self327484327751%_
                        '1
                        '#f
                        'clear!))
                      (_%method327760327765%_
                       (##unchecked-structure-ref
                        _%self327484327751%_
                        '2
                        '#f
                        'clear!)))
                  (_%method327760327765%_ _%object327759327764%_)))
              (let ()
                (declare (not safe))
                (let ((_%object327766327771%_
                       (##unchecked-structure-ref
                        _%self327484327751%_
                        '1
                        '#f
                        'clear!))
                      (_%method327767327772%_
                       (##unchecked-structure-ref
                        _%self327484327751%_
                        '2
                        '#f
                        'clear!)))
                  (_%method327767327772%_ _%object327766327771%_)))))))
    (define __HashTable-copy
      (lambda (_%self327775328018%_)
        (let ((_%self327775328020%_ _%self327775328018%_))
          (declare (not safe))
          (let ((_%object328027328032%_
                 (##unchecked-structure-ref _%self327775328020%_ '1 '#f 'copy))
                (_%method328028328033%_
                 (##unchecked-structure-ref
                  _%self327775328020%_
                  '3
                  '#f
                  'copy)))
            (_%method328028328033%_ _%object328027328032%_)))))
    (define ::HashTable-copy
      (lambda (_%self327776328035%_)
        (let* ((_%self327776328040%_
                (let ((_%$obj328037%_ _%self327776328035%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj328037%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj328037%_)))
                           '#t)
                      _%$obj328037%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj328037%_)))))
               (_%self327776328042%_ _%self327776328040%_))
          (if __DEBUG
              (let ((_%$obj328058%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object328050328055%_
                              (##unchecked-structure-ref
                               _%self327776328042%_
                               '1
                               '#f
                               'copy))
                             (_%method328051328056%_
                              (##unchecked-structure-ref
                               _%self327776328042%_
                               '3
                               '#f
                               'copy)))
                         (_%method328051328056%_ _%object328050328055%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj328058%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj328058%_)))
                         '#t)
                    _%$obj328058%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj328058%_))))
              (let ()
                (declare (not safe))
                (let ((_%object328060328065%_
                       (##unchecked-structure-ref
                        _%self327776328042%_
                        '1
                        '#f
                        'copy))
                      (_%method328061328066%_
                       (##unchecked-structure-ref
                        _%self327776328042%_
                        '3
                        '#f
                        'copy)))
                  (_%method328061328066%_ _%object328060328065%_)))))))
    (define __HashTable-delete!
      (lambda (_%self328069328312%_ _%key328313%_)
        (let ((_%self328069328315%_ _%self328069328312%_))
          (declare (not safe))
          (let ((_%object328322328327%_
                 (##unchecked-structure-ref
                  _%self328069328315%_
                  '1
                  '#f
                  'delete!))
                (_%method328323328328%_
                 (##unchecked-structure-ref
                  _%self328069328315%_
                  '4
                  '#f
                  'delete!)))
            (_%method328323328328%_ _%object328322328327%_ _%key328313%_)))))
    (define ::HashTable-delete!
      (lambda (_%self328070328330%_ _%key328331%_)
        (let* ((_%self328070328336%_
                (let ((_%$obj328333%_ _%self328070328330%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj328333%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj328333%_)))
                           '#t)
                      _%$obj328333%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj328333%_)))))
               (_%self328070328338%_ _%self328070328336%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object328346328351%_
                       (##unchecked-structure-ref
                        _%self328070328338%_
                        '1
                        '#f
                        'delete!))
                      (_%method328347328352%_
                       (##unchecked-structure-ref
                        _%self328070328338%_
                        '4
                        '#f
                        'delete!)))
                  (_%method328347328352%_
                   _%object328346328351%_
                   _%key328331%_)))
              (let ()
                (declare (not safe))
                (let ((_%object328353328358%_
                       (##unchecked-structure-ref
                        _%self328070328338%_
                        '1
                        '#f
                        'delete!))
                      (_%method328354328359%_
                       (##unchecked-structure-ref
                        _%self328070328338%_
                        '4
                        '#f
                        'delete!)))
                  (_%method328354328359%_
                   _%object328353328358%_
                   _%key328331%_)))))))
    (define __HashTable-for-each
      (lambda (_%self328362328605%_ _%proc328606%_)
        (let* ((_%self328362328608%_ _%self328362328605%_)
               (_%proc328615%_ _%proc328606%_))
          (declare (not safe))
          (let ((_%object328623328628%_
                 (##unchecked-structure-ref
                  _%self328362328608%_
                  '1
                  '#f
                  'for-each))
                (_%method328624328629%_
                 (##unchecked-structure-ref
                  _%self328362328608%_
                  '5
                  '#f
                  'for-each)))
            (_%method328624328629%_ _%object328623328628%_ _%proc328615%_)))))
    (define ::HashTable-for-each
      (lambda (_%self328363328631%_ _%proc328632%_)
        (let* ((_%self328363328637%_
                (let ((_%$obj328634%_ _%self328363328631%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj328634%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj328634%_)))
                           '#t)
                      _%$obj328634%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj328634%_)))))
               (_%self328363328639%_ _%self328363328637%_))
          (if (procedure? _%proc328632%_)
              (let ((_%proc328648%_ _%proc328632%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object328657328662%_
                             (##unchecked-structure-ref
                              _%self328363328639%_
                              '1
                              '#f
                              'for-each))
                            (_%method328658328663%_
                             (##unchecked-structure-ref
                              _%self328363328639%_
                              '5
                              '#f
                              'for-each)))
                        (_%method328658328663%_
                         _%object328657328662%_
                         _%proc328648%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object328664328669%_
                             (##unchecked-structure-ref
                              _%self328363328639%_
                              '1
                              '#f
                              'for-each))
                            (_%method328665328670%_
                             (##unchecked-structure-ref
                              _%self328363328639%_
                              '5
                              '#f
                              'for-each)))
                        (_%method328665328670%_
                         _%object328664328669%_
                         _%proc328648%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc328632%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self328673328916%_)
        (let ((_%self328673328918%_ _%self328673328916%_))
          (declare (not safe))
          (let ((_%object328925328930%_
                 (##unchecked-structure-ref
                  _%self328673328918%_
                  '1
                  '#f
                  'length))
                (_%method328926328931%_
                 (##unchecked-structure-ref
                  _%self328673328918%_
                  '6
                  '#f
                  'length)))
            (_%method328926328931%_ _%object328925328930%_)))))
    (define ::HashTable-length
      (lambda (_%self328674328933%_)
        (let* ((_%self328674328938%_
                (let ((_%$obj328935%_ _%self328674328933%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj328935%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj328935%_)))
                           '#t)
                      _%$obj328935%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj328935%_)))))
               (_%self328674328940%_ _%self328674328938%_))
          (if __DEBUG
              (let ((_%val328956%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object328948328953%_
                              (##unchecked-structure-ref
                               _%self328674328940%_
                               '1
                               '#f
                               'length))
                             (_%method328949328954%_
                              (##unchecked-structure-ref
                               _%self328674328940%_
                               '6
                               '#f
                               'length)))
                         (_%method328949328954%_ _%object328948328953%_)))))
                (if (fixnum? _%val328956%_)
                    _%val328956%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val328956%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object328958328963%_
                       (##unchecked-structure-ref
                        _%self328674328940%_
                        '1
                        '#f
                        'length))
                      (_%method328959328964%_
                       (##unchecked-structure-ref
                        _%self328674328940%_
                        '6
                        '#f
                        'length)))
                  (_%method328959328964%_ _%object328958328963%_)))))))
    (define __HashTable-ref
      (lambda (_%self328967329210%_ _%key329211%_ _%default329212%_)
        (let ((_%self328967329214%_ _%self328967329210%_))
          (declare (not safe))
          (let ((_%object329221329226%_
                 (##unchecked-structure-ref _%self328967329214%_ '1 '#f 'ref))
                (_%method329222329227%_
                 (##unchecked-structure-ref _%self328967329214%_ '7 '#f 'ref)))
            (_%method329222329227%_
             _%object329221329226%_
             _%key329211%_
             _%default329212%_)))))
    (define ::HashTable-ref
      (lambda (_%self328968329229%_ _%key329230%_ _%default329231%_)
        (let* ((_%self328968329236%_
                (let ((_%$obj329233%_ _%self328968329229%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj329233%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj329233%_)))
                           '#t)
                      _%$obj329233%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj329233%_)))))
               (_%self328968329238%_ _%self328968329236%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object329246329251%_
                       (##unchecked-structure-ref
                        _%self328968329238%_
                        '1
                        '#f
                        'ref))
                      (_%method329247329252%_
                       (##unchecked-structure-ref
                        _%self328968329238%_
                        '7
                        '#f
                        'ref)))
                  (_%method329247329252%_
                   _%object329246329251%_
                   _%key329230%_
                   _%default329231%_)))
              (let ()
                (declare (not safe))
                (let ((_%object329253329258%_
                       (##unchecked-structure-ref
                        _%self328968329238%_
                        '1
                        '#f
                        'ref))
                      (_%method329254329259%_
                       (##unchecked-structure-ref
                        _%self328968329238%_
                        '7
                        '#f
                        'ref)))
                  (_%method329254329259%_
                   _%object329253329258%_
                   _%key329230%_
                   _%default329231%_)))))))
    (define __HashTable-set!
      (lambda (_%self329262329505%_ _%key329506%_ _%value329507%_)
        (let ((_%self329262329509%_ _%self329262329505%_))
          (declare (not safe))
          (let ((_%object329516329521%_
                 (##unchecked-structure-ref _%self329262329509%_ '1 '#f 'set!))
                (_%method329517329522%_
                 (##unchecked-structure-ref
                  _%self329262329509%_
                  '8
                  '#f
                  'set!)))
            (_%method329517329522%_
             _%object329516329521%_
             _%key329506%_
             _%value329507%_)))))
    (define ::HashTable-set!
      (lambda (_%self329263329524%_ _%key329525%_ _%value329526%_)
        (let* ((_%self329263329531%_
                (let ((_%$obj329528%_ _%self329263329524%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj329528%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj329528%_)))
                           '#t)
                      _%$obj329528%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj329528%_)))))
               (_%self329263329533%_ _%self329263329531%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object329541329546%_
                       (##unchecked-structure-ref
                        _%self329263329533%_
                        '1
                        '#f
                        'set!))
                      (_%method329542329547%_
                       (##unchecked-structure-ref
                        _%self329263329533%_
                        '8
                        '#f
                        'set!)))
                  (_%method329542329547%_
                   _%object329541329546%_
                   _%key329525%_
                   _%value329526%_)))
              (let ()
                (declare (not safe))
                (let ((_%object329548329553%_
                       (##unchecked-structure-ref
                        _%self329263329533%_
                        '1
                        '#f
                        'set!))
                      (_%method329549329554%_
                       (##unchecked-structure-ref
                        _%self329263329533%_
                        '8
                        '#f
                        'set!)))
                  (_%method329549329554%_
                   _%object329548329553%_
                   _%key329525%_
                   _%value329526%_)))))))
    (define __HashTable-update!
      (lambda (_%self329557329800%_
               _%key329801%_
               _%proc329802%_
               _%default329803%_)
        (let* ((_%self329557329805%_ _%self329557329800%_)
               (_%proc329812%_ _%proc329802%_))
          (declare (not safe))
          (let ((_%object329820329825%_
                 (##unchecked-structure-ref
                  _%self329557329805%_
                  '1
                  '#f
                  'update!))
                (_%method329821329826%_
                 (##unchecked-structure-ref
                  _%self329557329805%_
                  '9
                  '#f
                  'update!)))
            (_%method329821329826%_
             _%object329820329825%_
             _%key329801%_
             _%proc329812%_
             _%default329803%_)))))
    (define ::HashTable-update!
      (lambda (_%self329558329828%_
               _%key329829%_
               _%proc329830%_
               _%default329831%_)
        (let* ((_%self329558329836%_
                (let ((_%$obj329833%_ _%self329558329828%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj329833%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj329833%_)))
                           '#t)
                      _%$obj329833%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj329833%_)))))
               (_%self329558329838%_ _%self329558329836%_))
          (if (procedure? _%proc329830%_)
              (let ((_%proc329847%_ _%proc329830%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object329856329861%_
                             (##unchecked-structure-ref
                              _%self329558329838%_
                              '1
                              '#f
                              'update!))
                            (_%method329857329862%_
                             (##unchecked-structure-ref
                              _%self329558329838%_
                              '9
                              '#f
                              'update!)))
                        (_%method329857329862%_
                         _%object329856329861%_
                         _%key329829%_
                         _%proc329847%_
                         _%default329831%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object329863329868%_
                             (##unchecked-structure-ref
                              _%self329558329838%_
                              '1
                              '#f
                              'update!))
                            (_%method329864329869%_
                             (##unchecked-structure-ref
                              _%self329558329838%_
                              '9
                              '#f
                              'update!)))
                        (_%method329864329869%_
                         _%object329863329868%_
                         _%key329829%_
                         _%proc329847%_
                         _%default329831%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc329830%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp343890 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp343890
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj343882
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj343882
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj343882))
    (define make-Locker
      (lambda (_%obj342491%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj342491%_))))
    (define try-Locker
      (lambda (_%obj342489%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj342489%_))))
    (define Locker?
      (lambda (_%obj342487%_)
        (let ((__tmp343891
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj342487%_ __tmp343891))))
    (define is-Locker?
      (lambda (_%obj342484%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj342484%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self329872330115%_)
        (let ((_%self329872330117%_ _%self329872330115%_))
          (declare (not safe))
          (let ((_%object330124330129%_
                 (##unchecked-structure-ref
                  _%self329872330117%_
                  '1
                  '#f
                  'read-lock!))
                (_%method330125330130%_
                 (##unchecked-structure-ref
                  _%self329872330117%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method330125330130%_ _%object330124330129%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self329873330132%_)
        (let* ((_%self329873330137%_
                (let ((_%$obj330134%_ _%self329873330132%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj330134%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj330134%_)))
                           '#t)
                      _%$obj330134%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj330134%_)))))
               (_%self329873330139%_ _%self329873330137%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object330147330152%_
                       (##unchecked-structure-ref
                        _%self329873330139%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method330148330153%_
                       (##unchecked-structure-ref
                        _%self329873330139%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method330148330153%_ _%object330147330152%_)))
              (let ()
                (declare (not safe))
                (let ((_%object330154330159%_
                       (##unchecked-structure-ref
                        _%self329873330139%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method330155330160%_
                       (##unchecked-structure-ref
                        _%self329873330139%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method330155330160%_ _%object330154330159%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self330163330406%_)
        (let ((_%self330163330408%_ _%self330163330406%_))
          (declare (not safe))
          (let ((_%object330415330420%_
                 (##unchecked-structure-ref
                  _%self330163330408%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method330416330421%_
                 (##unchecked-structure-ref
                  _%self330163330408%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method330416330421%_ _%object330415330420%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self330164330423%_)
        (let* ((_%self330164330428%_
                (let ((_%$obj330425%_ _%self330164330423%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj330425%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj330425%_)))
                           '#t)
                      _%$obj330425%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj330425%_)))))
               (_%self330164330430%_ _%self330164330428%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object330438330443%_
                       (##unchecked-structure-ref
                        _%self330164330430%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method330439330444%_
                       (##unchecked-structure-ref
                        _%self330164330430%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method330439330444%_ _%object330438330443%_)))
              (let ()
                (declare (not safe))
                (let ((_%object330445330450%_
                       (##unchecked-structure-ref
                        _%self330164330430%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method330446330451%_
                       (##unchecked-structure-ref
                        _%self330164330430%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method330446330451%_ _%object330445330450%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self330454330697%_)
        (let ((_%self330454330699%_ _%self330454330697%_))
          (declare (not safe))
          (let ((_%object330706330711%_
                 (##unchecked-structure-ref
                  _%self330454330699%_
                  '1
                  '#f
                  'write-lock!))
                (_%method330707330712%_
                 (##unchecked-structure-ref
                  _%self330454330699%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method330707330712%_ _%object330706330711%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self330455330714%_)
        (let* ((_%self330455330719%_
                (let ((_%$obj330716%_ _%self330455330714%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj330716%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj330716%_)))
                           '#t)
                      _%$obj330716%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj330716%_)))))
               (_%self330455330721%_ _%self330455330719%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object330729330734%_
                       (##unchecked-structure-ref
                        _%self330455330721%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method330730330735%_
                       (##unchecked-structure-ref
                        _%self330455330721%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method330730330735%_ _%object330729330734%_)))
              (let ()
                (declare (not safe))
                (let ((_%object330736330741%_
                       (##unchecked-structure-ref
                        _%self330455330721%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method330737330742%_
                       (##unchecked-structure-ref
                        _%self330455330721%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method330737330742%_ _%object330736330741%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self330745330988%_)
        (let ((_%self330745330990%_ _%self330745330988%_))
          (declare (not safe))
          (let ((_%object330997331002%_
                 (##unchecked-structure-ref
                  _%self330745330990%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method330998331003%_
                 (##unchecked-structure-ref
                  _%self330745330990%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method330998331003%_ _%object330997331002%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self330746331005%_)
        (let* ((_%self330746331010%_
                (let ((_%$obj331007%_ _%self330746331005%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj331007%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj331007%_)))
                           '#t)
                      _%$obj331007%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj331007%_)))))
               (_%self330746331012%_ _%self330746331010%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object331020331025%_
                       (##unchecked-structure-ref
                        _%self330746331012%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method331021331026%_
                       (##unchecked-structure-ref
                        _%self330746331012%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method331021331026%_ _%object331020331025%_)))
              (let ()
                (declare (not safe))
                (let ((_%object331027331032%_
                       (##unchecked-structure-ref
                        _%self330746331012%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method331028331033%_
                       (##unchecked-structure-ref
                        _%self330746331012%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method331028331033%_ _%object331027331032%_)))))))
    (let* ((_%klass342447%_ __table::t)
           (_%id342450%_ 'HashTable::ref)
           (_%proc342453%_ raw-table-ref)
           (_%rebind?342456%_ '#f)
           (_%id342461%_ _%id342450%_)
           (_%proc342474%_ _%proc342453%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342447%_
       _%id342461%_
       _%proc342474%_
       _%rebind?342456%_))
    (let* ((_%klass342410%_ __table::t)
           (_%id342413%_ 'HashTable::set!)
           (_%proc342416%_ raw-table-set!)
           (_%rebind?342419%_ '#f)
           (_%id342424%_ _%id342413%_)
           (_%proc342437%_ _%proc342416%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342410%_
       _%id342424%_
       _%proc342437%_
       _%rebind?342419%_))
    (let* ((_%klass342373%_ __table::t)
           (_%id342376%_ 'HashTable::update!)
           (_%proc342379%_ raw-table-update!)
           (_%rebind?342382%_ '#f)
           (_%id342387%_ _%id342376%_)
           (_%proc342400%_ _%proc342379%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342373%_
       _%id342387%_
       _%proc342400%_
       _%rebind?342382%_))
    (let* ((_%klass342336%_ __table::t)
           (_%id342339%_ 'HashTable::delete!)
           (_%proc342342%_ raw-table-delete!)
           (_%rebind?342345%_ '#f)
           (_%id342350%_ _%id342339%_)
           (_%proc342363%_ _%proc342342%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342336%_
       _%id342350%_
       _%proc342363%_
       _%rebind?342345%_))
    (let* ((_%klass342299%_ __table::t)
           (_%id342302%_ 'HashTable::for-each)
           (_%proc342305%_ raw-table-for-each)
           (_%rebind?342308%_ '#f)
           (_%id342313%_ _%id342302%_)
           (_%proc342326%_ _%proc342305%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342299%_
       _%id342313%_
       _%proc342326%_
       _%rebind?342308%_))
    (let* ((_%klass342262%_ __table::t)
           (_%id342265%_ 'HashTable::length)
           (_%proc342268%_ &raw-table-count)
           (_%rebind?342271%_ '#f)
           (_%id342276%_ _%id342265%_)
           (_%proc342289%_ _%proc342268%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342262%_
       _%id342276%_
       _%proc342289%_
       _%rebind?342271%_))
    (let* ((_%klass342225%_ __table::t)
           (_%id342228%_ 'HashTable::copy)
           (_%proc342231%_ raw-table-copy)
           (_%rebind?342234%_ '#f)
           (_%id342239%_ _%id342228%_)
           (_%proc342252%_ _%proc342231%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342225%_
       _%id342239%_
       _%proc342252%_
       _%rebind?342234%_))
    (let* ((_%klass342188%_ __table::t)
           (_%id342191%_ 'HashTable::clear!)
           (_%proc342194%_ raw-table-clear!)
           (_%rebind?342197%_ '#f)
           (_%id342202%_ _%id342191%_)
           (_%proc342215%_ _%proc342194%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342188%_
       _%id342202%_
       _%proc342215%_
       _%rebind?342197%_))
    (let* ((_%klass342151%_ __gc-table::t)
           (_%id342154%_ 'HashTable::ref)
           (_%proc342157%_ gc-table-ref)
           (_%rebind?342160%_ '#f)
           (_%id342165%_ _%id342154%_)
           (_%proc342178%_ _%proc342157%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342151%_
       _%id342165%_
       _%proc342178%_
       _%rebind?342160%_))
    (let* ((_%klass342114%_ __gc-table::t)
           (_%id342117%_ 'HashTable::set!)
           (_%proc342120%_ gc-table-set!)
           (_%rebind?342123%_ '#f)
           (_%id342128%_ _%id342117%_)
           (_%proc342141%_ _%proc342120%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342114%_
       _%id342128%_
       _%proc342141%_
       _%rebind?342123%_))
    (let* ((_%klass342077%_ __gc-table::t)
           (_%id342080%_ 'HashTable::update!)
           (_%proc342083%_ gc-table-update!)
           (_%rebind?342086%_ '#f)
           (_%id342091%_ _%id342080%_)
           (_%proc342104%_ _%proc342083%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342077%_
       _%id342091%_
       _%proc342104%_
       _%rebind?342086%_))
    (let* ((_%klass342040%_ __gc-table::t)
           (_%id342043%_ 'HashTable::delete!)
           (_%proc342046%_ gc-table-delete!)
           (_%rebind?342049%_ '#f)
           (_%id342054%_ _%id342043%_)
           (_%proc342067%_ _%proc342046%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342040%_
       _%id342054%_
       _%proc342067%_
       _%rebind?342049%_))
    (let* ((_%klass342003%_ __gc-table::t)
           (_%id342006%_ 'HashTable::for-each)
           (_%proc342009%_ gc-table-for-each)
           (_%rebind?342012%_ '#f)
           (_%id342017%_ _%id342006%_)
           (_%proc342030%_ _%proc342009%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass342003%_
       _%id342017%_
       _%proc342030%_
       _%rebind?342012%_))
    (let* ((_%klass341966%_ __gc-table::t)
           (_%id341969%_ 'HashTable::length)
           (_%proc341972%_ gc-table-length)
           (_%rebind?341975%_ '#f)
           (_%id341980%_ _%id341969%_)
           (_%proc341993%_ _%proc341972%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341966%_
       _%id341980%_
       _%proc341993%_
       _%rebind?341975%_))
    (let* ((_%klass341929%_ __gc-table::t)
           (_%id341932%_ 'HashTable::copy)
           (_%proc341935%_ gc-table-copy)
           (_%rebind?341938%_ '#f)
           (_%id341943%_ _%id341932%_)
           (_%proc341956%_ _%proc341935%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341929%_
       _%id341943%_
       _%proc341956%_
       _%rebind?341938%_))
    (let* ((_%klass341892%_ __gc-table::t)
           (_%id341895%_ 'HashTable::clear!)
           (_%proc341898%_ gc-table-clear!)
           (_%rebind?341901%_ '#f)
           (_%id341906%_ _%id341895%_)
           (_%proc341919%_ _%proc341898%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341892%_
       _%id341906%_
       _%proc341919%_
       _%rebind?341901%_))
    (define gambit-table-update!
      (lambda (_%table341885%_
               _%key341886%_
               _%update341887%_
               _%default341888%_)
        (let ((_%result341890%_
               (table-ref _%table341885%_ _%key341886%_ _%default341888%_)))
          (table-set!
           _%table341885%_
           _%key341886%_
           (_%update341887%_ _%default341888%_)))))
    (define gambit-table-for-each
      (lambda (_%table341882%_ _%proc341883%_)
        (table-for-each _%proc341883%_ _%table341882%_)))
    (define gambit-table-clear!
      (lambda (_%table341880%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table341880%_ '0 '5 '#f '#f))))
    (let* ((_%klass341843%_ (macro-type-table))
           (_%id341846%_ 'HashTable::ref)
           (_%proc341849%_ table-ref)
           (_%rebind?341852%_ '#f)
           (_%id341857%_ _%id341846%_)
           (_%proc341870%_ _%proc341849%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341843%_
       _%id341857%_
       _%proc341870%_
       _%rebind?341852%_))
    (let* ((_%klass341806%_ (macro-type-table))
           (_%id341809%_ 'HashTable::set!)
           (_%proc341812%_ table-set!)
           (_%rebind?341815%_ '#f)
           (_%id341820%_ _%id341809%_)
           (_%proc341833%_ _%proc341812%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341806%_
       _%id341820%_
       _%proc341833%_
       _%rebind?341815%_))
    (let* ((_%klass341769%_ (macro-type-table))
           (_%id341772%_ 'HashTable::update!)
           (_%proc341775%_ gambit-table-update!)
           (_%rebind?341778%_ '#f)
           (_%id341783%_ _%id341772%_)
           (_%proc341796%_ _%proc341775%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341769%_
       _%id341783%_
       _%proc341796%_
       _%rebind?341778%_))
    (let* ((_%klass341732%_ (macro-type-table))
           (_%id341735%_ 'HashTable::delete!)
           (_%proc341738%_ table-set!)
           (_%rebind?341741%_ '#f)
           (_%id341746%_ _%id341735%_)
           (_%proc341759%_ _%proc341738%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341732%_
       _%id341746%_
       _%proc341759%_
       _%rebind?341741%_))
    (let* ((_%klass341695%_ (macro-type-table))
           (_%id341698%_ 'HashTable::for-each)
           (_%proc341701%_ gambit-table-for-each)
           (_%rebind?341704%_ '#f)
           (_%id341709%_ _%id341698%_)
           (_%proc341722%_ _%proc341701%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341695%_
       _%id341709%_
       _%proc341722%_
       _%rebind?341704%_))
    (let* ((_%klass341658%_ (macro-type-table))
           (_%id341661%_ 'HashTable::length)
           (_%proc341664%_ table-length)
           (_%rebind?341667%_ '#f)
           (_%id341672%_ _%id341661%_)
           (_%proc341685%_ _%proc341664%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341658%_
       _%id341672%_
       _%proc341685%_
       _%rebind?341667%_))
    (let* ((_%klass341621%_ (macro-type-table))
           (_%id341624%_ 'HashTable::copy)
           (_%proc341627%_ table-copy)
           (_%rebind?341630%_ '#f)
           (_%id341635%_ _%id341624%_)
           (_%proc341648%_ _%proc341627%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341621%_
       _%id341635%_
       _%proc341648%_
       _%rebind?341630%_))
    (let* ((_%klass341584%_ (macro-type-table))
           (_%id341587%_ 'HashTable::clear!)
           (_%proc341590%_ gambit-table-clear!)
           (_%rebind?341593%_ '#f)
           (_%id341598%_ _%id341587%_)
           (_%proc341611%_ _%proc341590%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341584%_
       _%id341598%_
       _%proc341611%_
       _%rebind?341593%_))
    (define hash-table::t
      (let* ((_%slots341547%_ '(table count free hash test seed))
             (_%slot-vector341549%_ (list->vector (cons '#f _%slots341547%_)))
             (_%slot-table341575%_
              (let ((_%slot-table341551%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp343894
                       (lambda (_%slot341553%_ _%field341554%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table341551%_
                            _%slot341553%_
                            _%field341554%_))
                         (let ((__tmp343895
                                (let ((_%sym341556%_ _%slot341553%_))
                                  (if (symbol? _%sym341556%_)
                                      (let ((_%sym341561%_ _%sym341556%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym341561%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym341556%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table341551%_
                            __tmp343895
                            _%field341554%_))))
                      (__tmp343892
                       (let ((__tmp343893
                              (let ()
                                (declare (not safe))
                                (##length _%slots341547%_))))
                         (declare (not safe))
                         (##iota __tmp343893 '1))))
                  (declare (not safe))
                  (##for-each __tmp343894 _%slots341547%_ __tmp343892))
                _%slot-table341551%_))
             (_%flags341577%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields341579%_ '#())
             (_%properties341581%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots341547%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp343896 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags341577%_
         __table::t
         _%fields341579%_
         __tmp343896
         _%slot-vector341549%_
         _%slot-table341575%_
         _%properties341581%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots341510%_ '(gcht immediate))
             (_%slot-vector341512%_ (list->vector (cons '#f _%slots341510%_)))
             (_%slot-table341538%_
              (let ((_%slot-table341514%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp343899
                       (lambda (_%slot341516%_ _%field341517%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table341514%_
                            _%slot341516%_
                            _%field341517%_))
                         (let ((__tmp343900
                                (let ((_%sym341519%_ _%slot341516%_))
                                  (if (symbol? _%sym341519%_)
                                      (let ((_%sym341524%_ _%sym341519%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym341524%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym341519%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table341514%_
                            __tmp343900
                            _%field341517%_))))
                      (__tmp343897
                       (let ((__tmp343898
                              (let ()
                                (declare (not safe))
                                (##length _%slots341510%_))))
                         (declare (not safe))
                         (##iota __tmp343898 '1))))
                  (declare (not safe))
                  (##for-each __tmp343899 _%slots341510%_ __tmp343897))
                _%slot-table341514%_))
             (_%flags341540%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields341542%_ '#())
             (_%properties341544%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots341510%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp343901 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags341540%_
         __gc-table::t
         _%fields341542%_
         __tmp343901
         _%slot-vector341512%_
         _%slot-table341538%_
         _%properties341544%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp343903 (list))
            (__tmp343902
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp343903
         '(table lock)
         __tmp343902
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args341507%_
        (apply make-instance locked-hash-table::t _%$args341507%_)))
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
      (let ((__tmp343905 (list))
            (__tmp343904
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp343905
         '(table key-check)
         __tmp343904
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args341504%_
        (apply make-instance checked-hash-table::t _%$args341504%_)))
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
      (let ((__tmp343907 (list hash-table::t))
            (__tmp343906 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp343907
         '()
         __tmp343906
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args341501%_
        (apply make-instance eq-hash-table::t _%$args341501%_)))
    (define eqv-hash-table::t
      (let ((__tmp343909 (list hash-table::t))
            (__tmp343908 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp343909
         '()
         __tmp343908
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args341498%_
        (apply make-instance eqv-hash-table::t _%$args341498%_)))
    (define symbol-hash-table::t
      (let ((__tmp343911 (list hash-table::t))
            (__tmp343910 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp343911
         '()
         __tmp343910
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args341495%_
        (apply make-instance symbol-hash-table::t _%$args341495%_)))
    (define string-hash-table::t
      (let ((__tmp343913 (list hash-table::t))
            (__tmp343912 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp343913
         '()
         __tmp343912
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args341492%_
        (apply make-instance string-hash-table::t _%$args341492%_)))
    (define immediate-hash-table::t
      (let ((__tmp343915 (list hash-table::t))
            (__tmp343914 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp343915
         '()
         __tmp343914
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args341489%_
        (apply make-instance immediate-hash-table::t _%$args341489%_)))
    (let* ((_%klass341452%_ hash-table::t)
           (_%id341455%_ 'HashTable::ref)
           (_%proc341458%_ raw-table-ref)
           (_%rebind?341461%_ '#f)
           (_%id341466%_ _%id341455%_)
           (_%proc341479%_ _%proc341458%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341452%_
       _%id341466%_
       _%proc341479%_
       _%rebind?341461%_))
    (let* ((_%klass341415%_ hash-table::t)
           (_%id341418%_ 'HashTable::set!)
           (_%proc341421%_ raw-table-set!)
           (_%rebind?341424%_ '#f)
           (_%id341429%_ _%id341418%_)
           (_%proc341442%_ _%proc341421%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341415%_
       _%id341429%_
       _%proc341442%_
       _%rebind?341424%_))
    (let* ((_%klass341378%_ hash-table::t)
           (_%id341381%_ 'HashTable::update!)
           (_%proc341384%_ raw-table-update!)
           (_%rebind?341387%_ '#f)
           (_%id341392%_ _%id341381%_)
           (_%proc341405%_ _%proc341384%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341378%_
       _%id341392%_
       _%proc341405%_
       _%rebind?341387%_))
    (let* ((_%klass341341%_ hash-table::t)
           (_%id341344%_ 'HashTable::delete!)
           (_%proc341347%_ raw-table-delete!)
           (_%rebind?341350%_ '#f)
           (_%id341355%_ _%id341344%_)
           (_%proc341368%_ _%proc341347%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341341%_
       _%id341355%_
       _%proc341368%_
       _%rebind?341350%_))
    (let* ((_%klass341304%_ hash-table::t)
           (_%id341307%_ 'HashTable::for-each)
           (_%proc341310%_ raw-table-for-each)
           (_%rebind?341313%_ '#f)
           (_%id341318%_ _%id341307%_)
           (_%proc341331%_ _%proc341310%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341304%_
       _%id341318%_
       _%proc341331%_
       _%rebind?341313%_))
    (let* ((_%klass341267%_ hash-table::t)
           (_%id341270%_ 'HashTable::length)
           (_%proc341273%_ &raw-table-count)
           (_%rebind?341276%_ '#f)
           (_%id341281%_ _%id341270%_)
           (_%proc341294%_ _%proc341273%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341267%_
       _%id341281%_
       _%proc341294%_
       _%rebind?341276%_))
    (let* ((_%klass341230%_ hash-table::t)
           (_%id341233%_ 'HashTable::copy)
           (_%proc341236%_ raw-table-copy)
           (_%rebind?341239%_ '#f)
           (_%id341244%_ _%id341233%_)
           (_%proc341257%_ _%proc341236%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341230%_
       _%id341244%_
       _%proc341257%_
       _%rebind?341239%_))
    (let* ((_%klass341193%_ hash-table::t)
           (_%id341196%_ 'HashTable::clear!)
           (_%proc341199%_ raw-table-clear!)
           (_%rebind?341202%_ '#f)
           (_%id341207%_ _%id341196%_)
           (_%proc341220%_ _%proc341199%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341193%_
       _%id341207%_
       _%proc341220%_
       _%rebind?341202%_))
    (let* ((_%klass341156%_ eq-hash-table::t)
           (_%id341159%_ 'HashTable::ref)
           (_%proc341162%_ eq-table-ref)
           (_%rebind?341165%_ '#f)
           (_%id341170%_ _%id341159%_)
           (_%proc341183%_ _%proc341162%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341156%_
       _%id341170%_
       _%proc341183%_
       _%rebind?341165%_))
    (let* ((_%klass341119%_ eq-hash-table::t)
           (_%id341122%_ 'HashTable::set!)
           (_%proc341125%_ eq-table-set!)
           (_%rebind?341128%_ '#f)
           (_%id341133%_ _%id341122%_)
           (_%proc341146%_ _%proc341125%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341119%_
       _%id341133%_
       _%proc341146%_
       _%rebind?341128%_))
    (let* ((_%klass341082%_ eq-hash-table::t)
           (_%id341085%_ 'HashTable::update!)
           (_%proc341088%_ eq-table-update!)
           (_%rebind?341091%_ '#f)
           (_%id341096%_ _%id341085%_)
           (_%proc341109%_ _%proc341088%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341082%_
       _%id341096%_
       _%proc341109%_
       _%rebind?341091%_))
    (let* ((_%klass341045%_ eq-hash-table::t)
           (_%id341048%_ 'HashTable::delete!)
           (_%proc341051%_ eq-table-delete!)
           (_%rebind?341054%_ '#f)
           (_%id341059%_ _%id341048%_)
           (_%proc341072%_ _%proc341051%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341045%_
       _%id341059%_
       _%proc341072%_
       _%rebind?341054%_))
    (let* ((_%klass341008%_ eqv-hash-table::t)
           (_%id341011%_ 'HashTable::ref)
           (_%proc341014%_ eqv-table-ref)
           (_%rebind?341017%_ '#f)
           (_%id341022%_ _%id341011%_)
           (_%proc341035%_ _%proc341014%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass341008%_
       _%id341022%_
       _%proc341035%_
       _%rebind?341017%_))
    (let* ((_%klass340971%_ eqv-hash-table::t)
           (_%id340974%_ 'HashTable::set!)
           (_%proc340977%_ eqv-table-set!)
           (_%rebind?340980%_ '#f)
           (_%id340985%_ _%id340974%_)
           (_%proc340998%_ _%proc340977%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340971%_
       _%id340985%_
       _%proc340998%_
       _%rebind?340980%_))
    (let* ((_%klass340934%_ eqv-hash-table::t)
           (_%id340937%_ 'HashTable::update!)
           (_%proc340940%_ eqv-table-update!)
           (_%rebind?340943%_ '#f)
           (_%id340948%_ _%id340937%_)
           (_%proc340961%_ _%proc340940%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340934%_
       _%id340948%_
       _%proc340961%_
       _%rebind?340943%_))
    (let* ((_%klass340897%_ eqv-hash-table::t)
           (_%id340900%_ 'HashTable::delete!)
           (_%proc340903%_ eqv-table-delete!)
           (_%rebind?340906%_ '#f)
           (_%id340911%_ _%id340900%_)
           (_%proc340924%_ _%proc340903%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340897%_
       _%id340911%_
       _%proc340924%_
       _%rebind?340906%_))
    (let* ((_%klass340860%_ symbol-hash-table::t)
           (_%id340863%_ 'HashTable::ref)
           (_%proc340866%_ symbolic-table-ref)
           (_%rebind?340869%_ '#f)
           (_%id340874%_ _%id340863%_)
           (_%proc340887%_ _%proc340866%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340860%_
       _%id340874%_
       _%proc340887%_
       _%rebind?340869%_))
    (let* ((_%klass340823%_ symbol-hash-table::t)
           (_%id340826%_ 'HashTable::set!)
           (_%proc340829%_ symbolic-table-set!)
           (_%rebind?340832%_ '#f)
           (_%id340837%_ _%id340826%_)
           (_%proc340850%_ _%proc340829%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340823%_
       _%id340837%_
       _%proc340850%_
       _%rebind?340832%_))
    (let* ((_%klass340786%_ symbol-hash-table::t)
           (_%id340789%_ 'HashTable::update!)
           (_%proc340792%_ symbolic-table-update!)
           (_%rebind?340795%_ '#f)
           (_%id340800%_ _%id340789%_)
           (_%proc340813%_ _%proc340792%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340786%_
       _%id340800%_
       _%proc340813%_
       _%rebind?340795%_))
    (let* ((_%klass340749%_ symbol-hash-table::t)
           (_%id340752%_ 'HashTable::delete!)
           (_%proc340755%_ symbolic-table-delete!)
           (_%rebind?340758%_ '#f)
           (_%id340763%_ _%id340752%_)
           (_%proc340776%_ _%proc340755%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340749%_
       _%id340763%_
       _%proc340776%_
       _%rebind?340758%_))
    (let* ((_%klass340712%_ string-hash-table::t)
           (_%id340715%_ 'HashTable::ref)
           (_%proc340718%_ string-table-ref)
           (_%rebind?340721%_ '#f)
           (_%id340726%_ _%id340715%_)
           (_%proc340739%_ _%proc340718%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340712%_
       _%id340726%_
       _%proc340739%_
       _%rebind?340721%_))
    (let* ((_%klass340675%_ string-hash-table::t)
           (_%id340678%_ 'HashTable::set!)
           (_%proc340681%_ string-table-set!)
           (_%rebind?340684%_ '#f)
           (_%id340689%_ _%id340678%_)
           (_%proc340702%_ _%proc340681%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340675%_
       _%id340689%_
       _%proc340702%_
       _%rebind?340684%_))
    (let* ((_%klass340638%_ string-hash-table::t)
           (_%id340641%_ 'HashTable::update!)
           (_%proc340644%_ string-table-update!)
           (_%rebind?340647%_ '#f)
           (_%id340652%_ _%id340641%_)
           (_%proc340665%_ _%proc340644%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340638%_
       _%id340652%_
       _%proc340665%_
       _%rebind?340647%_))
    (let* ((_%klass340601%_ string-hash-table::t)
           (_%id340604%_ 'HashTable::delete!)
           (_%proc340607%_ string-table-delete!)
           (_%rebind?340610%_ '#f)
           (_%id340615%_ _%id340604%_)
           (_%proc340628%_ _%proc340607%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340601%_
       _%id340615%_
       _%proc340628%_
       _%rebind?340610%_))
    (let* ((_%klass340564%_ immediate-hash-table::t)
           (_%id340567%_ 'HashTable::ref)
           (_%proc340570%_ immediate-table-ref)
           (_%rebind?340573%_ '#f)
           (_%id340578%_ _%id340567%_)
           (_%proc340591%_ _%proc340570%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340564%_
       _%id340578%_
       _%proc340591%_
       _%rebind?340573%_))
    (let* ((_%klass340527%_ immediate-hash-table::t)
           (_%id340530%_ 'HashTable::set!)
           (_%proc340533%_ immediate-table-set!)
           (_%rebind?340536%_ '#f)
           (_%id340541%_ _%id340530%_)
           (_%proc340554%_ _%proc340533%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340527%_
       _%id340541%_
       _%proc340554%_
       _%rebind?340536%_))
    (let* ((_%klass340490%_ immediate-hash-table::t)
           (_%id340493%_ 'HashTable::update!)
           (_%proc340496%_ immediate-table-update!)
           (_%rebind?340499%_ '#f)
           (_%id340504%_ _%id340493%_)
           (_%proc340517%_ _%proc340496%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340490%_
       _%id340504%_
       _%proc340517%_
       _%rebind?340499%_))
    (let* ((_%klass340453%_ immediate-hash-table::t)
           (_%id340456%_ 'HashTable::delete!)
           (_%proc340459%_ immediate-table-delete!)
           (_%rebind?340462%_ '#f)
           (_%id340467%_ _%id340456%_)
           (_%proc340480%_ _%proc340459%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340453%_
       _%id340467%_
       _%proc340480%_
       _%rebind?340462%_))
    (let* ((_%klass340416%_ gc-hash-table::t)
           (_%id340419%_ 'HashTable::ref)
           (_%proc340422%_ gc-table-ref)
           (_%rebind?340425%_ '#f)
           (_%id340430%_ _%id340419%_)
           (_%proc340443%_ _%proc340422%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340416%_
       _%id340430%_
       _%proc340443%_
       _%rebind?340425%_))
    (let* ((_%klass340379%_ gc-hash-table::t)
           (_%id340382%_ 'HashTable::set!)
           (_%proc340385%_ gc-table-set!)
           (_%rebind?340388%_ '#f)
           (_%id340393%_ _%id340382%_)
           (_%proc340406%_ _%proc340385%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340379%_
       _%id340393%_
       _%proc340406%_
       _%rebind?340388%_))
    (let* ((_%klass340342%_ gc-hash-table::t)
           (_%id340345%_ 'HashTable::update!)
           (_%proc340348%_ gc-table-update!)
           (_%rebind?340351%_ '#f)
           (_%id340356%_ _%id340345%_)
           (_%proc340369%_ _%proc340348%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340342%_
       _%id340356%_
       _%proc340369%_
       _%rebind?340351%_))
    (let* ((_%klass340305%_ gc-hash-table::t)
           (_%id340308%_ 'HashTable::delete!)
           (_%proc340311%_ gc-table-delete!)
           (_%rebind?340314%_ '#f)
           (_%id340319%_ _%id340308%_)
           (_%proc340332%_ _%proc340311%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340305%_
       _%id340319%_
       _%proc340332%_
       _%rebind?340314%_))
    (let* ((_%klass340268%_ gc-hash-table::t)
           (_%id340271%_ 'HashTable::for-each)
           (_%proc340274%_ gc-table-for-each)
           (_%rebind?340277%_ '#f)
           (_%id340282%_ _%id340271%_)
           (_%proc340295%_ _%proc340274%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340268%_
       _%id340282%_
       _%proc340295%_
       _%rebind?340277%_))
    (let* ((_%klass340231%_ gc-hash-table::t)
           (_%id340234%_ 'HashTable::length)
           (_%proc340237%_ gc-table-length)
           (_%rebind?340240%_ '#f)
           (_%id340245%_ _%id340234%_)
           (_%proc340258%_ _%proc340237%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340231%_
       _%id340245%_
       _%proc340258%_
       _%rebind?340240%_))
    (let* ((_%klass340194%_ gc-hash-table::t)
           (_%id340197%_ 'HashTable::copy)
           (_%proc340200%_ gc-table-copy)
           (_%rebind?340203%_ '#f)
           (_%id340208%_ _%id340197%_)
           (_%proc340221%_ _%proc340200%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340194%_
       _%id340208%_
       _%proc340221%_
       _%rebind?340203%_))
    (let* ((_%klass340157%_ gc-hash-table::t)
           (_%id340160%_ 'HashTable::clear!)
           (_%proc340163%_ gc-table-clear!)
           (_%rebind?340166%_ '#f)
           (_%id340171%_ _%id340160%_)
           (_%proc340184%_ _%proc340163%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass340157%_
       _%id340171%_
       _%proc340184%_
       _%rebind?340166%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref331418%_
      (lambda (_%self340078%_ _%key340080%_ _%default340081%_)
        (let* ((_%self340084%_ _%self340078%_)
               (_%key340093%_ _%key340080%_)
               (_%default340101%_ _%default340081%_))
          (let ((_%h340110%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self340084%_ '1 '#f '#f)))
                (_%l340112%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self340084%_ '2 '#f '#f))))
            (let ((__tmp343918
                   (lambda ()
                     (let ((_%self329870340116%_ _%l340112%_))
                       (declare (not safe))
                       (let ((_%object340119340124%_
                              (##unchecked-structure-ref
                               _%self329870340116%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method340120340125%_
                              (##unchecked-structure-ref
                               _%self329870340116%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method340120340125%_ _%object340119340124%_)))))
                  (__tmp343917
                   (lambda ()
                     (let* ((_%self328965340128%_ _%h340110%_)
                            (_%key340131%_ _%key340093%_)
                            (_%default340134%_ _%default340101%_))
                       (declare (not safe))
                       (let ((_%object340137340142%_
                              (##unchecked-structure-ref
                               _%self328965340128%_
                               '1
                               '#f
                               'ref))
                             (_%method340138340143%_
                              (##unchecked-structure-ref
                               _%self328965340128%_
                               '7
                               '#f
                               'ref)))
                         (_%method340138340143%_
                          _%object340137340142%_
                          _%key340131%_
                          _%default340134%_)))))
                  (__tmp343916
                   (lambda ()
                     (let ((_%self330161340146%_ _%l340112%_))
                       (declare (not safe))
                       (let ((_%object340149340154%_
                              (##unchecked-structure-ref
                               _%self330161340146%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method340150340155%_
                              (##unchecked-structure-ref
                               _%self330161340146%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method340150340155%_ _%object340149340154%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp343918 __tmp343917 __tmp343916))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref331418%_
       '#f))
    (define _%locked-hash-table::HashTable::set!331420%_
      (lambda (_%self339876%_ _%key339878%_ _%value339879%_)
        (let* ((_%self339882%_ _%self339876%_)
               (_%key339891%_ _%key339878%_)
               (_%value339899%_ _%value339879%_))
          (let ((_%h339908%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339882%_ '1 '#f '#f)))
                (_%l339910%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339882%_ '2 '#f '#f))))
            (let ((__tmp343921
                   (lambda ()
                     (let ((_%self330452339914%_ _%l339910%_))
                       (declare (not safe))
                       (let ((_%object339917339922%_
                              (##unchecked-structure-ref
                               _%self330452339914%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method339918339923%_
                              (##unchecked-structure-ref
                               _%self330452339914%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method339918339923%_ _%object339917339922%_)))))
                  (__tmp343920
                   (lambda ()
                     (let* ((_%self329260339926%_ _%h339908%_)
                            (_%key339929%_ _%key339891%_)
                            (_%value339932%_ _%value339899%_))
                       (declare (not safe))
                       (let ((_%object339935339940%_
                              (##unchecked-structure-ref
                               _%self329260339926%_
                               '1
                               '#f
                               'set!))
                             (_%method339936339941%_
                              (##unchecked-structure-ref
                               _%self329260339926%_
                               '8
                               '#f
                               'set!)))
                         (_%method339936339941%_
                          _%object339935339940%_
                          _%key339929%_
                          _%value339932%_)))))
                  (__tmp343919
                   (lambda ()
                     (let ((_%self330743339944%_ _%l339910%_))
                       (declare (not safe))
                       (let ((_%object339947339952%_
                              (##unchecked-structure-ref
                               _%self330743339944%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method339948339953%_
                              (##unchecked-structure-ref
                               _%self330743339944%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method339948339953%_ _%object339947339952%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp343921 __tmp343920 __tmp343919))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!331420%_
       '#f))
    (define _%locked-hash-table::HashTable::update!331422%_
      (lambda (_%self339662%_ _%key339664%_ _%update339665%_ _%default339666%_)
        (let* ((_%self339669%_ _%self339662%_)
               (_%key339678%_ _%key339664%_)
               (_%update339686%_ _%update339665%_)
               (_%default339694%_ _%default339666%_))
          (let ((_%h339703%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339669%_ '1 '#f '#f)))
                (_%l339705%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339669%_ '2 '#f '#f))))
            (let ((__tmp343924
                   (lambda ()
                     (let ((_%self330452339709%_ _%l339705%_))
                       (declare (not safe))
                       (let ((_%object339712339717%_
                              (##unchecked-structure-ref
                               _%self330452339709%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method339713339718%_
                              (##unchecked-structure-ref
                               _%self330452339709%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method339713339718%_ _%object339712339717%_)))))
                  (__tmp343923
                   (lambda ()
                     (let* ((_%self329555339721%_ _%h339703%_)
                            (_%key339724%_ _%key339678%_)
                            (_%proc339727%_ _%update339686%_)
                            (_%default339730%_ _%default339694%_))
                       (declare (not safe))
                       (let ((_%object339733339738%_
                              (##unchecked-structure-ref
                               _%self329555339721%_
                               '1
                               '#f
                               'update!))
                             (_%method339734339739%_
                              (##unchecked-structure-ref
                               _%self329555339721%_
                               '9
                               '#f
                               'update!)))
                         (_%method339734339739%_
                          _%object339733339738%_
                          _%key339724%_
                          _%proc339727%_
                          _%default339730%_)))))
                  (__tmp343922
                   (lambda ()
                     (let ((_%self330743339742%_ _%l339705%_))
                       (declare (not safe))
                       (let ((_%object339745339750%_
                              (##unchecked-structure-ref
                               _%self330743339742%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method339746339751%_
                              (##unchecked-structure-ref
                               _%self330743339742%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method339746339751%_ _%object339745339750%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp343924 __tmp343923 __tmp343922))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!331422%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!331424%_
      (lambda (_%self339472%_ _%key339474%_)
        (let* ((_%self339477%_ _%self339472%_) (_%key339486%_ _%key339474%_))
          (let ((_%h339495%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339477%_ '1 '#f '#f)))
                (_%l339497%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339477%_ '2 '#f '#f))))
            (let ((__tmp343927
                   (lambda ()
                     (let ((_%self330452339501%_ _%l339497%_))
                       (declare (not safe))
                       (let ((_%object339504339509%_
                              (##unchecked-structure-ref
                               _%self330452339501%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method339505339510%_
                              (##unchecked-structure-ref
                               _%self330452339501%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method339505339510%_ _%object339504339509%_)))))
                  (__tmp343926
                   (lambda ()
                     (let* ((_%self328067339513%_ _%h339495%_)
                            (_%key339516%_ _%key339486%_))
                       (declare (not safe))
                       (let ((_%object339519339524%_
                              (##unchecked-structure-ref
                               _%self328067339513%_
                               '1
                               '#f
                               'delete!))
                             (_%method339520339525%_
                              (##unchecked-structure-ref
                               _%self328067339513%_
                               '4
                               '#f
                               'delete!)))
                         (_%method339520339525%_
                          _%object339519339524%_
                          _%key339516%_)))))
                  (__tmp343925
                   (lambda ()
                     (let ((_%self330743339528%_ _%l339497%_))
                       (declare (not safe))
                       (let ((_%object339531339536%_
                              (##unchecked-structure-ref
                               _%self330743339528%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method339532339537%_
                              (##unchecked-structure-ref
                               _%self330743339528%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method339532339537%_ _%object339531339536%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp343927 __tmp343926 __tmp343925))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!331424%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each331426%_
      (lambda (_%self339282%_ _%proc339284%_)
        (let* ((_%self339287%_ _%self339282%_) (_%proc339296%_ _%proc339284%_))
          (let ((_%h339305%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339287%_ '1 '#f '#f)))
                (_%l339307%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339287%_ '2 '#f '#f))))
            (let ((__tmp343930
                   (lambda ()
                     (let ((_%self329870339311%_ _%l339307%_))
                       (declare (not safe))
                       (let ((_%object339314339319%_
                              (##unchecked-structure-ref
                               _%self329870339311%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method339315339320%_
                              (##unchecked-structure-ref
                               _%self329870339311%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method339315339320%_ _%object339314339319%_)))))
                  (__tmp343929
                   (lambda ()
                     (let* ((_%self328360339323%_ _%h339305%_)
                            (_%proc339326%_ _%proc339296%_))
                       (declare (not safe))
                       (let ((_%object339329339334%_
                              (##unchecked-structure-ref
                               _%self328360339323%_
                               '1
                               '#f
                               'for-each))
                             (_%method339330339335%_
                              (##unchecked-structure-ref
                               _%self328360339323%_
                               '5
                               '#f
                               'for-each)))
                         (_%method339330339335%_
                          _%object339329339334%_
                          _%proc339326%_)))))
                  (__tmp343928
                   (lambda ()
                     (let ((_%self330161339338%_ _%l339307%_))
                       (declare (not safe))
                       (let ((_%object339341339346%_
                              (##unchecked-structure-ref
                               _%self330161339338%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method339342339347%_
                              (##unchecked-structure-ref
                               _%self330161339338%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method339342339347%_ _%object339341339346%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp343930 __tmp343929 __tmp343928))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each331426%_
       '#f))
    (define _%locked-hash-table::HashTable::length331428%_
      (lambda (_%self339097%_)
        (let ((_%self339101%_ _%self339097%_))
          (let ((_%h339111%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339101%_ '1 '#f '#f)))
                (_%l339113%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self339101%_ '2 '#f '#f))))
            ((lambda (_%g339115339117%_)
               (let ((_%val339120%_ _%g339115339117%_))
                 (if (fixnum? _%val339120%_)
                     _%val339120%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val339120%_)
                       '#!void))))
             (let ((__tmp343933
                    (lambda ()
                      (let ((_%self329870339124%_ _%l339113%_))
                        (declare (not safe))
                        (let ((_%object339127339132%_
                               (##unchecked-structure-ref
                                _%self329870339124%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method339128339133%_
                               (##unchecked-structure-ref
                                _%self329870339124%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method339128339133%_ _%object339127339132%_)))))
                   (__tmp343932
                    (lambda ()
                      (let ((_%self328671339136%_ _%h339111%_))
                        (declare (not safe))
                        (let ((_%object339139339144%_
                               (##unchecked-structure-ref
                                _%self328671339136%_
                                '1
                                '#f
                                'length))
                              (_%method339140339145%_
                               (##unchecked-structure-ref
                                _%self328671339136%_
                                '6
                                '#f
                                'length)))
                          (_%method339140339145%_ _%object339139339144%_)))))
                   (__tmp343931
                    (lambda ()
                      (let ((_%self330161339148%_ _%l339113%_))
                        (declare (not safe))
                        (let ((_%object339151339156%_
                               (##unchecked-structure-ref
                                _%self330161339148%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method339152339157%_
                               (##unchecked-structure-ref
                                _%self330161339148%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method339152339157%_ _%object339151339156%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp343933 __tmp343932 __tmp343931)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length331428%_
       '#f))
    (define _%locked-hash-table::HashTable::copy331430%_
      (lambda (_%self338916%_)
        (let ((_%self338920%_ _%self338916%_))
          (let ((_%h338930%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self338920%_ '1 '#f '#f)))
                (_%l338932%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self338920%_ '2 '#f '#f))))
            (let ((_%$obj338971%_
                   (let ((__tmp343936
                          (lambda ()
                            (let ((_%self329870338936%_ _%l338932%_))
                              (declare (not safe))
                              (let ((_%object338939338944%_
                                     (##unchecked-structure-ref
                                      _%self329870338936%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method338940338945%_
                                     (##unchecked-structure-ref
                                      _%self329870338936%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method338940338945%_
                                 _%object338939338944%_)))))
                         (__tmp343935
                          (lambda ()
                            (let ((_%self327773338948%_ _%h338930%_))
                              (declare (not safe))
                              (let ((_%object338951338956%_
                                     (##unchecked-structure-ref
                                      _%self327773338948%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method338952338957%_
                                     (##unchecked-structure-ref
                                      _%self327773338948%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method338952338957%_
                                 _%object338951338956%_)))))
                         (__tmp343934
                          (lambda ()
                            (let ((_%self330161338960%_ _%l338932%_))
                              (declare (not safe))
                              (let ((_%object338963338968%_
                                     (##unchecked-structure-ref
                                      _%self330161338960%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method338964338969%_
                                     (##unchecked-structure-ref
                                      _%self330161338960%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method338964338969%_
                                 _%object338963338968%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp343936 __tmp343935 __tmp343934))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj338971%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj338971%_)))
                       '#t)
                  _%$obj338971%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj338971%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy331430%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!331432%_
      (lambda (_%self338738%_)
        (let ((_%self338742%_ _%self338738%_))
          (let ((_%h338752%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self338742%_ '1 '#f '#f)))
                (_%l338754%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self338742%_ '2 '#f '#f))))
            (let ((__tmp343939
                   (lambda ()
                     (let ((_%self330452338758%_ _%l338754%_))
                       (declare (not safe))
                       (let ((_%object338761338766%_
                              (##unchecked-structure-ref
                               _%self330452338758%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method338762338767%_
                              (##unchecked-structure-ref
                               _%self330452338758%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method338762338767%_ _%object338761338766%_)))))
                  (__tmp343938
                   (lambda ()
                     (let ((_%self327481338770%_ _%h338752%_))
                       (declare (not safe))
                       (let ((_%object338773338778%_
                              (##unchecked-structure-ref
                               _%self327481338770%_
                               '1
                               '#f
                               'clear!))
                             (_%method338774338779%_
                              (##unchecked-structure-ref
                               _%self327481338770%_
                               '2
                               '#f
                               'clear!)))
                         (_%method338774338779%_ _%object338773338778%_)))))
                  (__tmp343937
                   (lambda ()
                     (let ((_%self330743338782%_ _%l338754%_))
                       (declare (not safe))
                       (let ((_%object338785338790%_
                              (##unchecked-structure-ref
                               _%self330743338782%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method338786338791%_
                              (##unchecked-structure-ref
                               _%self330743338782%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method338786338791%_ _%object338785338790%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp343939 __tmp343938 __tmp343937))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!331432%_
       '#f))
    (let* ((_%klass338578%_ (macro-type-mutex))
           (_%id338581%_ 'Locker::read-lock!)
           (_%proc338584%_ mutex-lock!)
           (_%rebind?338587%_ '#f)
           (_%id338592%_ _%id338581%_)
           (_%proc338605%_ _%proc338584%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass338578%_
       _%id338592%_
       _%proc338605%_
       _%rebind?338587%_))
    (let* ((_%klass338541%_ (macro-type-mutex))
           (_%id338544%_ 'Locker::read-unlock!)
           (_%proc338547%_ mutex-unlock!)
           (_%rebind?338550%_ '#f)
           (_%id338555%_ _%id338544%_)
           (_%proc338568%_ _%proc338547%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass338541%_
       _%id338555%_
       _%proc338568%_
       _%rebind?338550%_))
    (let* ((_%klass338504%_ (macro-type-mutex))
           (_%id338507%_ 'Locker::write-lock!)
           (_%proc338510%_ mutex-lock!)
           (_%rebind?338513%_ '#f)
           (_%id338518%_ _%id338507%_)
           (_%proc338531%_ _%proc338510%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass338504%_
       _%id338518%_
       _%proc338531%_
       _%rebind?338513%_))
    (let* ((_%klass338467%_ (macro-type-mutex))
           (_%id338470%_ 'Locker::write-unlock!)
           (_%proc338473%_ mutex-unlock!)
           (_%rebind?338476%_ '#f)
           (_%id338481%_ _%id338470%_)
           (_%proc338494%_ _%proc338473%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass338467%_
       _%id338481%_
       _%proc338494%_
       _%rebind?338476%_))
    (define _%checked-hash-table::HashTable::ref331643%_
      (lambda (_%self338408%_ _%key338409%_ _%default338410%_)
        (let* ((_%self338413%_ _%self338408%_)
               (_%key338422%_ _%key338409%_)
               (_%default338430%_ _%default338410%_))
          (declare (not safe))
          (let ((_%h338441%_
                 (##unchecked-structure-ref _%self338413%_ '1 '#f '#f))
                (_%key?338443%_
                 (##unchecked-structure-ref _%self338413%_ '2 '#f '#f)))
            (if ((lambda (_%key?338446%_ _%key338447%_ _%default338448%_)
                   (_%key?338446%_ _%key338447%_))
                 _%key?338443%_
                 _%key338422%_
                 _%default338430%_)
                (let* ((_%self328965338450%_ _%h338441%_)
                       (_%key338453%_ _%key338422%_)
                       (_%default338456%_ _%default338430%_))
                  (declare (not safe))
                  (let ((_%object338459338464%_
                         (##unchecked-structure-ref
                          _%self328965338450%_
                          '1
                          '#f
                          'ref))
                        (_%method338460338465%_
                         (##unchecked-structure-ref
                          _%self328965338450%_
                          '7
                          '#f
                          'ref)))
                    (_%method338460338465%_
                     _%object338459338464%_
                     _%key338453%_
                     _%default338456%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key338422%_ (cons _%default338430%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref331643%_
       '#f))
    (define _%checked-hash-table::HashTable::set!331645%_
      (lambda (_%self338226%_ _%key338227%_ _%value338228%_)
        (let* ((_%self338231%_ _%self338226%_)
               (_%key338240%_ _%key338227%_)
               (_%value338248%_ _%value338228%_))
          (declare (not safe))
          (let ((_%h338259%_
                 (##unchecked-structure-ref _%self338231%_ '1 '#f '#f))
                (_%key?338261%_
                 (##unchecked-structure-ref _%self338231%_ '2 '#f '#f)))
            (if ((lambda (_%key?338264%_ _%key338265%_ _%value338266%_)
                   (_%key?338264%_ _%key338265%_))
                 _%key?338261%_
                 _%key338240%_
                 _%value338248%_)
                (let* ((_%self329260338268%_ _%h338259%_)
                       (_%key338271%_ _%key338240%_)
                       (_%value338274%_ _%value338248%_))
                  (declare (not safe))
                  (let ((_%object338277338282%_
                         (##unchecked-structure-ref
                          _%self329260338268%_
                          '1
                          '#f
                          'set!))
                        (_%method338278338283%_
                         (##unchecked-structure-ref
                          _%self329260338268%_
                          '8
                          '#f
                          'set!)))
                    (_%method338278338283%_
                     _%object338277338282%_
                     _%key338271%_
                     _%value338274%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key338240%_ (cons _%value338248%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!331645%_
       '#f))
    (define _%checked-hash-table::HashTable::update!331647%_
      (lambda (_%self338031%_ _%key338032%_ _%update338033%_ _%default338034%_)
        (let* ((_%self338037%_ _%self338031%_)
               (_%key338046%_ _%key338032%_)
               (_%update338054%_ _%update338033%_)
               (_%default338062%_ _%default338034%_))
          (declare (not safe))
          (let ((_%h338073%_
                 (##unchecked-structure-ref _%self338037%_ '1 '#f '#f))
                (_%key?338075%_
                 (##unchecked-structure-ref _%self338037%_ '2 '#f '#f)))
            (if ((lambda (_%key?338078%_
                          _%key338079%_
                          _%update338080%_
                          _%default338081%_)
                   (_%key?338078%_ _%key338079%_))
                 _%key?338075%_
                 _%key338046%_
                 _%update338054%_
                 _%default338062%_)
                (let* ((_%self329555338083%_ _%h338073%_)
                       (_%key338086%_ _%key338046%_)
                       (_%proc338089%_ _%update338054%_)
                       (_%default338092%_ _%default338062%_))
                  (declare (not safe))
                  (let ((_%object338095338100%_
                         (##unchecked-structure-ref
                          _%self329555338083%_
                          '1
                          '#f
                          'update!))
                        (_%method338096338101%_
                         (##unchecked-structure-ref
                          _%self329555338083%_
                          '9
                          '#f
                          'update!)))
                    (_%method338096338101%_
                     _%object338095338100%_
                     _%key338086%_
                     _%proc338089%_
                     _%default338092%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key338046%_
                         (cons _%update338054%_ (cons _%default338062%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!331647%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!331649%_
      (lambda (_%self337862%_ _%key337863%_)
        (let* ((_%self337866%_ _%self337862%_) (_%key337875%_ _%key337863%_))
          (declare (not safe))
          (let ((_%h337886%_
                 (##unchecked-structure-ref _%self337866%_ '1 '#f '#f))
                (_%key?337888%_
                 (##unchecked-structure-ref _%self337866%_ '2 '#f '#f)))
            (if ((lambda (_%key?337891%_ _%key337892%_)
                   (_%key?337891%_ _%key337892%_))
                 _%key?337888%_
                 _%key337875%_)
                (let* ((_%self328067337894%_ _%h337886%_)
                       (_%key337897%_ _%key337875%_))
                  (declare (not safe))
                  (let ((_%object337900337905%_
                         (##unchecked-structure-ref
                          _%self328067337894%_
                          '1
                          '#f
                          'delete!))
                        (_%method337901337906%_
                         (##unchecked-structure-ref
                          _%self328067337894%_
                          '4
                          '#f
                          'delete!)))
                    (_%method337901337906%_
                     _%object337900337905%_
                     _%key337897%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key337875%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!331649%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each331651%_
      (lambda (_%self337693%_ _%proc337694%_)
        (let* ((_%self337697%_ _%self337693%_) (_%proc337706%_ _%proc337694%_))
          (declare (not safe))
          (let ((_%h337717%_
                 (##unchecked-structure-ref _%self337697%_ '1 '#f '#f))
                (_%key?337719%_
                 (##unchecked-structure-ref _%self337697%_ '2 '#f '#f)))
            (if ((lambda (_%key?337722%_ _%proc337723%_) '#t)
                 _%key?337719%_
                 _%proc337706%_)
                (let* ((_%self328360337725%_ _%h337717%_)
                       (_%proc337728%_ _%proc337706%_))
                  (declare (not safe))
                  (let ((_%object337731337736%_
                         (##unchecked-structure-ref
                          _%self328360337725%_
                          '1
                          '#f
                          'for-each))
                        (_%method337732337737%_
                         (##unchecked-structure-ref
                          _%self328360337725%_
                          '5
                          '#f
                          'for-each)))
                    (_%method337732337737%_
                     _%object337731337736%_
                     _%proc337728%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc337706%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each331651%_
       '#f))
    (define _%checked-hash-table::HashTable::length331653%_
      (lambda (_%self337539%_)
        (let ((_%self337542%_ _%self337539%_))
          (declare (not safe))
          (let ((_%h337554%_
                 (##unchecked-structure-ref _%self337542%_ '1 '#f '#f))
                (_%key?337556%_
                 (##unchecked-structure-ref _%self337542%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self328671337559%_ _%h337554%_))
                  (declare (not safe))
                  (let ((_%object337562337567%_
                         (##unchecked-structure-ref
                          _%self328671337559%_
                          '1
                          '#f
                          'length))
                        (_%method337563337568%_
                         (##unchecked-structure-ref
                          _%self328671337559%_
                          '6
                          '#f
                          'length)))
                    (_%method337563337568%_ _%object337562337567%_)))
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
       _%checked-hash-table::HashTable::length331653%_
       '#f))
    (define _%checked-hash-table::HashTable::copy331655%_
      (lambda (_%self337385%_)
        (let ((_%self337388%_ _%self337385%_))
          (declare (not safe))
          (let ((_%h337400%_
                 (##unchecked-structure-ref _%self337388%_ '1 '#f '#f))
                (_%key?337402%_
                 (##unchecked-structure-ref _%self337388%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self327773337405%_ _%h337400%_))
                  (declare (not safe))
                  (let ((_%object337408337413%_
                         (##unchecked-structure-ref
                          _%self327773337405%_
                          '1
                          '#f
                          'copy))
                        (_%method337409337414%_
                         (##unchecked-structure-ref
                          _%self327773337405%_
                          '3
                          '#f
                          'copy)))
                    (_%method337409337414%_ _%object337408337413%_)))
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
       _%checked-hash-table::HashTable::copy331655%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!331657%_
      (lambda (_%self337231%_)
        (let ((_%self337234%_ _%self337231%_))
          (declare (not safe))
          (let ((_%h337246%_
                 (##unchecked-structure-ref _%self337234%_ '1 '#f '#f))
                (_%key?337248%_
                 (##unchecked-structure-ref _%self337234%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self327481337251%_ _%h337246%_))
                  (declare (not safe))
                  (let ((_%object337254337259%_
                         (##unchecked-structure-ref
                          _%self327481337251%_
                          '1
                          '#f
                          'clear!))
                        (_%method337255337260%_
                         (##unchecked-structure-ref
                          _%self327481337251%_
                          '2
                          '#f
                          'clear!)))
                    (_%method337255337260%_ _%object337254337259%_)))
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
       _%checked-hash-table::HashTable::clear!331657%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table337101%_
               _%count337102%_
               _%free337103%_
               _%hash337104%_
               _%test337105%_
               _%seed337106%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table337101%_
           _%count337102%_
           _%free337103%_
           _%hash337104%_
           _%test337105%_
           _%seed337106%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords336511%_
               _%size-hint336501336512%_
               _%seed336502336513%_
               _%test336503336514%_
               _%hash336504336515%_
               _%lock336505336516%_
               _%check336506336517%_
               _%weak-keys336507336518%_
               _%weak-values336508336519%_)
        (let* ((_%size-hint336521%_
                (if (eq? _%size-hint336501336512%_ absent-value)
                    '#f
                    _%size-hint336501336512%_))
               (_%seed336523%_
                (if (eq? _%seed336502336513%_ absent-value)
                    '#f
                    _%seed336502336513%_))
               (_%test336525%_
                (if (eq? _%test336503336514%_ absent-value)
                    equal?
                    _%test336503336514%_))
               (_%hash336527%_
                (if (eq? _%hash336504336515%_ absent-value)
                    '#f
                    _%hash336504336515%_))
               (_%lock336529%_
                (if (eq? _%lock336505336516%_ absent-value)
                    '#f
                    _%lock336505336516%_))
               (_%check336531%_
                (if (eq? _%check336506336517%_ absent-value)
                    '#f
                    _%check336506336517%_))
               (_%weak-keys336533%_
                (if (eq? _%weak-keys336507336518%_ absent-value)
                    '#f
                    _%weak-keys336507336518%_))
               (_%weak-values336535%_
                (if (eq? _%weak-values336508336519%_ absent-value)
                    '#f
                    _%weak-values336508336519%_)))
          (letrec ((_%table-seed336538%_
                    (lambda ()
                      (if (fixnum? _%seed336523%_)
                          _%seed336523%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock336682%_
                    (lambda (_%ht337069%_)
                      (let ((_%ht337072%_ _%ht337069%_))
                        (if _%lock336529%_
                            (let ((_%$obj337084%_
                                   (let ((__tmp343940
                                          (let ((_%$obj337081%_
                                                 _%lock336529%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj337081%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj337081%_)))
                                                     '#t)
                                                _%$obj337081%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj337081%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht337072%_
                                      __tmp343940))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj337084%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj337084%_)))
                                       '#t)
                                  _%$obj337084%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj337084%_))))
                            _%ht337072%_))))
                   (_%wrap-lock336683%_
                    (lambda (_%ht337057%_)
                      (let ((_%ht337060%_ _%ht337057%_))
                        (_%__wrap-lock336682%_ _%ht337060%_))))
                   (_%__wrap-checked336805%_
                    (lambda (_%ht337041%_ _%implicit337042%_)
                      (let ((_%ht337045%_ _%ht337041%_))
                        (if _%check336531%_
                            (let ((_%$obj337054%_
                                   (let ((__tmp343941
                                          (if (procedure? _%check336531%_)
                                              _%check336531%_
                                              _%implicit337042%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht337045%_
                                      __tmp343941))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj337054%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj337054%_)))
                                       '#t)
                                  _%$obj337054%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj337054%_))))
                            _%ht337045%_))))
                   (_%wrap-checked336806%_
                    (lambda (_%ht337028%_ _%implicit337029%_)
                      (let ((_%ht337032%_ _%ht337028%_))
                        (_%__wrap-checked336805%_
                         _%ht337032%_
                         _%implicit337029%_))))
                   (_%make336807%_
                    (lambda (_%kons336976%_
                             _%key?336977%_
                             _%hash336978%_
                             _%test336979%_)
                      (let* ((_%size336982%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint336521%_)))
                             (_%table336984%_
                              (let ((__tmp343942 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size336982%_ __tmp343942)))
                             (_%ht336989%_
                              (let ((_%$obj336986%_
                                     (_%kons336976%_
                                      _%table336984%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size336982%_ '2))
                                      _%hash336978%_
                                      _%test336979%_
                                      (_%table-seed336538%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj336986%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj336986%_)))
                                         '#t)
                                    _%$obj336986%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj336986%_)))))
                             (_%ht337011%_
                              (let* ((_%ht336992%_ _%ht336989%_)
                                     (_%ht336996%_ _%ht336992%_))
                                (_%__wrap-lock336682%_ _%ht336996%_)))
                             (_%implicit337014%_ _%key?336977%_)
                             (_%ht337018%_ _%ht337011%_))
                        (_%__wrap-checked336805%_
                         _%ht337018%_
                         _%implicit337014%_))))
                   (_%make-gc-hash-table336808%_
                    (lambda ()
                      (let* ((_%ht336941%_
                              (let ((_%$obj336938%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint336521%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj336938%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj336938%_)))
                                         '#t)
                                    _%$obj336938%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj336938%_)))))
                             (_%ht336959%_
                              (let* ((_%ht336943%_ _%ht336941%_)
                                     (_%ht336947%_ _%ht336943%_))
                                (_%__wrap-lock336682%_ _%ht336947%_)))
                             (_%implicit336962%_ true)
                             (_%ht336966%_ _%ht336959%_))
                        (_%__wrap-checked336805%_
                         _%ht336966%_
                         _%implicit336962%_))))
                   (_%make-gambit-table336809%_
                    (lambda ()
                      (let* ((_%size336878%_
                              (let ((_%$e336875%_ _%size-hint336521%_))
                                (if _%$e336875%_
                                    _%$e336875%_
                                    (macro-absent-obj))))
                             (_%test336883%_
                              (let ((_%$e336880%_ _%test336525%_))
                                (if _%$e336880%_ _%$e336880%_ equal?)))
                             (_%hash336891%_
                              (let ((_%$e336885%_ _%hash336527%_))
                                (if _%$e336885%_
                                    _%$e336885%_
                                    (if (eq? _%test336883%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test336883%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht336896%_
                              (let ((_%$obj336893%_
                                     (make-table
                                      'size:
                                      _%size336878%_
                                      'test:
                                      _%test336883%_
                                      'hash:
                                      _%hash336891%_
                                      'weak-keys:
                                      _%weak-keys336533%_
                                      'weak-values:
                                      _%weak-values336535%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj336893%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj336893%_)))
                                         '#t)
                                    _%$obj336893%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj336893%_)))))
                             (_%ht336919%_
                              (let* ((_%ht336899%_ _%ht336896%_)
                                     (_%ht336903%_ _%ht336899%_))
                                (_%__wrap-lock336682%_ _%ht336903%_)))
                             (_%implicit336922%_ true)
                             (_%ht336926%_ _%ht336919%_))
                        (_%__wrap-checked336805%_
                         _%ht336926%_
                         _%implicit336922%_)))))
            (if (or _%weak-keys336533%_ _%weak-values336535%_)
                (_%make-gambit-table336809%_)
                (if (and (or (eq? _%test336525%_ eq?)
                             (eq? _%test336525%_ ##eq?))
                         (or (not _%hash336527%_)
                             (eq? _%hash336527%_ eq?-hash)
                             (eq? _%hash336527%_ eq-hash))
                         (not _%seed336523%_))
                    (_%make-gc-hash-table336808%_)
                    (if (and (or (eq? _%test336525%_ eq?)
                                 (eq? _%test336525%_ ##eq?))
                             (or (not _%hash336527%_)
                                 (eq? _%hash336527%_ eq?-hash)
                                 (eq? _%hash336527%_ eq-hash)))
                        (_%make336807%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test336525%_ eqv?)
                                     (eq? _%test336525%_ ##eqv?))
                                 (or (not _%hash336527%_)
                                     (eq? _%hash336527%_ eqv?-hash)
                                     (eq? _%hash336527%_ eqv-hash)))
                            (_%make336807%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test336525%_ eq?)
                                         (eq? _%test336525%_ ##eq?))
                                     (or (eq? _%hash336527%_ symbolic-hash)
                                         (eq? _%hash336527%_ ##symbol-hash)))
                                (_%make336807%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test336525%_ eq?)
                                             (eq? _%test336525%_ ##eq?))
                                         (eq? _%hash336527%_ immediate-hash))
                                    (_%make336807%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test336525%_ equal?)
                                                 (eq? _%test336525%_ ##equal?)
                                                 (eq? _%test336525%_ string=?)
                                                 (eq? _%test336525%_
                                                      ##string=?))
                                             (or (eq? _%hash336527%_
                                                      string-hash)
                                                 (eq? _%hash336527%_
                                                      ##string=?-hash)))
                                        (_%make336807%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test336525%_ equal?)
                                                 (not _%hash336527%_))
                                            (_%make336807%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test336525%_)
                                                (if (procedure? _%hash336527%_)
                                                    (_%make336807%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash336527%_
                                                     _%test336525%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash336527%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test336525%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords337091%_ . _%args337092%_)
        (apply make-hash-table__%
               _%@@keywords337091%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords337091%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords337091%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords337091%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords337091%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords337091%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords337091%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords337091%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords337091%_
                  'weak-values:
                  absent-value))
               _%args337092%_)))
    (define make-hash-table
      (lambda _%args336509337098%_
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
               _%args336509337098%_)))
    (define make-hash-table-eq
      (lambda _%args336498%_
        (apply make-hash-table 'test: eq? _%args336498%_)))
    (define make-hash-table-eqv
      (lambda _%args336496%_
        (apply make-hash-table 'test: eqv? _%args336496%_)))
    (define make-hash-table-symbolic
      (lambda _%args336494%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args336494%_)))
    (define make-hash-table-string
      (lambda _%args336492%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args336492%_)))
    (define make-hash-table-immediate
      (lambda _%args336490%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args336490%_)))
    (define list->hash-table
      (lambda (_%lst336487%_ . _%args336488%_)
        (list->hash-table!
         _%lst336487%_
         (apply make-hash-table
                'size:
                (length _%lst336487%_)
                _%args336488%_))))
    (define list->hash-table-eq
      (lambda (_%lst336484%_ . _%args336485%_)
        (list->hash-table!
         _%lst336484%_
         (apply make-hash-table-eq
                'size:
                (length _%lst336484%_)
                _%args336485%_))))
    (define list->hash-table-eqv
      (lambda (_%lst336481%_ . _%args336482%_)
        (list->hash-table!
         _%lst336481%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst336481%_)
                _%args336482%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst336478%_ . _%args336479%_)
        (list->hash-table!
         _%lst336478%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst336478%_)
                _%args336479%_))))
    (define list->hash-table-string
      (lambda (_%lst336475%_ . _%args336476%_)
        (list->hash-table!
         _%lst336475%_
         (apply make-hash-table-string
                'size:
                (length _%lst336475%_)
                _%args336476%_))))
    (define list->hash-table-immediate
      (lambda (_%lst336472%_ . _%args336473%_)
        (list->hash-table!
         _%lst336472%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst336472%_)
                _%args336473%_))))
    (define list->hash-table!
      (lambda (_%lst336423%_ _%h336424%_)
        (for-each
         (lambda (_%el336426%_)
           (let* ((_%el336427336434%_ _%el336426%_)
                  (_%E336429336437%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el336427336434%_
                              '([k . v])))
                     '#!void))
                  (_%K336430336460%_
                   (lambda (_%v336440%_ _%k336441%_)
                     (let* ((_%self329260336443%_ _%h336424%_)
                            (_%key336446%_ _%k336441%_)
                            (_%value336449%_ _%v336440%_))
                       (declare (not safe))
                       (let ((_%object336452336457%_
                              (##unchecked-structure-ref
                               _%self329260336443%_
                               '1
                               '#f
                               'set!))
                             (_%method336453336458%_
                              (##unchecked-structure-ref
                               _%self329260336443%_
                               '8
                               '#f
                               'set!)))
                         (_%method336453336458%_
                          _%object336452336457%_
                          _%key336446%_
                          _%value336449%_))))))
             (if (pair? _%el336427336434%_)
                 (let ((_%hd336431336463%_
                        (let ()
                          (declare (not safe))
                          (##car _%el336427336434%_)))
                       (_%tl336432336465%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el336427336434%_))))
                   (let* ((_%k336468%_ _%hd336431336463%_)
                          (_%v336470%_ _%tl336432336465%_))
                     (_%K336430336460%_ _%v336470%_ _%k336468%_)))
                 (_%E336429336437%_))))
         _%lst336423%_)
        _%h336424%_))
    (define plist->hash-table
      (lambda (_%lst336420%_ . _%args336421%_)
        (plist->hash-table!
         _%lst336420%_
         (apply make-hash-table
                'size:
                (length _%lst336420%_)
                _%args336421%_))))
    (define plist->hash-table-eq
      (lambda (_%lst336417%_ . _%args336418%_)
        (plist->hash-table!
         _%lst336417%_
         (apply make-hash-table-eq
                'size:
                (length _%lst336417%_)
                _%args336418%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst336414%_ . _%args336415%_)
        (plist->hash-table!
         _%lst336414%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst336414%_)
                _%args336415%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst336411%_ . _%args336412%_)
        (plist->hash-table!
         _%lst336411%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst336411%_)
                _%args336412%_))))
    (define plist->hash-table-string
      (lambda (_%lst336408%_ . _%args336409%_)
        (plist->hash-table!
         _%lst336408%_
         (apply make-hash-table-string
                'size:
                (length _%lst336408%_)
                _%args336409%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst336405%_ . _%args336406%_)
        (plist->hash-table!
         _%lst336405%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst336405%_)
                _%args336406%_))))
    (define plist->hash-table!
      (lambda (_%lst336328%_ _%h336329%_)
        (let _%loop336331%_ ((_%rest336333%_ _%lst336328%_))
          (let* ((_%rest336334336346%_ _%rest336333%_)
                 (_%else336337336354%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst336328%_)))))
            (let ((_%K336340336386%_
                   (lambda (_%rest336365%_ _%val336366%_ _%key336367%_)
                     (let* ((_%self329260336369%_ _%h336329%_)
                            (_%key336372%_ _%key336367%_)
                            (_%value336375%_ _%val336366%_))
                       (declare (not safe))
                       (let ((_%object336378336383%_
                              (##unchecked-structure-ref
                               _%self329260336369%_
                               '1
                               '#f
                               'set!))
                             (_%method336379336384%_
                              (##unchecked-structure-ref
                               _%self329260336369%_
                               '8
                               '#f
                               'set!)))
                         (_%method336379336384%_
                          _%object336378336383%_
                          _%key336372%_
                          _%value336375%_)))
                     (_%loop336331%_ _%rest336365%_)))
                  (_%K336339336359%_ (lambda () _%h336329%_)))
              (let ((_%try-match336336336362%_
                     (lambda ()
                       (if (null? _%rest336334336346%_)
                           (_%K336339336359%_)
                           (_%else336337336354%_)))))
                (if (pair? _%rest336334336346%_)
                    (let ((_%tl336342336391%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest336334336346%_)))
                          (_%hd336341336389%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest336334336346%_))))
                      (if (pair? _%tl336342336391%_)
                          (let ((_%tl336344336398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl336342336391%_)))
                                (_%hd336343336396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl336342336391%_))))
                            (let ((_%key336394%_ _%hd336341336389%_)
                                  (_%val336401%_ _%hd336343336396%_)
                                  (_%rest336403%_ _%tl336344336398%_))
                              (_%K336340336386%_
                               _%rest336403%_
                               _%val336401%_
                               _%key336394%_)))
                          (_%else336337336354%_)))
                    (_%try-match336336336362%_))))))))
    (define __hash-length
      (lambda (_%h336277%_)
        (let* ((_%h336280%_ _%h336277%_)
               (_%self328672336289%_ _%h336280%_)
               (_%self328672336296%_
                (let ((_%$obj336293%_ _%self328672336289%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj336293%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj336293%_)))
                           '#t)
                      _%$obj336293%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj336293%_)))))
               (_%self328672336298%_ _%self328672336296%_))
          (if __DEBUG
              (let ((_%val336318%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object336310336315%_
                              (##unchecked-structure-ref
                               _%self328672336298%_
                               '1
                               '#f
                               'length))
                             (_%method336311336316%_
                              (##unchecked-structure-ref
                               _%self328672336298%_
                               '6
                               '#f
                               'length)))
                         (_%method336311336316%_ _%object336310336315%_)))))
                (if (fixnum? _%val336318%_)
                    _%val336318%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val336318%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object336320336325%_
                       (##unchecked-structure-ref
                        _%self328672336298%_
                        '1
                        '#f
                        'length))
                      (_%method336321336326%_
                       (##unchecked-structure-ref
                        _%self328672336298%_
                        '6
                        '#f
                        'length)))
                  (_%method336321336326%_ _%object336320336325%_)))))))
    (define hash-length
      (lambda (_%h331932%_)
        (let* ((_%h331938%_
                (let ((_%$obj331935%_ _%h331932%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj331935%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj331935%_)))
                           '#t)
                      _%$obj331935%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj331935%_)))))
               (_%h331940%_ _%h331938%_))
          (__hash-length _%h331940%_))))
    (define __hash-ref__%
      (lambda (_%h336205%_ _%key336206%_ _%default336207%_)
        (let* ((_%h336210%_ _%h336205%_)
               (_%result336263%_
                (let* ((_%self328966336219%_ _%h336210%_)
                       (_%key336222%_ _%key336206%_)
                       (_%default336225%_ _%default336207%_)
                       (_%self328966336232%_
                        (let ((_%$obj336229%_ _%self328966336219%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj336229%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj336229%_)))
                                   '#t)
                              _%$obj336229%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj336229%_)))))
                       (_%self328966336234%_ _%self328966336232%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object336248336253%_
                               (##unchecked-structure-ref
                                _%self328966336234%_
                                '1
                                '#f
                                'ref))
                              (_%method336249336254%_
                               (##unchecked-structure-ref
                                _%self328966336234%_
                                '7
                                '#f
                                'ref)))
                          (_%method336249336254%_
                           _%object336248336253%_
                           _%key336222%_
                           _%default336225%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object336255336260%_
                               (##unchecked-structure-ref
                                _%self328966336234%_
                                '1
                                '#f
                                'ref))
                              (_%method336256336261%_
                               (##unchecked-structure-ref
                                _%self328966336234%_
                                '7
                                '#f
                                'ref)))
                          (_%method336256336261%_
                           _%object336255336260%_
                           _%key336222%_
                           _%default336225%_)))))))
          (if (eq? _%result336263%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h336210%_
               'key:
               _%key336206%_)
              _%result336263%_))))
    (define __hash-ref__0
      (lambda (_%h336268%_ _%key336269%_)
        (let ((_%default336271%_ absent-obj))
          (__hash-ref__% _%h336268%_ _%key336269%_ _%default336271%_))))
    (define __hash-ref
      (lambda _g343943_
        (let ((_g343944_ (let () (declare (not safe)) (##length _g343943_))))
          (cond ((let () (declare (not safe)) (##fx= _g343944_ 2))
                 (apply __hash-ref__0 _g343943_))
                ((let () (declare (not safe)) (##fx= _g343944_ 3))
                 (apply __hash-ref__% _g343943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g343943_))))))
    (define hash-ref__%
      (lambda (_%h332071%_ _%key332072%_ _%default332073%_)
        (let* ((_%h332079%_
                (let ((_%$obj332076%_ _%h332071%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj332076%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj332076%_)))
                           '#t)
                      _%$obj332076%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj332076%_)))))
               (_%h332081%_ _%h332079%_))
          (__hash-ref__% _%h332081%_ _%key332072%_ _%default332073%_))))
    (define hash-ref__0
      (lambda (_%h332094%_ _%key332095%_)
        (let ((_%default332097%_ absent-obj))
          (hash-ref__% _%h332094%_ _%key332095%_ _%default332097%_))))
    (define hash-ref
      (lambda _g343945_
        (let ((_g343946_ (let () (declare (not safe)) (##length _g343945_))))
          (cond ((let () (declare (not safe)) (##fx= _g343946_ 2))
                 (apply hash-ref__0 _g343945_))
                ((let () (declare (not safe)) (##fx= _g343946_ 3))
                 (apply hash-ref__% _g343945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g343945_))))))
    (define __hash-get
      (lambda (_%h336147%_ _%key336148%_)
        (let* ((_%h336151%_ _%h336147%_)
               (_%self328966336160%_ _%h336151%_)
               (_%key336163%_ _%key336148%_)
               (_%default336166%_ '#f)
               (_%self328966336173%_
                (let ((_%$obj336170%_ _%self328966336160%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj336170%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj336170%_)))
                           '#t)
                      _%$obj336170%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj336170%_)))))
               (_%self328966336175%_ _%self328966336173%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object336189336194%_
                       (##unchecked-structure-ref
                        _%self328966336175%_
                        '1
                        '#f
                        'ref))
                      (_%method336190336195%_
                       (##unchecked-structure-ref
                        _%self328966336175%_
                        '7
                        '#f
                        'ref)))
                  (_%method336190336195%_
                   _%object336189336194%_
                   _%key336163%_
                   _%default336166%_)))
              (let ()
                (declare (not safe))
                (let ((_%object336196336201%_
                       (##unchecked-structure-ref
                        _%self328966336175%_
                        '1
                        '#f
                        'ref))
                      (_%method336197336202%_
                       (##unchecked-structure-ref
                        _%self328966336175%_
                        '7
                        '#f
                        'ref)))
                  (_%method336197336202%_
                   _%object336196336201%_
                   _%key336163%_
                   _%default336166%_)))))))
    (define hash-get
      (lambda (_%h332223%_ _%key332224%_)
        (let* ((_%h332230%_
                (let ((_%$obj332227%_ _%h332223%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj332227%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj332227%_)))
                           '#t)
                      _%$obj332227%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj332227%_)))))
               (_%h332232%_ _%h332230%_))
          (__hash-get _%h332232%_ _%key332224%_))))
    (define __hash-put!
      (lambda (_%h336089%_ _%key336090%_ _%value336091%_)
        (let* ((_%h336094%_ _%h336089%_)
               (_%self329261336103%_ _%h336094%_)
               (_%key336106%_ _%key336090%_)
               (_%value336109%_ _%value336091%_)
               (_%self329261336116%_
                (let ((_%$obj336113%_ _%self329261336103%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj336113%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj336113%_)))
                           '#t)
                      _%$obj336113%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj336113%_)))))
               (_%self329261336118%_ _%self329261336116%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object336132336137%_
                       (##unchecked-structure-ref
                        _%self329261336118%_
                        '1
                        '#f
                        'set!))
                      (_%method336133336138%_
                       (##unchecked-structure-ref
                        _%self329261336118%_
                        '8
                        '#f
                        'set!)))
                  (_%method336133336138%_
                   _%object336132336137%_
                   _%key336106%_
                   _%value336109%_)))
              (let ()
                (declare (not safe))
                (let ((_%object336139336144%_
                       (##unchecked-structure-ref
                        _%self329261336118%_
                        '1
                        '#f
                        'set!))
                      (_%method336140336145%_
                       (##unchecked-structure-ref
                        _%self329261336118%_
                        '8
                        '#f
                        'set!)))
                  (_%method336140336145%_
                   _%object336139336144%_
                   _%key336106%_
                   _%value336109%_)))))))
    (define hash-put!
      (lambda (_%h332362%_ _%key332363%_ _%value332364%_)
        (let* ((_%h332370%_
                (let ((_%$obj332367%_ _%h332362%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj332367%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj332367%_)))
                           '#t)
                      _%$obj332367%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj332367%_)))))
               (_%h332372%_ _%h332370%_))
          (__hash-put! _%h332372%_ _%key332363%_ _%value332364%_))))
    (define __hash-update!__%
      (lambda (_%h336002%_ _%key336003%_ _%update336004%_ _%default336005%_)
        (let* ((_%h336008%_ _%h336002%_)
               (_%self329556336017%_ _%h336008%_)
               (_%key336020%_ _%key336003%_)
               (_%proc336023%_ _%update336004%_)
               (_%default336026%_ _%default336005%_)
               (_%self329556336033%_
                (let ((_%$obj336030%_ _%self329556336017%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj336030%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj336030%_)))
                           '#t)
                      _%$obj336030%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj336030%_)))))
               (_%self329556336035%_ _%self329556336033%_))
          (if (procedure? _%proc336023%_)
              (let ((_%proc336051%_ _%proc336023%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object336060336065%_
                             (##unchecked-structure-ref
                              _%self329556336035%_
                              '1
                              '#f
                              'update!))
                            (_%method336061336066%_
                             (##unchecked-structure-ref
                              _%self329556336035%_
                              '9
                              '#f
                              'update!)))
                        (_%method336061336066%_
                         _%object336060336065%_
                         _%key336020%_
                         _%proc336051%_
                         _%default336026%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object336067336072%_
                             (##unchecked-structure-ref
                              _%self329556336035%_
                              '1
                              '#f
                              'update!))
                            (_%method336068336073%_
                             (##unchecked-structure-ref
                              _%self329556336035%_
                              '9
                              '#f
                              'update!)))
                        (_%method336068336073%_
                         _%object336067336072%_
                         _%key336020%_
                         _%proc336051%_
                         _%default336026%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc336023%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h336078%_ _%key336079%_ _%update336080%_)
        (let ((_%default336082%_ '#!void))
          (__hash-update!__%
           _%h336078%_
           _%key336079%_
           _%update336080%_
           _%default336082%_))))
    (define __hash-update!
      (lambda _g343947_
        (let ((_g343948_ (let () (declare (not safe)) (##length _g343947_))))
          (cond ((let () (declare (not safe)) (##fx= _g343948_ 3))
                 (apply __hash-update!__0 _g343947_))
                ((let () (declare (not safe)) (##fx= _g343948_ 4))
                 (apply __hash-update!__% _g343947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g343947_))))))
    (define hash-update!__%
      (lambda (_%h332503%_ _%key332504%_ _%update332505%_ _%default332506%_)
        (let* ((_%h332512%_
                (let ((_%$obj332509%_ _%h332503%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj332509%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj332509%_)))
                           '#t)
                      _%$obj332509%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj332509%_)))))
               (_%h332514%_ _%h332512%_))
          (__hash-update!__%
           _%h332514%_
           _%key332504%_
           _%update332505%_
           _%default332506%_))))
    (define hash-update!__0
      (lambda (_%h332527%_ _%key332528%_ _%update332529%_)
        (let ((_%default332531%_ '#!void))
          (hash-update!__%
           _%h332527%_
           _%key332528%_
           _%update332529%_
           _%default332531%_))))
    (define hash-update!
      (lambda _g343949_
        (let ((_g343950_ (let () (declare (not safe)) (##length _g343949_))))
          (cond ((let () (declare (not safe)) (##fx= _g343950_ 3))
                 (apply hash-update!__0 _g343949_))
                ((let () (declare (not safe)) (##fx= _g343950_ 4))
                 (apply hash-update!__% _g343949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g343949_))))))
    (define __hash-remove!
      (lambda (_%h335948%_ _%key335949%_)
        (let* ((_%h335952%_ _%h335948%_)
               (_%self328068335961%_ _%h335952%_)
               (_%key335964%_ _%key335949%_)
               (_%self328068335971%_
                (let ((_%$obj335968%_ _%self328068335961%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj335968%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj335968%_)))
                           '#t)
                      _%$obj335968%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj335968%_)))))
               (_%self328068335973%_ _%self328068335971%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object335986335991%_
                       (##unchecked-structure-ref
                        _%self328068335973%_
                        '1
                        '#f
                        'delete!))
                      (_%method335987335992%_
                       (##unchecked-structure-ref
                        _%self328068335973%_
                        '4
                        '#f
                        'delete!)))
                  (_%method335987335992%_
                   _%object335986335991%_
                   _%key335964%_)))
              (let ()
                (declare (not safe))
                (let ((_%object335993335998%_
                       (##unchecked-structure-ref
                        _%self328068335973%_
                        '1
                        '#f
                        'delete!))
                      (_%method335994335999%_
                       (##unchecked-structure-ref
                        _%self328068335973%_
                        '4
                        '#f
                        'delete!)))
                  (_%method335994335999%_
                   _%object335993335998%_
                   _%key335964%_)))))))
    (define hash-remove!
      (lambda (_%h332658%_ _%key332659%_)
        (let* ((_%h332665%_
                (let ((_%$obj332662%_ _%h332658%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj332662%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj332662%_)))
                           '#t)
                      _%$obj332662%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj332662%_)))))
               (_%h332667%_ _%h332665%_))
          (__hash-remove! _%h332667%_ _%key332659%_))))
    (define __hash-key?
      (lambda (_%h335891%_ _%k335892%_)
        (let ((_%h335895%_ _%h335891%_))
          (not (eq? (let* ((_%self328966335904%_ _%h335895%_)
                           (_%key335907%_ _%k335892%_)
                           (_%default335910%_ absent-value)
                           (_%self328966335917%_
                            (let ((_%$obj335914%_ _%self328966335904%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj335914%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj335914%_)))
                                       '#t)
                                  _%$obj335914%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj335914%_)))))
                           (_%self328966335919%_ _%self328966335917%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object335933335938%_
                                   (##unchecked-structure-ref
                                    _%self328966335919%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method335934335939%_
                                   (##unchecked-structure-ref
                                    _%self328966335919%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method335934335939%_
                               _%object335933335938%_
                               _%key335907%_
                               _%default335910%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object335940335945%_
                                   (##unchecked-structure-ref
                                    _%self328966335919%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method335941335946%_
                                   (##unchecked-structure-ref
                                    _%self328966335919%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method335941335946%_
                               _%object335940335945%_
                               _%key335907%_
                               _%default335910%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h332797%_ _%k332798%_)
        (let* ((_%h332804%_
                (let ((_%$obj332801%_ _%h332797%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj332801%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj332801%_)))
                           '#t)
                      _%$obj332801%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj332801%_)))))
               (_%h332806%_ _%h332804%_))
          (__hash-key? _%h332806%_ _%k332798%_))))
    (define __hash->list
      (lambda (_%h335823%_)
        (let* ((_%h335826%_ _%h335823%_) (_%lst335835%_ '()))
          (let* ((_%self328361335837%_ _%h335826%_)
                 (_%proc335843%_
                  (lambda (_%k335840%_ _%v335841%_)
                    (set! _%lst335835%_
                          (cons (cons _%k335840%_ _%v335841%_)
                                _%lst335835%_))))
                 (_%self328361335850%_
                  (let ((_%$obj335847%_ _%self328361335837%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj335847%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj335847%_)))
                             '#t)
                        _%$obj335847%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj335847%_)))))
                 (_%self328361335852%_ _%self328361335850%_)
                 (_%proc335867%_ _%proc335843%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object335876335881%_
                         (##unchecked-structure-ref
                          _%self328361335852%_
                          '1
                          '#f
                          'for-each))
                        (_%method335877335882%_
                         (##unchecked-structure-ref
                          _%self328361335852%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335877335882%_
                     _%object335876335881%_
                     _%proc335867%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object335883335888%_
                         (##unchecked-structure-ref
                          _%self328361335852%_
                          '1
                          '#f
                          'for-each))
                        (_%method335884335889%_
                         (##unchecked-structure-ref
                          _%self328361335852%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335884335889%_
                     _%object335883335888%_
                     _%proc335867%_)))))
          _%lst335835%_)))
    (define hash->list
      (lambda (_%h332936%_)
        (let* ((_%h332942%_
                (let ((_%$obj332939%_ _%h332936%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj332939%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj332939%_)))
                           '#t)
                      _%$obj332939%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj332939%_)))))
               (_%h332944%_ _%h332942%_))
          (__hash->list _%h332944%_))))
    (define __hash->plist
      (lambda (_%h335755%_)
        (let* ((_%h335758%_ _%h335755%_) (_%lst335767%_ '()))
          (let* ((_%self328361335769%_ _%h335758%_)
                 (_%proc335775%_
                  (lambda (_%k335772%_ _%v335773%_)
                    (set! _%lst335767%_
                          (cons _%k335772%_
                                (cons _%v335773%_ _%lst335767%_)))))
                 (_%self328361335782%_
                  (let ((_%$obj335779%_ _%self328361335769%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj335779%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj335779%_)))
                             '#t)
                        _%$obj335779%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj335779%_)))))
                 (_%self328361335784%_ _%self328361335782%_)
                 (_%proc335799%_ _%proc335775%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object335808335813%_
                         (##unchecked-structure-ref
                          _%self328361335784%_
                          '1
                          '#f
                          'for-each))
                        (_%method335809335814%_
                         (##unchecked-structure-ref
                          _%self328361335784%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335809335814%_
                     _%object335808335813%_
                     _%proc335799%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object335815335820%_
                         (##unchecked-structure-ref
                          _%self328361335784%_
                          '1
                          '#f
                          'for-each))
                        (_%method335816335821%_
                         (##unchecked-structure-ref
                          _%self328361335784%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335816335821%_
                     _%object335815335820%_
                     _%proc335799%_)))))
          _%lst335767%_)))
    (define hash->plist
      (lambda (_%h333074%_)
        (let* ((_%h333080%_
                (let ((_%$obj333077%_ _%h333074%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj333077%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj333077%_)))
                           '#t)
                      _%$obj333077%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj333077%_)))))
               (_%h333082%_ _%h333080%_))
          (__hash->plist _%h333082%_))))
    (define __hash-for-each
      (lambda (_%proc335684%_ _%h335685%_)
        (let* ((_%proc335688%_ _%proc335684%_)
               (_%h335696%_ _%h335685%_)
               (_%self328361335705%_ _%h335696%_)
               (_%proc335708%_ _%proc335688%_)
               (_%self328361335715%_
                (let ((_%$obj335712%_ _%self328361335705%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj335712%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj335712%_)))
                           '#t)
                      _%$obj335712%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj335712%_)))))
               (_%self328361335717%_ _%self328361335715%_)
               (_%proc335731%_ _%proc335708%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object335740335745%_
                       (##unchecked-structure-ref
                        _%self328361335717%_
                        '1
                        '#f
                        'for-each))
                      (_%method335741335746%_
                       (##unchecked-structure-ref
                        _%self328361335717%_
                        '5
                        '#f
                        'for-each)))
                  (_%method335741335746%_
                   _%object335740335745%_
                   _%proc335731%_)))
              (let ()
                (declare (not safe))
                (let ((_%object335747335752%_
                       (##unchecked-structure-ref
                        _%self328361335717%_
                        '1
                        '#f
                        'for-each))
                      (_%method335748335753%_
                       (##unchecked-structure-ref
                        _%self328361335717%_
                        '5
                        '#f
                        'for-each)))
                  (_%method335748335753%_
                   _%object335747335752%_
                   _%proc335731%_)))))))
    (define hash-for-each
      (lambda (_%proc333212%_ _%h333213%_)
        (if (procedure? _%proc333212%_)
            (let* ((_%proc333217%_ _%proc333212%_)
                   (_%h333229%_
                    (let ((_%$obj333226%_ _%h333213%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj333226%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj333226%_)))
                               '#t)
                          _%$obj333226%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj333226%_)))))
                   (_%h333231%_ _%h333229%_))
              (__hash-for-each _%proc333217%_ _%h333231%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc333212%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc335607%_ _%h335608%_)
        (let* ((_%proc335611%_ _%proc335607%_)
               (_%h335619%_ _%h335608%_)
               (_%result335628%_ '()))
          (let* ((_%self328361335630%_ _%h335619%_)
                 (_%proc335636%_
                  (lambda (_%k335633%_ _%v335634%_)
                    (set! _%result335628%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc335611%_ _%k335633%_ _%v335634%_))
                                _%result335628%_))))
                 (_%self328361335643%_
                  (let ((_%$obj335640%_ _%self328361335630%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj335640%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj335640%_)))
                             '#t)
                        _%$obj335640%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj335640%_)))))
                 (_%self328361335645%_ _%self328361335643%_)
                 (_%proc335660%_ _%proc335636%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object335669335674%_
                         (##unchecked-structure-ref
                          _%self328361335645%_
                          '1
                          '#f
                          'for-each))
                        (_%method335670335675%_
                         (##unchecked-structure-ref
                          _%self328361335645%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335670335675%_
                     _%object335669335674%_
                     _%proc335660%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object335676335681%_
                         (##unchecked-structure-ref
                          _%self328361335645%_
                          '1
                          '#f
                          'for-each))
                        (_%method335677335682%_
                         (##unchecked-structure-ref
                          _%self328361335645%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335677335682%_
                     _%object335676335681%_
                     _%proc335660%_)))))
          _%result335628%_)))
    (define hash-map
      (lambda (_%proc333361%_ _%h333362%_)
        (if (procedure? _%proc333361%_)
            (let* ((_%proc333366%_ _%proc333361%_)
                   (_%h333378%_
                    (let ((_%$obj333375%_ _%h333362%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj333375%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj333375%_)))
                               '#t)
                          _%$obj333375%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj333375%_)))))
                   (_%h333380%_ _%h333378%_))
              (__hash-map _%proc333366%_ _%h333380%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc333361%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc335529%_ _%iv335530%_ _%h335531%_)
        (let* ((_%proc335534%_ _%proc335529%_)
               (_%h335542%_ _%h335531%_)
               (_%result335551%_ _%iv335530%_))
          (let* ((_%self328361335553%_ _%h335542%_)
                 (_%proc335559%_
                  (lambda (_%k335556%_ _%v335557%_)
                    (set! _%result335551%_
                          (let ()
                            (declare (not safe))
                            (_%proc335534%_
                             _%k335556%_
                             _%v335557%_
                             _%result335551%_)))))
                 (_%self328361335566%_
                  (let ((_%$obj335563%_ _%self328361335553%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj335563%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj335563%_)))
                             '#t)
                        _%$obj335563%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj335563%_)))))
                 (_%self328361335568%_ _%self328361335566%_)
                 (_%proc335583%_ _%proc335559%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object335592335597%_
                         (##unchecked-structure-ref
                          _%self328361335568%_
                          '1
                          '#f
                          'for-each))
                        (_%method335593335598%_
                         (##unchecked-structure-ref
                          _%self328361335568%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335593335598%_
                     _%object335592335597%_
                     _%proc335583%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object335599335604%_
                         (##unchecked-structure-ref
                          _%self328361335568%_
                          '1
                          '#f
                          'for-each))
                        (_%method335600335605%_
                         (##unchecked-structure-ref
                          _%self328361335568%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335600335605%_
                     _%object335599335604%_
                     _%proc335583%_)))))
          _%result335551%_)))
    (define hash-fold
      (lambda (_%proc333510%_ _%iv333511%_ _%h333512%_)
        (if (procedure? _%proc333510%_)
            (let* ((_%proc333516%_ _%proc333510%_)
                   (_%h333528%_
                    (let ((_%$obj333525%_ _%h333512%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj333525%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj333525%_)))
                               '#t)
                          _%$obj333525%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj333525%_)))))
                   (_%h333530%_ _%h333528%_))
              (__hash-fold _%proc333516%_ _%iv333511%_ _%h333530%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc333510%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc335436%_ _%h335437%_ _%default-value335438%_)
        (let* ((_%proc335441%_ _%proc335436%_)
               (_%h335449%_ _%h335437%_)
               (__tmp343951
                (lambda (_%return335458%_)
                  (let* ((_%self328361335460%_ _%h335449%_)
                         (_%proc335469%_
                          (lambda (_%k335463%_ _%v335464%_)
                            (let ((_%$e335466%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc335441%_
                                      _%k335463%_
                                      _%v335464%_))))
                              (if _%$e335466%_
                                  (_%return335458%_ _%$e335466%_)
                                  '#!void))))
                         (_%self328361335476%_
                          (let ((_%$obj335473%_ _%self328361335460%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj335473%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj335473%_)))
                                     '#t)
                                _%$obj335473%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj335473%_)))))
                         (_%self328361335478%_ _%self328361335476%_)
                         (_%proc335493%_ _%proc335469%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object335502335507%_
                                 (##unchecked-structure-ref
                                  _%self328361335478%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method335503335508%_
                                 (##unchecked-structure-ref
                                  _%self328361335478%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method335503335508%_
                             _%object335502335507%_
                             _%proc335493%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object335509335514%_
                                 (##unchecked-structure-ref
                                  _%self328361335478%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method335510335515%_
                                 (##unchecked-structure-ref
                                  _%self328361335478%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method335510335515%_
                             _%object335509335514%_
                             _%proc335493%_)))))
                  _%default-value335438%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp343951))))
    (define __hash-find__0
      (lambda (_%proc335520%_ _%h335521%_)
        (let ((_%default-value335523%_ '#f))
          (__hash-find__%
           _%proc335520%_
           _%h335521%_
           _%default-value335523%_))))
    (define __hash-find
      (lambda _g343952_
        (let ((_g343953_ (let () (declare (not safe)) (##length _g343952_))))
          (cond ((let () (declare (not safe)) (##fx= _g343953_ 2))
                 (apply __hash-find__0 _g343952_))
                ((let () (declare (not safe)) (##fx= _g343953_ 3))
                 (apply __hash-find__% _g343952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g343952_))))))
    (define hash-find__%
      (lambda (_%proc333661%_ _%h333662%_ _%default-value333663%_)
        (if (procedure? _%proc333661%_)
            (let* ((_%proc333667%_ _%proc333661%_)
                   (_%h333679%_
                    (let ((_%$obj333676%_ _%h333662%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj333676%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj333676%_)))
                               '#t)
                          _%$obj333676%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj333676%_)))))
                   (_%h333681%_ _%h333679%_))
              (__hash-find__%
               _%proc333667%_
               _%h333681%_
               _%default-value333663%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc333661%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc333694%_ _%h333695%_)
        (let ((_%default-value333697%_ '#f))
          (hash-find__% _%proc333694%_ _%h333695%_ _%default-value333697%_))))
    (define hash-find
      (lambda _g343954_
        (let ((_g343955_ (let () (declare (not safe)) (##length _g343954_))))
          (cond ((let () (declare (not safe)) (##fx= _g343955_ 2))
                 (apply hash-find__0 _g343954_))
                ((let () (declare (not safe)) (##fx= _g343955_ 3))
                 (apply hash-find__% _g343954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g343954_))))))
    (define __hash-keys
      (lambda (_%h335367%_)
        (let* ((_%h335370%_ _%h335367%_) (_%result335379%_ '()))
          (let* ((_%self328361335381%_ _%h335370%_)
                 (_%proc335387%_
                  (lambda (_%k335384%_ _%v335385%_)
                    (set! _%result335379%_
                          (cons _%k335384%_ _%result335379%_))))
                 (_%self328361335394%_
                  (let ((_%$obj335391%_ _%self328361335381%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj335391%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj335391%_)))
                             '#t)
                        _%$obj335391%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj335391%_)))))
                 (_%self328361335396%_ _%self328361335394%_)
                 (_%proc335411%_ _%proc335387%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object335420335425%_
                         (##unchecked-structure-ref
                          _%self328361335396%_
                          '1
                          '#f
                          'for-each))
                        (_%method335421335426%_
                         (##unchecked-structure-ref
                          _%self328361335396%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335421335426%_
                     _%object335420335425%_
                     _%proc335411%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object335427335432%_
                         (##unchecked-structure-ref
                          _%self328361335396%_
                          '1
                          '#f
                          'for-each))
                        (_%method335428335433%_
                         (##unchecked-structure-ref
                          _%self328361335396%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335428335433%_
                     _%object335427335432%_
                     _%proc335411%_)))))
          _%result335379%_)))
    (define hash-keys
      (lambda (_%h333823%_)
        (let* ((_%h333829%_
                (let ((_%$obj333826%_ _%h333823%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj333826%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj333826%_)))
                           '#t)
                      _%$obj333826%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj333826%_)))))
               (_%h333831%_ _%h333829%_))
          (__hash-keys _%h333831%_))))
    (define __hash-values
      (lambda (_%h335299%_)
        (let* ((_%h335302%_ _%h335299%_) (_%result335311%_ '()))
          (let* ((_%self328361335313%_ _%h335302%_)
                 (_%proc335319%_
                  (lambda (_%k335316%_ _%v335317%_)
                    (set! _%result335311%_
                          (cons _%v335317%_ _%result335311%_))))
                 (_%self328361335326%_
                  (let ((_%$obj335323%_ _%self328361335313%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj335323%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj335323%_)))
                             '#t)
                        _%$obj335323%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj335323%_)))))
                 (_%self328361335328%_ _%self328361335326%_)
                 (_%proc335343%_ _%proc335319%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object335352335357%_
                         (##unchecked-structure-ref
                          _%self328361335328%_
                          '1
                          '#f
                          'for-each))
                        (_%method335353335358%_
                         (##unchecked-structure-ref
                          _%self328361335328%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335353335358%_
                     _%object335352335357%_
                     _%proc335343%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object335359335364%_
                         (##unchecked-structure-ref
                          _%self328361335328%_
                          '1
                          '#f
                          'for-each))
                        (_%method335360335365%_
                         (##unchecked-structure-ref
                          _%self328361335328%_
                          '5
                          '#f
                          'for-each)))
                    (_%method335360335365%_
                     _%object335359335364%_
                     _%proc335343%_)))))
          _%result335311%_)))
    (define hash-values
      (lambda (_%h333961%_)
        (let* ((_%h333967%_
                (let ((_%$obj333964%_ _%h333961%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj333964%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj333964%_)))
                           '#t)
                      _%$obj333964%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj333964%_)))))
               (_%h333969%_ _%h333967%_))
          (__hash-values _%h333969%_))))
    (define __hash-copy
      (lambda (_%h335248%_)
        (let* ((_%h335251%_ _%h335248%_)
               (_%self327774335260%_ _%h335251%_)
               (_%self327774335267%_
                (let ((_%$obj335264%_ _%self327774335260%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj335264%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj335264%_)))
                           '#t)
                      _%$obj335264%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj335264%_)))))
               (_%self327774335269%_ _%self327774335267%_))
          (if __DEBUG
              (let ((_%$obj335289%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object335281335286%_
                              (##unchecked-structure-ref
                               _%self327774335269%_
                               '1
                               '#f
                               'copy))
                             (_%method335282335287%_
                              (##unchecked-structure-ref
                               _%self327774335269%_
                               '3
                               '#f
                               'copy)))
                         (_%method335282335287%_ _%object335281335286%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj335289%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj335289%_)))
                         '#t)
                    _%$obj335289%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj335289%_))))
              (let ()
                (declare (not safe))
                (let ((_%object335291335296%_
                       (##unchecked-structure-ref
                        _%self327774335269%_
                        '1
                        '#f
                        'copy))
                      (_%method335292335297%_
                       (##unchecked-structure-ref
                        _%self327774335269%_
                        '3
                        '#f
                        'copy)))
                  (_%method335292335297%_ _%object335291335296%_)))))))
    (define hash-copy
      (lambda (_%h334099%_)
        (let* ((_%h334105%_
                (let ((_%$obj334102%_ _%h334099%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj334102%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj334102%_)))
                           '#t)
                      _%$obj334102%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj334102%_)))))
               (_%h334107%_ _%h334105%_))
          (__hash-copy _%h334107%_))))
    (define __hash-clear!
      (lambda (_%h335200%_)
        (let* ((_%h335203%_ _%h335200%_)
               (_%self327482335212%_ _%h335203%_)
               (_%self327482335219%_
                (let ((_%$obj335216%_ _%self327482335212%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj335216%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj335216%_)))
                           '#t)
                      _%$obj335216%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj335216%_)))))
               (_%self327482335221%_ _%self327482335219%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object335233335238%_
                       (##unchecked-structure-ref
                        _%self327482335221%_
                        '1
                        '#f
                        'clear!))
                      (_%method335234335239%_
                       (##unchecked-structure-ref
                        _%self327482335221%_
                        '2
                        '#f
                        'clear!)))
                  (_%method335234335239%_ _%object335233335238%_)))
              (let ()
                (declare (not safe))
                (let ((_%object335240335245%_
                       (##unchecked-structure-ref
                        _%self327482335221%_
                        '1
                        '#f
                        'clear!))
                      (_%method335241335246%_
                       (##unchecked-structure-ref
                        _%self327482335221%_
                        '2
                        '#f
                        'clear!)))
                  (_%method335241335246%_ _%object335240335245%_)))))))
    (define hash-clear!
      (lambda (_%h334237%_)
        (let* ((_%h334243%_
                (let ((_%$obj334240%_ _%h334237%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj334240%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj334240%_)))
                           '#t)
                      _%$obj334240%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj334240%_)))))
               (_%h334245%_ _%h334243%_))
          (__hash-clear! _%h334245%_))))
    (define __hash-merge
      (lambda (_%h335146%_ . _%rest335147%_)
        (let* ((_%h335150%_ _%h335146%_)
               (_%copy335198%_
                (let* ((_%self327774335159%_ _%h335150%_)
                       (_%self327774335166%_
                        (let ((_%$obj335163%_ _%self327774335159%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj335163%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj335163%_)))
                                   '#t)
                              _%$obj335163%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj335163%_)))))
                       (_%self327774335168%_ _%self327774335166%_))
                  (if __DEBUG
                      (let ((_%$obj335188%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object335180335185%_
                                      (##unchecked-structure-ref
                                       _%self327774335168%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method335181335186%_
                                      (##unchecked-structure-ref
                                       _%self327774335168%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method335181335186%_
                                  _%object335180335185%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj335188%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj335188%_)))
                                 '#t)
                            _%$obj335188%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj335188%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object335190335195%_
                               (##unchecked-structure-ref
                                _%self327774335168%_
                                '1
                                '#f
                                'copy))
                              (_%method335191335196%_
                               (##unchecked-structure-ref
                                _%self327774335168%_
                                '3
                                '#f
                                'copy)))
                          (_%method335191335196%_ _%object335190335195%_)))))))
          (apply hash-merge! _%copy335198%_ _%rest335147%_)
          _%copy335198%_)))
    (define hash-merge
      (lambda (_%h334375%_ . _%rest334376%_)
        (let* ((_%h334382%_
                (let ((_%$obj334379%_ _%h334375%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj334379%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj334379%_)))
                           '#t)
                      _%$obj334379%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj334379%_)))))
               (_%h334384%_ _%h334382%_))
          (declare (not safe))
          (##apply __hash-merge _%h334384%_ _%rest334376%_))))
    (define __hash-merge-right
      (lambda (_%h335092%_ . _%rest335093%_)
        (let* ((_%h335096%_ _%h335092%_)
               (_%copy335144%_
                (let* ((_%self327774335105%_ _%h335096%_)
                       (_%self327774335112%_
                        (let ((_%$obj335109%_ _%self327774335105%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj335109%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj335109%_)))
                                   '#t)
                              _%$obj335109%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj335109%_)))))
                       (_%self327774335114%_ _%self327774335112%_))
                  (if __DEBUG
                      (let ((_%$obj335134%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object335126335131%_
                                      (##unchecked-structure-ref
                                       _%self327774335114%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method335127335132%_
                                      (##unchecked-structure-ref
                                       _%self327774335114%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method335127335132%_
                                  _%object335126335131%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj335134%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj335134%_)))
                                 '#t)
                            _%$obj335134%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj335134%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object335136335141%_
                               (##unchecked-structure-ref
                                _%self327774335114%_
                                '1
                                '#f
                                'copy))
                              (_%method335137335142%_
                               (##unchecked-structure-ref
                                _%self327774335114%_
                                '3
                                '#f
                                'copy)))
                          (_%method335137335142%_ _%object335136335141%_)))))))
          (apply hash-merge-right! _%copy335144%_ _%rest335093%_)
          _%copy335144%_)))
    (define hash-merge-right
      (lambda (_%h334514%_ . _%rest334515%_)
        (let* ((_%h334521%_
                (let ((_%$obj334518%_ _%h334514%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj334518%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj334518%_)))
                           '#t)
                      _%$obj334518%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj334518%_)))))
               (_%h334523%_ _%h334521%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h334523%_ _%rest334515%_))))
    (define __hash-merge!
      (lambda (_%h334940%_ . _%rest334941%_)
        (let ((_%h334944%_ _%h334940%_))
          (let ((__tmp343956
                 (lambda (_%hr334953%_)
                   (let* ((_%hr334959%_
                           (let ((_%$obj334956%_ _%hr334953%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj334956%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj334956%_)))
                                      '#t)
                                 _%$obj334956%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj334956%_)))))
                          (_%hr334961%_ _%hr334959%_)
                          (_%self328361334974%_ _%hr334961%_)
                          (_%proc335049%_
                           (lambda (_%k334977%_ _%v334978%_)
                             (if (let* ((_%h334980%_ _%h334944%_)
                                        (_%k334983%_ _%k334977%_)
                                        (_%h334990%_
                                         (let ((_%$obj334987%_ _%h334980%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj334987%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj334987%_)))
                                                    '#t)
                                               _%$obj334987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj334987%_)))))
                                        (_%h334992%_ _%h334990%_))
                                   (__hash-key? _%h334992%_ _%k334983%_))
                                 '#!void
                                 (let* ((_%self329261335008%_ _%h334944%_)
                                        (_%key335011%_ _%k334977%_)
                                        (_%value335014%_ _%v334978%_)
                                        (_%self329261335021%_
                                         (let ((_%$obj335018%_
                                                _%self329261335008%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj335018%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj335018%_)))
                                                    '#t)
                                               _%$obj335018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj335018%_)))))
                                        (_%self329261335023%_
                                         _%self329261335021%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object335034335039%_
                                                (##unchecked-structure-ref
                                                 _%self329261335023%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method335035335040%_
                                                (##unchecked-structure-ref
                                                 _%self329261335023%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method335035335040%_
                                            _%object335034335039%_
                                            _%key335011%_
                                            _%value335014%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object335041335046%_
                                                (##unchecked-structure-ref
                                                 _%self329261335023%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method335042335047%_
                                                (##unchecked-structure-ref
                                                 _%self329261335023%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method335042335047%_
                                            _%object335041335046%_
                                            _%key335011%_
                                            _%value335014%_))))))))
                          (_%self328361335056%_
                           (let ((_%$obj335053%_ _%self328361334974%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj335053%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj335053%_)))
                                      '#t)
                                 _%$obj335053%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj335053%_)))))
                          (_%self328361335058%_ _%self328361335056%_)
                          (_%proc335068%_ _%proc335049%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object335077335082%_
                                  (##unchecked-structure-ref
                                   _%self328361335058%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method335078335083%_
                                  (##unchecked-structure-ref
                                   _%self328361335058%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method335078335083%_
                              _%object335077335082%_
                              _%proc335068%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object335084335089%_
                                  (##unchecked-structure-ref
                                   _%self328361335058%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method335085335090%_
                                  (##unchecked-structure-ref
                                   _%self328361335058%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method335085335090%_
                              _%object335084335089%_
                              _%proc335068%_))))))))
            (declare (not safe))
            (##for-each __tmp343956 _%rest334941%_))
          _%h334944%_)))
    (define hash-merge!
      (lambda (_%h334653%_ . _%rest334654%_)
        (let* ((_%h334660%_
                (let ((_%$obj334657%_ _%h334653%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj334657%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj334657%_)))
                           '#t)
                      _%$obj334657%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj334657%_)))))
               (_%h334662%_ _%h334660%_))
          (declare (not safe))
          (##apply __hash-merge! _%h334662%_ _%rest334654%_))))
    (define __hash-merge-right!
      (lambda (_%h334811%_ . _%rest334812%_)
        (let ((_%h334815%_ _%h334811%_))
          (let ((__tmp343957
                 (lambda (_%hr334824%_)
                   (let* ((_%hr334830%_
                           (let ((_%$obj334827%_ _%hr334824%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj334827%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj334827%_)))
                                      '#t)
                                 _%$obj334827%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj334827%_)))))
                          (_%hr334832%_ _%hr334830%_)
                          (_%self328361334845%_ _%hr334832%_)
                          (_%proc334897%_
                           (lambda (_%k334848%_ _%v334849%_)
                             (let* ((_%self329261334851%_ _%h334815%_)
                                    (_%key334854%_ _%k334848%_)
                                    (_%value334857%_ _%v334849%_)
                                    (_%self329261334864%_
                                     (let ((_%$obj334861%_
                                            _%self329261334851%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj334861%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj334861%_)))
                                                '#t)
                                           _%$obj334861%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj334861%_)))))
                                    (_%self329261334866%_
                                     _%self329261334864%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object334882334887%_
                                            (##unchecked-structure-ref
                                             _%self329261334866%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method334883334888%_
                                            (##unchecked-structure-ref
                                             _%self329261334866%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method334883334888%_
                                        _%object334882334887%_
                                        _%key334854%_
                                        _%value334857%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object334889334894%_
                                            (##unchecked-structure-ref
                                             _%self329261334866%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method334890334895%_
                                            (##unchecked-structure-ref
                                             _%self329261334866%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method334890334895%_
                                        _%object334889334894%_
                                        _%key334854%_
                                        _%value334857%_)))))))
                          (_%self328361334904%_
                           (let ((_%$obj334901%_ _%self328361334845%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj334901%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj334901%_)))
                                      '#t)
                                 _%$obj334901%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj334901%_)))))
                          (_%self328361334906%_ _%self328361334904%_)
                          (_%proc334916%_ _%proc334897%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object334925334930%_
                                  (##unchecked-structure-ref
                                   _%self328361334906%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method334926334931%_
                                  (##unchecked-structure-ref
                                   _%self328361334906%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method334926334931%_
                              _%object334925334930%_
                              _%proc334916%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object334932334937%_
                                  (##unchecked-structure-ref
                                   _%self328361334906%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method334933334938%_
                                  (##unchecked-structure-ref
                                   _%self328361334906%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method334933334938%_
                              _%object334932334937%_
                              _%proc334916%_))))))))
            (declare (not safe))
            (##for-each __tmp343957 _%rest334812%_))
          _%h334815%_)))
    (define hash-merge-right!
      (lambda (_%h334792%_ . _%rest334793%_)
        (let* ((_%h334799%_
                (let ((_%$obj334796%_ _%h334792%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj334796%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj334796%_)))
                           '#t)
                      _%$obj334796%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj334796%_)))))
               (_%h334801%_ _%h334799%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h334801%_ _%rest334793%_))))))
