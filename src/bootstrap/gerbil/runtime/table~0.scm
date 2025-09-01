(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1756715351)
  (begin
    (declare (not safe))
    (define __table::t.id 'gerbil#__table::t)
    (define __table::t
      (##structure
       ##type-type
       __table::t.id
       'raw-table
       '26
       '#f
       '#(table 5 #f count 5 #f free 5 #f hash 5 #f test 5 #f seed 5 #f)))
    (define &raw-table-table
      (lambda (_%tab101775%_)
        (##unchecked-structure-ref
         _%tab101775%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab101773%_)
        (##unchecked-structure-ref
         _%tab101773%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab101771%_)
        (##unchecked-structure-ref
         _%tab101771%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab101769%_)
        (##unchecked-structure-ref
         _%tab101769%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab101767%_)
        (##unchecked-structure-ref
         _%tab101767%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab101765%_)
        (##unchecked-structure-ref
         _%tab101765%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab101762%_ _%val101763%_)
        (##unchecked-structure-set!
         _%tab101762%_
         _%val101763%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab101759%_ _%val101760%_)
        (##unchecked-structure-set!
         _%tab101759%_
         _%val101760%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab101756%_ _%val101757%_)
        (##unchecked-structure-set!
         _%tab101756%_
         _%val101757%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab101753%_ _%val101754%_)
        (##unchecked-structure-set!
         _%tab101753%_
         _%val101754%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab101750%_ _%val101751%_)
        (##unchecked-structure-set!
         _%tab101750%_
         _%val101751%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab101747%_ _%val101748%_)
        (##unchecked-structure-set!
         _%tab101747%_
         _%val101748%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint101745%_)
        (if (and (fixnum? _%size-hint101745%_) (##fx> _%size-hint101745%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint101745%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint101721%_
               _%hash101722%_
               _%test101723%_
               _%seed101724%_)
        (let* ((_%size101726%_ (raw-table-size-hint->size _%size-hint101721%_))
               (_%table101728%_
                (##make-vector _%size101726%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table101728%_
           '0
           (##fxquotient _%size101726%_ '2)
           _%hash101722%_
           _%test101723%_
           _%seed101724%_))))
    (define make-raw-table__0
      (lambda (_%size-hint101734%_ _%hash101735%_ _%test101736%_)
        (let ((_%seed101738%_ '0))
          (make-raw-table__%
           _%size-hint101734%_
           _%hash101735%_
           _%test101736%_
           _%seed101738%_))))
    (define make-raw-table
      (lambda _g101776_
        (let ((_g101777_ (##length _g101776_)))
          (cond ((##fx= _g101777_ 3) (apply make-raw-table__0 _g101776_))
                ((##fx= _g101777_ 4) (apply make-raw-table__% _g101776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g101776_))))))
    (define raw-table-ref
      (lambda (_%tab101672%_ _%key101673%_ _%default101674%_)
        (let ((_%table101676%_ (&raw-table-table _%tab101672%_))
              (_%seed101677%_ (&raw-table-seed _%tab101672%_))
              (_%hash101678%_ (&raw-table-hash _%tab101672%_))
              (_%test101679%_ (&raw-table-test _%tab101672%_)))
          (let* ((_%h101681%_
                  (fxxor (_%hash101678%_ _%key101673%_) _%seed101677%_))
                 (_%size101684%_ (vector-length _%table101676%_))
                 (_%entries101687%_ (##fxquotient _%size101684%_ '2))
                 (_%start101690%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101681%_ _%entries101687%_)
                   '1)))
            (let _%loop101694%_ ((_%probe101697%_ _%start101690%_)
                                 (_%i101699%_ '1)
                                 (_%deleted101701%_ '#f))
              (let ((_%k101704%_ (vector-ref _%table101676%_ _%probe101697%_)))
                (if (eq? _%k101704%_ (macro-unused-obj))
                    _%default101674%_
                    (if (eq? _%k101704%_ (macro-deleted-obj))
                        (_%loop101694%_
                         (let ((_%next-probe101709%_
                                (fx+ _%start101690%_
                                     _%i101699%_
                                     (fx* _%i101699%_ _%i101699%_))))
                           (##fxmodulo _%next-probe101709%_ _%size101684%_))
                         (##fx+ _%i101699%_ '1)
                         (let ((_%$e101712%_ _%deleted101701%_))
                           (if _%$e101712%_ _%$e101712%_ _%probe101697%_)))
                        (if (_%test101679%_ _%key101673%_ _%k101704%_)
                            (vector-ref
                             _%table101676%_
                             (##fx+ _%probe101697%_ '1))
                            (_%loop101694%_
                             (let ((_%next-probe101717%_
                                    (fx+ _%start101690%_
                                         _%i101699%_
                                         (fx* _%i101699%_ _%i101699%_))))
                               (##fxmodulo
                                _%next-probe101717%_
                                _%size101684%_))
                             (##fx+ _%i101699%_ '1)
                             _%deleted101701%_))))))))))
    (define raw-table-set!
      (lambda (_%tab101668%_ _%key101669%_ _%value101670%_)
        (if (##fx< (&raw-table-free _%tab101668%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101668%_))
                    '4))
            (__raw-table-rehash! _%tab101668%_)
            '#!void)
        (__raw-table-set! _%tab101668%_ _%key101669%_ _%value101670%_)))
    (define raw-table-update!
      (lambda (_%tab101663%_ _%key101664%_ _%update101665%_ _%default101666%_)
        (if (##fx< (&raw-table-free _%tab101663%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101663%_))
                    '4))
            (__raw-table-rehash! _%tab101663%_)
            '#!void)
        (__raw-table-update!
         _%tab101663%_
         _%key101664%_
         _%update101665%_
         _%default101666%_)))
    (define raw-table-delete!
      (lambda (_%tab101620%_ _%key101621%_)
        (let ((_%table101623%_ (&raw-table-table _%tab101620%_))
              (_%seed101624%_ (&raw-table-seed _%tab101620%_))
              (_%hash101625%_ (&raw-table-hash _%tab101620%_))
              (_%test101626%_ (&raw-table-test _%tab101620%_)))
          (let* ((_%h101628%_
                  (fxxor (_%hash101625%_ _%key101621%_) _%seed101624%_))
                 (_%size101631%_ (vector-length _%table101623%_))
                 (_%entries101634%_ (##fxquotient _%size101631%_ '2))
                 (_%start101637%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101628%_ _%entries101634%_)
                   '1)))
            (let _%loop101641%_ ((_%probe101644%_ _%start101637%_)
                                 (_%i101646%_ '1))
              (let ((_%k101649%_ (vector-ref _%table101623%_ _%probe101644%_)))
                (if (eq? _%k101649%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101649%_ (macro-deleted-obj))
                        (_%loop101641%_
                         (let ((_%next-probe101654%_
                                (fx+ _%start101637%_
                                     _%i101646%_
                                     (fx* _%i101646%_ _%i101646%_))))
                           (##fxmodulo _%next-probe101654%_ _%size101631%_))
                         (##fx+ _%i101646%_ '1))
                        (if (_%test101626%_ _%key101621%_ _%k101649%_)
                            (let ()
                              (vector-set!
                               _%table101623%_
                               _%probe101644%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101623%_
                               (##fx+ _%probe101644%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101620%_
                                  (##fx- (&raw-table-count _%tab101620%_)
                                         '1)))))
                            (_%loop101641%_
                             (let ((_%next-probe101660%_
                                    (fx+ _%start101637%_
                                         _%i101646%_
                                         (fx* _%i101646%_ _%i101646%_))))
                               (##fxmodulo
                                _%next-probe101660%_
                                _%size101631%_))
                             (##fx+ _%i101646%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab101604%_ _%proc101605%_)
        (let* ((_%table101607%_ (&raw-table-table _%tab101604%_))
               (_%size101609%_ (vector-length _%table101607%_)))
          (let _%loop101612%_ ((_%i101614%_ '0))
            (if (##fx< _%i101614%_ _%size101609%_)
                (begin
                  (let ((_%key101616%_
                         (vector-ref _%table101607%_ _%i101614%_)))
                    (if (if (eq? _%key101616%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key101616%_ (macro-deleted-obj))))
                        (let ((_%value101618%_
                               (vector-ref
                                _%table101607%_
                                (##fx+ _%i101614%_ '1))))
                          (_%proc101605%_ _%key101616%_ _%value101618%_))
                        '#!void))
                  (_%loop101612%_ (##fx+ _%i101614%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab101600%_)
        (let ((_%new-tab101602%_ (##structure-copy _%tab101600%_)))
          (&raw-table-table-set!
           _%new-tab101602%_
           (vector-copy (&raw-table-table _%tab101600%_)))
          _%new-tab101602%_)))
    (define raw-table-clear!
      (lambda (_%tab101598%_)
        (vector-fill! (&raw-table-table _%tab101598%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab101598%_ '0)
        (&raw-table-free-set!
         _%tab101598%_
         (##fxquotient (vector-length (&raw-table-table _%tab101598%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab101548%_ _%key101549%_ _%value101550%_)
        (let ((_%table101552%_ (&raw-table-table _%tab101548%_))
              (_%seed101553%_ (&raw-table-seed _%tab101548%_))
              (_%hash101554%_ (&raw-table-hash _%tab101548%_))
              (_%test101555%_ (&raw-table-test _%tab101548%_)))
          (let* ((_%h101557%_
                  (fxxor (_%hash101554%_ _%key101549%_) _%seed101553%_))
                 (_%size101560%_ (vector-length _%table101552%_))
                 (_%entries101563%_ (##fxquotient _%size101560%_ '2))
                 (_%start101566%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101557%_ _%entries101563%_)
                   '1)))
            (let _%loop101570%_ ((_%probe101573%_ _%start101566%_)
                                 (_%i101575%_ '1)
                                 (_%deleted101577%_ '#f))
              (let ((_%k101580%_ (vector-ref _%table101552%_ _%probe101573%_)))
                (if (eq? _%k101580%_ (macro-unused-obj))
                    (if _%deleted101577%_
                        (begin
                          (vector-set!
                           _%table101552%_
                           _%deleted101577%_
                           _%key101549%_)
                          (vector-set!
                           _%table101552%_
                           (##fx+ _%deleted101577%_ '1)
                           _%value101550%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101548%_
                              (##fx+ (&raw-table-count _%tab101548%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101552%_
                           _%probe101573%_
                           _%key101549%_)
                          (vector-set!
                           _%table101552%_
                           (##fx+ _%probe101573%_ '1)
                           _%value101550%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101548%_
                              (##fx- (&raw-table-free _%tab101548%_) '1))
                             (&raw-table-count-set!
                              _%tab101548%_
                              (##fx+ (&raw-table-count _%tab101548%_) '1))))))
                    (if (eq? _%k101580%_ (macro-deleted-obj))
                        (_%loop101570%_
                         (let ((_%next-probe101587%_
                                (fx+ _%start101566%_
                                     _%i101575%_
                                     (fx* _%i101575%_ _%i101575%_))))
                           (##fxmodulo _%next-probe101587%_ _%size101560%_))
                         (##fx+ _%i101575%_ '1)
                         (let ((_%$e101590%_ _%deleted101577%_))
                           (if _%$e101590%_ _%$e101590%_ _%probe101573%_)))
                        (if (_%test101555%_ _%key101549%_ _%k101580%_)
                            (let ()
                              (vector-set!
                               _%table101552%_
                               _%probe101573%_
                               _%key101549%_)
                              (vector-set!
                               _%table101552%_
                               (##fx+ _%probe101573%_ '1)
                               _%value101550%_))
                            (_%loop101570%_
                             (let ((_%next-probe101595%_
                                    (fx+ _%start101566%_
                                         _%i101575%_
                                         (fx* _%i101575%_ _%i101575%_))))
                               (##fxmodulo
                                _%next-probe101595%_
                                _%size101560%_))
                             (##fx+ _%i101575%_ '1)
                             _%deleted101577%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab101497%_ _%key101498%_ _%update101499%_ _%default101500%_)
        (let ((_%table101502%_ (&raw-table-table _%tab101497%_))
              (_%seed101503%_ (&raw-table-seed _%tab101497%_))
              (_%hash101504%_ (&raw-table-hash _%tab101497%_))
              (_%test101505%_ (&raw-table-test _%tab101497%_)))
          (let* ((_%h101507%_
                  (fxxor (_%hash101504%_ _%key101498%_) _%seed101503%_))
                 (_%size101510%_ (vector-length _%table101502%_))
                 (_%entries101513%_ (##fxquotient _%size101510%_ '2))
                 (_%start101516%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101507%_ _%entries101513%_)
                   '1)))
            (let _%loop101520%_ ((_%probe101523%_ _%start101516%_)
                                 (_%i101525%_ '1)
                                 (_%deleted101527%_ '#f))
              (let ((_%k101530%_ (vector-ref _%table101502%_ _%probe101523%_)))
                (if (eq? _%k101530%_ (macro-unused-obj))
                    (if _%deleted101527%_
                        (begin
                          (vector-set!
                           _%table101502%_
                           _%deleted101527%_
                           _%key101498%_)
                          (vector-set!
                           _%table101502%_
                           (##fx+ _%deleted101527%_ '1)
                           (_%update101499%_ _%default101500%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101497%_
                              (##fx+ (&raw-table-count _%tab101497%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101502%_
                           _%probe101523%_
                           _%key101498%_)
                          (vector-set!
                           _%table101502%_
                           (##fx+ _%probe101523%_ '1)
                           (_%update101499%_ _%default101500%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101497%_
                              (##fx- (&raw-table-free _%tab101497%_) '1))
                             (&raw-table-count-set!
                              _%tab101497%_
                              (##fx+ (&raw-table-count _%tab101497%_) '1))))))
                    (if (eq? _%k101530%_ (macro-deleted-obj))
                        (_%loop101520%_
                         (let ((_%next-probe101537%_
                                (fx+ _%start101516%_
                                     _%i101525%_
                                     (fx* _%i101525%_ _%i101525%_))))
                           (##fxmodulo _%next-probe101537%_ _%size101510%_))
                         (##fx+ _%i101525%_ '1)
                         (let ((_%$e101540%_ _%deleted101527%_))
                           (if _%$e101540%_ _%$e101540%_ _%probe101523%_)))
                        (if (_%test101505%_ _%key101498%_ _%k101530%_)
                            (let ()
                              (vector-set!
                               _%table101502%_
                               _%probe101523%_
                               _%key101498%_)
                              (vector-set!
                               _%table101502%_
                               (##fx+ _%probe101523%_ '1)
                               (_%update101499%_
                                (vector-ref
                                 _%table101502%_
                                 (##fx+ _%probe101523%_ '1)))))
                            (_%loop101520%_
                             (let ((_%next-probe101545%_
                                    (fx+ _%start101516%_
                                         _%i101525%_
                                         (fx* _%i101525%_ _%i101525%_))))
                               (##fxmodulo
                                _%next-probe101545%_
                                _%size101510%_))
                             (##fx+ _%i101525%_ '1)
                             _%deleted101527%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab101478%_)
        (let* ((_%old-table101480%_ (&raw-table-table _%tab101478%_))
               (_%old-size101482%_ (vector-length _%old-table101480%_))
               (_%new-size101484%_
                (if (##fx< (&raw-table-count _%tab101478%_)
                           (##fxquotient _%old-size101482%_ '4))
                    (vector-length _%old-table101480%_)
                    (##fx* '2 (vector-length _%old-table101480%_))))
               (_%new-table101486%_
                (##make-vector _%new-size101484%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab101478%_ _%new-table101486%_)
          (&raw-table-count-set! _%tab101478%_ '0)
          (&raw-table-free-set!
           _%tab101478%_
           (##fxquotient _%new-size101484%_ '2))
          (let _%lp101489%_ ((_%i101491%_ '0))
            (if (##fx< _%i101491%_ _%old-size101482%_)
                (begin
                  (let ((_%key101493%_
                         (vector-ref _%old-table101480%_ _%i101491%_)))
                    (if (if (eq? _%key101493%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key101493%_ (macro-deleted-obj))))
                        (let ((_%value101495%_
                               (vector-ref
                                _%old-table101480%_
                                (##fx+ _%i101491%_ '1))))
                          (__raw-table-set!
                           _%tab101478%_
                           _%key101493%_
                           _%value101495%_))
                        '#!void))
                  (_%lp101489%_ (##fx+ _%i101491%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj101470%_)
        (let ((_%t101472%_ (##type _%obj101470%_)))
          (if (##fx= (##fxand _%t101472%_ '1) '0)
              (fxand (##type-cast _%obj101470%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj101470%_)
                  (##symbol-hash _%obj101470%_)
                  (if (procedure? _%obj101470%_)
                      (procedure-hash _%obj101470%_)
                      (fxand (__eq-hash _%obj101470%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj101466%_)
        (let ((_%h101468%_
               (if (##closure? _%obj101466%_)
                   (__eq-hash _%obj101466%_)
                   (##type-cast _%obj101466%_ '0))))
          (fxand _%h101468%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj101463%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj101463%_)))
    (define eqv-hash
      (lambda (_%obj101453%_)
        (letrec ((_%combine101455%_
                  (lambda (_%a101460%_ _%b101461%_)
                    (fxand (##fx* (##fx+ _%a101460%_
                                         (fxarithmetic-shift-left
                                          _%b101461%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash101456%_
                  (lambda (_%obj101458%_)
                    (macro-number-dispatch
                     _%obj101458%_
                     (eq-hash _%obj101458%_)
                     (fxand _%obj101458%_ (macro-max-fixnum32))
                     (modulo _%obj101458%_ '331804481)
                     (_%combine101455%_
                      (_%hash101456%_ (macro-ratnum-numerator _%obj101458%_))
                      (_%hash101456%_
                       (macro-ratnum-denominator _%obj101458%_)))
                     (_%combine101455%_
                      (##u16vector-ref _%obj101458%_ '0)
                      (_%combine101455%_
                       (##u16vector-ref _%obj101458%_ '1)
                       (_%combine101455%_
                        (##u16vector-ref _%obj101458%_ '2)
                        (##u16vector-ref _%obj101458%_ '3))))
                     (_%combine101455%_
                      (_%hash101456%_ (macro-cpxnum-real _%obj101458%_))
                      (_%hash101456%_ (macro-cpxnum-imag _%obj101458%_)))))))
          (_%hash101456%_ _%obj101453%_))))
    (define symbolic?
      (lambda (_%obj101448%_)
        (let ((_%$e101450%_ (symbol? _%obj101448%_)))
          (if _%$e101450%_ _%$e101450%_ (keyword? _%obj101448%_)))))
    (define symbolic-hash
      (lambda (_%obj101446%_) (##symbol-hash _%obj101446%_)))
    (define string-hash
      (lambda (_%obj101444%_) (##string=?-hash _%obj101444%_)))
    (define immediate-hash
      (lambda (_%obj101442%_) (##type-cast _%obj101442%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint101423%_ _%seed101425%_)
        (make-raw-table__% _%size-hint101423%_ eq-hash eq? _%seed101425%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint101431%_ '#f) (_%seed101433%_ '0))
          (make-eq-table__% _%size-hint101431%_ _%seed101433%_))))
    (define make-eq-table__1
      (lambda (_%size-hint101435%_)
        (let ((_%seed101437%_ '0))
          (make-eq-table__% _%size-hint101435%_ _%seed101437%_))))
    (define make-eq-table
      (lambda _g101778_
        (let ((_g101779_ (##length _g101778_)))
          (cond ((##fx= _g101779_ 0) (apply make-eq-table__0 _g101778_))
                ((##fx= _g101779_ 1) (apply make-eq-table__1 _g101778_))
                ((##fx= _g101779_ 2) (apply make-eq-table__% _g101778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g101778_))))))
    (define eq-table-ref
      (lambda (_%tab101376%_ _%key101377%_ _%default101378%_)
        (let ((_%table101380%_ (&raw-table-table _%tab101376%_))
              (_%seed101381%_ (&raw-table-seed _%tab101376%_)))
          (let* ((_%h101383%_ (fxxor (eq-hash _%key101377%_) _%seed101381%_))
                 (_%size101386%_ (vector-length _%table101380%_))
                 (_%entries101389%_ (##fxquotient _%size101386%_ '2))
                 (_%start101392%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101383%_ _%entries101389%_)
                   '1)))
            (let _%loop101396%_ ((_%probe101399%_ _%start101392%_)
                                 (_%i101401%_ '1)
                                 (_%deleted101403%_ '#f))
              (let ((_%k101406%_ (vector-ref _%table101380%_ _%probe101399%_)))
                (if (eq? _%k101406%_ (macro-unused-obj))
                    _%default101378%_
                    (if (eq? _%k101406%_ (macro-deleted-obj))
                        (_%loop101396%_
                         (let ((_%next-probe101411%_
                                (fx+ _%start101392%_
                                     _%i101401%_
                                     (fx* _%i101401%_ _%i101401%_))))
                           (##fxmodulo _%next-probe101411%_ _%size101386%_))
                         (##fx+ _%i101401%_ '1)
                         (let ((_%$e101414%_ _%deleted101403%_))
                           (if _%$e101414%_ _%$e101414%_ _%probe101399%_)))
                        (if (eq? _%key101377%_ _%k101406%_)
                            (vector-ref
                             _%table101380%_
                             (##fx+ _%probe101399%_ '1))
                            (_%loop101396%_
                             (let ((_%next-probe101419%_
                                    (fx+ _%start101392%_
                                         _%i101401%_
                                         (fx* _%i101401%_ _%i101401%_))))
                               (##fxmodulo
                                _%next-probe101419%_
                                _%size101386%_))
                             (##fx+ _%i101401%_ '1)
                             _%deleted101403%_))))))))))
    (define eq-table-set!
      (lambda (_%tab101372%_ _%key101373%_ _%value101374%_)
        (if (##fx< (&raw-table-free _%tab101372%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101372%_))
                    '4))
            (__raw-table-rehash! _%tab101372%_)
            '#!void)
        (__eq-table-set! _%tab101372%_ _%key101373%_ _%value101374%_)))
    (define __eq-table-set!
      (lambda (_%tab101323%_ _%key101324%_ _%value101325%_)
        (let ((_%table101328%_ (&raw-table-table _%tab101323%_))
              (_%seed101329%_ (&raw-table-seed _%tab101323%_)))
          (let* ((_%h101331%_ (fxxor (eq-hash _%key101324%_) _%seed101329%_))
                 (_%size101334%_ (vector-length _%table101328%_))
                 (_%entries101337%_ (##fxquotient _%size101334%_ '2))
                 (_%start101340%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101331%_ _%entries101337%_)
                   '1)))
            (let _%loop101344%_ ((_%probe101347%_ _%start101340%_)
                                 (_%i101349%_ '1)
                                 (_%deleted101351%_ '#f))
              (let ((_%k101354%_ (vector-ref _%table101328%_ _%probe101347%_)))
                (if (eq? _%k101354%_ (macro-unused-obj))
                    (if _%deleted101351%_
                        (begin
                          (vector-set!
                           _%table101328%_
                           _%deleted101351%_
                           _%key101324%_)
                          (vector-set!
                           _%table101328%_
                           (##fx+ _%deleted101351%_ '1)
                           _%value101325%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101323%_
                              (##fx+ (&raw-table-count _%tab101323%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101328%_
                           _%probe101347%_
                           _%key101324%_)
                          (vector-set!
                           _%table101328%_
                           (##fx+ _%probe101347%_ '1)
                           _%value101325%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101323%_
                              (##fx- (&raw-table-free _%tab101323%_) '1))
                             (&raw-table-count-set!
                              _%tab101323%_
                              (##fx+ (&raw-table-count _%tab101323%_) '1))))))
                    (if (eq? _%k101354%_ (macro-deleted-obj))
                        (_%loop101344%_
                         (let ((_%next-probe101361%_
                                (fx+ _%start101340%_
                                     _%i101349%_
                                     (fx* _%i101349%_ _%i101349%_))))
                           (##fxmodulo _%next-probe101361%_ _%size101334%_))
                         (##fx+ _%i101349%_ '1)
                         (let ((_%$e101364%_ _%deleted101351%_))
                           (if _%$e101364%_ _%$e101364%_ _%probe101347%_)))
                        (if (eq? _%key101324%_ _%k101354%_)
                            (let ()
                              (vector-set!
                               _%table101328%_
                               _%probe101347%_
                               _%key101324%_)
                              (vector-set!
                               _%table101328%_
                               (##fx+ _%probe101347%_ '1)
                               _%value101325%_))
                            (_%loop101344%_
                             (let ((_%next-probe101369%_
                                    (fx+ _%start101340%_
                                         _%i101349%_
                                         (fx* _%i101349%_ _%i101349%_))))
                               (##fxmodulo
                                _%next-probe101369%_
                                _%size101334%_))
                             (##fx+ _%i101349%_ '1)
                             _%deleted101351%_))))))))))
    (define eq-table-update!
      (lambda (_%tab101318%_
               _%key101319%_
               _%eq-table-update!101320%_
               _%default101321%_)
        (if (##fx< (&raw-table-free _%tab101318%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101318%_))
                    '4))
            (__raw-table-rehash! _%tab101318%_)
            '#!void)
        (__eq-table-update!
         _%tab101318%_
         _%key101319%_
         _%eq-table-update!101320%_
         _%default101321%_)))
    (define __eq-table-update!
      (lambda (_%tab101268%_
               _%key101269%_
               _%eq-table-update!101270%_
               _%default101271%_)
        (let ((_%table101274%_ (&raw-table-table _%tab101268%_))
              (_%seed101275%_ (&raw-table-seed _%tab101268%_)))
          (let* ((_%h101277%_ (fxxor (eq-hash _%key101269%_) _%seed101275%_))
                 (_%size101280%_ (vector-length _%table101274%_))
                 (_%entries101283%_ (##fxquotient _%size101280%_ '2))
                 (_%start101286%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101277%_ _%entries101283%_)
                   '1)))
            (let _%loop101290%_ ((_%probe101293%_ _%start101286%_)
                                 (_%i101295%_ '1)
                                 (_%deleted101297%_ '#f))
              (let ((_%k101300%_ (vector-ref _%table101274%_ _%probe101293%_)))
                (if (eq? _%k101300%_ (macro-unused-obj))
                    (if _%deleted101297%_
                        (begin
                          (vector-set!
                           _%table101274%_
                           _%deleted101297%_
                           _%key101269%_)
                          (vector-set!
                           _%table101274%_
                           (##fx+ _%deleted101297%_ '1)
                           (_%eq-table-update!101270%_ _%default101271%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101268%_
                              (##fx+ (&raw-table-count _%tab101268%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101274%_
                           _%probe101293%_
                           _%key101269%_)
                          (vector-set!
                           _%table101274%_
                           (##fx+ _%probe101293%_ '1)
                           (_%eq-table-update!101270%_ _%default101271%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101268%_
                              (##fx- (&raw-table-free _%tab101268%_) '1))
                             (&raw-table-count-set!
                              _%tab101268%_
                              (##fx+ (&raw-table-count _%tab101268%_) '1))))))
                    (if (eq? _%k101300%_ (macro-deleted-obj))
                        (_%loop101290%_
                         (let ((_%next-probe101307%_
                                (fx+ _%start101286%_
                                     _%i101295%_
                                     (fx* _%i101295%_ _%i101295%_))))
                           (##fxmodulo _%next-probe101307%_ _%size101280%_))
                         (##fx+ _%i101295%_ '1)
                         (let ((_%$e101310%_ _%deleted101297%_))
                           (if _%$e101310%_ _%$e101310%_ _%probe101293%_)))
                        (if (eq? _%key101269%_ _%k101300%_)
                            (let ()
                              (vector-set!
                               _%table101274%_
                               _%probe101293%_
                               _%key101269%_)
                              (vector-set!
                               _%table101274%_
                               (##fx+ _%probe101293%_ '1)
                               (_%eq-table-update!101270%_
                                (vector-ref
                                 _%table101274%_
                                 (##fx+ _%probe101293%_ '1)))))
                            (_%loop101290%_
                             (let ((_%next-probe101315%_
                                    (fx+ _%start101286%_
                                         _%i101295%_
                                         (fx* _%i101295%_ _%i101295%_))))
                               (##fxmodulo
                                _%next-probe101315%_
                                _%size101280%_))
                             (##fx+ _%i101295%_ '1)
                             _%deleted101297%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab101223%_ _%key101225%_)
        (let ((_%table101228%_ (&raw-table-table _%tab101223%_))
              (_%seed101230%_ (&raw-table-seed _%tab101223%_)))
          (let* ((_%h101233%_ (fxxor (eq-hash _%key101225%_) _%seed101230%_))
                 (_%size101236%_ (vector-length _%table101228%_))
                 (_%entries101239%_ (##fxquotient _%size101236%_ '2))
                 (_%start101242%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101233%_ _%entries101239%_)
                   '1)))
            (let _%loop101246%_ ((_%probe101249%_ _%start101242%_)
                                 (_%i101251%_ '1))
              (let ((_%k101254%_ (vector-ref _%table101228%_ _%probe101249%_)))
                (if (eq? _%k101254%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101254%_ (macro-deleted-obj))
                        (_%loop101246%_
                         (let ((_%next-probe101259%_
                                (fx+ _%start101242%_
                                     _%i101251%_
                                     (fx* _%i101251%_ _%i101251%_))))
                           (##fxmodulo _%next-probe101259%_ _%size101236%_))
                         (##fx+ _%i101251%_ '1))
                        (if (eq? _%key101225%_ _%k101254%_)
                            (let ()
                              (vector-set!
                               _%table101228%_
                               _%probe101249%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101228%_
                               (##fx+ _%probe101249%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101223%_
                                  (##fx- (&raw-table-count _%tab101223%_)
                                         '1)))))
                            (_%loop101246%_
                             (let ((_%next-probe101265%_
                                    (fx+ _%start101242%_
                                         _%i101251%_
                                         (fx* _%i101251%_ _%i101251%_))))
                               (##fxmodulo
                                _%next-probe101265%_
                                _%size101236%_))
                             (##fx+ _%i101251%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint101204%_ _%seed101206%_)
        (make-raw-table__% _%size-hint101204%_ eqv-hash eqv? _%seed101206%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint101212%_ '#f) (_%seed101214%_ '0))
          (make-eqv-table__% _%size-hint101212%_ _%seed101214%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint101216%_)
        (let ((_%seed101218%_ '0))
          (make-eqv-table__% _%size-hint101216%_ _%seed101218%_))))
    (define make-eqv-table
      (lambda _g101780_
        (let ((_g101781_ (##length _g101780_)))
          (cond ((##fx= _g101781_ 0) (apply make-eqv-table__0 _g101780_))
                ((##fx= _g101781_ 1) (apply make-eqv-table__1 _g101780_))
                ((##fx= _g101781_ 2) (apply make-eqv-table__% _g101780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g101780_))))))
    (define eqv-table-ref
      (lambda (_%tab101157%_ _%key101158%_ _%default101159%_)
        (let ((_%table101161%_ (&raw-table-table _%tab101157%_))
              (_%seed101162%_ (&raw-table-seed _%tab101157%_)))
          (let* ((_%h101164%_ (fxxor (eqv-hash _%key101158%_) _%seed101162%_))
                 (_%size101167%_ (vector-length _%table101161%_))
                 (_%entries101170%_ (##fxquotient _%size101167%_ '2))
                 (_%start101173%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101164%_ _%entries101170%_)
                   '1)))
            (let _%loop101177%_ ((_%probe101180%_ _%start101173%_)
                                 (_%i101182%_ '1)
                                 (_%deleted101184%_ '#f))
              (let ((_%k101187%_ (vector-ref _%table101161%_ _%probe101180%_)))
                (if (eq? _%k101187%_ (macro-unused-obj))
                    _%default101159%_
                    (if (eq? _%k101187%_ (macro-deleted-obj))
                        (_%loop101177%_
                         (let ((_%next-probe101192%_
                                (fx+ _%start101173%_
                                     _%i101182%_
                                     (fx* _%i101182%_ _%i101182%_))))
                           (##fxmodulo _%next-probe101192%_ _%size101167%_))
                         (##fx+ _%i101182%_ '1)
                         (let ((_%$e101195%_ _%deleted101184%_))
                           (if _%$e101195%_ _%$e101195%_ _%probe101180%_)))
                        (if (eqv? _%key101158%_ _%k101187%_)
                            (vector-ref
                             _%table101161%_
                             (##fx+ _%probe101180%_ '1))
                            (_%loop101177%_
                             (let ((_%next-probe101200%_
                                    (fx+ _%start101173%_
                                         _%i101182%_
                                         (fx* _%i101182%_ _%i101182%_))))
                               (##fxmodulo
                                _%next-probe101200%_
                                _%size101167%_))
                             (##fx+ _%i101182%_ '1)
                             _%deleted101184%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab101153%_ _%key101154%_ _%value101155%_)
        (if (##fx< (&raw-table-free _%tab101153%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101153%_))
                    '4))
            (__raw-table-rehash! _%tab101153%_)
            '#!void)
        (__eqv-table-set! _%tab101153%_ _%key101154%_ _%value101155%_)))
    (define __eqv-table-set!
      (lambda (_%tab101104%_ _%key101105%_ _%value101106%_)
        (let ((_%table101109%_ (&raw-table-table _%tab101104%_))
              (_%seed101110%_ (&raw-table-seed _%tab101104%_)))
          (let* ((_%h101112%_ (fxxor (eqv-hash _%key101105%_) _%seed101110%_))
                 (_%size101115%_ (vector-length _%table101109%_))
                 (_%entries101118%_ (##fxquotient _%size101115%_ '2))
                 (_%start101121%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101112%_ _%entries101118%_)
                   '1)))
            (let _%loop101125%_ ((_%probe101128%_ _%start101121%_)
                                 (_%i101130%_ '1)
                                 (_%deleted101132%_ '#f))
              (let ((_%k101135%_ (vector-ref _%table101109%_ _%probe101128%_)))
                (if (eq? _%k101135%_ (macro-unused-obj))
                    (if _%deleted101132%_
                        (begin
                          (vector-set!
                           _%table101109%_
                           _%deleted101132%_
                           _%key101105%_)
                          (vector-set!
                           _%table101109%_
                           (##fx+ _%deleted101132%_ '1)
                           _%value101106%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101104%_
                              (##fx+ (&raw-table-count _%tab101104%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101109%_
                           _%probe101128%_
                           _%key101105%_)
                          (vector-set!
                           _%table101109%_
                           (##fx+ _%probe101128%_ '1)
                           _%value101106%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101104%_
                              (##fx- (&raw-table-free _%tab101104%_) '1))
                             (&raw-table-count-set!
                              _%tab101104%_
                              (##fx+ (&raw-table-count _%tab101104%_) '1))))))
                    (if (eq? _%k101135%_ (macro-deleted-obj))
                        (_%loop101125%_
                         (let ((_%next-probe101142%_
                                (fx+ _%start101121%_
                                     _%i101130%_
                                     (fx* _%i101130%_ _%i101130%_))))
                           (##fxmodulo _%next-probe101142%_ _%size101115%_))
                         (##fx+ _%i101130%_ '1)
                         (let ((_%$e101145%_ _%deleted101132%_))
                           (if _%$e101145%_ _%$e101145%_ _%probe101128%_)))
                        (if (eqv? _%key101105%_ _%k101135%_)
                            (let ()
                              (vector-set!
                               _%table101109%_
                               _%probe101128%_
                               _%key101105%_)
                              (vector-set!
                               _%table101109%_
                               (##fx+ _%probe101128%_ '1)
                               _%value101106%_))
                            (_%loop101125%_
                             (let ((_%next-probe101150%_
                                    (fx+ _%start101121%_
                                         _%i101130%_
                                         (fx* _%i101130%_ _%i101130%_))))
                               (##fxmodulo
                                _%next-probe101150%_
                                _%size101115%_))
                             (##fx+ _%i101130%_ '1)
                             _%deleted101132%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab101099%_
               _%key101100%_
               _%eqv-table-update!101101%_
               _%default101102%_)
        (if (##fx< (&raw-table-free _%tab101099%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101099%_))
                    '4))
            (__raw-table-rehash! _%tab101099%_)
            '#!void)
        (__eqv-table-update!
         _%tab101099%_
         _%key101100%_
         _%eqv-table-update!101101%_
         _%default101102%_)))
    (define __eqv-table-update!
      (lambda (_%tab101049%_
               _%key101050%_
               _%eqv-table-update!101051%_
               _%default101052%_)
        (let ((_%table101055%_ (&raw-table-table _%tab101049%_))
              (_%seed101056%_ (&raw-table-seed _%tab101049%_)))
          (let* ((_%h101058%_ (fxxor (eqv-hash _%key101050%_) _%seed101056%_))
                 (_%size101061%_ (vector-length _%table101055%_))
                 (_%entries101064%_ (##fxquotient _%size101061%_ '2))
                 (_%start101067%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101058%_ _%entries101064%_)
                   '1)))
            (let _%loop101071%_ ((_%probe101074%_ _%start101067%_)
                                 (_%i101076%_ '1)
                                 (_%deleted101078%_ '#f))
              (let ((_%k101081%_ (vector-ref _%table101055%_ _%probe101074%_)))
                (if (eq? _%k101081%_ (macro-unused-obj))
                    (if _%deleted101078%_
                        (begin
                          (vector-set!
                           _%table101055%_
                           _%deleted101078%_
                           _%key101050%_)
                          (vector-set!
                           _%table101055%_
                           (##fx+ _%deleted101078%_ '1)
                           (_%eqv-table-update!101051%_ _%default101052%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101049%_
                              (##fx+ (&raw-table-count _%tab101049%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101055%_
                           _%probe101074%_
                           _%key101050%_)
                          (vector-set!
                           _%table101055%_
                           (##fx+ _%probe101074%_ '1)
                           (_%eqv-table-update!101051%_ _%default101052%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101049%_
                              (##fx- (&raw-table-free _%tab101049%_) '1))
                             (&raw-table-count-set!
                              _%tab101049%_
                              (##fx+ (&raw-table-count _%tab101049%_) '1))))))
                    (if (eq? _%k101081%_ (macro-deleted-obj))
                        (_%loop101071%_
                         (let ((_%next-probe101088%_
                                (fx+ _%start101067%_
                                     _%i101076%_
                                     (fx* _%i101076%_ _%i101076%_))))
                           (##fxmodulo _%next-probe101088%_ _%size101061%_))
                         (##fx+ _%i101076%_ '1)
                         (let ((_%$e101091%_ _%deleted101078%_))
                           (if _%$e101091%_ _%$e101091%_ _%probe101074%_)))
                        (if (eqv? _%key101050%_ _%k101081%_)
                            (let ()
                              (vector-set!
                               _%table101055%_
                               _%probe101074%_
                               _%key101050%_)
                              (vector-set!
                               _%table101055%_
                               (##fx+ _%probe101074%_ '1)
                               (_%eqv-table-update!101051%_
                                (vector-ref
                                 _%table101055%_
                                 (##fx+ _%probe101074%_ '1)))))
                            (_%loop101071%_
                             (let ((_%next-probe101096%_
                                    (fx+ _%start101067%_
                                         _%i101076%_
                                         (fx* _%i101076%_ _%i101076%_))))
                               (##fxmodulo
                                _%next-probe101096%_
                                _%size101061%_))
                             (##fx+ _%i101076%_ '1)
                             _%deleted101078%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab101004%_ _%key101006%_)
        (let ((_%table101009%_ (&raw-table-table _%tab101004%_))
              (_%seed101011%_ (&raw-table-seed _%tab101004%_)))
          (let* ((_%h101014%_ (fxxor (eqv-hash _%key101006%_) _%seed101011%_))
                 (_%size101017%_ (vector-length _%table101009%_))
                 (_%entries101020%_ (##fxquotient _%size101017%_ '2))
                 (_%start101023%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101014%_ _%entries101020%_)
                   '1)))
            (let _%loop101027%_ ((_%probe101030%_ _%start101023%_)
                                 (_%i101032%_ '1))
              (let ((_%k101035%_ (vector-ref _%table101009%_ _%probe101030%_)))
                (if (eq? _%k101035%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101035%_ (macro-deleted-obj))
                        (_%loop101027%_
                         (let ((_%next-probe101040%_
                                (fx+ _%start101023%_
                                     _%i101032%_
                                     (fx* _%i101032%_ _%i101032%_))))
                           (##fxmodulo _%next-probe101040%_ _%size101017%_))
                         (##fx+ _%i101032%_ '1))
                        (if (eqv? _%key101006%_ _%k101035%_)
                            (let ()
                              (vector-set!
                               _%table101009%_
                               _%probe101030%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101009%_
                               (##fx+ _%probe101030%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101004%_
                                  (##fx- (&raw-table-count _%tab101004%_)
                                         '1)))))
                            (_%loop101027%_
                             (let ((_%next-probe101046%_
                                    (fx+ _%start101023%_
                                         _%i101032%_
                                         (fx* _%i101032%_ _%i101032%_))))
                               (##fxmodulo
                                _%next-probe101046%_
                                _%size101017%_))
                             (##fx+ _%i101032%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint100985%_ _%seed100987%_)
        (make-raw-table__%
         _%size-hint100985%_
         symbolic-hash
         eq?
         _%seed100987%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint100993%_ '#f) (_%seed100995%_ '0))
          (make-symbolic-table__% _%size-hint100993%_ _%seed100995%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint100997%_)
        (let ((_%seed100999%_ '0))
          (make-symbolic-table__% _%size-hint100997%_ _%seed100999%_))))
    (define make-symbolic-table
      (lambda _g101782_
        (let ((_g101783_ (##length _g101782_)))
          (cond ((##fx= _g101783_ 0) (apply make-symbolic-table__0 _g101782_))
                ((##fx= _g101783_ 1) (apply make-symbolic-table__1 _g101782_))
                ((##fx= _g101783_ 2) (apply make-symbolic-table__% _g101782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g101782_))))))
    (define symbolic-table-ref
      (lambda (_%tab100938%_ _%key100939%_ _%default100940%_)
        (let ((_%table100942%_ (&raw-table-table _%tab100938%_))
              (_%seed100943%_ (&raw-table-seed _%tab100938%_)))
          (let* ((_%h100945%_
                  (fxxor (##symbol-hash _%key100939%_) _%seed100943%_))
                 (_%size100948%_ (vector-length _%table100942%_))
                 (_%entries100951%_ (##fxquotient _%size100948%_ '2))
                 (_%start100954%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100945%_ _%entries100951%_)
                   '1)))
            (let _%loop100958%_ ((_%probe100961%_ _%start100954%_)
                                 (_%i100963%_ '1)
                                 (_%deleted100965%_ '#f))
              (let ((_%k100968%_ (vector-ref _%table100942%_ _%probe100961%_)))
                (if (eq? _%k100968%_ (macro-unused-obj))
                    _%default100940%_
                    (if (eq? _%k100968%_ (macro-deleted-obj))
                        (_%loop100958%_
                         (let ((_%next-probe100973%_
                                (fx+ _%start100954%_
                                     _%i100963%_
                                     (fx* _%i100963%_ _%i100963%_))))
                           (##fxmodulo _%next-probe100973%_ _%size100948%_))
                         (##fx+ _%i100963%_ '1)
                         (let ((_%$e100976%_ _%deleted100965%_))
                           (if _%$e100976%_ _%$e100976%_ _%probe100961%_)))
                        (if (eq? _%key100939%_ _%k100968%_)
                            (vector-ref
                             _%table100942%_
                             (##fx+ _%probe100961%_ '1))
                            (_%loop100958%_
                             (let ((_%next-probe100981%_
                                    (fx+ _%start100954%_
                                         _%i100963%_
                                         (fx* _%i100963%_ _%i100963%_))))
                               (##fxmodulo
                                _%next-probe100981%_
                                _%size100948%_))
                             (##fx+ _%i100963%_ '1)
                             _%deleted100965%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab100934%_ _%key100935%_ _%value100936%_)
        (if (##fx< (&raw-table-free _%tab100934%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100934%_))
                    '4))
            (__raw-table-rehash! _%tab100934%_)
            '#!void)
        (__symbolic-table-set! _%tab100934%_ _%key100935%_ _%value100936%_)))
    (define __symbolic-table-set!
      (lambda (_%tab100885%_ _%key100886%_ _%value100887%_)
        (let ((_%table100890%_ (&raw-table-table _%tab100885%_))
              (_%seed100891%_ (&raw-table-seed _%tab100885%_)))
          (let* ((_%h100893%_
                  (fxxor (##symbol-hash _%key100886%_) _%seed100891%_))
                 (_%size100896%_ (vector-length _%table100890%_))
                 (_%entries100899%_ (##fxquotient _%size100896%_ '2))
                 (_%start100902%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100893%_ _%entries100899%_)
                   '1)))
            (let _%loop100906%_ ((_%probe100909%_ _%start100902%_)
                                 (_%i100911%_ '1)
                                 (_%deleted100913%_ '#f))
              (let ((_%k100916%_ (vector-ref _%table100890%_ _%probe100909%_)))
                (if (eq? _%k100916%_ (macro-unused-obj))
                    (if _%deleted100913%_
                        (begin
                          (vector-set!
                           _%table100890%_
                           _%deleted100913%_
                           _%key100886%_)
                          (vector-set!
                           _%table100890%_
                           (##fx+ _%deleted100913%_ '1)
                           _%value100887%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100885%_
                              (##fx+ (&raw-table-count _%tab100885%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100890%_
                           _%probe100909%_
                           _%key100886%_)
                          (vector-set!
                           _%table100890%_
                           (##fx+ _%probe100909%_ '1)
                           _%value100887%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100885%_
                              (##fx- (&raw-table-free _%tab100885%_) '1))
                             (&raw-table-count-set!
                              _%tab100885%_
                              (##fx+ (&raw-table-count _%tab100885%_) '1))))))
                    (if (eq? _%k100916%_ (macro-deleted-obj))
                        (_%loop100906%_
                         (let ((_%next-probe100923%_
                                (fx+ _%start100902%_
                                     _%i100911%_
                                     (fx* _%i100911%_ _%i100911%_))))
                           (##fxmodulo _%next-probe100923%_ _%size100896%_))
                         (##fx+ _%i100911%_ '1)
                         (let ((_%$e100926%_ _%deleted100913%_))
                           (if _%$e100926%_ _%$e100926%_ _%probe100909%_)))
                        (if (eq? _%key100886%_ _%k100916%_)
                            (let ()
                              (vector-set!
                               _%table100890%_
                               _%probe100909%_
                               _%key100886%_)
                              (vector-set!
                               _%table100890%_
                               (##fx+ _%probe100909%_ '1)
                               _%value100887%_))
                            (_%loop100906%_
                             (let ((_%next-probe100931%_
                                    (fx+ _%start100902%_
                                         _%i100911%_
                                         (fx* _%i100911%_ _%i100911%_))))
                               (##fxmodulo
                                _%next-probe100931%_
                                _%size100896%_))
                             (##fx+ _%i100911%_ '1)
                             _%deleted100913%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab100880%_
               _%key100881%_
               _%symbolic-table-update!100882%_
               _%default100883%_)
        (if (##fx< (&raw-table-free _%tab100880%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100880%_))
                    '4))
            (__raw-table-rehash! _%tab100880%_)
            '#!void)
        (__symbolic-table-update!
         _%tab100880%_
         _%key100881%_
         _%symbolic-table-update!100882%_
         _%default100883%_)))
    (define __symbolic-table-update!
      (lambda (_%tab100830%_
               _%key100831%_
               _%symbolic-table-update!100832%_
               _%default100833%_)
        (let ((_%table100836%_ (&raw-table-table _%tab100830%_))
              (_%seed100837%_ (&raw-table-seed _%tab100830%_)))
          (let* ((_%h100839%_
                  (fxxor (##symbol-hash _%key100831%_) _%seed100837%_))
                 (_%size100842%_ (vector-length _%table100836%_))
                 (_%entries100845%_ (##fxquotient _%size100842%_ '2))
                 (_%start100848%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100839%_ _%entries100845%_)
                   '1)))
            (let _%loop100852%_ ((_%probe100855%_ _%start100848%_)
                                 (_%i100857%_ '1)
                                 (_%deleted100859%_ '#f))
              (let ((_%k100862%_ (vector-ref _%table100836%_ _%probe100855%_)))
                (if (eq? _%k100862%_ (macro-unused-obj))
                    (if _%deleted100859%_
                        (begin
                          (vector-set!
                           _%table100836%_
                           _%deleted100859%_
                           _%key100831%_)
                          (vector-set!
                           _%table100836%_
                           (##fx+ _%deleted100859%_ '1)
                           (_%symbolic-table-update!100832%_
                            _%default100833%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100830%_
                              (##fx+ (&raw-table-count _%tab100830%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100836%_
                           _%probe100855%_
                           _%key100831%_)
                          (vector-set!
                           _%table100836%_
                           (##fx+ _%probe100855%_ '1)
                           (_%symbolic-table-update!100832%_
                            _%default100833%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100830%_
                              (##fx- (&raw-table-free _%tab100830%_) '1))
                             (&raw-table-count-set!
                              _%tab100830%_
                              (##fx+ (&raw-table-count _%tab100830%_) '1))))))
                    (if (eq? _%k100862%_ (macro-deleted-obj))
                        (_%loop100852%_
                         (let ((_%next-probe100869%_
                                (fx+ _%start100848%_
                                     _%i100857%_
                                     (fx* _%i100857%_ _%i100857%_))))
                           (##fxmodulo _%next-probe100869%_ _%size100842%_))
                         (##fx+ _%i100857%_ '1)
                         (let ((_%$e100872%_ _%deleted100859%_))
                           (if _%$e100872%_ _%$e100872%_ _%probe100855%_)))
                        (if (eq? _%key100831%_ _%k100862%_)
                            (let ()
                              (vector-set!
                               _%table100836%_
                               _%probe100855%_
                               _%key100831%_)
                              (vector-set!
                               _%table100836%_
                               (##fx+ _%probe100855%_ '1)
                               (_%symbolic-table-update!100832%_
                                (vector-ref
                                 _%table100836%_
                                 (##fx+ _%probe100855%_ '1)))))
                            (_%loop100852%_
                             (let ((_%next-probe100877%_
                                    (fx+ _%start100848%_
                                         _%i100857%_
                                         (fx* _%i100857%_ _%i100857%_))))
                               (##fxmodulo
                                _%next-probe100877%_
                                _%size100842%_))
                             (##fx+ _%i100857%_ '1)
                             _%deleted100859%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab100785%_ _%key100787%_)
        (let ((_%table100790%_ (&raw-table-table _%tab100785%_))
              (_%seed100792%_ (&raw-table-seed _%tab100785%_)))
          (let* ((_%h100795%_
                  (fxxor (##symbol-hash _%key100787%_) _%seed100792%_))
                 (_%size100798%_ (vector-length _%table100790%_))
                 (_%entries100801%_ (##fxquotient _%size100798%_ '2))
                 (_%start100804%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100795%_ _%entries100801%_)
                   '1)))
            (let _%loop100808%_ ((_%probe100811%_ _%start100804%_)
                                 (_%i100813%_ '1))
              (let ((_%k100816%_ (vector-ref _%table100790%_ _%probe100811%_)))
                (if (eq? _%k100816%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100816%_ (macro-deleted-obj))
                        (_%loop100808%_
                         (let ((_%next-probe100821%_
                                (fx+ _%start100804%_
                                     _%i100813%_
                                     (fx* _%i100813%_ _%i100813%_))))
                           (##fxmodulo _%next-probe100821%_ _%size100798%_))
                         (##fx+ _%i100813%_ '1))
                        (if (eq? _%key100787%_ _%k100816%_)
                            (let ()
                              (vector-set!
                               _%table100790%_
                               _%probe100811%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100790%_
                               (##fx+ _%probe100811%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100785%_
                                  (##fx- (&raw-table-count _%tab100785%_)
                                         '1)))))
                            (_%loop100808%_
                             (let ((_%next-probe100827%_
                                    (fx+ _%start100804%_
                                         _%i100813%_
                                         (fx* _%i100813%_ _%i100813%_))))
                               (##fxmodulo
                                _%next-probe100827%_
                                _%size100798%_))
                             (##fx+ _%i100813%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint100766%_ _%seed100768%_)
        (make-raw-table__%
         _%size-hint100766%_
         string-hash
         ##string=?
         _%seed100768%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint100774%_ '#f) (_%seed100776%_ '0))
          (make-string-table__% _%size-hint100774%_ _%seed100776%_))))
    (define make-string-table__1
      (lambda (_%size-hint100778%_)
        (let ((_%seed100780%_ '0))
          (make-string-table__% _%size-hint100778%_ _%seed100780%_))))
    (define make-string-table
      (lambda _g101784_
        (let ((_g101785_ (##length _g101784_)))
          (cond ((##fx= _g101785_ 0) (apply make-string-table__0 _g101784_))
                ((##fx= _g101785_ 1) (apply make-string-table__1 _g101784_))
                ((##fx= _g101785_ 2) (apply make-string-table__% _g101784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g101784_))))))
    (define string-table-ref
      (lambda (_%tab100719%_ _%key100720%_ _%default100721%_)
        (let ((_%table100723%_ (&raw-table-table _%tab100719%_))
              (_%seed100724%_ (&raw-table-seed _%tab100719%_)))
          (let* ((_%h100726%_
                  (fxxor (##string=?-hash _%key100720%_) _%seed100724%_))
                 (_%size100729%_ (vector-length _%table100723%_))
                 (_%entries100732%_ (##fxquotient _%size100729%_ '2))
                 (_%start100735%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100726%_ _%entries100732%_)
                   '1)))
            (let _%loop100739%_ ((_%probe100742%_ _%start100735%_)
                                 (_%i100744%_ '1)
                                 (_%deleted100746%_ '#f))
              (let ((_%k100749%_ (vector-ref _%table100723%_ _%probe100742%_)))
                (if (eq? _%k100749%_ (macro-unused-obj))
                    _%default100721%_
                    (if (eq? _%k100749%_ (macro-deleted-obj))
                        (_%loop100739%_
                         (let ((_%next-probe100754%_
                                (fx+ _%start100735%_
                                     _%i100744%_
                                     (fx* _%i100744%_ _%i100744%_))))
                           (##fxmodulo _%next-probe100754%_ _%size100729%_))
                         (##fx+ _%i100744%_ '1)
                         (let ((_%$e100757%_ _%deleted100746%_))
                           (if _%$e100757%_ _%$e100757%_ _%probe100742%_)))
                        (if (##string=? _%key100720%_ _%k100749%_)
                            (vector-ref
                             _%table100723%_
                             (##fx+ _%probe100742%_ '1))
                            (_%loop100739%_
                             (let ((_%next-probe100762%_
                                    (fx+ _%start100735%_
                                         _%i100744%_
                                         (fx* _%i100744%_ _%i100744%_))))
                               (##fxmodulo
                                _%next-probe100762%_
                                _%size100729%_))
                             (##fx+ _%i100744%_ '1)
                             _%deleted100746%_))))))))))
    (define string-table-set!
      (lambda (_%tab100715%_ _%key100716%_ _%value100717%_)
        (if (##fx< (&raw-table-free _%tab100715%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100715%_))
                    '4))
            (__raw-table-rehash! _%tab100715%_)
            '#!void)
        (__string-table-set! _%tab100715%_ _%key100716%_ _%value100717%_)))
    (define __string-table-set!
      (lambda (_%tab100666%_ _%key100667%_ _%value100668%_)
        (let ((_%table100671%_ (&raw-table-table _%tab100666%_))
              (_%seed100672%_ (&raw-table-seed _%tab100666%_)))
          (let* ((_%h100674%_
                  (fxxor (##string=?-hash _%key100667%_) _%seed100672%_))
                 (_%size100677%_ (vector-length _%table100671%_))
                 (_%entries100680%_ (##fxquotient _%size100677%_ '2))
                 (_%start100683%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100674%_ _%entries100680%_)
                   '1)))
            (let _%loop100687%_ ((_%probe100690%_ _%start100683%_)
                                 (_%i100692%_ '1)
                                 (_%deleted100694%_ '#f))
              (let ((_%k100697%_ (vector-ref _%table100671%_ _%probe100690%_)))
                (if (eq? _%k100697%_ (macro-unused-obj))
                    (if _%deleted100694%_
                        (begin
                          (vector-set!
                           _%table100671%_
                           _%deleted100694%_
                           _%key100667%_)
                          (vector-set!
                           _%table100671%_
                           (##fx+ _%deleted100694%_ '1)
                           _%value100668%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100666%_
                              (##fx+ (&raw-table-count _%tab100666%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100671%_
                           _%probe100690%_
                           _%key100667%_)
                          (vector-set!
                           _%table100671%_
                           (##fx+ _%probe100690%_ '1)
                           _%value100668%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100666%_
                              (##fx- (&raw-table-free _%tab100666%_) '1))
                             (&raw-table-count-set!
                              _%tab100666%_
                              (##fx+ (&raw-table-count _%tab100666%_) '1))))))
                    (if (eq? _%k100697%_ (macro-deleted-obj))
                        (_%loop100687%_
                         (let ((_%next-probe100704%_
                                (fx+ _%start100683%_
                                     _%i100692%_
                                     (fx* _%i100692%_ _%i100692%_))))
                           (##fxmodulo _%next-probe100704%_ _%size100677%_))
                         (##fx+ _%i100692%_ '1)
                         (let ((_%$e100707%_ _%deleted100694%_))
                           (if _%$e100707%_ _%$e100707%_ _%probe100690%_)))
                        (if (##string=? _%key100667%_ _%k100697%_)
                            (let ()
                              (vector-set!
                               _%table100671%_
                               _%probe100690%_
                               _%key100667%_)
                              (vector-set!
                               _%table100671%_
                               (##fx+ _%probe100690%_ '1)
                               _%value100668%_))
                            (_%loop100687%_
                             (let ((_%next-probe100712%_
                                    (fx+ _%start100683%_
                                         _%i100692%_
                                         (fx* _%i100692%_ _%i100692%_))))
                               (##fxmodulo
                                _%next-probe100712%_
                                _%size100677%_))
                             (##fx+ _%i100692%_ '1)
                             _%deleted100694%_))))))))))
    (define string-table-update!
      (lambda (_%tab100661%_
               _%key100662%_
               _%string-table-update!100663%_
               _%default100664%_)
        (if (##fx< (&raw-table-free _%tab100661%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100661%_))
                    '4))
            (__raw-table-rehash! _%tab100661%_)
            '#!void)
        (__string-table-update!
         _%tab100661%_
         _%key100662%_
         _%string-table-update!100663%_
         _%default100664%_)))
    (define __string-table-update!
      (lambda (_%tab100611%_
               _%key100612%_
               _%string-table-update!100613%_
               _%default100614%_)
        (let ((_%table100617%_ (&raw-table-table _%tab100611%_))
              (_%seed100618%_ (&raw-table-seed _%tab100611%_)))
          (let* ((_%h100620%_
                  (fxxor (##string=?-hash _%key100612%_) _%seed100618%_))
                 (_%size100623%_ (vector-length _%table100617%_))
                 (_%entries100626%_ (##fxquotient _%size100623%_ '2))
                 (_%start100629%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100620%_ _%entries100626%_)
                   '1)))
            (let _%loop100633%_ ((_%probe100636%_ _%start100629%_)
                                 (_%i100638%_ '1)
                                 (_%deleted100640%_ '#f))
              (let ((_%k100643%_ (vector-ref _%table100617%_ _%probe100636%_)))
                (if (eq? _%k100643%_ (macro-unused-obj))
                    (if _%deleted100640%_
                        (begin
                          (vector-set!
                           _%table100617%_
                           _%deleted100640%_
                           _%key100612%_)
                          (vector-set!
                           _%table100617%_
                           (##fx+ _%deleted100640%_ '1)
                           (_%string-table-update!100613%_ _%default100614%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100611%_
                              (##fx+ (&raw-table-count _%tab100611%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100617%_
                           _%probe100636%_
                           _%key100612%_)
                          (vector-set!
                           _%table100617%_
                           (##fx+ _%probe100636%_ '1)
                           (_%string-table-update!100613%_ _%default100614%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100611%_
                              (##fx- (&raw-table-free _%tab100611%_) '1))
                             (&raw-table-count-set!
                              _%tab100611%_
                              (##fx+ (&raw-table-count _%tab100611%_) '1))))))
                    (if (eq? _%k100643%_ (macro-deleted-obj))
                        (_%loop100633%_
                         (let ((_%next-probe100650%_
                                (fx+ _%start100629%_
                                     _%i100638%_
                                     (fx* _%i100638%_ _%i100638%_))))
                           (##fxmodulo _%next-probe100650%_ _%size100623%_))
                         (##fx+ _%i100638%_ '1)
                         (let ((_%$e100653%_ _%deleted100640%_))
                           (if _%$e100653%_ _%$e100653%_ _%probe100636%_)))
                        (if (##string=? _%key100612%_ _%k100643%_)
                            (let ()
                              (vector-set!
                               _%table100617%_
                               _%probe100636%_
                               _%key100612%_)
                              (vector-set!
                               _%table100617%_
                               (##fx+ _%probe100636%_ '1)
                               (_%string-table-update!100613%_
                                (vector-ref
                                 _%table100617%_
                                 (##fx+ _%probe100636%_ '1)))))
                            (_%loop100633%_
                             (let ((_%next-probe100658%_
                                    (fx+ _%start100629%_
                                         _%i100638%_
                                         (fx* _%i100638%_ _%i100638%_))))
                               (##fxmodulo
                                _%next-probe100658%_
                                _%size100623%_))
                             (##fx+ _%i100638%_ '1)
                             _%deleted100640%_))))))))))
    (define string-table-delete!
      (lambda (_%tab100566%_ _%key100568%_)
        (let ((_%table100571%_ (&raw-table-table _%tab100566%_))
              (_%seed100573%_ (&raw-table-seed _%tab100566%_)))
          (let* ((_%h100576%_
                  (fxxor (##string=?-hash _%key100568%_) _%seed100573%_))
                 (_%size100579%_ (vector-length _%table100571%_))
                 (_%entries100582%_ (##fxquotient _%size100579%_ '2))
                 (_%start100585%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100576%_ _%entries100582%_)
                   '1)))
            (let _%loop100589%_ ((_%probe100592%_ _%start100585%_)
                                 (_%i100594%_ '1))
              (let ((_%k100597%_ (vector-ref _%table100571%_ _%probe100592%_)))
                (if (eq? _%k100597%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100597%_ (macro-deleted-obj))
                        (_%loop100589%_
                         (let ((_%next-probe100602%_
                                (fx+ _%start100585%_
                                     _%i100594%_
                                     (fx* _%i100594%_ _%i100594%_))))
                           (##fxmodulo _%next-probe100602%_ _%size100579%_))
                         (##fx+ _%i100594%_ '1))
                        (if (##string=? _%key100568%_ _%k100597%_)
                            (let ()
                              (vector-set!
                               _%table100571%_
                               _%probe100592%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100571%_
                               (##fx+ _%probe100592%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100566%_
                                  (##fx- (&raw-table-count _%tab100566%_)
                                         '1)))))
                            (_%loop100589%_
                             (let ((_%next-probe100608%_
                                    (fx+ _%start100585%_
                                         _%i100594%_
                                         (fx* _%i100594%_ _%i100594%_))))
                               (##fxmodulo
                                _%next-probe100608%_
                                _%size100579%_))
                             (##fx+ _%i100594%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint100547%_ _%seed100549%_)
        (make-raw-table__%
         _%size-hint100547%_
         immediate-hash
         eq?
         _%seed100549%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint100555%_ '#f) (_%seed100557%_ '0))
          (make-immediate-table__% _%size-hint100555%_ _%seed100557%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint100559%_)
        (let ((_%seed100561%_ '0))
          (make-immediate-table__% _%size-hint100559%_ _%seed100561%_))))
    (define make-immediate-table
      (lambda _g101786_
        (let ((_g101787_ (##length _g101786_)))
          (cond ((##fx= _g101787_ 0) (apply make-immediate-table__0 _g101786_))
                ((##fx= _g101787_ 1) (apply make-immediate-table__1 _g101786_))
                ((##fx= _g101787_ 2) (apply make-immediate-table__% _g101786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g101786_))))))
    (define immediate-table-ref
      (lambda (_%tab100500%_ _%key100501%_ _%default100502%_)
        (let ((_%table100504%_ (&raw-table-table _%tab100500%_))
              (_%seed100505%_ (&raw-table-seed _%tab100500%_)))
          (let* ((_%h100507%_
                  (fxxor (immediate-hash _%key100501%_) _%seed100505%_))
                 (_%size100510%_ (vector-length _%table100504%_))
                 (_%entries100513%_ (##fxquotient _%size100510%_ '2))
                 (_%start100516%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100507%_ _%entries100513%_)
                   '1)))
            (let _%loop100520%_ ((_%probe100523%_ _%start100516%_)
                                 (_%i100525%_ '1)
                                 (_%deleted100527%_ '#f))
              (let ((_%k100530%_ (vector-ref _%table100504%_ _%probe100523%_)))
                (if (eq? _%k100530%_ (macro-unused-obj))
                    _%default100502%_
                    (if (eq? _%k100530%_ (macro-deleted-obj))
                        (_%loop100520%_
                         (let ((_%next-probe100535%_
                                (fx+ _%start100516%_
                                     _%i100525%_
                                     (fx* _%i100525%_ _%i100525%_))))
                           (##fxmodulo _%next-probe100535%_ _%size100510%_))
                         (##fx+ _%i100525%_ '1)
                         (let ((_%$e100538%_ _%deleted100527%_))
                           (if _%$e100538%_ _%$e100538%_ _%probe100523%_)))
                        (if (eq? _%key100501%_ _%k100530%_)
                            (vector-ref
                             _%table100504%_
                             (##fx+ _%probe100523%_ '1))
                            (_%loop100520%_
                             (let ((_%next-probe100543%_
                                    (fx+ _%start100516%_
                                         _%i100525%_
                                         (fx* _%i100525%_ _%i100525%_))))
                               (##fxmodulo
                                _%next-probe100543%_
                                _%size100510%_))
                             (##fx+ _%i100525%_ '1)
                             _%deleted100527%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab100496%_ _%key100497%_ _%value100498%_)
        (if (##fx< (&raw-table-free _%tab100496%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100496%_))
                    '4))
            (__raw-table-rehash! _%tab100496%_)
            '#!void)
        (__immediate-table-set! _%tab100496%_ _%key100497%_ _%value100498%_)))
    (define __immediate-table-set!
      (lambda (_%tab100447%_ _%key100448%_ _%value100449%_)
        (let ((_%table100452%_ (&raw-table-table _%tab100447%_))
              (_%seed100453%_ (&raw-table-seed _%tab100447%_)))
          (let* ((_%h100455%_
                  (fxxor (immediate-hash _%key100448%_) _%seed100453%_))
                 (_%size100458%_ (vector-length _%table100452%_))
                 (_%entries100461%_ (##fxquotient _%size100458%_ '2))
                 (_%start100464%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100455%_ _%entries100461%_)
                   '1)))
            (let _%loop100468%_ ((_%probe100471%_ _%start100464%_)
                                 (_%i100473%_ '1)
                                 (_%deleted100475%_ '#f))
              (let ((_%k100478%_ (vector-ref _%table100452%_ _%probe100471%_)))
                (if (eq? _%k100478%_ (macro-unused-obj))
                    (if _%deleted100475%_
                        (begin
                          (vector-set!
                           _%table100452%_
                           _%deleted100475%_
                           _%key100448%_)
                          (vector-set!
                           _%table100452%_
                           (##fx+ _%deleted100475%_ '1)
                           _%value100449%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100447%_
                              (##fx+ (&raw-table-count _%tab100447%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100452%_
                           _%probe100471%_
                           _%key100448%_)
                          (vector-set!
                           _%table100452%_
                           (##fx+ _%probe100471%_ '1)
                           _%value100449%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100447%_
                              (##fx- (&raw-table-free _%tab100447%_) '1))
                             (&raw-table-count-set!
                              _%tab100447%_
                              (##fx+ (&raw-table-count _%tab100447%_) '1))))))
                    (if (eq? _%k100478%_ (macro-deleted-obj))
                        (_%loop100468%_
                         (let ((_%next-probe100485%_
                                (fx+ _%start100464%_
                                     _%i100473%_
                                     (fx* _%i100473%_ _%i100473%_))))
                           (##fxmodulo _%next-probe100485%_ _%size100458%_))
                         (##fx+ _%i100473%_ '1)
                         (let ((_%$e100488%_ _%deleted100475%_))
                           (if _%$e100488%_ _%$e100488%_ _%probe100471%_)))
                        (if (eq? _%key100448%_ _%k100478%_)
                            (let ()
                              (vector-set!
                               _%table100452%_
                               _%probe100471%_
                               _%key100448%_)
                              (vector-set!
                               _%table100452%_
                               (##fx+ _%probe100471%_ '1)
                               _%value100449%_))
                            (_%loop100468%_
                             (let ((_%next-probe100493%_
                                    (fx+ _%start100464%_
                                         _%i100473%_
                                         (fx* _%i100473%_ _%i100473%_))))
                               (##fxmodulo
                                _%next-probe100493%_
                                _%size100458%_))
                             (##fx+ _%i100473%_ '1)
                             _%deleted100475%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab100442%_
               _%key100443%_
               _%immediate-table-update!100444%_
               _%default100445%_)
        (if (##fx< (&raw-table-free _%tab100442%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100442%_))
                    '4))
            (__raw-table-rehash! _%tab100442%_)
            '#!void)
        (__immediate-table-update!
         _%tab100442%_
         _%key100443%_
         _%immediate-table-update!100444%_
         _%default100445%_)))
    (define __immediate-table-update!
      (lambda (_%tab100392%_
               _%key100393%_
               _%immediate-table-update!100394%_
               _%default100395%_)
        (let ((_%table100398%_ (&raw-table-table _%tab100392%_))
              (_%seed100399%_ (&raw-table-seed _%tab100392%_)))
          (let* ((_%h100401%_
                  (fxxor (immediate-hash _%key100393%_) _%seed100399%_))
                 (_%size100404%_ (vector-length _%table100398%_))
                 (_%entries100407%_ (##fxquotient _%size100404%_ '2))
                 (_%start100410%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100401%_ _%entries100407%_)
                   '1)))
            (let _%loop100414%_ ((_%probe100417%_ _%start100410%_)
                                 (_%i100419%_ '1)
                                 (_%deleted100421%_ '#f))
              (let ((_%k100424%_ (vector-ref _%table100398%_ _%probe100417%_)))
                (if (eq? _%k100424%_ (macro-unused-obj))
                    (if _%deleted100421%_
                        (begin
                          (vector-set!
                           _%table100398%_
                           _%deleted100421%_
                           _%key100393%_)
                          (vector-set!
                           _%table100398%_
                           (##fx+ _%deleted100421%_ '1)
                           (_%immediate-table-update!100394%_
                            _%default100395%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100392%_
                              (##fx+ (&raw-table-count _%tab100392%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100398%_
                           _%probe100417%_
                           _%key100393%_)
                          (vector-set!
                           _%table100398%_
                           (##fx+ _%probe100417%_ '1)
                           (_%immediate-table-update!100394%_
                            _%default100395%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100392%_
                              (##fx- (&raw-table-free _%tab100392%_) '1))
                             (&raw-table-count-set!
                              _%tab100392%_
                              (##fx+ (&raw-table-count _%tab100392%_) '1))))))
                    (if (eq? _%k100424%_ (macro-deleted-obj))
                        (_%loop100414%_
                         (let ((_%next-probe100431%_
                                (fx+ _%start100410%_
                                     _%i100419%_
                                     (fx* _%i100419%_ _%i100419%_))))
                           (##fxmodulo _%next-probe100431%_ _%size100404%_))
                         (##fx+ _%i100419%_ '1)
                         (let ((_%$e100434%_ _%deleted100421%_))
                           (if _%$e100434%_ _%$e100434%_ _%probe100417%_)))
                        (if (eq? _%key100393%_ _%k100424%_)
                            (let ()
                              (vector-set!
                               _%table100398%_
                               _%probe100417%_
                               _%key100393%_)
                              (vector-set!
                               _%table100398%_
                               (##fx+ _%probe100417%_ '1)
                               (_%immediate-table-update!100394%_
                                (vector-ref
                                 _%table100398%_
                                 (##fx+ _%probe100417%_ '1)))))
                            (_%loop100414%_
                             (let ((_%next-probe100439%_
                                    (fx+ _%start100410%_
                                         _%i100419%_
                                         (fx* _%i100419%_ _%i100419%_))))
                               (##fxmodulo
                                _%next-probe100439%_
                                _%size100404%_))
                             (##fx+ _%i100419%_ '1)
                             _%deleted100421%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab100347%_ _%key100349%_)
        (let ((_%table100352%_ (&raw-table-table _%tab100347%_))
              (_%seed100354%_ (&raw-table-seed _%tab100347%_)))
          (let* ((_%h100357%_
                  (fxxor (immediate-hash _%key100349%_) _%seed100354%_))
                 (_%size100360%_ (vector-length _%table100352%_))
                 (_%entries100363%_ (##fxquotient _%size100360%_ '2))
                 (_%start100366%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100357%_ _%entries100363%_)
                   '1)))
            (let _%loop100370%_ ((_%probe100373%_ _%start100366%_)
                                 (_%i100375%_ '1))
              (let ((_%k100378%_ (vector-ref _%table100352%_ _%probe100373%_)))
                (if (eq? _%k100378%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100378%_ (macro-deleted-obj))
                        (_%loop100370%_
                         (let ((_%next-probe100383%_
                                (fx+ _%start100366%_
                                     _%i100375%_
                                     (fx* _%i100375%_ _%i100375%_))))
                           (##fxmodulo _%next-probe100383%_ _%size100360%_))
                         (##fx+ _%i100375%_ '1))
                        (if (eq? _%key100349%_ _%k100378%_)
                            (let ()
                              (vector-set!
                               _%table100352%_
                               _%probe100373%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100352%_
                               (##fx+ _%probe100373%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100347%_
                                  (##fx- (&raw-table-count _%tab100347%_)
                                         '1)))))
                            (_%loop100370%_
                             (let ((_%next-probe100389%_
                                    (fx+ _%start100366%_
                                         _%i100375%_
                                         (fx* _%i100375%_ _%i100375%_))))
                               (##fxmodulo
                                _%next-probe100389%_
                                _%size100360%_))
                             (##fx+ _%i100375%_ '1)))))))))))
    (define __gc-table::t.id 'gerbil#__gc-table::t)
    (define __gc-table::t
      (##structure
       ##type-type
       __gc-table::t.id
       'gc-table
       '26
       '#f
       '#(gcht 5 #f immediate 5 #f)))
    (define __gc-table-loads '#f64(.45 .6363961030678927 .9))
    (define &gc-table-gcht
      (lambda (_%tab100345%_)
        (##unchecked-structure-ref
         _%tab100345%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab100343%_)
        (##unchecked-structure-ref
         _%tab100343%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab100340%_ _%val100341%_)
        (##unchecked-structure-set!
         _%tab100340%_
         _%val100341%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab100337%_ _%val100338%_)
        (##unchecked-structure-set!
         _%tab100337%_
         _%val100338%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint100313%_ _%klass100314%_ _%flags100315%_)
        (let ((_%gcht100317%_
               (__gc-table-new
                (if (fixnum? _%size-hint100313%_) _%size-hint100313%_ '16)
                _%flags100315%_)))
          (##structure _%klass100314%_ _%gcht100317%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint100322%_)
        (let* ((_%klass100324%_ __gc-table::t) (_%flags100326%_ '0))
          (make-gc-table__%
           _%size-hint100322%_
           _%klass100324%_
           _%flags100326%_))))
    (define make-gc-table__1
      (lambda (_%size-hint100328%_ _%klass100329%_)
        (let ((_%flags100331%_ '0))
          (make-gc-table__%
           _%size-hint100328%_
           _%klass100329%_
           _%flags100331%_))))
    (define make-gc-table
      (lambda _g101788_
        (let ((_g101789_ (##length _g101788_)))
          (cond ((##fx= _g101789_ 1) (apply make-gc-table__0 _g101788_))
                ((##fx= _g101789_ 2) (apply make-gc-table__1 _g101788_))
                ((##fx= _g101789_ 3) (apply make-gc-table__% _g101788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g101788_))))))
    (define __gc-table-immediate
      (lambda (_%tab100304%_)
        (let ((_%$e100306%_ (&gc-table-immediate _%tab100304%_)))
          (if _%$e100306%_
              _%$e100306%_
              (let ((_%immediate100310%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab100304%_ _%immediate100310%_)
                _%immediate100310%_)))))
    (define __gc-table-new
      (lambda (_%size100294%_ _%flags100295%_)
        (let* ((_%flags100297%_
                (##fxand _%flags100295%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags100299%_
                (fxior _%flags100297%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht100301%_
                (##gc-hash-table-allocate
                 _%size100294%_
                 _%flags100299%_
                 __gc-table-loads)))
          _%gcht100301%_)))
    (define __gc-table-e
      (lambda (_%tab100289%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht100292%_ (&gc-table-gcht _%tab100289%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht100292%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht100292%_
              (begin
                (__gc-table-rehash! _%tab100289%_)
                (&gc-table-gcht _%tab100289%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab100280%_)
        (let* ((_%old-table100282%_ (&gc-table-gcht _%tab100280%_))
               (_%new-table100284%_
                (##gc-hash-table-resize! _%old-table100282%_ __gc-table-loads))
               (_%gcht100286%_
                (##gc-hash-table-rehash!
                 _%old-table100282%_
                 _%new-table100284%_)))
          (&gc-table-gcht-set! _%tab100280%_ _%gcht100286%_))))
    (define gc-table-ref
      (lambda (_%tab100264%_ _%key100265%_ _%default100266%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key100265%_)
            (let* ((_%gcht100270%_ (__gc-table-e _%tab100264%_))
                   (_%value100272%_
                    (##gc-hash-table-ref _%gcht100270%_ _%key100265%_)))
              (if (eq? _%value100272%_ (macro-unused-obj))
                  _%default100266%_
                  _%value100272%_))
            (let ((_%$e100274%_ (&gc-table-immediate _%tab100264%_)))
              (if _%$e100274%_
                  ((lambda (_%immediate100277%_)
                     (immediate-table-ref
                      _%immediate100277%_
                      _%key100265%_
                      _%default100266%_))
                   _%$e100274%_)
                  _%default100266%_)))))
    (define gc-table-set!
      (lambda (_%tab100257%_ _%key100258%_ _%value100259%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key100258%_)
            (let ((_%gcht100262%_ (__gc-table-e _%tab100257%_)))
              (if (##gc-hash-table-set!
                   _%gcht100262%_
                   _%key100258%_
                   _%value100259%_)
                  (begin
                    (__gc-table-rehash! _%tab100257%_)
                    (gc-table-set!
                     _%tab100257%_
                     _%key100258%_
                     _%value100259%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab100257%_)
             _%key100258%_
             _%value100259%_))))
    (define gc-table-update!
      (lambda (_%tab100250%_ _%key100251%_ _%update100252%_ _%default100253%_)
        (if (##mem-allocated? _%key100251%_)
            (let ((_%value100255%_
                   (gc-table-ref
                    _%tab100250%_
                    _%key100251%_
                    _%default100253%_)))
              (gc-table-set!
               _%tab100250%_
               _%key100251%_
               (_%update100252%_ _%value100255%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab100250%_)
             _%key100251%_
             _%update100252%_
             _%default100253%_))))
    (define gc-table-delete!
      (lambda (_%tab100238%_ _%key100239%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key100239%_)
            (let ((_%gcht100243%_ (__gc-table-e _%tab100238%_)))
              (if (##gc-hash-table-set!
                   _%gcht100243%_
                   _%key100239%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab100238%_)
                    (gc-table-delete! _%tab100238%_ _%key100239%_))
                  '#!void))
            (let ((_%$e100245%_ (&gc-table-immediate _%tab100238%_)))
              (if _%$e100245%_
                  ((lambda (_%immediate100248%_)
                     (immediate-table-delete!
                      _%immediate100248%_
                      _%key100239%_))
                   _%$e100245%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab100227%_ _%proc100228%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht100231%_ (__gc-table-e _%tab100227%_)))
            (##gc-hash-table-for-each _%proc100228%_ _%gcht100231%_))
          (let ((_%$e100233%_ (&gc-table-immediate _%tab100227%_)))
            (if _%$e100233%_
                ((lambda (_%immediate100236%_)
                   (raw-table-for-each _%immediate100236%_ _%proc100228%_))
                 _%$e100233%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab100215%_)
        (let* ((_%gcht100217%_ (__gc-table-e _%tab100215%_))
               (_%new-table100219%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht100217%_)
                 (macro-gc-hash-table-flags _%gcht100217%_)))
               (_%result100221%_
                (##structure
                 (##structure-type _%tab100215%_)
                 _%new-table100219%_
                 '#f)))
          (gc-table-for-each
           _%tab100215%_
           (lambda (_%k100224%_ _%v100225%_)
             (gc-table-set! _%result100221%_ _%k100224%_ _%v100225%_)))
          _%result100221%_)))
    (define gc-table-clear!
      (lambda (_%tab100208%_)
        (let* ((_%gcht100210%_ (__gc-table-e _%tab100208%_))
               (_%new-table100212%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht100210%_))))
          (&gc-table-gcht-set! _%tab100208%_ _%new-table100212%_)
          (&gc-table-immediate-set! _%tab100208%_ '#f))))
    (define gc-table-length
      (lambda (_%tab100200%_)
        (let ((_%gcht100202%_ (__gc-table-e _%tab100200%_)))
          (fx+ (macro-gc-hash-table-count _%gcht100202%_)
               (let ((_%$e100204%_ (&gc-table-immediate _%tab100200%_)))
                 (if _%$e100204%_ (&raw-table-count _%$e100204%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj100185%_)
        (declare (not interrupts-enabled))
        (let ((_%val100188%_
               (gc-table-ref __object-eq-hash _%obj100185%_ '#f)))
          (if _%val100188%_
              _%val100188%_
              (let* ((_%mix100190%_ __object-eq-hash-next)
                     (_%ptr100192%_ (##type-cast _%obj100185%_ '0))
                     (_%h100194%_
                      (fxand (fxxor _%mix100190%_ _%ptr100192%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e100197%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e100197%_ _%$e100197%_ '0)))
                (gc-table-set! __object-eq-hash _%obj100185%_ _%h100194%_)
                _%h100194%_)))))))
