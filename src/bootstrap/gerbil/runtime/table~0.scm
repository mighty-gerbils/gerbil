(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1784279012)
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
      (lambda (_%obj125135%_)
        (if (##structure? _%obj125135%_)
            (##structure-instance-of? _%obj125135%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab125133%_)
        (##unchecked-structure-ref
         _%tab125133%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab125131%_)
        (##unchecked-structure-ref
         _%tab125131%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab125129%_)
        (##unchecked-structure-ref
         _%tab125129%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab125127%_)
        (##unchecked-structure-ref
         _%tab125127%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab125125%_)
        (##unchecked-structure-ref
         _%tab125125%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab125123%_)
        (##unchecked-structure-ref
         _%tab125123%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab125121%_)
        (##unchecked-structure-ref
         _%tab125121%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab125118%_ _%val125119%_)
        (##unchecked-structure-set!
         _%tab125118%_
         _%val125119%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab125115%_ _%val125116%_)
        (##unchecked-structure-set!
         _%tab125115%_
         _%val125116%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab125112%_ _%val125113%_)
        (##unchecked-structure-set!
         _%tab125112%_
         _%val125113%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab125109%_ _%val125110%_)
        (##unchecked-structure-set!
         _%tab125109%_
         _%val125110%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab125106%_ _%val125107%_)
        (##unchecked-structure-set!
         _%tab125106%_
         _%val125107%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab125103%_ _%val125104%_)
        (##unchecked-structure-set!
         _%tab125103%_
         _%val125104%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab125100%_ _%val125101%_)
        (##unchecked-structure-set!
         _%tab125100%_
         _%val125101%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint125098%_)
        (if (and (fixnum? _%size-hint125098%_) (##fx> _%size-hint125098%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint125098%_)))
                   '4)
            '16)))
    (define ensure-lock
      (lambda (_%lock125094%_)
        (if (eq? _%lock125094%_ '#t) (vector '0 '#f) _%lock125094%_)))
    (define make-raw-table__%
      (lambda (_%size-hint125059%_
               _%hash125060%_
               _%test125061%_
               _%seed125062%_
               _%lock125063%_)
        (let* ((_%size125065%_ (raw-table-size-hint->size _%size-hint125059%_))
               (_%table125067%_
                (##make-vector _%size125065%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table125067%_
           '0
           (##fxquotient _%size125065%_ '2)
           _%hash125060%_
           _%test125061%_
           _%seed125062%_
           (ensure-lock _%lock125063%_)))))
    (define make-raw-table__0
      (lambda (_%size-hint125073%_ _%hash125074%_ _%test125075%_)
        (let* ((_%seed125077%_ '0) (_%lock125079%_ '#f))
          (make-raw-table__%
           _%size-hint125073%_
           _%hash125074%_
           _%test125075%_
           _%seed125077%_
           _%lock125079%_))))
    (define make-raw-table__1
      (lambda (_%size-hint125081%_
               _%hash125082%_
               _%test125083%_
               _%seed125084%_)
        (let ((_%lock125086%_ '#f))
          (make-raw-table__%
           _%size-hint125081%_
           _%hash125082%_
           _%test125083%_
           _%seed125084%_
           _%lock125086%_))))
    (define make-raw-table
      (lambda _g125136_
        (let ((_g125137_ (##length _g125136_)))
          (cond ((##fx= _g125137_ 3) (apply make-raw-table__0 _g125136_))
                ((##fx= _g125137_ 4) (apply make-raw-table__1 _g125136_))
                ((##fx= _g125137_ 5) (apply make-raw-table__% _g125136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g125136_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint125039%_
               _%hash125040%_
               _%test125041%_
               _%seed125042%_)
        (make-raw-table__%
         _%size-hint125039%_
         _%hash125040%_
         _%test125041%_
         _%seed125042%_
         '#t)))
    (define make-raw-table/lock__0
      (lambda (_%size-hint125047%_ _%hash125048%_ _%test125049%_)
        (let ((_%seed125051%_ '0))
          (make-raw-table/lock__%
           _%size-hint125047%_
           _%hash125048%_
           _%test125049%_
           _%seed125051%_))))
    (define make-raw-table/lock
      (lambda _g125138_
        (let ((_g125139_ (##length _g125138_)))
          (cond ((##fx= _g125139_ 3) (apply make-raw-table/lock__0 _g125138_))
                ((##fx= _g125139_ 4) (apply make-raw-table/lock__% _g125138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g125138_))))))
    (define raw-table-length
      (lambda (_%tab125036%_) (&raw-table-count _%tab125036%_)))
    (define raw-table-length/lock
      (lambda (_%tab125009%_)
        (let ((_%lock125011%_ (&raw-table-lock _%tab125009%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125016%_ ((_%spin125019%_ '0))
              (if (##fx= (##vector-cas! _%lock125011%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125011%_ '1 (current-thread))
                  (if (##fx< _%spin125019%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125016%_ (##fx+ _%spin125019%_ '1)))
                      (let ((_%owner125025%_ (##vector-ref _%lock125011%_ '1)))
                        (if (eq? _%owner125025%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125025%_)
                                (let () (##thread-yield!) (_%again125016%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125031%_ (&raw-table-count _%tab125009%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125011%_ '1 '#f)
                (##vector-cas! _%lock125011%_ '0 '0 '1)))
            _%$r125031%_))))
    (define raw-table-ref
      (lambda (_%tab124961%_ _%key124962%_ _%default124963%_)
        (let ((_%table124965%_ (&raw-table-table _%tab124961%_))
              (_%seed124966%_ (&raw-table-seed _%tab124961%_))
              (_%hash124967%_ (&raw-table-hash _%tab124961%_))
              (_%test124968%_ (&raw-table-test _%tab124961%_)))
          (let* ((_%h124970%_
                  (fxxor (_%hash124967%_ _%key124962%_) _%seed124966%_))
                 (_%size124973%_ (vector-length _%table124965%_))
                 (_%entries124976%_ (##fxquotient _%size124973%_ '2))
                 (_%start124979%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124970%_ _%entries124976%_)
                   '1)))
            (let _%loop124983%_ ((_%probe124986%_ _%start124979%_)
                                 (_%i124988%_ '1)
                                 (_%deleted124990%_ '#f))
              (let ((_%k124993%_ (vector-ref _%table124965%_ _%probe124986%_)))
                (if (eq? _%k124993%_ (macro-unused-obj))
                    _%default124963%_
                    (if (eq? _%k124993%_ (macro-deleted-obj))
                        (_%loop124983%_
                         (let ((_%next-probe124998%_
                                (fx+ _%start124979%_
                                     _%i124988%_
                                     (fx* _%i124988%_ _%i124988%_))))
                           (##fxmodulo _%next-probe124998%_ _%size124973%_))
                         (##fx+ _%i124988%_ '1)
                         (let ((_%$e125001%_ _%deleted124990%_))
                           (if _%$e125001%_ _%$e125001%_ _%probe124986%_)))
                        (if (_%test124968%_ _%key124962%_ _%k124993%_)
                            (vector-ref
                             _%table124965%_
                             (##fx+ _%probe124986%_ '1))
                            (_%loop124983%_
                             (let ((_%next-probe125006%_
                                    (fx+ _%start124979%_
                                         _%i124988%_
                                         (fx* _%i124988%_ _%i124988%_))))
                               (##fxmodulo
                                _%next-probe125006%_
                                _%size124973%_))
                             (##fx+ _%i124988%_ '1)
                             _%deleted124990%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab124932%_ _%key124933%_ _%default124934%_)
        (let ((_%lock124936%_ (&raw-table-lock _%tab124932%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124941%_ ((_%spin124944%_ '0))
              (if (##fx= (##vector-cas! _%lock124936%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124936%_ '1 (current-thread))
                  (if (##fx< _%spin124944%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124941%_ (##fx+ _%spin124944%_ '1)))
                      (let ((_%owner124950%_ (##vector-ref _%lock124936%_ '1)))
                        (if (eq? _%owner124950%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124950%_)
                                (let () (##thread-yield!) (_%again124941%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124956%_
                 (raw-table-ref
                  _%tab124932%_
                  _%key124933%_
                  _%default124934%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124936%_ '1 '#f)
                (##vector-cas! _%lock124936%_ '0 '0 '1)))
            _%$r124956%_))))
    (define raw-table-set!
      (lambda (_%tab124928%_ _%key124929%_ _%value124930%_)
        (if (##fx< (&raw-table-free _%tab124928%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124928%_))
                    '4))
            (__raw-table-rehash! _%tab124928%_)
            '#!void)
        (__raw-table-set! _%tab124928%_ _%key124929%_ _%value124930%_)))
    (define raw-table-set!/lock
      (lambda (_%tab124899%_ _%key124900%_ _%value124901%_)
        (let ((_%lock124903%_ (&raw-table-lock _%tab124899%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124908%_ ((_%spin124911%_ '0))
              (if (##fx= (##vector-cas! _%lock124903%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124903%_ '1 (current-thread))
                  (if (##fx< _%spin124911%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124908%_ (##fx+ _%spin124911%_ '1)))
                      (let ((_%owner124917%_ (##vector-ref _%lock124903%_ '1)))
                        (if (eq? _%owner124917%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124917%_)
                                (let () (##thread-yield!) (_%again124908%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124923%_
                 (raw-table-set! _%tab124899%_ _%key124900%_ _%value124901%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124903%_ '1 '#f)
                (##vector-cas! _%lock124903%_ '0 '0 '1)))
            _%$r124923%_))))
    (define raw-table-update!
      (lambda (_%tab124894%_ _%key124895%_ _%update124896%_ _%default124897%_)
        (if (##fx< (&raw-table-free _%tab124894%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124894%_))
                    '4))
            (__raw-table-rehash! _%tab124894%_)
            '#!void)
        (__raw-table-update!
         _%tab124894%_
         _%key124895%_
         _%update124896%_
         _%default124897%_)))
    (define raw-table-update!/lock
      (lambda (_%tab124864%_ _%key124865%_ _%update124866%_ _%default124867%_)
        (let ((_%lock124869%_ (&raw-table-lock _%tab124864%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124874%_ ((_%spin124877%_ '0))
              (if (##fx= (##vector-cas! _%lock124869%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124869%_ '1 (current-thread))
                  (if (##fx< _%spin124877%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124874%_ (##fx+ _%spin124877%_ '1)))
                      (let ((_%owner124883%_ (##vector-ref _%lock124869%_ '1)))
                        (if (eq? _%owner124883%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124883%_)
                                (let () (##thread-yield!) (_%again124874%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124889%_
                 (raw-table-update!
                  _%tab124864%_
                  _%key124865%_
                  _%update124866%_
                  _%default124867%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124869%_ '1 '#f)
                (##vector-cas! _%lock124869%_ '0 '0 '1)))
            _%$r124889%_))))
    (define raw-table-delete!
      (lambda (_%tab124821%_ _%key124822%_)
        (let ((_%table124824%_ (&raw-table-table _%tab124821%_))
              (_%seed124825%_ (&raw-table-seed _%tab124821%_))
              (_%hash124826%_ (&raw-table-hash _%tab124821%_))
              (_%test124827%_ (&raw-table-test _%tab124821%_)))
          (let* ((_%h124829%_
                  (fxxor (_%hash124826%_ _%key124822%_) _%seed124825%_))
                 (_%size124832%_ (vector-length _%table124824%_))
                 (_%entries124835%_ (##fxquotient _%size124832%_ '2))
                 (_%start124838%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124829%_ _%entries124835%_)
                   '1)))
            (let _%loop124842%_ ((_%probe124845%_ _%start124838%_)
                                 (_%i124847%_ '1))
              (let ((_%k124850%_ (vector-ref _%table124824%_ _%probe124845%_)))
                (if (eq? _%k124850%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k124850%_ (macro-deleted-obj))
                        (_%loop124842%_
                         (let ((_%next-probe124855%_
                                (fx+ _%start124838%_
                                     _%i124847%_
                                     (fx* _%i124847%_ _%i124847%_))))
                           (##fxmodulo _%next-probe124855%_ _%size124832%_))
                         (##fx+ _%i124847%_ '1))
                        (if (_%test124827%_ _%key124822%_ _%k124850%_)
                            (let ()
                              (vector-set!
                               _%table124824%_
                               _%probe124845%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table124824%_
                               (##fx+ _%probe124845%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab124821%_
                               (##fx- (&raw-table-count _%tab124821%_) '1)))
                            (_%loop124842%_
                             (let ((_%next-probe124861%_
                                    (fx+ _%start124838%_
                                         _%i124847%_
                                         (fx* _%i124847%_ _%i124847%_))))
                               (##fxmodulo
                                _%next-probe124861%_
                                _%size124832%_))
                             (##fx+ _%i124847%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab124793%_ _%key124794%_)
        (let ((_%lock124796%_ (&raw-table-lock _%tab124793%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124801%_ ((_%spin124804%_ '0))
              (if (##fx= (##vector-cas! _%lock124796%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124796%_ '1 (current-thread))
                  (if (##fx< _%spin124804%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124801%_ (##fx+ _%spin124804%_ '1)))
                      (let ((_%owner124810%_ (##vector-ref _%lock124796%_ '1)))
                        (if (eq? _%owner124810%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124810%_)
                                (let () (##thread-yield!) (_%again124801%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124816%_ (raw-table-delete! _%tab124793%_ _%key124794%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124796%_ '1 '#f)
                (##vector-cas! _%lock124796%_ '0 '0 '1)))
            _%$r124816%_))))
    (define raw-table-for-each
      (lambda (_%tab124777%_ _%proc124778%_)
        (let* ((_%table124780%_ (&raw-table-table _%tab124777%_))
               (_%size124782%_ (vector-length _%table124780%_)))
          (let _%loop124785%_ ((_%i124787%_ '0))
            (if (##fx< _%i124787%_ _%size124782%_)
                (begin
                  (let ((_%key124789%_
                         (vector-ref _%table124780%_ _%i124787%_)))
                    (if (if (eq? _%key124789%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key124789%_ (macro-deleted-obj))))
                        (let ((_%value124791%_
                               (vector-ref
                                _%table124780%_
                                (##fx+ _%i124787%_ '1))))
                          (_%proc124778%_ _%key124789%_ _%value124791%_))
                        '#!void))
                  (_%loop124785%_ (##fx+ _%i124787%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab124749%_ _%proc124750%_)
        (let ((_%lock124752%_ (&raw-table-lock _%tab124749%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124757%_ ((_%spin124760%_ '0))
              (if (##fx= (##vector-cas! _%lock124752%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124752%_ '1 (current-thread))
                  (if (##fx< _%spin124760%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124757%_ (##fx+ _%spin124760%_ '1)))
                      (let ((_%owner124766%_ (##vector-ref _%lock124752%_ '1)))
                        (if (eq? _%owner124766%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124766%_)
                                (let () (##thread-yield!) (_%again124757%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124772%_
                 (raw-table-for-each _%tab124749%_ _%proc124750%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124752%_ '1 '#f)
                (##vector-cas! _%lock124752%_ '0 '0 '1)))
            _%$r124772%_))))
    (define raw-table-copy
      (lambda (_%tab124745%_)
        (let ((_%new-tab124747%_ (##structure-copy _%tab124745%_)))
          (&raw-table-table-set!
           _%new-tab124747%_
           (vector-copy (&raw-table-table _%tab124745%_)))
          (&raw-table-lock-set!
           _%new-tab124747%_
           (ensure-lock (if (&raw-table-lock _%tab124745%_) '#t '#f)))
          _%new-tab124747%_)))
    (define raw-table-copy/lock
      (lambda (_%tab124718%_)
        (let ((_%lock124720%_ (&raw-table-lock _%tab124718%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124725%_ ((_%spin124728%_ '0))
              (if (##fx= (##vector-cas! _%lock124720%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124720%_ '1 (current-thread))
                  (if (##fx< _%spin124728%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124725%_ (##fx+ _%spin124728%_ '1)))
                      (let ((_%owner124734%_ (##vector-ref _%lock124720%_ '1)))
                        (if (eq? _%owner124734%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124734%_)
                                (let () (##thread-yield!) (_%again124725%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124740%_ (raw-table-copy _%tab124718%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124720%_ '1 '#f)
                (##vector-cas! _%lock124720%_ '0 '0 '1)))
            _%$r124740%_))))
    (define raw-table-new__%
      (lambda (_%tab124705%_ _%size-hint124706%_)
        (make-raw-table__%
         (if (eq? _%size-hint124706%_ '#t)
             (vector-length (&raw-table-table _%tab124705%_))
             _%size-hint124706%_)
         (&raw-table-hash _%tab124705%_)
         (&raw-table-test _%tab124705%_)
         (&raw-table-seed _%tab124705%_)
         (if (&raw-table-lock _%tab124705%_) '#t '#f))))
    (define raw-table-new__0
      (lambda (_%tab124711%_)
        (let ((_%size-hint124713%_ '#f))
          (raw-table-new__% _%tab124711%_ _%size-hint124713%_))))
    (define raw-table-new
      (lambda _g125140_
        (let ((_g125141_ (##length _g125140_)))
          (cond ((##fx= _g125141_ 1) (apply raw-table-new__0 _g125140_))
                ((##fx= _g125141_ 2) (apply raw-table-new__% _g125140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  raw-table-new
                  _g125140_))))))
    (define raw-table-clear!
      (lambda (_%tab124702%_)
        (vector-fill! (&raw-table-table _%tab124702%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab124702%_ '0)
        (&raw-table-free-set!
         _%tab124702%_
         (##fxquotient (vector-length (&raw-table-table _%tab124702%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab124675%_)
        (let ((_%lock124677%_ (&raw-table-lock _%tab124675%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124682%_ ((_%spin124685%_ '0))
              (if (##fx= (##vector-cas! _%lock124677%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124677%_ '1 (current-thread))
                  (if (##fx< _%spin124685%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124682%_ (##fx+ _%spin124685%_ '1)))
                      (let ((_%owner124691%_ (##vector-ref _%lock124677%_ '1)))
                        (if (eq? _%owner124691%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124691%_)
                                (let () (##thread-yield!) (_%again124682%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124697%_ (raw-table-clear! _%tab124675%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124677%_ '1 '#f)
                (##vector-cas! _%lock124677%_ '0 '0 '1)))
            _%$r124697%_))))
    (define __raw-table-set!
      (lambda (_%tab124625%_ _%key124626%_ _%value124627%_)
        (let ((_%table124629%_ (&raw-table-table _%tab124625%_))
              (_%seed124630%_ (&raw-table-seed _%tab124625%_))
              (_%hash124631%_ (&raw-table-hash _%tab124625%_))
              (_%test124632%_ (&raw-table-test _%tab124625%_)))
          (let* ((_%h124634%_
                  (fxxor (_%hash124631%_ _%key124626%_) _%seed124630%_))
                 (_%size124637%_ (vector-length _%table124629%_))
                 (_%entries124640%_ (##fxquotient _%size124637%_ '2))
                 (_%start124643%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124634%_ _%entries124640%_)
                   '1)))
            (let _%loop124647%_ ((_%probe124650%_ _%start124643%_)
                                 (_%i124652%_ '1)
                                 (_%deleted124654%_ '#f))
              (let ((_%k124657%_ (vector-ref _%table124629%_ _%probe124650%_)))
                (if (eq? _%k124657%_ (macro-unused-obj))
                    (if _%deleted124654%_
                        (begin
                          (vector-set!
                           _%table124629%_
                           _%deleted124654%_
                           _%key124626%_)
                          (vector-set!
                           _%table124629%_
                           (##fx+ _%deleted124654%_ '1)
                           _%value124627%_)
                          (&raw-table-count-set!
                           _%tab124625%_
                           (##fx+ (&raw-table-count _%tab124625%_) '1)))
                        (begin
                          (vector-set!
                           _%table124629%_
                           _%probe124650%_
                           _%key124626%_)
                          (vector-set!
                           _%table124629%_
                           (##fx+ _%probe124650%_ '1)
                           _%value124627%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab124625%_
                             (##fx- (&raw-table-free _%tab124625%_) '1))
                            (&raw-table-count-set!
                             _%tab124625%_
                             (##fx+ (&raw-table-count _%tab124625%_) '1)))))
                    (if (eq? _%k124657%_ (macro-deleted-obj))
                        (_%loop124647%_
                         (let ((_%next-probe124664%_
                                (fx+ _%start124643%_
                                     _%i124652%_
                                     (fx* _%i124652%_ _%i124652%_))))
                           (##fxmodulo _%next-probe124664%_ _%size124637%_))
                         (##fx+ _%i124652%_ '1)
                         (let ((_%$e124667%_ _%deleted124654%_))
                           (if _%$e124667%_ _%$e124667%_ _%probe124650%_)))
                        (if (_%test124632%_ _%key124626%_ _%k124657%_)
                            (let ()
                              (vector-set!
                               _%table124629%_
                               _%probe124650%_
                               _%key124626%_)
                              (vector-set!
                               _%table124629%_
                               (##fx+ _%probe124650%_ '1)
                               _%value124627%_))
                            (_%loop124647%_
                             (let ((_%next-probe124672%_
                                    (fx+ _%start124643%_
                                         _%i124652%_
                                         (fx* _%i124652%_ _%i124652%_))))
                               (##fxmodulo
                                _%next-probe124672%_
                                _%size124637%_))
                             (##fx+ _%i124652%_ '1)
                             _%deleted124654%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab124574%_ _%key124575%_ _%update124576%_ _%default124577%_)
        (let ((_%table124579%_ (&raw-table-table _%tab124574%_))
              (_%seed124580%_ (&raw-table-seed _%tab124574%_))
              (_%hash124581%_ (&raw-table-hash _%tab124574%_))
              (_%test124582%_ (&raw-table-test _%tab124574%_)))
          (let* ((_%h124584%_
                  (fxxor (_%hash124581%_ _%key124575%_) _%seed124580%_))
                 (_%size124587%_ (vector-length _%table124579%_))
                 (_%entries124590%_ (##fxquotient _%size124587%_ '2))
                 (_%start124593%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124584%_ _%entries124590%_)
                   '1)))
            (let _%loop124597%_ ((_%probe124600%_ _%start124593%_)
                                 (_%i124602%_ '1)
                                 (_%deleted124604%_ '#f))
              (let ((_%k124607%_ (vector-ref _%table124579%_ _%probe124600%_)))
                (if (eq? _%k124607%_ (macro-unused-obj))
                    (if _%deleted124604%_
                        (begin
                          (vector-set!
                           _%table124579%_
                           _%deleted124604%_
                           _%key124575%_)
                          (vector-set!
                           _%table124579%_
                           (##fx+ _%deleted124604%_ '1)
                           (_%update124576%_ _%default124577%_))
                          (&raw-table-count-set!
                           _%tab124574%_
                           (##fx+ (&raw-table-count _%tab124574%_) '1)))
                        (begin
                          (vector-set!
                           _%table124579%_
                           _%probe124600%_
                           _%key124575%_)
                          (vector-set!
                           _%table124579%_
                           (##fx+ _%probe124600%_ '1)
                           (_%update124576%_ _%default124577%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab124574%_
                             (##fx- (&raw-table-free _%tab124574%_) '1))
                            (&raw-table-count-set!
                             _%tab124574%_
                             (##fx+ (&raw-table-count _%tab124574%_) '1)))))
                    (if (eq? _%k124607%_ (macro-deleted-obj))
                        (_%loop124597%_
                         (let ((_%next-probe124614%_
                                (fx+ _%start124593%_
                                     _%i124602%_
                                     (fx* _%i124602%_ _%i124602%_))))
                           (##fxmodulo _%next-probe124614%_ _%size124587%_))
                         (##fx+ _%i124602%_ '1)
                         (let ((_%$e124617%_ _%deleted124604%_))
                           (if _%$e124617%_ _%$e124617%_ _%probe124600%_)))
                        (if (_%test124582%_ _%key124575%_ _%k124607%_)
                            (let ()
                              (vector-set!
                               _%table124579%_
                               _%probe124600%_
                               _%key124575%_)
                              (vector-set!
                               _%table124579%_
                               (##fx+ _%probe124600%_ '1)
                               (_%update124576%_
                                (vector-ref
                                 _%table124579%_
                                 (##fx+ _%probe124600%_ '1)))))
                            (_%loop124597%_
                             (let ((_%next-probe124622%_
                                    (fx+ _%start124593%_
                                         _%i124602%_
                                         (fx* _%i124602%_ _%i124602%_))))
                               (##fxmodulo
                                _%next-probe124622%_
                                _%size124587%_))
                             (##fx+ _%i124602%_ '1)
                             _%deleted124604%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab124555%_)
        (let* ((_%old-table124557%_ (&raw-table-table _%tab124555%_))
               (_%old-size124559%_ (vector-length _%old-table124557%_))
               (_%new-size124561%_
                (if (##fx< (&raw-table-count _%tab124555%_)
                           (##fxquotient _%old-size124559%_ '4))
                    (vector-length _%old-table124557%_)
                    (##fx* '2 (vector-length _%old-table124557%_))))
               (_%new-table124563%_
                (##make-vector _%new-size124561%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab124555%_ _%new-table124563%_)
          (&raw-table-count-set! _%tab124555%_ '0)
          (&raw-table-free-set!
           _%tab124555%_
           (##fxquotient _%new-size124561%_ '2))
          (let _%lp124566%_ ((_%i124568%_ '0))
            (if (##fx< _%i124568%_ _%old-size124559%_)
                (begin
                  (let ((_%key124570%_
                         (vector-ref _%old-table124557%_ _%i124568%_)))
                    (if (if (eq? _%key124570%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key124570%_ (macro-deleted-obj))))
                        (let ((_%value124572%_
                               (vector-ref
                                _%old-table124557%_
                                (##fx+ _%i124568%_ '1))))
                          (__raw-table-set!
                           _%tab124555%_
                           _%key124570%_
                           _%value124572%_))
                        '#!void))
                  (_%lp124566%_ (##fx+ _%i124568%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj124547%_)
        (let ((_%t124549%_ (##type _%obj124547%_)))
          (if (##fx= (##fxand _%t124549%_ '1) '0)
              (fxand (##type-cast _%obj124547%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj124547%_)
                  (##symbol-hash _%obj124547%_)
                  (if (procedure? _%obj124547%_)
                      (procedure-hash _%obj124547%_)
                      (fxand (__object->eq-hash _%obj124547%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj124543%_)
        (let ((_%h124545%_
               (if (##closure? _%obj124543%_)
                   (__object->eq-hash _%obj124543%_)
                   (##type-cast _%obj124543%_ '0))))
          (fxand _%h124545%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj124541%_) (__object->eq-hash _%obj124541%_)))
    (define eqv-hash
      (lambda (_%obj124531%_)
        (letrec ((_%combine124533%_
                  (lambda (_%a124538%_ _%b124539%_)
                    (fxand (##fx* (##fx+ _%a124538%_
                                         (fxarithmetic-shift-left
                                          _%b124539%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash124534%_
                  (lambda (_%obj124536%_)
                    (macro-number-dispatch
                     _%obj124536%_
                     (eq-hash _%obj124536%_)
                     (fxand _%obj124536%_ (macro-max-fixnum32))
                     (modulo _%obj124536%_ '331804481)
                     (_%combine124533%_
                      (_%hash124534%_ (macro-ratnum-numerator _%obj124536%_))
                      (_%hash124534%_
                       (macro-ratnum-denominator _%obj124536%_)))
                     (_%combine124533%_
                      (##u16vector-ref _%obj124536%_ '0)
                      (_%combine124533%_
                       (##u16vector-ref _%obj124536%_ '1)
                       (_%combine124533%_
                        (##u16vector-ref _%obj124536%_ '2)
                        (##u16vector-ref _%obj124536%_ '3))))
                     (_%combine124533%_
                      (_%hash124534%_ (macro-cpxnum-real _%obj124536%_))
                      (_%hash124534%_ (macro-cpxnum-imag _%obj124536%_)))))))
          (_%hash124534%_ _%obj124531%_))))
    (define symbolic?
      (lambda (_%obj124526%_)
        (let ((_%$e124528%_ (symbol? _%obj124526%_)))
          (if _%$e124528%_ _%$e124528%_ (keyword? _%obj124526%_)))))
    (define symbolic-hash
      (lambda (_%obj124524%_) (##symbol-hash _%obj124524%_)))
    (define string-hash
      (lambda (_%obj124522%_) (##string=?-hash _%obj124522%_)))
    (define immediate-hash
      (lambda (_%obj124520%_) (##type-cast _%obj124520%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint124502%_ _%seed124503%_)
        (make-raw-table__1 _%size-hint124502%_ eq-hash eq? _%seed124503%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint124509%_ '#f) (_%seed124511%_ '0))
          (make-eq-table__% _%size-hint124509%_ _%seed124511%_))))
    (define make-eq-table__1
      (lambda (_%size-hint124513%_)
        (let ((_%seed124515%_ '0))
          (make-eq-table__% _%size-hint124513%_ _%seed124515%_))))
    (define make-eq-table
      (lambda _g125142_
        (let ((_g125143_ (##length _g125142_)))
          (cond ((##fx= _g125143_ 0) (apply make-eq-table__0 _g125142_))
                ((##fx= _g125143_ 1) (apply make-eq-table__1 _g125142_))
                ((##fx= _g125143_ 2) (apply make-eq-table__% _g125142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g125142_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint124482%_ _%seed124484%_)
        (make-raw-table/lock__%
         _%size-hint124482%_
         eq-hash
         eq?
         _%seed124484%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint124490%_ '#f) (_%seed124492%_ '0))
          (make-eq-table/lock__% _%size-hint124490%_ _%seed124492%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint124494%_)
        (let ((_%seed124496%_ '0))
          (make-eq-table/lock__% _%size-hint124494%_ _%seed124496%_))))
    (define make-eq-table/lock
      (lambda _g125144_
        (let ((_g125145_ (##length _g125144_)))
          (cond ((##fx= _g125145_ 0) (apply make-eq-table/lock__0 _g125144_))
                ((##fx= _g125145_ 1) (apply make-eq-table/lock__1 _g125144_))
                ((##fx= _g125145_ 2) (apply make-eq-table/lock__% _g125144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g125144_))))))
    (define eq-table-ref
      (lambda (_%tab124435%_ _%key124436%_ _%default124437%_)
        (let ((_%table124439%_ (&raw-table-table _%tab124435%_))
              (_%seed124440%_ (&raw-table-seed _%tab124435%_)))
          (let* ((_%h124442%_ (fxxor (eq-hash _%key124436%_) _%seed124440%_))
                 (_%size124445%_ (vector-length _%table124439%_))
                 (_%entries124448%_ (##fxquotient _%size124445%_ '2))
                 (_%start124451%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124442%_ _%entries124448%_)
                   '1)))
            (let _%loop124455%_ ((_%probe124458%_ _%start124451%_)
                                 (_%i124460%_ '1)
                                 (_%deleted124462%_ '#f))
              (let ((_%k124465%_ (vector-ref _%table124439%_ _%probe124458%_)))
                (if (eq? _%k124465%_ (macro-unused-obj))
                    _%default124437%_
                    (if (eq? _%k124465%_ (macro-deleted-obj))
                        (_%loop124455%_
                         (let ((_%next-probe124470%_
                                (fx+ _%start124451%_
                                     _%i124460%_
                                     (fx* _%i124460%_ _%i124460%_))))
                           (##fxmodulo _%next-probe124470%_ _%size124445%_))
                         (##fx+ _%i124460%_ '1)
                         (let ((_%$e124473%_ _%deleted124462%_))
                           (if _%$e124473%_ _%$e124473%_ _%probe124458%_)))
                        (if (eq? _%key124436%_ _%k124465%_)
                            (vector-ref
                             _%table124439%_
                             (##fx+ _%probe124458%_ '1))
                            (_%loop124455%_
                             (let ((_%next-probe124478%_
                                    (fx+ _%start124451%_
                                         _%i124460%_
                                         (fx* _%i124460%_ _%i124460%_))))
                               (##fxmodulo
                                _%next-probe124478%_
                                _%size124445%_))
                             (##fx+ _%i124460%_ '1)
                             _%deleted124462%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab124406%_ _%key124407%_ _%default124408%_)
        (let ((_%lock124410%_ (&raw-table-lock _%tab124406%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124415%_ ((_%spin124418%_ '0))
              (if (##fx= (##vector-cas! _%lock124410%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124410%_ '1 (current-thread))
                  (if (##fx< _%spin124418%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124415%_ (##fx+ _%spin124418%_ '1)))
                      (let ((_%owner124424%_ (##vector-ref _%lock124410%_ '1)))
                        (if (eq? _%owner124424%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124424%_)
                                (let () (##thread-yield!) (_%again124415%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124430%_
                 (eq-table-ref _%tab124406%_ _%key124407%_ _%default124408%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124410%_ '1 '#f)
                (##vector-cas! _%lock124410%_ '0 '0 '1)))
            _%$r124430%_))))
    (define __eq-table-set!
      (lambda (_%tab124358%_ _%key124359%_ _%value124360%_)
        (let ((_%table124362%_ (&raw-table-table _%tab124358%_))
              (_%seed124363%_ (&raw-table-seed _%tab124358%_)))
          (let* ((_%h124365%_ (fxxor (eq-hash _%key124359%_) _%seed124363%_))
                 (_%size124368%_ (vector-length _%table124362%_))
                 (_%entries124371%_ (##fxquotient _%size124368%_ '2))
                 (_%start124374%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124365%_ _%entries124371%_)
                   '1)))
            (let _%loop124378%_ ((_%probe124381%_ _%start124374%_)
                                 (_%i124383%_ '1)
                                 (_%deleted124385%_ '#f))
              (let ((_%k124388%_ (vector-ref _%table124362%_ _%probe124381%_)))
                (if (eq? _%k124388%_ (macro-unused-obj))
                    (if _%deleted124385%_
                        (begin
                          (vector-set!
                           _%table124362%_
                           _%deleted124385%_
                           _%key124359%_)
                          (vector-set!
                           _%table124362%_
                           (##fx+ _%deleted124385%_ '1)
                           _%value124360%_)
                          (&raw-table-count-set!
                           _%tab124358%_
                           (##fx+ (&raw-table-count _%tab124358%_) '1)))
                        (begin
                          (vector-set!
                           _%table124362%_
                           _%probe124381%_
                           _%key124359%_)
                          (vector-set!
                           _%table124362%_
                           (##fx+ _%probe124381%_ '1)
                           _%value124360%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab124358%_
                             (##fx- (&raw-table-free _%tab124358%_) '1))
                            (&raw-table-count-set!
                             _%tab124358%_
                             (##fx+ (&raw-table-count _%tab124358%_) '1)))))
                    (if (eq? _%k124388%_ (macro-deleted-obj))
                        (_%loop124378%_
                         (let ((_%next-probe124395%_
                                (fx+ _%start124374%_
                                     _%i124383%_
                                     (fx* _%i124383%_ _%i124383%_))))
                           (##fxmodulo _%next-probe124395%_ _%size124368%_))
                         (##fx+ _%i124383%_ '1)
                         (let ((_%$e124398%_ _%deleted124385%_))
                           (if _%$e124398%_ _%$e124398%_ _%probe124381%_)))
                        (if (eq? _%key124359%_ _%k124388%_)
                            (let ()
                              (vector-set!
                               _%table124362%_
                               _%probe124381%_
                               _%key124359%_)
                              (vector-set!
                               _%table124362%_
                               (##fx+ _%probe124381%_ '1)
                               _%value124360%_))
                            (_%loop124378%_
                             (let ((_%next-probe124403%_
                                    (fx+ _%start124374%_
                                         _%i124383%_
                                         (fx* _%i124383%_ _%i124383%_))))
                               (##fxmodulo
                                _%next-probe124403%_
                                _%size124368%_))
                             (##fx+ _%i124383%_ '1)
                             _%deleted124385%_))))))))))
    (define eq-table-set!
      (lambda (_%tab124354%_ _%key124355%_ _%value124356%_)
        (if (##fx< (&raw-table-free _%tab124354%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124354%_))
                    '4))
            (__raw-table-rehash! _%tab124354%_)
            '#!void)
        (__eq-table-set! _%tab124354%_ _%key124355%_ _%value124356%_)))
    (define eq-table-set!/lock
      (lambda (_%tab124324%_ _%key124325%_ _%value124326%_)
        (let ((_%lock124329%_ (&raw-table-lock _%tab124324%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124334%_ ((_%spin124337%_ '0))
              (if (##fx= (##vector-cas! _%lock124329%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124329%_ '1 (current-thread))
                  (if (##fx< _%spin124337%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124334%_ (##fx+ _%spin124337%_ '1)))
                      (let ((_%owner124343%_ (##vector-ref _%lock124329%_ '1)))
                        (if (eq? _%owner124343%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124343%_)
                                (let () (##thread-yield!) (_%again124334%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124349%_
                 (eq-table-set! _%tab124324%_ _%key124325%_ _%value124326%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124329%_ '1 '#f)
                (##vector-cas! _%lock124329%_ '0 '0 '1)))
            _%$r124349%_))))
    (define __eq-table-update!
      (lambda (_%tab124275%_
               _%key124276%_
               _%eq-table-update!124277%_
               _%default124278%_)
        (let ((_%table124280%_ (&raw-table-table _%tab124275%_))
              (_%seed124281%_ (&raw-table-seed _%tab124275%_)))
          (let* ((_%h124283%_ (fxxor (eq-hash _%key124276%_) _%seed124281%_))
                 (_%size124286%_ (vector-length _%table124280%_))
                 (_%entries124289%_ (##fxquotient _%size124286%_ '2))
                 (_%start124292%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124283%_ _%entries124289%_)
                   '1)))
            (let _%loop124296%_ ((_%probe124299%_ _%start124292%_)
                                 (_%i124301%_ '1)
                                 (_%deleted124303%_ '#f))
              (let ((_%k124306%_ (vector-ref _%table124280%_ _%probe124299%_)))
                (if (eq? _%k124306%_ (macro-unused-obj))
                    (if _%deleted124303%_
                        (begin
                          (vector-set!
                           _%table124280%_
                           _%deleted124303%_
                           _%key124276%_)
                          (vector-set!
                           _%table124280%_
                           (##fx+ _%deleted124303%_ '1)
                           (_%eq-table-update!124277%_ _%default124278%_))
                          (&raw-table-count-set!
                           _%tab124275%_
                           (##fx+ (&raw-table-count _%tab124275%_) '1)))
                        (begin
                          (vector-set!
                           _%table124280%_
                           _%probe124299%_
                           _%key124276%_)
                          (vector-set!
                           _%table124280%_
                           (##fx+ _%probe124299%_ '1)
                           (_%eq-table-update!124277%_ _%default124278%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab124275%_
                             (##fx- (&raw-table-free _%tab124275%_) '1))
                            (&raw-table-count-set!
                             _%tab124275%_
                             (##fx+ (&raw-table-count _%tab124275%_) '1)))))
                    (if (eq? _%k124306%_ (macro-deleted-obj))
                        (_%loop124296%_
                         (let ((_%next-probe124313%_
                                (fx+ _%start124292%_
                                     _%i124301%_
                                     (fx* _%i124301%_ _%i124301%_))))
                           (##fxmodulo _%next-probe124313%_ _%size124286%_))
                         (##fx+ _%i124301%_ '1)
                         (let ((_%$e124316%_ _%deleted124303%_))
                           (if _%$e124316%_ _%$e124316%_ _%probe124299%_)))
                        (if (eq? _%key124276%_ _%k124306%_)
                            (let ()
                              (vector-set!
                               _%table124280%_
                               _%probe124299%_
                               _%key124276%_)
                              (vector-set!
                               _%table124280%_
                               (##fx+ _%probe124299%_ '1)
                               (_%eq-table-update!124277%_
                                (vector-ref
                                 _%table124280%_
                                 (##fx+ _%probe124299%_ '1)))))
                            (_%loop124296%_
                             (let ((_%next-probe124321%_
                                    (fx+ _%start124292%_
                                         _%i124301%_
                                         (fx* _%i124301%_ _%i124301%_))))
                               (##fxmodulo
                                _%next-probe124321%_
                                _%size124286%_))
                             (##fx+ _%i124301%_ '1)
                             _%deleted124303%_))))))))))
    (define eq-table-update!
      (lambda (_%tab124270%_
               _%key124271%_
               _%eq-table-update!124272%_
               _%default124273%_)
        (if (##fx< (&raw-table-free _%tab124270%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124270%_))
                    '4))
            (__raw-table-rehash! _%tab124270%_)
            '#!void)
        (__eq-table-update!
         _%tab124270%_
         _%key124271%_
         _%eq-table-update!124272%_
         _%default124273%_)))
    (define eq-table-update!/lock
      (lambda (_%tab124239%_
               _%key124240%_
               _%eq-table-update!124241%_
               _%default124242%_)
        (let ((_%lock124245%_ (&raw-table-lock _%tab124239%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124250%_ ((_%spin124253%_ '0))
              (if (##fx= (##vector-cas! _%lock124245%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124245%_ '1 (current-thread))
                  (if (##fx< _%spin124253%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124250%_ (##fx+ _%spin124253%_ '1)))
                      (let ((_%owner124259%_ (##vector-ref _%lock124245%_ '1)))
                        (if (eq? _%owner124259%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124259%_)
                                (let () (##thread-yield!) (_%again124250%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124265%_
                 (_%eq-table-update!124241%_
                  _%tab124239%_
                  _%key124240%_
                  _%eq-table-update!124241%_
                  _%default124242%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124245%_ '1 '#f)
                (##vector-cas! _%lock124245%_ '0 '0 '1)))
            _%$r124265%_))))
    (define eq-table-delete!
      (lambda (_%tab124196%_ _%key124197%_)
        (let ((_%table124199%_ (&raw-table-table _%tab124196%_))
              (_%seed124201%_ (&raw-table-seed _%tab124196%_)))
          (let* ((_%h124204%_ (fxxor (eq-hash _%key124197%_) _%seed124201%_))
                 (_%size124207%_ (vector-length _%table124199%_))
                 (_%entries124210%_ (##fxquotient _%size124207%_ '2))
                 (_%start124213%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124204%_ _%entries124210%_)
                   '1)))
            (let _%loop124217%_ ((_%probe124220%_ _%start124213%_)
                                 (_%i124222%_ '1))
              (let ((_%k124225%_ (vector-ref _%table124199%_ _%probe124220%_)))
                (if (eq? _%k124225%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k124225%_ (macro-deleted-obj))
                        (_%loop124217%_
                         (let ((_%next-probe124230%_
                                (fx+ _%start124213%_
                                     _%i124222%_
                                     (fx* _%i124222%_ _%i124222%_))))
                           (##fxmodulo _%next-probe124230%_ _%size124207%_))
                         (##fx+ _%i124222%_ '1))
                        (if (eq? _%key124197%_ _%k124225%_)
                            (let ()
                              (vector-set!
                               _%table124199%_
                               _%probe124220%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table124199%_
                               (##fx+ _%probe124220%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab124196%_
                               (##fx- (&raw-table-count _%tab124196%_) '1)))
                            (_%loop124217%_
                             (let ((_%next-probe124236%_
                                    (fx+ _%start124213%_
                                         _%i124222%_
                                         (fx* _%i124222%_ _%i124222%_))))
                               (##fxmodulo
                                _%next-probe124236%_
                                _%size124207%_))
                             (##fx+ _%i124222%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab124166%_ _%key124168%_)
        (let ((_%lock124171%_ (&raw-table-lock _%tab124166%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124176%_ ((_%spin124179%_ '0))
              (if (##fx= (##vector-cas! _%lock124171%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124171%_ '1 (current-thread))
                  (if (##fx< _%spin124179%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124176%_ (##fx+ _%spin124179%_ '1)))
                      (let ((_%owner124185%_ (##vector-ref _%lock124171%_ '1)))
                        (if (eq? _%owner124185%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124185%_)
                                (let () (##thread-yield!) (_%again124176%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124191%_ (eq-table-delete! _%tab124166%_ _%key124168%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124171%_ '1 '#f)
                (##vector-cas! _%lock124171%_ '0 '0 '1)))
            _%$r124191%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint124148%_ _%seed124149%_)
        (make-raw-table__1 _%size-hint124148%_ eqv-hash eqv? _%seed124149%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint124155%_ '#f) (_%seed124157%_ '0))
          (make-eqv-table__% _%size-hint124155%_ _%seed124157%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint124159%_)
        (let ((_%seed124161%_ '0))
          (make-eqv-table__% _%size-hint124159%_ _%seed124161%_))))
    (define make-eqv-table
      (lambda _g125146_
        (let ((_g125147_ (##length _g125146_)))
          (cond ((##fx= _g125147_ 0) (apply make-eqv-table__0 _g125146_))
                ((##fx= _g125147_ 1) (apply make-eqv-table__1 _g125146_))
                ((##fx= _g125147_ 2) (apply make-eqv-table__% _g125146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g125146_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint124128%_ _%seed124130%_)
        (make-raw-table/lock__%
         _%size-hint124128%_
         eqv-hash
         eqv?
         _%seed124130%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint124136%_ '#f) (_%seed124138%_ '0))
          (make-eqv-table/lock__% _%size-hint124136%_ _%seed124138%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint124140%_)
        (let ((_%seed124142%_ '0))
          (make-eqv-table/lock__% _%size-hint124140%_ _%seed124142%_))))
    (define make-eqv-table/lock
      (lambda _g125148_
        (let ((_g125149_ (##length _g125148_)))
          (cond ((##fx= _g125149_ 0) (apply make-eqv-table/lock__0 _g125148_))
                ((##fx= _g125149_ 1) (apply make-eqv-table/lock__1 _g125148_))
                ((##fx= _g125149_ 2) (apply make-eqv-table/lock__% _g125148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g125148_))))))
    (define eqv-table-ref
      (lambda (_%tab124081%_ _%key124082%_ _%default124083%_)
        (let ((_%table124085%_ (&raw-table-table _%tab124081%_))
              (_%seed124086%_ (&raw-table-seed _%tab124081%_)))
          (let* ((_%h124088%_ (fxxor (eqv-hash _%key124082%_) _%seed124086%_))
                 (_%size124091%_ (vector-length _%table124085%_))
                 (_%entries124094%_ (##fxquotient _%size124091%_ '2))
                 (_%start124097%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124088%_ _%entries124094%_)
                   '1)))
            (let _%loop124101%_ ((_%probe124104%_ _%start124097%_)
                                 (_%i124106%_ '1)
                                 (_%deleted124108%_ '#f))
              (let ((_%k124111%_ (vector-ref _%table124085%_ _%probe124104%_)))
                (if (eq? _%k124111%_ (macro-unused-obj))
                    _%default124083%_
                    (if (eq? _%k124111%_ (macro-deleted-obj))
                        (_%loop124101%_
                         (let ((_%next-probe124116%_
                                (fx+ _%start124097%_
                                     _%i124106%_
                                     (fx* _%i124106%_ _%i124106%_))))
                           (##fxmodulo _%next-probe124116%_ _%size124091%_))
                         (##fx+ _%i124106%_ '1)
                         (let ((_%$e124119%_ _%deleted124108%_))
                           (if _%$e124119%_ _%$e124119%_ _%probe124104%_)))
                        (if (eqv? _%key124082%_ _%k124111%_)
                            (vector-ref
                             _%table124085%_
                             (##fx+ _%probe124104%_ '1))
                            (_%loop124101%_
                             (let ((_%next-probe124124%_
                                    (fx+ _%start124097%_
                                         _%i124106%_
                                         (fx* _%i124106%_ _%i124106%_))))
                               (##fxmodulo
                                _%next-probe124124%_
                                _%size124091%_))
                             (##fx+ _%i124106%_ '1)
                             _%deleted124108%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab124052%_ _%key124053%_ _%default124054%_)
        (let ((_%lock124056%_ (&raw-table-lock _%tab124052%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124061%_ ((_%spin124064%_ '0))
              (if (##fx= (##vector-cas! _%lock124056%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124056%_ '1 (current-thread))
                  (if (##fx< _%spin124064%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124061%_ (##fx+ _%spin124064%_ '1)))
                      (let ((_%owner124070%_ (##vector-ref _%lock124056%_ '1)))
                        (if (eq? _%owner124070%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124070%_)
                                (let () (##thread-yield!) (_%again124061%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124076%_
                 (eqv-table-ref
                  _%tab124052%_
                  _%key124053%_
                  _%default124054%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124056%_ '1 '#f)
                (##vector-cas! _%lock124056%_ '0 '0 '1)))
            _%$r124076%_))))
    (define __eqv-table-set!
      (lambda (_%tab124004%_ _%key124005%_ _%value124006%_)
        (let ((_%table124008%_ (&raw-table-table _%tab124004%_))
              (_%seed124009%_ (&raw-table-seed _%tab124004%_)))
          (let* ((_%h124011%_ (fxxor (eqv-hash _%key124005%_) _%seed124009%_))
                 (_%size124014%_ (vector-length _%table124008%_))
                 (_%entries124017%_ (##fxquotient _%size124014%_ '2))
                 (_%start124020%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124011%_ _%entries124017%_)
                   '1)))
            (let _%loop124024%_ ((_%probe124027%_ _%start124020%_)
                                 (_%i124029%_ '1)
                                 (_%deleted124031%_ '#f))
              (let ((_%k124034%_ (vector-ref _%table124008%_ _%probe124027%_)))
                (if (eq? _%k124034%_ (macro-unused-obj))
                    (if _%deleted124031%_
                        (begin
                          (vector-set!
                           _%table124008%_
                           _%deleted124031%_
                           _%key124005%_)
                          (vector-set!
                           _%table124008%_
                           (##fx+ _%deleted124031%_ '1)
                           _%value124006%_)
                          (&raw-table-count-set!
                           _%tab124004%_
                           (##fx+ (&raw-table-count _%tab124004%_) '1)))
                        (begin
                          (vector-set!
                           _%table124008%_
                           _%probe124027%_
                           _%key124005%_)
                          (vector-set!
                           _%table124008%_
                           (##fx+ _%probe124027%_ '1)
                           _%value124006%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab124004%_
                             (##fx- (&raw-table-free _%tab124004%_) '1))
                            (&raw-table-count-set!
                             _%tab124004%_
                             (##fx+ (&raw-table-count _%tab124004%_) '1)))))
                    (if (eq? _%k124034%_ (macro-deleted-obj))
                        (_%loop124024%_
                         (let ((_%next-probe124041%_
                                (fx+ _%start124020%_
                                     _%i124029%_
                                     (fx* _%i124029%_ _%i124029%_))))
                           (##fxmodulo _%next-probe124041%_ _%size124014%_))
                         (##fx+ _%i124029%_ '1)
                         (let ((_%$e124044%_ _%deleted124031%_))
                           (if _%$e124044%_ _%$e124044%_ _%probe124027%_)))
                        (if (eqv? _%key124005%_ _%k124034%_)
                            (let ()
                              (vector-set!
                               _%table124008%_
                               _%probe124027%_
                               _%key124005%_)
                              (vector-set!
                               _%table124008%_
                               (##fx+ _%probe124027%_ '1)
                               _%value124006%_))
                            (_%loop124024%_
                             (let ((_%next-probe124049%_
                                    (fx+ _%start124020%_
                                         _%i124029%_
                                         (fx* _%i124029%_ _%i124029%_))))
                               (##fxmodulo
                                _%next-probe124049%_
                                _%size124014%_))
                             (##fx+ _%i124029%_ '1)
                             _%deleted124031%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab124000%_ _%key124001%_ _%value124002%_)
        (if (##fx< (&raw-table-free _%tab124000%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124000%_))
                    '4))
            (__raw-table-rehash! _%tab124000%_)
            '#!void)
        (__eqv-table-set! _%tab124000%_ _%key124001%_ _%value124002%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab123970%_ _%key123971%_ _%value123972%_)
        (let ((_%lock123975%_ (&raw-table-lock _%tab123970%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123980%_ ((_%spin123983%_ '0))
              (if (##fx= (##vector-cas! _%lock123975%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123975%_ '1 (current-thread))
                  (if (##fx< _%spin123983%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123980%_ (##fx+ _%spin123983%_ '1)))
                      (let ((_%owner123989%_ (##vector-ref _%lock123975%_ '1)))
                        (if (eq? _%owner123989%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123989%_)
                                (let () (##thread-yield!) (_%again123980%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123995%_
                 (eqv-table-set! _%tab123970%_ _%key123971%_ _%value123972%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123975%_ '1 '#f)
                (##vector-cas! _%lock123975%_ '0 '0 '1)))
            _%$r123995%_))))
    (define __eqv-table-update!
      (lambda (_%tab123921%_
               _%key123922%_
               _%eqv-table-update!123923%_
               _%default123924%_)
        (let ((_%table123926%_ (&raw-table-table _%tab123921%_))
              (_%seed123927%_ (&raw-table-seed _%tab123921%_)))
          (let* ((_%h123929%_ (fxxor (eqv-hash _%key123922%_) _%seed123927%_))
                 (_%size123932%_ (vector-length _%table123926%_))
                 (_%entries123935%_ (##fxquotient _%size123932%_ '2))
                 (_%start123938%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123929%_ _%entries123935%_)
                   '1)))
            (let _%loop123942%_ ((_%probe123945%_ _%start123938%_)
                                 (_%i123947%_ '1)
                                 (_%deleted123949%_ '#f))
              (let ((_%k123952%_ (vector-ref _%table123926%_ _%probe123945%_)))
                (if (eq? _%k123952%_ (macro-unused-obj))
                    (if _%deleted123949%_
                        (begin
                          (vector-set!
                           _%table123926%_
                           _%deleted123949%_
                           _%key123922%_)
                          (vector-set!
                           _%table123926%_
                           (##fx+ _%deleted123949%_ '1)
                           (_%eqv-table-update!123923%_ _%default123924%_))
                          (&raw-table-count-set!
                           _%tab123921%_
                           (##fx+ (&raw-table-count _%tab123921%_) '1)))
                        (begin
                          (vector-set!
                           _%table123926%_
                           _%probe123945%_
                           _%key123922%_)
                          (vector-set!
                           _%table123926%_
                           (##fx+ _%probe123945%_ '1)
                           (_%eqv-table-update!123923%_ _%default123924%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab123921%_
                             (##fx- (&raw-table-free _%tab123921%_) '1))
                            (&raw-table-count-set!
                             _%tab123921%_
                             (##fx+ (&raw-table-count _%tab123921%_) '1)))))
                    (if (eq? _%k123952%_ (macro-deleted-obj))
                        (_%loop123942%_
                         (let ((_%next-probe123959%_
                                (fx+ _%start123938%_
                                     _%i123947%_
                                     (fx* _%i123947%_ _%i123947%_))))
                           (##fxmodulo _%next-probe123959%_ _%size123932%_))
                         (##fx+ _%i123947%_ '1)
                         (let ((_%$e123962%_ _%deleted123949%_))
                           (if _%$e123962%_ _%$e123962%_ _%probe123945%_)))
                        (if (eqv? _%key123922%_ _%k123952%_)
                            (let ()
                              (vector-set!
                               _%table123926%_
                               _%probe123945%_
                               _%key123922%_)
                              (vector-set!
                               _%table123926%_
                               (##fx+ _%probe123945%_ '1)
                               (_%eqv-table-update!123923%_
                                (vector-ref
                                 _%table123926%_
                                 (##fx+ _%probe123945%_ '1)))))
                            (_%loop123942%_
                             (let ((_%next-probe123967%_
                                    (fx+ _%start123938%_
                                         _%i123947%_
                                         (fx* _%i123947%_ _%i123947%_))))
                               (##fxmodulo
                                _%next-probe123967%_
                                _%size123932%_))
                             (##fx+ _%i123947%_ '1)
                             _%deleted123949%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab123916%_
               _%key123917%_
               _%eqv-table-update!123918%_
               _%default123919%_)
        (if (##fx< (&raw-table-free _%tab123916%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123916%_))
                    '4))
            (__raw-table-rehash! _%tab123916%_)
            '#!void)
        (__eqv-table-update!
         _%tab123916%_
         _%key123917%_
         _%eqv-table-update!123918%_
         _%default123919%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab123885%_
               _%key123886%_
               _%eqv-table-update!123887%_
               _%default123888%_)
        (let ((_%lock123891%_ (&raw-table-lock _%tab123885%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123896%_ ((_%spin123899%_ '0))
              (if (##fx= (##vector-cas! _%lock123891%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123891%_ '1 (current-thread))
                  (if (##fx< _%spin123899%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123896%_ (##fx+ _%spin123899%_ '1)))
                      (let ((_%owner123905%_ (##vector-ref _%lock123891%_ '1)))
                        (if (eq? _%owner123905%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123905%_)
                                (let () (##thread-yield!) (_%again123896%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123911%_
                 (_%eqv-table-update!123887%_
                  _%tab123885%_
                  _%key123886%_
                  _%eqv-table-update!123887%_
                  _%default123888%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123891%_ '1 '#f)
                (##vector-cas! _%lock123891%_ '0 '0 '1)))
            _%$r123911%_))))
    (define eqv-table-delete!
      (lambda (_%tab123842%_ _%key123843%_)
        (let ((_%table123845%_ (&raw-table-table _%tab123842%_))
              (_%seed123847%_ (&raw-table-seed _%tab123842%_)))
          (let* ((_%h123850%_ (fxxor (eqv-hash _%key123843%_) _%seed123847%_))
                 (_%size123853%_ (vector-length _%table123845%_))
                 (_%entries123856%_ (##fxquotient _%size123853%_ '2))
                 (_%start123859%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123850%_ _%entries123856%_)
                   '1)))
            (let _%loop123863%_ ((_%probe123866%_ _%start123859%_)
                                 (_%i123868%_ '1))
              (let ((_%k123871%_ (vector-ref _%table123845%_ _%probe123866%_)))
                (if (eq? _%k123871%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k123871%_ (macro-deleted-obj))
                        (_%loop123863%_
                         (let ((_%next-probe123876%_
                                (fx+ _%start123859%_
                                     _%i123868%_
                                     (fx* _%i123868%_ _%i123868%_))))
                           (##fxmodulo _%next-probe123876%_ _%size123853%_))
                         (##fx+ _%i123868%_ '1))
                        (if (eqv? _%key123843%_ _%k123871%_)
                            (let ()
                              (vector-set!
                               _%table123845%_
                               _%probe123866%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table123845%_
                               (##fx+ _%probe123866%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab123842%_
                               (##fx- (&raw-table-count _%tab123842%_) '1)))
                            (_%loop123863%_
                             (let ((_%next-probe123882%_
                                    (fx+ _%start123859%_
                                         _%i123868%_
                                         (fx* _%i123868%_ _%i123868%_))))
                               (##fxmodulo
                                _%next-probe123882%_
                                _%size123853%_))
                             (##fx+ _%i123868%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab123812%_ _%key123814%_)
        (let ((_%lock123817%_ (&raw-table-lock _%tab123812%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123822%_ ((_%spin123825%_ '0))
              (if (##fx= (##vector-cas! _%lock123817%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123817%_ '1 (current-thread))
                  (if (##fx< _%spin123825%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123822%_ (##fx+ _%spin123825%_ '1)))
                      (let ((_%owner123831%_ (##vector-ref _%lock123817%_ '1)))
                        (if (eq? _%owner123831%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123831%_)
                                (let () (##thread-yield!) (_%again123822%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123837%_ (eqv-table-delete! _%tab123812%_ _%key123814%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123817%_ '1 '#f)
                (##vector-cas! _%lock123817%_ '0 '0 '1)))
            _%$r123837%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint123794%_ _%seed123795%_)
        (make-raw-table__1
         _%size-hint123794%_
         symbolic-hash
         eq?
         _%seed123795%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint123801%_ '#f) (_%seed123803%_ '0))
          (make-symbolic-table__% _%size-hint123801%_ _%seed123803%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint123805%_)
        (let ((_%seed123807%_ '0))
          (make-symbolic-table__% _%size-hint123805%_ _%seed123807%_))))
    (define make-symbolic-table
      (lambda _g125150_
        (let ((_g125151_ (##length _g125150_)))
          (cond ((##fx= _g125151_ 0) (apply make-symbolic-table__0 _g125150_))
                ((##fx= _g125151_ 1) (apply make-symbolic-table__1 _g125150_))
                ((##fx= _g125151_ 2) (apply make-symbolic-table__% _g125150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g125150_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint123774%_ _%seed123776%_)
        (make-raw-table/lock__%
         _%size-hint123774%_
         symbolic-hash
         eq?
         _%seed123776%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint123782%_ '#f) (_%seed123784%_ '0))
          (make-symbolic-table/lock__% _%size-hint123782%_ _%seed123784%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint123786%_)
        (let ((_%seed123788%_ '0))
          (make-symbolic-table/lock__% _%size-hint123786%_ _%seed123788%_))))
    (define make-symbolic-table/lock
      (lambda _g125152_
        (let ((_g125153_ (##length _g125152_)))
          (cond ((##fx= _g125153_ 0)
                 (apply make-symbolic-table/lock__0 _g125152_))
                ((##fx= _g125153_ 1)
                 (apply make-symbolic-table/lock__1 _g125152_))
                ((##fx= _g125153_ 2)
                 (apply make-symbolic-table/lock__% _g125152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g125152_))))))
    (define symbolic-table-ref
      (lambda (_%tab123727%_ _%key123728%_ _%default123729%_)
        (let ((_%table123731%_ (&raw-table-table _%tab123727%_))
              (_%seed123732%_ (&raw-table-seed _%tab123727%_)))
          (let* ((_%h123734%_
                  (fxxor (##symbol-hash _%key123728%_) _%seed123732%_))
                 (_%size123737%_ (vector-length _%table123731%_))
                 (_%entries123740%_ (##fxquotient _%size123737%_ '2))
                 (_%start123743%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123734%_ _%entries123740%_)
                   '1)))
            (let _%loop123747%_ ((_%probe123750%_ _%start123743%_)
                                 (_%i123752%_ '1)
                                 (_%deleted123754%_ '#f))
              (let ((_%k123757%_ (vector-ref _%table123731%_ _%probe123750%_)))
                (if (eq? _%k123757%_ (macro-unused-obj))
                    _%default123729%_
                    (if (eq? _%k123757%_ (macro-deleted-obj))
                        (_%loop123747%_
                         (let ((_%next-probe123762%_
                                (fx+ _%start123743%_
                                     _%i123752%_
                                     (fx* _%i123752%_ _%i123752%_))))
                           (##fxmodulo _%next-probe123762%_ _%size123737%_))
                         (##fx+ _%i123752%_ '1)
                         (let ((_%$e123765%_ _%deleted123754%_))
                           (if _%$e123765%_ _%$e123765%_ _%probe123750%_)))
                        (if (eq? _%key123728%_ _%k123757%_)
                            (vector-ref
                             _%table123731%_
                             (##fx+ _%probe123750%_ '1))
                            (_%loop123747%_
                             (let ((_%next-probe123770%_
                                    (fx+ _%start123743%_
                                         _%i123752%_
                                         (fx* _%i123752%_ _%i123752%_))))
                               (##fxmodulo
                                _%next-probe123770%_
                                _%size123737%_))
                             (##fx+ _%i123752%_ '1)
                             _%deleted123754%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab123698%_ _%key123699%_ _%default123700%_)
        (let ((_%lock123702%_ (&raw-table-lock _%tab123698%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123707%_ ((_%spin123710%_ '0))
              (if (##fx= (##vector-cas! _%lock123702%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123702%_ '1 (current-thread))
                  (if (##fx< _%spin123710%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123707%_ (##fx+ _%spin123710%_ '1)))
                      (let ((_%owner123716%_ (##vector-ref _%lock123702%_ '1)))
                        (if (eq? _%owner123716%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123716%_)
                                (let () (##thread-yield!) (_%again123707%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123722%_
                 (symbolic-table-ref
                  _%tab123698%_
                  _%key123699%_
                  _%default123700%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123702%_ '1 '#f)
                (##vector-cas! _%lock123702%_ '0 '0 '1)))
            _%$r123722%_))))
    (define __symbolic-table-set!
      (lambda (_%tab123650%_ _%key123651%_ _%value123652%_)
        (let ((_%table123654%_ (&raw-table-table _%tab123650%_))
              (_%seed123655%_ (&raw-table-seed _%tab123650%_)))
          (let* ((_%h123657%_
                  (fxxor (##symbol-hash _%key123651%_) _%seed123655%_))
                 (_%size123660%_ (vector-length _%table123654%_))
                 (_%entries123663%_ (##fxquotient _%size123660%_ '2))
                 (_%start123666%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123657%_ _%entries123663%_)
                   '1)))
            (let _%loop123670%_ ((_%probe123673%_ _%start123666%_)
                                 (_%i123675%_ '1)
                                 (_%deleted123677%_ '#f))
              (let ((_%k123680%_ (vector-ref _%table123654%_ _%probe123673%_)))
                (if (eq? _%k123680%_ (macro-unused-obj))
                    (if _%deleted123677%_
                        (begin
                          (vector-set!
                           _%table123654%_
                           _%deleted123677%_
                           _%key123651%_)
                          (vector-set!
                           _%table123654%_
                           (##fx+ _%deleted123677%_ '1)
                           _%value123652%_)
                          (&raw-table-count-set!
                           _%tab123650%_
                           (##fx+ (&raw-table-count _%tab123650%_) '1)))
                        (begin
                          (vector-set!
                           _%table123654%_
                           _%probe123673%_
                           _%key123651%_)
                          (vector-set!
                           _%table123654%_
                           (##fx+ _%probe123673%_ '1)
                           _%value123652%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab123650%_
                             (##fx- (&raw-table-free _%tab123650%_) '1))
                            (&raw-table-count-set!
                             _%tab123650%_
                             (##fx+ (&raw-table-count _%tab123650%_) '1)))))
                    (if (eq? _%k123680%_ (macro-deleted-obj))
                        (_%loop123670%_
                         (let ((_%next-probe123687%_
                                (fx+ _%start123666%_
                                     _%i123675%_
                                     (fx* _%i123675%_ _%i123675%_))))
                           (##fxmodulo _%next-probe123687%_ _%size123660%_))
                         (##fx+ _%i123675%_ '1)
                         (let ((_%$e123690%_ _%deleted123677%_))
                           (if _%$e123690%_ _%$e123690%_ _%probe123673%_)))
                        (if (eq? _%key123651%_ _%k123680%_)
                            (let ()
                              (vector-set!
                               _%table123654%_
                               _%probe123673%_
                               _%key123651%_)
                              (vector-set!
                               _%table123654%_
                               (##fx+ _%probe123673%_ '1)
                               _%value123652%_))
                            (_%loop123670%_
                             (let ((_%next-probe123695%_
                                    (fx+ _%start123666%_
                                         _%i123675%_
                                         (fx* _%i123675%_ _%i123675%_))))
                               (##fxmodulo
                                _%next-probe123695%_
                                _%size123660%_))
                             (##fx+ _%i123675%_ '1)
                             _%deleted123677%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab123646%_ _%key123647%_ _%value123648%_)
        (if (##fx< (&raw-table-free _%tab123646%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123646%_))
                    '4))
            (__raw-table-rehash! _%tab123646%_)
            '#!void)
        (__symbolic-table-set! _%tab123646%_ _%key123647%_ _%value123648%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab123616%_ _%key123617%_ _%value123618%_)
        (let ((_%lock123621%_ (&raw-table-lock _%tab123616%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123626%_ ((_%spin123629%_ '0))
              (if (##fx= (##vector-cas! _%lock123621%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123621%_ '1 (current-thread))
                  (if (##fx< _%spin123629%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123626%_ (##fx+ _%spin123629%_ '1)))
                      (let ((_%owner123635%_ (##vector-ref _%lock123621%_ '1)))
                        (if (eq? _%owner123635%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123635%_)
                                (let () (##thread-yield!) (_%again123626%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123641%_
                 (symbolic-table-set!
                  _%tab123616%_
                  _%key123617%_
                  _%value123618%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123621%_ '1 '#f)
                (##vector-cas! _%lock123621%_ '0 '0 '1)))
            _%$r123641%_))))
    (define __symbolic-table-update!
      (lambda (_%tab123567%_
               _%key123568%_
               _%symbolic-table-update!123569%_
               _%default123570%_)
        (let ((_%table123572%_ (&raw-table-table _%tab123567%_))
              (_%seed123573%_ (&raw-table-seed _%tab123567%_)))
          (let* ((_%h123575%_
                  (fxxor (##symbol-hash _%key123568%_) _%seed123573%_))
                 (_%size123578%_ (vector-length _%table123572%_))
                 (_%entries123581%_ (##fxquotient _%size123578%_ '2))
                 (_%start123584%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123575%_ _%entries123581%_)
                   '1)))
            (let _%loop123588%_ ((_%probe123591%_ _%start123584%_)
                                 (_%i123593%_ '1)
                                 (_%deleted123595%_ '#f))
              (let ((_%k123598%_ (vector-ref _%table123572%_ _%probe123591%_)))
                (if (eq? _%k123598%_ (macro-unused-obj))
                    (if _%deleted123595%_
                        (begin
                          (vector-set!
                           _%table123572%_
                           _%deleted123595%_
                           _%key123568%_)
                          (vector-set!
                           _%table123572%_
                           (##fx+ _%deleted123595%_ '1)
                           (_%symbolic-table-update!123569%_
                            _%default123570%_))
                          (&raw-table-count-set!
                           _%tab123567%_
                           (##fx+ (&raw-table-count _%tab123567%_) '1)))
                        (begin
                          (vector-set!
                           _%table123572%_
                           _%probe123591%_
                           _%key123568%_)
                          (vector-set!
                           _%table123572%_
                           (##fx+ _%probe123591%_ '1)
                           (_%symbolic-table-update!123569%_
                            _%default123570%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab123567%_
                             (##fx- (&raw-table-free _%tab123567%_) '1))
                            (&raw-table-count-set!
                             _%tab123567%_
                             (##fx+ (&raw-table-count _%tab123567%_) '1)))))
                    (if (eq? _%k123598%_ (macro-deleted-obj))
                        (_%loop123588%_
                         (let ((_%next-probe123605%_
                                (fx+ _%start123584%_
                                     _%i123593%_
                                     (fx* _%i123593%_ _%i123593%_))))
                           (##fxmodulo _%next-probe123605%_ _%size123578%_))
                         (##fx+ _%i123593%_ '1)
                         (let ((_%$e123608%_ _%deleted123595%_))
                           (if _%$e123608%_ _%$e123608%_ _%probe123591%_)))
                        (if (eq? _%key123568%_ _%k123598%_)
                            (let ()
                              (vector-set!
                               _%table123572%_
                               _%probe123591%_
                               _%key123568%_)
                              (vector-set!
                               _%table123572%_
                               (##fx+ _%probe123591%_ '1)
                               (_%symbolic-table-update!123569%_
                                (vector-ref
                                 _%table123572%_
                                 (##fx+ _%probe123591%_ '1)))))
                            (_%loop123588%_
                             (let ((_%next-probe123613%_
                                    (fx+ _%start123584%_
                                         _%i123593%_
                                         (fx* _%i123593%_ _%i123593%_))))
                               (##fxmodulo
                                _%next-probe123613%_
                                _%size123578%_))
                             (##fx+ _%i123593%_ '1)
                             _%deleted123595%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab123562%_
               _%key123563%_
               _%symbolic-table-update!123564%_
               _%default123565%_)
        (if (##fx< (&raw-table-free _%tab123562%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123562%_))
                    '4))
            (__raw-table-rehash! _%tab123562%_)
            '#!void)
        (__symbolic-table-update!
         _%tab123562%_
         _%key123563%_
         _%symbolic-table-update!123564%_
         _%default123565%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab123531%_
               _%key123532%_
               _%symbolic-table-update!123533%_
               _%default123534%_)
        (let ((_%lock123537%_ (&raw-table-lock _%tab123531%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123542%_ ((_%spin123545%_ '0))
              (if (##fx= (##vector-cas! _%lock123537%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123537%_ '1 (current-thread))
                  (if (##fx< _%spin123545%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123542%_ (##fx+ _%spin123545%_ '1)))
                      (let ((_%owner123551%_ (##vector-ref _%lock123537%_ '1)))
                        (if (eq? _%owner123551%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123551%_)
                                (let () (##thread-yield!) (_%again123542%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123557%_
                 (_%symbolic-table-update!123533%_
                  _%tab123531%_
                  _%key123532%_
                  _%symbolic-table-update!123533%_
                  _%default123534%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123537%_ '1 '#f)
                (##vector-cas! _%lock123537%_ '0 '0 '1)))
            _%$r123557%_))))
    (define symbolic-table-delete!
      (lambda (_%tab123488%_ _%key123489%_)
        (let ((_%table123491%_ (&raw-table-table _%tab123488%_))
              (_%seed123493%_ (&raw-table-seed _%tab123488%_)))
          (let* ((_%h123496%_
                  (fxxor (##symbol-hash _%key123489%_) _%seed123493%_))
                 (_%size123499%_ (vector-length _%table123491%_))
                 (_%entries123502%_ (##fxquotient _%size123499%_ '2))
                 (_%start123505%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123496%_ _%entries123502%_)
                   '1)))
            (let _%loop123509%_ ((_%probe123512%_ _%start123505%_)
                                 (_%i123514%_ '1))
              (let ((_%k123517%_ (vector-ref _%table123491%_ _%probe123512%_)))
                (if (eq? _%k123517%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k123517%_ (macro-deleted-obj))
                        (_%loop123509%_
                         (let ((_%next-probe123522%_
                                (fx+ _%start123505%_
                                     _%i123514%_
                                     (fx* _%i123514%_ _%i123514%_))))
                           (##fxmodulo _%next-probe123522%_ _%size123499%_))
                         (##fx+ _%i123514%_ '1))
                        (if (eq? _%key123489%_ _%k123517%_)
                            (let ()
                              (vector-set!
                               _%table123491%_
                               _%probe123512%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table123491%_
                               (##fx+ _%probe123512%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab123488%_
                               (##fx- (&raw-table-count _%tab123488%_) '1)))
                            (_%loop123509%_
                             (let ((_%next-probe123528%_
                                    (fx+ _%start123505%_
                                         _%i123514%_
                                         (fx* _%i123514%_ _%i123514%_))))
                               (##fxmodulo
                                _%next-probe123528%_
                                _%size123499%_))
                             (##fx+ _%i123514%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab123458%_ _%key123460%_)
        (let ((_%lock123463%_ (&raw-table-lock _%tab123458%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123468%_ ((_%spin123471%_ '0))
              (if (##fx= (##vector-cas! _%lock123463%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123463%_ '1 (current-thread))
                  (if (##fx< _%spin123471%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123468%_ (##fx+ _%spin123471%_ '1)))
                      (let ((_%owner123477%_ (##vector-ref _%lock123463%_ '1)))
                        (if (eq? _%owner123477%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123477%_)
                                (let () (##thread-yield!) (_%again123468%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123483%_
                 (symbolic-table-delete! _%tab123458%_ _%key123460%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123463%_ '1 '#f)
                (##vector-cas! _%lock123463%_ '0 '0 '1)))
            _%$r123483%_))))
    (define make-string-table__%
      (lambda (_%size-hint123440%_ _%seed123441%_)
        (make-raw-table__1
         _%size-hint123440%_
         string-hash
         ##string=?
         _%seed123441%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint123447%_ '#f) (_%seed123449%_ '0))
          (make-string-table__% _%size-hint123447%_ _%seed123449%_))))
    (define make-string-table__1
      (lambda (_%size-hint123451%_)
        (let ((_%seed123453%_ '0))
          (make-string-table__% _%size-hint123451%_ _%seed123453%_))))
    (define make-string-table
      (lambda _g125154_
        (let ((_g125155_ (##length _g125154_)))
          (cond ((##fx= _g125155_ 0) (apply make-string-table__0 _g125154_))
                ((##fx= _g125155_ 1) (apply make-string-table__1 _g125154_))
                ((##fx= _g125155_ 2) (apply make-string-table__% _g125154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g125154_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint123420%_ _%seed123422%_)
        (make-raw-table/lock__%
         _%size-hint123420%_
         string-hash
         ##string=?
         _%seed123422%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint123428%_ '#f) (_%seed123430%_ '0))
          (make-string-table/lock__% _%size-hint123428%_ _%seed123430%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint123432%_)
        (let ((_%seed123434%_ '0))
          (make-string-table/lock__% _%size-hint123432%_ _%seed123434%_))))
    (define make-string-table/lock
      (lambda _g125156_
        (let ((_g125157_ (##length _g125156_)))
          (cond ((##fx= _g125157_ 0)
                 (apply make-string-table/lock__0 _g125156_))
                ((##fx= _g125157_ 1)
                 (apply make-string-table/lock__1 _g125156_))
                ((##fx= _g125157_ 2)
                 (apply make-string-table/lock__% _g125156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g125156_))))))
    (define string-table-ref
      (lambda (_%tab123373%_ _%key123374%_ _%default123375%_)
        (let ((_%table123377%_ (&raw-table-table _%tab123373%_))
              (_%seed123378%_ (&raw-table-seed _%tab123373%_)))
          (let* ((_%h123380%_
                  (fxxor (##string=?-hash _%key123374%_) _%seed123378%_))
                 (_%size123383%_ (vector-length _%table123377%_))
                 (_%entries123386%_ (##fxquotient _%size123383%_ '2))
                 (_%start123389%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123380%_ _%entries123386%_)
                   '1)))
            (let _%loop123393%_ ((_%probe123396%_ _%start123389%_)
                                 (_%i123398%_ '1)
                                 (_%deleted123400%_ '#f))
              (let ((_%k123403%_ (vector-ref _%table123377%_ _%probe123396%_)))
                (if (eq? _%k123403%_ (macro-unused-obj))
                    _%default123375%_
                    (if (eq? _%k123403%_ (macro-deleted-obj))
                        (_%loop123393%_
                         (let ((_%next-probe123408%_
                                (fx+ _%start123389%_
                                     _%i123398%_
                                     (fx* _%i123398%_ _%i123398%_))))
                           (##fxmodulo _%next-probe123408%_ _%size123383%_))
                         (##fx+ _%i123398%_ '1)
                         (let ((_%$e123411%_ _%deleted123400%_))
                           (if _%$e123411%_ _%$e123411%_ _%probe123396%_)))
                        (if (##string=? _%key123374%_ _%k123403%_)
                            (vector-ref
                             _%table123377%_
                             (##fx+ _%probe123396%_ '1))
                            (_%loop123393%_
                             (let ((_%next-probe123416%_
                                    (fx+ _%start123389%_
                                         _%i123398%_
                                         (fx* _%i123398%_ _%i123398%_))))
                               (##fxmodulo
                                _%next-probe123416%_
                                _%size123383%_))
                             (##fx+ _%i123398%_ '1)
                             _%deleted123400%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab123344%_ _%key123345%_ _%default123346%_)
        (let ((_%lock123348%_ (&raw-table-lock _%tab123344%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123353%_ ((_%spin123356%_ '0))
              (if (##fx= (##vector-cas! _%lock123348%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123348%_ '1 (current-thread))
                  (if (##fx< _%spin123356%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123353%_ (##fx+ _%spin123356%_ '1)))
                      (let ((_%owner123362%_ (##vector-ref _%lock123348%_ '1)))
                        (if (eq? _%owner123362%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123362%_)
                                (let () (##thread-yield!) (_%again123353%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123368%_
                 (string-table-ref
                  _%tab123344%_
                  _%key123345%_
                  _%default123346%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123348%_ '1 '#f)
                (##vector-cas! _%lock123348%_ '0 '0 '1)))
            _%$r123368%_))))
    (define __string-table-set!
      (lambda (_%tab123296%_ _%key123297%_ _%value123298%_)
        (let ((_%table123300%_ (&raw-table-table _%tab123296%_))
              (_%seed123301%_ (&raw-table-seed _%tab123296%_)))
          (let* ((_%h123303%_
                  (fxxor (##string=?-hash _%key123297%_) _%seed123301%_))
                 (_%size123306%_ (vector-length _%table123300%_))
                 (_%entries123309%_ (##fxquotient _%size123306%_ '2))
                 (_%start123312%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123303%_ _%entries123309%_)
                   '1)))
            (let _%loop123316%_ ((_%probe123319%_ _%start123312%_)
                                 (_%i123321%_ '1)
                                 (_%deleted123323%_ '#f))
              (let ((_%k123326%_ (vector-ref _%table123300%_ _%probe123319%_)))
                (if (eq? _%k123326%_ (macro-unused-obj))
                    (if _%deleted123323%_
                        (begin
                          (vector-set!
                           _%table123300%_
                           _%deleted123323%_
                           _%key123297%_)
                          (vector-set!
                           _%table123300%_
                           (##fx+ _%deleted123323%_ '1)
                           _%value123298%_)
                          (&raw-table-count-set!
                           _%tab123296%_
                           (##fx+ (&raw-table-count _%tab123296%_) '1)))
                        (begin
                          (vector-set!
                           _%table123300%_
                           _%probe123319%_
                           _%key123297%_)
                          (vector-set!
                           _%table123300%_
                           (##fx+ _%probe123319%_ '1)
                           _%value123298%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab123296%_
                             (##fx- (&raw-table-free _%tab123296%_) '1))
                            (&raw-table-count-set!
                             _%tab123296%_
                             (##fx+ (&raw-table-count _%tab123296%_) '1)))))
                    (if (eq? _%k123326%_ (macro-deleted-obj))
                        (_%loop123316%_
                         (let ((_%next-probe123333%_
                                (fx+ _%start123312%_
                                     _%i123321%_
                                     (fx* _%i123321%_ _%i123321%_))))
                           (##fxmodulo _%next-probe123333%_ _%size123306%_))
                         (##fx+ _%i123321%_ '1)
                         (let ((_%$e123336%_ _%deleted123323%_))
                           (if _%$e123336%_ _%$e123336%_ _%probe123319%_)))
                        (if (##string=? _%key123297%_ _%k123326%_)
                            (let ()
                              (vector-set!
                               _%table123300%_
                               _%probe123319%_
                               _%key123297%_)
                              (vector-set!
                               _%table123300%_
                               (##fx+ _%probe123319%_ '1)
                               _%value123298%_))
                            (_%loop123316%_
                             (let ((_%next-probe123341%_
                                    (fx+ _%start123312%_
                                         _%i123321%_
                                         (fx* _%i123321%_ _%i123321%_))))
                               (##fxmodulo
                                _%next-probe123341%_
                                _%size123306%_))
                             (##fx+ _%i123321%_ '1)
                             _%deleted123323%_))))))))))
    (define string-table-set!
      (lambda (_%tab123292%_ _%key123293%_ _%value123294%_)
        (if (##fx< (&raw-table-free _%tab123292%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123292%_))
                    '4))
            (__raw-table-rehash! _%tab123292%_)
            '#!void)
        (__string-table-set! _%tab123292%_ _%key123293%_ _%value123294%_)))
    (define string-table-set!/lock
      (lambda (_%tab123262%_ _%key123263%_ _%value123264%_)
        (let ((_%lock123267%_ (&raw-table-lock _%tab123262%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123272%_ ((_%spin123275%_ '0))
              (if (##fx= (##vector-cas! _%lock123267%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123267%_ '1 (current-thread))
                  (if (##fx< _%spin123275%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123272%_ (##fx+ _%spin123275%_ '1)))
                      (let ((_%owner123281%_ (##vector-ref _%lock123267%_ '1)))
                        (if (eq? _%owner123281%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123281%_)
                                (let () (##thread-yield!) (_%again123272%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123287%_
                 (string-table-set!
                  _%tab123262%_
                  _%key123263%_
                  _%value123264%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123267%_ '1 '#f)
                (##vector-cas! _%lock123267%_ '0 '0 '1)))
            _%$r123287%_))))
    (define __string-table-update!
      (lambda (_%tab123213%_
               _%key123214%_
               _%string-table-update!123215%_
               _%default123216%_)
        (let ((_%table123218%_ (&raw-table-table _%tab123213%_))
              (_%seed123219%_ (&raw-table-seed _%tab123213%_)))
          (let* ((_%h123221%_
                  (fxxor (##string=?-hash _%key123214%_) _%seed123219%_))
                 (_%size123224%_ (vector-length _%table123218%_))
                 (_%entries123227%_ (##fxquotient _%size123224%_ '2))
                 (_%start123230%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123221%_ _%entries123227%_)
                   '1)))
            (let _%loop123234%_ ((_%probe123237%_ _%start123230%_)
                                 (_%i123239%_ '1)
                                 (_%deleted123241%_ '#f))
              (let ((_%k123244%_ (vector-ref _%table123218%_ _%probe123237%_)))
                (if (eq? _%k123244%_ (macro-unused-obj))
                    (if _%deleted123241%_
                        (begin
                          (vector-set!
                           _%table123218%_
                           _%deleted123241%_
                           _%key123214%_)
                          (vector-set!
                           _%table123218%_
                           (##fx+ _%deleted123241%_ '1)
                           (_%string-table-update!123215%_ _%default123216%_))
                          (&raw-table-count-set!
                           _%tab123213%_
                           (##fx+ (&raw-table-count _%tab123213%_) '1)))
                        (begin
                          (vector-set!
                           _%table123218%_
                           _%probe123237%_
                           _%key123214%_)
                          (vector-set!
                           _%table123218%_
                           (##fx+ _%probe123237%_ '1)
                           (_%string-table-update!123215%_ _%default123216%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab123213%_
                             (##fx- (&raw-table-free _%tab123213%_) '1))
                            (&raw-table-count-set!
                             _%tab123213%_
                             (##fx+ (&raw-table-count _%tab123213%_) '1)))))
                    (if (eq? _%k123244%_ (macro-deleted-obj))
                        (_%loop123234%_
                         (let ((_%next-probe123251%_
                                (fx+ _%start123230%_
                                     _%i123239%_
                                     (fx* _%i123239%_ _%i123239%_))))
                           (##fxmodulo _%next-probe123251%_ _%size123224%_))
                         (##fx+ _%i123239%_ '1)
                         (let ((_%$e123254%_ _%deleted123241%_))
                           (if _%$e123254%_ _%$e123254%_ _%probe123237%_)))
                        (if (##string=? _%key123214%_ _%k123244%_)
                            (let ()
                              (vector-set!
                               _%table123218%_
                               _%probe123237%_
                               _%key123214%_)
                              (vector-set!
                               _%table123218%_
                               (##fx+ _%probe123237%_ '1)
                               (_%string-table-update!123215%_
                                (vector-ref
                                 _%table123218%_
                                 (##fx+ _%probe123237%_ '1)))))
                            (_%loop123234%_
                             (let ((_%next-probe123259%_
                                    (fx+ _%start123230%_
                                         _%i123239%_
                                         (fx* _%i123239%_ _%i123239%_))))
                               (##fxmodulo
                                _%next-probe123259%_
                                _%size123224%_))
                             (##fx+ _%i123239%_ '1)
                             _%deleted123241%_))))))))))
    (define string-table-update!
      (lambda (_%tab123208%_
               _%key123209%_
               _%string-table-update!123210%_
               _%default123211%_)
        (if (##fx< (&raw-table-free _%tab123208%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123208%_))
                    '4))
            (__raw-table-rehash! _%tab123208%_)
            '#!void)
        (__string-table-update!
         _%tab123208%_
         _%key123209%_
         _%string-table-update!123210%_
         _%default123211%_)))
    (define string-table-update!/lock
      (lambda (_%tab123177%_
               _%key123178%_
               _%string-table-update!123179%_
               _%default123180%_)
        (let ((_%lock123183%_ (&raw-table-lock _%tab123177%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123188%_ ((_%spin123191%_ '0))
              (if (##fx= (##vector-cas! _%lock123183%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123183%_ '1 (current-thread))
                  (if (##fx< _%spin123191%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123188%_ (##fx+ _%spin123191%_ '1)))
                      (let ((_%owner123197%_ (##vector-ref _%lock123183%_ '1)))
                        (if (eq? _%owner123197%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123197%_)
                                (let () (##thread-yield!) (_%again123188%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123203%_
                 (_%string-table-update!123179%_
                  _%tab123177%_
                  _%key123178%_
                  _%string-table-update!123179%_
                  _%default123180%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123183%_ '1 '#f)
                (##vector-cas! _%lock123183%_ '0 '0 '1)))
            _%$r123203%_))))
    (define string-table-delete!
      (lambda (_%tab123134%_ _%key123135%_)
        (let ((_%table123137%_ (&raw-table-table _%tab123134%_))
              (_%seed123139%_ (&raw-table-seed _%tab123134%_)))
          (let* ((_%h123142%_
                  (fxxor (##string=?-hash _%key123135%_) _%seed123139%_))
                 (_%size123145%_ (vector-length _%table123137%_))
                 (_%entries123148%_ (##fxquotient _%size123145%_ '2))
                 (_%start123151%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123142%_ _%entries123148%_)
                   '1)))
            (let _%loop123155%_ ((_%probe123158%_ _%start123151%_)
                                 (_%i123160%_ '1))
              (let ((_%k123163%_ (vector-ref _%table123137%_ _%probe123158%_)))
                (if (eq? _%k123163%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k123163%_ (macro-deleted-obj))
                        (_%loop123155%_
                         (let ((_%next-probe123168%_
                                (fx+ _%start123151%_
                                     _%i123160%_
                                     (fx* _%i123160%_ _%i123160%_))))
                           (##fxmodulo _%next-probe123168%_ _%size123145%_))
                         (##fx+ _%i123160%_ '1))
                        (if (##string=? _%key123135%_ _%k123163%_)
                            (let ()
                              (vector-set!
                               _%table123137%_
                               _%probe123158%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table123137%_
                               (##fx+ _%probe123158%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab123134%_
                               (##fx- (&raw-table-count _%tab123134%_) '1)))
                            (_%loop123155%_
                             (let ((_%next-probe123174%_
                                    (fx+ _%start123151%_
                                         _%i123160%_
                                         (fx* _%i123160%_ _%i123160%_))))
                               (##fxmodulo
                                _%next-probe123174%_
                                _%size123145%_))
                             (##fx+ _%i123160%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab123104%_ _%key123106%_)
        (let ((_%lock123109%_ (&raw-table-lock _%tab123104%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123114%_ ((_%spin123117%_ '0))
              (if (##fx= (##vector-cas! _%lock123109%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123109%_ '1 (current-thread))
                  (if (##fx< _%spin123117%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123114%_ (##fx+ _%spin123117%_ '1)))
                      (let ((_%owner123123%_ (##vector-ref _%lock123109%_ '1)))
                        (if (eq? _%owner123123%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123123%_)
                                (let () (##thread-yield!) (_%again123114%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123129%_
                 (string-table-delete! _%tab123104%_ _%key123106%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123109%_ '1 '#f)
                (##vector-cas! _%lock123109%_ '0 '0 '1)))
            _%$r123129%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint123086%_ _%seed123087%_)
        (make-raw-table__1
         _%size-hint123086%_
         immediate-hash
         eq?
         _%seed123087%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint123093%_ '#f) (_%seed123095%_ '0))
          (make-immediate-table__% _%size-hint123093%_ _%seed123095%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint123097%_)
        (let ((_%seed123099%_ '0))
          (make-immediate-table__% _%size-hint123097%_ _%seed123099%_))))
    (define make-immediate-table
      (lambda _g125158_
        (let ((_g125159_ (##length _g125158_)))
          (cond ((##fx= _g125159_ 0) (apply make-immediate-table__0 _g125158_))
                ((##fx= _g125159_ 1) (apply make-immediate-table__1 _g125158_))
                ((##fx= _g125159_ 2) (apply make-immediate-table__% _g125158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g125158_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint123066%_ _%seed123068%_)
        (make-raw-table/lock__%
         _%size-hint123066%_
         immediate-hash
         eq?
         _%seed123068%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint123074%_ '#f) (_%seed123076%_ '0))
          (make-immediate-table/lock__% _%size-hint123074%_ _%seed123076%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint123078%_)
        (let ((_%seed123080%_ '0))
          (make-immediate-table/lock__% _%size-hint123078%_ _%seed123080%_))))
    (define make-immediate-table/lock
      (lambda _g125160_
        (let ((_g125161_ (##length _g125160_)))
          (cond ((##fx= _g125161_ 0)
                 (apply make-immediate-table/lock__0 _g125160_))
                ((##fx= _g125161_ 1)
                 (apply make-immediate-table/lock__1 _g125160_))
                ((##fx= _g125161_ 2)
                 (apply make-immediate-table/lock__% _g125160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g125160_))))))
    (define immediate-table-ref
      (lambda (_%tab123019%_ _%key123020%_ _%default123021%_)
        (let ((_%table123023%_ (&raw-table-table _%tab123019%_))
              (_%seed123024%_ (&raw-table-seed _%tab123019%_)))
          (let* ((_%h123026%_
                  (fxxor (immediate-hash _%key123020%_) _%seed123024%_))
                 (_%size123029%_ (vector-length _%table123023%_))
                 (_%entries123032%_ (##fxquotient _%size123029%_ '2))
                 (_%start123035%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123026%_ _%entries123032%_)
                   '1)))
            (let _%loop123039%_ ((_%probe123042%_ _%start123035%_)
                                 (_%i123044%_ '1)
                                 (_%deleted123046%_ '#f))
              (let ((_%k123049%_ (vector-ref _%table123023%_ _%probe123042%_)))
                (if (eq? _%k123049%_ (macro-unused-obj))
                    _%default123021%_
                    (if (eq? _%k123049%_ (macro-deleted-obj))
                        (_%loop123039%_
                         (let ((_%next-probe123054%_
                                (fx+ _%start123035%_
                                     _%i123044%_
                                     (fx* _%i123044%_ _%i123044%_))))
                           (##fxmodulo _%next-probe123054%_ _%size123029%_))
                         (##fx+ _%i123044%_ '1)
                         (let ((_%$e123057%_ _%deleted123046%_))
                           (if _%$e123057%_ _%$e123057%_ _%probe123042%_)))
                        (if (eq? _%key123020%_ _%k123049%_)
                            (vector-ref
                             _%table123023%_
                             (##fx+ _%probe123042%_ '1))
                            (_%loop123039%_
                             (let ((_%next-probe123062%_
                                    (fx+ _%start123035%_
                                         _%i123044%_
                                         (fx* _%i123044%_ _%i123044%_))))
                               (##fxmodulo
                                _%next-probe123062%_
                                _%size123029%_))
                             (##fx+ _%i123044%_ '1)
                             _%deleted123046%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab122990%_ _%key122991%_ _%default122992%_)
        (let ((_%lock122994%_ (&raw-table-lock _%tab122990%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122999%_ ((_%spin123002%_ '0))
              (if (##fx= (##vector-cas! _%lock122994%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122994%_ '1 (current-thread))
                  (if (##fx< _%spin123002%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122999%_ (##fx+ _%spin123002%_ '1)))
                      (let ((_%owner123008%_ (##vector-ref _%lock122994%_ '1)))
                        (if (eq? _%owner123008%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123008%_)
                                (let () (##thread-yield!) (_%again122999%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123014%_
                 (immediate-table-ref
                  _%tab122990%_
                  _%key122991%_
                  _%default122992%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122994%_ '1 '#f)
                (##vector-cas! _%lock122994%_ '0 '0 '1)))
            _%$r123014%_))))
    (define __immediate-table-set!
      (lambda (_%tab122942%_ _%key122943%_ _%value122944%_)
        (let ((_%table122946%_ (&raw-table-table _%tab122942%_))
              (_%seed122947%_ (&raw-table-seed _%tab122942%_)))
          (let* ((_%h122949%_
                  (fxxor (immediate-hash _%key122943%_) _%seed122947%_))
                 (_%size122952%_ (vector-length _%table122946%_))
                 (_%entries122955%_ (##fxquotient _%size122952%_ '2))
                 (_%start122958%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122949%_ _%entries122955%_)
                   '1)))
            (let _%loop122962%_ ((_%probe122965%_ _%start122958%_)
                                 (_%i122967%_ '1)
                                 (_%deleted122969%_ '#f))
              (let ((_%k122972%_ (vector-ref _%table122946%_ _%probe122965%_)))
                (if (eq? _%k122972%_ (macro-unused-obj))
                    (if _%deleted122969%_
                        (begin
                          (vector-set!
                           _%table122946%_
                           _%deleted122969%_
                           _%key122943%_)
                          (vector-set!
                           _%table122946%_
                           (##fx+ _%deleted122969%_ '1)
                           _%value122944%_)
                          (&raw-table-count-set!
                           _%tab122942%_
                           (##fx+ (&raw-table-count _%tab122942%_) '1)))
                        (begin
                          (vector-set!
                           _%table122946%_
                           _%probe122965%_
                           _%key122943%_)
                          (vector-set!
                           _%table122946%_
                           (##fx+ _%probe122965%_ '1)
                           _%value122944%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab122942%_
                             (##fx- (&raw-table-free _%tab122942%_) '1))
                            (&raw-table-count-set!
                             _%tab122942%_
                             (##fx+ (&raw-table-count _%tab122942%_) '1)))))
                    (if (eq? _%k122972%_ (macro-deleted-obj))
                        (_%loop122962%_
                         (let ((_%next-probe122979%_
                                (fx+ _%start122958%_
                                     _%i122967%_
                                     (fx* _%i122967%_ _%i122967%_))))
                           (##fxmodulo _%next-probe122979%_ _%size122952%_))
                         (##fx+ _%i122967%_ '1)
                         (let ((_%$e122982%_ _%deleted122969%_))
                           (if _%$e122982%_ _%$e122982%_ _%probe122965%_)))
                        (if (eq? _%key122943%_ _%k122972%_)
                            (let ()
                              (vector-set!
                               _%table122946%_
                               _%probe122965%_
                               _%key122943%_)
                              (vector-set!
                               _%table122946%_
                               (##fx+ _%probe122965%_ '1)
                               _%value122944%_))
                            (_%loop122962%_
                             (let ((_%next-probe122987%_
                                    (fx+ _%start122958%_
                                         _%i122967%_
                                         (fx* _%i122967%_ _%i122967%_))))
                               (##fxmodulo
                                _%next-probe122987%_
                                _%size122952%_))
                             (##fx+ _%i122967%_ '1)
                             _%deleted122969%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab122938%_ _%key122939%_ _%value122940%_)
        (if (##fx< (&raw-table-free _%tab122938%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab122938%_))
                    '4))
            (__raw-table-rehash! _%tab122938%_)
            '#!void)
        (__immediate-table-set! _%tab122938%_ _%key122939%_ _%value122940%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab122908%_ _%key122909%_ _%value122910%_)
        (let ((_%lock122913%_ (&raw-table-lock _%tab122908%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122918%_ ((_%spin122921%_ '0))
              (if (##fx= (##vector-cas! _%lock122913%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122913%_ '1 (current-thread))
                  (if (##fx< _%spin122921%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122918%_ (##fx+ _%spin122921%_ '1)))
                      (let ((_%owner122927%_ (##vector-ref _%lock122913%_ '1)))
                        (if (eq? _%owner122927%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122927%_)
                                (let () (##thread-yield!) (_%again122918%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122933%_
                 (immediate-table-set!
                  _%tab122908%_
                  _%key122909%_
                  _%value122910%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122913%_ '1 '#f)
                (##vector-cas! _%lock122913%_ '0 '0 '1)))
            _%$r122933%_))))
    (define __immediate-table-update!
      (lambda (_%tab122859%_
               _%key122860%_
               _%immediate-table-update!122861%_
               _%default122862%_)
        (let ((_%table122864%_ (&raw-table-table _%tab122859%_))
              (_%seed122865%_ (&raw-table-seed _%tab122859%_)))
          (let* ((_%h122867%_
                  (fxxor (immediate-hash _%key122860%_) _%seed122865%_))
                 (_%size122870%_ (vector-length _%table122864%_))
                 (_%entries122873%_ (##fxquotient _%size122870%_ '2))
                 (_%start122876%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122867%_ _%entries122873%_)
                   '1)))
            (let _%loop122880%_ ((_%probe122883%_ _%start122876%_)
                                 (_%i122885%_ '1)
                                 (_%deleted122887%_ '#f))
              (let ((_%k122890%_ (vector-ref _%table122864%_ _%probe122883%_)))
                (if (eq? _%k122890%_ (macro-unused-obj))
                    (if _%deleted122887%_
                        (begin
                          (vector-set!
                           _%table122864%_
                           _%deleted122887%_
                           _%key122860%_)
                          (vector-set!
                           _%table122864%_
                           (##fx+ _%deleted122887%_ '1)
                           (_%immediate-table-update!122861%_
                            _%default122862%_))
                          (&raw-table-count-set!
                           _%tab122859%_
                           (##fx+ (&raw-table-count _%tab122859%_) '1)))
                        (begin
                          (vector-set!
                           _%table122864%_
                           _%probe122883%_
                           _%key122860%_)
                          (vector-set!
                           _%table122864%_
                           (##fx+ _%probe122883%_ '1)
                           (_%immediate-table-update!122861%_
                            _%default122862%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab122859%_
                             (##fx- (&raw-table-free _%tab122859%_) '1))
                            (&raw-table-count-set!
                             _%tab122859%_
                             (##fx+ (&raw-table-count _%tab122859%_) '1)))))
                    (if (eq? _%k122890%_ (macro-deleted-obj))
                        (_%loop122880%_
                         (let ((_%next-probe122897%_
                                (fx+ _%start122876%_
                                     _%i122885%_
                                     (fx* _%i122885%_ _%i122885%_))))
                           (##fxmodulo _%next-probe122897%_ _%size122870%_))
                         (##fx+ _%i122885%_ '1)
                         (let ((_%$e122900%_ _%deleted122887%_))
                           (if _%$e122900%_ _%$e122900%_ _%probe122883%_)))
                        (if (eq? _%key122860%_ _%k122890%_)
                            (let ()
                              (vector-set!
                               _%table122864%_
                               _%probe122883%_
                               _%key122860%_)
                              (vector-set!
                               _%table122864%_
                               (##fx+ _%probe122883%_ '1)
                               (_%immediate-table-update!122861%_
                                (vector-ref
                                 _%table122864%_
                                 (##fx+ _%probe122883%_ '1)))))
                            (_%loop122880%_
                             (let ((_%next-probe122905%_
                                    (fx+ _%start122876%_
                                         _%i122885%_
                                         (fx* _%i122885%_ _%i122885%_))))
                               (##fxmodulo
                                _%next-probe122905%_
                                _%size122870%_))
                             (##fx+ _%i122885%_ '1)
                             _%deleted122887%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab122854%_
               _%key122855%_
               _%immediate-table-update!122856%_
               _%default122857%_)
        (if (##fx< (&raw-table-free _%tab122854%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab122854%_))
                    '4))
            (__raw-table-rehash! _%tab122854%_)
            '#!void)
        (__immediate-table-update!
         _%tab122854%_
         _%key122855%_
         _%immediate-table-update!122856%_
         _%default122857%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab122823%_
               _%key122824%_
               _%immediate-table-update!122825%_
               _%default122826%_)
        (let ((_%lock122829%_ (&raw-table-lock _%tab122823%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122834%_ ((_%spin122837%_ '0))
              (if (##fx= (##vector-cas! _%lock122829%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122829%_ '1 (current-thread))
                  (if (##fx< _%spin122837%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122834%_ (##fx+ _%spin122837%_ '1)))
                      (let ((_%owner122843%_ (##vector-ref _%lock122829%_ '1)))
                        (if (eq? _%owner122843%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122843%_)
                                (let () (##thread-yield!) (_%again122834%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122849%_
                 (_%immediate-table-update!122825%_
                  _%tab122823%_
                  _%key122824%_
                  _%immediate-table-update!122825%_
                  _%default122826%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122829%_ '1 '#f)
                (##vector-cas! _%lock122829%_ '0 '0 '1)))
            _%$r122849%_))))
    (define immediate-table-delete!
      (lambda (_%tab122780%_ _%key122781%_)
        (let ((_%table122783%_ (&raw-table-table _%tab122780%_))
              (_%seed122785%_ (&raw-table-seed _%tab122780%_)))
          (let* ((_%h122788%_
                  (fxxor (immediate-hash _%key122781%_) _%seed122785%_))
                 (_%size122791%_ (vector-length _%table122783%_))
                 (_%entries122794%_ (##fxquotient _%size122791%_ '2))
                 (_%start122797%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122788%_ _%entries122794%_)
                   '1)))
            (let _%loop122801%_ ((_%probe122804%_ _%start122797%_)
                                 (_%i122806%_ '1))
              (let ((_%k122809%_ (vector-ref _%table122783%_ _%probe122804%_)))
                (if (eq? _%k122809%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k122809%_ (macro-deleted-obj))
                        (_%loop122801%_
                         (let ((_%next-probe122814%_
                                (fx+ _%start122797%_
                                     _%i122806%_
                                     (fx* _%i122806%_ _%i122806%_))))
                           (##fxmodulo _%next-probe122814%_ _%size122791%_))
                         (##fx+ _%i122806%_ '1))
                        (if (eq? _%key122781%_ _%k122809%_)
                            (let ()
                              (vector-set!
                               _%table122783%_
                               _%probe122804%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table122783%_
                               (##fx+ _%probe122804%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab122780%_
                               (##fx- (&raw-table-count _%tab122780%_) '1)))
                            (_%loop122801%_
                             (let ((_%next-probe122820%_
                                    (fx+ _%start122797%_
                                         _%i122806%_
                                         (fx* _%i122806%_ _%i122806%_))))
                               (##fxmodulo
                                _%next-probe122820%_
                                _%size122791%_))
                             (##fx+ _%i122806%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab122750%_ _%key122752%_)
        (let ((_%lock122755%_ (&raw-table-lock _%tab122750%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122760%_ ((_%spin122763%_ '0))
              (if (##fx= (##vector-cas! _%lock122755%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122755%_ '1 (current-thread))
                  (if (##fx< _%spin122763%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122760%_ (##fx+ _%spin122763%_ '1)))
                      (let ((_%owner122769%_ (##vector-ref _%lock122755%_ '1)))
                        (if (eq? _%owner122769%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122769%_)
                                (let () (##thread-yield!) (_%again122760%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122775%_
                 (immediate-table-delete! _%tab122750%_ _%key122752%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122755%_ '1 '#f)
                (##vector-cas! _%lock122755%_ '0 '0 '1)))
            _%$r122775%_))))
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
      (lambda (_%tab122748%_)
        (##unchecked-structure-ref
         _%tab122748%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab122746%_)
        (##unchecked-structure-ref
         _%tab122746%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab122744%_)
        (##unchecked-structure-ref
         _%tab122744%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab122741%_ _%val122742%_)
        (##unchecked-structure-set!
         _%tab122741%_
         _%val122742%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab122738%_ _%val122739%_)
        (##unchecked-structure-set!
         _%tab122738%_
         _%val122739%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab122735%_ _%val122736%_)
        (##unchecked-structure-set!
         _%tab122735%_
         _%val122736%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint122699%_
               _%klass122700%_
               _%flags122701%_
               _%lock122702%_)
        (let ((_%gcht122704%_
               (__gc-table-new
                (if (fixnum? _%size-hint122699%_) _%size-hint122699%_ '16)
                _%flags122701%_)))
          (##structure _%klass122700%_ _%gcht122704%_ '#f _%lock122702%_))))
    (define make-gc-table__0
      (lambda (_%size-hint122709%_)
        (let* ((_%klass122711%_ __gc-table::t)
               (_%flags122713%_ '0)
               (_%lock122715%_ '#f))
          (make-gc-table__%
           _%size-hint122709%_
           _%klass122711%_
           _%flags122713%_
           _%lock122715%_))))
    (define make-gc-table__1
      (lambda (_%size-hint122717%_ _%klass122718%_)
        (let* ((_%flags122720%_ '0) (_%lock122722%_ '#f))
          (make-gc-table__%
           _%size-hint122717%_
           _%klass122718%_
           _%flags122720%_
           _%lock122722%_))))
    (define make-gc-table__2
      (lambda (_%size-hint122724%_ _%klass122725%_ _%flags122726%_)
        (let ((_%lock122728%_ '#f))
          (make-gc-table__%
           _%size-hint122724%_
           _%klass122725%_
           _%flags122726%_
           _%lock122728%_))))
    (define make-gc-table
      (lambda _g125162_
        (let ((_g125163_ (##length _g125162_)))
          (cond ((##fx= _g125163_ 1) (apply make-gc-table__0 _g125162_))
                ((##fx= _g125163_ 2) (apply make-gc-table__1 _g125162_))
                ((##fx= _g125163_ 3) (apply make-gc-table__2 _g125162_))
                ((##fx= _g125163_ 4) (apply make-gc-table__% _g125162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g125162_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint122676%_ _%klass122677%_ _%flags122678%_)
        (make-gc-table__%
         _%size-hint122676%_
         _%klass122677%_
         _%flags122678%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint122683%_)
        (let* ((_%klass122685%_ __gc-table::t) (_%flags122687%_ '0))
          (make-gc-table/lock__%
           _%size-hint122683%_
           _%klass122685%_
           _%flags122687%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint122689%_ _%klass122690%_)
        (let ((_%flags122692%_ '0))
          (make-gc-table/lock__%
           _%size-hint122689%_
           _%klass122690%_
           _%flags122692%_))))
    (define make-gc-table/lock
      (lambda _g125164_
        (let ((_g125165_ (##length _g125164_)))
          (cond ((##fx= _g125165_ 1) (apply make-gc-table/lock__0 _g125164_))
                ((##fx= _g125165_ 2) (apply make-gc-table/lock__1 _g125164_))
                ((##fx= _g125165_ 3) (apply make-gc-table/lock__% _g125164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g125164_))))))
    (define __gc-table-immediate
      (lambda (_%tab122667%_)
        (let ((_%$e122669%_ (&gc-table-immediate _%tab122667%_)))
          (if _%$e122669%_
              _%$e122669%_
              (let ((_%immediate122673%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab122667%_ _%immediate122673%_)
                _%immediate122673%_)))))
    (define __gc-table-new
      (lambda (_%size122657%_ _%flags122658%_)
        (let* ((_%flags122660%_
                (##fxand _%flags122658%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags122662%_
                (fxior _%flags122660%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht122664%_
                (##gc-hash-table-allocate
                 _%size122657%_
                 _%flags122662%_
                 __gc-table-loads)))
          _%gcht122664%_)))
    (define __gc-table-e
      (lambda (_%tab122652%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht122655%_ (&gc-table-gcht _%tab122652%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht122655%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht122655%_
              (begin
                (__gc-table-rehash! _%tab122652%_)
                (&gc-table-gcht _%tab122652%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab122643%_)
        (let* ((_%old-table122645%_ (&gc-table-gcht _%tab122643%_))
               (_%new-table122647%_
                (##gc-hash-table-resize! _%old-table122645%_ __gc-table-loads))
               (_%gcht122649%_
                (##gc-hash-table-rehash!
                 _%old-table122645%_
                 _%new-table122647%_)))
          (&gc-table-gcht-set! _%tab122643%_ _%gcht122649%_))))
    (define gc-table-ref
      (lambda (_%tab122627%_ _%key122628%_ _%default122629%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key122628%_)
            (let* ((_%gcht122633%_ (__gc-table-e _%tab122627%_))
                   (_%value122635%_
                    (##gc-hash-table-ref _%gcht122633%_ _%key122628%_)))
              (if (eq? _%value122635%_ (macro-unused-obj))
                  _%default122629%_
                  _%value122635%_))
            (let ((_%$e122637%_ (&gc-table-immediate _%tab122627%_)))
              (if _%$e122637%_
                  (immediate-table-ref
                   _%$e122637%_
                   _%key122628%_
                   _%default122629%_)
                  _%default122629%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab122601%_ _%key122602%_ _%default122603%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122607%_ ((_%spin122610%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122601%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122601%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122610%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122607%_ (##fx+ _%spin122610%_ '1)))
                    (let ((_%owner122616%_
                           (##vector-ref (&gc-table-lock _%tab122601%_) '1)))
                      (if (eq? _%owner122616%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122616%_)
                              (let () (##thread-yield!) (_%again122607%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122622%_
               (gc-table-ref _%tab122601%_ _%key122602%_ _%default122603%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122601%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122601%_) '0 '0 '1)))
          _%$r122622%_)))
    (define gc-table-set!
      (lambda (_%tab122594%_ _%key122595%_ _%value122596%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key122595%_)
            (let ((_%gcht122599%_ (__gc-table-e _%tab122594%_)))
              (if (##gc-hash-table-set!
                   _%gcht122599%_
                   _%key122595%_
                   _%value122596%_)
                  (begin
                    (__gc-table-rehash! _%tab122594%_)
                    (gc-table-set!
                     _%tab122594%_
                     _%key122595%_
                     _%value122596%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab122594%_)
             _%key122595%_
             _%value122596%_))))
    (define gc-table-set/lock!
      (lambda (_%tab122568%_ _%key122569%_ _%value122570%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122574%_ ((_%spin122577%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122568%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122568%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122577%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122574%_ (##fx+ _%spin122577%_ '1)))
                    (let ((_%owner122583%_
                           (##vector-ref (&gc-table-lock _%tab122568%_) '1)))
                      (if (eq? _%owner122583%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122583%_)
                              (let () (##thread-yield!) (_%again122574%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122589%_
               (gc-table-set! _%tab122568%_ _%key122569%_ _%value122570%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122568%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122568%_) '0 '0 '1)))
          _%$r122589%_)))
    (define gc-table-update!
      (lambda (_%tab122561%_ _%key122562%_ _%update122563%_ _%default122564%_)
        (if (##mem-allocated? _%key122562%_)
            (let ((_%value122566%_
                   (gc-table-ref
                    _%tab122561%_
                    _%key122562%_
                    _%default122564%_)))
              (gc-table-set!
               _%tab122561%_
               _%key122562%_
               (_%update122563%_ _%value122566%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab122561%_)
             _%key122562%_
             _%update122563%_
             _%default122564%_))))
    (define gc-table-update!/lock
      (lambda (_%tab122534%_ _%key122535%_ _%update122536%_ _%default122537%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122541%_ ((_%spin122544%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122534%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122534%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122544%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122541%_ (##fx+ _%spin122544%_ '1)))
                    (let ((_%owner122550%_
                           (##vector-ref (&gc-table-lock _%tab122534%_) '1)))
                      (if (eq? _%owner122550%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122550%_)
                              (let () (##thread-yield!) (_%again122541%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122556%_
               (gc-table-update!
                _%tab122534%_
                _%key122535%_
                _%update122536%_
                _%default122537%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122534%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122534%_) '0 '0 '1)))
          _%$r122556%_)))
    (define gc-table-delete!
      (lambda (_%tab122522%_ _%key122523%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key122523%_)
            (let ((_%gcht122527%_ (__gc-table-e _%tab122522%_)))
              (if (##gc-hash-table-set!
                   _%gcht122527%_
                   _%key122523%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab122522%_)
                    (gc-table-delete! _%tab122522%_ _%key122523%_))
                  '#!void))
            (let ((_%$e122529%_ (&gc-table-immediate _%tab122522%_)))
              (if _%$e122529%_
                  (immediate-table-delete! _%$e122529%_ _%key122523%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab122497%_ _%key122498%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122502%_ ((_%spin122505%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122497%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122497%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122505%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122502%_ (##fx+ _%spin122505%_ '1)))
                    (let ((_%owner122511%_
                           (##vector-ref (&gc-table-lock _%tab122497%_) '1)))
                      (if (eq? _%owner122511%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122511%_)
                              (let () (##thread-yield!) (_%again122502%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122517%_ (gc-table-delete! _%tab122497%_ _%key122498%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122497%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122497%_) '0 '0 '1)))
          _%$r122517%_)))
    (define gc-table-for-each
      (lambda (_%tab122486%_ _%proc122487%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht122490%_ (__gc-table-e _%tab122486%_)))
            (##gc-hash-table-for-each _%proc122487%_ _%gcht122490%_))
          (let ((_%$e122492%_ (&gc-table-immediate _%tab122486%_)))
            (if _%$e122492%_
                (raw-table-for-each _%$e122492%_ _%proc122487%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab122461%_ _%proc122462%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122466%_ ((_%spin122469%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122461%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122461%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122469%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122466%_ (##fx+ _%spin122469%_ '1)))
                    (let ((_%owner122475%_
                           (##vector-ref (&gc-table-lock _%tab122461%_) '1)))
                      (if (eq? _%owner122475%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122475%_)
                              (let () (##thread-yield!) (_%again122466%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122481%_ (gc-table-for-each _%tab122461%_ _%proc122462%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122461%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122461%_) '0 '0 '1)))
          _%$r122481%_)))
    (define table-new__%
      (lambda (_%tab122443%_ _%size-hint122444%_)
        (if (table? _%tab122443%_)
            '#!void
            (error '"table-new: expected table" _%tab122443%_))
        (letrec* ((_%loads122446%_ (macro-table-loads _%tab122443%_)))
          (make-table
           'size:
           (let ((_%$e122448%_ _%size-hint122444%_))
             (if _%$e122448%_ _%$e122448%_ '16))
           'init:
           (macro-table-init _%tab122443%_)
           'weak-keys:
           (##fx< '0
                  (fxand (macro-table-flags _%tab122443%_)
                         (macro-gc-hash-table-flag-weak-keys)))
           'weak-values:
           (##fx< '0
                  (fxand (macro-table-flags _%tab122443%_)
                         (macro-gc-hash-table-flag-weak-vals)))
           'test:
           (macro-table-test _%tab122443%_)
           'hash:
           (macro-table-hash _%tab122443%_)
           'min-load:
           (##f64vector-ref _%loads122446%_ '0)
           'max-load:
           (##f64vector-ref _%loads122446%_ '2)))))
    (define table-new__0
      (lambda (_%tab122454%_)
        (let ((_%size-hint122456%_ '#f))
          (table-new__% _%tab122454%_ _%size-hint122456%_))))
    (define table-new
      (lambda _g125166_
        (let ((_g125167_ (##length _g125166_)))
          (cond ((##fx= _g125167_ 1) (apply table-new__0 _g125166_))
                ((##fx= _g125167_ 2) (apply table-new__% _g125166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  table-new
                  _g125166_))))))
    (define gc-table-new__%
      (lambda (_%tab122429%_ _%size-hint122430%_)
        (make-gc-table__%
         (if (eq? _%size-hint122430%_ '#t)
             (macro-gc-hash-table-count (__gc-table-e _%tab122429%_))
             _%size-hint122430%_)
         (##structure-type _%tab122429%_)
         (macro-gc-hash-table-flags (&gc-table-gcht _%tab122429%_))
         (if (&gc-table-lock _%tab122429%_) '#t '#f))))
    (define gc-table-new__0
      (lambda (_%tab122435%_)
        (let ((_%size-hint122437%_ '#f))
          (gc-table-new__% _%tab122435%_ _%size-hint122437%_))))
    (define gc-table-new
      (lambda _g125168_
        (let ((_g125169_ (##length _g125168_)))
          (cond ((##fx= _g125169_ 1) (apply gc-table-new__0 _g125168_))
                ((##fx= _g125169_ 2) (apply gc-table-new__% _g125168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gc-table-new
                  _g125168_))))))
    (define gc-table-copy
      (lambda (_%tab122421%_)
        (let ((_%result122423%_ (gc-table-new__% _%tab122421%_ '#t)))
          (gc-table-for-each
           _%tab122421%_
           (lambda (_%k122425%_ _%v122426%_)
             (gc-table-set! _%result122423%_ _%k122425%_ _%v122426%_)))
          _%result122423%_)))
    (define gc-table-copy/lock
      (lambda (_%tab122397%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122401%_ ((_%spin122404%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122397%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122397%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122404%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122401%_ (##fx+ _%spin122404%_ '1)))
                    (let ((_%owner122410%_
                           (##vector-ref (&gc-table-lock _%tab122397%_) '1)))
                      (if (eq? _%owner122410%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122410%_)
                              (let () (##thread-yield!) (_%again122401%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122416%_ (gc-table-copy _%tab122397%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122397%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122397%_) '0 '0 '1)))
          _%$r122416%_)))
    (define gc-table-clear!
      (lambda (_%tab122390%_)
        (let* ((_%gcht122392%_ (__gc-table-e _%tab122390%_))
               (_%new-table122394%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht122392%_))))
          (&gc-table-gcht-set! _%tab122390%_ _%new-table122394%_)
          (&gc-table-immediate-set! _%tab122390%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab122366%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122370%_ ((_%spin122373%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122366%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122366%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122373%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122370%_ (##fx+ _%spin122373%_ '1)))
                    (let ((_%owner122379%_
                           (##vector-ref (&gc-table-lock _%tab122366%_) '1)))
                      (if (eq? _%owner122379%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122379%_)
                              (let () (##thread-yield!) (_%again122370%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122385%_ (gc-table-clear! _%tab122366%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122366%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122366%_) '0 '0 '1)))
          _%$r122385%_)))
    (define gc-table-length
      (lambda (_%tab122358%_)
        (let ((_%gcht122360%_ (__gc-table-e _%tab122358%_)))
          (fx+ (macro-gc-hash-table-count _%gcht122360%_)
               (let ((_%$e122362%_ (&gc-table-immediate _%tab122358%_)))
                 (if _%$e122362%_ (&raw-table-count _%$e122362%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab122334%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122338%_ ((_%spin122341%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122334%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122334%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122341%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122338%_ (##fx+ _%spin122341%_ '1)))
                    (let ((_%owner122347%_
                           (##vector-ref (&gc-table-lock _%tab122334%_) '1)))
                      (if (eq? _%owner122347%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122347%_)
                              (let () (##thread-yield!) (_%again122338%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122353%_ (gc-table-length _%tab122334%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122334%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122334%_) '0 '0 '1)))
          _%$r122353%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj122300%_)
        (declare (not interrupts-enabled))
        (let ((_%val122303%_
               (gc-table-ref __object-eq-hash _%obj122300%_ '#f)))
          (if _%val122303%_
              _%val122303%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again122307%_ ((_%spin122310%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin122310%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again122307%_ (##fx+ _%spin122310%_ '1)))
                            (let ((_%owner122316%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner122316%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner122316%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again122307%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r122329%_
                       (let ((_%val122322%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj122300%_
                               '#f)))
                         (if _%val122322%_
                             _%val122322%_
                             (let ((_%h122324%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e122326%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e122326%_ _%$e122326%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj122300%_
                                _%h122324%_)
                               _%h122324%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r122329%_))))))))
