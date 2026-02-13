(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1771025392)
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
          5
          #f
          count
          5
          #f
          free
          5
          #f
          hash
          5
          #f
          test
          5
          #f
          seed
          5
          #f
          lock
          5
          #f)))
    (define raw-table?
      (lambda (_%obj118266%_)
        (if (##structure? _%obj118266%_)
            (##structure-instance-of? _%obj118266%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab118264%_)
        (##unchecked-structure-ref
         _%tab118264%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab118262%_)
        (##unchecked-structure-ref
         _%tab118262%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab118260%_)
        (##unchecked-structure-ref
         _%tab118260%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab118258%_)
        (##unchecked-structure-ref
         _%tab118258%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab118256%_)
        (##unchecked-structure-ref
         _%tab118256%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab118254%_)
        (##unchecked-structure-ref
         _%tab118254%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab118252%_)
        (##unchecked-structure-ref
         _%tab118252%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab118249%_ _%val118250%_)
        (##unchecked-structure-set!
         _%tab118249%_
         _%val118250%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab118246%_ _%val118247%_)
        (##unchecked-structure-set!
         _%tab118246%_
         _%val118247%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab118243%_ _%val118244%_)
        (##unchecked-structure-set!
         _%tab118243%_
         _%val118244%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab118240%_ _%val118241%_)
        (##unchecked-structure-set!
         _%tab118240%_
         _%val118241%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab118237%_ _%val118238%_)
        (##unchecked-structure-set!
         _%tab118237%_
         _%val118238%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab118234%_ _%val118235%_)
        (##unchecked-structure-set!
         _%tab118234%_
         _%val118235%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab118231%_ _%val118232%_)
        (##unchecked-structure-set!
         _%tab118231%_
         _%val118232%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint118229%_)
        (if (and (fixnum? _%size-hint118229%_) (##fx> _%size-hint118229%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint118229%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint118194%_
               _%hash118195%_
               _%test118196%_
               _%seed118197%_
               _%lock118198%_)
        (let* ((_%size118200%_ (raw-table-size-hint->size _%size-hint118194%_))
               (_%table118202%_
                (##make-vector _%size118200%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table118202%_
           '0
           (##fxquotient _%size118200%_ '2)
           _%hash118195%_
           _%test118196%_
           _%seed118197%_
           _%lock118198%_))))
    (define make-raw-table__0
      (lambda (_%size-hint118208%_ _%hash118209%_ _%test118210%_)
        (let* ((_%seed118212%_ '0) (_%lock118214%_ '#f))
          (make-raw-table__%
           _%size-hint118208%_
           _%hash118209%_
           _%test118210%_
           _%seed118212%_
           _%lock118214%_))))
    (define make-raw-table__1
      (lambda (_%size-hint118216%_
               _%hash118217%_
               _%test118218%_
               _%seed118219%_)
        (let ((_%lock118221%_ '#f))
          (make-raw-table__%
           _%size-hint118216%_
           _%hash118217%_
           _%test118218%_
           _%seed118219%_
           _%lock118221%_))))
    (define make-raw-table
      (lambda _g118267_
        (let ((_g118268_ (##length _g118267_)))
          (cond ((##fx= _g118268_ 3) (apply make-raw-table__0 _g118267_))
                ((##fx= _g118268_ 4) (apply make-raw-table__1 _g118267_))
                ((##fx= _g118268_ 5) (apply make-raw-table__% _g118267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g118267_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint118174%_
               _%hash118175%_
               _%test118176%_
               _%seed118177%_)
        (make-raw-table__%
         _%size-hint118174%_
         _%hash118175%_
         _%test118176%_
         _%seed118177%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint118182%_ _%hash118183%_ _%test118184%_)
        (let ((_%seed118186%_ '0))
          (make-raw-table/lock__%
           _%size-hint118182%_
           _%hash118183%_
           _%test118184%_
           _%seed118186%_))))
    (define make-raw-table/lock
      (lambda _g118269_
        (let ((_g118270_ (##length _g118269_)))
          (cond ((##fx= _g118270_ 3) (apply make-raw-table/lock__0 _g118269_))
                ((##fx= _g118270_ 4) (apply make-raw-table/lock__% _g118269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g118269_))))))
    (define raw-table-length
      (lambda (_%tab118171%_) (&raw-table-count _%tab118171%_)))
    (define raw-table-length/lock
      (lambda (_%tab118144%_)
        (let ((_%lock118146%_ (&raw-table-lock _%tab118144%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118151%_ ((_%spin118154%_ '0))
              (if (##fx= (##vector-cas! _%lock118146%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118146%_ '1 (current-thread))
                  (if (##fx< _%spin118154%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118151%_ (##fx+ _%spin118154%_ '1)))
                      (let ((_%owner118160%_ (##vector-ref _%lock118146%_ '1)))
                        (if (eq? _%owner118160%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118160%_)
                                (let () (##thread-yield!) (_%again118151%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118166%_ (&raw-table-count _%tab118144%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118146%_ '1 '#f)
                (##vector-cas! _%lock118146%_ '0 '0 '1)))
            _%$r118166%_))))
    (define raw-table-ref
      (lambda (_%tab118096%_ _%key118097%_ _%default118098%_)
        (let ((_%table118100%_ (&raw-table-table _%tab118096%_))
              (_%seed118101%_ (&raw-table-seed _%tab118096%_))
              (_%hash118102%_ (&raw-table-hash _%tab118096%_))
              (_%test118103%_ (&raw-table-test _%tab118096%_)))
          (let* ((_%h118105%_
                  (fxxor (_%hash118102%_ _%key118097%_) _%seed118101%_))
                 (_%size118108%_ (vector-length _%table118100%_))
                 (_%entries118111%_ (##fxquotient _%size118108%_ '2))
                 (_%start118114%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118105%_ _%entries118111%_)
                   '1)))
            (let _%loop118118%_ ((_%probe118121%_ _%start118114%_)
                                 (_%i118123%_ '1)
                                 (_%deleted118125%_ '#f))
              (let ((_%k118128%_ (vector-ref _%table118100%_ _%probe118121%_)))
                (if (eq? _%k118128%_ (macro-unused-obj))
                    _%default118098%_
                    (if (eq? _%k118128%_ (macro-deleted-obj))
                        (_%loop118118%_
                         (let ((_%next-probe118133%_
                                (fx+ _%start118114%_
                                     _%i118123%_
                                     (fx* _%i118123%_ _%i118123%_))))
                           (##fxmodulo _%next-probe118133%_ _%size118108%_))
                         (##fx+ _%i118123%_ '1)
                         (let ((_%$e118136%_ _%deleted118125%_))
                           (if _%$e118136%_ _%$e118136%_ _%probe118121%_)))
                        (if (_%test118103%_ _%key118097%_ _%k118128%_)
                            (vector-ref
                             _%table118100%_
                             (##fx+ _%probe118121%_ '1))
                            (_%loop118118%_
                             (let ((_%next-probe118141%_
                                    (fx+ _%start118114%_
                                         _%i118123%_
                                         (fx* _%i118123%_ _%i118123%_))))
                               (##fxmodulo
                                _%next-probe118141%_
                                _%size118108%_))
                             (##fx+ _%i118123%_ '1)
                             _%deleted118125%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab118067%_ _%key118068%_ _%default118069%_)
        (let ((_%lock118071%_ (&raw-table-lock _%tab118067%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118076%_ ((_%spin118079%_ '0))
              (if (##fx= (##vector-cas! _%lock118071%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118071%_ '1 (current-thread))
                  (if (##fx< _%spin118079%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118076%_ (##fx+ _%spin118079%_ '1)))
                      (let ((_%owner118085%_ (##vector-ref _%lock118071%_ '1)))
                        (if (eq? _%owner118085%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118085%_)
                                (let () (##thread-yield!) (_%again118076%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118091%_
                 (raw-table-ref
                  _%tab118067%_
                  _%key118068%_
                  _%default118069%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118071%_ '1 '#f)
                (##vector-cas! _%lock118071%_ '0 '0 '1)))
            _%$r118091%_))))
    (define raw-table-set!
      (lambda (_%tab118063%_ _%key118064%_ _%value118065%_)
        (if (##fx< (&raw-table-free _%tab118063%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118063%_))
                    '4))
            (__raw-table-rehash! _%tab118063%_)
            '#!void)
        (__raw-table-set! _%tab118063%_ _%key118064%_ _%value118065%_)))
    (define raw-table-set!/lock
      (lambda (_%tab118034%_ _%key118035%_ _%value118036%_)
        (let ((_%lock118038%_ (&raw-table-lock _%tab118034%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118043%_ ((_%spin118046%_ '0))
              (if (##fx= (##vector-cas! _%lock118038%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118038%_ '1 (current-thread))
                  (if (##fx< _%spin118046%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118043%_ (##fx+ _%spin118046%_ '1)))
                      (let ((_%owner118052%_ (##vector-ref _%lock118038%_ '1)))
                        (if (eq? _%owner118052%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118052%_)
                                (let () (##thread-yield!) (_%again118043%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118058%_
                 (raw-table-set! _%tab118034%_ _%key118035%_ _%value118036%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118038%_ '1 '#f)
                (##vector-cas! _%lock118038%_ '0 '0 '1)))
            _%$r118058%_))))
    (define raw-table-update!
      (lambda (_%tab118029%_ _%key118030%_ _%update118031%_ _%default118032%_)
        (if (##fx< (&raw-table-free _%tab118029%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118029%_))
                    '4))
            (__raw-table-rehash! _%tab118029%_)
            '#!void)
        (__raw-table-update!
         _%tab118029%_
         _%key118030%_
         _%update118031%_
         _%default118032%_)))
    (define raw-table-update!/lock
      (lambda (_%tab117999%_ _%key118000%_ _%update118001%_ _%default118002%_)
        (let ((_%lock118004%_ (&raw-table-lock _%tab117999%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118009%_ ((_%spin118012%_ '0))
              (if (##fx= (##vector-cas! _%lock118004%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118004%_ '1 (current-thread))
                  (if (##fx< _%spin118012%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118009%_ (##fx+ _%spin118012%_ '1)))
                      (let ((_%owner118018%_ (##vector-ref _%lock118004%_ '1)))
                        (if (eq? _%owner118018%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118018%_)
                                (let () (##thread-yield!) (_%again118009%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118024%_
                 (raw-table-update!
                  _%tab117999%_
                  _%key118000%_
                  _%update118001%_
                  _%default118002%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118004%_ '1 '#f)
                (##vector-cas! _%lock118004%_ '0 '0 '1)))
            _%$r118024%_))))
    (define raw-table-delete!
      (lambda (_%tab117956%_ _%key117957%_)
        (let ((_%table117959%_ (&raw-table-table _%tab117956%_))
              (_%seed117960%_ (&raw-table-seed _%tab117956%_))
              (_%hash117961%_ (&raw-table-hash _%tab117956%_))
              (_%test117962%_ (&raw-table-test _%tab117956%_)))
          (let* ((_%h117964%_
                  (fxxor (_%hash117961%_ _%key117957%_) _%seed117960%_))
                 (_%size117967%_ (vector-length _%table117959%_))
                 (_%entries117970%_ (##fxquotient _%size117967%_ '2))
                 (_%start117973%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117964%_ _%entries117970%_)
                   '1)))
            (let _%loop117977%_ ((_%probe117980%_ _%start117973%_)
                                 (_%i117982%_ '1))
              (let ((_%k117985%_ (vector-ref _%table117959%_ _%probe117980%_)))
                (if (eq? _%k117985%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117985%_ (macro-deleted-obj))
                        (_%loop117977%_
                         (let ((_%next-probe117990%_
                                (fx+ _%start117973%_
                                     _%i117982%_
                                     (fx* _%i117982%_ _%i117982%_))))
                           (##fxmodulo _%next-probe117990%_ _%size117967%_))
                         (##fx+ _%i117982%_ '1))
                        (if (_%test117962%_ _%key117957%_ _%k117985%_)
                            (let ()
                              (vector-set!
                               _%table117959%_
                               _%probe117980%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117959%_
                               (##fx+ _%probe117980%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117956%_
                                  (##fx- (&raw-table-count _%tab117956%_)
                                         '1)))))
                            (_%loop117977%_
                             (let ((_%next-probe117996%_
                                    (fx+ _%start117973%_
                                         _%i117982%_
                                         (fx* _%i117982%_ _%i117982%_))))
                               (##fxmodulo
                                _%next-probe117996%_
                                _%size117967%_))
                             (##fx+ _%i117982%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab117928%_ _%key117929%_)
        (let ((_%lock117931%_ (&raw-table-lock _%tab117928%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117936%_ ((_%spin117939%_ '0))
              (if (##fx= (##vector-cas! _%lock117931%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117931%_ '1 (current-thread))
                  (if (##fx< _%spin117939%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117936%_ (##fx+ _%spin117939%_ '1)))
                      (let ((_%owner117945%_ (##vector-ref _%lock117931%_ '1)))
                        (if (eq? _%owner117945%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117945%_)
                                (let () (##thread-yield!) (_%again117936%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117951%_ (raw-table-delete! _%tab117928%_ _%key117929%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117931%_ '1 '#f)
                (##vector-cas! _%lock117931%_ '0 '0 '1)))
            _%$r117951%_))))
    (define raw-table-for-each
      (lambda (_%tab117912%_ _%proc117913%_)
        (let* ((_%table117915%_ (&raw-table-table _%tab117912%_))
               (_%size117917%_ (vector-length _%table117915%_)))
          (let _%loop117920%_ ((_%i117922%_ '0))
            (if (##fx< _%i117922%_ _%size117917%_)
                (begin
                  (let ((_%key117924%_
                         (vector-ref _%table117915%_ _%i117922%_)))
                    (if (if (eq? _%key117924%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key117924%_ (macro-deleted-obj))))
                        (let ((_%value117926%_
                               (vector-ref
                                _%table117915%_
                                (##fx+ _%i117922%_ '1))))
                          (_%proc117913%_ _%key117924%_ _%value117926%_))
                        '#!void))
                  (_%loop117920%_ (##fx+ _%i117922%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab117884%_ _%proc117885%_)
        (let ((_%lock117887%_ (&raw-table-lock _%tab117884%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117892%_ ((_%spin117895%_ '0))
              (if (##fx= (##vector-cas! _%lock117887%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117887%_ '1 (current-thread))
                  (if (##fx< _%spin117895%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117892%_ (##fx+ _%spin117895%_ '1)))
                      (let ((_%owner117901%_ (##vector-ref _%lock117887%_ '1)))
                        (if (eq? _%owner117901%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117901%_)
                                (let () (##thread-yield!) (_%again117892%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117907%_
                 (raw-table-for-each _%tab117884%_ _%proc117885%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117887%_ '1 '#f)
                (##vector-cas! _%lock117887%_ '0 '0 '1)))
            _%$r117907%_))))
    (define raw-table-copy
      (lambda (_%tab117880%_)
        (let ((_%new-tab117882%_ (##structure-copy _%tab117880%_)))
          (&raw-table-table-set!
           _%new-tab117882%_
           (vector-copy (&raw-table-table _%tab117880%_)))
          _%new-tab117882%_)))
    (define raw-table-copy/lock
      (lambda (_%tab117853%_)
        (let ((_%lock117855%_ (&raw-table-lock _%tab117853%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117860%_ ((_%spin117863%_ '0))
              (if (##fx= (##vector-cas! _%lock117855%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117855%_ '1 (current-thread))
                  (if (##fx< _%spin117863%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117860%_ (##fx+ _%spin117863%_ '1)))
                      (let ((_%owner117869%_ (##vector-ref _%lock117855%_ '1)))
                        (if (eq? _%owner117869%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117869%_)
                                (let () (##thread-yield!) (_%again117860%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117875%_ (raw-table-copy _%tab117853%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117855%_ '1 '#f)
                (##vector-cas! _%lock117855%_ '0 '0 '1)))
            _%$r117875%_))))
    (define raw-table-clear!
      (lambda (_%tab117851%_)
        (vector-fill! (&raw-table-table _%tab117851%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab117851%_ '0)
        (&raw-table-free-set!
         _%tab117851%_
         (##fxquotient (vector-length (&raw-table-table _%tab117851%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab117824%_)
        (let ((_%lock117826%_ (&raw-table-lock _%tab117824%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117831%_ ((_%spin117834%_ '0))
              (if (##fx= (##vector-cas! _%lock117826%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117826%_ '1 (current-thread))
                  (if (##fx< _%spin117834%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117831%_ (##fx+ _%spin117834%_ '1)))
                      (let ((_%owner117840%_ (##vector-ref _%lock117826%_ '1)))
                        (if (eq? _%owner117840%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117840%_)
                                (let () (##thread-yield!) (_%again117831%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117846%_ (raw-table-clear! _%tab117824%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117826%_ '1 '#f)
                (##vector-cas! _%lock117826%_ '0 '0 '1)))
            _%$r117846%_))))
    (define __raw-table-set!
      (lambda (_%tab117774%_ _%key117775%_ _%value117776%_)
        (let ((_%table117778%_ (&raw-table-table _%tab117774%_))
              (_%seed117779%_ (&raw-table-seed _%tab117774%_))
              (_%hash117780%_ (&raw-table-hash _%tab117774%_))
              (_%test117781%_ (&raw-table-test _%tab117774%_)))
          (let* ((_%h117783%_
                  (fxxor (_%hash117780%_ _%key117775%_) _%seed117779%_))
                 (_%size117786%_ (vector-length _%table117778%_))
                 (_%entries117789%_ (##fxquotient _%size117786%_ '2))
                 (_%start117792%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117783%_ _%entries117789%_)
                   '1)))
            (let _%loop117796%_ ((_%probe117799%_ _%start117792%_)
                                 (_%i117801%_ '1)
                                 (_%deleted117803%_ '#f))
              (let ((_%k117806%_ (vector-ref _%table117778%_ _%probe117799%_)))
                (if (eq? _%k117806%_ (macro-unused-obj))
                    (if _%deleted117803%_
                        (begin
                          (vector-set!
                           _%table117778%_
                           _%deleted117803%_
                           _%key117775%_)
                          (vector-set!
                           _%table117778%_
                           (##fx+ _%deleted117803%_ '1)
                           _%value117776%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117774%_
                              (##fx+ (&raw-table-count _%tab117774%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117778%_
                           _%probe117799%_
                           _%key117775%_)
                          (vector-set!
                           _%table117778%_
                           (##fx+ _%probe117799%_ '1)
                           _%value117776%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117774%_
                              (##fx- (&raw-table-free _%tab117774%_) '1))
                             (&raw-table-count-set!
                              _%tab117774%_
                              (##fx+ (&raw-table-count _%tab117774%_) '1))))))
                    (if (eq? _%k117806%_ (macro-deleted-obj))
                        (_%loop117796%_
                         (let ((_%next-probe117813%_
                                (fx+ _%start117792%_
                                     _%i117801%_
                                     (fx* _%i117801%_ _%i117801%_))))
                           (##fxmodulo _%next-probe117813%_ _%size117786%_))
                         (##fx+ _%i117801%_ '1)
                         (let ((_%$e117816%_ _%deleted117803%_))
                           (if _%$e117816%_ _%$e117816%_ _%probe117799%_)))
                        (if (_%test117781%_ _%key117775%_ _%k117806%_)
                            (let ()
                              (vector-set!
                               _%table117778%_
                               _%probe117799%_
                               _%key117775%_)
                              (vector-set!
                               _%table117778%_
                               (##fx+ _%probe117799%_ '1)
                               _%value117776%_))
                            (_%loop117796%_
                             (let ((_%next-probe117821%_
                                    (fx+ _%start117792%_
                                         _%i117801%_
                                         (fx* _%i117801%_ _%i117801%_))))
                               (##fxmodulo
                                _%next-probe117821%_
                                _%size117786%_))
                             (##fx+ _%i117801%_ '1)
                             _%deleted117803%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab117723%_ _%key117724%_ _%update117725%_ _%default117726%_)
        (let ((_%table117728%_ (&raw-table-table _%tab117723%_))
              (_%seed117729%_ (&raw-table-seed _%tab117723%_))
              (_%hash117730%_ (&raw-table-hash _%tab117723%_))
              (_%test117731%_ (&raw-table-test _%tab117723%_)))
          (let* ((_%h117733%_
                  (fxxor (_%hash117730%_ _%key117724%_) _%seed117729%_))
                 (_%size117736%_ (vector-length _%table117728%_))
                 (_%entries117739%_ (##fxquotient _%size117736%_ '2))
                 (_%start117742%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117733%_ _%entries117739%_)
                   '1)))
            (let _%loop117746%_ ((_%probe117749%_ _%start117742%_)
                                 (_%i117751%_ '1)
                                 (_%deleted117753%_ '#f))
              (let ((_%k117756%_ (vector-ref _%table117728%_ _%probe117749%_)))
                (if (eq? _%k117756%_ (macro-unused-obj))
                    (if _%deleted117753%_
                        (begin
                          (vector-set!
                           _%table117728%_
                           _%deleted117753%_
                           _%key117724%_)
                          (vector-set!
                           _%table117728%_
                           (##fx+ _%deleted117753%_ '1)
                           (_%update117725%_ _%default117726%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117723%_
                              (##fx+ (&raw-table-count _%tab117723%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117728%_
                           _%probe117749%_
                           _%key117724%_)
                          (vector-set!
                           _%table117728%_
                           (##fx+ _%probe117749%_ '1)
                           (_%update117725%_ _%default117726%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117723%_
                              (##fx- (&raw-table-free _%tab117723%_) '1))
                             (&raw-table-count-set!
                              _%tab117723%_
                              (##fx+ (&raw-table-count _%tab117723%_) '1))))))
                    (if (eq? _%k117756%_ (macro-deleted-obj))
                        (_%loop117746%_
                         (let ((_%next-probe117763%_
                                (fx+ _%start117742%_
                                     _%i117751%_
                                     (fx* _%i117751%_ _%i117751%_))))
                           (##fxmodulo _%next-probe117763%_ _%size117736%_))
                         (##fx+ _%i117751%_ '1)
                         (let ((_%$e117766%_ _%deleted117753%_))
                           (if _%$e117766%_ _%$e117766%_ _%probe117749%_)))
                        (if (_%test117731%_ _%key117724%_ _%k117756%_)
                            (let ()
                              (vector-set!
                               _%table117728%_
                               _%probe117749%_
                               _%key117724%_)
                              (vector-set!
                               _%table117728%_
                               (##fx+ _%probe117749%_ '1)
                               (_%update117725%_
                                (vector-ref
                                 _%table117728%_
                                 (##fx+ _%probe117749%_ '1)))))
                            (_%loop117746%_
                             (let ((_%next-probe117771%_
                                    (fx+ _%start117742%_
                                         _%i117751%_
                                         (fx* _%i117751%_ _%i117751%_))))
                               (##fxmodulo
                                _%next-probe117771%_
                                _%size117736%_))
                             (##fx+ _%i117751%_ '1)
                             _%deleted117753%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab117704%_)
        (let* ((_%old-table117706%_ (&raw-table-table _%tab117704%_))
               (_%old-size117708%_ (vector-length _%old-table117706%_))
               (_%new-size117710%_
                (if (##fx< (&raw-table-count _%tab117704%_)
                           (##fxquotient _%old-size117708%_ '4))
                    (vector-length _%old-table117706%_)
                    (##fx* '2 (vector-length _%old-table117706%_))))
               (_%new-table117712%_
                (##make-vector _%new-size117710%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab117704%_ _%new-table117712%_)
          (&raw-table-count-set! _%tab117704%_ '0)
          (&raw-table-free-set!
           _%tab117704%_
           (##fxquotient _%new-size117710%_ '2))
          (let _%lp117715%_ ((_%i117717%_ '0))
            (if (##fx< _%i117717%_ _%old-size117708%_)
                (begin
                  (let ((_%key117719%_
                         (vector-ref _%old-table117706%_ _%i117717%_)))
                    (if (if (eq? _%key117719%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key117719%_ (macro-deleted-obj))))
                        (let ((_%value117721%_
                               (vector-ref
                                _%old-table117706%_
                                (##fx+ _%i117717%_ '1))))
                          (__raw-table-set!
                           _%tab117704%_
                           _%key117719%_
                           _%value117721%_))
                        '#!void))
                  (_%lp117715%_ (##fx+ _%i117717%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj117696%_)
        (let ((_%t117698%_ (##type _%obj117696%_)))
          (if (##fx= (##fxand _%t117698%_ '1) '0)
              (fxand (##type-cast _%obj117696%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj117696%_)
                  (##symbol-hash _%obj117696%_)
                  (if (procedure? _%obj117696%_)
                      (procedure-hash _%obj117696%_)
                      (fxand (__eq-hash _%obj117696%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj117692%_)
        (let ((_%h117694%_
               (if (##closure? _%obj117692%_)
                   (__eq-hash _%obj117692%_)
                   (##type-cast _%obj117692%_ '0))))
          (fxand _%h117694%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj117689%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj117689%_)))
    (define eqv-hash
      (lambda (_%obj117679%_)
        (letrec ((_%combine117681%_
                  (lambda (_%a117686%_ _%b117687%_)
                    (fxand (##fx* (##fx+ _%a117686%_
                                         (fxarithmetic-shift-left
                                          _%b117687%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash117682%_
                  (lambda (_%obj117684%_)
                    (macro-number-dispatch
                     _%obj117684%_
                     (eq-hash _%obj117684%_)
                     (fxand _%obj117684%_ (macro-max-fixnum32))
                     (modulo _%obj117684%_ '331804481)
                     (_%combine117681%_
                      (_%hash117682%_ (macro-ratnum-numerator _%obj117684%_))
                      (_%hash117682%_
                       (macro-ratnum-denominator _%obj117684%_)))
                     (_%combine117681%_
                      (##u16vector-ref _%obj117684%_ '0)
                      (_%combine117681%_
                       (##u16vector-ref _%obj117684%_ '1)
                       (_%combine117681%_
                        (##u16vector-ref _%obj117684%_ '2)
                        (##u16vector-ref _%obj117684%_ '3))))
                     (_%combine117681%_
                      (_%hash117682%_ (macro-cpxnum-real _%obj117684%_))
                      (_%hash117682%_ (macro-cpxnum-imag _%obj117684%_)))))))
          (_%hash117682%_ _%obj117679%_))))
    (define symbolic?
      (lambda (_%obj117674%_)
        (let ((_%$e117676%_ (symbol? _%obj117674%_)))
          (if _%$e117676%_ _%$e117676%_ (keyword? _%obj117674%_)))))
    (define symbolic-hash
      (lambda (_%obj117672%_) (##symbol-hash _%obj117672%_)))
    (define string-hash
      (lambda (_%obj117670%_) (##string=?-hash _%obj117670%_)))
    (define immediate-hash
      (lambda (_%obj117668%_) (##type-cast _%obj117668%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint117650%_ _%seed117651%_)
        (make-raw-table__1 _%size-hint117650%_ eq-hash eq? _%seed117651%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint117657%_ '#f) (_%seed117659%_ '0))
          (make-eq-table__% _%size-hint117657%_ _%seed117659%_))))
    (define make-eq-table__1
      (lambda (_%size-hint117661%_)
        (let ((_%seed117663%_ '0))
          (make-eq-table__% _%size-hint117661%_ _%seed117663%_))))
    (define make-eq-table
      (lambda _g118271_
        (let ((_g118272_ (##length _g118271_)))
          (cond ((##fx= _g118272_ 0) (apply make-eq-table__0 _g118271_))
                ((##fx= _g118272_ 1) (apply make-eq-table__1 _g118271_))
                ((##fx= _g118272_ 2) (apply make-eq-table__% _g118271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g118271_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint117630%_ _%seed117632%_)
        (make-raw-table/lock__%
         _%size-hint117630%_
         eq-hash
         eq?
         _%seed117632%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint117638%_ '#f) (_%seed117640%_ '0))
          (make-eq-table/lock__% _%size-hint117638%_ _%seed117640%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint117642%_)
        (let ((_%seed117644%_ '0))
          (make-eq-table/lock__% _%size-hint117642%_ _%seed117644%_))))
    (define make-eq-table/lock
      (lambda _g118273_
        (let ((_g118274_ (##length _g118273_)))
          (cond ((##fx= _g118274_ 0) (apply make-eq-table/lock__0 _g118273_))
                ((##fx= _g118274_ 1) (apply make-eq-table/lock__1 _g118273_))
                ((##fx= _g118274_ 2) (apply make-eq-table/lock__% _g118273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g118273_))))))
    (define eq-table-ref
      (lambda (_%tab117583%_ _%key117584%_ _%default117585%_)
        (let ((_%table117587%_ (&raw-table-table _%tab117583%_))
              (_%seed117588%_ (&raw-table-seed _%tab117583%_)))
          (let* ((_%h117590%_ (fxxor (eq-hash _%key117584%_) _%seed117588%_))
                 (_%size117593%_ (vector-length _%table117587%_))
                 (_%entries117596%_ (##fxquotient _%size117593%_ '2))
                 (_%start117599%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117590%_ _%entries117596%_)
                   '1)))
            (let _%loop117603%_ ((_%probe117606%_ _%start117599%_)
                                 (_%i117608%_ '1)
                                 (_%deleted117610%_ '#f))
              (let ((_%k117613%_ (vector-ref _%table117587%_ _%probe117606%_)))
                (if (eq? _%k117613%_ (macro-unused-obj))
                    _%default117585%_
                    (if (eq? _%k117613%_ (macro-deleted-obj))
                        (_%loop117603%_
                         (let ((_%next-probe117618%_
                                (fx+ _%start117599%_
                                     _%i117608%_
                                     (fx* _%i117608%_ _%i117608%_))))
                           (##fxmodulo _%next-probe117618%_ _%size117593%_))
                         (##fx+ _%i117608%_ '1)
                         (let ((_%$e117621%_ _%deleted117610%_))
                           (if _%$e117621%_ _%$e117621%_ _%probe117606%_)))
                        (if (eq? _%key117584%_ _%k117613%_)
                            (vector-ref
                             _%table117587%_
                             (##fx+ _%probe117606%_ '1))
                            (_%loop117603%_
                             (let ((_%next-probe117626%_
                                    (fx+ _%start117599%_
                                         _%i117608%_
                                         (fx* _%i117608%_ _%i117608%_))))
                               (##fxmodulo
                                _%next-probe117626%_
                                _%size117593%_))
                             (##fx+ _%i117608%_ '1)
                             _%deleted117610%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab117554%_ _%key117555%_ _%default117556%_)
        (let ((_%lock117558%_ (&raw-table-lock _%tab117554%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117563%_ ((_%spin117566%_ '0))
              (if (##fx= (##vector-cas! _%lock117558%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117558%_ '1 (current-thread))
                  (if (##fx< _%spin117566%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117563%_ (##fx+ _%spin117566%_ '1)))
                      (let ((_%owner117572%_ (##vector-ref _%lock117558%_ '1)))
                        (if (eq? _%owner117572%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117572%_)
                                (let () (##thread-yield!) (_%again117563%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117578%_
                 (eq-table-ref _%tab117554%_ _%key117555%_ _%default117556%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117558%_ '1 '#f)
                (##vector-cas! _%lock117558%_ '0 '0 '1)))
            _%$r117578%_))))
    (define __eq-table-set!
      (lambda (_%tab117506%_ _%key117507%_ _%value117508%_)
        (let ((_%table117510%_ (&raw-table-table _%tab117506%_))
              (_%seed117511%_ (&raw-table-seed _%tab117506%_)))
          (let* ((_%h117513%_ (fxxor (eq-hash _%key117507%_) _%seed117511%_))
                 (_%size117516%_ (vector-length _%table117510%_))
                 (_%entries117519%_ (##fxquotient _%size117516%_ '2))
                 (_%start117522%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117513%_ _%entries117519%_)
                   '1)))
            (let _%loop117526%_ ((_%probe117529%_ _%start117522%_)
                                 (_%i117531%_ '1)
                                 (_%deleted117533%_ '#f))
              (let ((_%k117536%_ (vector-ref _%table117510%_ _%probe117529%_)))
                (if (eq? _%k117536%_ (macro-unused-obj))
                    (if _%deleted117533%_
                        (begin
                          (vector-set!
                           _%table117510%_
                           _%deleted117533%_
                           _%key117507%_)
                          (vector-set!
                           _%table117510%_
                           (##fx+ _%deleted117533%_ '1)
                           _%value117508%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117506%_
                              (##fx+ (&raw-table-count _%tab117506%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117510%_
                           _%probe117529%_
                           _%key117507%_)
                          (vector-set!
                           _%table117510%_
                           (##fx+ _%probe117529%_ '1)
                           _%value117508%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117506%_
                              (##fx- (&raw-table-free _%tab117506%_) '1))
                             (&raw-table-count-set!
                              _%tab117506%_
                              (##fx+ (&raw-table-count _%tab117506%_) '1))))))
                    (if (eq? _%k117536%_ (macro-deleted-obj))
                        (_%loop117526%_
                         (let ((_%next-probe117543%_
                                (fx+ _%start117522%_
                                     _%i117531%_
                                     (fx* _%i117531%_ _%i117531%_))))
                           (##fxmodulo _%next-probe117543%_ _%size117516%_))
                         (##fx+ _%i117531%_ '1)
                         (let ((_%$e117546%_ _%deleted117533%_))
                           (if _%$e117546%_ _%$e117546%_ _%probe117529%_)))
                        (if (eq? _%key117507%_ _%k117536%_)
                            (let ()
                              (vector-set!
                               _%table117510%_
                               _%probe117529%_
                               _%key117507%_)
                              (vector-set!
                               _%table117510%_
                               (##fx+ _%probe117529%_ '1)
                               _%value117508%_))
                            (_%loop117526%_
                             (let ((_%next-probe117551%_
                                    (fx+ _%start117522%_
                                         _%i117531%_
                                         (fx* _%i117531%_ _%i117531%_))))
                               (##fxmodulo
                                _%next-probe117551%_
                                _%size117516%_))
                             (##fx+ _%i117531%_ '1)
                             _%deleted117533%_))))))))))
    (define eq-table-set!
      (lambda (_%tab117502%_ _%key117503%_ _%value117504%_)
        (if (##fx< (&raw-table-free _%tab117502%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117502%_))
                    '4))
            (__raw-table-rehash! _%tab117502%_)
            '#!void)
        (__eq-table-set! _%tab117502%_ _%key117503%_ _%value117504%_)))
    (define eq-table-set!/lock
      (lambda (_%tab117472%_ _%key117473%_ _%value117474%_)
        (let ((_%lock117477%_ (&raw-table-lock _%tab117472%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117482%_ ((_%spin117485%_ '0))
              (if (##fx= (##vector-cas! _%lock117477%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117477%_ '1 (current-thread))
                  (if (##fx< _%spin117485%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117482%_ (##fx+ _%spin117485%_ '1)))
                      (let ((_%owner117491%_ (##vector-ref _%lock117477%_ '1)))
                        (if (eq? _%owner117491%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117491%_)
                                (let () (##thread-yield!) (_%again117482%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117497%_
                 (eq-table-set! _%tab117472%_ _%key117473%_ _%value117474%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117477%_ '1 '#f)
                (##vector-cas! _%lock117477%_ '0 '0 '1)))
            _%$r117497%_))))
    (define __eq-table-update!
      (lambda (_%tab117423%_
               _%key117424%_
               _%eq-table-update!117425%_
               _%default117426%_)
        (let ((_%table117428%_ (&raw-table-table _%tab117423%_))
              (_%seed117429%_ (&raw-table-seed _%tab117423%_)))
          (let* ((_%h117431%_ (fxxor (eq-hash _%key117424%_) _%seed117429%_))
                 (_%size117434%_ (vector-length _%table117428%_))
                 (_%entries117437%_ (##fxquotient _%size117434%_ '2))
                 (_%start117440%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117431%_ _%entries117437%_)
                   '1)))
            (let _%loop117444%_ ((_%probe117447%_ _%start117440%_)
                                 (_%i117449%_ '1)
                                 (_%deleted117451%_ '#f))
              (let ((_%k117454%_ (vector-ref _%table117428%_ _%probe117447%_)))
                (if (eq? _%k117454%_ (macro-unused-obj))
                    (if _%deleted117451%_
                        (begin
                          (vector-set!
                           _%table117428%_
                           _%deleted117451%_
                           _%key117424%_)
                          (vector-set!
                           _%table117428%_
                           (##fx+ _%deleted117451%_ '1)
                           (_%eq-table-update!117425%_ _%default117426%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117423%_
                              (##fx+ (&raw-table-count _%tab117423%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117428%_
                           _%probe117447%_
                           _%key117424%_)
                          (vector-set!
                           _%table117428%_
                           (##fx+ _%probe117447%_ '1)
                           (_%eq-table-update!117425%_ _%default117426%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117423%_
                              (##fx- (&raw-table-free _%tab117423%_) '1))
                             (&raw-table-count-set!
                              _%tab117423%_
                              (##fx+ (&raw-table-count _%tab117423%_) '1))))))
                    (if (eq? _%k117454%_ (macro-deleted-obj))
                        (_%loop117444%_
                         (let ((_%next-probe117461%_
                                (fx+ _%start117440%_
                                     _%i117449%_
                                     (fx* _%i117449%_ _%i117449%_))))
                           (##fxmodulo _%next-probe117461%_ _%size117434%_))
                         (##fx+ _%i117449%_ '1)
                         (let ((_%$e117464%_ _%deleted117451%_))
                           (if _%$e117464%_ _%$e117464%_ _%probe117447%_)))
                        (if (eq? _%key117424%_ _%k117454%_)
                            (let ()
                              (vector-set!
                               _%table117428%_
                               _%probe117447%_
                               _%key117424%_)
                              (vector-set!
                               _%table117428%_
                               (##fx+ _%probe117447%_ '1)
                               (_%eq-table-update!117425%_
                                (vector-ref
                                 _%table117428%_
                                 (##fx+ _%probe117447%_ '1)))))
                            (_%loop117444%_
                             (let ((_%next-probe117469%_
                                    (fx+ _%start117440%_
                                         _%i117449%_
                                         (fx* _%i117449%_ _%i117449%_))))
                               (##fxmodulo
                                _%next-probe117469%_
                                _%size117434%_))
                             (##fx+ _%i117449%_ '1)
                             _%deleted117451%_))))))))))
    (define eq-table-update!
      (lambda (_%tab117418%_
               _%key117419%_
               _%eq-table-update!117420%_
               _%default117421%_)
        (if (##fx< (&raw-table-free _%tab117418%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117418%_))
                    '4))
            (__raw-table-rehash! _%tab117418%_)
            '#!void)
        (__eq-table-update!
         _%tab117418%_
         _%key117419%_
         _%eq-table-update!117420%_
         _%default117421%_)))
    (define eq-table-update!/lock
      (lambda (_%tab117387%_
               _%key117388%_
               _%eq-table-update!117389%_
               _%default117390%_)
        (let ((_%lock117393%_ (&raw-table-lock _%tab117387%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117398%_ ((_%spin117401%_ '0))
              (if (##fx= (##vector-cas! _%lock117393%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117393%_ '1 (current-thread))
                  (if (##fx< _%spin117401%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117398%_ (##fx+ _%spin117401%_ '1)))
                      (let ((_%owner117407%_ (##vector-ref _%lock117393%_ '1)))
                        (if (eq? _%owner117407%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117407%_)
                                (let () (##thread-yield!) (_%again117398%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117413%_
                 (_%eq-table-update!117389%_
                  _%tab117387%_
                  _%key117388%_
                  _%eq-table-update!117389%_
                  _%default117390%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117393%_ '1 '#f)
                (##vector-cas! _%lock117393%_ '0 '0 '1)))
            _%$r117413%_))))
    (define eq-table-delete!
      (lambda (_%tab117344%_ _%key117345%_)
        (let ((_%table117347%_ (&raw-table-table _%tab117344%_))
              (_%seed117349%_ (&raw-table-seed _%tab117344%_)))
          (let* ((_%h117352%_ (fxxor (eq-hash _%key117345%_) _%seed117349%_))
                 (_%size117355%_ (vector-length _%table117347%_))
                 (_%entries117358%_ (##fxquotient _%size117355%_ '2))
                 (_%start117361%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117352%_ _%entries117358%_)
                   '1)))
            (let _%loop117365%_ ((_%probe117368%_ _%start117361%_)
                                 (_%i117370%_ '1))
              (let ((_%k117373%_ (vector-ref _%table117347%_ _%probe117368%_)))
                (if (eq? _%k117373%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117373%_ (macro-deleted-obj))
                        (_%loop117365%_
                         (let ((_%next-probe117378%_
                                (fx+ _%start117361%_
                                     _%i117370%_
                                     (fx* _%i117370%_ _%i117370%_))))
                           (##fxmodulo _%next-probe117378%_ _%size117355%_))
                         (##fx+ _%i117370%_ '1))
                        (if (eq? _%key117345%_ _%k117373%_)
                            (let ()
                              (vector-set!
                               _%table117347%_
                               _%probe117368%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117347%_
                               (##fx+ _%probe117368%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117344%_
                                  (##fx- (&raw-table-count _%tab117344%_)
                                         '1)))))
                            (_%loop117365%_
                             (let ((_%next-probe117384%_
                                    (fx+ _%start117361%_
                                         _%i117370%_
                                         (fx* _%i117370%_ _%i117370%_))))
                               (##fxmodulo
                                _%next-probe117384%_
                                _%size117355%_))
                             (##fx+ _%i117370%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab117314%_ _%key117316%_)
        (let ((_%lock117319%_ (&raw-table-lock _%tab117314%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117324%_ ((_%spin117327%_ '0))
              (if (##fx= (##vector-cas! _%lock117319%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117319%_ '1 (current-thread))
                  (if (##fx< _%spin117327%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117324%_ (##fx+ _%spin117327%_ '1)))
                      (let ((_%owner117333%_ (##vector-ref _%lock117319%_ '1)))
                        (if (eq? _%owner117333%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117333%_)
                                (let () (##thread-yield!) (_%again117324%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117339%_ (eq-table-delete! _%tab117314%_ _%key117316%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117319%_ '1 '#f)
                (##vector-cas! _%lock117319%_ '0 '0 '1)))
            _%$r117339%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint117296%_ _%seed117297%_)
        (make-raw-table__1 _%size-hint117296%_ eqv-hash eqv? _%seed117297%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint117303%_ '#f) (_%seed117305%_ '0))
          (make-eqv-table__% _%size-hint117303%_ _%seed117305%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint117307%_)
        (let ((_%seed117309%_ '0))
          (make-eqv-table__% _%size-hint117307%_ _%seed117309%_))))
    (define make-eqv-table
      (lambda _g118275_
        (let ((_g118276_ (##length _g118275_)))
          (cond ((##fx= _g118276_ 0) (apply make-eqv-table__0 _g118275_))
                ((##fx= _g118276_ 1) (apply make-eqv-table__1 _g118275_))
                ((##fx= _g118276_ 2) (apply make-eqv-table__% _g118275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g118275_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint117276%_ _%seed117278%_)
        (make-raw-table/lock__%
         _%size-hint117276%_
         eqv-hash
         eqv?
         _%seed117278%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint117284%_ '#f) (_%seed117286%_ '0))
          (make-eqv-table/lock__% _%size-hint117284%_ _%seed117286%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint117288%_)
        (let ((_%seed117290%_ '0))
          (make-eqv-table/lock__% _%size-hint117288%_ _%seed117290%_))))
    (define make-eqv-table/lock
      (lambda _g118277_
        (let ((_g118278_ (##length _g118277_)))
          (cond ((##fx= _g118278_ 0) (apply make-eqv-table/lock__0 _g118277_))
                ((##fx= _g118278_ 1) (apply make-eqv-table/lock__1 _g118277_))
                ((##fx= _g118278_ 2) (apply make-eqv-table/lock__% _g118277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g118277_))))))
    (define eqv-table-ref
      (lambda (_%tab117229%_ _%key117230%_ _%default117231%_)
        (let ((_%table117233%_ (&raw-table-table _%tab117229%_))
              (_%seed117234%_ (&raw-table-seed _%tab117229%_)))
          (let* ((_%h117236%_ (fxxor (eqv-hash _%key117230%_) _%seed117234%_))
                 (_%size117239%_ (vector-length _%table117233%_))
                 (_%entries117242%_ (##fxquotient _%size117239%_ '2))
                 (_%start117245%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117236%_ _%entries117242%_)
                   '1)))
            (let _%loop117249%_ ((_%probe117252%_ _%start117245%_)
                                 (_%i117254%_ '1)
                                 (_%deleted117256%_ '#f))
              (let ((_%k117259%_ (vector-ref _%table117233%_ _%probe117252%_)))
                (if (eq? _%k117259%_ (macro-unused-obj))
                    _%default117231%_
                    (if (eq? _%k117259%_ (macro-deleted-obj))
                        (_%loop117249%_
                         (let ((_%next-probe117264%_
                                (fx+ _%start117245%_
                                     _%i117254%_
                                     (fx* _%i117254%_ _%i117254%_))))
                           (##fxmodulo _%next-probe117264%_ _%size117239%_))
                         (##fx+ _%i117254%_ '1)
                         (let ((_%$e117267%_ _%deleted117256%_))
                           (if _%$e117267%_ _%$e117267%_ _%probe117252%_)))
                        (if (eqv? _%key117230%_ _%k117259%_)
                            (vector-ref
                             _%table117233%_
                             (##fx+ _%probe117252%_ '1))
                            (_%loop117249%_
                             (let ((_%next-probe117272%_
                                    (fx+ _%start117245%_
                                         _%i117254%_
                                         (fx* _%i117254%_ _%i117254%_))))
                               (##fxmodulo
                                _%next-probe117272%_
                                _%size117239%_))
                             (##fx+ _%i117254%_ '1)
                             _%deleted117256%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab117200%_ _%key117201%_ _%default117202%_)
        (let ((_%lock117204%_ (&raw-table-lock _%tab117200%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117209%_ ((_%spin117212%_ '0))
              (if (##fx= (##vector-cas! _%lock117204%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117204%_ '1 (current-thread))
                  (if (##fx< _%spin117212%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117209%_ (##fx+ _%spin117212%_ '1)))
                      (let ((_%owner117218%_ (##vector-ref _%lock117204%_ '1)))
                        (if (eq? _%owner117218%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117218%_)
                                (let () (##thread-yield!) (_%again117209%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117224%_
                 (eqv-table-ref
                  _%tab117200%_
                  _%key117201%_
                  _%default117202%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117204%_ '1 '#f)
                (##vector-cas! _%lock117204%_ '0 '0 '1)))
            _%$r117224%_))))
    (define __eqv-table-set!
      (lambda (_%tab117152%_ _%key117153%_ _%value117154%_)
        (let ((_%table117156%_ (&raw-table-table _%tab117152%_))
              (_%seed117157%_ (&raw-table-seed _%tab117152%_)))
          (let* ((_%h117159%_ (fxxor (eqv-hash _%key117153%_) _%seed117157%_))
                 (_%size117162%_ (vector-length _%table117156%_))
                 (_%entries117165%_ (##fxquotient _%size117162%_ '2))
                 (_%start117168%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117159%_ _%entries117165%_)
                   '1)))
            (let _%loop117172%_ ((_%probe117175%_ _%start117168%_)
                                 (_%i117177%_ '1)
                                 (_%deleted117179%_ '#f))
              (let ((_%k117182%_ (vector-ref _%table117156%_ _%probe117175%_)))
                (if (eq? _%k117182%_ (macro-unused-obj))
                    (if _%deleted117179%_
                        (begin
                          (vector-set!
                           _%table117156%_
                           _%deleted117179%_
                           _%key117153%_)
                          (vector-set!
                           _%table117156%_
                           (##fx+ _%deleted117179%_ '1)
                           _%value117154%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117152%_
                              (##fx+ (&raw-table-count _%tab117152%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117156%_
                           _%probe117175%_
                           _%key117153%_)
                          (vector-set!
                           _%table117156%_
                           (##fx+ _%probe117175%_ '1)
                           _%value117154%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117152%_
                              (##fx- (&raw-table-free _%tab117152%_) '1))
                             (&raw-table-count-set!
                              _%tab117152%_
                              (##fx+ (&raw-table-count _%tab117152%_) '1))))))
                    (if (eq? _%k117182%_ (macro-deleted-obj))
                        (_%loop117172%_
                         (let ((_%next-probe117189%_
                                (fx+ _%start117168%_
                                     _%i117177%_
                                     (fx* _%i117177%_ _%i117177%_))))
                           (##fxmodulo _%next-probe117189%_ _%size117162%_))
                         (##fx+ _%i117177%_ '1)
                         (let ((_%$e117192%_ _%deleted117179%_))
                           (if _%$e117192%_ _%$e117192%_ _%probe117175%_)))
                        (if (eqv? _%key117153%_ _%k117182%_)
                            (let ()
                              (vector-set!
                               _%table117156%_
                               _%probe117175%_
                               _%key117153%_)
                              (vector-set!
                               _%table117156%_
                               (##fx+ _%probe117175%_ '1)
                               _%value117154%_))
                            (_%loop117172%_
                             (let ((_%next-probe117197%_
                                    (fx+ _%start117168%_
                                         _%i117177%_
                                         (fx* _%i117177%_ _%i117177%_))))
                               (##fxmodulo
                                _%next-probe117197%_
                                _%size117162%_))
                             (##fx+ _%i117177%_ '1)
                             _%deleted117179%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab117148%_ _%key117149%_ _%value117150%_)
        (if (##fx< (&raw-table-free _%tab117148%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117148%_))
                    '4))
            (__raw-table-rehash! _%tab117148%_)
            '#!void)
        (__eqv-table-set! _%tab117148%_ _%key117149%_ _%value117150%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab117118%_ _%key117119%_ _%value117120%_)
        (let ((_%lock117123%_ (&raw-table-lock _%tab117118%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117128%_ ((_%spin117131%_ '0))
              (if (##fx= (##vector-cas! _%lock117123%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117123%_ '1 (current-thread))
                  (if (##fx< _%spin117131%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117128%_ (##fx+ _%spin117131%_ '1)))
                      (let ((_%owner117137%_ (##vector-ref _%lock117123%_ '1)))
                        (if (eq? _%owner117137%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117137%_)
                                (let () (##thread-yield!) (_%again117128%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117143%_
                 (eqv-table-set! _%tab117118%_ _%key117119%_ _%value117120%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117123%_ '1 '#f)
                (##vector-cas! _%lock117123%_ '0 '0 '1)))
            _%$r117143%_))))
    (define __eqv-table-update!
      (lambda (_%tab117069%_
               _%key117070%_
               _%eqv-table-update!117071%_
               _%default117072%_)
        (let ((_%table117074%_ (&raw-table-table _%tab117069%_))
              (_%seed117075%_ (&raw-table-seed _%tab117069%_)))
          (let* ((_%h117077%_ (fxxor (eqv-hash _%key117070%_) _%seed117075%_))
                 (_%size117080%_ (vector-length _%table117074%_))
                 (_%entries117083%_ (##fxquotient _%size117080%_ '2))
                 (_%start117086%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117077%_ _%entries117083%_)
                   '1)))
            (let _%loop117090%_ ((_%probe117093%_ _%start117086%_)
                                 (_%i117095%_ '1)
                                 (_%deleted117097%_ '#f))
              (let ((_%k117100%_ (vector-ref _%table117074%_ _%probe117093%_)))
                (if (eq? _%k117100%_ (macro-unused-obj))
                    (if _%deleted117097%_
                        (begin
                          (vector-set!
                           _%table117074%_
                           _%deleted117097%_
                           _%key117070%_)
                          (vector-set!
                           _%table117074%_
                           (##fx+ _%deleted117097%_ '1)
                           (_%eqv-table-update!117071%_ _%default117072%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117069%_
                              (##fx+ (&raw-table-count _%tab117069%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117074%_
                           _%probe117093%_
                           _%key117070%_)
                          (vector-set!
                           _%table117074%_
                           (##fx+ _%probe117093%_ '1)
                           (_%eqv-table-update!117071%_ _%default117072%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117069%_
                              (##fx- (&raw-table-free _%tab117069%_) '1))
                             (&raw-table-count-set!
                              _%tab117069%_
                              (##fx+ (&raw-table-count _%tab117069%_) '1))))))
                    (if (eq? _%k117100%_ (macro-deleted-obj))
                        (_%loop117090%_
                         (let ((_%next-probe117107%_
                                (fx+ _%start117086%_
                                     _%i117095%_
                                     (fx* _%i117095%_ _%i117095%_))))
                           (##fxmodulo _%next-probe117107%_ _%size117080%_))
                         (##fx+ _%i117095%_ '1)
                         (let ((_%$e117110%_ _%deleted117097%_))
                           (if _%$e117110%_ _%$e117110%_ _%probe117093%_)))
                        (if (eqv? _%key117070%_ _%k117100%_)
                            (let ()
                              (vector-set!
                               _%table117074%_
                               _%probe117093%_
                               _%key117070%_)
                              (vector-set!
                               _%table117074%_
                               (##fx+ _%probe117093%_ '1)
                               (_%eqv-table-update!117071%_
                                (vector-ref
                                 _%table117074%_
                                 (##fx+ _%probe117093%_ '1)))))
                            (_%loop117090%_
                             (let ((_%next-probe117115%_
                                    (fx+ _%start117086%_
                                         _%i117095%_
                                         (fx* _%i117095%_ _%i117095%_))))
                               (##fxmodulo
                                _%next-probe117115%_
                                _%size117080%_))
                             (##fx+ _%i117095%_ '1)
                             _%deleted117097%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab117064%_
               _%key117065%_
               _%eqv-table-update!117066%_
               _%default117067%_)
        (if (##fx< (&raw-table-free _%tab117064%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117064%_))
                    '4))
            (__raw-table-rehash! _%tab117064%_)
            '#!void)
        (__eqv-table-update!
         _%tab117064%_
         _%key117065%_
         _%eqv-table-update!117066%_
         _%default117067%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab117033%_
               _%key117034%_
               _%eqv-table-update!117035%_
               _%default117036%_)
        (let ((_%lock117039%_ (&raw-table-lock _%tab117033%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117044%_ ((_%spin117047%_ '0))
              (if (##fx= (##vector-cas! _%lock117039%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117039%_ '1 (current-thread))
                  (if (##fx< _%spin117047%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117044%_ (##fx+ _%spin117047%_ '1)))
                      (let ((_%owner117053%_ (##vector-ref _%lock117039%_ '1)))
                        (if (eq? _%owner117053%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117053%_)
                                (let () (##thread-yield!) (_%again117044%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117059%_
                 (_%eqv-table-update!117035%_
                  _%tab117033%_
                  _%key117034%_
                  _%eqv-table-update!117035%_
                  _%default117036%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117039%_ '1 '#f)
                (##vector-cas! _%lock117039%_ '0 '0 '1)))
            _%$r117059%_))))
    (define eqv-table-delete!
      (lambda (_%tab116990%_ _%key116991%_)
        (let ((_%table116993%_ (&raw-table-table _%tab116990%_))
              (_%seed116995%_ (&raw-table-seed _%tab116990%_)))
          (let* ((_%h116998%_ (fxxor (eqv-hash _%key116991%_) _%seed116995%_))
                 (_%size117001%_ (vector-length _%table116993%_))
                 (_%entries117004%_ (##fxquotient _%size117001%_ '2))
                 (_%start117007%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116998%_ _%entries117004%_)
                   '1)))
            (let _%loop117011%_ ((_%probe117014%_ _%start117007%_)
                                 (_%i117016%_ '1))
              (let ((_%k117019%_ (vector-ref _%table116993%_ _%probe117014%_)))
                (if (eq? _%k117019%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117019%_ (macro-deleted-obj))
                        (_%loop117011%_
                         (let ((_%next-probe117024%_
                                (fx+ _%start117007%_
                                     _%i117016%_
                                     (fx* _%i117016%_ _%i117016%_))))
                           (##fxmodulo _%next-probe117024%_ _%size117001%_))
                         (##fx+ _%i117016%_ '1))
                        (if (eqv? _%key116991%_ _%k117019%_)
                            (let ()
                              (vector-set!
                               _%table116993%_
                               _%probe117014%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116993%_
                               (##fx+ _%probe117014%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116990%_
                                  (##fx- (&raw-table-count _%tab116990%_)
                                         '1)))))
                            (_%loop117011%_
                             (let ((_%next-probe117030%_
                                    (fx+ _%start117007%_
                                         _%i117016%_
                                         (fx* _%i117016%_ _%i117016%_))))
                               (##fxmodulo
                                _%next-probe117030%_
                                _%size117001%_))
                             (##fx+ _%i117016%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab116960%_ _%key116962%_)
        (let ((_%lock116965%_ (&raw-table-lock _%tab116960%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116970%_ ((_%spin116973%_ '0))
              (if (##fx= (##vector-cas! _%lock116965%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116965%_ '1 (current-thread))
                  (if (##fx< _%spin116973%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116970%_ (##fx+ _%spin116973%_ '1)))
                      (let ((_%owner116979%_ (##vector-ref _%lock116965%_ '1)))
                        (if (eq? _%owner116979%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116979%_)
                                (let () (##thread-yield!) (_%again116970%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116985%_ (eqv-table-delete! _%tab116960%_ _%key116962%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116965%_ '1 '#f)
                (##vector-cas! _%lock116965%_ '0 '0 '1)))
            _%$r116985%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint116942%_ _%seed116943%_)
        (make-raw-table__1
         _%size-hint116942%_
         symbolic-hash
         eq?
         _%seed116943%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint116949%_ '#f) (_%seed116951%_ '0))
          (make-symbolic-table__% _%size-hint116949%_ _%seed116951%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint116953%_)
        (let ((_%seed116955%_ '0))
          (make-symbolic-table__% _%size-hint116953%_ _%seed116955%_))))
    (define make-symbolic-table
      (lambda _g118279_
        (let ((_g118280_ (##length _g118279_)))
          (cond ((##fx= _g118280_ 0) (apply make-symbolic-table__0 _g118279_))
                ((##fx= _g118280_ 1) (apply make-symbolic-table__1 _g118279_))
                ((##fx= _g118280_ 2) (apply make-symbolic-table__% _g118279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g118279_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint116922%_ _%seed116924%_)
        (make-raw-table/lock__%
         _%size-hint116922%_
         symbolic-hash
         eq?
         _%seed116924%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint116930%_ '#f) (_%seed116932%_ '0))
          (make-symbolic-table/lock__% _%size-hint116930%_ _%seed116932%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint116934%_)
        (let ((_%seed116936%_ '0))
          (make-symbolic-table/lock__% _%size-hint116934%_ _%seed116936%_))))
    (define make-symbolic-table/lock
      (lambda _g118281_
        (let ((_g118282_ (##length _g118281_)))
          (cond ((##fx= _g118282_ 0)
                 (apply make-symbolic-table/lock__0 _g118281_))
                ((##fx= _g118282_ 1)
                 (apply make-symbolic-table/lock__1 _g118281_))
                ((##fx= _g118282_ 2)
                 (apply make-symbolic-table/lock__% _g118281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g118281_))))))
    (define symbolic-table-ref
      (lambda (_%tab116875%_ _%key116876%_ _%default116877%_)
        (let ((_%table116879%_ (&raw-table-table _%tab116875%_))
              (_%seed116880%_ (&raw-table-seed _%tab116875%_)))
          (let* ((_%h116882%_
                  (fxxor (##symbol-hash _%key116876%_) _%seed116880%_))
                 (_%size116885%_ (vector-length _%table116879%_))
                 (_%entries116888%_ (##fxquotient _%size116885%_ '2))
                 (_%start116891%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116882%_ _%entries116888%_)
                   '1)))
            (let _%loop116895%_ ((_%probe116898%_ _%start116891%_)
                                 (_%i116900%_ '1)
                                 (_%deleted116902%_ '#f))
              (let ((_%k116905%_ (vector-ref _%table116879%_ _%probe116898%_)))
                (if (eq? _%k116905%_ (macro-unused-obj))
                    _%default116877%_
                    (if (eq? _%k116905%_ (macro-deleted-obj))
                        (_%loop116895%_
                         (let ((_%next-probe116910%_
                                (fx+ _%start116891%_
                                     _%i116900%_
                                     (fx* _%i116900%_ _%i116900%_))))
                           (##fxmodulo _%next-probe116910%_ _%size116885%_))
                         (##fx+ _%i116900%_ '1)
                         (let ((_%$e116913%_ _%deleted116902%_))
                           (if _%$e116913%_ _%$e116913%_ _%probe116898%_)))
                        (if (eq? _%key116876%_ _%k116905%_)
                            (vector-ref
                             _%table116879%_
                             (##fx+ _%probe116898%_ '1))
                            (_%loop116895%_
                             (let ((_%next-probe116918%_
                                    (fx+ _%start116891%_
                                         _%i116900%_
                                         (fx* _%i116900%_ _%i116900%_))))
                               (##fxmodulo
                                _%next-probe116918%_
                                _%size116885%_))
                             (##fx+ _%i116900%_ '1)
                             _%deleted116902%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab116846%_ _%key116847%_ _%default116848%_)
        (let ((_%lock116850%_ (&raw-table-lock _%tab116846%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116855%_ ((_%spin116858%_ '0))
              (if (##fx= (##vector-cas! _%lock116850%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116850%_ '1 (current-thread))
                  (if (##fx< _%spin116858%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116855%_ (##fx+ _%spin116858%_ '1)))
                      (let ((_%owner116864%_ (##vector-ref _%lock116850%_ '1)))
                        (if (eq? _%owner116864%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116864%_)
                                (let () (##thread-yield!) (_%again116855%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116870%_
                 (symbolic-table-ref
                  _%tab116846%_
                  _%key116847%_
                  _%default116848%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116850%_ '1 '#f)
                (##vector-cas! _%lock116850%_ '0 '0 '1)))
            _%$r116870%_))))
    (define __symbolic-table-set!
      (lambda (_%tab116798%_ _%key116799%_ _%value116800%_)
        (let ((_%table116802%_ (&raw-table-table _%tab116798%_))
              (_%seed116803%_ (&raw-table-seed _%tab116798%_)))
          (let* ((_%h116805%_
                  (fxxor (##symbol-hash _%key116799%_) _%seed116803%_))
                 (_%size116808%_ (vector-length _%table116802%_))
                 (_%entries116811%_ (##fxquotient _%size116808%_ '2))
                 (_%start116814%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116805%_ _%entries116811%_)
                   '1)))
            (let _%loop116818%_ ((_%probe116821%_ _%start116814%_)
                                 (_%i116823%_ '1)
                                 (_%deleted116825%_ '#f))
              (let ((_%k116828%_ (vector-ref _%table116802%_ _%probe116821%_)))
                (if (eq? _%k116828%_ (macro-unused-obj))
                    (if _%deleted116825%_
                        (begin
                          (vector-set!
                           _%table116802%_
                           _%deleted116825%_
                           _%key116799%_)
                          (vector-set!
                           _%table116802%_
                           (##fx+ _%deleted116825%_ '1)
                           _%value116800%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116798%_
                              (##fx+ (&raw-table-count _%tab116798%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116802%_
                           _%probe116821%_
                           _%key116799%_)
                          (vector-set!
                           _%table116802%_
                           (##fx+ _%probe116821%_ '1)
                           _%value116800%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116798%_
                              (##fx- (&raw-table-free _%tab116798%_) '1))
                             (&raw-table-count-set!
                              _%tab116798%_
                              (##fx+ (&raw-table-count _%tab116798%_) '1))))))
                    (if (eq? _%k116828%_ (macro-deleted-obj))
                        (_%loop116818%_
                         (let ((_%next-probe116835%_
                                (fx+ _%start116814%_
                                     _%i116823%_
                                     (fx* _%i116823%_ _%i116823%_))))
                           (##fxmodulo _%next-probe116835%_ _%size116808%_))
                         (##fx+ _%i116823%_ '1)
                         (let ((_%$e116838%_ _%deleted116825%_))
                           (if _%$e116838%_ _%$e116838%_ _%probe116821%_)))
                        (if (eq? _%key116799%_ _%k116828%_)
                            (let ()
                              (vector-set!
                               _%table116802%_
                               _%probe116821%_
                               _%key116799%_)
                              (vector-set!
                               _%table116802%_
                               (##fx+ _%probe116821%_ '1)
                               _%value116800%_))
                            (_%loop116818%_
                             (let ((_%next-probe116843%_
                                    (fx+ _%start116814%_
                                         _%i116823%_
                                         (fx* _%i116823%_ _%i116823%_))))
                               (##fxmodulo
                                _%next-probe116843%_
                                _%size116808%_))
                             (##fx+ _%i116823%_ '1)
                             _%deleted116825%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab116794%_ _%key116795%_ _%value116796%_)
        (if (##fx< (&raw-table-free _%tab116794%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116794%_))
                    '4))
            (__raw-table-rehash! _%tab116794%_)
            '#!void)
        (__symbolic-table-set! _%tab116794%_ _%key116795%_ _%value116796%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab116764%_ _%key116765%_ _%value116766%_)
        (let ((_%lock116769%_ (&raw-table-lock _%tab116764%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116774%_ ((_%spin116777%_ '0))
              (if (##fx= (##vector-cas! _%lock116769%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116769%_ '1 (current-thread))
                  (if (##fx< _%spin116777%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116774%_ (##fx+ _%spin116777%_ '1)))
                      (let ((_%owner116783%_ (##vector-ref _%lock116769%_ '1)))
                        (if (eq? _%owner116783%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116783%_)
                                (let () (##thread-yield!) (_%again116774%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116789%_
                 (symbolic-table-set!
                  _%tab116764%_
                  _%key116765%_
                  _%value116766%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116769%_ '1 '#f)
                (##vector-cas! _%lock116769%_ '0 '0 '1)))
            _%$r116789%_))))
    (define __symbolic-table-update!
      (lambda (_%tab116715%_
               _%key116716%_
               _%symbolic-table-update!116717%_
               _%default116718%_)
        (let ((_%table116720%_ (&raw-table-table _%tab116715%_))
              (_%seed116721%_ (&raw-table-seed _%tab116715%_)))
          (let* ((_%h116723%_
                  (fxxor (##symbol-hash _%key116716%_) _%seed116721%_))
                 (_%size116726%_ (vector-length _%table116720%_))
                 (_%entries116729%_ (##fxquotient _%size116726%_ '2))
                 (_%start116732%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116723%_ _%entries116729%_)
                   '1)))
            (let _%loop116736%_ ((_%probe116739%_ _%start116732%_)
                                 (_%i116741%_ '1)
                                 (_%deleted116743%_ '#f))
              (let ((_%k116746%_ (vector-ref _%table116720%_ _%probe116739%_)))
                (if (eq? _%k116746%_ (macro-unused-obj))
                    (if _%deleted116743%_
                        (begin
                          (vector-set!
                           _%table116720%_
                           _%deleted116743%_
                           _%key116716%_)
                          (vector-set!
                           _%table116720%_
                           (##fx+ _%deleted116743%_ '1)
                           (_%symbolic-table-update!116717%_
                            _%default116718%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116715%_
                              (##fx+ (&raw-table-count _%tab116715%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116720%_
                           _%probe116739%_
                           _%key116716%_)
                          (vector-set!
                           _%table116720%_
                           (##fx+ _%probe116739%_ '1)
                           (_%symbolic-table-update!116717%_
                            _%default116718%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116715%_
                              (##fx- (&raw-table-free _%tab116715%_) '1))
                             (&raw-table-count-set!
                              _%tab116715%_
                              (##fx+ (&raw-table-count _%tab116715%_) '1))))))
                    (if (eq? _%k116746%_ (macro-deleted-obj))
                        (_%loop116736%_
                         (let ((_%next-probe116753%_
                                (fx+ _%start116732%_
                                     _%i116741%_
                                     (fx* _%i116741%_ _%i116741%_))))
                           (##fxmodulo _%next-probe116753%_ _%size116726%_))
                         (##fx+ _%i116741%_ '1)
                         (let ((_%$e116756%_ _%deleted116743%_))
                           (if _%$e116756%_ _%$e116756%_ _%probe116739%_)))
                        (if (eq? _%key116716%_ _%k116746%_)
                            (let ()
                              (vector-set!
                               _%table116720%_
                               _%probe116739%_
                               _%key116716%_)
                              (vector-set!
                               _%table116720%_
                               (##fx+ _%probe116739%_ '1)
                               (_%symbolic-table-update!116717%_
                                (vector-ref
                                 _%table116720%_
                                 (##fx+ _%probe116739%_ '1)))))
                            (_%loop116736%_
                             (let ((_%next-probe116761%_
                                    (fx+ _%start116732%_
                                         _%i116741%_
                                         (fx* _%i116741%_ _%i116741%_))))
                               (##fxmodulo
                                _%next-probe116761%_
                                _%size116726%_))
                             (##fx+ _%i116741%_ '1)
                             _%deleted116743%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab116710%_
               _%key116711%_
               _%symbolic-table-update!116712%_
               _%default116713%_)
        (if (##fx< (&raw-table-free _%tab116710%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116710%_))
                    '4))
            (__raw-table-rehash! _%tab116710%_)
            '#!void)
        (__symbolic-table-update!
         _%tab116710%_
         _%key116711%_
         _%symbolic-table-update!116712%_
         _%default116713%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab116679%_
               _%key116680%_
               _%symbolic-table-update!116681%_
               _%default116682%_)
        (let ((_%lock116685%_ (&raw-table-lock _%tab116679%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116690%_ ((_%spin116693%_ '0))
              (if (##fx= (##vector-cas! _%lock116685%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116685%_ '1 (current-thread))
                  (if (##fx< _%spin116693%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116690%_ (##fx+ _%spin116693%_ '1)))
                      (let ((_%owner116699%_ (##vector-ref _%lock116685%_ '1)))
                        (if (eq? _%owner116699%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116699%_)
                                (let () (##thread-yield!) (_%again116690%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116705%_
                 (_%symbolic-table-update!116681%_
                  _%tab116679%_
                  _%key116680%_
                  _%symbolic-table-update!116681%_
                  _%default116682%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116685%_ '1 '#f)
                (##vector-cas! _%lock116685%_ '0 '0 '1)))
            _%$r116705%_))))
    (define symbolic-table-delete!
      (lambda (_%tab116636%_ _%key116637%_)
        (let ((_%table116639%_ (&raw-table-table _%tab116636%_))
              (_%seed116641%_ (&raw-table-seed _%tab116636%_)))
          (let* ((_%h116644%_
                  (fxxor (##symbol-hash _%key116637%_) _%seed116641%_))
                 (_%size116647%_ (vector-length _%table116639%_))
                 (_%entries116650%_ (##fxquotient _%size116647%_ '2))
                 (_%start116653%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116644%_ _%entries116650%_)
                   '1)))
            (let _%loop116657%_ ((_%probe116660%_ _%start116653%_)
                                 (_%i116662%_ '1))
              (let ((_%k116665%_ (vector-ref _%table116639%_ _%probe116660%_)))
                (if (eq? _%k116665%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116665%_ (macro-deleted-obj))
                        (_%loop116657%_
                         (let ((_%next-probe116670%_
                                (fx+ _%start116653%_
                                     _%i116662%_
                                     (fx* _%i116662%_ _%i116662%_))))
                           (##fxmodulo _%next-probe116670%_ _%size116647%_))
                         (##fx+ _%i116662%_ '1))
                        (if (eq? _%key116637%_ _%k116665%_)
                            (let ()
                              (vector-set!
                               _%table116639%_
                               _%probe116660%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116639%_
                               (##fx+ _%probe116660%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116636%_
                                  (##fx- (&raw-table-count _%tab116636%_)
                                         '1)))))
                            (_%loop116657%_
                             (let ((_%next-probe116676%_
                                    (fx+ _%start116653%_
                                         _%i116662%_
                                         (fx* _%i116662%_ _%i116662%_))))
                               (##fxmodulo
                                _%next-probe116676%_
                                _%size116647%_))
                             (##fx+ _%i116662%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab116606%_ _%key116608%_)
        (let ((_%lock116611%_ (&raw-table-lock _%tab116606%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116616%_ ((_%spin116619%_ '0))
              (if (##fx= (##vector-cas! _%lock116611%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116611%_ '1 (current-thread))
                  (if (##fx< _%spin116619%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116616%_ (##fx+ _%spin116619%_ '1)))
                      (let ((_%owner116625%_ (##vector-ref _%lock116611%_ '1)))
                        (if (eq? _%owner116625%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116625%_)
                                (let () (##thread-yield!) (_%again116616%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116631%_
                 (symbolic-table-delete! _%tab116606%_ _%key116608%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116611%_ '1 '#f)
                (##vector-cas! _%lock116611%_ '0 '0 '1)))
            _%$r116631%_))))
    (define make-string-table__%
      (lambda (_%size-hint116588%_ _%seed116589%_)
        (make-raw-table__1
         _%size-hint116588%_
         string-hash
         ##string=?
         _%seed116589%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint116595%_ '#f) (_%seed116597%_ '0))
          (make-string-table__% _%size-hint116595%_ _%seed116597%_))))
    (define make-string-table__1
      (lambda (_%size-hint116599%_)
        (let ((_%seed116601%_ '0))
          (make-string-table__% _%size-hint116599%_ _%seed116601%_))))
    (define make-string-table
      (lambda _g118283_
        (let ((_g118284_ (##length _g118283_)))
          (cond ((##fx= _g118284_ 0) (apply make-string-table__0 _g118283_))
                ((##fx= _g118284_ 1) (apply make-string-table__1 _g118283_))
                ((##fx= _g118284_ 2) (apply make-string-table__% _g118283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g118283_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint116568%_ _%seed116570%_)
        (make-raw-table/lock__%
         _%size-hint116568%_
         string-hash
         ##string=?
         _%seed116570%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint116576%_ '#f) (_%seed116578%_ '0))
          (make-string-table/lock__% _%size-hint116576%_ _%seed116578%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint116580%_)
        (let ((_%seed116582%_ '0))
          (make-string-table/lock__% _%size-hint116580%_ _%seed116582%_))))
    (define make-string-table/lock
      (lambda _g118285_
        (let ((_g118286_ (##length _g118285_)))
          (cond ((##fx= _g118286_ 0)
                 (apply make-string-table/lock__0 _g118285_))
                ((##fx= _g118286_ 1)
                 (apply make-string-table/lock__1 _g118285_))
                ((##fx= _g118286_ 2)
                 (apply make-string-table/lock__% _g118285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g118285_))))))
    (define string-table-ref
      (lambda (_%tab116521%_ _%key116522%_ _%default116523%_)
        (let ((_%table116525%_ (&raw-table-table _%tab116521%_))
              (_%seed116526%_ (&raw-table-seed _%tab116521%_)))
          (let* ((_%h116528%_
                  (fxxor (##string=?-hash _%key116522%_) _%seed116526%_))
                 (_%size116531%_ (vector-length _%table116525%_))
                 (_%entries116534%_ (##fxquotient _%size116531%_ '2))
                 (_%start116537%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116528%_ _%entries116534%_)
                   '1)))
            (let _%loop116541%_ ((_%probe116544%_ _%start116537%_)
                                 (_%i116546%_ '1)
                                 (_%deleted116548%_ '#f))
              (let ((_%k116551%_ (vector-ref _%table116525%_ _%probe116544%_)))
                (if (eq? _%k116551%_ (macro-unused-obj))
                    _%default116523%_
                    (if (eq? _%k116551%_ (macro-deleted-obj))
                        (_%loop116541%_
                         (let ((_%next-probe116556%_
                                (fx+ _%start116537%_
                                     _%i116546%_
                                     (fx* _%i116546%_ _%i116546%_))))
                           (##fxmodulo _%next-probe116556%_ _%size116531%_))
                         (##fx+ _%i116546%_ '1)
                         (let ((_%$e116559%_ _%deleted116548%_))
                           (if _%$e116559%_ _%$e116559%_ _%probe116544%_)))
                        (if (##string=? _%key116522%_ _%k116551%_)
                            (vector-ref
                             _%table116525%_
                             (##fx+ _%probe116544%_ '1))
                            (_%loop116541%_
                             (let ((_%next-probe116564%_
                                    (fx+ _%start116537%_
                                         _%i116546%_
                                         (fx* _%i116546%_ _%i116546%_))))
                               (##fxmodulo
                                _%next-probe116564%_
                                _%size116531%_))
                             (##fx+ _%i116546%_ '1)
                             _%deleted116548%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab116492%_ _%key116493%_ _%default116494%_)
        (let ((_%lock116496%_ (&raw-table-lock _%tab116492%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116501%_ ((_%spin116504%_ '0))
              (if (##fx= (##vector-cas! _%lock116496%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116496%_ '1 (current-thread))
                  (if (##fx< _%spin116504%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116501%_ (##fx+ _%spin116504%_ '1)))
                      (let ((_%owner116510%_ (##vector-ref _%lock116496%_ '1)))
                        (if (eq? _%owner116510%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116510%_)
                                (let () (##thread-yield!) (_%again116501%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116516%_
                 (string-table-ref
                  _%tab116492%_
                  _%key116493%_
                  _%default116494%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116496%_ '1 '#f)
                (##vector-cas! _%lock116496%_ '0 '0 '1)))
            _%$r116516%_))))
    (define __string-table-set!
      (lambda (_%tab116444%_ _%key116445%_ _%value116446%_)
        (let ((_%table116448%_ (&raw-table-table _%tab116444%_))
              (_%seed116449%_ (&raw-table-seed _%tab116444%_)))
          (let* ((_%h116451%_
                  (fxxor (##string=?-hash _%key116445%_) _%seed116449%_))
                 (_%size116454%_ (vector-length _%table116448%_))
                 (_%entries116457%_ (##fxquotient _%size116454%_ '2))
                 (_%start116460%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116451%_ _%entries116457%_)
                   '1)))
            (let _%loop116464%_ ((_%probe116467%_ _%start116460%_)
                                 (_%i116469%_ '1)
                                 (_%deleted116471%_ '#f))
              (let ((_%k116474%_ (vector-ref _%table116448%_ _%probe116467%_)))
                (if (eq? _%k116474%_ (macro-unused-obj))
                    (if _%deleted116471%_
                        (begin
                          (vector-set!
                           _%table116448%_
                           _%deleted116471%_
                           _%key116445%_)
                          (vector-set!
                           _%table116448%_
                           (##fx+ _%deleted116471%_ '1)
                           _%value116446%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116444%_
                              (##fx+ (&raw-table-count _%tab116444%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116448%_
                           _%probe116467%_
                           _%key116445%_)
                          (vector-set!
                           _%table116448%_
                           (##fx+ _%probe116467%_ '1)
                           _%value116446%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116444%_
                              (##fx- (&raw-table-free _%tab116444%_) '1))
                             (&raw-table-count-set!
                              _%tab116444%_
                              (##fx+ (&raw-table-count _%tab116444%_) '1))))))
                    (if (eq? _%k116474%_ (macro-deleted-obj))
                        (_%loop116464%_
                         (let ((_%next-probe116481%_
                                (fx+ _%start116460%_
                                     _%i116469%_
                                     (fx* _%i116469%_ _%i116469%_))))
                           (##fxmodulo _%next-probe116481%_ _%size116454%_))
                         (##fx+ _%i116469%_ '1)
                         (let ((_%$e116484%_ _%deleted116471%_))
                           (if _%$e116484%_ _%$e116484%_ _%probe116467%_)))
                        (if (##string=? _%key116445%_ _%k116474%_)
                            (let ()
                              (vector-set!
                               _%table116448%_
                               _%probe116467%_
                               _%key116445%_)
                              (vector-set!
                               _%table116448%_
                               (##fx+ _%probe116467%_ '1)
                               _%value116446%_))
                            (_%loop116464%_
                             (let ((_%next-probe116489%_
                                    (fx+ _%start116460%_
                                         _%i116469%_
                                         (fx* _%i116469%_ _%i116469%_))))
                               (##fxmodulo
                                _%next-probe116489%_
                                _%size116454%_))
                             (##fx+ _%i116469%_ '1)
                             _%deleted116471%_))))))))))
    (define string-table-set!
      (lambda (_%tab116440%_ _%key116441%_ _%value116442%_)
        (if (##fx< (&raw-table-free _%tab116440%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116440%_))
                    '4))
            (__raw-table-rehash! _%tab116440%_)
            '#!void)
        (__string-table-set! _%tab116440%_ _%key116441%_ _%value116442%_)))
    (define string-table-set!/lock
      (lambda (_%tab116410%_ _%key116411%_ _%value116412%_)
        (let ((_%lock116415%_ (&raw-table-lock _%tab116410%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116420%_ ((_%spin116423%_ '0))
              (if (##fx= (##vector-cas! _%lock116415%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116415%_ '1 (current-thread))
                  (if (##fx< _%spin116423%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116420%_ (##fx+ _%spin116423%_ '1)))
                      (let ((_%owner116429%_ (##vector-ref _%lock116415%_ '1)))
                        (if (eq? _%owner116429%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116429%_)
                                (let () (##thread-yield!) (_%again116420%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116435%_
                 (string-table-set!
                  _%tab116410%_
                  _%key116411%_
                  _%value116412%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116415%_ '1 '#f)
                (##vector-cas! _%lock116415%_ '0 '0 '1)))
            _%$r116435%_))))
    (define __string-table-update!
      (lambda (_%tab116361%_
               _%key116362%_
               _%string-table-update!116363%_
               _%default116364%_)
        (let ((_%table116366%_ (&raw-table-table _%tab116361%_))
              (_%seed116367%_ (&raw-table-seed _%tab116361%_)))
          (let* ((_%h116369%_
                  (fxxor (##string=?-hash _%key116362%_) _%seed116367%_))
                 (_%size116372%_ (vector-length _%table116366%_))
                 (_%entries116375%_ (##fxquotient _%size116372%_ '2))
                 (_%start116378%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116369%_ _%entries116375%_)
                   '1)))
            (let _%loop116382%_ ((_%probe116385%_ _%start116378%_)
                                 (_%i116387%_ '1)
                                 (_%deleted116389%_ '#f))
              (let ((_%k116392%_ (vector-ref _%table116366%_ _%probe116385%_)))
                (if (eq? _%k116392%_ (macro-unused-obj))
                    (if _%deleted116389%_
                        (begin
                          (vector-set!
                           _%table116366%_
                           _%deleted116389%_
                           _%key116362%_)
                          (vector-set!
                           _%table116366%_
                           (##fx+ _%deleted116389%_ '1)
                           (_%string-table-update!116363%_ _%default116364%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116361%_
                              (##fx+ (&raw-table-count _%tab116361%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116366%_
                           _%probe116385%_
                           _%key116362%_)
                          (vector-set!
                           _%table116366%_
                           (##fx+ _%probe116385%_ '1)
                           (_%string-table-update!116363%_ _%default116364%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116361%_
                              (##fx- (&raw-table-free _%tab116361%_) '1))
                             (&raw-table-count-set!
                              _%tab116361%_
                              (##fx+ (&raw-table-count _%tab116361%_) '1))))))
                    (if (eq? _%k116392%_ (macro-deleted-obj))
                        (_%loop116382%_
                         (let ((_%next-probe116399%_
                                (fx+ _%start116378%_
                                     _%i116387%_
                                     (fx* _%i116387%_ _%i116387%_))))
                           (##fxmodulo _%next-probe116399%_ _%size116372%_))
                         (##fx+ _%i116387%_ '1)
                         (let ((_%$e116402%_ _%deleted116389%_))
                           (if _%$e116402%_ _%$e116402%_ _%probe116385%_)))
                        (if (##string=? _%key116362%_ _%k116392%_)
                            (let ()
                              (vector-set!
                               _%table116366%_
                               _%probe116385%_
                               _%key116362%_)
                              (vector-set!
                               _%table116366%_
                               (##fx+ _%probe116385%_ '1)
                               (_%string-table-update!116363%_
                                (vector-ref
                                 _%table116366%_
                                 (##fx+ _%probe116385%_ '1)))))
                            (_%loop116382%_
                             (let ((_%next-probe116407%_
                                    (fx+ _%start116378%_
                                         _%i116387%_
                                         (fx* _%i116387%_ _%i116387%_))))
                               (##fxmodulo
                                _%next-probe116407%_
                                _%size116372%_))
                             (##fx+ _%i116387%_ '1)
                             _%deleted116389%_))))))))))
    (define string-table-update!
      (lambda (_%tab116356%_
               _%key116357%_
               _%string-table-update!116358%_
               _%default116359%_)
        (if (##fx< (&raw-table-free _%tab116356%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116356%_))
                    '4))
            (__raw-table-rehash! _%tab116356%_)
            '#!void)
        (__string-table-update!
         _%tab116356%_
         _%key116357%_
         _%string-table-update!116358%_
         _%default116359%_)))
    (define string-table-update!/lock
      (lambda (_%tab116325%_
               _%key116326%_
               _%string-table-update!116327%_
               _%default116328%_)
        (let ((_%lock116331%_ (&raw-table-lock _%tab116325%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116336%_ ((_%spin116339%_ '0))
              (if (##fx= (##vector-cas! _%lock116331%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116331%_ '1 (current-thread))
                  (if (##fx< _%spin116339%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116336%_ (##fx+ _%spin116339%_ '1)))
                      (let ((_%owner116345%_ (##vector-ref _%lock116331%_ '1)))
                        (if (eq? _%owner116345%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116345%_)
                                (let () (##thread-yield!) (_%again116336%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116351%_
                 (_%string-table-update!116327%_
                  _%tab116325%_
                  _%key116326%_
                  _%string-table-update!116327%_
                  _%default116328%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116331%_ '1 '#f)
                (##vector-cas! _%lock116331%_ '0 '0 '1)))
            _%$r116351%_))))
    (define string-table-delete!
      (lambda (_%tab116282%_ _%key116283%_)
        (let ((_%table116285%_ (&raw-table-table _%tab116282%_))
              (_%seed116287%_ (&raw-table-seed _%tab116282%_)))
          (let* ((_%h116290%_
                  (fxxor (##string=?-hash _%key116283%_) _%seed116287%_))
                 (_%size116293%_ (vector-length _%table116285%_))
                 (_%entries116296%_ (##fxquotient _%size116293%_ '2))
                 (_%start116299%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116290%_ _%entries116296%_)
                   '1)))
            (let _%loop116303%_ ((_%probe116306%_ _%start116299%_)
                                 (_%i116308%_ '1))
              (let ((_%k116311%_ (vector-ref _%table116285%_ _%probe116306%_)))
                (if (eq? _%k116311%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116311%_ (macro-deleted-obj))
                        (_%loop116303%_
                         (let ((_%next-probe116316%_
                                (fx+ _%start116299%_
                                     _%i116308%_
                                     (fx* _%i116308%_ _%i116308%_))))
                           (##fxmodulo _%next-probe116316%_ _%size116293%_))
                         (##fx+ _%i116308%_ '1))
                        (if (##string=? _%key116283%_ _%k116311%_)
                            (let ()
                              (vector-set!
                               _%table116285%_
                               _%probe116306%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116285%_
                               (##fx+ _%probe116306%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116282%_
                                  (##fx- (&raw-table-count _%tab116282%_)
                                         '1)))))
                            (_%loop116303%_
                             (let ((_%next-probe116322%_
                                    (fx+ _%start116299%_
                                         _%i116308%_
                                         (fx* _%i116308%_ _%i116308%_))))
                               (##fxmodulo
                                _%next-probe116322%_
                                _%size116293%_))
                             (##fx+ _%i116308%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab116252%_ _%key116254%_)
        (let ((_%lock116257%_ (&raw-table-lock _%tab116252%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116262%_ ((_%spin116265%_ '0))
              (if (##fx= (##vector-cas! _%lock116257%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116257%_ '1 (current-thread))
                  (if (##fx< _%spin116265%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116262%_ (##fx+ _%spin116265%_ '1)))
                      (let ((_%owner116271%_ (##vector-ref _%lock116257%_ '1)))
                        (if (eq? _%owner116271%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116271%_)
                                (let () (##thread-yield!) (_%again116262%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116277%_
                 (string-table-delete! _%tab116252%_ _%key116254%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116257%_ '1 '#f)
                (##vector-cas! _%lock116257%_ '0 '0 '1)))
            _%$r116277%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint116234%_ _%seed116235%_)
        (make-raw-table__1
         _%size-hint116234%_
         immediate-hash
         eq?
         _%seed116235%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint116241%_ '#f) (_%seed116243%_ '0))
          (make-immediate-table__% _%size-hint116241%_ _%seed116243%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint116245%_)
        (let ((_%seed116247%_ '0))
          (make-immediate-table__% _%size-hint116245%_ _%seed116247%_))))
    (define make-immediate-table
      (lambda _g118287_
        (let ((_g118288_ (##length _g118287_)))
          (cond ((##fx= _g118288_ 0) (apply make-immediate-table__0 _g118287_))
                ((##fx= _g118288_ 1) (apply make-immediate-table__1 _g118287_))
                ((##fx= _g118288_ 2) (apply make-immediate-table__% _g118287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g118287_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint116214%_ _%seed116216%_)
        (make-raw-table/lock__%
         _%size-hint116214%_
         immediate-hash
         eq?
         _%seed116216%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint116222%_ '#f) (_%seed116224%_ '0))
          (make-immediate-table/lock__% _%size-hint116222%_ _%seed116224%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint116226%_)
        (let ((_%seed116228%_ '0))
          (make-immediate-table/lock__% _%size-hint116226%_ _%seed116228%_))))
    (define make-immediate-table/lock
      (lambda _g118289_
        (let ((_g118290_ (##length _g118289_)))
          (cond ((##fx= _g118290_ 0)
                 (apply make-immediate-table/lock__0 _g118289_))
                ((##fx= _g118290_ 1)
                 (apply make-immediate-table/lock__1 _g118289_))
                ((##fx= _g118290_ 2)
                 (apply make-immediate-table/lock__% _g118289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g118289_))))))
    (define immediate-table-ref
      (lambda (_%tab116167%_ _%key116168%_ _%default116169%_)
        (let ((_%table116171%_ (&raw-table-table _%tab116167%_))
              (_%seed116172%_ (&raw-table-seed _%tab116167%_)))
          (let* ((_%h116174%_
                  (fxxor (immediate-hash _%key116168%_) _%seed116172%_))
                 (_%size116177%_ (vector-length _%table116171%_))
                 (_%entries116180%_ (##fxquotient _%size116177%_ '2))
                 (_%start116183%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116174%_ _%entries116180%_)
                   '1)))
            (let _%loop116187%_ ((_%probe116190%_ _%start116183%_)
                                 (_%i116192%_ '1)
                                 (_%deleted116194%_ '#f))
              (let ((_%k116197%_ (vector-ref _%table116171%_ _%probe116190%_)))
                (if (eq? _%k116197%_ (macro-unused-obj))
                    _%default116169%_
                    (if (eq? _%k116197%_ (macro-deleted-obj))
                        (_%loop116187%_
                         (let ((_%next-probe116202%_
                                (fx+ _%start116183%_
                                     _%i116192%_
                                     (fx* _%i116192%_ _%i116192%_))))
                           (##fxmodulo _%next-probe116202%_ _%size116177%_))
                         (##fx+ _%i116192%_ '1)
                         (let ((_%$e116205%_ _%deleted116194%_))
                           (if _%$e116205%_ _%$e116205%_ _%probe116190%_)))
                        (if (eq? _%key116168%_ _%k116197%_)
                            (vector-ref
                             _%table116171%_
                             (##fx+ _%probe116190%_ '1))
                            (_%loop116187%_
                             (let ((_%next-probe116210%_
                                    (fx+ _%start116183%_
                                         _%i116192%_
                                         (fx* _%i116192%_ _%i116192%_))))
                               (##fxmodulo
                                _%next-probe116210%_
                                _%size116177%_))
                             (##fx+ _%i116192%_ '1)
                             _%deleted116194%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab116138%_ _%key116139%_ _%default116140%_)
        (let ((_%lock116142%_ (&raw-table-lock _%tab116138%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116147%_ ((_%spin116150%_ '0))
              (if (##fx= (##vector-cas! _%lock116142%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116142%_ '1 (current-thread))
                  (if (##fx< _%spin116150%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116147%_ (##fx+ _%spin116150%_ '1)))
                      (let ((_%owner116156%_ (##vector-ref _%lock116142%_ '1)))
                        (if (eq? _%owner116156%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116156%_)
                                (let () (##thread-yield!) (_%again116147%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116162%_
                 (immediate-table-ref
                  _%tab116138%_
                  _%key116139%_
                  _%default116140%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116142%_ '1 '#f)
                (##vector-cas! _%lock116142%_ '0 '0 '1)))
            _%$r116162%_))))
    (define __immediate-table-set!
      (lambda (_%tab116090%_ _%key116091%_ _%value116092%_)
        (let ((_%table116094%_ (&raw-table-table _%tab116090%_))
              (_%seed116095%_ (&raw-table-seed _%tab116090%_)))
          (let* ((_%h116097%_
                  (fxxor (immediate-hash _%key116091%_) _%seed116095%_))
                 (_%size116100%_ (vector-length _%table116094%_))
                 (_%entries116103%_ (##fxquotient _%size116100%_ '2))
                 (_%start116106%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116097%_ _%entries116103%_)
                   '1)))
            (let _%loop116110%_ ((_%probe116113%_ _%start116106%_)
                                 (_%i116115%_ '1)
                                 (_%deleted116117%_ '#f))
              (let ((_%k116120%_ (vector-ref _%table116094%_ _%probe116113%_)))
                (if (eq? _%k116120%_ (macro-unused-obj))
                    (if _%deleted116117%_
                        (begin
                          (vector-set!
                           _%table116094%_
                           _%deleted116117%_
                           _%key116091%_)
                          (vector-set!
                           _%table116094%_
                           (##fx+ _%deleted116117%_ '1)
                           _%value116092%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116090%_
                              (##fx+ (&raw-table-count _%tab116090%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116094%_
                           _%probe116113%_
                           _%key116091%_)
                          (vector-set!
                           _%table116094%_
                           (##fx+ _%probe116113%_ '1)
                           _%value116092%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116090%_
                              (##fx- (&raw-table-free _%tab116090%_) '1))
                             (&raw-table-count-set!
                              _%tab116090%_
                              (##fx+ (&raw-table-count _%tab116090%_) '1))))))
                    (if (eq? _%k116120%_ (macro-deleted-obj))
                        (_%loop116110%_
                         (let ((_%next-probe116127%_
                                (fx+ _%start116106%_
                                     _%i116115%_
                                     (fx* _%i116115%_ _%i116115%_))))
                           (##fxmodulo _%next-probe116127%_ _%size116100%_))
                         (##fx+ _%i116115%_ '1)
                         (let ((_%$e116130%_ _%deleted116117%_))
                           (if _%$e116130%_ _%$e116130%_ _%probe116113%_)))
                        (if (eq? _%key116091%_ _%k116120%_)
                            (let ()
                              (vector-set!
                               _%table116094%_
                               _%probe116113%_
                               _%key116091%_)
                              (vector-set!
                               _%table116094%_
                               (##fx+ _%probe116113%_ '1)
                               _%value116092%_))
                            (_%loop116110%_
                             (let ((_%next-probe116135%_
                                    (fx+ _%start116106%_
                                         _%i116115%_
                                         (fx* _%i116115%_ _%i116115%_))))
                               (##fxmodulo
                                _%next-probe116135%_
                                _%size116100%_))
                             (##fx+ _%i116115%_ '1)
                             _%deleted116117%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab116086%_ _%key116087%_ _%value116088%_)
        (if (##fx< (&raw-table-free _%tab116086%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116086%_))
                    '4))
            (__raw-table-rehash! _%tab116086%_)
            '#!void)
        (__immediate-table-set! _%tab116086%_ _%key116087%_ _%value116088%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab116056%_ _%key116057%_ _%value116058%_)
        (let ((_%lock116061%_ (&raw-table-lock _%tab116056%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116066%_ ((_%spin116069%_ '0))
              (if (##fx= (##vector-cas! _%lock116061%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116061%_ '1 (current-thread))
                  (if (##fx< _%spin116069%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116066%_ (##fx+ _%spin116069%_ '1)))
                      (let ((_%owner116075%_ (##vector-ref _%lock116061%_ '1)))
                        (if (eq? _%owner116075%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116075%_)
                                (let () (##thread-yield!) (_%again116066%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116081%_
                 (immediate-table-set!
                  _%tab116056%_
                  _%key116057%_
                  _%value116058%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116061%_ '1 '#f)
                (##vector-cas! _%lock116061%_ '0 '0 '1)))
            _%$r116081%_))))
    (define __immediate-table-update!
      (lambda (_%tab116007%_
               _%key116008%_
               _%immediate-table-update!116009%_
               _%default116010%_)
        (let ((_%table116012%_ (&raw-table-table _%tab116007%_))
              (_%seed116013%_ (&raw-table-seed _%tab116007%_)))
          (let* ((_%h116015%_
                  (fxxor (immediate-hash _%key116008%_) _%seed116013%_))
                 (_%size116018%_ (vector-length _%table116012%_))
                 (_%entries116021%_ (##fxquotient _%size116018%_ '2))
                 (_%start116024%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116015%_ _%entries116021%_)
                   '1)))
            (let _%loop116028%_ ((_%probe116031%_ _%start116024%_)
                                 (_%i116033%_ '1)
                                 (_%deleted116035%_ '#f))
              (let ((_%k116038%_ (vector-ref _%table116012%_ _%probe116031%_)))
                (if (eq? _%k116038%_ (macro-unused-obj))
                    (if _%deleted116035%_
                        (begin
                          (vector-set!
                           _%table116012%_
                           _%deleted116035%_
                           _%key116008%_)
                          (vector-set!
                           _%table116012%_
                           (##fx+ _%deleted116035%_ '1)
                           (_%immediate-table-update!116009%_
                            _%default116010%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116007%_
                              (##fx+ (&raw-table-count _%tab116007%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116012%_
                           _%probe116031%_
                           _%key116008%_)
                          (vector-set!
                           _%table116012%_
                           (##fx+ _%probe116031%_ '1)
                           (_%immediate-table-update!116009%_
                            _%default116010%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116007%_
                              (##fx- (&raw-table-free _%tab116007%_) '1))
                             (&raw-table-count-set!
                              _%tab116007%_
                              (##fx+ (&raw-table-count _%tab116007%_) '1))))))
                    (if (eq? _%k116038%_ (macro-deleted-obj))
                        (_%loop116028%_
                         (let ((_%next-probe116045%_
                                (fx+ _%start116024%_
                                     _%i116033%_
                                     (fx* _%i116033%_ _%i116033%_))))
                           (##fxmodulo _%next-probe116045%_ _%size116018%_))
                         (##fx+ _%i116033%_ '1)
                         (let ((_%$e116048%_ _%deleted116035%_))
                           (if _%$e116048%_ _%$e116048%_ _%probe116031%_)))
                        (if (eq? _%key116008%_ _%k116038%_)
                            (let ()
                              (vector-set!
                               _%table116012%_
                               _%probe116031%_
                               _%key116008%_)
                              (vector-set!
                               _%table116012%_
                               (##fx+ _%probe116031%_ '1)
                               (_%immediate-table-update!116009%_
                                (vector-ref
                                 _%table116012%_
                                 (##fx+ _%probe116031%_ '1)))))
                            (_%loop116028%_
                             (let ((_%next-probe116053%_
                                    (fx+ _%start116024%_
                                         _%i116033%_
                                         (fx* _%i116033%_ _%i116033%_))))
                               (##fxmodulo
                                _%next-probe116053%_
                                _%size116018%_))
                             (##fx+ _%i116033%_ '1)
                             _%deleted116035%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab116002%_
               _%key116003%_
               _%immediate-table-update!116004%_
               _%default116005%_)
        (if (##fx< (&raw-table-free _%tab116002%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116002%_))
                    '4))
            (__raw-table-rehash! _%tab116002%_)
            '#!void)
        (__immediate-table-update!
         _%tab116002%_
         _%key116003%_
         _%immediate-table-update!116004%_
         _%default116005%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab115971%_
               _%key115972%_
               _%immediate-table-update!115973%_
               _%default115974%_)
        (let ((_%lock115977%_ (&raw-table-lock _%tab115971%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115982%_ ((_%spin115985%_ '0))
              (if (##fx= (##vector-cas! _%lock115977%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115977%_ '1 (current-thread))
                  (if (##fx< _%spin115985%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115982%_ (##fx+ _%spin115985%_ '1)))
                      (let ((_%owner115991%_ (##vector-ref _%lock115977%_ '1)))
                        (if (eq? _%owner115991%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115991%_)
                                (let () (##thread-yield!) (_%again115982%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115997%_
                 (_%immediate-table-update!115973%_
                  _%tab115971%_
                  _%key115972%_
                  _%immediate-table-update!115973%_
                  _%default115974%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock115977%_ '1 '#f)
                (##vector-cas! _%lock115977%_ '0 '0 '1)))
            _%$r115997%_))))
    (define immediate-table-delete!
      (lambda (_%tab115928%_ _%key115929%_)
        (let ((_%table115931%_ (&raw-table-table _%tab115928%_))
              (_%seed115933%_ (&raw-table-seed _%tab115928%_)))
          (let* ((_%h115936%_
                  (fxxor (immediate-hash _%key115929%_) _%seed115933%_))
                 (_%size115939%_ (vector-length _%table115931%_))
                 (_%entries115942%_ (##fxquotient _%size115939%_ '2))
                 (_%start115945%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115936%_ _%entries115942%_)
                   '1)))
            (let _%loop115949%_ ((_%probe115952%_ _%start115945%_)
                                 (_%i115954%_ '1))
              (let ((_%k115957%_ (vector-ref _%table115931%_ _%probe115952%_)))
                (if (eq? _%k115957%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115957%_ (macro-deleted-obj))
                        (_%loop115949%_
                         (let ((_%next-probe115962%_
                                (fx+ _%start115945%_
                                     _%i115954%_
                                     (fx* _%i115954%_ _%i115954%_))))
                           (##fxmodulo _%next-probe115962%_ _%size115939%_))
                         (##fx+ _%i115954%_ '1))
                        (if (eq? _%key115929%_ _%k115957%_)
                            (let ()
                              (vector-set!
                               _%table115931%_
                               _%probe115952%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115931%_
                               (##fx+ _%probe115952%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115928%_
                                  (##fx- (&raw-table-count _%tab115928%_)
                                         '1)))))
                            (_%loop115949%_
                             (let ((_%next-probe115968%_
                                    (fx+ _%start115945%_
                                         _%i115954%_
                                         (fx* _%i115954%_ _%i115954%_))))
                               (##fxmodulo
                                _%next-probe115968%_
                                _%size115939%_))
                             (##fx+ _%i115954%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab115898%_ _%key115900%_)
        (let ((_%lock115903%_ (&raw-table-lock _%tab115898%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115908%_ ((_%spin115911%_ '0))
              (if (##fx= (##vector-cas! _%lock115903%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115903%_ '1 (current-thread))
                  (if (##fx< _%spin115911%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115908%_ (##fx+ _%spin115911%_ '1)))
                      (let ((_%owner115917%_ (##vector-ref _%lock115903%_ '1)))
                        (if (eq? _%owner115917%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115917%_)
                                (let () (##thread-yield!) (_%again115908%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115923%_
                 (immediate-table-delete! _%tab115898%_ _%key115900%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock115903%_ '1 '#f)
                (##vector-cas! _%lock115903%_ '0 '0 '1)))
            _%$r115923%_))))
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
      (lambda (_%tab115896%_)
        (##unchecked-structure-ref
         _%tab115896%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab115894%_)
        (##unchecked-structure-ref
         _%tab115894%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab115892%_)
        (##unchecked-structure-ref
         _%tab115892%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab115889%_ _%val115890%_)
        (##unchecked-structure-set!
         _%tab115889%_
         _%val115890%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab115886%_ _%val115887%_)
        (##unchecked-structure-set!
         _%tab115886%_
         _%val115887%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab115883%_ _%val115884%_)
        (##unchecked-structure-set!
         _%tab115883%_
         _%val115884%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint115847%_
               _%klass115848%_
               _%flags115849%_
               _%lock115850%_)
        (let ((_%gcht115852%_
               (__gc-table-new
                (if (fixnum? _%size-hint115847%_) _%size-hint115847%_ '16)
                _%flags115849%_)))
          (##structure _%klass115848%_ _%gcht115852%_ '#f _%lock115850%_))))
    (define make-gc-table__0
      (lambda (_%size-hint115857%_)
        (let* ((_%klass115859%_ __gc-table::t)
               (_%flags115861%_ '0)
               (_%lock115863%_ '#f))
          (make-gc-table__%
           _%size-hint115857%_
           _%klass115859%_
           _%flags115861%_
           _%lock115863%_))))
    (define make-gc-table__1
      (lambda (_%size-hint115865%_ _%klass115866%_)
        (let* ((_%flags115868%_ '0) (_%lock115870%_ '#f))
          (make-gc-table__%
           _%size-hint115865%_
           _%klass115866%_
           _%flags115868%_
           _%lock115870%_))))
    (define make-gc-table__2
      (lambda (_%size-hint115872%_ _%klass115873%_ _%flags115874%_)
        (let ((_%lock115876%_ '#f))
          (make-gc-table__%
           _%size-hint115872%_
           _%klass115873%_
           _%flags115874%_
           _%lock115876%_))))
    (define make-gc-table
      (lambda _g118291_
        (let ((_g118292_ (##length _g118291_)))
          (cond ((##fx= _g118292_ 1) (apply make-gc-table__0 _g118291_))
                ((##fx= _g118292_ 2) (apply make-gc-table__1 _g118291_))
                ((##fx= _g118292_ 3) (apply make-gc-table__2 _g118291_))
                ((##fx= _g118292_ 4) (apply make-gc-table__% _g118291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g118291_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint115824%_ _%klass115825%_ _%flags115826%_)
        (make-gc-table__%
         _%size-hint115824%_
         _%klass115825%_
         _%flags115826%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint115831%_)
        (let* ((_%klass115833%_ __gc-table::t) (_%flags115835%_ '0))
          (make-gc-table/lock__%
           _%size-hint115831%_
           _%klass115833%_
           _%flags115835%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint115837%_ _%klass115838%_)
        (let ((_%flags115840%_ '0))
          (make-gc-table/lock__%
           _%size-hint115837%_
           _%klass115838%_
           _%flags115840%_))))
    (define make-gc-table/lock
      (lambda _g118293_
        (let ((_g118294_ (##length _g118293_)))
          (cond ((##fx= _g118294_ 1) (apply make-gc-table/lock__0 _g118293_))
                ((##fx= _g118294_ 2) (apply make-gc-table/lock__1 _g118293_))
                ((##fx= _g118294_ 3) (apply make-gc-table/lock__% _g118293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g118293_))))))
    (define __gc-table-immediate
      (lambda (_%tab115815%_)
        (let ((_%$e115817%_ (&gc-table-immediate _%tab115815%_)))
          (if _%$e115817%_
              _%$e115817%_
              (let ((_%immediate115821%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab115815%_ _%immediate115821%_)
                _%immediate115821%_)))))
    (define __gc-table-new
      (lambda (_%size115805%_ _%flags115806%_)
        (let* ((_%flags115808%_
                (##fxand _%flags115806%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags115810%_
                (fxior _%flags115808%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht115812%_
                (##gc-hash-table-allocate
                 _%size115805%_
                 _%flags115810%_
                 __gc-table-loads)))
          _%gcht115812%_)))
    (define __gc-table-e
      (lambda (_%tab115800%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht115803%_ (&gc-table-gcht _%tab115800%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht115803%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht115803%_
              (begin
                (__gc-table-rehash! _%tab115800%_)
                (&gc-table-gcht _%tab115800%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab115791%_)
        (let* ((_%old-table115793%_ (&gc-table-gcht _%tab115791%_))
               (_%new-table115795%_
                (##gc-hash-table-resize! _%old-table115793%_ __gc-table-loads))
               (_%gcht115797%_
                (##gc-hash-table-rehash!
                 _%old-table115793%_
                 _%new-table115795%_)))
          (&gc-table-gcht-set! _%tab115791%_ _%gcht115797%_))))
    (define gc-table-ref
      (lambda (_%tab115775%_ _%key115776%_ _%default115777%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key115776%_)
            (let* ((_%gcht115781%_ (__gc-table-e _%tab115775%_))
                   (_%value115783%_
                    (##gc-hash-table-ref _%gcht115781%_ _%key115776%_)))
              (if (eq? _%value115783%_ (macro-unused-obj))
                  _%default115777%_
                  _%value115783%_))
            (let ((_%$e115785%_ (&gc-table-immediate _%tab115775%_)))
              (if _%$e115785%_
                  ((lambda (_%immediate115788%_)
                     (immediate-table-ref
                      _%immediate115788%_
                      _%key115776%_
                      _%default115777%_))
                   _%$e115785%_)
                  _%default115777%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab115749%_ _%key115750%_ _%default115751%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115755%_ ((_%spin115758%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab115749%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab115749%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin115758%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again115755%_ (##fx+ _%spin115758%_ '1)))
                    (let ((_%owner115764%_
                           (##vector-ref (&gc-table-lock _%tab115749%_) '1)))
                      (if (eq? _%owner115764%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115764%_)
                              (let () (##thread-yield!) (_%again115755%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115770%_
               (gc-table-ref _%tab115749%_ _%key115750%_ _%default115751%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab115749%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab115749%_) '0 '0 '1)))
          _%$r115770%_)))
    (define gc-table-set!
      (lambda (_%tab115742%_ _%key115743%_ _%value115744%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key115743%_)
            (let ((_%gcht115747%_ (__gc-table-e _%tab115742%_)))
              (if (##gc-hash-table-set!
                   _%gcht115747%_
                   _%key115743%_
                   _%value115744%_)
                  (begin
                    (__gc-table-rehash! _%tab115742%_)
                    (gc-table-set!
                     _%tab115742%_
                     _%key115743%_
                     _%value115744%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab115742%_)
             _%key115743%_
             _%value115744%_))))
    (define gc-table-set/lock!
      (lambda (_%tab115716%_ _%key115717%_ _%value115718%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115722%_ ((_%spin115725%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab115716%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab115716%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin115725%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again115722%_ (##fx+ _%spin115725%_ '1)))
                    (let ((_%owner115731%_
                           (##vector-ref (&gc-table-lock _%tab115716%_) '1)))
                      (if (eq? _%owner115731%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115731%_)
                              (let () (##thread-yield!) (_%again115722%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115737%_
               (gc-table-set! _%tab115716%_ _%key115717%_ _%value115718%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab115716%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab115716%_) '0 '0 '1)))
          _%$r115737%_)))
    (define gc-table-update!
      (lambda (_%tab115709%_ _%key115710%_ _%update115711%_ _%default115712%_)
        (if (##mem-allocated? _%key115710%_)
            (let ((_%value115714%_
                   (gc-table-ref
                    _%tab115709%_
                    _%key115710%_
                    _%default115712%_)))
              (gc-table-set!
               _%tab115709%_
               _%key115710%_
               (_%update115711%_ _%value115714%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab115709%_)
             _%key115710%_
             _%update115711%_
             _%default115712%_))))
    (define gc-table-update!/lock
      (lambda (_%tab115682%_ _%key115683%_ _%update115684%_ _%default115685%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115689%_ ((_%spin115692%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab115682%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab115682%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin115692%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again115689%_ (##fx+ _%spin115692%_ '1)))
                    (let ((_%owner115698%_
                           (##vector-ref (&gc-table-lock _%tab115682%_) '1)))
                      (if (eq? _%owner115698%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115698%_)
                              (let () (##thread-yield!) (_%again115689%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115704%_
               (gc-table-update!
                _%tab115682%_
                _%key115683%_
                _%update115684%_
                _%default115685%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab115682%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab115682%_) '0 '0 '1)))
          _%$r115704%_)))
    (define gc-table-delete!
      (lambda (_%tab115670%_ _%key115671%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key115671%_)
            (let ((_%gcht115675%_ (__gc-table-e _%tab115670%_)))
              (if (##gc-hash-table-set!
                   _%gcht115675%_
                   _%key115671%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab115670%_)
                    (gc-table-delete! _%tab115670%_ _%key115671%_))
                  '#!void))
            (let ((_%$e115677%_ (&gc-table-immediate _%tab115670%_)))
              (if _%$e115677%_
                  ((lambda (_%immediate115680%_)
                     (immediate-table-delete!
                      _%immediate115680%_
                      _%key115671%_))
                   _%$e115677%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab115645%_ _%key115646%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115650%_ ((_%spin115653%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab115645%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab115645%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin115653%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again115650%_ (##fx+ _%spin115653%_ '1)))
                    (let ((_%owner115659%_
                           (##vector-ref (&gc-table-lock _%tab115645%_) '1)))
                      (if (eq? _%owner115659%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115659%_)
                              (let () (##thread-yield!) (_%again115650%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115665%_ (gc-table-delete! _%tab115645%_ _%key115646%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab115645%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab115645%_) '0 '0 '1)))
          _%$r115665%_)))
    (define gc-table-for-each
      (lambda (_%tab115634%_ _%proc115635%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht115638%_ (__gc-table-e _%tab115634%_)))
            (##gc-hash-table-for-each _%proc115635%_ _%gcht115638%_))
          (let ((_%$e115640%_ (&gc-table-immediate _%tab115634%_)))
            (if _%$e115640%_
                ((lambda (_%immediate115643%_)
                   (raw-table-for-each _%immediate115643%_ _%proc115635%_))
                 _%$e115640%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab115609%_ _%proc115610%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115614%_ ((_%spin115617%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab115609%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab115609%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin115617%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again115614%_ (##fx+ _%spin115617%_ '1)))
                    (let ((_%owner115623%_
                           (##vector-ref (&gc-table-lock _%tab115609%_) '1)))
                      (if (eq? _%owner115623%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115623%_)
                              (let () (##thread-yield!) (_%again115614%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115629%_ (gc-table-for-each _%tab115609%_ _%proc115610%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab115609%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab115609%_) '0 '0 '1)))
          _%$r115629%_)))
    (define gc-table-copy
      (lambda (_%tab115597%_)
        (let* ((_%gcht115599%_ (__gc-table-e _%tab115597%_))
               (_%new-table115601%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht115599%_)
                 (macro-gc-hash-table-flags _%gcht115599%_)))
               (_%result115603%_
                (##structure
                 (##structure-type _%tab115597%_)
                 _%new-table115601%_
                 '#f)))
          (gc-table-for-each
           _%tab115597%_
           (lambda (_%k115606%_ _%v115607%_)
             (gc-table-set! _%result115603%_ _%k115606%_ _%v115607%_)))
          _%result115603%_)))
    (define gc-table-copy/lock
      (lambda (_%tab115573%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115577%_ ((_%spin115580%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab115573%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab115573%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin115580%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again115577%_ (##fx+ _%spin115580%_ '1)))
                    (let ((_%owner115586%_
                           (##vector-ref (&gc-table-lock _%tab115573%_) '1)))
                      (if (eq? _%owner115586%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115586%_)
                              (let () (##thread-yield!) (_%again115577%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115592%_ (gc-table-copy _%tab115573%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab115573%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab115573%_) '0 '0 '1)))
          _%$r115592%_)))
    (define gc-table-clear!
      (lambda (_%tab115566%_)
        (let* ((_%gcht115568%_ (__gc-table-e _%tab115566%_))
               (_%new-table115570%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht115568%_))))
          (&gc-table-gcht-set! _%tab115566%_ _%new-table115570%_)
          (&gc-table-immediate-set! _%tab115566%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab115542%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115546%_ ((_%spin115549%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab115542%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab115542%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin115549%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again115546%_ (##fx+ _%spin115549%_ '1)))
                    (let ((_%owner115555%_
                           (##vector-ref (&gc-table-lock _%tab115542%_) '1)))
                      (if (eq? _%owner115555%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115555%_)
                              (let () (##thread-yield!) (_%again115546%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115561%_ (gc-table-clear! _%tab115542%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab115542%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab115542%_) '0 '0 '1)))
          _%$r115561%_)))
    (define gc-table-length
      (lambda (_%tab115534%_)
        (let ((_%gcht115536%_ (__gc-table-e _%tab115534%_)))
          (fx+ (macro-gc-hash-table-count _%gcht115536%_)
               (let ((_%$e115538%_ (&gc-table-immediate _%tab115534%_)))
                 (if _%$e115538%_ (&raw-table-count _%$e115538%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab115510%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115514%_ ((_%spin115517%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab115510%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab115510%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin115517%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again115514%_ (##fx+ _%spin115517%_ '1)))
                    (let ((_%owner115523%_
                           (##vector-ref (&gc-table-lock _%tab115510%_) '1)))
                      (if (eq? _%owner115523%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115523%_)
                              (let () (##thread-yield!) (_%again115514%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115529%_ (gc-table-length _%tab115510%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab115510%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab115510%_) '0 '0 '1)))
          _%$r115529%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj115478%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115483%_ ((_%spin115486%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin115486%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115483%_ (##fx+ _%spin115486%_ '1)))
                      (let ((_%owner115492%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner115492%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115492%_)
                                (let () (##thread-yield!) (_%again115483%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115505%_
                 (let ((_%val115498%_
                        (gc-table-ref __object-eq-hash _%obj115478%_ '#f)))
                   (if _%val115498%_
                       _%val115498%_
                       (let ((_%h115500%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e115502%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e115502%_ _%$e115502%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj115478%_
                          _%h115500%_)
                         _%h115500%_)))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! __object-eq-hash-lock '1 '#f)
                (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
            _%$r115505%_))))))
