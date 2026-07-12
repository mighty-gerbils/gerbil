(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1783878473)
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
       '#(table
          1
          #f
          count
          0
          #f
          free
          0
          #f
          hash
          0
          #f
          test
          0
          #f
          seed
          0
          #f
          lock
          0
          #f)))
    (define raw-table?
      (lambda (_%obj122337%_)
        (if (##structure? _%obj122337%_)
            (##structure-instance-of? _%obj122337%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab122335%_)
        (##unchecked-structure-ref
         _%tab122335%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab122333%_)
        (##unchecked-structure-ref
         _%tab122333%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab122331%_)
        (##unchecked-structure-ref
         _%tab122331%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab122329%_)
        (##unchecked-structure-ref
         _%tab122329%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab122327%_)
        (##unchecked-structure-ref
         _%tab122327%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab122325%_)
        (##unchecked-structure-ref
         _%tab122325%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab122323%_)
        (##unchecked-structure-ref
         _%tab122323%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab122320%_ _%val122321%_)
        (##unchecked-structure-set!
         _%tab122320%_
         _%val122321%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab122317%_ _%val122318%_)
        (##unchecked-structure-set!
         _%tab122317%_
         _%val122318%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab122314%_ _%val122315%_)
        (##unchecked-structure-set!
         _%tab122314%_
         _%val122315%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab122311%_ _%val122312%_)
        (##unchecked-structure-set!
         _%tab122311%_
         _%val122312%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab122308%_ _%val122309%_)
        (##unchecked-structure-set!
         _%tab122308%_
         _%val122309%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab122305%_ _%val122306%_)
        (##unchecked-structure-set!
         _%tab122305%_
         _%val122306%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab122302%_ _%val122303%_)
        (##unchecked-structure-set!
         _%tab122302%_
         _%val122303%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint122300%_)
        (if (and (fixnum? _%size-hint122300%_) (##fx> _%size-hint122300%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint122300%_)))
                   '4)
            '16)))
    (define ensure-lock
      (lambda (_%lock122296%_)
        (if (eq? _%lock122296%_ '#t) (vector '0 '#f) _%lock122296%_)))
    (define make-raw-table__%
      (lambda (_%size-hint122261%_
               _%hash122262%_
               _%test122263%_
               _%seed122264%_
               _%lock122265%_)
        (let* ((_%size122267%_ (raw-table-size-hint->size _%size-hint122261%_))
               (_%table122269%_
                (##make-vector _%size122267%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table122269%_
           '0
           (##fxquotient _%size122267%_ '2)
           _%hash122262%_
           _%test122263%_
           _%seed122264%_
           (ensure-lock _%lock122265%_)))))
    (define make-raw-table__0
      (lambda (_%size-hint122275%_ _%hash122276%_ _%test122277%_)
        (let* ((_%seed122279%_ '0) (_%lock122281%_ '#f))
          (make-raw-table__%
           _%size-hint122275%_
           _%hash122276%_
           _%test122277%_
           _%seed122279%_
           _%lock122281%_))))
    (define make-raw-table__1
      (lambda (_%size-hint122283%_
               _%hash122284%_
               _%test122285%_
               _%seed122286%_)
        (let ((_%lock122288%_ '#f))
          (make-raw-table__%
           _%size-hint122283%_
           _%hash122284%_
           _%test122285%_
           _%seed122286%_
           _%lock122288%_))))
    (define make-raw-table
      (lambda _g122338_
        (let ((_g122339_ (##length _g122338_)))
          (cond ((##fx= _g122339_ 3) (apply make-raw-table__0 _g122338_))
                ((##fx= _g122339_ 4) (apply make-raw-table__1 _g122338_))
                ((##fx= _g122339_ 5) (apply make-raw-table__% _g122338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g122338_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint122241%_
               _%hash122242%_
               _%test122243%_
               _%seed122244%_)
        (make-raw-table__%
         _%size-hint122241%_
         _%hash122242%_
         _%test122243%_
         _%seed122244%_
         '#t)))
    (define make-raw-table/lock__0
      (lambda (_%size-hint122249%_ _%hash122250%_ _%test122251%_)
        (let ((_%seed122253%_ '0))
          (make-raw-table/lock__%
           _%size-hint122249%_
           _%hash122250%_
           _%test122251%_
           _%seed122253%_))))
    (define make-raw-table/lock
      (lambda _g122340_
        (let ((_g122341_ (##length _g122340_)))
          (cond ((##fx= _g122341_ 3) (apply make-raw-table/lock__0 _g122340_))
                ((##fx= _g122341_ 4) (apply make-raw-table/lock__% _g122340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g122340_))))))
    (define raw-table-length
      (lambda (_%tab122238%_) (&raw-table-count _%tab122238%_)))
    (define raw-table-length/lock
      (lambda (_%tab122211%_)
        (let ((_%lock122213%_ (&raw-table-lock _%tab122211%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122218%_ ((_%spin122221%_ '0))
              (if (##fx= (##vector-cas! _%lock122213%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122213%_ '1 (current-thread))
                  (if (##fx< _%spin122221%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122218%_ (##fx+ _%spin122221%_ '1)))
                      (let ((_%owner122227%_ (##vector-ref _%lock122213%_ '1)))
                        (if (eq? _%owner122227%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122227%_)
                                (let () (##thread-yield!) (_%again122218%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122233%_ (&raw-table-count _%tab122211%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122213%_ '1 '#f)
                (##vector-cas! _%lock122213%_ '0 '0 '1)))
            _%$r122233%_))))
    (define raw-table-ref
      (lambda (_%tab122163%_ _%key122164%_ _%default122165%_)
        (let ((_%table122167%_ (&raw-table-table _%tab122163%_))
              (_%seed122168%_ (&raw-table-seed _%tab122163%_))
              (_%hash122169%_ (&raw-table-hash _%tab122163%_))
              (_%test122170%_ (&raw-table-test _%tab122163%_)))
          (let* ((_%h122172%_
                  (fxxor (_%hash122169%_ _%key122164%_) _%seed122168%_))
                 (_%size122175%_ (vector-length _%table122167%_))
                 (_%entries122178%_ (##fxquotient _%size122175%_ '2))
                 (_%start122181%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122172%_ _%entries122178%_)
                   '1)))
            (let _%loop122185%_ ((_%probe122188%_ _%start122181%_)
                                 (_%i122190%_ '1)
                                 (_%deleted122192%_ '#f))
              (let ((_%k122195%_ (vector-ref _%table122167%_ _%probe122188%_)))
                (if (eq? _%k122195%_ (macro-unused-obj))
                    _%default122165%_
                    (if (eq? _%k122195%_ (macro-deleted-obj))
                        (_%loop122185%_
                         (let ((_%next-probe122200%_
                                (fx+ _%start122181%_
                                     _%i122190%_
                                     (fx* _%i122190%_ _%i122190%_))))
                           (##fxmodulo _%next-probe122200%_ _%size122175%_))
                         (##fx+ _%i122190%_ '1)
                         (let ((_%$e122203%_ _%deleted122192%_))
                           (if _%$e122203%_ _%$e122203%_ _%probe122188%_)))
                        (if (_%test122170%_ _%key122164%_ _%k122195%_)
                            (vector-ref
                             _%table122167%_
                             (##fx+ _%probe122188%_ '1))
                            (_%loop122185%_
                             (let ((_%next-probe122208%_
                                    (fx+ _%start122181%_
                                         _%i122190%_
                                         (fx* _%i122190%_ _%i122190%_))))
                               (##fxmodulo
                                _%next-probe122208%_
                                _%size122175%_))
                             (##fx+ _%i122190%_ '1)
                             _%deleted122192%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab122134%_ _%key122135%_ _%default122136%_)
        (let ((_%lock122138%_ (&raw-table-lock _%tab122134%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122143%_ ((_%spin122146%_ '0))
              (if (##fx= (##vector-cas! _%lock122138%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122138%_ '1 (current-thread))
                  (if (##fx< _%spin122146%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122143%_ (##fx+ _%spin122146%_ '1)))
                      (let ((_%owner122152%_ (##vector-ref _%lock122138%_ '1)))
                        (if (eq? _%owner122152%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122152%_)
                                (let () (##thread-yield!) (_%again122143%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122158%_
                 (raw-table-ref
                  _%tab122134%_
                  _%key122135%_
                  _%default122136%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122138%_ '1 '#f)
                (##vector-cas! _%lock122138%_ '0 '0 '1)))
            _%$r122158%_))))
    (define raw-table-set!
      (lambda (_%tab122130%_ _%key122131%_ _%value122132%_)
        (if (##fx< (&raw-table-free _%tab122130%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab122130%_))
                    '4))
            (__raw-table-rehash! _%tab122130%_)
            '#!void)
        (__raw-table-set! _%tab122130%_ _%key122131%_ _%value122132%_)))
    (define raw-table-set!/lock
      (lambda (_%tab122101%_ _%key122102%_ _%value122103%_)
        (let ((_%lock122105%_ (&raw-table-lock _%tab122101%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122110%_ ((_%spin122113%_ '0))
              (if (##fx= (##vector-cas! _%lock122105%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122105%_ '1 (current-thread))
                  (if (##fx< _%spin122113%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122110%_ (##fx+ _%spin122113%_ '1)))
                      (let ((_%owner122119%_ (##vector-ref _%lock122105%_ '1)))
                        (if (eq? _%owner122119%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122119%_)
                                (let () (##thread-yield!) (_%again122110%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122125%_
                 (raw-table-set! _%tab122101%_ _%key122102%_ _%value122103%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122105%_ '1 '#f)
                (##vector-cas! _%lock122105%_ '0 '0 '1)))
            _%$r122125%_))))
    (define raw-table-update!
      (lambda (_%tab122096%_ _%key122097%_ _%update122098%_ _%default122099%_)
        (if (##fx< (&raw-table-free _%tab122096%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab122096%_))
                    '4))
            (__raw-table-rehash! _%tab122096%_)
            '#!void)
        (__raw-table-update!
         _%tab122096%_
         _%key122097%_
         _%update122098%_
         _%default122099%_)))
    (define raw-table-update!/lock
      (lambda (_%tab122066%_ _%key122067%_ _%update122068%_ _%default122069%_)
        (let ((_%lock122071%_ (&raw-table-lock _%tab122066%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122076%_ ((_%spin122079%_ '0))
              (if (##fx= (##vector-cas! _%lock122071%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122071%_ '1 (current-thread))
                  (if (##fx< _%spin122079%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122076%_ (##fx+ _%spin122079%_ '1)))
                      (let ((_%owner122085%_ (##vector-ref _%lock122071%_ '1)))
                        (if (eq? _%owner122085%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122085%_)
                                (let () (##thread-yield!) (_%again122076%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122091%_
                 (raw-table-update!
                  _%tab122066%_
                  _%key122067%_
                  _%update122068%_
                  _%default122069%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122071%_ '1 '#f)
                (##vector-cas! _%lock122071%_ '0 '0 '1)))
            _%$r122091%_))))
    (define raw-table-delete!
      (lambda (_%tab122023%_ _%key122024%_)
        (let ((_%table122026%_ (&raw-table-table _%tab122023%_))
              (_%seed122027%_ (&raw-table-seed _%tab122023%_))
              (_%hash122028%_ (&raw-table-hash _%tab122023%_))
              (_%test122029%_ (&raw-table-test _%tab122023%_)))
          (let* ((_%h122031%_
                  (fxxor (_%hash122028%_ _%key122024%_) _%seed122027%_))
                 (_%size122034%_ (vector-length _%table122026%_))
                 (_%entries122037%_ (##fxquotient _%size122034%_ '2))
                 (_%start122040%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122031%_ _%entries122037%_)
                   '1)))
            (let _%loop122044%_ ((_%probe122047%_ _%start122040%_)
                                 (_%i122049%_ '1))
              (let ((_%k122052%_ (vector-ref _%table122026%_ _%probe122047%_)))
                (if (eq? _%k122052%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k122052%_ (macro-deleted-obj))
                        (_%loop122044%_
                         (let ((_%next-probe122057%_
                                (fx+ _%start122040%_
                                     _%i122049%_
                                     (fx* _%i122049%_ _%i122049%_))))
                           (##fxmodulo _%next-probe122057%_ _%size122034%_))
                         (##fx+ _%i122049%_ '1))
                        (if (_%test122029%_ _%key122024%_ _%k122052%_)
                            (let ()
                              (vector-set!
                               _%table122026%_
                               _%probe122047%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table122026%_
                               (##fx+ _%probe122047%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab122023%_
                               (##fx- (&raw-table-count _%tab122023%_) '1)))
                            (_%loop122044%_
                             (let ((_%next-probe122063%_
                                    (fx+ _%start122040%_
                                         _%i122049%_
                                         (fx* _%i122049%_ _%i122049%_))))
                               (##fxmodulo
                                _%next-probe122063%_
                                _%size122034%_))
                             (##fx+ _%i122049%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab121995%_ _%key121996%_)
        (let ((_%lock121998%_ (&raw-table-lock _%tab121995%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122003%_ ((_%spin122006%_ '0))
              (if (##fx= (##vector-cas! _%lock121998%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121998%_ '1 (current-thread))
                  (if (##fx< _%spin122006%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122003%_ (##fx+ _%spin122006%_ '1)))
                      (let ((_%owner122012%_ (##vector-ref _%lock121998%_ '1)))
                        (if (eq? _%owner122012%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122012%_)
                                (let () (##thread-yield!) (_%again122003%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122018%_ (raw-table-delete! _%tab121995%_ _%key121996%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121998%_ '1 '#f)
                (##vector-cas! _%lock121998%_ '0 '0 '1)))
            _%$r122018%_))))
    (define raw-table-for-each
      (lambda (_%tab121979%_ _%proc121980%_)
        (let* ((_%table121982%_ (&raw-table-table _%tab121979%_))
               (_%size121984%_ (vector-length _%table121982%_)))
          (let _%loop121987%_ ((_%i121989%_ '0))
            (if (##fx< _%i121989%_ _%size121984%_)
                (begin
                  (let ((_%key121991%_
                         (vector-ref _%table121982%_ _%i121989%_)))
                    (if (if (eq? _%key121991%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key121991%_ (macro-deleted-obj))))
                        (let ((_%value121993%_
                               (vector-ref
                                _%table121982%_
                                (##fx+ _%i121989%_ '1))))
                          (_%proc121980%_ _%key121991%_ _%value121993%_))
                        '#!void))
                  (_%loop121987%_ (##fx+ _%i121989%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab121951%_ _%proc121952%_)
        (let ((_%lock121954%_ (&raw-table-lock _%tab121951%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121959%_ ((_%spin121962%_ '0))
              (if (##fx= (##vector-cas! _%lock121954%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121954%_ '1 (current-thread))
                  (if (##fx< _%spin121962%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121959%_ (##fx+ _%spin121962%_ '1)))
                      (let ((_%owner121968%_ (##vector-ref _%lock121954%_ '1)))
                        (if (eq? _%owner121968%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121968%_)
                                (let () (##thread-yield!) (_%again121959%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121974%_
                 (raw-table-for-each _%tab121951%_ _%proc121952%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121954%_ '1 '#f)
                (##vector-cas! _%lock121954%_ '0 '0 '1)))
            _%$r121974%_))))
    (define raw-table-copy
      (lambda (_%tab121947%_)
        (let ((_%new-tab121949%_ (##structure-copy _%tab121947%_)))
          (&raw-table-table-set!
           _%new-tab121949%_
           (vector-copy (&raw-table-table _%tab121947%_)))
          (&raw-table-lock-set!
           _%new-tab121949%_
           (ensure-lock (if (&raw-table-lock _%tab121947%_) '#t '#f)))
          _%new-tab121949%_)))
    (define raw-table-copy/lock
      (lambda (_%tab121920%_)
        (let ((_%lock121922%_ (&raw-table-lock _%tab121920%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121927%_ ((_%spin121930%_ '0))
              (if (##fx= (##vector-cas! _%lock121922%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121922%_ '1 (current-thread))
                  (if (##fx< _%spin121930%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121927%_ (##fx+ _%spin121930%_ '1)))
                      (let ((_%owner121936%_ (##vector-ref _%lock121922%_ '1)))
                        (if (eq? _%owner121936%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121936%_)
                                (let () (##thread-yield!) (_%again121927%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121942%_ (raw-table-copy _%tab121920%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121922%_ '1 '#f)
                (##vector-cas! _%lock121922%_ '0 '0 '1)))
            _%$r121942%_))))
    (define raw-table-new__%
      (lambda (_%tab121907%_ _%size-hint121908%_)
        (make-raw-table__%
         (if (eq? _%size-hint121908%_ '#t)
             (vector-length (&raw-table-table _%tab121907%_))
             _%size-hint121908%_)
         (&raw-table-hash _%tab121907%_)
         (&raw-table-test _%tab121907%_)
         (&raw-table-seed _%tab121907%_)
         (if (&raw-table-lock _%tab121907%_) '#t '#f))))
    (define raw-table-new__0
      (lambda (_%tab121913%_)
        (let ((_%size-hint121915%_ '#f))
          (raw-table-new__% _%tab121913%_ _%size-hint121915%_))))
    (define raw-table-new
      (lambda _g122342_
        (let ((_g122343_ (##length _g122342_)))
          (cond ((##fx= _g122343_ 1) (apply raw-table-new__0 _g122342_))
                ((##fx= _g122343_ 2) (apply raw-table-new__% _g122342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  raw-table-new
                  _g122342_))))))
    (define raw-table-clear!
      (lambda (_%tab121904%_)
        (vector-fill! (&raw-table-table _%tab121904%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab121904%_ '0)
        (&raw-table-free-set!
         _%tab121904%_
         (##fxquotient (vector-length (&raw-table-table _%tab121904%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab121877%_)
        (let ((_%lock121879%_ (&raw-table-lock _%tab121877%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121884%_ ((_%spin121887%_ '0))
              (if (##fx= (##vector-cas! _%lock121879%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121879%_ '1 (current-thread))
                  (if (##fx< _%spin121887%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121884%_ (##fx+ _%spin121887%_ '1)))
                      (let ((_%owner121893%_ (##vector-ref _%lock121879%_ '1)))
                        (if (eq? _%owner121893%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121893%_)
                                (let () (##thread-yield!) (_%again121884%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121899%_ (raw-table-clear! _%tab121877%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121879%_ '1 '#f)
                (##vector-cas! _%lock121879%_ '0 '0 '1)))
            _%$r121899%_))))
    (define __raw-table-set!
      (lambda (_%tab121827%_ _%key121828%_ _%value121829%_)
        (let ((_%table121831%_ (&raw-table-table _%tab121827%_))
              (_%seed121832%_ (&raw-table-seed _%tab121827%_))
              (_%hash121833%_ (&raw-table-hash _%tab121827%_))
              (_%test121834%_ (&raw-table-test _%tab121827%_)))
          (let* ((_%h121836%_
                  (fxxor (_%hash121833%_ _%key121828%_) _%seed121832%_))
                 (_%size121839%_ (vector-length _%table121831%_))
                 (_%entries121842%_ (##fxquotient _%size121839%_ '2))
                 (_%start121845%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121836%_ _%entries121842%_)
                   '1)))
            (let _%loop121849%_ ((_%probe121852%_ _%start121845%_)
                                 (_%i121854%_ '1)
                                 (_%deleted121856%_ '#f))
              (let ((_%k121859%_ (vector-ref _%table121831%_ _%probe121852%_)))
                (if (eq? _%k121859%_ (macro-unused-obj))
                    (if _%deleted121856%_
                        (begin
                          (vector-set!
                           _%table121831%_
                           _%deleted121856%_
                           _%key121828%_)
                          (vector-set!
                           _%table121831%_
                           (##fx+ _%deleted121856%_ '1)
                           _%value121829%_)
                          (&raw-table-count-set!
                           _%tab121827%_
                           (##fx+ (&raw-table-count _%tab121827%_) '1)))
                        (begin
                          (vector-set!
                           _%table121831%_
                           _%probe121852%_
                           _%key121828%_)
                          (vector-set!
                           _%table121831%_
                           (##fx+ _%probe121852%_ '1)
                           _%value121829%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab121827%_
                             (##fx- (&raw-table-free _%tab121827%_) '1))
                            (&raw-table-count-set!
                             _%tab121827%_
                             (##fx+ (&raw-table-count _%tab121827%_) '1)))))
                    (if (eq? _%k121859%_ (macro-deleted-obj))
                        (_%loop121849%_
                         (let ((_%next-probe121866%_
                                (fx+ _%start121845%_
                                     _%i121854%_
                                     (fx* _%i121854%_ _%i121854%_))))
                           (##fxmodulo _%next-probe121866%_ _%size121839%_))
                         (##fx+ _%i121854%_ '1)
                         (let ((_%$e121869%_ _%deleted121856%_))
                           (if _%$e121869%_ _%$e121869%_ _%probe121852%_)))
                        (if (_%test121834%_ _%key121828%_ _%k121859%_)
                            (let ()
                              (vector-set!
                               _%table121831%_
                               _%probe121852%_
                               _%key121828%_)
                              (vector-set!
                               _%table121831%_
                               (##fx+ _%probe121852%_ '1)
                               _%value121829%_))
                            (_%loop121849%_
                             (let ((_%next-probe121874%_
                                    (fx+ _%start121845%_
                                         _%i121854%_
                                         (fx* _%i121854%_ _%i121854%_))))
                               (##fxmodulo
                                _%next-probe121874%_
                                _%size121839%_))
                             (##fx+ _%i121854%_ '1)
                             _%deleted121856%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab121776%_ _%key121777%_ _%update121778%_ _%default121779%_)
        (let ((_%table121781%_ (&raw-table-table _%tab121776%_))
              (_%seed121782%_ (&raw-table-seed _%tab121776%_))
              (_%hash121783%_ (&raw-table-hash _%tab121776%_))
              (_%test121784%_ (&raw-table-test _%tab121776%_)))
          (let* ((_%h121786%_
                  (fxxor (_%hash121783%_ _%key121777%_) _%seed121782%_))
                 (_%size121789%_ (vector-length _%table121781%_))
                 (_%entries121792%_ (##fxquotient _%size121789%_ '2))
                 (_%start121795%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121786%_ _%entries121792%_)
                   '1)))
            (let _%loop121799%_ ((_%probe121802%_ _%start121795%_)
                                 (_%i121804%_ '1)
                                 (_%deleted121806%_ '#f))
              (let ((_%k121809%_ (vector-ref _%table121781%_ _%probe121802%_)))
                (if (eq? _%k121809%_ (macro-unused-obj))
                    (if _%deleted121806%_
                        (begin
                          (vector-set!
                           _%table121781%_
                           _%deleted121806%_
                           _%key121777%_)
                          (vector-set!
                           _%table121781%_
                           (##fx+ _%deleted121806%_ '1)
                           (_%update121778%_ _%default121779%_))
                          (&raw-table-count-set!
                           _%tab121776%_
                           (##fx+ (&raw-table-count _%tab121776%_) '1)))
                        (begin
                          (vector-set!
                           _%table121781%_
                           _%probe121802%_
                           _%key121777%_)
                          (vector-set!
                           _%table121781%_
                           (##fx+ _%probe121802%_ '1)
                           (_%update121778%_ _%default121779%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab121776%_
                             (##fx- (&raw-table-free _%tab121776%_) '1))
                            (&raw-table-count-set!
                             _%tab121776%_
                             (##fx+ (&raw-table-count _%tab121776%_) '1)))))
                    (if (eq? _%k121809%_ (macro-deleted-obj))
                        (_%loop121799%_
                         (let ((_%next-probe121816%_
                                (fx+ _%start121795%_
                                     _%i121804%_
                                     (fx* _%i121804%_ _%i121804%_))))
                           (##fxmodulo _%next-probe121816%_ _%size121789%_))
                         (##fx+ _%i121804%_ '1)
                         (let ((_%$e121819%_ _%deleted121806%_))
                           (if _%$e121819%_ _%$e121819%_ _%probe121802%_)))
                        (if (_%test121784%_ _%key121777%_ _%k121809%_)
                            (let ()
                              (vector-set!
                               _%table121781%_
                               _%probe121802%_
                               _%key121777%_)
                              (vector-set!
                               _%table121781%_
                               (##fx+ _%probe121802%_ '1)
                               (_%update121778%_
                                (vector-ref
                                 _%table121781%_
                                 (##fx+ _%probe121802%_ '1)))))
                            (_%loop121799%_
                             (let ((_%next-probe121824%_
                                    (fx+ _%start121795%_
                                         _%i121804%_
                                         (fx* _%i121804%_ _%i121804%_))))
                               (##fxmodulo
                                _%next-probe121824%_
                                _%size121789%_))
                             (##fx+ _%i121804%_ '1)
                             _%deleted121806%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab121757%_)
        (let* ((_%old-table121759%_ (&raw-table-table _%tab121757%_))
               (_%old-size121761%_ (vector-length _%old-table121759%_))
               (_%new-size121763%_
                (if (##fx< (&raw-table-count _%tab121757%_)
                           (##fxquotient _%old-size121761%_ '4))
                    (vector-length _%old-table121759%_)
                    (##fx* '2 (vector-length _%old-table121759%_))))
               (_%new-table121765%_
                (##make-vector _%new-size121763%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab121757%_ _%new-table121765%_)
          (&raw-table-count-set! _%tab121757%_ '0)
          (&raw-table-free-set!
           _%tab121757%_
           (##fxquotient _%new-size121763%_ '2))
          (let _%lp121768%_ ((_%i121770%_ '0))
            (if (##fx< _%i121770%_ _%old-size121761%_)
                (begin
                  (let ((_%key121772%_
                         (vector-ref _%old-table121759%_ _%i121770%_)))
                    (if (if (eq? _%key121772%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key121772%_ (macro-deleted-obj))))
                        (let ((_%value121774%_
                               (vector-ref
                                _%old-table121759%_
                                (##fx+ _%i121770%_ '1))))
                          (__raw-table-set!
                           _%tab121757%_
                           _%key121772%_
                           _%value121774%_))
                        '#!void))
                  (_%lp121768%_ (##fx+ _%i121770%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj121749%_)
        (let ((_%t121751%_ (##type _%obj121749%_)))
          (if (##fx= (##fxand _%t121751%_ '1) '0)
              (fxand (##type-cast _%obj121749%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj121749%_)
                  (##symbol-hash _%obj121749%_)
                  (if (procedure? _%obj121749%_)
                      (procedure-hash _%obj121749%_)
                      (fxand (__object->eq-hash _%obj121749%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj121745%_)
        (let ((_%h121747%_
               (if (##closure? _%obj121745%_)
                   (__object->eq-hash _%obj121745%_)
                   (##type-cast _%obj121745%_ '0))))
          (fxand _%h121747%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj121743%_) (__object->eq-hash _%obj121743%_)))
    (define eqv-hash
      (lambda (_%obj121733%_)
        (letrec ((_%combine121735%_
                  (lambda (_%a121740%_ _%b121741%_)
                    (fxand (##fx* (##fx+ _%a121740%_
                                         (fxarithmetic-shift-left
                                          _%b121741%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash121736%_
                  (lambda (_%obj121738%_)
                    (macro-number-dispatch
                     _%obj121738%_
                     (eq-hash _%obj121738%_)
                     (fxand _%obj121738%_ (macro-max-fixnum32))
                     (modulo _%obj121738%_ '331804481)
                     (_%combine121735%_
                      (_%hash121736%_ (macro-ratnum-numerator _%obj121738%_))
                      (_%hash121736%_
                       (macro-ratnum-denominator _%obj121738%_)))
                     (_%combine121735%_
                      (##u16vector-ref _%obj121738%_ '0)
                      (_%combine121735%_
                       (##u16vector-ref _%obj121738%_ '1)
                       (_%combine121735%_
                        (##u16vector-ref _%obj121738%_ '2)
                        (##u16vector-ref _%obj121738%_ '3))))
                     (_%combine121735%_
                      (_%hash121736%_ (macro-cpxnum-real _%obj121738%_))
                      (_%hash121736%_ (macro-cpxnum-imag _%obj121738%_)))))))
          (_%hash121736%_ _%obj121733%_))))
    (define symbolic?
      (lambda (_%obj121728%_)
        (let ((_%$e121730%_ (symbol? _%obj121728%_)))
          (if _%$e121730%_ _%$e121730%_ (keyword? _%obj121728%_)))))
    (define symbolic-hash
      (lambda (_%obj121726%_) (##symbol-hash _%obj121726%_)))
    (define string-hash
      (lambda (_%obj121724%_) (##string=?-hash _%obj121724%_)))
    (define immediate-hash
      (lambda (_%obj121722%_) (##type-cast _%obj121722%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint121704%_ _%seed121705%_)
        (make-raw-table__1 _%size-hint121704%_ eq-hash eq? _%seed121705%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint121711%_ '#f) (_%seed121713%_ '0))
          (make-eq-table__% _%size-hint121711%_ _%seed121713%_))))
    (define make-eq-table__1
      (lambda (_%size-hint121715%_)
        (let ((_%seed121717%_ '0))
          (make-eq-table__% _%size-hint121715%_ _%seed121717%_))))
    (define make-eq-table
      (lambda _g122344_
        (let ((_g122345_ (##length _g122344_)))
          (cond ((##fx= _g122345_ 0) (apply make-eq-table__0 _g122344_))
                ((##fx= _g122345_ 1) (apply make-eq-table__1 _g122344_))
                ((##fx= _g122345_ 2) (apply make-eq-table__% _g122344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g122344_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint121684%_ _%seed121686%_)
        (make-raw-table/lock__%
         _%size-hint121684%_
         eq-hash
         eq?
         _%seed121686%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint121692%_ '#f) (_%seed121694%_ '0))
          (make-eq-table/lock__% _%size-hint121692%_ _%seed121694%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint121696%_)
        (let ((_%seed121698%_ '0))
          (make-eq-table/lock__% _%size-hint121696%_ _%seed121698%_))))
    (define make-eq-table/lock
      (lambda _g122346_
        (let ((_g122347_ (##length _g122346_)))
          (cond ((##fx= _g122347_ 0) (apply make-eq-table/lock__0 _g122346_))
                ((##fx= _g122347_ 1) (apply make-eq-table/lock__1 _g122346_))
                ((##fx= _g122347_ 2) (apply make-eq-table/lock__% _g122346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g122346_))))))
    (define eq-table-ref
      (lambda (_%tab121637%_ _%key121638%_ _%default121639%_)
        (let ((_%table121641%_ (&raw-table-table _%tab121637%_))
              (_%seed121642%_ (&raw-table-seed _%tab121637%_)))
          (let* ((_%h121644%_ (fxxor (eq-hash _%key121638%_) _%seed121642%_))
                 (_%size121647%_ (vector-length _%table121641%_))
                 (_%entries121650%_ (##fxquotient _%size121647%_ '2))
                 (_%start121653%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121644%_ _%entries121650%_)
                   '1)))
            (let _%loop121657%_ ((_%probe121660%_ _%start121653%_)
                                 (_%i121662%_ '1)
                                 (_%deleted121664%_ '#f))
              (let ((_%k121667%_ (vector-ref _%table121641%_ _%probe121660%_)))
                (if (eq? _%k121667%_ (macro-unused-obj))
                    _%default121639%_
                    (if (eq? _%k121667%_ (macro-deleted-obj))
                        (_%loop121657%_
                         (let ((_%next-probe121672%_
                                (fx+ _%start121653%_
                                     _%i121662%_
                                     (fx* _%i121662%_ _%i121662%_))))
                           (##fxmodulo _%next-probe121672%_ _%size121647%_))
                         (##fx+ _%i121662%_ '1)
                         (let ((_%$e121675%_ _%deleted121664%_))
                           (if _%$e121675%_ _%$e121675%_ _%probe121660%_)))
                        (if (eq? _%key121638%_ _%k121667%_)
                            (vector-ref
                             _%table121641%_
                             (##fx+ _%probe121660%_ '1))
                            (_%loop121657%_
                             (let ((_%next-probe121680%_
                                    (fx+ _%start121653%_
                                         _%i121662%_
                                         (fx* _%i121662%_ _%i121662%_))))
                               (##fxmodulo
                                _%next-probe121680%_
                                _%size121647%_))
                             (##fx+ _%i121662%_ '1)
                             _%deleted121664%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab121608%_ _%key121609%_ _%default121610%_)
        (let ((_%lock121612%_ (&raw-table-lock _%tab121608%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121617%_ ((_%spin121620%_ '0))
              (if (##fx= (##vector-cas! _%lock121612%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121612%_ '1 (current-thread))
                  (if (##fx< _%spin121620%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121617%_ (##fx+ _%spin121620%_ '1)))
                      (let ((_%owner121626%_ (##vector-ref _%lock121612%_ '1)))
                        (if (eq? _%owner121626%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121626%_)
                                (let () (##thread-yield!) (_%again121617%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121632%_
                 (eq-table-ref _%tab121608%_ _%key121609%_ _%default121610%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121612%_ '1 '#f)
                (##vector-cas! _%lock121612%_ '0 '0 '1)))
            _%$r121632%_))))
    (define __eq-table-set!
      (lambda (_%tab121560%_ _%key121561%_ _%value121562%_)
        (let ((_%table121564%_ (&raw-table-table _%tab121560%_))
              (_%seed121565%_ (&raw-table-seed _%tab121560%_)))
          (let* ((_%h121567%_ (fxxor (eq-hash _%key121561%_) _%seed121565%_))
                 (_%size121570%_ (vector-length _%table121564%_))
                 (_%entries121573%_ (##fxquotient _%size121570%_ '2))
                 (_%start121576%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121567%_ _%entries121573%_)
                   '1)))
            (let _%loop121580%_ ((_%probe121583%_ _%start121576%_)
                                 (_%i121585%_ '1)
                                 (_%deleted121587%_ '#f))
              (let ((_%k121590%_ (vector-ref _%table121564%_ _%probe121583%_)))
                (if (eq? _%k121590%_ (macro-unused-obj))
                    (if _%deleted121587%_
                        (begin
                          (vector-set!
                           _%table121564%_
                           _%deleted121587%_
                           _%key121561%_)
                          (vector-set!
                           _%table121564%_
                           (##fx+ _%deleted121587%_ '1)
                           _%value121562%_)
                          (&raw-table-count-set!
                           _%tab121560%_
                           (##fx+ (&raw-table-count _%tab121560%_) '1)))
                        (begin
                          (vector-set!
                           _%table121564%_
                           _%probe121583%_
                           _%key121561%_)
                          (vector-set!
                           _%table121564%_
                           (##fx+ _%probe121583%_ '1)
                           _%value121562%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab121560%_
                             (##fx- (&raw-table-free _%tab121560%_) '1))
                            (&raw-table-count-set!
                             _%tab121560%_
                             (##fx+ (&raw-table-count _%tab121560%_) '1)))))
                    (if (eq? _%k121590%_ (macro-deleted-obj))
                        (_%loop121580%_
                         (let ((_%next-probe121597%_
                                (fx+ _%start121576%_
                                     _%i121585%_
                                     (fx* _%i121585%_ _%i121585%_))))
                           (##fxmodulo _%next-probe121597%_ _%size121570%_))
                         (##fx+ _%i121585%_ '1)
                         (let ((_%$e121600%_ _%deleted121587%_))
                           (if _%$e121600%_ _%$e121600%_ _%probe121583%_)))
                        (if (eq? _%key121561%_ _%k121590%_)
                            (let ()
                              (vector-set!
                               _%table121564%_
                               _%probe121583%_
                               _%key121561%_)
                              (vector-set!
                               _%table121564%_
                               (##fx+ _%probe121583%_ '1)
                               _%value121562%_))
                            (_%loop121580%_
                             (let ((_%next-probe121605%_
                                    (fx+ _%start121576%_
                                         _%i121585%_
                                         (fx* _%i121585%_ _%i121585%_))))
                               (##fxmodulo
                                _%next-probe121605%_
                                _%size121570%_))
                             (##fx+ _%i121585%_ '1)
                             _%deleted121587%_))))))))))
    (define eq-table-set!
      (lambda (_%tab121556%_ _%key121557%_ _%value121558%_)
        (if (##fx< (&raw-table-free _%tab121556%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121556%_))
                    '4))
            (__raw-table-rehash! _%tab121556%_)
            '#!void)
        (__eq-table-set! _%tab121556%_ _%key121557%_ _%value121558%_)))
    (define eq-table-set!/lock
      (lambda (_%tab121526%_ _%key121527%_ _%value121528%_)
        (let ((_%lock121531%_ (&raw-table-lock _%tab121526%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121536%_ ((_%spin121539%_ '0))
              (if (##fx= (##vector-cas! _%lock121531%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121531%_ '1 (current-thread))
                  (if (##fx< _%spin121539%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121536%_ (##fx+ _%spin121539%_ '1)))
                      (let ((_%owner121545%_ (##vector-ref _%lock121531%_ '1)))
                        (if (eq? _%owner121545%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121545%_)
                                (let () (##thread-yield!) (_%again121536%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121551%_
                 (eq-table-set! _%tab121526%_ _%key121527%_ _%value121528%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121531%_ '1 '#f)
                (##vector-cas! _%lock121531%_ '0 '0 '1)))
            _%$r121551%_))))
    (define __eq-table-update!
      (lambda (_%tab121477%_
               _%key121478%_
               _%eq-table-update!121479%_
               _%default121480%_)
        (let ((_%table121482%_ (&raw-table-table _%tab121477%_))
              (_%seed121483%_ (&raw-table-seed _%tab121477%_)))
          (let* ((_%h121485%_ (fxxor (eq-hash _%key121478%_) _%seed121483%_))
                 (_%size121488%_ (vector-length _%table121482%_))
                 (_%entries121491%_ (##fxquotient _%size121488%_ '2))
                 (_%start121494%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121485%_ _%entries121491%_)
                   '1)))
            (let _%loop121498%_ ((_%probe121501%_ _%start121494%_)
                                 (_%i121503%_ '1)
                                 (_%deleted121505%_ '#f))
              (let ((_%k121508%_ (vector-ref _%table121482%_ _%probe121501%_)))
                (if (eq? _%k121508%_ (macro-unused-obj))
                    (if _%deleted121505%_
                        (begin
                          (vector-set!
                           _%table121482%_
                           _%deleted121505%_
                           _%key121478%_)
                          (vector-set!
                           _%table121482%_
                           (##fx+ _%deleted121505%_ '1)
                           (_%eq-table-update!121479%_ _%default121480%_))
                          (&raw-table-count-set!
                           _%tab121477%_
                           (##fx+ (&raw-table-count _%tab121477%_) '1)))
                        (begin
                          (vector-set!
                           _%table121482%_
                           _%probe121501%_
                           _%key121478%_)
                          (vector-set!
                           _%table121482%_
                           (##fx+ _%probe121501%_ '1)
                           (_%eq-table-update!121479%_ _%default121480%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab121477%_
                             (##fx- (&raw-table-free _%tab121477%_) '1))
                            (&raw-table-count-set!
                             _%tab121477%_
                             (##fx+ (&raw-table-count _%tab121477%_) '1)))))
                    (if (eq? _%k121508%_ (macro-deleted-obj))
                        (_%loop121498%_
                         (let ((_%next-probe121515%_
                                (fx+ _%start121494%_
                                     _%i121503%_
                                     (fx* _%i121503%_ _%i121503%_))))
                           (##fxmodulo _%next-probe121515%_ _%size121488%_))
                         (##fx+ _%i121503%_ '1)
                         (let ((_%$e121518%_ _%deleted121505%_))
                           (if _%$e121518%_ _%$e121518%_ _%probe121501%_)))
                        (if (eq? _%key121478%_ _%k121508%_)
                            (let ()
                              (vector-set!
                               _%table121482%_
                               _%probe121501%_
                               _%key121478%_)
                              (vector-set!
                               _%table121482%_
                               (##fx+ _%probe121501%_ '1)
                               (_%eq-table-update!121479%_
                                (vector-ref
                                 _%table121482%_
                                 (##fx+ _%probe121501%_ '1)))))
                            (_%loop121498%_
                             (let ((_%next-probe121523%_
                                    (fx+ _%start121494%_
                                         _%i121503%_
                                         (fx* _%i121503%_ _%i121503%_))))
                               (##fxmodulo
                                _%next-probe121523%_
                                _%size121488%_))
                             (##fx+ _%i121503%_ '1)
                             _%deleted121505%_))))))))))
    (define eq-table-update!
      (lambda (_%tab121472%_
               _%key121473%_
               _%eq-table-update!121474%_
               _%default121475%_)
        (if (##fx< (&raw-table-free _%tab121472%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121472%_))
                    '4))
            (__raw-table-rehash! _%tab121472%_)
            '#!void)
        (__eq-table-update!
         _%tab121472%_
         _%key121473%_
         _%eq-table-update!121474%_
         _%default121475%_)))
    (define eq-table-update!/lock
      (lambda (_%tab121441%_
               _%key121442%_
               _%eq-table-update!121443%_
               _%default121444%_)
        (let ((_%lock121447%_ (&raw-table-lock _%tab121441%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121452%_ ((_%spin121455%_ '0))
              (if (##fx= (##vector-cas! _%lock121447%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121447%_ '1 (current-thread))
                  (if (##fx< _%spin121455%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121452%_ (##fx+ _%spin121455%_ '1)))
                      (let ((_%owner121461%_ (##vector-ref _%lock121447%_ '1)))
                        (if (eq? _%owner121461%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121461%_)
                                (let () (##thread-yield!) (_%again121452%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121467%_
                 (_%eq-table-update!121443%_
                  _%tab121441%_
                  _%key121442%_
                  _%eq-table-update!121443%_
                  _%default121444%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121447%_ '1 '#f)
                (##vector-cas! _%lock121447%_ '0 '0 '1)))
            _%$r121467%_))))
    (define eq-table-delete!
      (lambda (_%tab121398%_ _%key121399%_)
        (let ((_%table121401%_ (&raw-table-table _%tab121398%_))
              (_%seed121403%_ (&raw-table-seed _%tab121398%_)))
          (let* ((_%h121406%_ (fxxor (eq-hash _%key121399%_) _%seed121403%_))
                 (_%size121409%_ (vector-length _%table121401%_))
                 (_%entries121412%_ (##fxquotient _%size121409%_ '2))
                 (_%start121415%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121406%_ _%entries121412%_)
                   '1)))
            (let _%loop121419%_ ((_%probe121422%_ _%start121415%_)
                                 (_%i121424%_ '1))
              (let ((_%k121427%_ (vector-ref _%table121401%_ _%probe121422%_)))
                (if (eq? _%k121427%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k121427%_ (macro-deleted-obj))
                        (_%loop121419%_
                         (let ((_%next-probe121432%_
                                (fx+ _%start121415%_
                                     _%i121424%_
                                     (fx* _%i121424%_ _%i121424%_))))
                           (##fxmodulo _%next-probe121432%_ _%size121409%_))
                         (##fx+ _%i121424%_ '1))
                        (if (eq? _%key121399%_ _%k121427%_)
                            (let ()
                              (vector-set!
                               _%table121401%_
                               _%probe121422%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table121401%_
                               (##fx+ _%probe121422%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab121398%_
                               (##fx- (&raw-table-count _%tab121398%_) '1)))
                            (_%loop121419%_
                             (let ((_%next-probe121438%_
                                    (fx+ _%start121415%_
                                         _%i121424%_
                                         (fx* _%i121424%_ _%i121424%_))))
                               (##fxmodulo
                                _%next-probe121438%_
                                _%size121409%_))
                             (##fx+ _%i121424%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab121368%_ _%key121370%_)
        (let ((_%lock121373%_ (&raw-table-lock _%tab121368%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121378%_ ((_%spin121381%_ '0))
              (if (##fx= (##vector-cas! _%lock121373%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121373%_ '1 (current-thread))
                  (if (##fx< _%spin121381%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121378%_ (##fx+ _%spin121381%_ '1)))
                      (let ((_%owner121387%_ (##vector-ref _%lock121373%_ '1)))
                        (if (eq? _%owner121387%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121387%_)
                                (let () (##thread-yield!) (_%again121378%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121393%_ (eq-table-delete! _%tab121368%_ _%key121370%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121373%_ '1 '#f)
                (##vector-cas! _%lock121373%_ '0 '0 '1)))
            _%$r121393%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint121350%_ _%seed121351%_)
        (make-raw-table__1 _%size-hint121350%_ eqv-hash eqv? _%seed121351%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint121357%_ '#f) (_%seed121359%_ '0))
          (make-eqv-table__% _%size-hint121357%_ _%seed121359%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint121361%_)
        (let ((_%seed121363%_ '0))
          (make-eqv-table__% _%size-hint121361%_ _%seed121363%_))))
    (define make-eqv-table
      (lambda _g122348_
        (let ((_g122349_ (##length _g122348_)))
          (cond ((##fx= _g122349_ 0) (apply make-eqv-table__0 _g122348_))
                ((##fx= _g122349_ 1) (apply make-eqv-table__1 _g122348_))
                ((##fx= _g122349_ 2) (apply make-eqv-table__% _g122348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g122348_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint121330%_ _%seed121332%_)
        (make-raw-table/lock__%
         _%size-hint121330%_
         eqv-hash
         eqv?
         _%seed121332%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint121338%_ '#f) (_%seed121340%_ '0))
          (make-eqv-table/lock__% _%size-hint121338%_ _%seed121340%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint121342%_)
        (let ((_%seed121344%_ '0))
          (make-eqv-table/lock__% _%size-hint121342%_ _%seed121344%_))))
    (define make-eqv-table/lock
      (lambda _g122350_
        (let ((_g122351_ (##length _g122350_)))
          (cond ((##fx= _g122351_ 0) (apply make-eqv-table/lock__0 _g122350_))
                ((##fx= _g122351_ 1) (apply make-eqv-table/lock__1 _g122350_))
                ((##fx= _g122351_ 2) (apply make-eqv-table/lock__% _g122350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g122350_))))))
    (define eqv-table-ref
      (lambda (_%tab121283%_ _%key121284%_ _%default121285%_)
        (let ((_%table121287%_ (&raw-table-table _%tab121283%_))
              (_%seed121288%_ (&raw-table-seed _%tab121283%_)))
          (let* ((_%h121290%_ (fxxor (eqv-hash _%key121284%_) _%seed121288%_))
                 (_%size121293%_ (vector-length _%table121287%_))
                 (_%entries121296%_ (##fxquotient _%size121293%_ '2))
                 (_%start121299%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121290%_ _%entries121296%_)
                   '1)))
            (let _%loop121303%_ ((_%probe121306%_ _%start121299%_)
                                 (_%i121308%_ '1)
                                 (_%deleted121310%_ '#f))
              (let ((_%k121313%_ (vector-ref _%table121287%_ _%probe121306%_)))
                (if (eq? _%k121313%_ (macro-unused-obj))
                    _%default121285%_
                    (if (eq? _%k121313%_ (macro-deleted-obj))
                        (_%loop121303%_
                         (let ((_%next-probe121318%_
                                (fx+ _%start121299%_
                                     _%i121308%_
                                     (fx* _%i121308%_ _%i121308%_))))
                           (##fxmodulo _%next-probe121318%_ _%size121293%_))
                         (##fx+ _%i121308%_ '1)
                         (let ((_%$e121321%_ _%deleted121310%_))
                           (if _%$e121321%_ _%$e121321%_ _%probe121306%_)))
                        (if (eqv? _%key121284%_ _%k121313%_)
                            (vector-ref
                             _%table121287%_
                             (##fx+ _%probe121306%_ '1))
                            (_%loop121303%_
                             (let ((_%next-probe121326%_
                                    (fx+ _%start121299%_
                                         _%i121308%_
                                         (fx* _%i121308%_ _%i121308%_))))
                               (##fxmodulo
                                _%next-probe121326%_
                                _%size121293%_))
                             (##fx+ _%i121308%_ '1)
                             _%deleted121310%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab121254%_ _%key121255%_ _%default121256%_)
        (let ((_%lock121258%_ (&raw-table-lock _%tab121254%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121263%_ ((_%spin121266%_ '0))
              (if (##fx= (##vector-cas! _%lock121258%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121258%_ '1 (current-thread))
                  (if (##fx< _%spin121266%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121263%_ (##fx+ _%spin121266%_ '1)))
                      (let ((_%owner121272%_ (##vector-ref _%lock121258%_ '1)))
                        (if (eq? _%owner121272%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121272%_)
                                (let () (##thread-yield!) (_%again121263%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121278%_
                 (eqv-table-ref
                  _%tab121254%_
                  _%key121255%_
                  _%default121256%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121258%_ '1 '#f)
                (##vector-cas! _%lock121258%_ '0 '0 '1)))
            _%$r121278%_))))
    (define __eqv-table-set!
      (lambda (_%tab121206%_ _%key121207%_ _%value121208%_)
        (let ((_%table121210%_ (&raw-table-table _%tab121206%_))
              (_%seed121211%_ (&raw-table-seed _%tab121206%_)))
          (let* ((_%h121213%_ (fxxor (eqv-hash _%key121207%_) _%seed121211%_))
                 (_%size121216%_ (vector-length _%table121210%_))
                 (_%entries121219%_ (##fxquotient _%size121216%_ '2))
                 (_%start121222%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121213%_ _%entries121219%_)
                   '1)))
            (let _%loop121226%_ ((_%probe121229%_ _%start121222%_)
                                 (_%i121231%_ '1)
                                 (_%deleted121233%_ '#f))
              (let ((_%k121236%_ (vector-ref _%table121210%_ _%probe121229%_)))
                (if (eq? _%k121236%_ (macro-unused-obj))
                    (if _%deleted121233%_
                        (begin
                          (vector-set!
                           _%table121210%_
                           _%deleted121233%_
                           _%key121207%_)
                          (vector-set!
                           _%table121210%_
                           (##fx+ _%deleted121233%_ '1)
                           _%value121208%_)
                          (&raw-table-count-set!
                           _%tab121206%_
                           (##fx+ (&raw-table-count _%tab121206%_) '1)))
                        (begin
                          (vector-set!
                           _%table121210%_
                           _%probe121229%_
                           _%key121207%_)
                          (vector-set!
                           _%table121210%_
                           (##fx+ _%probe121229%_ '1)
                           _%value121208%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab121206%_
                             (##fx- (&raw-table-free _%tab121206%_) '1))
                            (&raw-table-count-set!
                             _%tab121206%_
                             (##fx+ (&raw-table-count _%tab121206%_) '1)))))
                    (if (eq? _%k121236%_ (macro-deleted-obj))
                        (_%loop121226%_
                         (let ((_%next-probe121243%_
                                (fx+ _%start121222%_
                                     _%i121231%_
                                     (fx* _%i121231%_ _%i121231%_))))
                           (##fxmodulo _%next-probe121243%_ _%size121216%_))
                         (##fx+ _%i121231%_ '1)
                         (let ((_%$e121246%_ _%deleted121233%_))
                           (if _%$e121246%_ _%$e121246%_ _%probe121229%_)))
                        (if (eqv? _%key121207%_ _%k121236%_)
                            (let ()
                              (vector-set!
                               _%table121210%_
                               _%probe121229%_
                               _%key121207%_)
                              (vector-set!
                               _%table121210%_
                               (##fx+ _%probe121229%_ '1)
                               _%value121208%_))
                            (_%loop121226%_
                             (let ((_%next-probe121251%_
                                    (fx+ _%start121222%_
                                         _%i121231%_
                                         (fx* _%i121231%_ _%i121231%_))))
                               (##fxmodulo
                                _%next-probe121251%_
                                _%size121216%_))
                             (##fx+ _%i121231%_ '1)
                             _%deleted121233%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab121202%_ _%key121203%_ _%value121204%_)
        (if (##fx< (&raw-table-free _%tab121202%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121202%_))
                    '4))
            (__raw-table-rehash! _%tab121202%_)
            '#!void)
        (__eqv-table-set! _%tab121202%_ _%key121203%_ _%value121204%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab121172%_ _%key121173%_ _%value121174%_)
        (let ((_%lock121177%_ (&raw-table-lock _%tab121172%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121182%_ ((_%spin121185%_ '0))
              (if (##fx= (##vector-cas! _%lock121177%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121177%_ '1 (current-thread))
                  (if (##fx< _%spin121185%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121182%_ (##fx+ _%spin121185%_ '1)))
                      (let ((_%owner121191%_ (##vector-ref _%lock121177%_ '1)))
                        (if (eq? _%owner121191%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121191%_)
                                (let () (##thread-yield!) (_%again121182%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121197%_
                 (eqv-table-set! _%tab121172%_ _%key121173%_ _%value121174%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121177%_ '1 '#f)
                (##vector-cas! _%lock121177%_ '0 '0 '1)))
            _%$r121197%_))))
    (define __eqv-table-update!
      (lambda (_%tab121123%_
               _%key121124%_
               _%eqv-table-update!121125%_
               _%default121126%_)
        (let ((_%table121128%_ (&raw-table-table _%tab121123%_))
              (_%seed121129%_ (&raw-table-seed _%tab121123%_)))
          (let* ((_%h121131%_ (fxxor (eqv-hash _%key121124%_) _%seed121129%_))
                 (_%size121134%_ (vector-length _%table121128%_))
                 (_%entries121137%_ (##fxquotient _%size121134%_ '2))
                 (_%start121140%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121131%_ _%entries121137%_)
                   '1)))
            (let _%loop121144%_ ((_%probe121147%_ _%start121140%_)
                                 (_%i121149%_ '1)
                                 (_%deleted121151%_ '#f))
              (let ((_%k121154%_ (vector-ref _%table121128%_ _%probe121147%_)))
                (if (eq? _%k121154%_ (macro-unused-obj))
                    (if _%deleted121151%_
                        (begin
                          (vector-set!
                           _%table121128%_
                           _%deleted121151%_
                           _%key121124%_)
                          (vector-set!
                           _%table121128%_
                           (##fx+ _%deleted121151%_ '1)
                           (_%eqv-table-update!121125%_ _%default121126%_))
                          (&raw-table-count-set!
                           _%tab121123%_
                           (##fx+ (&raw-table-count _%tab121123%_) '1)))
                        (begin
                          (vector-set!
                           _%table121128%_
                           _%probe121147%_
                           _%key121124%_)
                          (vector-set!
                           _%table121128%_
                           (##fx+ _%probe121147%_ '1)
                           (_%eqv-table-update!121125%_ _%default121126%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab121123%_
                             (##fx- (&raw-table-free _%tab121123%_) '1))
                            (&raw-table-count-set!
                             _%tab121123%_
                             (##fx+ (&raw-table-count _%tab121123%_) '1)))))
                    (if (eq? _%k121154%_ (macro-deleted-obj))
                        (_%loop121144%_
                         (let ((_%next-probe121161%_
                                (fx+ _%start121140%_
                                     _%i121149%_
                                     (fx* _%i121149%_ _%i121149%_))))
                           (##fxmodulo _%next-probe121161%_ _%size121134%_))
                         (##fx+ _%i121149%_ '1)
                         (let ((_%$e121164%_ _%deleted121151%_))
                           (if _%$e121164%_ _%$e121164%_ _%probe121147%_)))
                        (if (eqv? _%key121124%_ _%k121154%_)
                            (let ()
                              (vector-set!
                               _%table121128%_
                               _%probe121147%_
                               _%key121124%_)
                              (vector-set!
                               _%table121128%_
                               (##fx+ _%probe121147%_ '1)
                               (_%eqv-table-update!121125%_
                                (vector-ref
                                 _%table121128%_
                                 (##fx+ _%probe121147%_ '1)))))
                            (_%loop121144%_
                             (let ((_%next-probe121169%_
                                    (fx+ _%start121140%_
                                         _%i121149%_
                                         (fx* _%i121149%_ _%i121149%_))))
                               (##fxmodulo
                                _%next-probe121169%_
                                _%size121134%_))
                             (##fx+ _%i121149%_ '1)
                             _%deleted121151%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab121118%_
               _%key121119%_
               _%eqv-table-update!121120%_
               _%default121121%_)
        (if (##fx< (&raw-table-free _%tab121118%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121118%_))
                    '4))
            (__raw-table-rehash! _%tab121118%_)
            '#!void)
        (__eqv-table-update!
         _%tab121118%_
         _%key121119%_
         _%eqv-table-update!121120%_
         _%default121121%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab121087%_
               _%key121088%_
               _%eqv-table-update!121089%_
               _%default121090%_)
        (let ((_%lock121093%_ (&raw-table-lock _%tab121087%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121098%_ ((_%spin121101%_ '0))
              (if (##fx= (##vector-cas! _%lock121093%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121093%_ '1 (current-thread))
                  (if (##fx< _%spin121101%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121098%_ (##fx+ _%spin121101%_ '1)))
                      (let ((_%owner121107%_ (##vector-ref _%lock121093%_ '1)))
                        (if (eq? _%owner121107%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121107%_)
                                (let () (##thread-yield!) (_%again121098%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121113%_
                 (_%eqv-table-update!121089%_
                  _%tab121087%_
                  _%key121088%_
                  _%eqv-table-update!121089%_
                  _%default121090%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121093%_ '1 '#f)
                (##vector-cas! _%lock121093%_ '0 '0 '1)))
            _%$r121113%_))))
    (define eqv-table-delete!
      (lambda (_%tab121044%_ _%key121045%_)
        (let ((_%table121047%_ (&raw-table-table _%tab121044%_))
              (_%seed121049%_ (&raw-table-seed _%tab121044%_)))
          (let* ((_%h121052%_ (fxxor (eqv-hash _%key121045%_) _%seed121049%_))
                 (_%size121055%_ (vector-length _%table121047%_))
                 (_%entries121058%_ (##fxquotient _%size121055%_ '2))
                 (_%start121061%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121052%_ _%entries121058%_)
                   '1)))
            (let _%loop121065%_ ((_%probe121068%_ _%start121061%_)
                                 (_%i121070%_ '1))
              (let ((_%k121073%_ (vector-ref _%table121047%_ _%probe121068%_)))
                (if (eq? _%k121073%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k121073%_ (macro-deleted-obj))
                        (_%loop121065%_
                         (let ((_%next-probe121078%_
                                (fx+ _%start121061%_
                                     _%i121070%_
                                     (fx* _%i121070%_ _%i121070%_))))
                           (##fxmodulo _%next-probe121078%_ _%size121055%_))
                         (##fx+ _%i121070%_ '1))
                        (if (eqv? _%key121045%_ _%k121073%_)
                            (let ()
                              (vector-set!
                               _%table121047%_
                               _%probe121068%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table121047%_
                               (##fx+ _%probe121068%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab121044%_
                               (##fx- (&raw-table-count _%tab121044%_) '1)))
                            (_%loop121065%_
                             (let ((_%next-probe121084%_
                                    (fx+ _%start121061%_
                                         _%i121070%_
                                         (fx* _%i121070%_ _%i121070%_))))
                               (##fxmodulo
                                _%next-probe121084%_
                                _%size121055%_))
                             (##fx+ _%i121070%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab121014%_ _%key121016%_)
        (let ((_%lock121019%_ (&raw-table-lock _%tab121014%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121024%_ ((_%spin121027%_ '0))
              (if (##fx= (##vector-cas! _%lock121019%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121019%_ '1 (current-thread))
                  (if (##fx< _%spin121027%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121024%_ (##fx+ _%spin121027%_ '1)))
                      (let ((_%owner121033%_ (##vector-ref _%lock121019%_ '1)))
                        (if (eq? _%owner121033%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121033%_)
                                (let () (##thread-yield!) (_%again121024%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121039%_ (eqv-table-delete! _%tab121014%_ _%key121016%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121019%_ '1 '#f)
                (##vector-cas! _%lock121019%_ '0 '0 '1)))
            _%$r121039%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint120996%_ _%seed120997%_)
        (make-raw-table__1
         _%size-hint120996%_
         symbolic-hash
         eq?
         _%seed120997%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint121003%_ '#f) (_%seed121005%_ '0))
          (make-symbolic-table__% _%size-hint121003%_ _%seed121005%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint121007%_)
        (let ((_%seed121009%_ '0))
          (make-symbolic-table__% _%size-hint121007%_ _%seed121009%_))))
    (define make-symbolic-table
      (lambda _g122352_
        (let ((_g122353_ (##length _g122352_)))
          (cond ((##fx= _g122353_ 0) (apply make-symbolic-table__0 _g122352_))
                ((##fx= _g122353_ 1) (apply make-symbolic-table__1 _g122352_))
                ((##fx= _g122353_ 2) (apply make-symbolic-table__% _g122352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g122352_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint120976%_ _%seed120978%_)
        (make-raw-table/lock__%
         _%size-hint120976%_
         symbolic-hash
         eq?
         _%seed120978%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint120984%_ '#f) (_%seed120986%_ '0))
          (make-symbolic-table/lock__% _%size-hint120984%_ _%seed120986%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint120988%_)
        (let ((_%seed120990%_ '0))
          (make-symbolic-table/lock__% _%size-hint120988%_ _%seed120990%_))))
    (define make-symbolic-table/lock
      (lambda _g122354_
        (let ((_g122355_ (##length _g122354_)))
          (cond ((##fx= _g122355_ 0)
                 (apply make-symbolic-table/lock__0 _g122354_))
                ((##fx= _g122355_ 1)
                 (apply make-symbolic-table/lock__1 _g122354_))
                ((##fx= _g122355_ 2)
                 (apply make-symbolic-table/lock__% _g122354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g122354_))))))
    (define symbolic-table-ref
      (lambda (_%tab120929%_ _%key120930%_ _%default120931%_)
        (let ((_%table120933%_ (&raw-table-table _%tab120929%_))
              (_%seed120934%_ (&raw-table-seed _%tab120929%_)))
          (let* ((_%h120936%_
                  (fxxor (##symbol-hash _%key120930%_) _%seed120934%_))
                 (_%size120939%_ (vector-length _%table120933%_))
                 (_%entries120942%_ (##fxquotient _%size120939%_ '2))
                 (_%start120945%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120936%_ _%entries120942%_)
                   '1)))
            (let _%loop120949%_ ((_%probe120952%_ _%start120945%_)
                                 (_%i120954%_ '1)
                                 (_%deleted120956%_ '#f))
              (let ((_%k120959%_ (vector-ref _%table120933%_ _%probe120952%_)))
                (if (eq? _%k120959%_ (macro-unused-obj))
                    _%default120931%_
                    (if (eq? _%k120959%_ (macro-deleted-obj))
                        (_%loop120949%_
                         (let ((_%next-probe120964%_
                                (fx+ _%start120945%_
                                     _%i120954%_
                                     (fx* _%i120954%_ _%i120954%_))))
                           (##fxmodulo _%next-probe120964%_ _%size120939%_))
                         (##fx+ _%i120954%_ '1)
                         (let ((_%$e120967%_ _%deleted120956%_))
                           (if _%$e120967%_ _%$e120967%_ _%probe120952%_)))
                        (if (eq? _%key120930%_ _%k120959%_)
                            (vector-ref
                             _%table120933%_
                             (##fx+ _%probe120952%_ '1))
                            (_%loop120949%_
                             (let ((_%next-probe120972%_
                                    (fx+ _%start120945%_
                                         _%i120954%_
                                         (fx* _%i120954%_ _%i120954%_))))
                               (##fxmodulo
                                _%next-probe120972%_
                                _%size120939%_))
                             (##fx+ _%i120954%_ '1)
                             _%deleted120956%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab120900%_ _%key120901%_ _%default120902%_)
        (let ((_%lock120904%_ (&raw-table-lock _%tab120900%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120909%_ ((_%spin120912%_ '0))
              (if (##fx= (##vector-cas! _%lock120904%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120904%_ '1 (current-thread))
                  (if (##fx< _%spin120912%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120909%_ (##fx+ _%spin120912%_ '1)))
                      (let ((_%owner120918%_ (##vector-ref _%lock120904%_ '1)))
                        (if (eq? _%owner120918%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120918%_)
                                (let () (##thread-yield!) (_%again120909%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120924%_
                 (symbolic-table-ref
                  _%tab120900%_
                  _%key120901%_
                  _%default120902%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120904%_ '1 '#f)
                (##vector-cas! _%lock120904%_ '0 '0 '1)))
            _%$r120924%_))))
    (define __symbolic-table-set!
      (lambda (_%tab120852%_ _%key120853%_ _%value120854%_)
        (let ((_%table120856%_ (&raw-table-table _%tab120852%_))
              (_%seed120857%_ (&raw-table-seed _%tab120852%_)))
          (let* ((_%h120859%_
                  (fxxor (##symbol-hash _%key120853%_) _%seed120857%_))
                 (_%size120862%_ (vector-length _%table120856%_))
                 (_%entries120865%_ (##fxquotient _%size120862%_ '2))
                 (_%start120868%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120859%_ _%entries120865%_)
                   '1)))
            (let _%loop120872%_ ((_%probe120875%_ _%start120868%_)
                                 (_%i120877%_ '1)
                                 (_%deleted120879%_ '#f))
              (let ((_%k120882%_ (vector-ref _%table120856%_ _%probe120875%_)))
                (if (eq? _%k120882%_ (macro-unused-obj))
                    (if _%deleted120879%_
                        (begin
                          (vector-set!
                           _%table120856%_
                           _%deleted120879%_
                           _%key120853%_)
                          (vector-set!
                           _%table120856%_
                           (##fx+ _%deleted120879%_ '1)
                           _%value120854%_)
                          (&raw-table-count-set!
                           _%tab120852%_
                           (##fx+ (&raw-table-count _%tab120852%_) '1)))
                        (begin
                          (vector-set!
                           _%table120856%_
                           _%probe120875%_
                           _%key120853%_)
                          (vector-set!
                           _%table120856%_
                           (##fx+ _%probe120875%_ '1)
                           _%value120854%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab120852%_
                             (##fx- (&raw-table-free _%tab120852%_) '1))
                            (&raw-table-count-set!
                             _%tab120852%_
                             (##fx+ (&raw-table-count _%tab120852%_) '1)))))
                    (if (eq? _%k120882%_ (macro-deleted-obj))
                        (_%loop120872%_
                         (let ((_%next-probe120889%_
                                (fx+ _%start120868%_
                                     _%i120877%_
                                     (fx* _%i120877%_ _%i120877%_))))
                           (##fxmodulo _%next-probe120889%_ _%size120862%_))
                         (##fx+ _%i120877%_ '1)
                         (let ((_%$e120892%_ _%deleted120879%_))
                           (if _%$e120892%_ _%$e120892%_ _%probe120875%_)))
                        (if (eq? _%key120853%_ _%k120882%_)
                            (let ()
                              (vector-set!
                               _%table120856%_
                               _%probe120875%_
                               _%key120853%_)
                              (vector-set!
                               _%table120856%_
                               (##fx+ _%probe120875%_ '1)
                               _%value120854%_))
                            (_%loop120872%_
                             (let ((_%next-probe120897%_
                                    (fx+ _%start120868%_
                                         _%i120877%_
                                         (fx* _%i120877%_ _%i120877%_))))
                               (##fxmodulo
                                _%next-probe120897%_
                                _%size120862%_))
                             (##fx+ _%i120877%_ '1)
                             _%deleted120879%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab120848%_ _%key120849%_ _%value120850%_)
        (if (##fx< (&raw-table-free _%tab120848%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120848%_))
                    '4))
            (__raw-table-rehash! _%tab120848%_)
            '#!void)
        (__symbolic-table-set! _%tab120848%_ _%key120849%_ _%value120850%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab120818%_ _%key120819%_ _%value120820%_)
        (let ((_%lock120823%_ (&raw-table-lock _%tab120818%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120828%_ ((_%spin120831%_ '0))
              (if (##fx= (##vector-cas! _%lock120823%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120823%_ '1 (current-thread))
                  (if (##fx< _%spin120831%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120828%_ (##fx+ _%spin120831%_ '1)))
                      (let ((_%owner120837%_ (##vector-ref _%lock120823%_ '1)))
                        (if (eq? _%owner120837%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120837%_)
                                (let () (##thread-yield!) (_%again120828%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120843%_
                 (symbolic-table-set!
                  _%tab120818%_
                  _%key120819%_
                  _%value120820%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120823%_ '1 '#f)
                (##vector-cas! _%lock120823%_ '0 '0 '1)))
            _%$r120843%_))))
    (define __symbolic-table-update!
      (lambda (_%tab120769%_
               _%key120770%_
               _%symbolic-table-update!120771%_
               _%default120772%_)
        (let ((_%table120774%_ (&raw-table-table _%tab120769%_))
              (_%seed120775%_ (&raw-table-seed _%tab120769%_)))
          (let* ((_%h120777%_
                  (fxxor (##symbol-hash _%key120770%_) _%seed120775%_))
                 (_%size120780%_ (vector-length _%table120774%_))
                 (_%entries120783%_ (##fxquotient _%size120780%_ '2))
                 (_%start120786%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120777%_ _%entries120783%_)
                   '1)))
            (let _%loop120790%_ ((_%probe120793%_ _%start120786%_)
                                 (_%i120795%_ '1)
                                 (_%deleted120797%_ '#f))
              (let ((_%k120800%_ (vector-ref _%table120774%_ _%probe120793%_)))
                (if (eq? _%k120800%_ (macro-unused-obj))
                    (if _%deleted120797%_
                        (begin
                          (vector-set!
                           _%table120774%_
                           _%deleted120797%_
                           _%key120770%_)
                          (vector-set!
                           _%table120774%_
                           (##fx+ _%deleted120797%_ '1)
                           (_%symbolic-table-update!120771%_
                            _%default120772%_))
                          (&raw-table-count-set!
                           _%tab120769%_
                           (##fx+ (&raw-table-count _%tab120769%_) '1)))
                        (begin
                          (vector-set!
                           _%table120774%_
                           _%probe120793%_
                           _%key120770%_)
                          (vector-set!
                           _%table120774%_
                           (##fx+ _%probe120793%_ '1)
                           (_%symbolic-table-update!120771%_
                            _%default120772%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab120769%_
                             (##fx- (&raw-table-free _%tab120769%_) '1))
                            (&raw-table-count-set!
                             _%tab120769%_
                             (##fx+ (&raw-table-count _%tab120769%_) '1)))))
                    (if (eq? _%k120800%_ (macro-deleted-obj))
                        (_%loop120790%_
                         (let ((_%next-probe120807%_
                                (fx+ _%start120786%_
                                     _%i120795%_
                                     (fx* _%i120795%_ _%i120795%_))))
                           (##fxmodulo _%next-probe120807%_ _%size120780%_))
                         (##fx+ _%i120795%_ '1)
                         (let ((_%$e120810%_ _%deleted120797%_))
                           (if _%$e120810%_ _%$e120810%_ _%probe120793%_)))
                        (if (eq? _%key120770%_ _%k120800%_)
                            (let ()
                              (vector-set!
                               _%table120774%_
                               _%probe120793%_
                               _%key120770%_)
                              (vector-set!
                               _%table120774%_
                               (##fx+ _%probe120793%_ '1)
                               (_%symbolic-table-update!120771%_
                                (vector-ref
                                 _%table120774%_
                                 (##fx+ _%probe120793%_ '1)))))
                            (_%loop120790%_
                             (let ((_%next-probe120815%_
                                    (fx+ _%start120786%_
                                         _%i120795%_
                                         (fx* _%i120795%_ _%i120795%_))))
                               (##fxmodulo
                                _%next-probe120815%_
                                _%size120780%_))
                             (##fx+ _%i120795%_ '1)
                             _%deleted120797%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab120764%_
               _%key120765%_
               _%symbolic-table-update!120766%_
               _%default120767%_)
        (if (##fx< (&raw-table-free _%tab120764%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120764%_))
                    '4))
            (__raw-table-rehash! _%tab120764%_)
            '#!void)
        (__symbolic-table-update!
         _%tab120764%_
         _%key120765%_
         _%symbolic-table-update!120766%_
         _%default120767%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab120733%_
               _%key120734%_
               _%symbolic-table-update!120735%_
               _%default120736%_)
        (let ((_%lock120739%_ (&raw-table-lock _%tab120733%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120744%_ ((_%spin120747%_ '0))
              (if (##fx= (##vector-cas! _%lock120739%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120739%_ '1 (current-thread))
                  (if (##fx< _%spin120747%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120744%_ (##fx+ _%spin120747%_ '1)))
                      (let ((_%owner120753%_ (##vector-ref _%lock120739%_ '1)))
                        (if (eq? _%owner120753%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120753%_)
                                (let () (##thread-yield!) (_%again120744%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120759%_
                 (_%symbolic-table-update!120735%_
                  _%tab120733%_
                  _%key120734%_
                  _%symbolic-table-update!120735%_
                  _%default120736%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120739%_ '1 '#f)
                (##vector-cas! _%lock120739%_ '0 '0 '1)))
            _%$r120759%_))))
    (define symbolic-table-delete!
      (lambda (_%tab120690%_ _%key120691%_)
        (let ((_%table120693%_ (&raw-table-table _%tab120690%_))
              (_%seed120695%_ (&raw-table-seed _%tab120690%_)))
          (let* ((_%h120698%_
                  (fxxor (##symbol-hash _%key120691%_) _%seed120695%_))
                 (_%size120701%_ (vector-length _%table120693%_))
                 (_%entries120704%_ (##fxquotient _%size120701%_ '2))
                 (_%start120707%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120698%_ _%entries120704%_)
                   '1)))
            (let _%loop120711%_ ((_%probe120714%_ _%start120707%_)
                                 (_%i120716%_ '1))
              (let ((_%k120719%_ (vector-ref _%table120693%_ _%probe120714%_)))
                (if (eq? _%k120719%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k120719%_ (macro-deleted-obj))
                        (_%loop120711%_
                         (let ((_%next-probe120724%_
                                (fx+ _%start120707%_
                                     _%i120716%_
                                     (fx* _%i120716%_ _%i120716%_))))
                           (##fxmodulo _%next-probe120724%_ _%size120701%_))
                         (##fx+ _%i120716%_ '1))
                        (if (eq? _%key120691%_ _%k120719%_)
                            (let ()
                              (vector-set!
                               _%table120693%_
                               _%probe120714%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table120693%_
                               (##fx+ _%probe120714%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab120690%_
                               (##fx- (&raw-table-count _%tab120690%_) '1)))
                            (_%loop120711%_
                             (let ((_%next-probe120730%_
                                    (fx+ _%start120707%_
                                         _%i120716%_
                                         (fx* _%i120716%_ _%i120716%_))))
                               (##fxmodulo
                                _%next-probe120730%_
                                _%size120701%_))
                             (##fx+ _%i120716%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab120660%_ _%key120662%_)
        (let ((_%lock120665%_ (&raw-table-lock _%tab120660%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120670%_ ((_%spin120673%_ '0))
              (if (##fx= (##vector-cas! _%lock120665%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120665%_ '1 (current-thread))
                  (if (##fx< _%spin120673%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120670%_ (##fx+ _%spin120673%_ '1)))
                      (let ((_%owner120679%_ (##vector-ref _%lock120665%_ '1)))
                        (if (eq? _%owner120679%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120679%_)
                                (let () (##thread-yield!) (_%again120670%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120685%_
                 (symbolic-table-delete! _%tab120660%_ _%key120662%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120665%_ '1 '#f)
                (##vector-cas! _%lock120665%_ '0 '0 '1)))
            _%$r120685%_))))
    (define make-string-table__%
      (lambda (_%size-hint120642%_ _%seed120643%_)
        (make-raw-table__1
         _%size-hint120642%_
         string-hash
         ##string=?
         _%seed120643%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint120649%_ '#f) (_%seed120651%_ '0))
          (make-string-table__% _%size-hint120649%_ _%seed120651%_))))
    (define make-string-table__1
      (lambda (_%size-hint120653%_)
        (let ((_%seed120655%_ '0))
          (make-string-table__% _%size-hint120653%_ _%seed120655%_))))
    (define make-string-table
      (lambda _g122356_
        (let ((_g122357_ (##length _g122356_)))
          (cond ((##fx= _g122357_ 0) (apply make-string-table__0 _g122356_))
                ((##fx= _g122357_ 1) (apply make-string-table__1 _g122356_))
                ((##fx= _g122357_ 2) (apply make-string-table__% _g122356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g122356_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint120622%_ _%seed120624%_)
        (make-raw-table/lock__%
         _%size-hint120622%_
         string-hash
         ##string=?
         _%seed120624%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint120630%_ '#f) (_%seed120632%_ '0))
          (make-string-table/lock__% _%size-hint120630%_ _%seed120632%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint120634%_)
        (let ((_%seed120636%_ '0))
          (make-string-table/lock__% _%size-hint120634%_ _%seed120636%_))))
    (define make-string-table/lock
      (lambda _g122358_
        (let ((_g122359_ (##length _g122358_)))
          (cond ((##fx= _g122359_ 0)
                 (apply make-string-table/lock__0 _g122358_))
                ((##fx= _g122359_ 1)
                 (apply make-string-table/lock__1 _g122358_))
                ((##fx= _g122359_ 2)
                 (apply make-string-table/lock__% _g122358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g122358_))))))
    (define string-table-ref
      (lambda (_%tab120575%_ _%key120576%_ _%default120577%_)
        (let ((_%table120579%_ (&raw-table-table _%tab120575%_))
              (_%seed120580%_ (&raw-table-seed _%tab120575%_)))
          (let* ((_%h120582%_
                  (fxxor (##string=?-hash _%key120576%_) _%seed120580%_))
                 (_%size120585%_ (vector-length _%table120579%_))
                 (_%entries120588%_ (##fxquotient _%size120585%_ '2))
                 (_%start120591%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120582%_ _%entries120588%_)
                   '1)))
            (let _%loop120595%_ ((_%probe120598%_ _%start120591%_)
                                 (_%i120600%_ '1)
                                 (_%deleted120602%_ '#f))
              (let ((_%k120605%_ (vector-ref _%table120579%_ _%probe120598%_)))
                (if (eq? _%k120605%_ (macro-unused-obj))
                    _%default120577%_
                    (if (eq? _%k120605%_ (macro-deleted-obj))
                        (_%loop120595%_
                         (let ((_%next-probe120610%_
                                (fx+ _%start120591%_
                                     _%i120600%_
                                     (fx* _%i120600%_ _%i120600%_))))
                           (##fxmodulo _%next-probe120610%_ _%size120585%_))
                         (##fx+ _%i120600%_ '1)
                         (let ((_%$e120613%_ _%deleted120602%_))
                           (if _%$e120613%_ _%$e120613%_ _%probe120598%_)))
                        (if (##string=? _%key120576%_ _%k120605%_)
                            (vector-ref
                             _%table120579%_
                             (##fx+ _%probe120598%_ '1))
                            (_%loop120595%_
                             (let ((_%next-probe120618%_
                                    (fx+ _%start120591%_
                                         _%i120600%_
                                         (fx* _%i120600%_ _%i120600%_))))
                               (##fxmodulo
                                _%next-probe120618%_
                                _%size120585%_))
                             (##fx+ _%i120600%_ '1)
                             _%deleted120602%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab120546%_ _%key120547%_ _%default120548%_)
        (let ((_%lock120550%_ (&raw-table-lock _%tab120546%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120555%_ ((_%spin120558%_ '0))
              (if (##fx= (##vector-cas! _%lock120550%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120550%_ '1 (current-thread))
                  (if (##fx< _%spin120558%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120555%_ (##fx+ _%spin120558%_ '1)))
                      (let ((_%owner120564%_ (##vector-ref _%lock120550%_ '1)))
                        (if (eq? _%owner120564%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120564%_)
                                (let () (##thread-yield!) (_%again120555%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120570%_
                 (string-table-ref
                  _%tab120546%_
                  _%key120547%_
                  _%default120548%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120550%_ '1 '#f)
                (##vector-cas! _%lock120550%_ '0 '0 '1)))
            _%$r120570%_))))
    (define __string-table-set!
      (lambda (_%tab120498%_ _%key120499%_ _%value120500%_)
        (let ((_%table120502%_ (&raw-table-table _%tab120498%_))
              (_%seed120503%_ (&raw-table-seed _%tab120498%_)))
          (let* ((_%h120505%_
                  (fxxor (##string=?-hash _%key120499%_) _%seed120503%_))
                 (_%size120508%_ (vector-length _%table120502%_))
                 (_%entries120511%_ (##fxquotient _%size120508%_ '2))
                 (_%start120514%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120505%_ _%entries120511%_)
                   '1)))
            (let _%loop120518%_ ((_%probe120521%_ _%start120514%_)
                                 (_%i120523%_ '1)
                                 (_%deleted120525%_ '#f))
              (let ((_%k120528%_ (vector-ref _%table120502%_ _%probe120521%_)))
                (if (eq? _%k120528%_ (macro-unused-obj))
                    (if _%deleted120525%_
                        (begin
                          (vector-set!
                           _%table120502%_
                           _%deleted120525%_
                           _%key120499%_)
                          (vector-set!
                           _%table120502%_
                           (##fx+ _%deleted120525%_ '1)
                           _%value120500%_)
                          (&raw-table-count-set!
                           _%tab120498%_
                           (##fx+ (&raw-table-count _%tab120498%_) '1)))
                        (begin
                          (vector-set!
                           _%table120502%_
                           _%probe120521%_
                           _%key120499%_)
                          (vector-set!
                           _%table120502%_
                           (##fx+ _%probe120521%_ '1)
                           _%value120500%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab120498%_
                             (##fx- (&raw-table-free _%tab120498%_) '1))
                            (&raw-table-count-set!
                             _%tab120498%_
                             (##fx+ (&raw-table-count _%tab120498%_) '1)))))
                    (if (eq? _%k120528%_ (macro-deleted-obj))
                        (_%loop120518%_
                         (let ((_%next-probe120535%_
                                (fx+ _%start120514%_
                                     _%i120523%_
                                     (fx* _%i120523%_ _%i120523%_))))
                           (##fxmodulo _%next-probe120535%_ _%size120508%_))
                         (##fx+ _%i120523%_ '1)
                         (let ((_%$e120538%_ _%deleted120525%_))
                           (if _%$e120538%_ _%$e120538%_ _%probe120521%_)))
                        (if (##string=? _%key120499%_ _%k120528%_)
                            (let ()
                              (vector-set!
                               _%table120502%_
                               _%probe120521%_
                               _%key120499%_)
                              (vector-set!
                               _%table120502%_
                               (##fx+ _%probe120521%_ '1)
                               _%value120500%_))
                            (_%loop120518%_
                             (let ((_%next-probe120543%_
                                    (fx+ _%start120514%_
                                         _%i120523%_
                                         (fx* _%i120523%_ _%i120523%_))))
                               (##fxmodulo
                                _%next-probe120543%_
                                _%size120508%_))
                             (##fx+ _%i120523%_ '1)
                             _%deleted120525%_))))))))))
    (define string-table-set!
      (lambda (_%tab120494%_ _%key120495%_ _%value120496%_)
        (if (##fx< (&raw-table-free _%tab120494%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120494%_))
                    '4))
            (__raw-table-rehash! _%tab120494%_)
            '#!void)
        (__string-table-set! _%tab120494%_ _%key120495%_ _%value120496%_)))
    (define string-table-set!/lock
      (lambda (_%tab120464%_ _%key120465%_ _%value120466%_)
        (let ((_%lock120469%_ (&raw-table-lock _%tab120464%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120474%_ ((_%spin120477%_ '0))
              (if (##fx= (##vector-cas! _%lock120469%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120469%_ '1 (current-thread))
                  (if (##fx< _%spin120477%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120474%_ (##fx+ _%spin120477%_ '1)))
                      (let ((_%owner120483%_ (##vector-ref _%lock120469%_ '1)))
                        (if (eq? _%owner120483%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120483%_)
                                (let () (##thread-yield!) (_%again120474%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120489%_
                 (string-table-set!
                  _%tab120464%_
                  _%key120465%_
                  _%value120466%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120469%_ '1 '#f)
                (##vector-cas! _%lock120469%_ '0 '0 '1)))
            _%$r120489%_))))
    (define __string-table-update!
      (lambda (_%tab120415%_
               _%key120416%_
               _%string-table-update!120417%_
               _%default120418%_)
        (let ((_%table120420%_ (&raw-table-table _%tab120415%_))
              (_%seed120421%_ (&raw-table-seed _%tab120415%_)))
          (let* ((_%h120423%_
                  (fxxor (##string=?-hash _%key120416%_) _%seed120421%_))
                 (_%size120426%_ (vector-length _%table120420%_))
                 (_%entries120429%_ (##fxquotient _%size120426%_ '2))
                 (_%start120432%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120423%_ _%entries120429%_)
                   '1)))
            (let _%loop120436%_ ((_%probe120439%_ _%start120432%_)
                                 (_%i120441%_ '1)
                                 (_%deleted120443%_ '#f))
              (let ((_%k120446%_ (vector-ref _%table120420%_ _%probe120439%_)))
                (if (eq? _%k120446%_ (macro-unused-obj))
                    (if _%deleted120443%_
                        (begin
                          (vector-set!
                           _%table120420%_
                           _%deleted120443%_
                           _%key120416%_)
                          (vector-set!
                           _%table120420%_
                           (##fx+ _%deleted120443%_ '1)
                           (_%string-table-update!120417%_ _%default120418%_))
                          (&raw-table-count-set!
                           _%tab120415%_
                           (##fx+ (&raw-table-count _%tab120415%_) '1)))
                        (begin
                          (vector-set!
                           _%table120420%_
                           _%probe120439%_
                           _%key120416%_)
                          (vector-set!
                           _%table120420%_
                           (##fx+ _%probe120439%_ '1)
                           (_%string-table-update!120417%_ _%default120418%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab120415%_
                             (##fx- (&raw-table-free _%tab120415%_) '1))
                            (&raw-table-count-set!
                             _%tab120415%_
                             (##fx+ (&raw-table-count _%tab120415%_) '1)))))
                    (if (eq? _%k120446%_ (macro-deleted-obj))
                        (_%loop120436%_
                         (let ((_%next-probe120453%_
                                (fx+ _%start120432%_
                                     _%i120441%_
                                     (fx* _%i120441%_ _%i120441%_))))
                           (##fxmodulo _%next-probe120453%_ _%size120426%_))
                         (##fx+ _%i120441%_ '1)
                         (let ((_%$e120456%_ _%deleted120443%_))
                           (if _%$e120456%_ _%$e120456%_ _%probe120439%_)))
                        (if (##string=? _%key120416%_ _%k120446%_)
                            (let ()
                              (vector-set!
                               _%table120420%_
                               _%probe120439%_
                               _%key120416%_)
                              (vector-set!
                               _%table120420%_
                               (##fx+ _%probe120439%_ '1)
                               (_%string-table-update!120417%_
                                (vector-ref
                                 _%table120420%_
                                 (##fx+ _%probe120439%_ '1)))))
                            (_%loop120436%_
                             (let ((_%next-probe120461%_
                                    (fx+ _%start120432%_
                                         _%i120441%_
                                         (fx* _%i120441%_ _%i120441%_))))
                               (##fxmodulo
                                _%next-probe120461%_
                                _%size120426%_))
                             (##fx+ _%i120441%_ '1)
                             _%deleted120443%_))))))))))
    (define string-table-update!
      (lambda (_%tab120410%_
               _%key120411%_
               _%string-table-update!120412%_
               _%default120413%_)
        (if (##fx< (&raw-table-free _%tab120410%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120410%_))
                    '4))
            (__raw-table-rehash! _%tab120410%_)
            '#!void)
        (__string-table-update!
         _%tab120410%_
         _%key120411%_
         _%string-table-update!120412%_
         _%default120413%_)))
    (define string-table-update!/lock
      (lambda (_%tab120379%_
               _%key120380%_
               _%string-table-update!120381%_
               _%default120382%_)
        (let ((_%lock120385%_ (&raw-table-lock _%tab120379%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120390%_ ((_%spin120393%_ '0))
              (if (##fx= (##vector-cas! _%lock120385%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120385%_ '1 (current-thread))
                  (if (##fx< _%spin120393%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120390%_ (##fx+ _%spin120393%_ '1)))
                      (let ((_%owner120399%_ (##vector-ref _%lock120385%_ '1)))
                        (if (eq? _%owner120399%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120399%_)
                                (let () (##thread-yield!) (_%again120390%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120405%_
                 (_%string-table-update!120381%_
                  _%tab120379%_
                  _%key120380%_
                  _%string-table-update!120381%_
                  _%default120382%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120385%_ '1 '#f)
                (##vector-cas! _%lock120385%_ '0 '0 '1)))
            _%$r120405%_))))
    (define string-table-delete!
      (lambda (_%tab120336%_ _%key120337%_)
        (let ((_%table120339%_ (&raw-table-table _%tab120336%_))
              (_%seed120341%_ (&raw-table-seed _%tab120336%_)))
          (let* ((_%h120344%_
                  (fxxor (##string=?-hash _%key120337%_) _%seed120341%_))
                 (_%size120347%_ (vector-length _%table120339%_))
                 (_%entries120350%_ (##fxquotient _%size120347%_ '2))
                 (_%start120353%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120344%_ _%entries120350%_)
                   '1)))
            (let _%loop120357%_ ((_%probe120360%_ _%start120353%_)
                                 (_%i120362%_ '1))
              (let ((_%k120365%_ (vector-ref _%table120339%_ _%probe120360%_)))
                (if (eq? _%k120365%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k120365%_ (macro-deleted-obj))
                        (_%loop120357%_
                         (let ((_%next-probe120370%_
                                (fx+ _%start120353%_
                                     _%i120362%_
                                     (fx* _%i120362%_ _%i120362%_))))
                           (##fxmodulo _%next-probe120370%_ _%size120347%_))
                         (##fx+ _%i120362%_ '1))
                        (if (##string=? _%key120337%_ _%k120365%_)
                            (let ()
                              (vector-set!
                               _%table120339%_
                               _%probe120360%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table120339%_
                               (##fx+ _%probe120360%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab120336%_
                               (##fx- (&raw-table-count _%tab120336%_) '1)))
                            (_%loop120357%_
                             (let ((_%next-probe120376%_
                                    (fx+ _%start120353%_
                                         _%i120362%_
                                         (fx* _%i120362%_ _%i120362%_))))
                               (##fxmodulo
                                _%next-probe120376%_
                                _%size120347%_))
                             (##fx+ _%i120362%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab120306%_ _%key120308%_)
        (let ((_%lock120311%_ (&raw-table-lock _%tab120306%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120316%_ ((_%spin120319%_ '0))
              (if (##fx= (##vector-cas! _%lock120311%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120311%_ '1 (current-thread))
                  (if (##fx< _%spin120319%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120316%_ (##fx+ _%spin120319%_ '1)))
                      (let ((_%owner120325%_ (##vector-ref _%lock120311%_ '1)))
                        (if (eq? _%owner120325%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120325%_)
                                (let () (##thread-yield!) (_%again120316%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120331%_
                 (string-table-delete! _%tab120306%_ _%key120308%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120311%_ '1 '#f)
                (##vector-cas! _%lock120311%_ '0 '0 '1)))
            _%$r120331%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint120288%_ _%seed120289%_)
        (make-raw-table__1
         _%size-hint120288%_
         immediate-hash
         eq?
         _%seed120289%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint120295%_ '#f) (_%seed120297%_ '0))
          (make-immediate-table__% _%size-hint120295%_ _%seed120297%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint120299%_)
        (let ((_%seed120301%_ '0))
          (make-immediate-table__% _%size-hint120299%_ _%seed120301%_))))
    (define make-immediate-table
      (lambda _g122360_
        (let ((_g122361_ (##length _g122360_)))
          (cond ((##fx= _g122361_ 0) (apply make-immediate-table__0 _g122360_))
                ((##fx= _g122361_ 1) (apply make-immediate-table__1 _g122360_))
                ((##fx= _g122361_ 2) (apply make-immediate-table__% _g122360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g122360_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint120268%_ _%seed120270%_)
        (make-raw-table/lock__%
         _%size-hint120268%_
         immediate-hash
         eq?
         _%seed120270%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint120276%_ '#f) (_%seed120278%_ '0))
          (make-immediate-table/lock__% _%size-hint120276%_ _%seed120278%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint120280%_)
        (let ((_%seed120282%_ '0))
          (make-immediate-table/lock__% _%size-hint120280%_ _%seed120282%_))))
    (define make-immediate-table/lock
      (lambda _g122362_
        (let ((_g122363_ (##length _g122362_)))
          (cond ((##fx= _g122363_ 0)
                 (apply make-immediate-table/lock__0 _g122362_))
                ((##fx= _g122363_ 1)
                 (apply make-immediate-table/lock__1 _g122362_))
                ((##fx= _g122363_ 2)
                 (apply make-immediate-table/lock__% _g122362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g122362_))))))
    (define immediate-table-ref
      (lambda (_%tab120221%_ _%key120222%_ _%default120223%_)
        (let ((_%table120225%_ (&raw-table-table _%tab120221%_))
              (_%seed120226%_ (&raw-table-seed _%tab120221%_)))
          (let* ((_%h120228%_
                  (fxxor (immediate-hash _%key120222%_) _%seed120226%_))
                 (_%size120231%_ (vector-length _%table120225%_))
                 (_%entries120234%_ (##fxquotient _%size120231%_ '2))
                 (_%start120237%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120228%_ _%entries120234%_)
                   '1)))
            (let _%loop120241%_ ((_%probe120244%_ _%start120237%_)
                                 (_%i120246%_ '1)
                                 (_%deleted120248%_ '#f))
              (let ((_%k120251%_ (vector-ref _%table120225%_ _%probe120244%_)))
                (if (eq? _%k120251%_ (macro-unused-obj))
                    _%default120223%_
                    (if (eq? _%k120251%_ (macro-deleted-obj))
                        (_%loop120241%_
                         (let ((_%next-probe120256%_
                                (fx+ _%start120237%_
                                     _%i120246%_
                                     (fx* _%i120246%_ _%i120246%_))))
                           (##fxmodulo _%next-probe120256%_ _%size120231%_))
                         (##fx+ _%i120246%_ '1)
                         (let ((_%$e120259%_ _%deleted120248%_))
                           (if _%$e120259%_ _%$e120259%_ _%probe120244%_)))
                        (if (eq? _%key120222%_ _%k120251%_)
                            (vector-ref
                             _%table120225%_
                             (##fx+ _%probe120244%_ '1))
                            (_%loop120241%_
                             (let ((_%next-probe120264%_
                                    (fx+ _%start120237%_
                                         _%i120246%_
                                         (fx* _%i120246%_ _%i120246%_))))
                               (##fxmodulo
                                _%next-probe120264%_
                                _%size120231%_))
                             (##fx+ _%i120246%_ '1)
                             _%deleted120248%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab120192%_ _%key120193%_ _%default120194%_)
        (let ((_%lock120196%_ (&raw-table-lock _%tab120192%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120201%_ ((_%spin120204%_ '0))
              (if (##fx= (##vector-cas! _%lock120196%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120196%_ '1 (current-thread))
                  (if (##fx< _%spin120204%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120201%_ (##fx+ _%spin120204%_ '1)))
                      (let ((_%owner120210%_ (##vector-ref _%lock120196%_ '1)))
                        (if (eq? _%owner120210%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120210%_)
                                (let () (##thread-yield!) (_%again120201%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120216%_
                 (immediate-table-ref
                  _%tab120192%_
                  _%key120193%_
                  _%default120194%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120196%_ '1 '#f)
                (##vector-cas! _%lock120196%_ '0 '0 '1)))
            _%$r120216%_))))
    (define __immediate-table-set!
      (lambda (_%tab120144%_ _%key120145%_ _%value120146%_)
        (let ((_%table120148%_ (&raw-table-table _%tab120144%_))
              (_%seed120149%_ (&raw-table-seed _%tab120144%_)))
          (let* ((_%h120151%_
                  (fxxor (immediate-hash _%key120145%_) _%seed120149%_))
                 (_%size120154%_ (vector-length _%table120148%_))
                 (_%entries120157%_ (##fxquotient _%size120154%_ '2))
                 (_%start120160%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120151%_ _%entries120157%_)
                   '1)))
            (let _%loop120164%_ ((_%probe120167%_ _%start120160%_)
                                 (_%i120169%_ '1)
                                 (_%deleted120171%_ '#f))
              (let ((_%k120174%_ (vector-ref _%table120148%_ _%probe120167%_)))
                (if (eq? _%k120174%_ (macro-unused-obj))
                    (if _%deleted120171%_
                        (begin
                          (vector-set!
                           _%table120148%_
                           _%deleted120171%_
                           _%key120145%_)
                          (vector-set!
                           _%table120148%_
                           (##fx+ _%deleted120171%_ '1)
                           _%value120146%_)
                          (&raw-table-count-set!
                           _%tab120144%_
                           (##fx+ (&raw-table-count _%tab120144%_) '1)))
                        (begin
                          (vector-set!
                           _%table120148%_
                           _%probe120167%_
                           _%key120145%_)
                          (vector-set!
                           _%table120148%_
                           (##fx+ _%probe120167%_ '1)
                           _%value120146%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab120144%_
                             (##fx- (&raw-table-free _%tab120144%_) '1))
                            (&raw-table-count-set!
                             _%tab120144%_
                             (##fx+ (&raw-table-count _%tab120144%_) '1)))))
                    (if (eq? _%k120174%_ (macro-deleted-obj))
                        (_%loop120164%_
                         (let ((_%next-probe120181%_
                                (fx+ _%start120160%_
                                     _%i120169%_
                                     (fx* _%i120169%_ _%i120169%_))))
                           (##fxmodulo _%next-probe120181%_ _%size120154%_))
                         (##fx+ _%i120169%_ '1)
                         (let ((_%$e120184%_ _%deleted120171%_))
                           (if _%$e120184%_ _%$e120184%_ _%probe120167%_)))
                        (if (eq? _%key120145%_ _%k120174%_)
                            (let ()
                              (vector-set!
                               _%table120148%_
                               _%probe120167%_
                               _%key120145%_)
                              (vector-set!
                               _%table120148%_
                               (##fx+ _%probe120167%_ '1)
                               _%value120146%_))
                            (_%loop120164%_
                             (let ((_%next-probe120189%_
                                    (fx+ _%start120160%_
                                         _%i120169%_
                                         (fx* _%i120169%_ _%i120169%_))))
                               (##fxmodulo
                                _%next-probe120189%_
                                _%size120154%_))
                             (##fx+ _%i120169%_ '1)
                             _%deleted120171%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab120140%_ _%key120141%_ _%value120142%_)
        (if (##fx< (&raw-table-free _%tab120140%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120140%_))
                    '4))
            (__raw-table-rehash! _%tab120140%_)
            '#!void)
        (__immediate-table-set! _%tab120140%_ _%key120141%_ _%value120142%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab120110%_ _%key120111%_ _%value120112%_)
        (let ((_%lock120115%_ (&raw-table-lock _%tab120110%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120120%_ ((_%spin120123%_ '0))
              (if (##fx= (##vector-cas! _%lock120115%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120115%_ '1 (current-thread))
                  (if (##fx< _%spin120123%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120120%_ (##fx+ _%spin120123%_ '1)))
                      (let ((_%owner120129%_ (##vector-ref _%lock120115%_ '1)))
                        (if (eq? _%owner120129%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120129%_)
                                (let () (##thread-yield!) (_%again120120%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120135%_
                 (immediate-table-set!
                  _%tab120110%_
                  _%key120111%_
                  _%value120112%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120115%_ '1 '#f)
                (##vector-cas! _%lock120115%_ '0 '0 '1)))
            _%$r120135%_))))
    (define __immediate-table-update!
      (lambda (_%tab120061%_
               _%key120062%_
               _%immediate-table-update!120063%_
               _%default120064%_)
        (let ((_%table120066%_ (&raw-table-table _%tab120061%_))
              (_%seed120067%_ (&raw-table-seed _%tab120061%_)))
          (let* ((_%h120069%_
                  (fxxor (immediate-hash _%key120062%_) _%seed120067%_))
                 (_%size120072%_ (vector-length _%table120066%_))
                 (_%entries120075%_ (##fxquotient _%size120072%_ '2))
                 (_%start120078%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120069%_ _%entries120075%_)
                   '1)))
            (let _%loop120082%_ ((_%probe120085%_ _%start120078%_)
                                 (_%i120087%_ '1)
                                 (_%deleted120089%_ '#f))
              (let ((_%k120092%_ (vector-ref _%table120066%_ _%probe120085%_)))
                (if (eq? _%k120092%_ (macro-unused-obj))
                    (if _%deleted120089%_
                        (begin
                          (vector-set!
                           _%table120066%_
                           _%deleted120089%_
                           _%key120062%_)
                          (vector-set!
                           _%table120066%_
                           (##fx+ _%deleted120089%_ '1)
                           (_%immediate-table-update!120063%_
                            _%default120064%_))
                          (&raw-table-count-set!
                           _%tab120061%_
                           (##fx+ (&raw-table-count _%tab120061%_) '1)))
                        (begin
                          (vector-set!
                           _%table120066%_
                           _%probe120085%_
                           _%key120062%_)
                          (vector-set!
                           _%table120066%_
                           (##fx+ _%probe120085%_ '1)
                           (_%immediate-table-update!120063%_
                            _%default120064%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab120061%_
                             (##fx- (&raw-table-free _%tab120061%_) '1))
                            (&raw-table-count-set!
                             _%tab120061%_
                             (##fx+ (&raw-table-count _%tab120061%_) '1)))))
                    (if (eq? _%k120092%_ (macro-deleted-obj))
                        (_%loop120082%_
                         (let ((_%next-probe120099%_
                                (fx+ _%start120078%_
                                     _%i120087%_
                                     (fx* _%i120087%_ _%i120087%_))))
                           (##fxmodulo _%next-probe120099%_ _%size120072%_))
                         (##fx+ _%i120087%_ '1)
                         (let ((_%$e120102%_ _%deleted120089%_))
                           (if _%$e120102%_ _%$e120102%_ _%probe120085%_)))
                        (if (eq? _%key120062%_ _%k120092%_)
                            (let ()
                              (vector-set!
                               _%table120066%_
                               _%probe120085%_
                               _%key120062%_)
                              (vector-set!
                               _%table120066%_
                               (##fx+ _%probe120085%_ '1)
                               (_%immediate-table-update!120063%_
                                (vector-ref
                                 _%table120066%_
                                 (##fx+ _%probe120085%_ '1)))))
                            (_%loop120082%_
                             (let ((_%next-probe120107%_
                                    (fx+ _%start120078%_
                                         _%i120087%_
                                         (fx* _%i120087%_ _%i120087%_))))
                               (##fxmodulo
                                _%next-probe120107%_
                                _%size120072%_))
                             (##fx+ _%i120087%_ '1)
                             _%deleted120089%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab120056%_
               _%key120057%_
               _%immediate-table-update!120058%_
               _%default120059%_)
        (if (##fx< (&raw-table-free _%tab120056%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120056%_))
                    '4))
            (__raw-table-rehash! _%tab120056%_)
            '#!void)
        (__immediate-table-update!
         _%tab120056%_
         _%key120057%_
         _%immediate-table-update!120058%_
         _%default120059%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab120025%_
               _%key120026%_
               _%immediate-table-update!120027%_
               _%default120028%_)
        (let ((_%lock120031%_ (&raw-table-lock _%tab120025%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120036%_ ((_%spin120039%_ '0))
              (if (##fx= (##vector-cas! _%lock120031%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120031%_ '1 (current-thread))
                  (if (##fx< _%spin120039%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120036%_ (##fx+ _%spin120039%_ '1)))
                      (let ((_%owner120045%_ (##vector-ref _%lock120031%_ '1)))
                        (if (eq? _%owner120045%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120045%_)
                                (let () (##thread-yield!) (_%again120036%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120051%_
                 (_%immediate-table-update!120027%_
                  _%tab120025%_
                  _%key120026%_
                  _%immediate-table-update!120027%_
                  _%default120028%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120031%_ '1 '#f)
                (##vector-cas! _%lock120031%_ '0 '0 '1)))
            _%$r120051%_))))
    (define immediate-table-delete!
      (lambda (_%tab119982%_ _%key119983%_)
        (let ((_%table119985%_ (&raw-table-table _%tab119982%_))
              (_%seed119987%_ (&raw-table-seed _%tab119982%_)))
          (let* ((_%h119990%_
                  (fxxor (immediate-hash _%key119983%_) _%seed119987%_))
                 (_%size119993%_ (vector-length _%table119985%_))
                 (_%entries119996%_ (##fxquotient _%size119993%_ '2))
                 (_%start119999%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119990%_ _%entries119996%_)
                   '1)))
            (let _%loop120003%_ ((_%probe120006%_ _%start119999%_)
                                 (_%i120008%_ '1))
              (let ((_%k120011%_ (vector-ref _%table119985%_ _%probe120006%_)))
                (if (eq? _%k120011%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k120011%_ (macro-deleted-obj))
                        (_%loop120003%_
                         (let ((_%next-probe120016%_
                                (fx+ _%start119999%_
                                     _%i120008%_
                                     (fx* _%i120008%_ _%i120008%_))))
                           (##fxmodulo _%next-probe120016%_ _%size119993%_))
                         (##fx+ _%i120008%_ '1))
                        (if (eq? _%key119983%_ _%k120011%_)
                            (let ()
                              (vector-set!
                               _%table119985%_
                               _%probe120006%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119985%_
                               (##fx+ _%probe120006%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119982%_
                               (##fx- (&raw-table-count _%tab119982%_) '1)))
                            (_%loop120003%_
                             (let ((_%next-probe120022%_
                                    (fx+ _%start119999%_
                                         _%i120008%_
                                         (fx* _%i120008%_ _%i120008%_))))
                               (##fxmodulo
                                _%next-probe120022%_
                                _%size119993%_))
                             (##fx+ _%i120008%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab119952%_ _%key119954%_)
        (let ((_%lock119957%_ (&raw-table-lock _%tab119952%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119962%_ ((_%spin119965%_ '0))
              (if (##fx= (##vector-cas! _%lock119957%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119957%_ '1 (current-thread))
                  (if (##fx< _%spin119965%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119962%_ (##fx+ _%spin119965%_ '1)))
                      (let ((_%owner119971%_ (##vector-ref _%lock119957%_ '1)))
                        (if (eq? _%owner119971%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119971%_)
                                (let () (##thread-yield!) (_%again119962%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119977%_
                 (immediate-table-delete! _%tab119952%_ _%key119954%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119957%_ '1 '#f)
                (##vector-cas! _%lock119957%_ '0 '0 '1)))
            _%$r119977%_))))
    (define unused-obj (values (macro-unused-obj)))
    (define __gc-table::t.id 'gerbil#__gc-table::t)
    (define __gc-table::t
      (##structure
       ##type-type
       __gc-table::t.id
       'gc-table
       '26
       '#f
       '#(gcht 5 #f immediate 5 #f lock 5 #f)))
    (define __gc-table-loads '#f64(.45 .6363961030678927 .9))
    (define &gc-table-gcht
      (lambda (_%tab119950%_)
        (##unchecked-structure-ref
         _%tab119950%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab119948%_)
        (##unchecked-structure-ref
         _%tab119948%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab119946%_)
        (##unchecked-structure-ref
         _%tab119946%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab119943%_ _%val119944%_)
        (##unchecked-structure-set!
         _%tab119943%_
         _%val119944%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab119940%_ _%val119941%_)
        (##unchecked-structure-set!
         _%tab119940%_
         _%val119941%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab119937%_ _%val119938%_)
        (##unchecked-structure-set!
         _%tab119937%_
         _%val119938%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint119901%_
               _%klass119902%_
               _%flags119903%_
               _%lock119904%_)
        (let ((_%gcht119906%_
               (__gc-table-new
                (if (fixnum? _%size-hint119901%_) _%size-hint119901%_ '16)
                _%flags119903%_)))
          (##structure _%klass119902%_ _%gcht119906%_ '#f _%lock119904%_))))
    (define make-gc-table__0
      (lambda (_%size-hint119911%_)
        (let* ((_%klass119913%_ __gc-table::t)
               (_%flags119915%_ '0)
               (_%lock119917%_ '#f))
          (make-gc-table__%
           _%size-hint119911%_
           _%klass119913%_
           _%flags119915%_
           _%lock119917%_))))
    (define make-gc-table__1
      (lambda (_%size-hint119919%_ _%klass119920%_)
        (let* ((_%flags119922%_ '0) (_%lock119924%_ '#f))
          (make-gc-table__%
           _%size-hint119919%_
           _%klass119920%_
           _%flags119922%_
           _%lock119924%_))))
    (define make-gc-table__2
      (lambda (_%size-hint119926%_ _%klass119927%_ _%flags119928%_)
        (let ((_%lock119930%_ '#f))
          (make-gc-table__%
           _%size-hint119926%_
           _%klass119927%_
           _%flags119928%_
           _%lock119930%_))))
    (define make-gc-table
      (lambda _g122364_
        (let ((_g122365_ (##length _g122364_)))
          (cond ((##fx= _g122365_ 1) (apply make-gc-table__0 _g122364_))
                ((##fx= _g122365_ 2) (apply make-gc-table__1 _g122364_))
                ((##fx= _g122365_ 3) (apply make-gc-table__2 _g122364_))
                ((##fx= _g122365_ 4) (apply make-gc-table__% _g122364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g122364_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint119878%_ _%klass119879%_ _%flags119880%_)
        (make-gc-table__%
         _%size-hint119878%_
         _%klass119879%_
         _%flags119880%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint119885%_)
        (let* ((_%klass119887%_ __gc-table::t) (_%flags119889%_ '0))
          (make-gc-table/lock__%
           _%size-hint119885%_
           _%klass119887%_
           _%flags119889%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint119891%_ _%klass119892%_)
        (let ((_%flags119894%_ '0))
          (make-gc-table/lock__%
           _%size-hint119891%_
           _%klass119892%_
           _%flags119894%_))))
    (define make-gc-table/lock
      (lambda _g122366_
        (let ((_g122367_ (##length _g122366_)))
          (cond ((##fx= _g122367_ 1) (apply make-gc-table/lock__0 _g122366_))
                ((##fx= _g122367_ 2) (apply make-gc-table/lock__1 _g122366_))
                ((##fx= _g122367_ 3) (apply make-gc-table/lock__% _g122366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g122366_))))))
    (define __gc-table-immediate
      (lambda (_%tab119869%_)
        (let ((_%$e119871%_ (&gc-table-immediate _%tab119869%_)))
          (if _%$e119871%_
              _%$e119871%_
              (let ((_%immediate119875%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab119869%_ _%immediate119875%_)
                _%immediate119875%_)))))
    (define __gc-table-new
      (lambda (_%size119859%_ _%flags119860%_)
        (let* ((_%flags119862%_
                (##fxand _%flags119860%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags119864%_
                (fxior _%flags119862%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht119866%_
                (##gc-hash-table-allocate
                 _%size119859%_
                 _%flags119864%_
                 __gc-table-loads)))
          _%gcht119866%_)))
    (define __gc-table-e
      (lambda (_%tab119854%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht119857%_ (&gc-table-gcht _%tab119854%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht119857%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht119857%_
              (begin
                (__gc-table-rehash! _%tab119854%_)
                (&gc-table-gcht _%tab119854%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab119845%_)
        (let* ((_%old-table119847%_ (&gc-table-gcht _%tab119845%_))
               (_%new-table119849%_
                (##gc-hash-table-resize! _%old-table119847%_ __gc-table-loads))
               (_%gcht119851%_
                (##gc-hash-table-rehash!
                 _%old-table119847%_
                 _%new-table119849%_)))
          (&gc-table-gcht-set! _%tab119845%_ _%gcht119851%_))))
    (define gc-table-ref
      (lambda (_%tab119829%_ _%key119830%_ _%default119831%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key119830%_)
            (let* ((_%gcht119835%_ (__gc-table-e _%tab119829%_))
                   (_%value119837%_
                    (##gc-hash-table-ref _%gcht119835%_ _%key119830%_)))
              (if (eq? _%value119837%_ (macro-unused-obj))
                  _%default119831%_
                  _%value119837%_))
            (let ((_%$e119839%_ (&gc-table-immediate _%tab119829%_)))
              (if _%$e119839%_
                  (immediate-table-ref
                   _%$e119839%_
                   _%key119830%_
                   _%default119831%_)
                  _%default119831%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab119803%_ _%key119804%_ _%default119805%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119809%_ ((_%spin119812%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119803%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119803%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119812%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119809%_ (##fx+ _%spin119812%_ '1)))
                    (let ((_%owner119818%_
                           (##vector-ref (&gc-table-lock _%tab119803%_) '1)))
                      (if (eq? _%owner119818%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119818%_)
                              (let () (##thread-yield!) (_%again119809%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119824%_
               (gc-table-ref _%tab119803%_ _%key119804%_ _%default119805%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119803%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119803%_) '0 '0 '1)))
          _%$r119824%_)))
    (define gc-table-set!
      (lambda (_%tab119796%_ _%key119797%_ _%value119798%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key119797%_)
            (let ((_%gcht119801%_ (__gc-table-e _%tab119796%_)))
              (if (##gc-hash-table-set!
                   _%gcht119801%_
                   _%key119797%_
                   _%value119798%_)
                  (begin
                    (__gc-table-rehash! _%tab119796%_)
                    (gc-table-set!
                     _%tab119796%_
                     _%key119797%_
                     _%value119798%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab119796%_)
             _%key119797%_
             _%value119798%_))))
    (define gc-table-set/lock!
      (lambda (_%tab119770%_ _%key119771%_ _%value119772%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119776%_ ((_%spin119779%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119770%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119770%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119779%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119776%_ (##fx+ _%spin119779%_ '1)))
                    (let ((_%owner119785%_
                           (##vector-ref (&gc-table-lock _%tab119770%_) '1)))
                      (if (eq? _%owner119785%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119785%_)
                              (let () (##thread-yield!) (_%again119776%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119791%_
               (gc-table-set! _%tab119770%_ _%key119771%_ _%value119772%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119770%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119770%_) '0 '0 '1)))
          _%$r119791%_)))
    (define gc-table-update!
      (lambda (_%tab119763%_ _%key119764%_ _%update119765%_ _%default119766%_)
        (if (##mem-allocated? _%key119764%_)
            (let ((_%value119768%_
                   (gc-table-ref
                    _%tab119763%_
                    _%key119764%_
                    _%default119766%_)))
              (gc-table-set!
               _%tab119763%_
               _%key119764%_
               (_%update119765%_ _%value119768%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab119763%_)
             _%key119764%_
             _%update119765%_
             _%default119766%_))))
    (define gc-table-update!/lock
      (lambda (_%tab119736%_ _%key119737%_ _%update119738%_ _%default119739%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119743%_ ((_%spin119746%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119736%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119736%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119746%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119743%_ (##fx+ _%spin119746%_ '1)))
                    (let ((_%owner119752%_
                           (##vector-ref (&gc-table-lock _%tab119736%_) '1)))
                      (if (eq? _%owner119752%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119752%_)
                              (let () (##thread-yield!) (_%again119743%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119758%_
               (gc-table-update!
                _%tab119736%_
                _%key119737%_
                _%update119738%_
                _%default119739%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119736%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119736%_) '0 '0 '1)))
          _%$r119758%_)))
    (define gc-table-delete!
      (lambda (_%tab119724%_ _%key119725%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key119725%_)
            (let ((_%gcht119729%_ (__gc-table-e _%tab119724%_)))
              (if (##gc-hash-table-set!
                   _%gcht119729%_
                   _%key119725%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab119724%_)
                    (gc-table-delete! _%tab119724%_ _%key119725%_))
                  '#!void))
            (let ((_%$e119731%_ (&gc-table-immediate _%tab119724%_)))
              (if _%$e119731%_
                  (immediate-table-delete! _%$e119731%_ _%key119725%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab119699%_ _%key119700%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119704%_ ((_%spin119707%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119699%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119699%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119707%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119704%_ (##fx+ _%spin119707%_ '1)))
                    (let ((_%owner119713%_
                           (##vector-ref (&gc-table-lock _%tab119699%_) '1)))
                      (if (eq? _%owner119713%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119713%_)
                              (let () (##thread-yield!) (_%again119704%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119719%_ (gc-table-delete! _%tab119699%_ _%key119700%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119699%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119699%_) '0 '0 '1)))
          _%$r119719%_)))
    (define gc-table-for-each
      (lambda (_%tab119688%_ _%proc119689%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht119692%_ (__gc-table-e _%tab119688%_)))
            (##gc-hash-table-for-each _%proc119689%_ _%gcht119692%_))
          (let ((_%$e119694%_ (&gc-table-immediate _%tab119688%_)))
            (if _%$e119694%_
                (raw-table-for-each _%$e119694%_ _%proc119689%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab119663%_ _%proc119664%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119668%_ ((_%spin119671%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119663%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119663%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119671%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119668%_ (##fx+ _%spin119671%_ '1)))
                    (let ((_%owner119677%_
                           (##vector-ref (&gc-table-lock _%tab119663%_) '1)))
                      (if (eq? _%owner119677%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119677%_)
                              (let () (##thread-yield!) (_%again119668%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119683%_ (gc-table-for-each _%tab119663%_ _%proc119664%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119663%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119663%_) '0 '0 '1)))
          _%$r119683%_)))
    (define table-new__%
      (lambda (_%tab119645%_ _%size-hint119646%_)
        (if (table? _%tab119645%_)
            '#!void
            (error '"table-new: expected table" _%tab119645%_))
        (letrec* ((_%loads119648%_ (macro-table-loads _%tab119645%_)))
          (make-table
           'size:
           (let ((_%$e119650%_ _%size-hint119646%_))
             (if _%$e119650%_ _%$e119650%_ '16))
           'init:
           (macro-table-init _%tab119645%_)
           'weak-keys:
           (##fx< '0
                  (fxand (macro-table-flags _%tab119645%_)
                         (macro-gc-hash-table-flag-weak-keys)))
           'weak-values:
           (##fx< '0
                  (fxand (macro-table-flags _%tab119645%_)
                         (macro-gc-hash-table-flag-weak-vals)))
           'test:
           (macro-table-test _%tab119645%_)
           'hash:
           (macro-table-hash _%tab119645%_)
           'min-load:
           (##f64vector-ref _%loads119648%_ '0)
           'max-load:
           (##f64vector-ref _%loads119648%_ '2)))))
    (define table-new__0
      (lambda (_%tab119656%_)
        (let ((_%size-hint119658%_ '#f))
          (table-new__% _%tab119656%_ _%size-hint119658%_))))
    (define table-new
      (lambda _g122368_
        (let ((_g122369_ (##length _g122368_)))
          (cond ((##fx= _g122369_ 1) (apply table-new__0 _g122368_))
                ((##fx= _g122369_ 2) (apply table-new__% _g122368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  table-new
                  _g122368_))))))
    (define gc-table-new__%
      (lambda (_%tab119631%_ _%size-hint119632%_)
        (make-gc-table__%
         (if (eq? _%size-hint119632%_ '#t)
             (macro-gc-hash-table-count (__gc-table-e _%tab119631%_))
             _%size-hint119632%_)
         (##structure-type _%tab119631%_)
         (macro-gc-hash-table-flags (&gc-table-gcht _%tab119631%_))
         (if (&gc-table-lock _%tab119631%_) '#t '#f))))
    (define gc-table-new__0
      (lambda (_%tab119637%_)
        (let ((_%size-hint119639%_ '#f))
          (gc-table-new__% _%tab119637%_ _%size-hint119639%_))))
    (define gc-table-new
      (lambda _g122370_
        (let ((_g122371_ (##length _g122370_)))
          (cond ((##fx= _g122371_ 1) (apply gc-table-new__0 _g122370_))
                ((##fx= _g122371_ 2) (apply gc-table-new__% _g122370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gc-table-new
                  _g122370_))))))
    (define gc-table-copy
      (lambda (_%tab119623%_)
        (let ((_%result119625%_ (gc-table-new__% _%tab119623%_ '#t)))
          (gc-table-for-each
           _%tab119623%_
           (lambda (_%k119627%_ _%v119628%_)
             (gc-table-set! _%result119625%_ _%k119627%_ _%v119628%_)))
          _%result119625%_)))
    (define gc-table-copy/lock
      (lambda (_%tab119599%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119603%_ ((_%spin119606%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119599%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119599%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119606%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119603%_ (##fx+ _%spin119606%_ '1)))
                    (let ((_%owner119612%_
                           (##vector-ref (&gc-table-lock _%tab119599%_) '1)))
                      (if (eq? _%owner119612%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119612%_)
                              (let () (##thread-yield!) (_%again119603%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119618%_ (gc-table-copy _%tab119599%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119599%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119599%_) '0 '0 '1)))
          _%$r119618%_)))
    (define gc-table-clear!
      (lambda (_%tab119592%_)
        (let* ((_%gcht119594%_ (__gc-table-e _%tab119592%_))
               (_%new-table119596%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht119594%_))))
          (&gc-table-gcht-set! _%tab119592%_ _%new-table119596%_)
          (&gc-table-immediate-set! _%tab119592%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab119568%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119572%_ ((_%spin119575%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119568%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119568%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119575%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119572%_ (##fx+ _%spin119575%_ '1)))
                    (let ((_%owner119581%_
                           (##vector-ref (&gc-table-lock _%tab119568%_) '1)))
                      (if (eq? _%owner119581%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119581%_)
                              (let () (##thread-yield!) (_%again119572%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119587%_ (gc-table-clear! _%tab119568%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119568%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119568%_) '0 '0 '1)))
          _%$r119587%_)))
    (define gc-table-length
      (lambda (_%tab119560%_)
        (let ((_%gcht119562%_ (__gc-table-e _%tab119560%_)))
          (fx+ (macro-gc-hash-table-count _%gcht119562%_)
               (let ((_%$e119564%_ (&gc-table-immediate _%tab119560%_)))
                 (if _%$e119564%_ (&raw-table-count _%$e119564%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab119536%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119540%_ ((_%spin119543%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119536%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119536%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119543%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119540%_ (##fx+ _%spin119543%_ '1)))
                    (let ((_%owner119549%_
                           (##vector-ref (&gc-table-lock _%tab119536%_) '1)))
                      (if (eq? _%owner119549%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119549%_)
                              (let () (##thread-yield!) (_%again119540%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119555%_ (gc-table-length _%tab119536%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119536%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119536%_) '0 '0 '1)))
          _%$r119555%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj119502%_)
        (declare (not interrupts-enabled))
        (let ((_%val119505%_
               (gc-table-ref __object-eq-hash _%obj119502%_ '#f)))
          (if _%val119505%_
              _%val119505%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again119509%_ ((_%spin119512%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin119512%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again119509%_ (##fx+ _%spin119512%_ '1)))
                            (let ((_%owner119518%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner119518%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner119518%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again119509%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r119531%_
                       (let ((_%val119524%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj119502%_
                               '#f)))
                         (if _%val119524%_
                             _%val119524%_
                             (let ((_%h119526%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e119528%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e119528%_ _%$e119528%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj119502%_
                                _%h119526%_)
                               _%h119526%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r119531%_))))))))
