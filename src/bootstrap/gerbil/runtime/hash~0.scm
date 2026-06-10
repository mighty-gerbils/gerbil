(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1781119040)
  (begin
    (define UnboundKeyError::t
      (make-class-type
       'UnboundKeyError::t
       'UnboundKeyError
       (list Error::t)
       '()
       '()
       ':init!))
    (define UnboundKeyError? (make-class-predicate UnboundKeyError::t))
    (define make-UnboundKeyError
      (lambda _%$args141985%_
        (apply make-instance UnboundKeyError::t _%$args141985%_)))
    (define UnboundKeyError-message
      (make-class-slot-accessor UnboundKeyError::t 'message))
    (define UnboundKeyError-irritants
      (make-class-slot-accessor UnboundKeyError::t 'irritants))
    (define UnboundKeyError-where
      (make-class-slot-accessor UnboundKeyError::t 'where))
    (define UnboundKeyError-continuation
      (make-class-slot-accessor UnboundKeyError::t 'continuation))
    (define UnboundKeyError-message-set!
      (make-class-slot-mutator UnboundKeyError::t 'message))
    (define UnboundKeyError-irritants-set!
      (make-class-slot-mutator UnboundKeyError::t 'irritants))
    (define UnboundKeyError-where-set!
      (make-class-slot-mutator UnboundKeyError::t 'where))
    (define UnboundKeyError-continuation-set!
      (make-class-slot-mutator UnboundKeyError::t 'continuation))
    (define &UnboundKeyError-message
      (make-class-slot-unchecked-accessor UnboundKeyError::t 'message))
    (define &UnboundKeyError-irritants
      (make-class-slot-unchecked-accessor UnboundKeyError::t 'irritants))
    (define &UnboundKeyError-where
      (make-class-slot-unchecked-accessor UnboundKeyError::t 'where))
    (define &UnboundKeyError-continuation
      (make-class-slot-unchecked-accessor UnboundKeyError::t 'continuation))
    (define &UnboundKeyError-message-set!
      (make-class-slot-unchecked-mutator UnboundKeyError::t 'message))
    (define &UnboundKeyError-irritants-set!
      (make-class-slot-unchecked-mutator UnboundKeyError::t 'irritants))
    (define &UnboundKeyError-where-set!
      (make-class-slot-unchecked-mutator UnboundKeyError::t 'where))
    (define &UnboundKeyError-continuation-set!
      (make-class-slot-unchecked-mutator UnboundKeyError::t 'continuation))
    (define UnboundKeyError:::init! Error:::init!)
    (bind-method! UnboundKeyError::t ':init! UnboundKeyError:::init! '#f)
    (define raise-unbound-key-error
      (lambda (_%where141859%_ _%message141860%_ . _%irritants141861%_)
        (raise (make-UnboundKeyError
                _%message141860%_
                'where:
                _%where141859%_
                'irritants:
                _%irritants141861%_))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (make-class-type
       'HashTable::t
       'HashTable
       (cons interface-instance::t '())
       '(clear! copy delete! for-each length ref set! update!)
       '((final: . #t) (struct: . #t))
       '#f))
    (define HashTable::interface
      (make-interface-descriptor
       HashTable::t
       '((HashTable::clear! clear!)
         (HashTable::copy copy)
         (HashTable::delete! delete!)
         (HashTable::for-each for-each)
         (HashTable::length length)
         (HashTable::ref ref)
         (HashTable::set! set!)
         (HashTable::update! update!))))
    (class-type-properties-put!
     HashTable::t
     'interface-descriptor:
     HashTable::interface)
    (define make-HashTable
      (lambda (_%obj141857%_) (cast HashTable::interface _%obj141857%_)))
    (define try-HashTable
      (lambda (_%obj141855%_) (try-cast HashTable::interface _%obj141855%_)))
    (define HashTable?
      (lambda (_%obj141853%_) (direct-instance? HashTable::t _%obj141853%_)))
    (define is-HashTable?
      (lambda (_%obj141850%_)
        (if (satisfies? HashTable::interface _%obj141850%_) '#t '#f)))
    (define __HashTable-clear!
      (lambda (_%self126840141833%_)
        (let ((_%self126840141835%_ _%self126840141833%_))
          (declare (not safe))
          (let ((_%object141842141847%_
                 (##unchecked-structure-ref
                  _%self126840141835%_
                  '1
                  '#f
                  'clear!))
                (_%method141843141848%_
                 (##unchecked-structure-ref
                  _%self126840141835%_
                  '2
                  '#f
                  'clear!)))
            (_%method141843141848%_ _%object141842141847%_)))))
    (define ::HashTable-clear!
      (lambda (_%self126841141803%_)
        (let* ((_%self126841141808%_
                (let ((_%$obj141805%_ _%self126841141803%_))
                  (if (immediate-instance-of? HashTable::t _%$obj141805%_)
                      _%$obj141805%_
                      (cast HashTable::interface _%$obj141805%_))))
               (_%self126841141810%_ _%self126841141808%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141818141823%_
                       (##unchecked-structure-ref
                        _%self126841141810%_
                        '1
                        '#f
                        'clear!))
                      (_%method141819141824%_
                       (##unchecked-structure-ref
                        _%self126841141810%_
                        '2
                        '#f
                        'clear!)))
                  (_%method141819141824%_ _%object141818141823%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141825141830%_
                       (##unchecked-structure-ref
                        _%self126841141810%_
                        '1
                        '#f
                        'clear!))
                      (_%method141826141831%_
                       (##unchecked-structure-ref
                        _%self126841141810%_
                        '2
                        '#f
                        'clear!)))
                  (_%method141826141831%_ _%object141825141830%_)))))))
    (define __HashTable-copy
      (lambda (_%self127085141786%_)
        (let ((_%self127085141788%_ _%self127085141786%_))
          (declare (not safe))
          (let ((_%object141795141800%_
                 (##unchecked-structure-ref _%self127085141788%_ '1 '#f 'copy))
                (_%method141796141801%_
                 (##unchecked-structure-ref
                  _%self127085141788%_
                  '3
                  '#f
                  'copy)))
            (_%method141796141801%_ _%object141795141800%_)))))
    (define ::HashTable-copy
      (lambda (_%self127086141753%_)
        (let* ((_%self127086141758%_
                (let ((_%$obj141755%_ _%self127086141753%_))
                  (if (immediate-instance-of? HashTable::t _%$obj141755%_)
                      _%$obj141755%_
                      (cast HashTable::interface _%$obj141755%_))))
               (_%self127086141760%_ _%self127086141758%_))
          (if __DEBUG
              (let ((_%$obj141776%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object141768141773%_
                              (##unchecked-structure-ref
                               _%self127086141760%_
                               '1
                               '#f
                               'copy))
                             (_%method141769141774%_
                              (##unchecked-structure-ref
                               _%self127086141760%_
                               '3
                               '#f
                               'copy)))
                         (_%method141769141774%_ _%object141768141773%_)))))
                (if (immediate-instance-of? HashTable::t _%$obj141776%_)
                    _%$obj141776%_
                    (cast HashTable::interface _%$obj141776%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141778141783%_
                       (##unchecked-structure-ref
                        _%self127086141760%_
                        '1
                        '#f
                        'copy))
                      (_%method141779141784%_
                       (##unchecked-structure-ref
                        _%self127086141760%_
                        '3
                        '#f
                        'copy)))
                  (_%method141779141784%_ _%object141778141783%_)))))))
    (define __HashTable-delete!
      (lambda (_%self127329141735%_ _%key141736%_)
        (let ((_%self127329141738%_ _%self127329141735%_))
          (declare (not safe))
          (let ((_%object141745141750%_
                 (##unchecked-structure-ref
                  _%self127329141738%_
                  '1
                  '#f
                  'delete!))
                (_%method141746141751%_
                 (##unchecked-structure-ref
                  _%self127329141738%_
                  '4
                  '#f
                  'delete!)))
            (_%method141746141751%_ _%object141745141750%_ _%key141736%_)))))
    (define ::HashTable-delete!
      (lambda (_%self127330141704%_ _%key141705%_)
        (let* ((_%self127330141710%_
                (let ((_%$obj141707%_ _%self127330141704%_))
                  (if (immediate-instance-of? HashTable::t _%$obj141707%_)
                      _%$obj141707%_
                      (cast HashTable::interface _%$obj141707%_))))
               (_%self127330141712%_ _%self127330141710%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141720141725%_
                       (##unchecked-structure-ref
                        _%self127330141712%_
                        '1
                        '#f
                        'delete!))
                      (_%method141721141726%_
                       (##unchecked-structure-ref
                        _%self127330141712%_
                        '4
                        '#f
                        'delete!)))
                  (_%method141721141726%_
                   _%object141720141725%_
                   _%key141705%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141727141732%_
                       (##unchecked-structure-ref
                        _%self127330141712%_
                        '1
                        '#f
                        'delete!))
                      (_%method141728141733%_
                       (##unchecked-structure-ref
                        _%self127330141712%_
                        '4
                        '#f
                        'delete!)))
                  (_%method141728141733%_
                   _%object141727141732%_
                   _%key141705%_)))))))
    (define __HashTable-for-each
      (lambda (_%self127573141678%_ _%proc141679%_)
        (let* ((_%self127573141681%_ _%self127573141678%_)
               (_%proc141688%_ _%proc141679%_))
          (declare (not safe))
          (let ((_%object141696141701%_
                 (##unchecked-structure-ref
                  _%self127573141681%_
                  '1
                  '#f
                  'for-each))
                (_%method141697141702%_
                 (##unchecked-structure-ref
                  _%self127573141681%_
                  '5
                  '#f
                  'for-each)))
            (_%method141697141702%_ _%object141696141701%_ _%proc141688%_)))))
    (define ::HashTable-for-each
      (lambda (_%self127574141637%_ _%proc141638%_)
        (let* ((_%self127574141643%_
                (let ((_%$obj141640%_ _%self127574141637%_))
                  (if (immediate-instance-of? HashTable::t _%$obj141640%_)
                      _%$obj141640%_
                      (cast HashTable::interface _%$obj141640%_))))
               (_%self127574141645%_ _%self127574141643%_))
          (if (procedure? _%proc141638%_)
              (let ((_%proc141654%_ _%proc141638%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object141663141668%_
                             (##unchecked-structure-ref
                              _%self127574141645%_
                              '1
                              '#f
                              'for-each))
                            (_%method141664141669%_
                             (##unchecked-structure-ref
                              _%self127574141645%_
                              '5
                              '#f
                              'for-each)))
                        (_%method141664141669%_
                         _%object141663141668%_
                         _%proc141654%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object141670141675%_
                             (##unchecked-structure-ref
                              _%self127574141645%_
                              '1
                              '#f
                              'for-each))
                            (_%method141671141676%_
                             (##unchecked-structure-ref
                              _%self127574141645%_
                              '5
                              '#f
                              'for-each)))
                        (_%method141671141676%_
                         _%object141670141675%_
                         _%proc141654%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc141638%_)
                (void))))))
    (define __HashTable-length
      (lambda (_%self127817141620%_)
        (let ((_%self127817141622%_ _%self127817141620%_))
          (declare (not safe))
          (let ((_%object141629141634%_
                 (##unchecked-structure-ref
                  _%self127817141622%_
                  '1
                  '#f
                  'length))
                (_%method141630141635%_
                 (##unchecked-structure-ref
                  _%self127817141622%_
                  '6
                  '#f
                  'length)))
            (_%method141630141635%_ _%object141629141634%_)))))
    (define ::HashTable-length
      (lambda (_%self127818141587%_)
        (let* ((_%self127818141592%_
                (let ((_%$obj141589%_ _%self127818141587%_))
                  (if (immediate-instance-of? HashTable::t _%$obj141589%_)
                      _%$obj141589%_
                      (cast HashTable::interface _%$obj141589%_))))
               (_%self127818141594%_ _%self127818141592%_))
          (if __DEBUG
              (let ((_%val141610%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object141602141607%_
                              (##unchecked-structure-ref
                               _%self127818141594%_
                               '1
                               '#f
                               'length))
                             (_%method141603141608%_
                              (##unchecked-structure-ref
                               _%self127818141594%_
                               '6
                               '#f
                               'length)))
                         (_%method141603141608%_ _%object141602141607%_)))))
                (if (fixnum? _%val141610%_)
                    _%val141610%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val141610%_)
                      (void))))
              (let ()
                (declare (not safe))
                (let ((_%object141612141617%_
                       (##unchecked-structure-ref
                        _%self127818141594%_
                        '1
                        '#f
                        'length))
                      (_%method141613141618%_
                       (##unchecked-structure-ref
                        _%self127818141594%_
                        '6
                        '#f
                        'length)))
                  (_%method141613141618%_ _%object141612141617%_)))))))
    (define __HashTable-ref
      (lambda (_%self128061141568%_ _%key141569%_ _%default141570%_)
        (let ((_%self128061141572%_ _%self128061141568%_))
          (declare (not safe))
          (let ((_%object141579141584%_
                 (##unchecked-structure-ref _%self128061141572%_ '1 '#f 'ref))
                (_%method141580141585%_
                 (##unchecked-structure-ref _%self128061141572%_ '7 '#f 'ref)))
            (_%method141580141585%_
             _%object141579141584%_
             _%key141569%_
             _%default141570%_)))))
    (define ::HashTable-ref
      (lambda (_%self128062141536%_ _%key141537%_ _%default141538%_)
        (let* ((_%self128062141543%_
                (let ((_%$obj141540%_ _%self128062141536%_))
                  (if (immediate-instance-of? HashTable::t _%$obj141540%_)
                      _%$obj141540%_
                      (cast HashTable::interface _%$obj141540%_))))
               (_%self128062141545%_ _%self128062141543%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141553141558%_
                       (##unchecked-structure-ref
                        _%self128062141545%_
                        '1
                        '#f
                        'ref))
                      (_%method141554141559%_
                       (##unchecked-structure-ref
                        _%self128062141545%_
                        '7
                        '#f
                        'ref)))
                  (_%method141554141559%_
                   _%object141553141558%_
                   _%key141537%_
                   _%default141538%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141560141565%_
                       (##unchecked-structure-ref
                        _%self128062141545%_
                        '1
                        '#f
                        'ref))
                      (_%method141561141566%_
                       (##unchecked-structure-ref
                        _%self128062141545%_
                        '7
                        '#f
                        'ref)))
                  (_%method141561141566%_
                   _%object141560141565%_
                   _%key141537%_
                   _%default141538%_)))))))
    (define __HashTable-set!
      (lambda (_%self128305141517%_ _%key141518%_ _%value141519%_)
        (let ((_%self128305141521%_ _%self128305141517%_))
          (declare (not safe))
          (let ((_%object141528141533%_
                 (##unchecked-structure-ref _%self128305141521%_ '1 '#f 'set!))
                (_%method141529141534%_
                 (##unchecked-structure-ref
                  _%self128305141521%_
                  '8
                  '#f
                  'set!)))
            (_%method141529141534%_
             _%object141528141533%_
             _%key141518%_
             _%value141519%_)))))
    (define ::HashTable-set!
      (lambda (_%self128306141485%_ _%key141486%_ _%value141487%_)
        (let* ((_%self128306141492%_
                (let ((_%$obj141489%_ _%self128306141485%_))
                  (if (immediate-instance-of? HashTable::t _%$obj141489%_)
                      _%$obj141489%_
                      (cast HashTable::interface _%$obj141489%_))))
               (_%self128306141494%_ _%self128306141492%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141502141507%_
                       (##unchecked-structure-ref
                        _%self128306141494%_
                        '1
                        '#f
                        'set!))
                      (_%method141503141508%_
                       (##unchecked-structure-ref
                        _%self128306141494%_
                        '8
                        '#f
                        'set!)))
                  (_%method141503141508%_
                   _%object141502141507%_
                   _%key141486%_
                   _%value141487%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141509141514%_
                       (##unchecked-structure-ref
                        _%self128306141494%_
                        '1
                        '#f
                        'set!))
                      (_%method141510141515%_
                       (##unchecked-structure-ref
                        _%self128306141494%_
                        '8
                        '#f
                        'set!)))
                  (_%method141510141515%_
                   _%object141509141514%_
                   _%key141486%_
                   _%value141487%_)))))))
    (define __HashTable-update!
      (lambda (_%self128549141457%_
               _%key141458%_
               _%proc141459%_
               _%default141460%_)
        (let* ((_%self128549141462%_ _%self128549141457%_)
               (_%proc141469%_ _%proc141459%_))
          (declare (not safe))
          (let ((_%object141477141482%_
                 (##unchecked-structure-ref
                  _%self128549141462%_
                  '1
                  '#f
                  'update!))
                (_%method141478141483%_
                 (##unchecked-structure-ref
                  _%self128549141462%_
                  '9
                  '#f
                  'update!)))
            (_%method141478141483%_
             _%object141477141482%_
             _%key141458%_
             _%proc141469%_
             _%default141460%_)))))
    (define ::HashTable-update!
      (lambda (_%self128550141414%_
               _%key141415%_
               _%proc141416%_
               _%default141417%_)
        (let* ((_%self128550141422%_
                (let ((_%$obj141419%_ _%self128550141414%_))
                  (if (immediate-instance-of? HashTable::t _%$obj141419%_)
                      _%$obj141419%_
                      (cast HashTable::interface _%$obj141419%_))))
               (_%self128550141424%_ _%self128550141422%_))
          (if (procedure? _%proc141416%_)
              (let ((_%proc141433%_ _%proc141416%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object141442141447%_
                             (##unchecked-structure-ref
                              _%self128550141424%_
                              '1
                              '#f
                              'update!))
                            (_%method141443141448%_
                             (##unchecked-structure-ref
                              _%self128550141424%_
                              '9
                              '#f
                              'update!)))
                        (_%method141443141448%_
                         _%object141442141447%_
                         _%key141415%_
                         _%proc141433%_
                         _%default141417%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object141449141454%_
                             (##unchecked-structure-ref
                              _%self128550141424%_
                              '1
                              '#f
                              'update!))
                            (_%method141450141455%_
                             (##unchecked-structure-ref
                              _%self128550141424%_
                              '9
                              '#f
                              'update!)))
                        (_%method141450141455%_
                         _%object141449141454%_
                         _%key141415%_
                         _%proc141433%_
                         _%default141417%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc141416%_)
                (void))))))
    (define Locker::t
      (make-class-type
       'Locker::t
       'Locker
       (cons interface-instance::t '())
       '(read-lock! read-unlock! write-lock! write-unlock!)
       '((final: . #t) (struct: . #t))
       '#f))
    (define Locker::interface
      (make-interface-descriptor
       Locker::t
       '((Locker::read-lock! read-lock!)
         (Locker::read-unlock! read-unlock!)
         (Locker::write-lock! write-lock!)
         (Locker::write-unlock! write-unlock!))))
    (class-type-properties-put!
     Locker::t
     'interface-descriptor:
     Locker::interface)
    (define make-Locker
      (lambda (_%obj141412%_) (cast Locker::interface _%obj141412%_)))
    (define try-Locker
      (lambda (_%obj141410%_) (try-cast Locker::interface _%obj141410%_)))
    (define Locker?
      (lambda (_%obj141408%_) (direct-instance? Locker::t _%obj141408%_)))
    (define is-Locker?
      (lambda (_%obj141405%_)
        (if (satisfies? Locker::interface _%obj141405%_) '#t '#f)))
    (define __Locker-read-lock!
      (lambda (_%self128793141388%_)
        (let ((_%self128793141390%_ _%self128793141388%_))
          (declare (not safe))
          (let ((_%object141397141402%_
                 (##unchecked-structure-ref
                  _%self128793141390%_
                  '1
                  '#f
                  'read-lock!))
                (_%method141398141403%_
                 (##unchecked-structure-ref
                  _%self128793141390%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method141398141403%_ _%object141397141402%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self128794141358%_)
        (let* ((_%self128794141363%_
                (let ((_%$obj141360%_ _%self128794141358%_))
                  (if (immediate-instance-of? Locker::t _%$obj141360%_)
                      _%$obj141360%_
                      (cast Locker::interface _%$obj141360%_))))
               (_%self128794141365%_ _%self128794141363%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141373141378%_
                       (##unchecked-structure-ref
                        _%self128794141365%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method141374141379%_
                       (##unchecked-structure-ref
                        _%self128794141365%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method141374141379%_ _%object141373141378%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141380141385%_
                       (##unchecked-structure-ref
                        _%self128794141365%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method141381141386%_
                       (##unchecked-structure-ref
                        _%self128794141365%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method141381141386%_ _%object141380141385%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self129037141341%_)
        (let ((_%self129037141343%_ _%self129037141341%_))
          (declare (not safe))
          (let ((_%object141350141355%_
                 (##unchecked-structure-ref
                  _%self129037141343%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method141351141356%_
                 (##unchecked-structure-ref
                  _%self129037141343%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method141351141356%_ _%object141350141355%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self129038141311%_)
        (let* ((_%self129038141316%_
                (let ((_%$obj141313%_ _%self129038141311%_))
                  (if (immediate-instance-of? Locker::t _%$obj141313%_)
                      _%$obj141313%_
                      (cast Locker::interface _%$obj141313%_))))
               (_%self129038141318%_ _%self129038141316%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141326141331%_
                       (##unchecked-structure-ref
                        _%self129038141318%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method141327141332%_
                       (##unchecked-structure-ref
                        _%self129038141318%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method141327141332%_ _%object141326141331%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141333141338%_
                       (##unchecked-structure-ref
                        _%self129038141318%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method141334141339%_
                       (##unchecked-structure-ref
                        _%self129038141318%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method141334141339%_ _%object141333141338%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self129281141294%_)
        (let ((_%self129281141296%_ _%self129281141294%_))
          (declare (not safe))
          (let ((_%object141303141308%_
                 (##unchecked-structure-ref
                  _%self129281141296%_
                  '1
                  '#f
                  'write-lock!))
                (_%method141304141309%_
                 (##unchecked-structure-ref
                  _%self129281141296%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method141304141309%_ _%object141303141308%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self129282141264%_)
        (let* ((_%self129282141269%_
                (let ((_%$obj141266%_ _%self129282141264%_))
                  (if (immediate-instance-of? Locker::t _%$obj141266%_)
                      _%$obj141266%_
                      (cast Locker::interface _%$obj141266%_))))
               (_%self129282141271%_ _%self129282141269%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141279141284%_
                       (##unchecked-structure-ref
                        _%self129282141271%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method141280141285%_
                       (##unchecked-structure-ref
                        _%self129282141271%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method141280141285%_ _%object141279141284%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141286141291%_
                       (##unchecked-structure-ref
                        _%self129282141271%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method141287141292%_
                       (##unchecked-structure-ref
                        _%self129282141271%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method141287141292%_ _%object141286141291%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self129525141247%_)
        (let ((_%self129525141249%_ _%self129525141247%_))
          (declare (not safe))
          (let ((_%object141256141261%_
                 (##unchecked-structure-ref
                  _%self129525141249%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method141257141262%_
                 (##unchecked-structure-ref
                  _%self129525141249%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method141257141262%_ _%object141256141261%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self129526141217%_)
        (let* ((_%self129526141222%_
                (let ((_%$obj141219%_ _%self129526141217%_))
                  (if (immediate-instance-of? Locker::t _%$obj141219%_)
                      _%$obj141219%_
                      (cast Locker::interface _%$obj141219%_))))
               (_%self129526141224%_ _%self129526141222%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141232141237%_
                       (##unchecked-structure-ref
                        _%self129526141224%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method141233141238%_
                       (##unchecked-structure-ref
                        _%self129526141224%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method141233141238%_ _%object141232141237%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141239141244%_
                       (##unchecked-structure-ref
                        _%self129526141224%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method141240141245%_
                       (##unchecked-structure-ref
                        _%self129526141224%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method141240141245%_ _%object141239141244%_)))))))
    (let* ((_%klass141180%_ __table::t)
           (_%id141183%_ 'HashTable::ref)
           (_%proc141186%_ raw-table-ref)
           (_%rebind?141189%_ '#f))
      (if (symbol? _%id141183%_)
          (let ((_%id141194%_ _%id141183%_))
            (if (procedure? _%proc141186%_)
                (let ((_%proc141207%_ _%proc141186%_))
                  (__bind-method!
                   _%klass141180%_
                   _%id141194%_
                   _%proc141207%_
                   _%rebind?141189%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc141186%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id141183%_)
            (void))))
    (let* ((_%klass141143%_ __table::t)
           (_%id141146%_ 'HashTable::set!)
           (_%proc141149%_ raw-table-set!)
           (_%rebind?141152%_ '#f))
      (if (symbol? _%id141146%_)
          (let ((_%id141157%_ _%id141146%_))
            (if (procedure? _%proc141149%_)
                (let ((_%proc141170%_ _%proc141149%_))
                  (__bind-method!
                   _%klass141143%_
                   _%id141157%_
                   _%proc141170%_
                   _%rebind?141152%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc141149%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id141146%_)
            (void))))
    (let* ((_%klass141106%_ __table::t)
           (_%id141109%_ 'HashTable::update!)
           (_%proc141112%_ raw-table-update!)
           (_%rebind?141115%_ '#f))
      (if (symbol? _%id141109%_)
          (let ((_%id141120%_ _%id141109%_))
            (if (procedure? _%proc141112%_)
                (let ((_%proc141133%_ _%proc141112%_))
                  (__bind-method!
                   _%klass141106%_
                   _%id141120%_
                   _%proc141133%_
                   _%rebind?141115%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc141112%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id141109%_)
            (void))))
    (let* ((_%klass141069%_ __table::t)
           (_%id141072%_ 'HashTable::delete!)
           (_%proc141075%_ raw-table-delete!)
           (_%rebind?141078%_ '#f))
      (if (symbol? _%id141072%_)
          (let ((_%id141083%_ _%id141072%_))
            (if (procedure? _%proc141075%_)
                (let ((_%proc141096%_ _%proc141075%_))
                  (__bind-method!
                   _%klass141069%_
                   _%id141083%_
                   _%proc141096%_
                   _%rebind?141078%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc141075%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id141072%_)
            (void))))
    (let* ((_%klass141032%_ __table::t)
           (_%id141035%_ 'HashTable::for-each)
           (_%proc141038%_ raw-table-for-each)
           (_%rebind?141041%_ '#f))
      (if (symbol? _%id141035%_)
          (let ((_%id141046%_ _%id141035%_))
            (if (procedure? _%proc141038%_)
                (let ((_%proc141059%_ _%proc141038%_))
                  (__bind-method!
                   _%klass141032%_
                   _%id141046%_
                   _%proc141059%_
                   _%rebind?141041%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc141038%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id141035%_)
            (void))))
    (let* ((_%klass140995%_ __table::t)
           (_%id140998%_ 'HashTable::length)
           (_%proc141001%_ &raw-table-count)
           (_%rebind?141004%_ '#f))
      (if (symbol? _%id140998%_)
          (let ((_%id141009%_ _%id140998%_))
            (if (procedure? _%proc141001%_)
                (let ((_%proc141022%_ _%proc141001%_))
                  (__bind-method!
                   _%klass140995%_
                   _%id141009%_
                   _%proc141022%_
                   _%rebind?141004%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc141001%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140998%_)
            (void))))
    (let* ((_%klass140958%_ __table::t)
           (_%id140961%_ 'HashTable::copy)
           (_%proc140964%_ raw-table-copy)
           (_%rebind?140967%_ '#f))
      (if (symbol? _%id140961%_)
          (let ((_%id140972%_ _%id140961%_))
            (if (procedure? _%proc140964%_)
                (let ((_%proc140985%_ _%proc140964%_))
                  (__bind-method!
                   _%klass140958%_
                   _%id140972%_
                   _%proc140985%_
                   _%rebind?140967%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140964%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140961%_)
            (void))))
    (let* ((_%klass140921%_ __table::t)
           (_%id140924%_ 'HashTable::clear!)
           (_%proc140927%_ raw-table-clear!)
           (_%rebind?140930%_ '#f))
      (if (symbol? _%id140924%_)
          (let ((_%id140935%_ _%id140924%_))
            (if (procedure? _%proc140927%_)
                (let ((_%proc140948%_ _%proc140927%_))
                  (__bind-method!
                   _%klass140921%_
                   _%id140935%_
                   _%proc140948%_
                   _%rebind?140930%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140927%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140924%_)
            (void))))
    (let* ((_%klass140884%_ __gc-table::t)
           (_%id140887%_ 'HashTable::ref)
           (_%proc140890%_ gc-table-ref)
           (_%rebind?140893%_ '#f))
      (if (symbol? _%id140887%_)
          (let ((_%id140898%_ _%id140887%_))
            (if (procedure? _%proc140890%_)
                (let ((_%proc140911%_ _%proc140890%_))
                  (__bind-method!
                   _%klass140884%_
                   _%id140898%_
                   _%proc140911%_
                   _%rebind?140893%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140890%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140887%_)
            (void))))
    (let* ((_%klass140847%_ __gc-table::t)
           (_%id140850%_ 'HashTable::set!)
           (_%proc140853%_ gc-table-set!)
           (_%rebind?140856%_ '#f))
      (if (symbol? _%id140850%_)
          (let ((_%id140861%_ _%id140850%_))
            (if (procedure? _%proc140853%_)
                (let ((_%proc140874%_ _%proc140853%_))
                  (__bind-method!
                   _%klass140847%_
                   _%id140861%_
                   _%proc140874%_
                   _%rebind?140856%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140853%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140850%_)
            (void))))
    (let* ((_%klass140810%_ __gc-table::t)
           (_%id140813%_ 'HashTable::update!)
           (_%proc140816%_ gc-table-update!)
           (_%rebind?140819%_ '#f))
      (if (symbol? _%id140813%_)
          (let ((_%id140824%_ _%id140813%_))
            (if (procedure? _%proc140816%_)
                (let ((_%proc140837%_ _%proc140816%_))
                  (__bind-method!
                   _%klass140810%_
                   _%id140824%_
                   _%proc140837%_
                   _%rebind?140819%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140816%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140813%_)
            (void))))
    (let* ((_%klass140773%_ __gc-table::t)
           (_%id140776%_ 'HashTable::delete!)
           (_%proc140779%_ gc-table-delete!)
           (_%rebind?140782%_ '#f))
      (if (symbol? _%id140776%_)
          (let ((_%id140787%_ _%id140776%_))
            (if (procedure? _%proc140779%_)
                (let ((_%proc140800%_ _%proc140779%_))
                  (__bind-method!
                   _%klass140773%_
                   _%id140787%_
                   _%proc140800%_
                   _%rebind?140782%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140779%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140776%_)
            (void))))
    (let* ((_%klass140736%_ __gc-table::t)
           (_%id140739%_ 'HashTable::for-each)
           (_%proc140742%_ gc-table-for-each)
           (_%rebind?140745%_ '#f))
      (if (symbol? _%id140739%_)
          (let ((_%id140750%_ _%id140739%_))
            (if (procedure? _%proc140742%_)
                (let ((_%proc140763%_ _%proc140742%_))
                  (__bind-method!
                   _%klass140736%_
                   _%id140750%_
                   _%proc140763%_
                   _%rebind?140745%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140742%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140739%_)
            (void))))
    (let* ((_%klass140699%_ __gc-table::t)
           (_%id140702%_ 'HashTable::length)
           (_%proc140705%_ gc-table-length)
           (_%rebind?140708%_ '#f))
      (if (symbol? _%id140702%_)
          (let ((_%id140713%_ _%id140702%_))
            (if (procedure? _%proc140705%_)
                (let ((_%proc140726%_ _%proc140705%_))
                  (__bind-method!
                   _%klass140699%_
                   _%id140713%_
                   _%proc140726%_
                   _%rebind?140708%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140705%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140702%_)
            (void))))
    (let* ((_%klass140662%_ __gc-table::t)
           (_%id140665%_ 'HashTable::copy)
           (_%proc140668%_ gc-table-copy)
           (_%rebind?140671%_ '#f))
      (if (symbol? _%id140665%_)
          (let ((_%id140676%_ _%id140665%_))
            (if (procedure? _%proc140668%_)
                (let ((_%proc140689%_ _%proc140668%_))
                  (__bind-method!
                   _%klass140662%_
                   _%id140676%_
                   _%proc140689%_
                   _%rebind?140671%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140668%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140665%_)
            (void))))
    (let* ((_%klass140625%_ __gc-table::t)
           (_%id140628%_ 'HashTable::clear!)
           (_%proc140631%_ gc-table-clear!)
           (_%rebind?140634%_ '#f))
      (if (symbol? _%id140628%_)
          (let ((_%id140639%_ _%id140628%_))
            (if (procedure? _%proc140631%_)
                (let ((_%proc140652%_ _%proc140631%_))
                  (__bind-method!
                   _%klass140625%_
                   _%id140639%_
                   _%proc140652%_
                   _%rebind?140634%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140631%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140628%_)
            (void))))
    (define gambit-table-update!
      (lambda (_%table140618%_
               _%key140619%_
               _%update140620%_
               _%default140621%_)
        (let ((_%result140623%_
               (table-ref _%table140618%_ _%key140619%_ _%default140621%_)))
          (table-set!
           _%table140618%_
           _%key140619%_
           (_%update140620%_ _%default140621%_)))))
    (define gambit-table-for-each
      (lambda (_%table140615%_ _%proc140616%_)
        (table-for-each _%proc140616%_ _%table140615%_)))
    (define gambit-table-clear!
      (lambda (_%table140613%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table140613%_ '0 '5 '#f '#f))))
    (let* ((_%klass140576%_ (macro-type-table))
           (_%id140579%_ 'HashTable::ref)
           (_%proc140582%_ table-ref)
           (_%rebind?140585%_ '#f))
      (if (symbol? _%id140579%_)
          (let ((_%id140590%_ _%id140579%_))
            (if (procedure? _%proc140582%_)
                (let ((_%proc140603%_ _%proc140582%_))
                  (__bind-method!
                   _%klass140576%_
                   _%id140590%_
                   _%proc140603%_
                   _%rebind?140585%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140582%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140579%_)
            (void))))
    (let* ((_%klass140539%_ (macro-type-table))
           (_%id140542%_ 'HashTable::set!)
           (_%proc140545%_ table-set!)
           (_%rebind?140548%_ '#f))
      (if (symbol? _%id140542%_)
          (let ((_%id140553%_ _%id140542%_))
            (if (procedure? _%proc140545%_)
                (let ((_%proc140566%_ _%proc140545%_))
                  (__bind-method!
                   _%klass140539%_
                   _%id140553%_
                   _%proc140566%_
                   _%rebind?140548%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140545%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140542%_)
            (void))))
    (let* ((_%klass140502%_ (macro-type-table))
           (_%id140505%_ 'HashTable::update!)
           (_%proc140508%_ gambit-table-update!)
           (_%rebind?140511%_ '#f))
      (if (symbol? _%id140505%_)
          (let ((_%id140516%_ _%id140505%_))
            (if (procedure? _%proc140508%_)
                (let ((_%proc140529%_ _%proc140508%_))
                  (__bind-method!
                   _%klass140502%_
                   _%id140516%_
                   _%proc140529%_
                   _%rebind?140511%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140508%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140505%_)
            (void))))
    (let* ((_%klass140465%_ (macro-type-table))
           (_%id140468%_ 'HashTable::delete!)
           (_%proc140471%_ table-set!)
           (_%rebind?140474%_ '#f))
      (if (symbol? _%id140468%_)
          (let ((_%id140479%_ _%id140468%_))
            (if (procedure? _%proc140471%_)
                (let ((_%proc140492%_ _%proc140471%_))
                  (__bind-method!
                   _%klass140465%_
                   _%id140479%_
                   _%proc140492%_
                   _%rebind?140474%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140471%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140468%_)
            (void))))
    (let* ((_%klass140428%_ (macro-type-table))
           (_%id140431%_ 'HashTable::for-each)
           (_%proc140434%_ gambit-table-for-each)
           (_%rebind?140437%_ '#f))
      (if (symbol? _%id140431%_)
          (let ((_%id140442%_ _%id140431%_))
            (if (procedure? _%proc140434%_)
                (let ((_%proc140455%_ _%proc140434%_))
                  (__bind-method!
                   _%klass140428%_
                   _%id140442%_
                   _%proc140455%_
                   _%rebind?140437%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140434%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140431%_)
            (void))))
    (let* ((_%klass140391%_ (macro-type-table))
           (_%id140394%_ 'HashTable::length)
           (_%proc140397%_ table-length)
           (_%rebind?140400%_ '#f))
      (if (symbol? _%id140394%_)
          (let ((_%id140405%_ _%id140394%_))
            (if (procedure? _%proc140397%_)
                (let ((_%proc140418%_ _%proc140397%_))
                  (__bind-method!
                   _%klass140391%_
                   _%id140405%_
                   _%proc140418%_
                   _%rebind?140400%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140397%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140394%_)
            (void))))
    (let* ((_%klass140354%_ (macro-type-table))
           (_%id140357%_ 'HashTable::copy)
           (_%proc140360%_ table-copy)
           (_%rebind?140363%_ '#f))
      (if (symbol? _%id140357%_)
          (let ((_%id140368%_ _%id140357%_))
            (if (procedure? _%proc140360%_)
                (let ((_%proc140381%_ _%proc140360%_))
                  (__bind-method!
                   _%klass140354%_
                   _%id140368%_
                   _%proc140381%_
                   _%rebind?140363%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140360%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140357%_)
            (void))))
    (let* ((_%klass140317%_ (macro-type-table))
           (_%id140320%_ 'HashTable::clear!)
           (_%proc140323%_ gambit-table-clear!)
           (_%rebind?140326%_ '#f))
      (if (symbol? _%id140320%_)
          (let ((_%id140331%_ _%id140320%_))
            (if (procedure? _%proc140323%_)
                (let ((_%proc140344%_ _%proc140323%_))
                  (__bind-method!
                   _%klass140317%_
                   _%id140331%_
                   _%proc140344%_
                   _%rebind?140326%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140323%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140320%_)
            (void))))
    (define hash-table::t
      (let* ((_%slots140280%_ '(table count free hash test seed))
             (_%slot-vector140282%_ (list->vector (cons '#f _%slots140280%_)))
             (_%slot-table140308%_
              (let ((_%slot-table140284%_ (make-symbolic-table '#f '0)))
                (for-each
                 (lambda (_%slot140286%_ _%field140287%_)
                   (symbolic-table-set!
                    _%slot-table140284%_
                    _%slot140286%_
                    _%field140287%_)
                   (symbolic-table-set!
                    _%slot-table140284%_
                    (let ((_%sym140289%_ _%slot140286%_))
                      (if (symbol? _%sym140289%_)
                          (let ((_%sym140294%_ _%sym140289%_))
                            (__symbol->keyword _%sym140294%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/hash
                             'contract:
                             'symbol?
                             'value:
                             _%sym140289%_)
                            (void))))
                    _%field140287%_))
                 _%slots140280%_
                 (iota (length _%slots140280%_) '1))
                _%slot-table140284%_))
             (_%flags140310%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields140312%_ '#())
             (_%properties140314%_
              (cons (cons 'direct-slots: (foldr cons '() _%slots140280%_))
                    (cons (cons 'struct: '#t) '())))
             (__tmp141987 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags140310%_
         __table::t
         _%fields140312%_
         __tmp141987
         _%slot-vector140282%_
         _%slot-table140308%_
         _%properties140314%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots140243%_ '(gcht immediate))
             (_%slot-vector140245%_ (list->vector (cons '#f _%slots140243%_)))
             (_%slot-table140271%_
              (let ((_%slot-table140247%_ (make-symbolic-table '#f '0)))
                (for-each
                 (lambda (_%slot140249%_ _%field140250%_)
                   (symbolic-table-set!
                    _%slot-table140247%_
                    _%slot140249%_
                    _%field140250%_)
                   (symbolic-table-set!
                    _%slot-table140247%_
                    (let ((_%sym140252%_ _%slot140249%_))
                      (if (symbol? _%sym140252%_)
                          (let ((_%sym140257%_ _%sym140252%_))
                            (__symbol->keyword _%sym140257%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/hash
                             'contract:
                             'symbol?
                             'value:
                             _%sym140252%_)
                            (void))))
                    _%field140250%_))
                 _%slots140243%_
                 (iota (length _%slots140243%_) '1))
                _%slot-table140247%_))
             (_%flags140273%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields140275%_ '#())
             (_%properties140277%_
              (cons (cons 'direct-slots: (foldr cons '() _%slots140243%_))
                    (cons (cons 'struct: '#t) '())))
             (__tmp141988 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags140273%_
         __gc-table::t
         _%fields140275%_
         __tmp141988
         _%slot-vector140245%_
         _%slot-table140271%_
         _%properties140277%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (make-class-type
       'locked-hash-table::t
       'locked-hash-table
       (list)
       '(table lock)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define locked-hash-table? (make-class-predicate locked-hash-table::t))
    (define make-locked-hash-table
      (lambda _%$args140240%_
        (apply make-instance locked-hash-table::t _%$args140240%_)))
    (define locked-hash-table-table
      (make-class-slot-accessor locked-hash-table::t 'table))
    (define locked-hash-table-lock
      (make-class-slot-accessor locked-hash-table::t 'lock))
    (define locked-hash-table-table-set!
      (make-class-slot-mutator locked-hash-table::t 'table))
    (define locked-hash-table-lock-set!
      (make-class-slot-mutator locked-hash-table::t 'lock))
    (define &locked-hash-table-table
      (make-class-slot-unchecked-accessor locked-hash-table::t 'table))
    (define &locked-hash-table-lock
      (make-class-slot-unchecked-accessor locked-hash-table::t 'lock))
    (define &locked-hash-table-table-set!
      (make-class-slot-unchecked-mutator locked-hash-table::t 'table))
    (define &locked-hash-table-lock-set!
      (make-class-slot-unchecked-mutator locked-hash-table::t 'lock))
    (define checked-hash-table::t
      (make-class-type
       'checked-hash-table::t
       'checked-hash-table
       (list)
       '(table key-check)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define checked-hash-table? (make-class-predicate checked-hash-table::t))
    (define make-checked-hash-table
      (lambda _%$args140237%_
        (apply make-instance checked-hash-table::t _%$args140237%_)))
    (define checked-hash-table-table
      (make-class-slot-accessor checked-hash-table::t 'table))
    (define checked-hash-table-key-check
      (make-class-slot-accessor checked-hash-table::t 'key-check))
    (define checked-hash-table-table-set!
      (make-class-slot-mutator checked-hash-table::t 'table))
    (define checked-hash-table-key-check-set!
      (make-class-slot-mutator checked-hash-table::t 'key-check))
    (define &checked-hash-table-table
      (make-class-slot-unchecked-accessor checked-hash-table::t 'table))
    (define &checked-hash-table-key-check
      (make-class-slot-unchecked-accessor checked-hash-table::t 'key-check))
    (define &checked-hash-table-table-set!
      (make-class-slot-unchecked-mutator checked-hash-table::t 'table))
    (define &checked-hash-table-key-check-set!
      (make-class-slot-unchecked-mutator checked-hash-table::t 'key-check))
    (define eq-hash-table::t
      (make-class-type
       'eq-hash-table::t::t
       'eq-hash-table
       (list hash-table::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define eq-hash-table? (make-class-predicate eq-hash-table::t))
    (define make-eq-hash-table
      (lambda _%$args140234%_
        (apply make-instance eq-hash-table::t _%$args140234%_)))
    (define eqv-hash-table::t
      (make-class-type
       'eqv-hash-table::t::t
       'eqv-hash-table
       (list hash-table::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define eqv-hash-table? (make-class-predicate eqv-hash-table::t))
    (define make-eqv-hash-table
      (lambda _%$args140231%_
        (apply make-instance eqv-hash-table::t _%$args140231%_)))
    (define symbol-hash-table::t
      (make-class-type
       'symbol-hash-table::t::t
       'symbol-hash-table
       (list hash-table::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define symbol-hash-table? (make-class-predicate symbol-hash-table::t))
    (define make-symbol-hash-table
      (lambda _%$args140228%_
        (apply make-instance symbol-hash-table::t _%$args140228%_)))
    (define string-hash-table::t
      (make-class-type
       'string-hash-table::t::t
       'string-hash-table
       (list hash-table::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define string-hash-table? (make-class-predicate string-hash-table::t))
    (define make-string-hash-table
      (lambda _%$args140225%_
        (apply make-instance string-hash-table::t _%$args140225%_)))
    (define immediate-hash-table::t
      (make-class-type
       'immediate-hash-table::t::t
       'immediate-hash-table
       (list hash-table::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define immediate-hash-table?
      (make-class-predicate immediate-hash-table::t))
    (define make-immediate-hash-table
      (lambda _%$args140222%_
        (apply make-instance immediate-hash-table::t _%$args140222%_)))
    (let* ((_%klass140185%_ hash-table::t)
           (_%id140188%_ 'HashTable::ref)
           (_%proc140191%_ raw-table-ref)
           (_%rebind?140194%_ '#f))
      (if (symbol? _%id140188%_)
          (let ((_%id140199%_ _%id140188%_))
            (if (procedure? _%proc140191%_)
                (let ((_%proc140212%_ _%proc140191%_))
                  (__bind-method!
                   _%klass140185%_
                   _%id140199%_
                   _%proc140212%_
                   _%rebind?140194%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140191%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140188%_)
            (void))))
    (let* ((_%klass140148%_ hash-table::t)
           (_%id140151%_ 'HashTable::set!)
           (_%proc140154%_ raw-table-set!)
           (_%rebind?140157%_ '#f))
      (if (symbol? _%id140151%_)
          (let ((_%id140162%_ _%id140151%_))
            (if (procedure? _%proc140154%_)
                (let ((_%proc140175%_ _%proc140154%_))
                  (__bind-method!
                   _%klass140148%_
                   _%id140162%_
                   _%proc140175%_
                   _%rebind?140157%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140154%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140151%_)
            (void))))
    (let* ((_%klass140111%_ hash-table::t)
           (_%id140114%_ 'HashTable::update!)
           (_%proc140117%_ raw-table-update!)
           (_%rebind?140120%_ '#f))
      (if (symbol? _%id140114%_)
          (let ((_%id140125%_ _%id140114%_))
            (if (procedure? _%proc140117%_)
                (let ((_%proc140138%_ _%proc140117%_))
                  (__bind-method!
                   _%klass140111%_
                   _%id140125%_
                   _%proc140138%_
                   _%rebind?140120%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140117%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140114%_)
            (void))))
    (let* ((_%klass140074%_ hash-table::t)
           (_%id140077%_ 'HashTable::delete!)
           (_%proc140080%_ raw-table-delete!)
           (_%rebind?140083%_ '#f))
      (if (symbol? _%id140077%_)
          (let ((_%id140088%_ _%id140077%_))
            (if (procedure? _%proc140080%_)
                (let ((_%proc140101%_ _%proc140080%_))
                  (__bind-method!
                   _%klass140074%_
                   _%id140088%_
                   _%proc140101%_
                   _%rebind?140083%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140080%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140077%_)
            (void))))
    (let* ((_%klass140037%_ hash-table::t)
           (_%id140040%_ 'HashTable::for-each)
           (_%proc140043%_ raw-table-for-each)
           (_%rebind?140046%_ '#f))
      (if (symbol? _%id140040%_)
          (let ((_%id140051%_ _%id140040%_))
            (if (procedure? _%proc140043%_)
                (let ((_%proc140064%_ _%proc140043%_))
                  (__bind-method!
                   _%klass140037%_
                   _%id140051%_
                   _%proc140064%_
                   _%rebind?140046%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140043%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140040%_)
            (void))))
    (let* ((_%klass140000%_ hash-table::t)
           (_%id140003%_ 'HashTable::length)
           (_%proc140006%_ &raw-table-count)
           (_%rebind?140009%_ '#f))
      (if (symbol? _%id140003%_)
          (let ((_%id140014%_ _%id140003%_))
            (if (procedure? _%proc140006%_)
                (let ((_%proc140027%_ _%proc140006%_))
                  (__bind-method!
                   _%klass140000%_
                   _%id140014%_
                   _%proc140027%_
                   _%rebind?140009%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc140006%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id140003%_)
            (void))))
    (let* ((_%klass139963%_ hash-table::t)
           (_%id139966%_ 'HashTable::copy)
           (_%proc139969%_ raw-table-copy)
           (_%rebind?139972%_ '#f))
      (if (symbol? _%id139966%_)
          (let ((_%id139977%_ _%id139966%_))
            (if (procedure? _%proc139969%_)
                (let ((_%proc139990%_ _%proc139969%_))
                  (__bind-method!
                   _%klass139963%_
                   _%id139977%_
                   _%proc139990%_
                   _%rebind?139972%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139969%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139966%_)
            (void))))
    (let* ((_%klass139926%_ hash-table::t)
           (_%id139929%_ 'HashTable::clear!)
           (_%proc139932%_ raw-table-clear!)
           (_%rebind?139935%_ '#f))
      (if (symbol? _%id139929%_)
          (let ((_%id139940%_ _%id139929%_))
            (if (procedure? _%proc139932%_)
                (let ((_%proc139953%_ _%proc139932%_))
                  (__bind-method!
                   _%klass139926%_
                   _%id139940%_
                   _%proc139953%_
                   _%rebind?139935%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139932%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139929%_)
            (void))))
    (let* ((_%klass139889%_ eq-hash-table::t)
           (_%id139892%_ 'HashTable::ref)
           (_%proc139895%_ eq-table-ref)
           (_%rebind?139898%_ '#f))
      (if (symbol? _%id139892%_)
          (let ((_%id139903%_ _%id139892%_))
            (if (procedure? _%proc139895%_)
                (let ((_%proc139916%_ _%proc139895%_))
                  (__bind-method!
                   _%klass139889%_
                   _%id139903%_
                   _%proc139916%_
                   _%rebind?139898%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139895%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139892%_)
            (void))))
    (let* ((_%klass139852%_ eq-hash-table::t)
           (_%id139855%_ 'HashTable::set!)
           (_%proc139858%_ eq-table-set!)
           (_%rebind?139861%_ '#f))
      (if (symbol? _%id139855%_)
          (let ((_%id139866%_ _%id139855%_))
            (if (procedure? _%proc139858%_)
                (let ((_%proc139879%_ _%proc139858%_))
                  (__bind-method!
                   _%klass139852%_
                   _%id139866%_
                   _%proc139879%_
                   _%rebind?139861%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139858%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139855%_)
            (void))))
    (let* ((_%klass139815%_ eq-hash-table::t)
           (_%id139818%_ 'HashTable::update!)
           (_%proc139821%_ eq-table-update!)
           (_%rebind?139824%_ '#f))
      (if (symbol? _%id139818%_)
          (let ((_%id139829%_ _%id139818%_))
            (if (procedure? _%proc139821%_)
                (let ((_%proc139842%_ _%proc139821%_))
                  (__bind-method!
                   _%klass139815%_
                   _%id139829%_
                   _%proc139842%_
                   _%rebind?139824%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139821%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139818%_)
            (void))))
    (let* ((_%klass139778%_ eq-hash-table::t)
           (_%id139781%_ 'HashTable::delete!)
           (_%proc139784%_ eq-table-delete!)
           (_%rebind?139787%_ '#f))
      (if (symbol? _%id139781%_)
          (let ((_%id139792%_ _%id139781%_))
            (if (procedure? _%proc139784%_)
                (let ((_%proc139805%_ _%proc139784%_))
                  (__bind-method!
                   _%klass139778%_
                   _%id139792%_
                   _%proc139805%_
                   _%rebind?139787%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139784%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139781%_)
            (void))))
    (let* ((_%klass139741%_ eqv-hash-table::t)
           (_%id139744%_ 'HashTable::ref)
           (_%proc139747%_ eqv-table-ref)
           (_%rebind?139750%_ '#f))
      (if (symbol? _%id139744%_)
          (let ((_%id139755%_ _%id139744%_))
            (if (procedure? _%proc139747%_)
                (let ((_%proc139768%_ _%proc139747%_))
                  (__bind-method!
                   _%klass139741%_
                   _%id139755%_
                   _%proc139768%_
                   _%rebind?139750%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139747%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139744%_)
            (void))))
    (let* ((_%klass139704%_ eqv-hash-table::t)
           (_%id139707%_ 'HashTable::set!)
           (_%proc139710%_ eqv-table-set!)
           (_%rebind?139713%_ '#f))
      (if (symbol? _%id139707%_)
          (let ((_%id139718%_ _%id139707%_))
            (if (procedure? _%proc139710%_)
                (let ((_%proc139731%_ _%proc139710%_))
                  (__bind-method!
                   _%klass139704%_
                   _%id139718%_
                   _%proc139731%_
                   _%rebind?139713%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139710%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139707%_)
            (void))))
    (let* ((_%klass139667%_ eqv-hash-table::t)
           (_%id139670%_ 'HashTable::update!)
           (_%proc139673%_ eqv-table-update!)
           (_%rebind?139676%_ '#f))
      (if (symbol? _%id139670%_)
          (let ((_%id139681%_ _%id139670%_))
            (if (procedure? _%proc139673%_)
                (let ((_%proc139694%_ _%proc139673%_))
                  (__bind-method!
                   _%klass139667%_
                   _%id139681%_
                   _%proc139694%_
                   _%rebind?139676%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139673%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139670%_)
            (void))))
    (let* ((_%klass139630%_ eqv-hash-table::t)
           (_%id139633%_ 'HashTable::delete!)
           (_%proc139636%_ eqv-table-delete!)
           (_%rebind?139639%_ '#f))
      (if (symbol? _%id139633%_)
          (let ((_%id139644%_ _%id139633%_))
            (if (procedure? _%proc139636%_)
                (let ((_%proc139657%_ _%proc139636%_))
                  (__bind-method!
                   _%klass139630%_
                   _%id139644%_
                   _%proc139657%_
                   _%rebind?139639%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139636%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139633%_)
            (void))))
    (let* ((_%klass139593%_ symbol-hash-table::t)
           (_%id139596%_ 'HashTable::ref)
           (_%proc139599%_ symbolic-table-ref)
           (_%rebind?139602%_ '#f))
      (if (symbol? _%id139596%_)
          (let ((_%id139607%_ _%id139596%_))
            (if (procedure? _%proc139599%_)
                (let ((_%proc139620%_ _%proc139599%_))
                  (__bind-method!
                   _%klass139593%_
                   _%id139607%_
                   _%proc139620%_
                   _%rebind?139602%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139599%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139596%_)
            (void))))
    (let* ((_%klass139556%_ symbol-hash-table::t)
           (_%id139559%_ 'HashTable::set!)
           (_%proc139562%_ symbolic-table-set!)
           (_%rebind?139565%_ '#f))
      (if (symbol? _%id139559%_)
          (let ((_%id139570%_ _%id139559%_))
            (if (procedure? _%proc139562%_)
                (let ((_%proc139583%_ _%proc139562%_))
                  (__bind-method!
                   _%klass139556%_
                   _%id139570%_
                   _%proc139583%_
                   _%rebind?139565%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139562%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139559%_)
            (void))))
    (let* ((_%klass139519%_ symbol-hash-table::t)
           (_%id139522%_ 'HashTable::update!)
           (_%proc139525%_ symbolic-table-update!)
           (_%rebind?139528%_ '#f))
      (if (symbol? _%id139522%_)
          (let ((_%id139533%_ _%id139522%_))
            (if (procedure? _%proc139525%_)
                (let ((_%proc139546%_ _%proc139525%_))
                  (__bind-method!
                   _%klass139519%_
                   _%id139533%_
                   _%proc139546%_
                   _%rebind?139528%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139525%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139522%_)
            (void))))
    (let* ((_%klass139482%_ symbol-hash-table::t)
           (_%id139485%_ 'HashTable::delete!)
           (_%proc139488%_ symbolic-table-delete!)
           (_%rebind?139491%_ '#f))
      (if (symbol? _%id139485%_)
          (let ((_%id139496%_ _%id139485%_))
            (if (procedure? _%proc139488%_)
                (let ((_%proc139509%_ _%proc139488%_))
                  (__bind-method!
                   _%klass139482%_
                   _%id139496%_
                   _%proc139509%_
                   _%rebind?139491%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139488%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139485%_)
            (void))))
    (let* ((_%klass139445%_ string-hash-table::t)
           (_%id139448%_ 'HashTable::ref)
           (_%proc139451%_ string-table-ref)
           (_%rebind?139454%_ '#f))
      (if (symbol? _%id139448%_)
          (let ((_%id139459%_ _%id139448%_))
            (if (procedure? _%proc139451%_)
                (let ((_%proc139472%_ _%proc139451%_))
                  (__bind-method!
                   _%klass139445%_
                   _%id139459%_
                   _%proc139472%_
                   _%rebind?139454%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139451%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139448%_)
            (void))))
    (let* ((_%klass139408%_ string-hash-table::t)
           (_%id139411%_ 'HashTable::set!)
           (_%proc139414%_ string-table-set!)
           (_%rebind?139417%_ '#f))
      (if (symbol? _%id139411%_)
          (let ((_%id139422%_ _%id139411%_))
            (if (procedure? _%proc139414%_)
                (let ((_%proc139435%_ _%proc139414%_))
                  (__bind-method!
                   _%klass139408%_
                   _%id139422%_
                   _%proc139435%_
                   _%rebind?139417%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139414%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139411%_)
            (void))))
    (let* ((_%klass139371%_ string-hash-table::t)
           (_%id139374%_ 'HashTable::update!)
           (_%proc139377%_ string-table-update!)
           (_%rebind?139380%_ '#f))
      (if (symbol? _%id139374%_)
          (let ((_%id139385%_ _%id139374%_))
            (if (procedure? _%proc139377%_)
                (let ((_%proc139398%_ _%proc139377%_))
                  (__bind-method!
                   _%klass139371%_
                   _%id139385%_
                   _%proc139398%_
                   _%rebind?139380%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139377%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139374%_)
            (void))))
    (let* ((_%klass139334%_ string-hash-table::t)
           (_%id139337%_ 'HashTable::delete!)
           (_%proc139340%_ string-table-delete!)
           (_%rebind?139343%_ '#f))
      (if (symbol? _%id139337%_)
          (let ((_%id139348%_ _%id139337%_))
            (if (procedure? _%proc139340%_)
                (let ((_%proc139361%_ _%proc139340%_))
                  (__bind-method!
                   _%klass139334%_
                   _%id139348%_
                   _%proc139361%_
                   _%rebind?139343%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139340%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139337%_)
            (void))))
    (let* ((_%klass139297%_ immediate-hash-table::t)
           (_%id139300%_ 'HashTable::ref)
           (_%proc139303%_ immediate-table-ref)
           (_%rebind?139306%_ '#f))
      (if (symbol? _%id139300%_)
          (let ((_%id139311%_ _%id139300%_))
            (if (procedure? _%proc139303%_)
                (let ((_%proc139324%_ _%proc139303%_))
                  (__bind-method!
                   _%klass139297%_
                   _%id139311%_
                   _%proc139324%_
                   _%rebind?139306%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139303%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139300%_)
            (void))))
    (let* ((_%klass139260%_ immediate-hash-table::t)
           (_%id139263%_ 'HashTable::set!)
           (_%proc139266%_ immediate-table-set!)
           (_%rebind?139269%_ '#f))
      (if (symbol? _%id139263%_)
          (let ((_%id139274%_ _%id139263%_))
            (if (procedure? _%proc139266%_)
                (let ((_%proc139287%_ _%proc139266%_))
                  (__bind-method!
                   _%klass139260%_
                   _%id139274%_
                   _%proc139287%_
                   _%rebind?139269%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139266%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139263%_)
            (void))))
    (let* ((_%klass139223%_ immediate-hash-table::t)
           (_%id139226%_ 'HashTable::update!)
           (_%proc139229%_ immediate-table-update!)
           (_%rebind?139232%_ '#f))
      (if (symbol? _%id139226%_)
          (let ((_%id139237%_ _%id139226%_))
            (if (procedure? _%proc139229%_)
                (let ((_%proc139250%_ _%proc139229%_))
                  (__bind-method!
                   _%klass139223%_
                   _%id139237%_
                   _%proc139250%_
                   _%rebind?139232%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139229%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139226%_)
            (void))))
    (let* ((_%klass139186%_ immediate-hash-table::t)
           (_%id139189%_ 'HashTable::delete!)
           (_%proc139192%_ immediate-table-delete!)
           (_%rebind?139195%_ '#f))
      (if (symbol? _%id139189%_)
          (let ((_%id139200%_ _%id139189%_))
            (if (procedure? _%proc139192%_)
                (let ((_%proc139213%_ _%proc139192%_))
                  (__bind-method!
                   _%klass139186%_
                   _%id139200%_
                   _%proc139213%_
                   _%rebind?139195%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139192%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139189%_)
            (void))))
    (let* ((_%klass139149%_ gc-hash-table::t)
           (_%id139152%_ 'HashTable::ref)
           (_%proc139155%_ gc-table-ref)
           (_%rebind?139158%_ '#f))
      (if (symbol? _%id139152%_)
          (let ((_%id139163%_ _%id139152%_))
            (if (procedure? _%proc139155%_)
                (let ((_%proc139176%_ _%proc139155%_))
                  (__bind-method!
                   _%klass139149%_
                   _%id139163%_
                   _%proc139176%_
                   _%rebind?139158%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139155%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139152%_)
            (void))))
    (let* ((_%klass139112%_ gc-hash-table::t)
           (_%id139115%_ 'HashTable::set!)
           (_%proc139118%_ gc-table-set!)
           (_%rebind?139121%_ '#f))
      (if (symbol? _%id139115%_)
          (let ((_%id139126%_ _%id139115%_))
            (if (procedure? _%proc139118%_)
                (let ((_%proc139139%_ _%proc139118%_))
                  (__bind-method!
                   _%klass139112%_
                   _%id139126%_
                   _%proc139139%_
                   _%rebind?139121%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139118%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139115%_)
            (void))))
    (let* ((_%klass139075%_ gc-hash-table::t)
           (_%id139078%_ 'HashTable::update!)
           (_%proc139081%_ gc-table-update!)
           (_%rebind?139084%_ '#f))
      (if (symbol? _%id139078%_)
          (let ((_%id139089%_ _%id139078%_))
            (if (procedure? _%proc139081%_)
                (let ((_%proc139102%_ _%proc139081%_))
                  (__bind-method!
                   _%klass139075%_
                   _%id139089%_
                   _%proc139102%_
                   _%rebind?139084%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139081%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139078%_)
            (void))))
    (let* ((_%klass139038%_ gc-hash-table::t)
           (_%id139041%_ 'HashTable::delete!)
           (_%proc139044%_ gc-table-delete!)
           (_%rebind?139047%_ '#f))
      (if (symbol? _%id139041%_)
          (let ((_%id139052%_ _%id139041%_))
            (if (procedure? _%proc139044%_)
                (let ((_%proc139065%_ _%proc139044%_))
                  (__bind-method!
                   _%klass139038%_
                   _%id139052%_
                   _%proc139065%_
                   _%rebind?139047%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139044%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139041%_)
            (void))))
    (let* ((_%klass139001%_ gc-hash-table::t)
           (_%id139004%_ 'HashTable::for-each)
           (_%proc139007%_ gc-table-for-each)
           (_%rebind?139010%_ '#f))
      (if (symbol? _%id139004%_)
          (let ((_%id139015%_ _%id139004%_))
            (if (procedure? _%proc139007%_)
                (let ((_%proc139028%_ _%proc139007%_))
                  (__bind-method!
                   _%klass139001%_
                   _%id139015%_
                   _%proc139028%_
                   _%rebind?139010%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc139007%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id139004%_)
            (void))))
    (let* ((_%klass138964%_ gc-hash-table::t)
           (_%id138967%_ 'HashTable::length)
           (_%proc138970%_ gc-table-length)
           (_%rebind?138973%_ '#f))
      (if (symbol? _%id138967%_)
          (let ((_%id138978%_ _%id138967%_))
            (if (procedure? _%proc138970%_)
                (let ((_%proc138991%_ _%proc138970%_))
                  (__bind-method!
                   _%klass138964%_
                   _%id138978%_
                   _%proc138991%_
                   _%rebind?138973%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc138970%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id138967%_)
            (void))))
    (let* ((_%klass138927%_ gc-hash-table::t)
           (_%id138930%_ 'HashTable::copy)
           (_%proc138933%_ gc-table-copy)
           (_%rebind?138936%_ '#f))
      (if (symbol? _%id138930%_)
          (let ((_%id138941%_ _%id138930%_))
            (if (procedure? _%proc138933%_)
                (let ((_%proc138954%_ _%proc138933%_))
                  (__bind-method!
                   _%klass138927%_
                   _%id138941%_
                   _%proc138954%_
                   _%rebind?138936%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc138933%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id138930%_)
            (void))))
    (let* ((_%klass138890%_ gc-hash-table::t)
           (_%id138893%_ 'HashTable::clear!)
           (_%proc138896%_ gc-table-clear!)
           (_%rebind?138899%_ '#f))
      (if (symbol? _%id138893%_)
          (let ((_%id138904%_ _%id138893%_))
            (if (procedure? _%proc138896%_)
                (let ((_%proc138917%_ _%proc138896%_))
                  (__bind-method!
                   _%klass138890%_
                   _%id138904%_
                   _%proc138917%_
                   _%rebind?138899%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc138896%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id138893%_)
            (void))))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref130151%_
      (lambda (_%self138811%_ _%key138813%_ _%default138814%_)
        (let* ((_%self138817%_ _%self138811%_)
               (_%key138826%_ _%key138813%_)
               (_%default138834%_ _%default138814%_))
          (let ((_%h138843%_ (&locked-hash-table-table _%self138817%_))
                (_%l138845%_ (&locked-hash-table-lock _%self138817%_)))
            (identity
             (dynamic-wind
              (lambda ()
                (let ((_%self128791138849%_ _%l138845%_))
                  (declare (not safe))
                  (let ((_%object138852138857%_
                         (##unchecked-structure-ref
                          _%self128791138849%_
                          '1
                          '#f
                          'read-lock!))
                        (_%method138853138858%_
                         (##unchecked-structure-ref
                          _%self128791138849%_
                          '2
                          '#f
                          'read-lock!)))
                    (_%method138853138858%_ _%object138852138857%_))))
              (lambda ()
                (let* ((_%self128059138861%_ _%h138843%_)
                       (_%key138864%_ _%key138826%_)
                       (_%default138867%_ _%default138834%_))
                  (declare (not safe))
                  (let ((_%object138870138875%_
                         (##unchecked-structure-ref
                          _%self128059138861%_
                          '1
                          '#f
                          'ref))
                        (_%method138871138876%_
                         (##unchecked-structure-ref
                          _%self128059138861%_
                          '7
                          '#f
                          'ref)))
                    (_%method138871138876%_
                     _%object138870138875%_
                     _%key138864%_
                     _%default138867%_))))
              (lambda ()
                (let ((_%self129035138879%_ _%l138845%_))
                  (declare (not safe))
                  (let ((_%object138882138887%_
                         (##unchecked-structure-ref
                          _%self129035138879%_
                          '1
                          '#f
                          'read-unlock!))
                        (_%method138883138888%_
                         (##unchecked-structure-ref
                          _%self129035138879%_
                          '3
                          '#f
                          'read-unlock!)))
                    (_%method138883138888%_ _%object138882138887%_))))))))))
    (bind-method!
     locked-hash-table::t
     'HashTable::ref
     _%locked-hash-table::HashTable::ref130151%_
     '#f)
    (define _%locked-hash-table::HashTable::set!130153%_
      (lambda (_%self138609%_ _%key138611%_ _%value138612%_)
        (let* ((_%self138615%_ _%self138609%_)
               (_%key138624%_ _%key138611%_)
               (_%value138632%_ _%value138612%_))
          (let ((_%h138641%_ (&locked-hash-table-table _%self138615%_))
                (_%l138643%_ (&locked-hash-table-lock _%self138615%_)))
            (void (dynamic-wind
                   (lambda ()
                     (let ((_%self129279138647%_ _%l138643%_))
                       (declare (not safe))
                       (let ((_%object138650138655%_
                              (##unchecked-structure-ref
                               _%self129279138647%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method138651138656%_
                              (##unchecked-structure-ref
                               _%self129279138647%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method138651138656%_ _%object138650138655%_))))
                   (lambda ()
                     (let* ((_%self128303138659%_ _%h138641%_)
                            (_%key138662%_ _%key138624%_)
                            (_%value138665%_ _%value138632%_))
                       (declare (not safe))
                       (let ((_%object138668138673%_
                              (##unchecked-structure-ref
                               _%self128303138659%_
                               '1
                               '#f
                               'set!))
                             (_%method138669138674%_
                              (##unchecked-structure-ref
                               _%self128303138659%_
                               '8
                               '#f
                               'set!)))
                         (_%method138669138674%_
                          _%object138668138673%_
                          _%key138662%_
                          _%value138665%_))))
                   (lambda ()
                     (let ((_%self129523138677%_ _%l138643%_))
                       (declare (not safe))
                       (let ((_%object138680138685%_
                              (##unchecked-structure-ref
                               _%self129523138677%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method138681138686%_
                              (##unchecked-structure-ref
                               _%self129523138677%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method138681138686%_
                          _%object138680138685%_))))))))))
    (bind-method!
     locked-hash-table::t
     'HashTable::set!
     _%locked-hash-table::HashTable::set!130153%_
     '#f)
    (define _%locked-hash-table::HashTable::update!130155%_
      (lambda (_%self138395%_ _%key138397%_ _%update138398%_ _%default138399%_)
        (let* ((_%self138402%_ _%self138395%_)
               (_%key138411%_ _%key138397%_)
               (_%update138419%_ _%update138398%_)
               (_%default138427%_ _%default138399%_))
          (let ((_%h138436%_ (&locked-hash-table-table _%self138402%_))
                (_%l138438%_ (&locked-hash-table-lock _%self138402%_)))
            (void (dynamic-wind
                   (lambda ()
                     (let ((_%self129279138442%_ _%l138438%_))
                       (declare (not safe))
                       (let ((_%object138445138450%_
                              (##unchecked-structure-ref
                               _%self129279138442%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method138446138451%_
                              (##unchecked-structure-ref
                               _%self129279138442%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method138446138451%_ _%object138445138450%_))))
                   (lambda ()
                     (let* ((_%self128547138454%_ _%h138436%_)
                            (_%key138457%_ _%key138411%_)
                            (_%proc138460%_ _%update138419%_)
                            (_%default138463%_ _%default138427%_))
                       (declare (not safe))
                       (let ((_%object138466138471%_
                              (##unchecked-structure-ref
                               _%self128547138454%_
                               '1
                               '#f
                               'update!))
                             (_%method138467138472%_
                              (##unchecked-structure-ref
                               _%self128547138454%_
                               '9
                               '#f
                               'update!)))
                         (_%method138467138472%_
                          _%object138466138471%_
                          _%key138457%_
                          _%proc138460%_
                          _%default138463%_))))
                   (lambda ()
                     (let ((_%self129523138475%_ _%l138438%_))
                       (declare (not safe))
                       (let ((_%object138478138483%_
                              (##unchecked-structure-ref
                               _%self129523138475%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method138479138484%_
                              (##unchecked-structure-ref
                               _%self129523138475%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method138479138484%_
                          _%object138478138483%_))))))))))
    (bind-method!
     locked-hash-table::t
     'HashTable::update!
     _%locked-hash-table::HashTable::update!130155%_
     '#f)
    (define _%locked-hash-table::HashTable::delete!130157%_
      (lambda (_%self138205%_ _%key138207%_)
        (let* ((_%self138210%_ _%self138205%_) (_%key138219%_ _%key138207%_))
          (let ((_%h138228%_ (&locked-hash-table-table _%self138210%_))
                (_%l138230%_ (&locked-hash-table-lock _%self138210%_)))
            (void (dynamic-wind
                   (lambda ()
                     (let ((_%self129279138234%_ _%l138230%_))
                       (declare (not safe))
                       (let ((_%object138237138242%_
                              (##unchecked-structure-ref
                               _%self129279138234%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method138238138243%_
                              (##unchecked-structure-ref
                               _%self129279138234%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method138238138243%_ _%object138237138242%_))))
                   (lambda ()
                     (let* ((_%self127327138246%_ _%h138228%_)
                            (_%key138249%_ _%key138219%_))
                       (declare (not safe))
                       (let ((_%object138252138257%_
                              (##unchecked-structure-ref
                               _%self127327138246%_
                               '1
                               '#f
                               'delete!))
                             (_%method138253138258%_
                              (##unchecked-structure-ref
                               _%self127327138246%_
                               '4
                               '#f
                               'delete!)))
                         (_%method138253138258%_
                          _%object138252138257%_
                          _%key138249%_))))
                   (lambda ()
                     (let ((_%self129523138261%_ _%l138230%_))
                       (declare (not safe))
                       (let ((_%object138264138269%_
                              (##unchecked-structure-ref
                               _%self129523138261%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method138265138270%_
                              (##unchecked-structure-ref
                               _%self129523138261%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method138265138270%_
                          _%object138264138269%_))))))))))
    (bind-method!
     locked-hash-table::t
     'HashTable::delete!
     _%locked-hash-table::HashTable::delete!130157%_
     '#f)
    (define _%locked-hash-table::HashTable::for-each130159%_
      (lambda (_%self138015%_ _%proc138017%_)
        (let* ((_%self138020%_ _%self138015%_) (_%proc138029%_ _%proc138017%_))
          (let ((_%h138038%_ (&locked-hash-table-table _%self138020%_))
                (_%l138040%_ (&locked-hash-table-lock _%self138020%_)))
            (void (dynamic-wind
                   (lambda ()
                     (let ((_%self128791138044%_ _%l138040%_))
                       (declare (not safe))
                       (let ((_%object138047138052%_
                              (##unchecked-structure-ref
                               _%self128791138044%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method138048138053%_
                              (##unchecked-structure-ref
                               _%self128791138044%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method138048138053%_ _%object138047138052%_))))
                   (lambda ()
                     (let* ((_%self127571138056%_ _%h138038%_)
                            (_%proc138059%_ _%proc138029%_))
                       (declare (not safe))
                       (let ((_%object138062138067%_
                              (##unchecked-structure-ref
                               _%self127571138056%_
                               '1
                               '#f
                               'for-each))
                             (_%method138063138068%_
                              (##unchecked-structure-ref
                               _%self127571138056%_
                               '5
                               '#f
                               'for-each)))
                         (_%method138063138068%_
                          _%object138062138067%_
                          _%proc138059%_))))
                   (lambda ()
                     (let ((_%self129035138071%_ _%l138040%_))
                       (declare (not safe))
                       (let ((_%object138074138079%_
                              (##unchecked-structure-ref
                               _%self129035138071%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method138075138080%_
                              (##unchecked-structure-ref
                               _%self129035138071%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method138075138080%_
                          _%object138074138079%_))))))))))
    (bind-method!
     locked-hash-table::t
     'HashTable::for-each
     _%locked-hash-table::HashTable::for-each130159%_
     '#f)
    (define _%locked-hash-table::HashTable::length130161%_
      (lambda (_%self137830%_)
        (let ((_%self137834%_ _%self137830%_))
          (let ((_%h137844%_ (&locked-hash-table-table _%self137834%_))
                (_%l137846%_ (&locked-hash-table-lock _%self137834%_)))
            ((lambda (_%$%g137848137850%_)
               (let ((_%val137853%_ _%$%g137848137850%_))
                 (if (fixnum? _%val137853%_)
                     _%val137853%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val137853%_)
                       (void)))))
             (dynamic-wind
              (lambda ()
                (let ((_%self128791137857%_ _%l137846%_))
                  (declare (not safe))
                  (let ((_%object137860137865%_
                         (##unchecked-structure-ref
                          _%self128791137857%_
                          '1
                          '#f
                          'read-lock!))
                        (_%method137861137866%_
                         (##unchecked-structure-ref
                          _%self128791137857%_
                          '2
                          '#f
                          'read-lock!)))
                    (_%method137861137866%_ _%object137860137865%_))))
              (lambda ()
                (let ((_%self127815137869%_ _%h137844%_))
                  (declare (not safe))
                  (let ((_%object137872137877%_
                         (##unchecked-structure-ref
                          _%self127815137869%_
                          '1
                          '#f
                          'length))
                        (_%method137873137878%_
                         (##unchecked-structure-ref
                          _%self127815137869%_
                          '6
                          '#f
                          'length)))
                    (_%method137873137878%_ _%object137872137877%_))))
              (lambda ()
                (let ((_%self129035137881%_ _%l137846%_))
                  (declare (not safe))
                  (let ((_%object137884137889%_
                         (##unchecked-structure-ref
                          _%self129035137881%_
                          '1
                          '#f
                          'read-unlock!))
                        (_%method137885137890%_
                         (##unchecked-structure-ref
                          _%self129035137881%_
                          '3
                          '#f
                          'read-unlock!)))
                    (_%method137885137890%_ _%object137884137889%_))))))))))
    (bind-method!
     locked-hash-table::t
     'HashTable::length
     _%locked-hash-table::HashTable::length130161%_
     '#f)
    (define _%locked-hash-table::HashTable::copy130163%_
      (lambda (_%self137649%_)
        (let ((_%self137653%_ _%self137649%_))
          (let ((_%h137663%_ (&locked-hash-table-table _%self137653%_))
                (_%l137665%_ (&locked-hash-table-lock _%self137653%_)))
            (let ((_%$obj137704%_
                   (dynamic-wind
                    (lambda ()
                      (let ((_%self128791137669%_ _%l137665%_))
                        (declare (not safe))
                        (let ((_%object137672137677%_
                               (##unchecked-structure-ref
                                _%self128791137669%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method137673137678%_
                               (##unchecked-structure-ref
                                _%self128791137669%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method137673137678%_ _%object137672137677%_))))
                    (lambda ()
                      (let ((_%self127083137681%_ _%h137663%_))
                        (declare (not safe))
                        (let ((_%object137684137689%_
                               (##unchecked-structure-ref
                                _%self127083137681%_
                                '1
                                '#f
                                'copy))
                              (_%method137685137690%_
                               (##unchecked-structure-ref
                                _%self127083137681%_
                                '3
                                '#f
                                'copy)))
                          (_%method137685137690%_ _%object137684137689%_))))
                    (lambda ()
                      (let ((_%self129035137693%_ _%l137665%_))
                        (declare (not safe))
                        (let ((_%object137696137701%_
                               (##unchecked-structure-ref
                                _%self129035137693%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method137697137702%_
                               (##unchecked-structure-ref
                                _%self129035137693%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method137697137702%_ _%object137696137701%_)))))))
              (if (immediate-instance-of? HashTable::t _%$obj137704%_)
                  _%$obj137704%_
                  (cast HashTable::interface _%$obj137704%_)))))))
    (bind-method!
     locked-hash-table::t
     'HashTable::copy
     _%locked-hash-table::HashTable::copy130163%_
     '#f)
    (define _%locked-hash-table::HashTable::clear!130165%_
      (lambda (_%self137471%_)
        (let ((_%self137475%_ _%self137471%_))
          (let ((_%h137485%_ (&locked-hash-table-table _%self137475%_))
                (_%l137487%_ (&locked-hash-table-lock _%self137475%_)))
            (void (dynamic-wind
                   (lambda ()
                     (let ((_%self129279137491%_ _%l137487%_))
                       (declare (not safe))
                       (let ((_%object137494137499%_
                              (##unchecked-structure-ref
                               _%self129279137491%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method137495137500%_
                              (##unchecked-structure-ref
                               _%self129279137491%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method137495137500%_ _%object137494137499%_))))
                   (lambda ()
                     (let ((_%self126838137503%_ _%h137485%_))
                       (declare (not safe))
                       (let ((_%object137506137511%_
                              (##unchecked-structure-ref
                               _%self126838137503%_
                               '1
                               '#f
                               'clear!))
                             (_%method137507137512%_
                              (##unchecked-structure-ref
                               _%self126838137503%_
                               '2
                               '#f
                               'clear!)))
                         (_%method137507137512%_ _%object137506137511%_))))
                   (lambda ()
                     (let ((_%self129523137515%_ _%l137487%_))
                       (declare (not safe))
                       (let ((_%object137518137523%_
                              (##unchecked-structure-ref
                               _%self129523137515%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method137519137524%_
                              (##unchecked-structure-ref
                               _%self129523137515%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method137519137524%_
                          _%object137518137523%_))))))))))
    (bind-method!
     locked-hash-table::t
     'HashTable::clear!
     _%locked-hash-table::HashTable::clear!130165%_
     '#f)
    (let* ((_%klass137311%_ (macro-type-mutex))
           (_%id137314%_ 'Locker::read-lock!)
           (_%proc137317%_ mutex-lock!)
           (_%rebind?137320%_ '#f))
      (if (symbol? _%id137314%_)
          (let ((_%id137325%_ _%id137314%_))
            (if (procedure? _%proc137317%_)
                (let ((_%proc137338%_ _%proc137317%_))
                  (__bind-method!
                   _%klass137311%_
                   _%id137325%_
                   _%proc137338%_
                   _%rebind?137320%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc137317%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id137314%_)
            (void))))
    (let* ((_%klass137274%_ (macro-type-mutex))
           (_%id137277%_ 'Locker::read-unlock!)
           (_%proc137280%_ mutex-unlock!)
           (_%rebind?137283%_ '#f))
      (if (symbol? _%id137277%_)
          (let ((_%id137288%_ _%id137277%_))
            (if (procedure? _%proc137280%_)
                (let ((_%proc137301%_ _%proc137280%_))
                  (__bind-method!
                   _%klass137274%_
                   _%id137288%_
                   _%proc137301%_
                   _%rebind?137283%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc137280%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id137277%_)
            (void))))
    (let* ((_%klass137237%_ (macro-type-mutex))
           (_%id137240%_ 'Locker::write-lock!)
           (_%proc137243%_ mutex-lock!)
           (_%rebind?137246%_ '#f))
      (if (symbol? _%id137240%_)
          (let ((_%id137251%_ _%id137240%_))
            (if (procedure? _%proc137243%_)
                (let ((_%proc137264%_ _%proc137243%_))
                  (__bind-method!
                   _%klass137237%_
                   _%id137251%_
                   _%proc137264%_
                   _%rebind?137246%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc137243%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id137240%_)
            (void))))
    (let* ((_%klass137200%_ (macro-type-mutex))
           (_%id137203%_ 'Locker::write-unlock!)
           (_%proc137206%_ mutex-unlock!)
           (_%rebind?137209%_ '#f))
      (if (symbol? _%id137203%_)
          (let ((_%id137214%_ _%id137203%_))
            (if (procedure? _%proc137206%_)
                (let ((_%proc137227%_ _%proc137206%_))
                  (__bind-method!
                   _%klass137200%_
                   _%id137214%_
                   _%proc137227%_
                   _%rebind?137209%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc137206%_)
                  (void))))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'symbol?
             'value:
             _%id137203%_)
            (void))))
    (define _%checked-hash-table::HashTable::ref130376%_
      (lambda (_%self137141%_ _%key137142%_ _%default137143%_)
        (let* ((_%self137146%_ _%self137141%_)
               (_%key137155%_ _%key137142%_)
               (_%default137163%_ _%default137143%_))
          (declare (not safe))
          (let ((_%h137174%_ (&checked-hash-table-table _%self137146%_))
                (_%key?137176%_
                 (&checked-hash-table-key-check _%self137146%_)))
            (if ((lambda (_%key?137179%_ _%key137180%_ _%default137181%_)
                   (_%key?137179%_ _%key137180%_))
                 _%key?137176%_
                 _%key137155%_
                 _%default137163%_)
                (let* ((_%self128059137183%_ _%h137174%_)
                       (_%key137186%_ _%key137155%_)
                       (_%default137189%_ _%default137163%_))
                  (declare (not safe))
                  (let ((_%object137192137197%_
                         (##unchecked-structure-ref
                          _%self128059137183%_
                          '1
                          '#f
                          'ref))
                        (_%method137193137198%_
                         (##unchecked-structure-ref
                          _%self128059137183%_
                          '7
                          '#f
                          'ref)))
                    (_%method137193137198%_
                     _%object137192137197%_
                     _%key137186%_
                     _%default137189%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key137155%_ (cons _%default137163%_ '())))
                  (void)))))))
    (bind-method!
     checked-hash-table::t
     'HashTable::ref
     _%checked-hash-table::HashTable::ref130376%_
     '#f)
    (define _%checked-hash-table::HashTable::set!130378%_
      (lambda (_%self136959%_ _%key136960%_ _%value136961%_)
        (let* ((_%self136964%_ _%self136959%_)
               (_%key136973%_ _%key136960%_)
               (_%value136981%_ _%value136961%_))
          (declare (not safe))
          (let ((_%h136992%_ (&checked-hash-table-table _%self136964%_))
                (_%key?136994%_
                 (&checked-hash-table-key-check _%self136964%_)))
            (if ((lambda (_%key?136997%_ _%key136998%_ _%value136999%_)
                   (_%key?136997%_ _%key136998%_))
                 _%key?136994%_
                 _%key136973%_
                 _%value136981%_)
                (let* ((_%self128303137001%_ _%h136992%_)
                       (_%key137004%_ _%key136973%_)
                       (_%value137007%_ _%value136981%_))
                  (declare (not safe))
                  (let ((_%object137010137015%_
                         (##unchecked-structure-ref
                          _%self128303137001%_
                          '1
                          '#f
                          'set!))
                        (_%method137011137016%_
                         (##unchecked-structure-ref
                          _%self128303137001%_
                          '8
                          '#f
                          'set!)))
                    (_%method137011137016%_
                     _%object137010137015%_
                     _%key137004%_
                     _%value137007%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key136973%_ (cons _%value136981%_ '())))
                  (void)))))))
    (bind-method!
     checked-hash-table::t
     'HashTable::set!
     _%checked-hash-table::HashTable::set!130378%_
     '#f)
    (define _%checked-hash-table::HashTable::update!130380%_
      (lambda (_%self136764%_ _%key136765%_ _%update136766%_ _%default136767%_)
        (let* ((_%self136770%_ _%self136764%_)
               (_%key136779%_ _%key136765%_)
               (_%update136787%_ _%update136766%_)
               (_%default136795%_ _%default136767%_))
          (declare (not safe))
          (let ((_%h136806%_ (&checked-hash-table-table _%self136770%_))
                (_%key?136808%_
                 (&checked-hash-table-key-check _%self136770%_)))
            (if ((lambda (_%key?136811%_
                          _%key136812%_
                          _%update136813%_
                          _%default136814%_)
                   (_%key?136811%_ _%key136812%_))
                 _%key?136808%_
                 _%key136779%_
                 _%update136787%_
                 _%default136795%_)
                (let* ((_%self128547136816%_ _%h136806%_)
                       (_%key136819%_ _%key136779%_)
                       (_%proc136822%_ _%update136787%_)
                       (_%default136825%_ _%default136795%_))
                  (declare (not safe))
                  (let ((_%object136828136833%_
                         (##unchecked-structure-ref
                          _%self128547136816%_
                          '1
                          '#f
                          'update!))
                        (_%method136829136834%_
                         (##unchecked-structure-ref
                          _%self128547136816%_
                          '9
                          '#f
                          'update!)))
                    (_%method136829136834%_
                     _%object136828136833%_
                     _%key136819%_
                     _%proc136822%_
                     _%default136825%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key136779%_
                         (cons _%update136787%_ (cons _%default136795%_ '()))))
                  (void)))))))
    (bind-method!
     checked-hash-table::t
     'HashTable::update!
     _%checked-hash-table::HashTable::update!130380%_
     '#f)
    (define _%checked-hash-table::HashTable::delete!130382%_
      (lambda (_%self136595%_ _%key136596%_)
        (let* ((_%self136599%_ _%self136595%_) (_%key136608%_ _%key136596%_))
          (declare (not safe))
          (let ((_%h136619%_ (&checked-hash-table-table _%self136599%_))
                (_%key?136621%_
                 (&checked-hash-table-key-check _%self136599%_)))
            (if ((lambda (_%key?136624%_ _%key136625%_)
                   (_%key?136624%_ _%key136625%_))
                 _%key?136621%_
                 _%key136608%_)
                (let* ((_%self127327136627%_ _%h136619%_)
                       (_%key136630%_ _%key136608%_))
                  (declare (not safe))
                  (let ((_%object136633136638%_
                         (##unchecked-structure-ref
                          _%self127327136627%_
                          '1
                          '#f
                          'delete!))
                        (_%method136634136639%_
                         (##unchecked-structure-ref
                          _%self127327136627%_
                          '4
                          '#f
                          'delete!)))
                    (_%method136634136639%_
                     _%object136633136638%_
                     _%key136630%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key136608%_ '()))
                  (void)))))))
    (bind-method!
     checked-hash-table::t
     'HashTable::delete!
     _%checked-hash-table::HashTable::delete!130382%_
     '#f)
    (define _%checked-hash-table::HashTable::for-each130384%_
      (lambda (_%self136426%_ _%proc136427%_)
        (let* ((_%self136430%_ _%self136426%_) (_%proc136439%_ _%proc136427%_))
          (declare (not safe))
          (let ((_%h136450%_ (&checked-hash-table-table _%self136430%_))
                (_%key?136452%_
                 (&checked-hash-table-key-check _%self136430%_)))
            (if ((lambda (_%key?136455%_ _%proc136456%_) '#t)
                 _%key?136452%_
                 _%proc136439%_)
                (let* ((_%self127571136458%_ _%h136450%_)
                       (_%proc136461%_ _%proc136439%_))
                  (declare (not safe))
                  (let ((_%object136464136469%_
                         (##unchecked-structure-ref
                          _%self127571136458%_
                          '1
                          '#f
                          'for-each))
                        (_%method136465136470%_
                         (##unchecked-structure-ref
                          _%self127571136458%_
                          '5
                          '#f
                          'for-each)))
                    (_%method136465136470%_
                     _%object136464136469%_
                     _%proc136461%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc136439%_ '()))
                  (void)))))))
    (bind-method!
     checked-hash-table::t
     'HashTable::for-each
     _%checked-hash-table::HashTable::for-each130384%_
     '#f)
    (define _%checked-hash-table::HashTable::length130386%_
      (lambda (_%self136272%_)
        (let ((_%self136275%_ _%self136272%_))
          (declare (not safe))
          (let ((_%h136287%_ (&checked-hash-table-table _%self136275%_))
                (_%key?136289%_
                 (&checked-hash-table-key-check _%self136275%_)))
            (if (void _%key?136289%_)
                (let ((_%self127815136292%_ _%h136287%_))
                  (declare (not safe))
                  (let ((_%object136295136300%_
                         (##unchecked-structure-ref
                          _%self127815136292%_
                          '1
                          '#f
                          'length))
                        (_%method136296136301%_
                         (##unchecked-structure-ref
                          _%self127815136292%_
                          '6
                          '#f
                          'length)))
                    (_%method136296136301%_ _%object136295136300%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-length
                   'value:
                   '())
                  (void)))))))
    (bind-method!
     checked-hash-table::t
     'HashTable::length
     _%checked-hash-table::HashTable::length130386%_
     '#f)
    (define _%checked-hash-table::HashTable::copy130388%_
      (lambda (_%self136118%_)
        (let ((_%self136121%_ _%self136118%_))
          (declare (not safe))
          (let ((_%h136133%_ (&checked-hash-table-table _%self136121%_))
                (_%key?136135%_
                 (&checked-hash-table-key-check _%self136121%_)))
            (if (void _%key?136135%_)
                (let ((_%self127083136138%_ _%h136133%_))
                  (declare (not safe))
                  (let ((_%object136141136146%_
                         (##unchecked-structure-ref
                          _%self127083136138%_
                          '1
                          '#f
                          'copy))
                        (_%method136142136147%_
                         (##unchecked-structure-ref
                          _%self127083136138%_
                          '3
                          '#f
                          'copy)))
                    (_%method136142136147%_ _%object136141136146%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-copy
                   'value:
                   '())
                  (void)))))))
    (bind-method!
     checked-hash-table::t
     'HashTable::copy
     _%checked-hash-table::HashTable::copy130388%_
     '#f)
    (define _%checked-hash-table::HashTable::clear!130390%_
      (lambda (_%self135964%_)
        (let ((_%self135967%_ _%self135964%_))
          (declare (not safe))
          (let ((_%h135979%_ (&checked-hash-table-table _%self135967%_))
                (_%key?135981%_
                 (&checked-hash-table-key-check _%self135967%_)))
            (if (void _%key?135981%_)
                (let ((_%self126838135984%_ _%h135979%_))
                  (declare (not safe))
                  (let ((_%object135987135992%_
                         (##unchecked-structure-ref
                          _%self126838135984%_
                          '1
                          '#f
                          'clear!))
                        (_%method135988135993%_
                         (##unchecked-structure-ref
                          _%self126838135984%_
                          '2
                          '#f
                          'clear!)))
                    (_%method135988135993%_ _%object135987135992%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-clear!
                   'value:
                   '())
                  (void)))))))
    (bind-method!
     checked-hash-table::t
     'HashTable::clear!
     _%checked-hash-table::HashTable::clear!130390%_
     '#f)
    (define make-generic-hash-table
      (lambda (_%table135834%_
               _%count135835%_
               _%free135836%_
               _%hash135837%_
               _%test135838%_
               _%seed135839%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table135834%_
           _%count135835%_
           _%free135836%_
           _%hash135837%_
           _%test135838%_
           _%seed135839%_))))
    (define make-hash-table
      (let ((_%$%kw-lambda135232135828%_
             (let ((_%$%kw-lambda-main135233135821%_
                    (lambda (_%@@keywords135244%_
                             _%$%size-hint135234135245%_
                             _%$%seed135235135246%_
                             _%$%test135236135247%_
                             _%$%hash135237135248%_
                             _%$%lock135238135249%_
                             _%$%check135239135250%_
                             _%$%weak-keys135240135251%_
                             _%$%weak-values135241135252%_)
                      (let* ((_%size-hint135254%_
                              (if (eq? _%$%size-hint135234135245%_
                                       absent-value)
                                  '#f
                                  _%$%size-hint135234135245%_))
                             (_%seed135256%_
                              (if (eq? _%$%seed135235135246%_ absent-value)
                                  '#f
                                  _%$%seed135235135246%_))
                             (_%test135258%_
                              (if (eq? _%$%test135236135247%_ absent-value)
                                  equal?
                                  _%$%test135236135247%_))
                             (_%hash135260%_
                              (if (eq? _%$%hash135237135248%_ absent-value)
                                  '#f
                                  _%$%hash135237135248%_))
                             (_%lock135262%_
                              (if (eq? _%$%lock135238135249%_ absent-value)
                                  '#f
                                  _%$%lock135238135249%_))
                             (_%check135264%_
                              (if (eq? _%$%check135239135250%_ absent-value)
                                  '#f
                                  _%$%check135239135250%_))
                             (_%weak-keys135266%_
                              (if (eq? _%$%weak-keys135240135251%_
                                       absent-value)
                                  '#f
                                  _%$%weak-keys135240135251%_))
                             (_%weak-values135268%_
                              (if (eq? _%$%weak-values135241135252%_
                                       absent-value)
                                  '#f
                                  _%$%weak-values135241135252%_)))
                        (letrec ((_%table-seed135271%_
                                  (lambda ()
                                    (if (fixnum? _%seed135256%_)
                                        _%seed135256%_
                                        (random-integer
                                         (macro-max-fixnum32)))))
                                 (_%__wrap-lock135415%_
                                  (lambda (_%ht135802%_)
                                    (let ((_%ht135805%_ _%ht135802%_))
                                      (if _%lock135262%_
                                          (let ((_%$obj135817%_
                                                 (make-locked-hash-table
                                                  _%ht135805%_
                                                  (let ((_%$obj135814%_
                                                         _%lock135262%_))
                                                    (if (immediate-instance-of?
                                                         Locker::t
                                                         _%$obj135814%_)
                                                        _%$obj135814%_
                                                        (cast Locker::interface
                                                              _%$obj135814%_))))))
                                            (if (immediate-instance-of?
                                                 HashTable::t
                                                 _%$obj135817%_)
                                                _%$obj135817%_
                                                (cast HashTable::interface
                                                      _%$obj135817%_)))
                                          _%ht135805%_))))
                                 (_%wrap-lock135416%_
                                  (lambda (_%ht135790%_)
                                    (let ((_%ht135793%_ _%ht135790%_))
                                      (_%__wrap-lock135415%_ _%ht135793%_))))
                                 (_%__wrap-checked135538%_
                                  (lambda (_%ht135774%_ _%implicit135775%_)
                                    (let ((_%ht135778%_ _%ht135774%_))
                                      (if _%check135264%_
                                          (let ((_%$obj135787%_
                                                 (make-checked-hash-table
                                                  _%ht135778%_
                                                  (if (procedure?
                                                       _%check135264%_)
                                                      _%check135264%_
                                                      _%implicit135775%_))))
                                            (if (immediate-instance-of?
                                                 HashTable::t
                                                 _%$obj135787%_)
                                                _%$obj135787%_
                                                (cast HashTable::interface
                                                      _%$obj135787%_)))
                                          _%ht135778%_))))
                                 (_%wrap-checked135539%_
                                  (lambda (_%ht135761%_ _%implicit135762%_)
                                    (let ((_%ht135765%_ _%ht135761%_))
                                      (_%__wrap-checked135538%_
                                       _%ht135765%_
                                       _%implicit135762%_))))
                                 (_%make135540%_
                                  (lambda (_%kons135709%_
                                           _%key?135710%_
                                           _%hash135711%_
                                           _%test135712%_)
                                    (let* ((_%size135715%_
                                            (raw-table-size-hint->size
                                             _%size-hint135254%_))
                                           (_%table135717%_
                                            (make-vector
                                             _%size135715%_
                                             (macro-unused-obj)))
                                           (_%ht135722%_
                                            (let ((_%$obj135719%_
                                                   (_%kons135709%_
                                                    _%table135717%_
                                                    '0
                                                    (fxquotient
                                                     _%size135715%_
                                                     '2)
                                                    _%hash135711%_
                                                    _%test135712%_
                                                    (_%table-seed135271%_))))
                                              (if (immediate-instance-of?
                                                   HashTable::t
                                                   _%$obj135719%_)
                                                  _%$obj135719%_
                                                  (cast HashTable::interface
                                                        _%$obj135719%_))))
                                           (_%ht135744%_
                                            (let* ((_%ht135725%_ _%ht135722%_)
                                                   (_%ht135729%_ _%ht135725%_))
                                              (_%__wrap-lock135415%_
                                               _%ht135729%_)))
                                           (_%implicit135747%_ _%key?135710%_)
                                           (_%ht135751%_ _%ht135744%_))
                                      (_%__wrap-checked135538%_
                                       _%ht135751%_
                                       _%implicit135747%_))))
                                 (_%make-gc-hash-table135541%_
                                  (lambda ()
                                    (let* ((_%ht135674%_
                                            (let ((_%$obj135671%_
                                                   (make-gc-table
                                                    _%size-hint135254%_
                                                    gc-hash-table::t)))
                                              (if (immediate-instance-of?
                                                   HashTable::t
                                                   _%$obj135671%_)
                                                  _%$obj135671%_
                                                  (cast HashTable::interface
                                                        _%$obj135671%_))))
                                           (_%ht135692%_
                                            (let* ((_%ht135676%_ _%ht135674%_)
                                                   (_%ht135680%_ _%ht135676%_))
                                              (_%__wrap-lock135415%_
                                               _%ht135680%_)))
                                           (_%implicit135695%_ true)
                                           (_%ht135699%_ _%ht135692%_))
                                      (_%__wrap-checked135538%_
                                       _%ht135699%_
                                       _%implicit135695%_))))
                                 (_%make-gambit-table135542%_
                                  (lambda ()
                                    (let* ((_%size135611%_
                                            (let ((_%$e135608%_
                                                   _%size-hint135254%_))
                                              (if _%$e135608%_
                                                  _%$e135608%_
                                                  (macro-absent-obj))))
                                           (_%test135616%_
                                            (let ((_%$e135613%_
                                                   _%test135258%_))
                                              (if _%$e135613%_
                                                  _%$e135613%_
                                                  equal?)))
                                           (_%hash135624%_
                                            (let ((_%$e135618%_
                                                   _%hash135260%_))
                                              (if _%$e135618%_
                                                  _%$e135618%_
                                                  (if (eq? _%test135616%_ eq?)
                                                      eq?-hash
                                                      (if (eq? _%test135616%_
                                                               eqv?)
                                                          eqv?-hash
                                                          equal?-hash)))))
                                           (_%ht135629%_
                                            (let ((_%$obj135626%_
                                                   (make-table
                                                    'size:
                                                    _%size135611%_
                                                    'test:
                                                    _%test135616%_
                                                    'hash:
                                                    _%hash135624%_
                                                    'weak-keys:
                                                    _%weak-keys135266%_
                                                    'weak-values:
                                                    _%weak-values135268%_)))
                                              (if (immediate-instance-of?
                                                   HashTable::t
                                                   _%$obj135626%_)
                                                  _%$obj135626%_
                                                  (cast HashTable::interface
                                                        _%$obj135626%_))))
                                           (_%ht135652%_
                                            (let* ((_%ht135632%_ _%ht135629%_)
                                                   (_%ht135636%_ _%ht135632%_))
                                              (_%__wrap-lock135415%_
                                               _%ht135636%_)))
                                           (_%implicit135655%_ true)
                                           (_%ht135659%_ _%ht135652%_))
                                      (_%__wrap-checked135538%_
                                       _%ht135659%_
                                       _%implicit135655%_)))))
                          (if (or _%weak-keys135266%_ _%weak-values135268%_)
                              (_%make-gambit-table135542%_)
                              (if (and (or (eq? _%test135258%_ eq?)
                                           (eq? _%test135258%_ ##eq?))
                                       (or (not _%hash135260%_)
                                           (eq? _%hash135260%_ eq?-hash)
                                           (eq? _%hash135260%_ eq-hash))
                                       (not _%seed135256%_))
                                  (_%make-gc-hash-table135541%_)
                                  (if (and (or (eq? _%test135258%_ eq?)
                                               (eq? _%test135258%_ ##eq?))
                                           (or (not _%hash135260%_)
                                               (eq? _%hash135260%_ eq?-hash)
                                               (eq? _%hash135260%_ eq-hash)))
                                      (_%make135540%_
                                       make-eq-hash-table
                                       true
                                       eq-hash
                                       eq?)
                                      (if (and (or (eq? _%test135258%_ eqv?)
                                                   (eq? _%test135258%_ ##eqv?))
                                               (or (not _%hash135260%_)
                                                   (eq? _%hash135260%_
                                                        eqv?-hash)
                                                   (eq? _%hash135260%_
                                                        eqv-hash)))
                                          (_%make135540%_
                                           make-eqv-hash-table
                                           true
                                           eqv-hash
                                           eqv?)
                                          (if (and (or (eq? _%test135258%_ eq?)
                                                       (eq? _%test135258%_
                                                            ##eq?))
                                                   (or (eq? _%hash135260%_
                                                            symbolic-hash)
                                                       (eq? _%hash135260%_
                                                            ##symbol-hash)))
                                              (_%make135540%_
                                               make-symbol-hash-table
                                               symbolic?
                                               symbolic-hash
                                               eq?)
                                              (if (and (or (eq? _%test135258%_
                                                                eq?)
                                                           (eq? _%test135258%_
                                                                ##eq?))
                                                       (eq? _%hash135260%_
                                                            immediate-hash))
                                                  (_%make135540%_
                                                   make-immediate-hash-table
                                                   immediate?
                                                   immediate-hash
                                                   eq?)
                                                  (if (and (or (eq? _%test135258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            equal?)
                       (eq? _%test135258%_ ##equal?)
                       (eq? _%test135258%_ string=?)
                       (eq? _%test135258%_ ##string=?))
                   (or (eq? _%hash135260%_ string-hash)
                       (eq? _%hash135260%_ ##string=?-hash)))
              (_%make135540%_
               make-string-hash-table
               string?
               string-hash
               ##string=?)
              (if (and (eq? _%test135258%_ equal?) (not _%hash135260%_))
                  (_%make135540%_
                   make-generic-hash-table
                   true
                   equal?-hash
                   equal?)
                  (if (not (procedure? _%test135258%_))
                      (let ()
                        (error '"bad hash table test function; expected procedure"
                               _%test135258%_)
                        (void))
                      (if (not (procedure? _%hash135260%_))
                          (let ()
                            (error '"bad hash table hash function; expected procedure"
                                   _%hash135260%_)
                            (void))
                          (_%make135540%_
                           make-generic-hash-table
                           true
                           _%hash135260%_
                           _%test135258%_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (lambda (_%@@keywords135824%_ . _%args135825%_)
                 (apply _%$%kw-lambda-main135233135821%_
                        _%@@keywords135824%_
                        (symbolic-table-ref
                         _%@@keywords135824%_
                         'size:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords135824%_
                         'seed:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords135824%_
                         'test:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords135824%_
                         'hash:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords135824%_
                         'lock:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords135824%_
                         'check:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords135824%_
                         'weak-keys:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords135824%_
                         'weak-values:
                         absent-value)
                        _%args135825%_)))))
        (lambda _%$%args135242135831%_
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
                 _%$%kw-lambda135232135828%_
                 _%$%args135242135831%_))))
    (define make-hash-table-eq
      (lambda _%args135231%_
        (apply make-hash-table 'test: eq? _%args135231%_)))
    (define make-hash-table-eqv
      (lambda _%args135229%_
        (apply make-hash-table 'test: eqv? _%args135229%_)))
    (define make-hash-table-symbolic
      (lambda _%args135227%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args135227%_)))
    (define make-hash-table-string
      (lambda _%args135225%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args135225%_)))
    (define make-hash-table-immediate
      (lambda _%args135223%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args135223%_)))
    (define list->hash-table
      (lambda (_%lst135220%_ . _%args135221%_)
        (list->hash-table!
         _%lst135220%_
         (apply make-hash-table
                'size:
                (length _%lst135220%_)
                _%args135221%_))))
    (define list->hash-table-eq
      (lambda (_%lst135217%_ . _%args135218%_)
        (list->hash-table!
         _%lst135217%_
         (apply make-hash-table-eq
                'size:
                (length _%lst135217%_)
                _%args135218%_))))
    (define list->hash-table-eqv
      (lambda (_%lst135214%_ . _%args135215%_)
        (list->hash-table!
         _%lst135214%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst135214%_)
                _%args135215%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst135211%_ . _%args135212%_)
        (list->hash-table!
         _%lst135211%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst135211%_)
                _%args135212%_))))
    (define list->hash-table-string
      (lambda (_%lst135208%_ . _%args135209%_)
        (list->hash-table!
         _%lst135208%_
         (apply make-hash-table-string
                'size:
                (length _%lst135208%_)
                _%args135209%_))))
    (define list->hash-table-immediate
      (lambda (_%lst135205%_ . _%args135206%_)
        (list->hash-table!
         _%lst135205%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst135205%_)
                _%args135206%_))))
    (define list->hash-table!
      (lambda (_%lst135156%_ _%h135157%_)
        (for-each
         (lambda (_%el135159%_)
           (let* ((_%$%el135160135167%_ _%el135159%_)
                  (_%$%E135162135170%_
                   (lambda ()
                     (error '"No clause matching"
                            _%$%el135160135167%_
                            '([k . v]))
                     (void)))
                  (_%$%K135163135193%_
                   (lambda (_%v135173%_ _%k135174%_)
                     (let* ((_%self128303135176%_ _%h135157%_)
                            (_%key135179%_ _%k135174%_)
                            (_%value135182%_ _%v135173%_))
                       (declare (not safe))
                       (let ((_%object135185135190%_
                              (##unchecked-structure-ref
                               _%self128303135176%_
                               '1
                               '#f
                               'set!))
                             (_%method135186135191%_
                              (##unchecked-structure-ref
                               _%self128303135176%_
                               '8
                               '#f
                               'set!)))
                         (_%method135186135191%_
                          _%object135185135190%_
                          _%key135179%_
                          _%value135182%_))))))
             (if (pair? _%$%el135160135167%_)
                 (let ((_%$%hd135164135196%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el135160135167%_)))
                       (_%$%tl135165135198%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el135160135167%_))))
                   (let* ((_%k135201%_ _%$%hd135164135196%_)
                          (_%v135203%_ _%$%tl135165135198%_))
                     (_%$%K135163135193%_ _%v135203%_ _%k135201%_)))
                 (_%$%E135162135170%_))))
         _%lst135156%_)
        _%h135157%_))
    (define plist->hash-table
      (lambda (_%lst135153%_ . _%args135154%_)
        (plist->hash-table!
         _%lst135153%_
         (apply make-hash-table
                'size:
                (length _%lst135153%_)
                _%args135154%_))))
    (define plist->hash-table-eq
      (lambda (_%lst135150%_ . _%args135151%_)
        (plist->hash-table!
         _%lst135150%_
         (apply make-hash-table-eq
                'size:
                (length _%lst135150%_)
                _%args135151%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst135147%_ . _%args135148%_)
        (plist->hash-table!
         _%lst135147%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst135147%_)
                _%args135148%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst135144%_ . _%args135145%_)
        (plist->hash-table!
         _%lst135144%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst135144%_)
                _%args135145%_))))
    (define plist->hash-table-string
      (lambda (_%lst135141%_ . _%args135142%_)
        (plist->hash-table!
         _%lst135141%_
         (apply make-hash-table-string
                'size:
                (length _%lst135141%_)
                _%args135142%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst135138%_ . _%args135139%_)
        (plist->hash-table!
         _%lst135138%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst135138%_)
                _%args135139%_))))
    (define plist->hash-table!
      (lambda (_%lst135061%_ _%h135062%_)
        (let _%loop135064%_ ((_%rest135066%_ _%lst135061%_))
          (let* ((_%$%rest135067135079%_ _%rest135066%_)
                 (_%$%E135071135083%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest135067135079%_
                           '([key val . rest])
                           '([])
                           'else)
                    (void)))
                 (_%$%else135070135087%_
                  (lambda ()
                    (error '"bad property list -- uneven list" _%lst135061%_)))
                 (_%$%try-match135069135095%_
                  (lambda ()
                    (let ((_%$%K135072135092%_ (lambda () _%h135062%_)))
                      (if (null? _%$%rest135067135079%_)
                          (_%$%K135072135092%_)
                          (_%$%else135070135087%_)))))
                 (_%$%K135073135119%_
                  (lambda (_%rest135098%_ _%val135099%_ _%key135100%_)
                    (let* ((_%self128303135102%_ _%h135062%_)
                           (_%key135105%_ _%key135100%_)
                           (_%value135108%_ _%val135099%_))
                      (declare (not safe))
                      (let ((_%object135111135116%_
                             (##unchecked-structure-ref
                              _%self128303135102%_
                              '1
                              '#f
                              'set!))
                            (_%method135112135117%_
                             (##unchecked-structure-ref
                              _%self128303135102%_
                              '8
                              '#f
                              'set!)))
                        (_%method135112135117%_
                         _%object135111135116%_
                         _%key135105%_
                         _%value135108%_)))
                    (_%loop135064%_ _%rest135098%_))))
            (if (pair? _%$%rest135067135079%_)
                (let ((_%$%hd135074135122%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest135067135079%_)))
                      (_%$%tl135075135124%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest135067135079%_))))
                  (let ((_%key135127%_ _%$%hd135074135122%_))
                    (if (pair? _%$%tl135075135124%_)
                        (let ((_%$%hd135076135129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl135075135124%_)))
                              (_%$%tl135077135131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl135075135124%_))))
                          (let* ((_%val135134%_ _%$%hd135076135129%_)
                                 (_%rest135136%_ _%$%tl135077135131%_))
                            (_%$%K135073135119%_
                             _%rest135136%_
                             _%val135134%_
                             _%key135127%_)))
                        (_%$%try-match135069135095%_))))
                (_%$%try-match135069135095%_))))))
    (define __hash-length
      (lambda (_%h135010%_)
        (let* ((_%h135013%_ _%h135010%_)
               (_%self127816135022%_ _%h135013%_)
               (_%self127816135029%_
                (let ((_%$obj135026%_ _%self127816135022%_))
                  (if (immediate-instance-of? HashTable::t _%$obj135026%_)
                      _%$obj135026%_
                      (cast HashTable::interface _%$obj135026%_))))
               (_%self127816135031%_ _%self127816135029%_))
          (if __DEBUG
              (let ((_%val135051%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object135043135048%_
                              (##unchecked-structure-ref
                               _%self127816135031%_
                               '1
                               '#f
                               'length))
                             (_%method135044135049%_
                              (##unchecked-structure-ref
                               _%self127816135031%_
                               '6
                               '#f
                               'length)))
                         (_%method135044135049%_ _%object135043135048%_)))))
                (if (fixnum? _%val135051%_)
                    _%val135051%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val135051%_)
                      (void))))
              (let ()
                (declare (not safe))
                (let ((_%object135053135058%_
                       (##unchecked-structure-ref
                        _%self127816135031%_
                        '1
                        '#f
                        'length))
                      (_%method135054135059%_
                       (##unchecked-structure-ref
                        _%self127816135031%_
                        '6
                        '#f
                        'length)))
                  (_%method135054135059%_ _%object135053135058%_)))))))
    (define hash-length
      (lambda (_%h134992%_)
        (let* ((_%h134998%_
                (let ((_%$obj134995%_ _%h134992%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134995%_)
                      _%$obj134995%_
                      (cast HashTable::interface _%$obj134995%_))))
               (_%h135000%_ _%h134998%_))
          (__hash-length _%h135000%_))))
    (define __hash-ref
      (let ((_%$%opt-lambda134918134980%_
             (lambda (_%h134920%_ _%key134921%_ _%default134922%_)
               (let* ((_%h134925%_ _%h134920%_)
                      (_%result134978%_
                       (let* ((_%self128060134934%_ _%h134925%_)
                              (_%key134937%_ _%key134921%_)
                              (_%default134940%_ _%default134922%_)
                              (_%self128060134947%_
                               (let ((_%$obj134944%_ _%self128060134934%_))
                                 (if (immediate-instance-of?
                                      HashTable::t
                                      _%$obj134944%_)
                                     _%$obj134944%_
                                     (cast HashTable::interface
                                           _%$obj134944%_))))
                              (_%self128060134949%_ _%self128060134947%_))
                         (if __DEBUG
                             (let ()
                               (declare (not safe))
                               (let ((_%object134963134968%_
                                      (##unchecked-structure-ref
                                       _%self128060134949%_
                                       '1
                                       '#f
                                       'ref))
                                     (_%method134964134969%_
                                      (##unchecked-structure-ref
                                       _%self128060134949%_
                                       '7
                                       '#f
                                       'ref)))
                                 (_%method134964134969%_
                                  _%object134963134968%_
                                  _%key134937%_
                                  _%default134940%_)))
                             (let ()
                               (declare (not safe))
                               (let ((_%object134970134975%_
                                      (##unchecked-structure-ref
                                       _%self128060134949%_
                                       '1
                                       '#f
                                       'ref))
                                     (_%method134971134976%_
                                      (##unchecked-structure-ref
                                       _%self128060134949%_
                                       '7
                                       '#f
                                       'ref)))
                                 (_%method134971134976%_
                                  _%object134970134975%_
                                  _%key134937%_
                                  _%default134940%_)))))))
                 (if (eq? _%result134978%_ (macro-absent-obj))
                     (raise-unbound-key-error
                      'hash-ref
                      '"unknown hash key"
                      'hash:
                      _%h134925%_
                      'key:
                      _%key134921%_)
                     _%result134978%_)))))
        (lambda _g141989_
          (let ((_g141990_ (let () (declare (not safe)) (##length _g141989_))))
            (cond ((let () (declare (not safe)) (##fx= _g141990_ 2))
                   (apply (lambda (_%h134983%_ _%key134984%_)
                            (let ((_%default134986%_ absent-obj))
                              (_%$%opt-lambda134918134980%_
                               _%h134983%_
                               _%key134984%_
                               _%default134986%_)))
                          _g141989_))
                  ((let () (declare (not safe)) (##fx= _g141990_ 3))
                   (apply _%$%opt-lambda134918134980%_ _g141989_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __hash-ref
                    _g141989_)))))))
    (define hash-ref
      (let ((_%$%opt-lambda134885134907%_
             (lambda (_%h134887%_ _%key134888%_ _%default134889%_)
               (let* ((_%h134895%_
                       (let ((_%$obj134892%_ _%h134887%_))
                         (if (immediate-instance-of?
                              HashTable::t
                              _%$obj134892%_)
                             _%$obj134892%_
                             (cast HashTable::interface _%$obj134892%_))))
                      (_%h134897%_ _%h134895%_))
                 (__hash-ref _%h134897%_ _%key134888%_ _%default134889%_)))))
        (lambda _g141991_
          (let ((_g141992_ (let () (declare (not safe)) (##length _g141991_))))
            (cond ((let () (declare (not safe)) (##fx= _g141992_ 2))
                   (apply (lambda (_%h134910%_ _%key134911%_)
                            (let ((_%default134913%_ absent-obj))
                              (_%$%opt-lambda134885134907%_
                               _%h134910%_
                               _%key134911%_
                               _%default134913%_)))
                          _g141991_))
                  ((let () (declare (not safe)) (##fx= _g141992_ 3))
                   (apply _%$%opt-lambda134885134907%_ _g141991_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    hash-ref
                    _g141991_)))))))
    (define __hash-get
      (lambda (_%h134829%_ _%key134830%_)
        (let* ((_%h134833%_ _%h134829%_)
               (_%self128060134842%_ _%h134833%_)
               (_%key134845%_ _%key134830%_)
               (_%default134848%_ '#f)
               (_%self128060134855%_
                (let ((_%$obj134852%_ _%self128060134842%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134852%_)
                      _%$obj134852%_
                      (cast HashTable::interface _%$obj134852%_))))
               (_%self128060134857%_ _%self128060134855%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object134871134876%_
                       (##unchecked-structure-ref
                        _%self128060134857%_
                        '1
                        '#f
                        'ref))
                      (_%method134872134877%_
                       (##unchecked-structure-ref
                        _%self128060134857%_
                        '7
                        '#f
                        'ref)))
                  (_%method134872134877%_
                   _%object134871134876%_
                   _%key134845%_
                   _%default134848%_)))
              (let ()
                (declare (not safe))
                (let ((_%object134878134883%_
                       (##unchecked-structure-ref
                        _%self128060134857%_
                        '1
                        '#f
                        'ref))
                      (_%method134879134884%_
                       (##unchecked-structure-ref
                        _%self128060134857%_
                        '7
                        '#f
                        'ref)))
                  (_%method134879134884%_
                   _%object134878134883%_
                   _%key134845%_
                   _%default134848%_)))))))
    (define hash-get
      (lambda (_%h134810%_ _%key134811%_)
        (let* ((_%h134817%_
                (let ((_%$obj134814%_ _%h134810%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134814%_)
                      _%$obj134814%_
                      (cast HashTable::interface _%$obj134814%_))))
               (_%h134819%_ _%h134817%_))
          (__hash-get _%h134819%_ _%key134811%_))))
    (define __hash-put!
      (lambda (_%h134752%_ _%key134753%_ _%value134754%_)
        (let* ((_%h134757%_ _%h134752%_)
               (_%self128304134766%_ _%h134757%_)
               (_%key134769%_ _%key134753%_)
               (_%value134772%_ _%value134754%_)
               (_%self128304134779%_
                (let ((_%$obj134776%_ _%self128304134766%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134776%_)
                      _%$obj134776%_
                      (cast HashTable::interface _%$obj134776%_))))
               (_%self128304134781%_ _%self128304134779%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object134795134800%_
                       (##unchecked-structure-ref
                        _%self128304134781%_
                        '1
                        '#f
                        'set!))
                      (_%method134796134801%_
                       (##unchecked-structure-ref
                        _%self128304134781%_
                        '8
                        '#f
                        'set!)))
                  (_%method134796134801%_
                   _%object134795134800%_
                   _%key134769%_
                   _%value134772%_)))
              (let ()
                (declare (not safe))
                (let ((_%object134802134807%_
                       (##unchecked-structure-ref
                        _%self128304134781%_
                        '1
                        '#f
                        'set!))
                      (_%method134803134808%_
                       (##unchecked-structure-ref
                        _%self128304134781%_
                        '8
                        '#f
                        'set!)))
                  (_%method134803134808%_
                   _%object134802134807%_
                   _%key134769%_
                   _%value134772%_)))))))
    (define hash-put!
      (lambda (_%h134732%_ _%key134733%_ _%value134734%_)
        (let* ((_%h134740%_
                (let ((_%$obj134737%_ _%h134732%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134737%_)
                      _%$obj134737%_
                      (cast HashTable::interface _%$obj134737%_))))
               (_%h134742%_ _%h134740%_))
          (__hash-put! _%h134742%_ _%key134733%_ _%value134734%_))))
    (define __hash-update!
      (let ((_%$%opt-lambda134643134718%_
             (lambda (_%h134645%_
                      _%key134646%_
                      _%update134647%_
                      _%default134648%_)
               (let* ((_%h134651%_ _%h134645%_)
                      (_%self128548134660%_ _%h134651%_)
                      (_%key134663%_ _%key134646%_)
                      (_%proc134666%_ _%update134647%_)
                      (_%default134669%_ _%default134648%_)
                      (_%self128548134676%_
                       (let ((_%$obj134673%_ _%self128548134660%_))
                         (if (immediate-instance-of?
                              HashTable::t
                              _%$obj134673%_)
                             _%$obj134673%_
                             (cast HashTable::interface _%$obj134673%_))))
                      (_%self128548134678%_ _%self128548134676%_))
                 (if (procedure? _%proc134666%_)
                     (let ((_%proc134694%_ _%proc134666%_))
                       (if __DEBUG
                           (let ()
                             (declare (not safe))
                             (let ((_%object134703134708%_
                                    (##unchecked-structure-ref
                                     _%self128548134678%_
                                     '1
                                     '#f
                                     'update!))
                                   (_%method134704134709%_
                                    (##unchecked-structure-ref
                                     _%self128548134678%_
                                     '9
                                     '#f
                                     'update!)))
                               (_%method134704134709%_
                                _%object134703134708%_
                                _%key134663%_
                                _%proc134694%_
                                _%default134669%_)))
                           (let ()
                             (declare (not safe))
                             (let ((_%object134710134715%_
                                    (##unchecked-structure-ref
                                     _%self128548134678%_
                                     '1
                                     '#f
                                     'update!))
                                   (_%method134711134716%_
                                    (##unchecked-structure-ref
                                     _%self128548134678%_
                                     '9
                                     '#f
                                     'update!)))
                               (_%method134711134716%_
                                _%object134710134715%_
                                _%key134663%_
                                _%proc134694%_
                                _%default134669%_)))))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        'procedure?
                        'value:
                        _%proc134666%_)
                       (void)))))))
        (lambda _g141993_
          (let ((_g141994_ (let () (declare (not safe)) (##length _g141993_))))
            (cond ((let () (declare (not safe)) (##fx= _g141994_ 3))
                   (apply (lambda (_%h134721%_ _%key134722%_ _%update134723%_)
                            (let ((_%default134725%_ '#!void))
                              (_%$%opt-lambda134643134718%_
                               _%h134721%_
                               _%key134722%_
                               _%update134723%_
                               _%default134725%_)))
                          _g141993_))
                  ((let () (declare (not safe)) (##fx= _g141994_ 4))
                   (apply _%$%opt-lambda134643134718%_ _g141993_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __hash-update!
                    _g141993_)))))))
    (define hash-update!
      (let ((_%$%opt-lambda134607134630%_
             (lambda (_%h134609%_
                      _%key134610%_
                      _%update134611%_
                      _%default134612%_)
               (let* ((_%h134618%_
                       (let ((_%$obj134615%_ _%h134609%_))
                         (if (immediate-instance-of?
                              HashTable::t
                              _%$obj134615%_)
                             _%$obj134615%_
                             (cast HashTable::interface _%$obj134615%_))))
                      (_%h134620%_ _%h134618%_))
                 (__hash-update!
                  _%h134620%_
                  _%key134610%_
                  _%update134611%_
                  _%default134612%_)))))
        (lambda _g141995_
          (let ((_g141996_ (let () (declare (not safe)) (##length _g141995_))))
            (cond ((let () (declare (not safe)) (##fx= _g141996_ 3))
                   (apply (lambda (_%h134633%_ _%key134634%_ _%update134635%_)
                            (let ((_%default134637%_ '#!void))
                              (_%$%opt-lambda134607134630%_
                               _%h134633%_
                               _%key134634%_
                               _%update134635%_
                               _%default134637%_)))
                          _g141995_))
                  ((let () (declare (not safe)) (##fx= _g141996_ 4))
                   (apply _%$%opt-lambda134607134630%_ _g141995_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    hash-update!
                    _g141995_)))))))
    (define __hash-remove!
      (lambda (_%h134555%_ _%key134556%_)
        (let* ((_%h134559%_ _%h134555%_)
               (_%self127328134568%_ _%h134559%_)
               (_%key134571%_ _%key134556%_)
               (_%self127328134578%_
                (let ((_%$obj134575%_ _%self127328134568%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134575%_)
                      _%$obj134575%_
                      (cast HashTable::interface _%$obj134575%_))))
               (_%self127328134580%_ _%self127328134578%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object134593134598%_
                       (##unchecked-structure-ref
                        _%self127328134580%_
                        '1
                        '#f
                        'delete!))
                      (_%method134594134599%_
                       (##unchecked-structure-ref
                        _%self127328134580%_
                        '4
                        '#f
                        'delete!)))
                  (_%method134594134599%_
                   _%object134593134598%_
                   _%key134571%_)))
              (let ()
                (declare (not safe))
                (let ((_%object134600134605%_
                       (##unchecked-structure-ref
                        _%self127328134580%_
                        '1
                        '#f
                        'delete!))
                      (_%method134601134606%_
                       (##unchecked-structure-ref
                        _%self127328134580%_
                        '4
                        '#f
                        'delete!)))
                  (_%method134601134606%_
                   _%object134600134605%_
                   _%key134571%_)))))))
    (define hash-remove!
      (lambda (_%h134536%_ _%key134537%_)
        (let* ((_%h134543%_
                (let ((_%$obj134540%_ _%h134536%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134540%_)
                      _%$obj134540%_
                      (cast HashTable::interface _%$obj134540%_))))
               (_%h134545%_ _%h134543%_))
          (__hash-remove! _%h134545%_ _%key134537%_))))
    (define __hash-key?
      (lambda (_%h134479%_ _%k134480%_)
        (let ((_%h134483%_ _%h134479%_))
          (not (eq? (let* ((_%self128060134492%_ _%h134483%_)
                           (_%key134495%_ _%k134480%_)
                           (_%default134498%_ absent-value)
                           (_%self128060134505%_
                            (let ((_%$obj134502%_ _%self128060134492%_))
                              (if (immediate-instance-of?
                                   HashTable::t
                                   _%$obj134502%_)
                                  _%$obj134502%_
                                  (cast HashTable::interface _%$obj134502%_))))
                           (_%self128060134507%_ _%self128060134505%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object134521134526%_
                                   (##unchecked-structure-ref
                                    _%self128060134507%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method134522134527%_
                                   (##unchecked-structure-ref
                                    _%self128060134507%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method134522134527%_
                               _%object134521134526%_
                               _%key134495%_
                               _%default134498%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object134528134533%_
                                   (##unchecked-structure-ref
                                    _%self128060134507%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method134529134534%_
                                   (##unchecked-structure-ref
                                    _%self128060134507%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method134529134534%_
                               _%object134528134533%_
                               _%key134495%_
                               _%default134498%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h134460%_ _%k134461%_)
        (let* ((_%h134467%_
                (let ((_%$obj134464%_ _%h134460%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134464%_)
                      _%$obj134464%_
                      (cast HashTable::interface _%$obj134464%_))))
               (_%h134469%_ _%h134467%_))
          (__hash-key? _%h134469%_ _%k134461%_))))
    (define __hash->list
      (lambda (_%h134392%_)
        (let* ((_%h134395%_ _%h134392%_) (_%lst134404%_ '()))
          (let* ((_%self127572134406%_ _%h134395%_)
                 (_%proc134412%_
                  (lambda (_%k134409%_ _%v134410%_)
                    (set! _%lst134404%_
                          (cons (cons _%k134409%_ _%v134410%_)
                                _%lst134404%_))))
                 (_%self127572134419%_
                  (let ((_%$obj134416%_ _%self127572134406%_))
                    (if (immediate-instance-of? HashTable::t _%$obj134416%_)
                        _%$obj134416%_
                        (cast HashTable::interface _%$obj134416%_))))
                 (_%self127572134421%_ _%self127572134419%_))
            (if (procedure? _%proc134412%_)
                (let ((_%proc134436%_ _%proc134412%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object134445134450%_
                               (##unchecked-structure-ref
                                _%self127572134421%_
                                '1
                                '#f
                                'for-each))
                              (_%method134446134451%_
                               (##unchecked-structure-ref
                                _%self127572134421%_
                                '5
                                '#f
                                'for-each)))
                          (_%method134446134451%_
                           _%object134445134450%_
                           _%proc134436%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object134452134457%_
                               (##unchecked-structure-ref
                                _%self127572134421%_
                                '1
                                '#f
                                'for-each))
                              (_%method134453134458%_
                               (##unchecked-structure-ref
                                _%self127572134421%_
                                '5
                                '#f
                                'for-each)))
                          (_%method134453134458%_
                           _%object134452134457%_
                           _%proc134436%_)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc134412%_)
                  (void))))
          _%lst134404%_)))
    (define hash->list
      (lambda (_%h134374%_)
        (let* ((_%h134380%_
                (let ((_%$obj134377%_ _%h134374%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134377%_)
                      _%$obj134377%_
                      (cast HashTable::interface _%$obj134377%_))))
               (_%h134382%_ _%h134380%_))
          (__hash->list _%h134382%_))))
    (define __hash->plist
      (lambda (_%h134306%_)
        (let* ((_%h134309%_ _%h134306%_) (_%lst134318%_ '()))
          (let* ((_%self127572134320%_ _%h134309%_)
                 (_%proc134326%_
                  (lambda (_%k134323%_ _%v134324%_)
                    (set! _%lst134318%_
                          (cons* _%k134323%_ _%v134324%_ _%lst134318%_))))
                 (_%self127572134333%_
                  (let ((_%$obj134330%_ _%self127572134320%_))
                    (if (immediate-instance-of? HashTable::t _%$obj134330%_)
                        _%$obj134330%_
                        (cast HashTable::interface _%$obj134330%_))))
                 (_%self127572134335%_ _%self127572134333%_))
            (if (procedure? _%proc134326%_)
                (let ((_%proc134350%_ _%proc134326%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object134359134364%_
                               (##unchecked-structure-ref
                                _%self127572134335%_
                                '1
                                '#f
                                'for-each))
                              (_%method134360134365%_
                               (##unchecked-structure-ref
                                _%self127572134335%_
                                '5
                                '#f
                                'for-each)))
                          (_%method134360134365%_
                           _%object134359134364%_
                           _%proc134350%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object134366134371%_
                               (##unchecked-structure-ref
                                _%self127572134335%_
                                '1
                                '#f
                                'for-each))
                              (_%method134367134372%_
                               (##unchecked-structure-ref
                                _%self127572134335%_
                                '5
                                '#f
                                'for-each)))
                          (_%method134367134372%_
                           _%object134366134371%_
                           _%proc134350%_)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc134326%_)
                  (void))))
          _%lst134318%_)))
    (define hash->plist
      (lambda (_%h134288%_)
        (let* ((_%h134294%_
                (let ((_%$obj134291%_ _%h134288%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134291%_)
                      _%$obj134291%_
                      (cast HashTable::interface _%$obj134291%_))))
               (_%h134296%_ _%h134294%_))
          (__hash->plist _%h134296%_))))
    (define __hash-for-each
      (lambda (_%proc134217%_ _%h134218%_)
        (let* ((_%proc134221%_ _%proc134217%_)
               (_%h134229%_ _%h134218%_)
               (_%self127572134238%_ _%h134229%_)
               (_%proc134241%_ _%proc134221%_)
               (_%self127572134248%_
                (let ((_%$obj134245%_ _%self127572134238%_))
                  (if (immediate-instance-of? HashTable::t _%$obj134245%_)
                      _%$obj134245%_
                      (cast HashTable::interface _%$obj134245%_))))
               (_%self127572134250%_ _%self127572134248%_))
          (if (procedure? _%proc134241%_)
              (let ((_%proc134264%_ _%proc134241%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object134273134278%_
                             (##unchecked-structure-ref
                              _%self127572134250%_
                              '1
                              '#f
                              'for-each))
                            (_%method134274134279%_
                             (##unchecked-structure-ref
                              _%self127572134250%_
                              '5
                              '#f
                              'for-each)))
                        (_%method134274134279%_
                         _%object134273134278%_
                         _%proc134264%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object134280134285%_
                             (##unchecked-structure-ref
                              _%self127572134250%_
                              '1
                              '#f
                              'for-each))
                            (_%method134281134286%_
                             (##unchecked-structure-ref
                              _%self127572134250%_
                              '5
                              '#f
                              'for-each)))
                        (_%method134281134286%_
                         _%object134280134285%_
                         _%proc134264%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc134241%_)
                (void))))))
    (define hash-for-each
      (lambda (_%proc134188%_ _%h134189%_)
        (if (procedure? _%proc134188%_)
            (let* ((_%proc134193%_ _%proc134188%_)
                   (_%h134205%_
                    (let ((_%$obj134202%_ _%h134189%_))
                      (if (immediate-instance-of? HashTable::t _%$obj134202%_)
                          _%$obj134202%_
                          (cast HashTable::interface _%$obj134202%_))))
                   (_%h134207%_ _%h134205%_))
              (__hash-for-each _%proc134193%_ _%h134207%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@584.22-584.26"
               'contract:
               'procedure?
               'value:
               _%proc134188%_)
              (void)))))
    (define __hash-map
      (lambda (_%proc134111%_ _%h134112%_)
        (let* ((_%proc134115%_ _%proc134111%_)
               (_%h134123%_ _%h134112%_)
               (_%result134132%_ '()))
          (let* ((_%self127572134134%_ _%h134123%_)
                 (_%proc134140%_
                  (lambda (_%k134137%_ _%v134138%_)
                    (set! _%result134132%_
                          (cons (_%proc134115%_ _%k134137%_ _%v134138%_)
                                _%result134132%_))))
                 (_%self127572134147%_
                  (let ((_%$obj134144%_ _%self127572134134%_))
                    (if (immediate-instance-of? HashTable::t _%$obj134144%_)
                        _%$obj134144%_
                        (cast HashTable::interface _%$obj134144%_))))
                 (_%self127572134149%_ _%self127572134147%_))
            (if (procedure? _%proc134140%_)
                (let ((_%proc134164%_ _%proc134140%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object134173134178%_
                               (##unchecked-structure-ref
                                _%self127572134149%_
                                '1
                                '#f
                                'for-each))
                              (_%method134174134179%_
                               (##unchecked-structure-ref
                                _%self127572134149%_
                                '5
                                '#f
                                'for-each)))
                          (_%method134174134179%_
                           _%object134173134178%_
                           _%proc134164%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object134180134185%_
                               (##unchecked-structure-ref
                                _%self127572134149%_
                                '1
                                '#f
                                'for-each))
                              (_%method134181134186%_
                               (##unchecked-structure-ref
                                _%self127572134149%_
                                '5
                                '#f
                                'for-each)))
                          (_%method134181134186%_
                           _%object134180134185%_
                           _%proc134164%_)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc134140%_)
                  (void))))
          _%result134132%_)))
    (define hash-map
      (lambda (_%proc134082%_ _%h134083%_)
        (if (procedure? _%proc134082%_)
            (let* ((_%proc134087%_ _%proc134082%_)
                   (_%h134099%_
                    (let ((_%$obj134096%_ _%h134083%_))
                      (if (immediate-instance-of? HashTable::t _%$obj134096%_)
                          _%$obj134096%_
                          (cast HashTable::interface _%$obj134096%_))))
                   (_%h134101%_ _%h134099%_))
              (__hash-map _%proc134087%_ _%h134101%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@587.17-587.21"
               'contract:
               'procedure?
               'value:
               _%proc134082%_)
              (void)))))
    (define __hash-fold
      (lambda (_%proc134004%_ _%iv134005%_ _%h134006%_)
        (let* ((_%proc134009%_ _%proc134004%_)
               (_%h134017%_ _%h134006%_)
               (_%result134026%_ _%iv134005%_))
          (let* ((_%self127572134028%_ _%h134017%_)
                 (_%proc134034%_
                  (lambda (_%k134031%_ _%v134032%_)
                    (set! _%result134026%_
                          (_%proc134009%_
                           _%k134031%_
                           _%v134032%_
                           _%result134026%_))))
                 (_%self127572134041%_
                  (let ((_%$obj134038%_ _%self127572134028%_))
                    (if (immediate-instance-of? HashTable::t _%$obj134038%_)
                        _%$obj134038%_
                        (cast HashTable::interface _%$obj134038%_))))
                 (_%self127572134043%_ _%self127572134041%_))
            (if (procedure? _%proc134034%_)
                (let ((_%proc134058%_ _%proc134034%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object134067134072%_
                               (##unchecked-structure-ref
                                _%self127572134043%_
                                '1
                                '#f
                                'for-each))
                              (_%method134068134073%_
                               (##unchecked-structure-ref
                                _%self127572134043%_
                                '5
                                '#f
                                'for-each)))
                          (_%method134068134073%_
                           _%object134067134072%_
                           _%proc134058%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object134074134079%_
                               (##unchecked-structure-ref
                                _%self127572134043%_
                                '1
                                '#f
                                'for-each))
                              (_%method134075134080%_
                               (##unchecked-structure-ref
                                _%self127572134043%_
                                '5
                                '#f
                                'for-each)))
                          (_%method134075134080%_
                           _%object134074134079%_
                           _%proc134058%_)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc134034%_)
                  (void))))
          _%result134026%_)))
    (define hash-fold
      (lambda (_%proc133974%_ _%iv133975%_ _%h133976%_)
        (if (procedure? _%proc133974%_)
            (let* ((_%proc133980%_ _%proc133974%_)
                   (_%h133992%_
                    (let ((_%$obj133989%_ _%h133976%_))
                      (if (immediate-instance-of? HashTable::t _%$obj133989%_)
                          _%$obj133989%_
                          (cast HashTable::interface _%$obj133989%_))))
                   (_%h133994%_ _%h133992%_))
              (__hash-fold _%proc133980%_ _%iv133975%_ _%h133994%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@593.18-593.22"
               'contract:
               'procedure?
               'value:
               _%proc133974%_)
              (void)))))
    (define __hash-find
      (let ((_%$%opt-lambda133879133962%_
             (lambda (_%proc133881%_ _%h133882%_ _%default-value133883%_)
               (let* ((_%proc133886%_ _%proc133881%_)
                      (_%h133894%_ _%h133882%_))
                 (call/cc (lambda (_%return133903%_)
                            (let* ((_%self127572133905%_ _%h133894%_)
                                   (_%proc133914%_
                                    (lambda (_%k133908%_ _%v133909%_)
                                      (let ((_%$e133911%_
                                             (_%proc133886%_
                                              _%k133908%_
                                              _%v133909%_)))
                                        (if _%$e133911%_
                                            (_%return133903%_ _%$e133911%_)
                                            '#!void))))
                                   (_%self127572133921%_
                                    (let ((_%$obj133918%_
                                           _%self127572133905%_))
                                      (if (immediate-instance-of?
                                           HashTable::t
                                           _%$obj133918%_)
                                          _%$obj133918%_
                                          (cast HashTable::interface
                                                _%$obj133918%_))))
                                   (_%self127572133923%_ _%self127572133921%_))
                              (if (procedure? _%proc133914%_)
                                  (let ((_%proc133938%_ _%proc133914%_))
                                    (if __DEBUG
                                        (let ()
                                          (declare (not safe))
                                          (let ((_%object133947133952%_
                                                 (##unchecked-structure-ref
                                                  _%self127572133923%_
                                                  '1
                                                  '#f
                                                  'for-each))
                                                (_%method133948133953%_
                                                 (##unchecked-structure-ref
                                                  _%self127572133923%_
                                                  '5
                                                  '#f
                                                  'for-each)))
                                            (_%method133948133953%_
                                             _%object133947133952%_
                                             _%proc133938%_)))
                                        (let ()
                                          (declare (not safe))
                                          (let ((_%object133954133959%_
                                                 (##unchecked-structure-ref
                                                  _%self127572133923%_
                                                  '1
                                                  '#f
                                                  'for-each))
                                                (_%method133955133960%_
                                                 (##unchecked-structure-ref
                                                  _%self127572133923%_
                                                  '5
                                                  '#f
                                                  'for-each)))
                                            (_%method133955133960%_
                                             _%object133954133959%_
                                             _%proc133938%_)))))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/hash
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%proc133914%_)
                                    (void))))
                            _%default-value133883%_))))))
        (lambda _g141997_
          (let ((_g141998_ (let () (declare (not safe)) (##length _g141997_))))
            (cond ((let () (declare (not safe)) (##fx= _g141998_ 2))
                   (apply (lambda (_%proc133965%_ _%h133966%_)
                            (let ((_%default-value133968%_ '#f))
                              (_%$%opt-lambda133879133962%_
                               _%proc133965%_
                               _%h133966%_
                               _%default-value133968%_)))
                          _g141997_))
                  ((let () (declare (not safe)) (##fx= _g141998_ 3))
                   (apply _%$%opt-lambda133879133962%_ _g141997_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __hash-find
                    _g141997_)))))))
    (define hash-find
      (let ((_%$%opt-lambda133836133868%_
             (lambda (_%proc133838%_ _%h133839%_ _%default-value133840%_)
               (if (procedure? _%proc133838%_)
                   (let* ((_%proc133844%_ _%proc133838%_)
                          (_%h133856%_
                           (let ((_%$obj133853%_ _%h133839%_))
                             (if (immediate-instance-of?
                                  HashTable::t
                                  _%$obj133853%_)
                                 _%$obj133853%_
                                 (cast HashTable::interface _%$obj133853%_))))
                          (_%h133858%_ _%h133856%_))
                     (__hash-find
                      _%proc133844%_
                      _%h133858%_
                      _%default-value133840%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
                      'contract:
                      'procedure?
                      'value:
                      _%proc133838%_)
                     (void))))))
        (lambda _g141999_
          (let ((_g142000_ (let () (declare (not safe)) (##length _g141999_))))
            (cond ((let () (declare (not safe)) (##fx= _g142000_ 2))
                   (apply (lambda (_%proc133871%_ _%h133872%_)
                            (let ((_%default-value133874%_ '#f))
                              (_%$%opt-lambda133836133868%_
                               _%proc133871%_
                               _%h133872%_
                               _%default-value133874%_)))
                          _g141999_))
                  ((let () (declare (not safe)) (##fx= _g142000_ 3))
                   (apply _%$%opt-lambda133836133868%_ _g141999_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    hash-find
                    _g141999_)))))))
    (define __hash-keys
      (lambda (_%h133769%_)
        (let* ((_%h133772%_ _%h133769%_) (_%result133781%_ '()))
          (let* ((_%self127572133783%_ _%h133772%_)
                 (_%proc133789%_
                  (lambda (_%k133786%_ _%v133787%_)
                    (set! _%result133781%_
                          (cons _%k133786%_ _%result133781%_))))
                 (_%self127572133796%_
                  (let ((_%$obj133793%_ _%self127572133783%_))
                    (if (immediate-instance-of? HashTable::t _%$obj133793%_)
                        _%$obj133793%_
                        (cast HashTable::interface _%$obj133793%_))))
                 (_%self127572133798%_ _%self127572133796%_))
            (if (procedure? _%proc133789%_)
                (let ((_%proc133813%_ _%proc133789%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object133822133827%_
                               (##unchecked-structure-ref
                                _%self127572133798%_
                                '1
                                '#f
                                'for-each))
                              (_%method133823133828%_
                               (##unchecked-structure-ref
                                _%self127572133798%_
                                '5
                                '#f
                                'for-each)))
                          (_%method133823133828%_
                           _%object133822133827%_
                           _%proc133813%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object133829133834%_
                               (##unchecked-structure-ref
                                _%self127572133798%_
                                '1
                                '#f
                                'for-each))
                              (_%method133830133835%_
                               (##unchecked-structure-ref
                                _%self127572133798%_
                                '5
                                '#f
                                'for-each)))
                          (_%method133830133835%_
                           _%object133829133834%_
                           _%proc133813%_)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc133789%_)
                  (void))))
          _%result133781%_)))
    (define hash-keys
      (lambda (_%h133751%_)
        (let* ((_%h133757%_
                (let ((_%$obj133754%_ _%h133751%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133754%_)
                      _%$obj133754%_
                      (cast HashTable::interface _%$obj133754%_))))
               (_%h133759%_ _%h133757%_))
          (__hash-keys _%h133759%_))))
    (define __hash-values
      (lambda (_%h133683%_)
        (let* ((_%h133686%_ _%h133683%_) (_%result133695%_ '()))
          (let* ((_%self127572133697%_ _%h133686%_)
                 (_%proc133703%_
                  (lambda (_%k133700%_ _%v133701%_)
                    (set! _%result133695%_
                          (cons _%v133701%_ _%result133695%_))))
                 (_%self127572133710%_
                  (let ((_%$obj133707%_ _%self127572133697%_))
                    (if (immediate-instance-of? HashTable::t _%$obj133707%_)
                        _%$obj133707%_
                        (cast HashTable::interface _%$obj133707%_))))
                 (_%self127572133712%_ _%self127572133710%_))
            (if (procedure? _%proc133703%_)
                (let ((_%proc133727%_ _%proc133703%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object133736133741%_
                               (##unchecked-structure-ref
                                _%self127572133712%_
                                '1
                                '#f
                                'for-each))
                              (_%method133737133742%_
                               (##unchecked-structure-ref
                                _%self127572133712%_
                                '5
                                '#f
                                'for-each)))
                          (_%method133737133742%_
                           _%object133736133741%_
                           _%proc133727%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object133743133748%_
                               (##unchecked-structure-ref
                                _%self127572133712%_
                                '1
                                '#f
                                'for-each))
                              (_%method133744133749%_
                               (##unchecked-structure-ref
                                _%self127572133712%_
                                '5
                                '#f
                                'for-each)))
                          (_%method133744133749%_
                           _%object133743133748%_
                           _%proc133727%_)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/runtime/hash
                   'contract:
                   'procedure?
                   'value:
                   _%proc133703%_)
                  (void))))
          _%result133695%_)))
    (define hash-values
      (lambda (_%h133665%_)
        (let* ((_%h133671%_
                (let ((_%$obj133668%_ _%h133665%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133668%_)
                      _%$obj133668%_
                      (cast HashTable::interface _%$obj133668%_))))
               (_%h133673%_ _%h133671%_))
          (__hash-values _%h133673%_))))
    (define __hash-copy
      (lambda (_%h133614%_)
        (let* ((_%h133617%_ _%h133614%_)
               (_%self127084133626%_ _%h133617%_)
               (_%self127084133633%_
                (let ((_%$obj133630%_ _%self127084133626%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133630%_)
                      _%$obj133630%_
                      (cast HashTable::interface _%$obj133630%_))))
               (_%self127084133635%_ _%self127084133633%_))
          (if __DEBUG
              (let ((_%$obj133655%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object133647133652%_
                              (##unchecked-structure-ref
                               _%self127084133635%_
                               '1
                               '#f
                               'copy))
                             (_%method133648133653%_
                              (##unchecked-structure-ref
                               _%self127084133635%_
                               '3
                               '#f
                               'copy)))
                         (_%method133648133653%_ _%object133647133652%_)))))
                (if (immediate-instance-of? HashTable::t _%$obj133655%_)
                    _%$obj133655%_
                    (cast HashTable::interface _%$obj133655%_)))
              (let ()
                (declare (not safe))
                (let ((_%object133657133662%_
                       (##unchecked-structure-ref
                        _%self127084133635%_
                        '1
                        '#f
                        'copy))
                      (_%method133658133663%_
                       (##unchecked-structure-ref
                        _%self127084133635%_
                        '3
                        '#f
                        'copy)))
                  (_%method133658133663%_ _%object133657133662%_)))))))
    (define hash-copy
      (lambda (_%h133596%_)
        (let* ((_%h133602%_
                (let ((_%$obj133599%_ _%h133596%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133599%_)
                      _%$obj133599%_
                      (cast HashTable::interface _%$obj133599%_))))
               (_%h133604%_ _%h133602%_))
          (__hash-copy _%h133604%_))))
    (define __hash-clear!
      (lambda (_%h133548%_)
        (let* ((_%h133551%_ _%h133548%_)
               (_%self126839133560%_ _%h133551%_)
               (_%self126839133567%_
                (let ((_%$obj133564%_ _%self126839133560%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133564%_)
                      _%$obj133564%_
                      (cast HashTable::interface _%$obj133564%_))))
               (_%self126839133569%_ _%self126839133567%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object133581133586%_
                       (##unchecked-structure-ref
                        _%self126839133569%_
                        '1
                        '#f
                        'clear!))
                      (_%method133582133587%_
                       (##unchecked-structure-ref
                        _%self126839133569%_
                        '2
                        '#f
                        'clear!)))
                  (_%method133582133587%_ _%object133581133586%_)))
              (let ()
                (declare (not safe))
                (let ((_%object133588133593%_
                       (##unchecked-structure-ref
                        _%self126839133569%_
                        '1
                        '#f
                        'clear!))
                      (_%method133589133594%_
                       (##unchecked-structure-ref
                        _%self126839133569%_
                        '2
                        '#f
                        'clear!)))
                  (_%method133589133594%_ _%object133588133593%_)))))))
    (define hash-clear!
      (lambda (_%h133530%_)
        (let* ((_%h133536%_
                (let ((_%$obj133533%_ _%h133530%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133533%_)
                      _%$obj133533%_
                      (cast HashTable::interface _%$obj133533%_))))
               (_%h133538%_ _%h133536%_))
          (__hash-clear! _%h133538%_))))
    (define __hash-merge
      (lambda (_%h133476%_ . _%rest133477%_)
        (let* ((_%h133480%_ _%h133476%_)
               (_%copy133528%_
                (let* ((_%self127084133489%_ _%h133480%_)
                       (_%self127084133496%_
                        (let ((_%$obj133493%_ _%self127084133489%_))
                          (if (immediate-instance-of?
                               HashTable::t
                               _%$obj133493%_)
                              _%$obj133493%_
                              (cast HashTable::interface _%$obj133493%_))))
                       (_%self127084133498%_ _%self127084133496%_))
                  (if __DEBUG
                      (let ((_%$obj133518%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object133510133515%_
                                      (##unchecked-structure-ref
                                       _%self127084133498%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method133511133516%_
                                      (##unchecked-structure-ref
                                       _%self127084133498%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method133511133516%_
                                  _%object133510133515%_)))))
                        (if (immediate-instance-of?
                             HashTable::t
                             _%$obj133518%_)
                            _%$obj133518%_
                            (cast HashTable::interface _%$obj133518%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object133520133525%_
                               (##unchecked-structure-ref
                                _%self127084133498%_
                                '1
                                '#f
                                'copy))
                              (_%method133521133526%_
                               (##unchecked-structure-ref
                                _%self127084133498%_
                                '3
                                '#f
                                'copy)))
                          (_%method133521133526%_ _%object133520133525%_)))))))
          (apply hash-merge! _%copy133528%_ _%rest133477%_)
          _%copy133528%_)))
    (define hash-merge
      (lambda (_%h133457%_ . _%rest133458%_)
        (let* ((_%h133464%_
                (let ((_%$obj133461%_ _%h133457%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133461%_)
                      _%$obj133461%_
                      (cast HashTable::interface _%$obj133461%_))))
               (_%h133466%_ _%h133464%_))
          (declare (not safe))
          (##apply __hash-merge _%h133466%_ _%rest133458%_))))
    (define __hash-merge-right
      (lambda (_%h133403%_ . _%rest133404%_)
        (let* ((_%h133407%_ _%h133403%_)
               (_%copy133455%_
                (let* ((_%self127084133416%_ _%h133407%_)
                       (_%self127084133423%_
                        (let ((_%$obj133420%_ _%self127084133416%_))
                          (if (immediate-instance-of?
                               HashTable::t
                               _%$obj133420%_)
                              _%$obj133420%_
                              (cast HashTable::interface _%$obj133420%_))))
                       (_%self127084133425%_ _%self127084133423%_))
                  (if __DEBUG
                      (let ((_%$obj133445%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object133437133442%_
                                      (##unchecked-structure-ref
                                       _%self127084133425%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method133438133443%_
                                      (##unchecked-structure-ref
                                       _%self127084133425%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method133438133443%_
                                  _%object133437133442%_)))))
                        (if (immediate-instance-of?
                             HashTable::t
                             _%$obj133445%_)
                            _%$obj133445%_
                            (cast HashTable::interface _%$obj133445%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object133447133452%_
                               (##unchecked-structure-ref
                                _%self127084133425%_
                                '1
                                '#f
                                'copy))
                              (_%method133448133453%_
                               (##unchecked-structure-ref
                                _%self127084133425%_
                                '3
                                '#f
                                'copy)))
                          (_%method133448133453%_ _%object133447133452%_)))))))
          (apply hash-merge-right! _%copy133455%_ _%rest133404%_)
          _%copy133455%_)))
    (define hash-merge-right
      (lambda (_%h133384%_ . _%rest133385%_)
        (let* ((_%h133391%_
                (let ((_%$obj133388%_ _%h133384%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133388%_)
                      _%$obj133388%_
                      (cast HashTable::interface _%$obj133388%_))))
               (_%h133393%_ _%h133391%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h133393%_ _%rest133385%_))))
    (define __hash-merge!
      (lambda (_%h133232%_ . _%rest133233%_)
        (let ((_%h133236%_ _%h133232%_))
          (for-each
           (lambda (_%hr133245%_)
             (let* ((_%hr133251%_
                     (let ((_%$obj133248%_ _%hr133245%_))
                       (if (immediate-instance-of? HashTable::t _%$obj133248%_)
                           _%$obj133248%_
                           (cast HashTable::interface _%$obj133248%_))))
                    (_%hr133253%_ _%hr133251%_)
                    (_%self127572133266%_ _%hr133253%_)
                    (_%proc133341%_
                     (lambda (_%k133269%_ _%v133270%_)
                       (if (let* ((_%h133272%_ _%h133236%_)
                                  (_%k133275%_ _%k133269%_)
                                  (_%h133282%_
                                   (let ((_%$obj133279%_ _%h133272%_))
                                     (if (immediate-instance-of?
                                          HashTable::t
                                          _%$obj133279%_)
                                         _%$obj133279%_
                                         (cast HashTable::interface
                                               _%$obj133279%_))))
                                  (_%h133284%_ _%h133282%_))
                             (__hash-key? _%h133284%_ _%k133275%_))
                           '#!void
                           (let* ((_%self128304133300%_ _%h133236%_)
                                  (_%key133303%_ _%k133269%_)
                                  (_%value133306%_ _%v133270%_)
                                  (_%self128304133313%_
                                   (let ((_%$obj133310%_ _%self128304133300%_))
                                     (if (immediate-instance-of?
                                          HashTable::t
                                          _%$obj133310%_)
                                         _%$obj133310%_
                                         (cast HashTable::interface
                                               _%$obj133310%_))))
                                  (_%self128304133315%_ _%self128304133313%_))
                             (if __DEBUG
                                 (let ()
                                   (declare (not safe))
                                   (let ((_%object133326133331%_
                                          (##unchecked-structure-ref
                                           _%self128304133315%_
                                           '1
                                           '#f
                                           'set!))
                                         (_%method133327133332%_
                                          (##unchecked-structure-ref
                                           _%self128304133315%_
                                           '8
                                           '#f
                                           'set!)))
                                     (_%method133327133332%_
                                      _%object133326133331%_
                                      _%key133303%_
                                      _%value133306%_)))
                                 (let ()
                                   (declare (not safe))
                                   (let ((_%object133333133338%_
                                          (##unchecked-structure-ref
                                           _%self128304133315%_
                                           '1
                                           '#f
                                           'set!))
                                         (_%method133334133339%_
                                          (##unchecked-structure-ref
                                           _%self128304133315%_
                                           '8
                                           '#f
                                           'set!)))
                                     (_%method133334133339%_
                                      _%object133333133338%_
                                      _%key133303%_
                                      _%value133306%_))))))))
                    (_%self127572133348%_
                     (let ((_%$obj133345%_ _%self127572133266%_))
                       (if (immediate-instance-of? HashTable::t _%$obj133345%_)
                           _%$obj133345%_
                           (cast HashTable::interface _%$obj133345%_))))
                    (_%self127572133350%_ _%self127572133348%_))
               (if (procedure? _%proc133341%_)
                   (let ((_%proc133360%_ _%proc133341%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object133369133374%_
                                  (##unchecked-structure-ref
                                   _%self127572133350%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method133370133375%_
                                  (##unchecked-structure-ref
                                   _%self127572133350%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method133370133375%_
                              _%object133369133374%_
                              _%proc133360%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object133376133381%_
                                  (##unchecked-structure-ref
                                   _%self127572133350%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method133377133382%_
                                  (##unchecked-structure-ref
                                   _%self127572133350%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method133377133382%_
                              _%object133376133381%_
                              _%proc133360%_)))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/hash
                      'contract:
                      'procedure?
                      'value:
                      _%proc133341%_)
                     (void)))))
           _%rest133233%_)
          _%h133236%_)))
    (define hash-merge!
      (lambda (_%h133213%_ . _%rest133214%_)
        (let* ((_%h133220%_
                (let ((_%$obj133217%_ _%h133213%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133217%_)
                      _%$obj133217%_
                      (cast HashTable::interface _%$obj133217%_))))
               (_%h133222%_ _%h133220%_))
          (declare (not safe))
          (##apply __hash-merge! _%h133222%_ _%rest133214%_))))
    (define __hash-merge-right!
      (lambda (_%h133084%_ . _%rest133085%_)
        (let ((_%h133088%_ _%h133084%_))
          (for-each
           (lambda (_%hr133097%_)
             (let* ((_%hr133103%_
                     (let ((_%$obj133100%_ _%hr133097%_))
                       (if (immediate-instance-of? HashTable::t _%$obj133100%_)
                           _%$obj133100%_
                           (cast HashTable::interface _%$obj133100%_))))
                    (_%hr133105%_ _%hr133103%_)
                    (_%self127572133118%_ _%hr133105%_)
                    (_%proc133170%_
                     (lambda (_%k133121%_ _%v133122%_)
                       (let* ((_%self128304133124%_ _%h133088%_)
                              (_%key133127%_ _%k133121%_)
                              (_%value133130%_ _%v133122%_)
                              (_%self128304133137%_
                               (let ((_%$obj133134%_ _%self128304133124%_))
                                 (if (immediate-instance-of?
                                      HashTable::t
                                      _%$obj133134%_)
                                     _%$obj133134%_
                                     (cast HashTable::interface
                                           _%$obj133134%_))))
                              (_%self128304133139%_ _%self128304133137%_))
                         (if __DEBUG
                             (let ()
                               (declare (not safe))
                               (let ((_%object133155133160%_
                                      (##unchecked-structure-ref
                                       _%self128304133139%_
                                       '1
                                       '#f
                                       'set!))
                                     (_%method133156133161%_
                                      (##unchecked-structure-ref
                                       _%self128304133139%_
                                       '8
                                       '#f
                                       'set!)))
                                 (_%method133156133161%_
                                  _%object133155133160%_
                                  _%key133127%_
                                  _%value133130%_)))
                             (let ()
                               (declare (not safe))
                               (let ((_%object133162133167%_
                                      (##unchecked-structure-ref
                                       _%self128304133139%_
                                       '1
                                       '#f
                                       'set!))
                                     (_%method133163133168%_
                                      (##unchecked-structure-ref
                                       _%self128304133139%_
                                       '8
                                       '#f
                                       'set!)))
                                 (_%method133163133168%_
                                  _%object133162133167%_
                                  _%key133127%_
                                  _%value133130%_)))))))
                    (_%self127572133177%_
                     (let ((_%$obj133174%_ _%self127572133118%_))
                       (if (immediate-instance-of? HashTable::t _%$obj133174%_)
                           _%$obj133174%_
                           (cast HashTable::interface _%$obj133174%_))))
                    (_%self127572133179%_ _%self127572133177%_))
               (if (procedure? _%proc133170%_)
                   (let ((_%proc133189%_ _%proc133170%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object133198133203%_
                                  (##unchecked-structure-ref
                                   _%self127572133179%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method133199133204%_
                                  (##unchecked-structure-ref
                                   _%self127572133179%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method133199133204%_
                              _%object133198133203%_
                              _%proc133189%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object133205133210%_
                                  (##unchecked-structure-ref
                                   _%self127572133179%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method133206133211%_
                                  (##unchecked-structure-ref
                                   _%self127572133179%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method133206133211%_
                              _%object133205133210%_
                              _%proc133189%_)))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/hash
                      'contract:
                      'procedure?
                      'value:
                      _%proc133170%_)
                     (void)))))
           _%rest133085%_)
          _%h133088%_)))
    (define hash-merge-right!
      (lambda (_%h133065%_ . _%rest133066%_)
        (let* ((_%h133072%_
                (let ((_%$obj133069%_ _%h133065%_))
                  (if (immediate-instance-of? HashTable::t _%$obj133069%_)
                      _%$obj133069%_
                      (cast HashTable::interface _%$obj133069%_))))
               (_%h133074%_ _%h133072%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h133074%_ _%rest133066%_))))))
