(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1771093445)
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
      (lambda (_%obj118856%_)
        (if (##structure? _%obj118856%_)
            (##structure-instance-of? _%obj118856%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab118854%_)
        (##unchecked-structure-ref
         _%tab118854%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab118852%_)
        (##unchecked-structure-ref
         _%tab118852%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab118850%_)
        (##unchecked-structure-ref
         _%tab118850%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab118848%_)
        (##unchecked-structure-ref
         _%tab118848%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab118846%_)
        (##unchecked-structure-ref
         _%tab118846%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab118844%_)
        (##unchecked-structure-ref
         _%tab118844%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab118842%_)
        (##unchecked-structure-ref
         _%tab118842%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab118839%_ _%val118840%_)
        (##unchecked-structure-set!
         _%tab118839%_
         _%val118840%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab118836%_ _%val118837%_)
        (##unchecked-structure-set!
         _%tab118836%_
         _%val118837%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab118833%_ _%val118834%_)
        (##unchecked-structure-set!
         _%tab118833%_
         _%val118834%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab118830%_ _%val118831%_)
        (##unchecked-structure-set!
         _%tab118830%_
         _%val118831%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab118827%_ _%val118828%_)
        (##unchecked-structure-set!
         _%tab118827%_
         _%val118828%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab118824%_ _%val118825%_)
        (##unchecked-structure-set!
         _%tab118824%_
         _%val118825%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab118821%_ _%val118822%_)
        (##unchecked-structure-set!
         _%tab118821%_
         _%val118822%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint118819%_)
        (if (and (fixnum? _%size-hint118819%_) (##fx> _%size-hint118819%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint118819%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint118784%_
               _%hash118785%_
               _%test118786%_
               _%seed118787%_
               _%lock118788%_)
        (let* ((_%size118790%_ (raw-table-size-hint->size _%size-hint118784%_))
               (_%table118792%_
                (##make-vector _%size118790%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table118792%_
           '0
           (##fxquotient _%size118790%_ '2)
           _%hash118785%_
           _%test118786%_
           _%seed118787%_
           _%lock118788%_))))
    (define make-raw-table__0
      (lambda (_%size-hint118798%_ _%hash118799%_ _%test118800%_)
        (let* ((_%seed118802%_ '0) (_%lock118804%_ '#f))
          (make-raw-table__%
           _%size-hint118798%_
           _%hash118799%_
           _%test118800%_
           _%seed118802%_
           _%lock118804%_))))
    (define make-raw-table__1
      (lambda (_%size-hint118806%_
               _%hash118807%_
               _%test118808%_
               _%seed118809%_)
        (let ((_%lock118811%_ '#f))
          (make-raw-table__%
           _%size-hint118806%_
           _%hash118807%_
           _%test118808%_
           _%seed118809%_
           _%lock118811%_))))
    (define make-raw-table
      (lambda _g118857_
        (let ((_g118858_ (##length _g118857_)))
          (cond ((##fx= _g118858_ 3) (apply make-raw-table__0 _g118857_))
                ((##fx= _g118858_ 4) (apply make-raw-table__1 _g118857_))
                ((##fx= _g118858_ 5) (apply make-raw-table__% _g118857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g118857_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint118764%_
               _%hash118765%_
               _%test118766%_
               _%seed118767%_)
        (make-raw-table__%
         _%size-hint118764%_
         _%hash118765%_
         _%test118766%_
         _%seed118767%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint118772%_ _%hash118773%_ _%test118774%_)
        (let ((_%seed118776%_ '0))
          (make-raw-table/lock__%
           _%size-hint118772%_
           _%hash118773%_
           _%test118774%_
           _%seed118776%_))))
    (define make-raw-table/lock
      (lambda _g118859_
        (let ((_g118860_ (##length _g118859_)))
          (cond ((##fx= _g118860_ 3) (apply make-raw-table/lock__0 _g118859_))
                ((##fx= _g118860_ 4) (apply make-raw-table/lock__% _g118859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g118859_))))))
    (define raw-table-length
      (lambda (_%tab118761%_) (&raw-table-count _%tab118761%_)))
    (define raw-table-length/lock
      (lambda (_%tab118734%_)
        (let ((_%lock118736%_ (&raw-table-lock _%tab118734%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118741%_ ((_%spin118744%_ '0))
              (if (##fx= (##vector-cas! _%lock118736%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118736%_ '1 (current-thread))
                  (if (##fx< _%spin118744%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118741%_ (##fx+ _%spin118744%_ '1)))
                      (let ((_%owner118750%_ (##vector-ref _%lock118736%_ '1)))
                        (if (eq? _%owner118750%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118750%_)
                                (let () (##thread-yield!) (_%again118741%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118756%_ (&raw-table-count _%tab118734%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118736%_ '1 '#f)
                (##vector-cas! _%lock118736%_ '0 '0 '1)))
            _%$r118756%_))))
    (define raw-table-ref
      (lambda (_%tab118686%_ _%key118687%_ _%default118688%_)
        (let ((_%table118690%_ (&raw-table-table _%tab118686%_))
              (_%seed118691%_ (&raw-table-seed _%tab118686%_))
              (_%hash118692%_ (&raw-table-hash _%tab118686%_))
              (_%test118693%_ (&raw-table-test _%tab118686%_)))
          (let* ((_%h118695%_
                  (fxxor (_%hash118692%_ _%key118687%_) _%seed118691%_))
                 (_%size118698%_ (vector-length _%table118690%_))
                 (_%entries118701%_ (##fxquotient _%size118698%_ '2))
                 (_%start118704%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118695%_ _%entries118701%_)
                   '1)))
            (let _%loop118708%_ ((_%probe118711%_ _%start118704%_)
                                 (_%i118713%_ '1)
                                 (_%deleted118715%_ '#f))
              (let ((_%k118718%_ (vector-ref _%table118690%_ _%probe118711%_)))
                (if (eq? _%k118718%_ (macro-unused-obj))
                    _%default118688%_
                    (if (eq? _%k118718%_ (macro-deleted-obj))
                        (_%loop118708%_
                         (let ((_%next-probe118723%_
                                (fx+ _%start118704%_
                                     _%i118713%_
                                     (fx* _%i118713%_ _%i118713%_))))
                           (##fxmodulo _%next-probe118723%_ _%size118698%_))
                         (##fx+ _%i118713%_ '1)
                         (let ((_%$e118726%_ _%deleted118715%_))
                           (if _%$e118726%_ _%$e118726%_ _%probe118711%_)))
                        (if (_%test118693%_ _%key118687%_ _%k118718%_)
                            (vector-ref
                             _%table118690%_
                             (##fx+ _%probe118711%_ '1))
                            (_%loop118708%_
                             (let ((_%next-probe118731%_
                                    (fx+ _%start118704%_
                                         _%i118713%_
                                         (fx* _%i118713%_ _%i118713%_))))
                               (##fxmodulo
                                _%next-probe118731%_
                                _%size118698%_))
                             (##fx+ _%i118713%_ '1)
                             _%deleted118715%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab118657%_ _%key118658%_ _%default118659%_)
        (let ((_%lock118661%_ (&raw-table-lock _%tab118657%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118666%_ ((_%spin118669%_ '0))
              (if (##fx= (##vector-cas! _%lock118661%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118661%_ '1 (current-thread))
                  (if (##fx< _%spin118669%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118666%_ (##fx+ _%spin118669%_ '1)))
                      (let ((_%owner118675%_ (##vector-ref _%lock118661%_ '1)))
                        (if (eq? _%owner118675%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118675%_)
                                (let () (##thread-yield!) (_%again118666%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118681%_
                 (raw-table-ref
                  _%tab118657%_
                  _%key118658%_
                  _%default118659%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118661%_ '1 '#f)
                (##vector-cas! _%lock118661%_ '0 '0 '1)))
            _%$r118681%_))))
    (define raw-table-set!
      (lambda (_%tab118653%_ _%key118654%_ _%value118655%_)
        (if (##fx< (&raw-table-free _%tab118653%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118653%_))
                    '4))
            (__raw-table-rehash! _%tab118653%_)
            '#!void)
        (__raw-table-set! _%tab118653%_ _%key118654%_ _%value118655%_)))
    (define raw-table-set!/lock
      (lambda (_%tab118624%_ _%key118625%_ _%value118626%_)
        (let ((_%lock118628%_ (&raw-table-lock _%tab118624%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118633%_ ((_%spin118636%_ '0))
              (if (##fx= (##vector-cas! _%lock118628%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118628%_ '1 (current-thread))
                  (if (##fx< _%spin118636%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118633%_ (##fx+ _%spin118636%_ '1)))
                      (let ((_%owner118642%_ (##vector-ref _%lock118628%_ '1)))
                        (if (eq? _%owner118642%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118642%_)
                                (let () (##thread-yield!) (_%again118633%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118648%_
                 (raw-table-set! _%tab118624%_ _%key118625%_ _%value118626%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118628%_ '1 '#f)
                (##vector-cas! _%lock118628%_ '0 '0 '1)))
            _%$r118648%_))))
    (define raw-table-update!
      (lambda (_%tab118619%_ _%key118620%_ _%update118621%_ _%default118622%_)
        (if (##fx< (&raw-table-free _%tab118619%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118619%_))
                    '4))
            (__raw-table-rehash! _%tab118619%_)
            '#!void)
        (__raw-table-update!
         _%tab118619%_
         _%key118620%_
         _%update118621%_
         _%default118622%_)))
    (define raw-table-update!/lock
      (lambda (_%tab118589%_ _%key118590%_ _%update118591%_ _%default118592%_)
        (let ((_%lock118594%_ (&raw-table-lock _%tab118589%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118599%_ ((_%spin118602%_ '0))
              (if (##fx= (##vector-cas! _%lock118594%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118594%_ '1 (current-thread))
                  (if (##fx< _%spin118602%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118599%_ (##fx+ _%spin118602%_ '1)))
                      (let ((_%owner118608%_ (##vector-ref _%lock118594%_ '1)))
                        (if (eq? _%owner118608%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118608%_)
                                (let () (##thread-yield!) (_%again118599%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118614%_
                 (raw-table-update!
                  _%tab118589%_
                  _%key118590%_
                  _%update118591%_
                  _%default118592%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118594%_ '1 '#f)
                (##vector-cas! _%lock118594%_ '0 '0 '1)))
            _%$r118614%_))))
    (define raw-table-delete!
      (lambda (_%tab118546%_ _%key118547%_)
        (let ((_%table118549%_ (&raw-table-table _%tab118546%_))
              (_%seed118550%_ (&raw-table-seed _%tab118546%_))
              (_%hash118551%_ (&raw-table-hash _%tab118546%_))
              (_%test118552%_ (&raw-table-test _%tab118546%_)))
          (let* ((_%h118554%_
                  (fxxor (_%hash118551%_ _%key118547%_) _%seed118550%_))
                 (_%size118557%_ (vector-length _%table118549%_))
                 (_%entries118560%_ (##fxquotient _%size118557%_ '2))
                 (_%start118563%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118554%_ _%entries118560%_)
                   '1)))
            (let _%loop118567%_ ((_%probe118570%_ _%start118563%_)
                                 (_%i118572%_ '1))
              (let ((_%k118575%_ (vector-ref _%table118549%_ _%probe118570%_)))
                (if (eq? _%k118575%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118575%_ (macro-deleted-obj))
                        (_%loop118567%_
                         (let ((_%next-probe118580%_
                                (fx+ _%start118563%_
                                     _%i118572%_
                                     (fx* _%i118572%_ _%i118572%_))))
                           (##fxmodulo _%next-probe118580%_ _%size118557%_))
                         (##fx+ _%i118572%_ '1))
                        (if (_%test118552%_ _%key118547%_ _%k118575%_)
                            (let ()
                              (vector-set!
                               _%table118549%_
                               _%probe118570%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118549%_
                               (##fx+ _%probe118570%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab118546%_
                                  (##fx- (&raw-table-count _%tab118546%_)
                                         '1)))))
                            (_%loop118567%_
                             (let ((_%next-probe118586%_
                                    (fx+ _%start118563%_
                                         _%i118572%_
                                         (fx* _%i118572%_ _%i118572%_))))
                               (##fxmodulo
                                _%next-probe118586%_
                                _%size118557%_))
                             (##fx+ _%i118572%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab118518%_ _%key118519%_)
        (let ((_%lock118521%_ (&raw-table-lock _%tab118518%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118526%_ ((_%spin118529%_ '0))
              (if (##fx= (##vector-cas! _%lock118521%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118521%_ '1 (current-thread))
                  (if (##fx< _%spin118529%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118526%_ (##fx+ _%spin118529%_ '1)))
                      (let ((_%owner118535%_ (##vector-ref _%lock118521%_ '1)))
                        (if (eq? _%owner118535%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118535%_)
                                (let () (##thread-yield!) (_%again118526%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118541%_ (raw-table-delete! _%tab118518%_ _%key118519%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118521%_ '1 '#f)
                (##vector-cas! _%lock118521%_ '0 '0 '1)))
            _%$r118541%_))))
    (define raw-table-for-each
      (lambda (_%tab118502%_ _%proc118503%_)
        (let* ((_%table118505%_ (&raw-table-table _%tab118502%_))
               (_%size118507%_ (vector-length _%table118505%_)))
          (let _%loop118510%_ ((_%i118512%_ '0))
            (if (##fx< _%i118512%_ _%size118507%_)
                (begin
                  (let ((_%key118514%_
                         (vector-ref _%table118505%_ _%i118512%_)))
                    (if (if (eq? _%key118514%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key118514%_ (macro-deleted-obj))))
                        (let ((_%value118516%_
                               (vector-ref
                                _%table118505%_
                                (##fx+ _%i118512%_ '1))))
                          (_%proc118503%_ _%key118514%_ _%value118516%_))
                        '#!void))
                  (_%loop118510%_ (##fx+ _%i118512%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab118474%_ _%proc118475%_)
        (let ((_%lock118477%_ (&raw-table-lock _%tab118474%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118482%_ ((_%spin118485%_ '0))
              (if (##fx= (##vector-cas! _%lock118477%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118477%_ '1 (current-thread))
                  (if (##fx< _%spin118485%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118482%_ (##fx+ _%spin118485%_ '1)))
                      (let ((_%owner118491%_ (##vector-ref _%lock118477%_ '1)))
                        (if (eq? _%owner118491%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118491%_)
                                (let () (##thread-yield!) (_%again118482%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118497%_
                 (raw-table-for-each _%tab118474%_ _%proc118475%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118477%_ '1 '#f)
                (##vector-cas! _%lock118477%_ '0 '0 '1)))
            _%$r118497%_))))
    (define raw-table-copy
      (lambda (_%tab118470%_)
        (let ((_%new-tab118472%_ (##structure-copy _%tab118470%_)))
          (&raw-table-table-set!
           _%new-tab118472%_
           (vector-copy (&raw-table-table _%tab118470%_)))
          _%new-tab118472%_)))
    (define raw-table-copy/lock
      (lambda (_%tab118443%_)
        (let ((_%lock118445%_ (&raw-table-lock _%tab118443%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118450%_ ((_%spin118453%_ '0))
              (if (##fx= (##vector-cas! _%lock118445%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118445%_ '1 (current-thread))
                  (if (##fx< _%spin118453%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118450%_ (##fx+ _%spin118453%_ '1)))
                      (let ((_%owner118459%_ (##vector-ref _%lock118445%_ '1)))
                        (if (eq? _%owner118459%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118459%_)
                                (let () (##thread-yield!) (_%again118450%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118465%_ (raw-table-copy _%tab118443%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118445%_ '1 '#f)
                (##vector-cas! _%lock118445%_ '0 '0 '1)))
            _%$r118465%_))))
    (define raw-table-clear!
      (lambda (_%tab118441%_)
        (vector-fill! (&raw-table-table _%tab118441%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab118441%_ '0)
        (&raw-table-free-set!
         _%tab118441%_
         (##fxquotient (vector-length (&raw-table-table _%tab118441%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab118414%_)
        (let ((_%lock118416%_ (&raw-table-lock _%tab118414%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118421%_ ((_%spin118424%_ '0))
              (if (##fx= (##vector-cas! _%lock118416%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118416%_ '1 (current-thread))
                  (if (##fx< _%spin118424%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118421%_ (##fx+ _%spin118424%_ '1)))
                      (let ((_%owner118430%_ (##vector-ref _%lock118416%_ '1)))
                        (if (eq? _%owner118430%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118430%_)
                                (let () (##thread-yield!) (_%again118421%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118436%_ (raw-table-clear! _%tab118414%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118416%_ '1 '#f)
                (##vector-cas! _%lock118416%_ '0 '0 '1)))
            _%$r118436%_))))
    (define __raw-table-set!
      (lambda (_%tab118364%_ _%key118365%_ _%value118366%_)
        (let ((_%table118368%_ (&raw-table-table _%tab118364%_))
              (_%seed118369%_ (&raw-table-seed _%tab118364%_))
              (_%hash118370%_ (&raw-table-hash _%tab118364%_))
              (_%test118371%_ (&raw-table-test _%tab118364%_)))
          (let* ((_%h118373%_
                  (fxxor (_%hash118370%_ _%key118365%_) _%seed118369%_))
                 (_%size118376%_ (vector-length _%table118368%_))
                 (_%entries118379%_ (##fxquotient _%size118376%_ '2))
                 (_%start118382%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118373%_ _%entries118379%_)
                   '1)))
            (let _%loop118386%_ ((_%probe118389%_ _%start118382%_)
                                 (_%i118391%_ '1)
                                 (_%deleted118393%_ '#f))
              (let ((_%k118396%_ (vector-ref _%table118368%_ _%probe118389%_)))
                (if (eq? _%k118396%_ (macro-unused-obj))
                    (if _%deleted118393%_
                        (begin
                          (vector-set!
                           _%table118368%_
                           _%deleted118393%_
                           _%key118365%_)
                          (vector-set!
                           _%table118368%_
                           (##fx+ _%deleted118393%_ '1)
                           _%value118366%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118364%_
                              (##fx+ (&raw-table-count _%tab118364%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118368%_
                           _%probe118389%_
                           _%key118365%_)
                          (vector-set!
                           _%table118368%_
                           (##fx+ _%probe118389%_ '1)
                           _%value118366%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118364%_
                              (##fx- (&raw-table-free _%tab118364%_) '1))
                             (&raw-table-count-set!
                              _%tab118364%_
                              (##fx+ (&raw-table-count _%tab118364%_) '1))))))
                    (if (eq? _%k118396%_ (macro-deleted-obj))
                        (_%loop118386%_
                         (let ((_%next-probe118403%_
                                (fx+ _%start118382%_
                                     _%i118391%_
                                     (fx* _%i118391%_ _%i118391%_))))
                           (##fxmodulo _%next-probe118403%_ _%size118376%_))
                         (##fx+ _%i118391%_ '1)
                         (let ((_%$e118406%_ _%deleted118393%_))
                           (if _%$e118406%_ _%$e118406%_ _%probe118389%_)))
                        (if (_%test118371%_ _%key118365%_ _%k118396%_)
                            (let ()
                              (vector-set!
                               _%table118368%_
                               _%probe118389%_
                               _%key118365%_)
                              (vector-set!
                               _%table118368%_
                               (##fx+ _%probe118389%_ '1)
                               _%value118366%_))
                            (_%loop118386%_
                             (let ((_%next-probe118411%_
                                    (fx+ _%start118382%_
                                         _%i118391%_
                                         (fx* _%i118391%_ _%i118391%_))))
                               (##fxmodulo
                                _%next-probe118411%_
                                _%size118376%_))
                             (##fx+ _%i118391%_ '1)
                             _%deleted118393%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab118313%_ _%key118314%_ _%update118315%_ _%default118316%_)
        (let ((_%table118318%_ (&raw-table-table _%tab118313%_))
              (_%seed118319%_ (&raw-table-seed _%tab118313%_))
              (_%hash118320%_ (&raw-table-hash _%tab118313%_))
              (_%test118321%_ (&raw-table-test _%tab118313%_)))
          (let* ((_%h118323%_
                  (fxxor (_%hash118320%_ _%key118314%_) _%seed118319%_))
                 (_%size118326%_ (vector-length _%table118318%_))
                 (_%entries118329%_ (##fxquotient _%size118326%_ '2))
                 (_%start118332%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118323%_ _%entries118329%_)
                   '1)))
            (let _%loop118336%_ ((_%probe118339%_ _%start118332%_)
                                 (_%i118341%_ '1)
                                 (_%deleted118343%_ '#f))
              (let ((_%k118346%_ (vector-ref _%table118318%_ _%probe118339%_)))
                (if (eq? _%k118346%_ (macro-unused-obj))
                    (if _%deleted118343%_
                        (begin
                          (vector-set!
                           _%table118318%_
                           _%deleted118343%_
                           _%key118314%_)
                          (vector-set!
                           _%table118318%_
                           (##fx+ _%deleted118343%_ '1)
                           (_%update118315%_ _%default118316%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118313%_
                              (##fx+ (&raw-table-count _%tab118313%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118318%_
                           _%probe118339%_
                           _%key118314%_)
                          (vector-set!
                           _%table118318%_
                           (##fx+ _%probe118339%_ '1)
                           (_%update118315%_ _%default118316%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118313%_
                              (##fx- (&raw-table-free _%tab118313%_) '1))
                             (&raw-table-count-set!
                              _%tab118313%_
                              (##fx+ (&raw-table-count _%tab118313%_) '1))))))
                    (if (eq? _%k118346%_ (macro-deleted-obj))
                        (_%loop118336%_
                         (let ((_%next-probe118353%_
                                (fx+ _%start118332%_
                                     _%i118341%_
                                     (fx* _%i118341%_ _%i118341%_))))
                           (##fxmodulo _%next-probe118353%_ _%size118326%_))
                         (##fx+ _%i118341%_ '1)
                         (let ((_%$e118356%_ _%deleted118343%_))
                           (if _%$e118356%_ _%$e118356%_ _%probe118339%_)))
                        (if (_%test118321%_ _%key118314%_ _%k118346%_)
                            (let ()
                              (vector-set!
                               _%table118318%_
                               _%probe118339%_
                               _%key118314%_)
                              (vector-set!
                               _%table118318%_
                               (##fx+ _%probe118339%_ '1)
                               (_%update118315%_
                                (vector-ref
                                 _%table118318%_
                                 (##fx+ _%probe118339%_ '1)))))
                            (_%loop118336%_
                             (let ((_%next-probe118361%_
                                    (fx+ _%start118332%_
                                         _%i118341%_
                                         (fx* _%i118341%_ _%i118341%_))))
                               (##fxmodulo
                                _%next-probe118361%_
                                _%size118326%_))
                             (##fx+ _%i118341%_ '1)
                             _%deleted118343%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab118294%_)
        (let* ((_%old-table118296%_ (&raw-table-table _%tab118294%_))
               (_%old-size118298%_ (vector-length _%old-table118296%_))
               (_%new-size118300%_
                (if (##fx< (&raw-table-count _%tab118294%_)
                           (##fxquotient _%old-size118298%_ '4))
                    (vector-length _%old-table118296%_)
                    (##fx* '2 (vector-length _%old-table118296%_))))
               (_%new-table118302%_
                (##make-vector _%new-size118300%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab118294%_ _%new-table118302%_)
          (&raw-table-count-set! _%tab118294%_ '0)
          (&raw-table-free-set!
           _%tab118294%_
           (##fxquotient _%new-size118300%_ '2))
          (let _%lp118305%_ ((_%i118307%_ '0))
            (if (##fx< _%i118307%_ _%old-size118298%_)
                (begin
                  (let ((_%key118309%_
                         (vector-ref _%old-table118296%_ _%i118307%_)))
                    (if (if (eq? _%key118309%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key118309%_ (macro-deleted-obj))))
                        (let ((_%value118311%_
                               (vector-ref
                                _%old-table118296%_
                                (##fx+ _%i118307%_ '1))))
                          (__raw-table-set!
                           _%tab118294%_
                           _%key118309%_
                           _%value118311%_))
                        '#!void))
                  (_%lp118305%_ (##fx+ _%i118307%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj118286%_)
        (let ((_%t118288%_ (##type _%obj118286%_)))
          (if (##fx= (##fxand _%t118288%_ '1) '0)
              (fxand (##type-cast _%obj118286%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj118286%_)
                  (##symbol-hash _%obj118286%_)
                  (if (procedure? _%obj118286%_)
                      (procedure-hash _%obj118286%_)
                      (fxand (__eq-hash _%obj118286%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj118282%_)
        (let ((_%h118284%_
               (if (##closure? _%obj118282%_)
                   (__eq-hash _%obj118282%_)
                   (##type-cast _%obj118282%_ '0))))
          (fxand _%h118284%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj118279%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj118279%_)))
    (define eqv-hash
      (lambda (_%obj118269%_)
        (letrec ((_%combine118271%_
                  (lambda (_%a118276%_ _%b118277%_)
                    (fxand (##fx* (##fx+ _%a118276%_
                                         (fxarithmetic-shift-left
                                          _%b118277%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash118272%_
                  (lambda (_%obj118274%_)
                    (macro-number-dispatch
                     _%obj118274%_
                     (eq-hash _%obj118274%_)
                     (fxand _%obj118274%_ (macro-max-fixnum32))
                     (modulo _%obj118274%_ '331804481)
                     (_%combine118271%_
                      (_%hash118272%_ (macro-ratnum-numerator _%obj118274%_))
                      (_%hash118272%_
                       (macro-ratnum-denominator _%obj118274%_)))
                     (_%combine118271%_
                      (##u16vector-ref _%obj118274%_ '0)
                      (_%combine118271%_
                       (##u16vector-ref _%obj118274%_ '1)
                       (_%combine118271%_
                        (##u16vector-ref _%obj118274%_ '2)
                        (##u16vector-ref _%obj118274%_ '3))))
                     (_%combine118271%_
                      (_%hash118272%_ (macro-cpxnum-real _%obj118274%_))
                      (_%hash118272%_ (macro-cpxnum-imag _%obj118274%_)))))))
          (_%hash118272%_ _%obj118269%_))))
    (define symbolic?
      (lambda (_%obj118264%_)
        (let ((_%$e118266%_ (symbol? _%obj118264%_)))
          (if _%$e118266%_ _%$e118266%_ (keyword? _%obj118264%_)))))
    (define symbolic-hash
      (lambda (_%obj118262%_) (##symbol-hash _%obj118262%_)))
    (define string-hash
      (lambda (_%obj118260%_) (##string=?-hash _%obj118260%_)))
    (define immediate-hash
      (lambda (_%obj118258%_) (##type-cast _%obj118258%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint118240%_ _%seed118241%_)
        (make-raw-table__1 _%size-hint118240%_ eq-hash eq? _%seed118241%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint118247%_ '#f) (_%seed118249%_ '0))
          (make-eq-table__% _%size-hint118247%_ _%seed118249%_))))
    (define make-eq-table__1
      (lambda (_%size-hint118251%_)
        (let ((_%seed118253%_ '0))
          (make-eq-table__% _%size-hint118251%_ _%seed118253%_))))
    (define make-eq-table
      (lambda _g118861_
        (let ((_g118862_ (##length _g118861_)))
          (cond ((##fx= _g118862_ 0) (apply make-eq-table__0 _g118861_))
                ((##fx= _g118862_ 1) (apply make-eq-table__1 _g118861_))
                ((##fx= _g118862_ 2) (apply make-eq-table__% _g118861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g118861_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint118220%_ _%seed118222%_)
        (make-raw-table/lock__%
         _%size-hint118220%_
         eq-hash
         eq?
         _%seed118222%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint118228%_ '#f) (_%seed118230%_ '0))
          (make-eq-table/lock__% _%size-hint118228%_ _%seed118230%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint118232%_)
        (let ((_%seed118234%_ '0))
          (make-eq-table/lock__% _%size-hint118232%_ _%seed118234%_))))
    (define make-eq-table/lock
      (lambda _g118863_
        (let ((_g118864_ (##length _g118863_)))
          (cond ((##fx= _g118864_ 0) (apply make-eq-table/lock__0 _g118863_))
                ((##fx= _g118864_ 1) (apply make-eq-table/lock__1 _g118863_))
                ((##fx= _g118864_ 2) (apply make-eq-table/lock__% _g118863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g118863_))))))
    (define eq-table-ref
      (lambda (_%tab118173%_ _%key118174%_ _%default118175%_)
        (let ((_%table118177%_ (&raw-table-table _%tab118173%_))
              (_%seed118178%_ (&raw-table-seed _%tab118173%_)))
          (let* ((_%h118180%_ (fxxor (eq-hash _%key118174%_) _%seed118178%_))
                 (_%size118183%_ (vector-length _%table118177%_))
                 (_%entries118186%_ (##fxquotient _%size118183%_ '2))
                 (_%start118189%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118180%_ _%entries118186%_)
                   '1)))
            (let _%loop118193%_ ((_%probe118196%_ _%start118189%_)
                                 (_%i118198%_ '1)
                                 (_%deleted118200%_ '#f))
              (let ((_%k118203%_ (vector-ref _%table118177%_ _%probe118196%_)))
                (if (eq? _%k118203%_ (macro-unused-obj))
                    _%default118175%_
                    (if (eq? _%k118203%_ (macro-deleted-obj))
                        (_%loop118193%_
                         (let ((_%next-probe118208%_
                                (fx+ _%start118189%_
                                     _%i118198%_
                                     (fx* _%i118198%_ _%i118198%_))))
                           (##fxmodulo _%next-probe118208%_ _%size118183%_))
                         (##fx+ _%i118198%_ '1)
                         (let ((_%$e118211%_ _%deleted118200%_))
                           (if _%$e118211%_ _%$e118211%_ _%probe118196%_)))
                        (if (eq? _%key118174%_ _%k118203%_)
                            (vector-ref
                             _%table118177%_
                             (##fx+ _%probe118196%_ '1))
                            (_%loop118193%_
                             (let ((_%next-probe118216%_
                                    (fx+ _%start118189%_
                                         _%i118198%_
                                         (fx* _%i118198%_ _%i118198%_))))
                               (##fxmodulo
                                _%next-probe118216%_
                                _%size118183%_))
                             (##fx+ _%i118198%_ '1)
                             _%deleted118200%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab118144%_ _%key118145%_ _%default118146%_)
        (let ((_%lock118148%_ (&raw-table-lock _%tab118144%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118153%_ ((_%spin118156%_ '0))
              (if (##fx= (##vector-cas! _%lock118148%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118148%_ '1 (current-thread))
                  (if (##fx< _%spin118156%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118153%_ (##fx+ _%spin118156%_ '1)))
                      (let ((_%owner118162%_ (##vector-ref _%lock118148%_ '1)))
                        (if (eq? _%owner118162%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118162%_)
                                (let () (##thread-yield!) (_%again118153%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118168%_
                 (eq-table-ref _%tab118144%_ _%key118145%_ _%default118146%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118148%_ '1 '#f)
                (##vector-cas! _%lock118148%_ '0 '0 '1)))
            _%$r118168%_))))
    (define __eq-table-set!
      (lambda (_%tab118096%_ _%key118097%_ _%value118098%_)
        (let ((_%table118100%_ (&raw-table-table _%tab118096%_))
              (_%seed118101%_ (&raw-table-seed _%tab118096%_)))
          (let* ((_%h118103%_ (fxxor (eq-hash _%key118097%_) _%seed118101%_))
                 (_%size118106%_ (vector-length _%table118100%_))
                 (_%entries118109%_ (##fxquotient _%size118106%_ '2))
                 (_%start118112%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118103%_ _%entries118109%_)
                   '1)))
            (let _%loop118116%_ ((_%probe118119%_ _%start118112%_)
                                 (_%i118121%_ '1)
                                 (_%deleted118123%_ '#f))
              (let ((_%k118126%_ (vector-ref _%table118100%_ _%probe118119%_)))
                (if (eq? _%k118126%_ (macro-unused-obj))
                    (if _%deleted118123%_
                        (begin
                          (vector-set!
                           _%table118100%_
                           _%deleted118123%_
                           _%key118097%_)
                          (vector-set!
                           _%table118100%_
                           (##fx+ _%deleted118123%_ '1)
                           _%value118098%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118096%_
                              (##fx+ (&raw-table-count _%tab118096%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118100%_
                           _%probe118119%_
                           _%key118097%_)
                          (vector-set!
                           _%table118100%_
                           (##fx+ _%probe118119%_ '1)
                           _%value118098%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118096%_
                              (##fx- (&raw-table-free _%tab118096%_) '1))
                             (&raw-table-count-set!
                              _%tab118096%_
                              (##fx+ (&raw-table-count _%tab118096%_) '1))))))
                    (if (eq? _%k118126%_ (macro-deleted-obj))
                        (_%loop118116%_
                         (let ((_%next-probe118133%_
                                (fx+ _%start118112%_
                                     _%i118121%_
                                     (fx* _%i118121%_ _%i118121%_))))
                           (##fxmodulo _%next-probe118133%_ _%size118106%_))
                         (##fx+ _%i118121%_ '1)
                         (let ((_%$e118136%_ _%deleted118123%_))
                           (if _%$e118136%_ _%$e118136%_ _%probe118119%_)))
                        (if (eq? _%key118097%_ _%k118126%_)
                            (let ()
                              (vector-set!
                               _%table118100%_
                               _%probe118119%_
                               _%key118097%_)
                              (vector-set!
                               _%table118100%_
                               (##fx+ _%probe118119%_ '1)
                               _%value118098%_))
                            (_%loop118116%_
                             (let ((_%next-probe118141%_
                                    (fx+ _%start118112%_
                                         _%i118121%_
                                         (fx* _%i118121%_ _%i118121%_))))
                               (##fxmodulo
                                _%next-probe118141%_
                                _%size118106%_))
                             (##fx+ _%i118121%_ '1)
                             _%deleted118123%_))))))))))
    (define eq-table-set!
      (lambda (_%tab118092%_ _%key118093%_ _%value118094%_)
        (if (##fx< (&raw-table-free _%tab118092%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118092%_))
                    '4))
            (__raw-table-rehash! _%tab118092%_)
            '#!void)
        (__eq-table-set! _%tab118092%_ _%key118093%_ _%value118094%_)))
    (define eq-table-set!/lock
      (lambda (_%tab118062%_ _%key118063%_ _%value118064%_)
        (let ((_%lock118067%_ (&raw-table-lock _%tab118062%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118072%_ ((_%spin118075%_ '0))
              (if (##fx= (##vector-cas! _%lock118067%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118067%_ '1 (current-thread))
                  (if (##fx< _%spin118075%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118072%_ (##fx+ _%spin118075%_ '1)))
                      (let ((_%owner118081%_ (##vector-ref _%lock118067%_ '1)))
                        (if (eq? _%owner118081%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118081%_)
                                (let () (##thread-yield!) (_%again118072%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118087%_
                 (eq-table-set! _%tab118062%_ _%key118063%_ _%value118064%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118067%_ '1 '#f)
                (##vector-cas! _%lock118067%_ '0 '0 '1)))
            _%$r118087%_))))
    (define __eq-table-update!
      (lambda (_%tab118013%_
               _%key118014%_
               _%eq-table-update!118015%_
               _%default118016%_)
        (let ((_%table118018%_ (&raw-table-table _%tab118013%_))
              (_%seed118019%_ (&raw-table-seed _%tab118013%_)))
          (let* ((_%h118021%_ (fxxor (eq-hash _%key118014%_) _%seed118019%_))
                 (_%size118024%_ (vector-length _%table118018%_))
                 (_%entries118027%_ (##fxquotient _%size118024%_ '2))
                 (_%start118030%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118021%_ _%entries118027%_)
                   '1)))
            (let _%loop118034%_ ((_%probe118037%_ _%start118030%_)
                                 (_%i118039%_ '1)
                                 (_%deleted118041%_ '#f))
              (let ((_%k118044%_ (vector-ref _%table118018%_ _%probe118037%_)))
                (if (eq? _%k118044%_ (macro-unused-obj))
                    (if _%deleted118041%_
                        (begin
                          (vector-set!
                           _%table118018%_
                           _%deleted118041%_
                           _%key118014%_)
                          (vector-set!
                           _%table118018%_
                           (##fx+ _%deleted118041%_ '1)
                           (_%eq-table-update!118015%_ _%default118016%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118013%_
                              (##fx+ (&raw-table-count _%tab118013%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118018%_
                           _%probe118037%_
                           _%key118014%_)
                          (vector-set!
                           _%table118018%_
                           (##fx+ _%probe118037%_ '1)
                           (_%eq-table-update!118015%_ _%default118016%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118013%_
                              (##fx- (&raw-table-free _%tab118013%_) '1))
                             (&raw-table-count-set!
                              _%tab118013%_
                              (##fx+ (&raw-table-count _%tab118013%_) '1))))))
                    (if (eq? _%k118044%_ (macro-deleted-obj))
                        (_%loop118034%_
                         (let ((_%next-probe118051%_
                                (fx+ _%start118030%_
                                     _%i118039%_
                                     (fx* _%i118039%_ _%i118039%_))))
                           (##fxmodulo _%next-probe118051%_ _%size118024%_))
                         (##fx+ _%i118039%_ '1)
                         (let ((_%$e118054%_ _%deleted118041%_))
                           (if _%$e118054%_ _%$e118054%_ _%probe118037%_)))
                        (if (eq? _%key118014%_ _%k118044%_)
                            (let ()
                              (vector-set!
                               _%table118018%_
                               _%probe118037%_
                               _%key118014%_)
                              (vector-set!
                               _%table118018%_
                               (##fx+ _%probe118037%_ '1)
                               (_%eq-table-update!118015%_
                                (vector-ref
                                 _%table118018%_
                                 (##fx+ _%probe118037%_ '1)))))
                            (_%loop118034%_
                             (let ((_%next-probe118059%_
                                    (fx+ _%start118030%_
                                         _%i118039%_
                                         (fx* _%i118039%_ _%i118039%_))))
                               (##fxmodulo
                                _%next-probe118059%_
                                _%size118024%_))
                             (##fx+ _%i118039%_ '1)
                             _%deleted118041%_))))))))))
    (define eq-table-update!
      (lambda (_%tab118008%_
               _%key118009%_
               _%eq-table-update!118010%_
               _%default118011%_)
        (if (##fx< (&raw-table-free _%tab118008%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118008%_))
                    '4))
            (__raw-table-rehash! _%tab118008%_)
            '#!void)
        (__eq-table-update!
         _%tab118008%_
         _%key118009%_
         _%eq-table-update!118010%_
         _%default118011%_)))
    (define eq-table-update!/lock
      (lambda (_%tab117977%_
               _%key117978%_
               _%eq-table-update!117979%_
               _%default117980%_)
        (let ((_%lock117983%_ (&raw-table-lock _%tab117977%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117988%_ ((_%spin117991%_ '0))
              (if (##fx= (##vector-cas! _%lock117983%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117983%_ '1 (current-thread))
                  (if (##fx< _%spin117991%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117988%_ (##fx+ _%spin117991%_ '1)))
                      (let ((_%owner117997%_ (##vector-ref _%lock117983%_ '1)))
                        (if (eq? _%owner117997%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117997%_)
                                (let () (##thread-yield!) (_%again117988%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118003%_
                 (_%eq-table-update!117979%_
                  _%tab117977%_
                  _%key117978%_
                  _%eq-table-update!117979%_
                  _%default117980%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117983%_ '1 '#f)
                (##vector-cas! _%lock117983%_ '0 '0 '1)))
            _%$r118003%_))))
    (define eq-table-delete!
      (lambda (_%tab117934%_ _%key117935%_)
        (let ((_%table117937%_ (&raw-table-table _%tab117934%_))
              (_%seed117939%_ (&raw-table-seed _%tab117934%_)))
          (let* ((_%h117942%_ (fxxor (eq-hash _%key117935%_) _%seed117939%_))
                 (_%size117945%_ (vector-length _%table117937%_))
                 (_%entries117948%_ (##fxquotient _%size117945%_ '2))
                 (_%start117951%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117942%_ _%entries117948%_)
                   '1)))
            (let _%loop117955%_ ((_%probe117958%_ _%start117951%_)
                                 (_%i117960%_ '1))
              (let ((_%k117963%_ (vector-ref _%table117937%_ _%probe117958%_)))
                (if (eq? _%k117963%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117963%_ (macro-deleted-obj))
                        (_%loop117955%_
                         (let ((_%next-probe117968%_
                                (fx+ _%start117951%_
                                     _%i117960%_
                                     (fx* _%i117960%_ _%i117960%_))))
                           (##fxmodulo _%next-probe117968%_ _%size117945%_))
                         (##fx+ _%i117960%_ '1))
                        (if (eq? _%key117935%_ _%k117963%_)
                            (let ()
                              (vector-set!
                               _%table117937%_
                               _%probe117958%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117937%_
                               (##fx+ _%probe117958%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117934%_
                                  (##fx- (&raw-table-count _%tab117934%_)
                                         '1)))))
                            (_%loop117955%_
                             (let ((_%next-probe117974%_
                                    (fx+ _%start117951%_
                                         _%i117960%_
                                         (fx* _%i117960%_ _%i117960%_))))
                               (##fxmodulo
                                _%next-probe117974%_
                                _%size117945%_))
                             (##fx+ _%i117960%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab117904%_ _%key117906%_)
        (let ((_%lock117909%_ (&raw-table-lock _%tab117904%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117914%_ ((_%spin117917%_ '0))
              (if (##fx= (##vector-cas! _%lock117909%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117909%_ '1 (current-thread))
                  (if (##fx< _%spin117917%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117914%_ (##fx+ _%spin117917%_ '1)))
                      (let ((_%owner117923%_ (##vector-ref _%lock117909%_ '1)))
                        (if (eq? _%owner117923%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117923%_)
                                (let () (##thread-yield!) (_%again117914%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117929%_ (eq-table-delete! _%tab117904%_ _%key117906%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117909%_ '1 '#f)
                (##vector-cas! _%lock117909%_ '0 '0 '1)))
            _%$r117929%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint117886%_ _%seed117887%_)
        (make-raw-table__1 _%size-hint117886%_ eqv-hash eqv? _%seed117887%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint117893%_ '#f) (_%seed117895%_ '0))
          (make-eqv-table__% _%size-hint117893%_ _%seed117895%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint117897%_)
        (let ((_%seed117899%_ '0))
          (make-eqv-table__% _%size-hint117897%_ _%seed117899%_))))
    (define make-eqv-table
      (lambda _g118865_
        (let ((_g118866_ (##length _g118865_)))
          (cond ((##fx= _g118866_ 0) (apply make-eqv-table__0 _g118865_))
                ((##fx= _g118866_ 1) (apply make-eqv-table__1 _g118865_))
                ((##fx= _g118866_ 2) (apply make-eqv-table__% _g118865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g118865_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint117866%_ _%seed117868%_)
        (make-raw-table/lock__%
         _%size-hint117866%_
         eqv-hash
         eqv?
         _%seed117868%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint117874%_ '#f) (_%seed117876%_ '0))
          (make-eqv-table/lock__% _%size-hint117874%_ _%seed117876%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint117878%_)
        (let ((_%seed117880%_ '0))
          (make-eqv-table/lock__% _%size-hint117878%_ _%seed117880%_))))
    (define make-eqv-table/lock
      (lambda _g118867_
        (let ((_g118868_ (##length _g118867_)))
          (cond ((##fx= _g118868_ 0) (apply make-eqv-table/lock__0 _g118867_))
                ((##fx= _g118868_ 1) (apply make-eqv-table/lock__1 _g118867_))
                ((##fx= _g118868_ 2) (apply make-eqv-table/lock__% _g118867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g118867_))))))
    (define eqv-table-ref
      (lambda (_%tab117819%_ _%key117820%_ _%default117821%_)
        (let ((_%table117823%_ (&raw-table-table _%tab117819%_))
              (_%seed117824%_ (&raw-table-seed _%tab117819%_)))
          (let* ((_%h117826%_ (fxxor (eqv-hash _%key117820%_) _%seed117824%_))
                 (_%size117829%_ (vector-length _%table117823%_))
                 (_%entries117832%_ (##fxquotient _%size117829%_ '2))
                 (_%start117835%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117826%_ _%entries117832%_)
                   '1)))
            (let _%loop117839%_ ((_%probe117842%_ _%start117835%_)
                                 (_%i117844%_ '1)
                                 (_%deleted117846%_ '#f))
              (let ((_%k117849%_ (vector-ref _%table117823%_ _%probe117842%_)))
                (if (eq? _%k117849%_ (macro-unused-obj))
                    _%default117821%_
                    (if (eq? _%k117849%_ (macro-deleted-obj))
                        (_%loop117839%_
                         (let ((_%next-probe117854%_
                                (fx+ _%start117835%_
                                     _%i117844%_
                                     (fx* _%i117844%_ _%i117844%_))))
                           (##fxmodulo _%next-probe117854%_ _%size117829%_))
                         (##fx+ _%i117844%_ '1)
                         (let ((_%$e117857%_ _%deleted117846%_))
                           (if _%$e117857%_ _%$e117857%_ _%probe117842%_)))
                        (if (eqv? _%key117820%_ _%k117849%_)
                            (vector-ref
                             _%table117823%_
                             (##fx+ _%probe117842%_ '1))
                            (_%loop117839%_
                             (let ((_%next-probe117862%_
                                    (fx+ _%start117835%_
                                         _%i117844%_
                                         (fx* _%i117844%_ _%i117844%_))))
                               (##fxmodulo
                                _%next-probe117862%_
                                _%size117829%_))
                             (##fx+ _%i117844%_ '1)
                             _%deleted117846%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab117790%_ _%key117791%_ _%default117792%_)
        (let ((_%lock117794%_ (&raw-table-lock _%tab117790%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117799%_ ((_%spin117802%_ '0))
              (if (##fx= (##vector-cas! _%lock117794%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117794%_ '1 (current-thread))
                  (if (##fx< _%spin117802%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117799%_ (##fx+ _%spin117802%_ '1)))
                      (let ((_%owner117808%_ (##vector-ref _%lock117794%_ '1)))
                        (if (eq? _%owner117808%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117808%_)
                                (let () (##thread-yield!) (_%again117799%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117814%_
                 (eqv-table-ref
                  _%tab117790%_
                  _%key117791%_
                  _%default117792%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117794%_ '1 '#f)
                (##vector-cas! _%lock117794%_ '0 '0 '1)))
            _%$r117814%_))))
    (define __eqv-table-set!
      (lambda (_%tab117742%_ _%key117743%_ _%value117744%_)
        (let ((_%table117746%_ (&raw-table-table _%tab117742%_))
              (_%seed117747%_ (&raw-table-seed _%tab117742%_)))
          (let* ((_%h117749%_ (fxxor (eqv-hash _%key117743%_) _%seed117747%_))
                 (_%size117752%_ (vector-length _%table117746%_))
                 (_%entries117755%_ (##fxquotient _%size117752%_ '2))
                 (_%start117758%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117749%_ _%entries117755%_)
                   '1)))
            (let _%loop117762%_ ((_%probe117765%_ _%start117758%_)
                                 (_%i117767%_ '1)
                                 (_%deleted117769%_ '#f))
              (let ((_%k117772%_ (vector-ref _%table117746%_ _%probe117765%_)))
                (if (eq? _%k117772%_ (macro-unused-obj))
                    (if _%deleted117769%_
                        (begin
                          (vector-set!
                           _%table117746%_
                           _%deleted117769%_
                           _%key117743%_)
                          (vector-set!
                           _%table117746%_
                           (##fx+ _%deleted117769%_ '1)
                           _%value117744%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117742%_
                              (##fx+ (&raw-table-count _%tab117742%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117746%_
                           _%probe117765%_
                           _%key117743%_)
                          (vector-set!
                           _%table117746%_
                           (##fx+ _%probe117765%_ '1)
                           _%value117744%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117742%_
                              (##fx- (&raw-table-free _%tab117742%_) '1))
                             (&raw-table-count-set!
                              _%tab117742%_
                              (##fx+ (&raw-table-count _%tab117742%_) '1))))))
                    (if (eq? _%k117772%_ (macro-deleted-obj))
                        (_%loop117762%_
                         (let ((_%next-probe117779%_
                                (fx+ _%start117758%_
                                     _%i117767%_
                                     (fx* _%i117767%_ _%i117767%_))))
                           (##fxmodulo _%next-probe117779%_ _%size117752%_))
                         (##fx+ _%i117767%_ '1)
                         (let ((_%$e117782%_ _%deleted117769%_))
                           (if _%$e117782%_ _%$e117782%_ _%probe117765%_)))
                        (if (eqv? _%key117743%_ _%k117772%_)
                            (let ()
                              (vector-set!
                               _%table117746%_
                               _%probe117765%_
                               _%key117743%_)
                              (vector-set!
                               _%table117746%_
                               (##fx+ _%probe117765%_ '1)
                               _%value117744%_))
                            (_%loop117762%_
                             (let ((_%next-probe117787%_
                                    (fx+ _%start117758%_
                                         _%i117767%_
                                         (fx* _%i117767%_ _%i117767%_))))
                               (##fxmodulo
                                _%next-probe117787%_
                                _%size117752%_))
                             (##fx+ _%i117767%_ '1)
                             _%deleted117769%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab117738%_ _%key117739%_ _%value117740%_)
        (if (##fx< (&raw-table-free _%tab117738%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117738%_))
                    '4))
            (__raw-table-rehash! _%tab117738%_)
            '#!void)
        (__eqv-table-set! _%tab117738%_ _%key117739%_ _%value117740%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab117708%_ _%key117709%_ _%value117710%_)
        (let ((_%lock117713%_ (&raw-table-lock _%tab117708%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117718%_ ((_%spin117721%_ '0))
              (if (##fx= (##vector-cas! _%lock117713%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117713%_ '1 (current-thread))
                  (if (##fx< _%spin117721%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117718%_ (##fx+ _%spin117721%_ '1)))
                      (let ((_%owner117727%_ (##vector-ref _%lock117713%_ '1)))
                        (if (eq? _%owner117727%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117727%_)
                                (let () (##thread-yield!) (_%again117718%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117733%_
                 (eqv-table-set! _%tab117708%_ _%key117709%_ _%value117710%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117713%_ '1 '#f)
                (##vector-cas! _%lock117713%_ '0 '0 '1)))
            _%$r117733%_))))
    (define __eqv-table-update!
      (lambda (_%tab117659%_
               _%key117660%_
               _%eqv-table-update!117661%_
               _%default117662%_)
        (let ((_%table117664%_ (&raw-table-table _%tab117659%_))
              (_%seed117665%_ (&raw-table-seed _%tab117659%_)))
          (let* ((_%h117667%_ (fxxor (eqv-hash _%key117660%_) _%seed117665%_))
                 (_%size117670%_ (vector-length _%table117664%_))
                 (_%entries117673%_ (##fxquotient _%size117670%_ '2))
                 (_%start117676%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117667%_ _%entries117673%_)
                   '1)))
            (let _%loop117680%_ ((_%probe117683%_ _%start117676%_)
                                 (_%i117685%_ '1)
                                 (_%deleted117687%_ '#f))
              (let ((_%k117690%_ (vector-ref _%table117664%_ _%probe117683%_)))
                (if (eq? _%k117690%_ (macro-unused-obj))
                    (if _%deleted117687%_
                        (begin
                          (vector-set!
                           _%table117664%_
                           _%deleted117687%_
                           _%key117660%_)
                          (vector-set!
                           _%table117664%_
                           (##fx+ _%deleted117687%_ '1)
                           (_%eqv-table-update!117661%_ _%default117662%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117659%_
                              (##fx+ (&raw-table-count _%tab117659%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117664%_
                           _%probe117683%_
                           _%key117660%_)
                          (vector-set!
                           _%table117664%_
                           (##fx+ _%probe117683%_ '1)
                           (_%eqv-table-update!117661%_ _%default117662%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117659%_
                              (##fx- (&raw-table-free _%tab117659%_) '1))
                             (&raw-table-count-set!
                              _%tab117659%_
                              (##fx+ (&raw-table-count _%tab117659%_) '1))))))
                    (if (eq? _%k117690%_ (macro-deleted-obj))
                        (_%loop117680%_
                         (let ((_%next-probe117697%_
                                (fx+ _%start117676%_
                                     _%i117685%_
                                     (fx* _%i117685%_ _%i117685%_))))
                           (##fxmodulo _%next-probe117697%_ _%size117670%_))
                         (##fx+ _%i117685%_ '1)
                         (let ((_%$e117700%_ _%deleted117687%_))
                           (if _%$e117700%_ _%$e117700%_ _%probe117683%_)))
                        (if (eqv? _%key117660%_ _%k117690%_)
                            (let ()
                              (vector-set!
                               _%table117664%_
                               _%probe117683%_
                               _%key117660%_)
                              (vector-set!
                               _%table117664%_
                               (##fx+ _%probe117683%_ '1)
                               (_%eqv-table-update!117661%_
                                (vector-ref
                                 _%table117664%_
                                 (##fx+ _%probe117683%_ '1)))))
                            (_%loop117680%_
                             (let ((_%next-probe117705%_
                                    (fx+ _%start117676%_
                                         _%i117685%_
                                         (fx* _%i117685%_ _%i117685%_))))
                               (##fxmodulo
                                _%next-probe117705%_
                                _%size117670%_))
                             (##fx+ _%i117685%_ '1)
                             _%deleted117687%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab117654%_
               _%key117655%_
               _%eqv-table-update!117656%_
               _%default117657%_)
        (if (##fx< (&raw-table-free _%tab117654%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117654%_))
                    '4))
            (__raw-table-rehash! _%tab117654%_)
            '#!void)
        (__eqv-table-update!
         _%tab117654%_
         _%key117655%_
         _%eqv-table-update!117656%_
         _%default117657%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab117623%_
               _%key117624%_
               _%eqv-table-update!117625%_
               _%default117626%_)
        (let ((_%lock117629%_ (&raw-table-lock _%tab117623%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117634%_ ((_%spin117637%_ '0))
              (if (##fx= (##vector-cas! _%lock117629%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117629%_ '1 (current-thread))
                  (if (##fx< _%spin117637%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117634%_ (##fx+ _%spin117637%_ '1)))
                      (let ((_%owner117643%_ (##vector-ref _%lock117629%_ '1)))
                        (if (eq? _%owner117643%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117643%_)
                                (let () (##thread-yield!) (_%again117634%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117649%_
                 (_%eqv-table-update!117625%_
                  _%tab117623%_
                  _%key117624%_
                  _%eqv-table-update!117625%_
                  _%default117626%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117629%_ '1 '#f)
                (##vector-cas! _%lock117629%_ '0 '0 '1)))
            _%$r117649%_))))
    (define eqv-table-delete!
      (lambda (_%tab117580%_ _%key117581%_)
        (let ((_%table117583%_ (&raw-table-table _%tab117580%_))
              (_%seed117585%_ (&raw-table-seed _%tab117580%_)))
          (let* ((_%h117588%_ (fxxor (eqv-hash _%key117581%_) _%seed117585%_))
                 (_%size117591%_ (vector-length _%table117583%_))
                 (_%entries117594%_ (##fxquotient _%size117591%_ '2))
                 (_%start117597%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117588%_ _%entries117594%_)
                   '1)))
            (let _%loop117601%_ ((_%probe117604%_ _%start117597%_)
                                 (_%i117606%_ '1))
              (let ((_%k117609%_ (vector-ref _%table117583%_ _%probe117604%_)))
                (if (eq? _%k117609%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117609%_ (macro-deleted-obj))
                        (_%loop117601%_
                         (let ((_%next-probe117614%_
                                (fx+ _%start117597%_
                                     _%i117606%_
                                     (fx* _%i117606%_ _%i117606%_))))
                           (##fxmodulo _%next-probe117614%_ _%size117591%_))
                         (##fx+ _%i117606%_ '1))
                        (if (eqv? _%key117581%_ _%k117609%_)
                            (let ()
                              (vector-set!
                               _%table117583%_
                               _%probe117604%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117583%_
                               (##fx+ _%probe117604%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117580%_
                                  (##fx- (&raw-table-count _%tab117580%_)
                                         '1)))))
                            (_%loop117601%_
                             (let ((_%next-probe117620%_
                                    (fx+ _%start117597%_
                                         _%i117606%_
                                         (fx* _%i117606%_ _%i117606%_))))
                               (##fxmodulo
                                _%next-probe117620%_
                                _%size117591%_))
                             (##fx+ _%i117606%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab117550%_ _%key117552%_)
        (let ((_%lock117555%_ (&raw-table-lock _%tab117550%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117560%_ ((_%spin117563%_ '0))
              (if (##fx= (##vector-cas! _%lock117555%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117555%_ '1 (current-thread))
                  (if (##fx< _%spin117563%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117560%_ (##fx+ _%spin117563%_ '1)))
                      (let ((_%owner117569%_ (##vector-ref _%lock117555%_ '1)))
                        (if (eq? _%owner117569%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117569%_)
                                (let () (##thread-yield!) (_%again117560%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117575%_ (eqv-table-delete! _%tab117550%_ _%key117552%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117555%_ '1 '#f)
                (##vector-cas! _%lock117555%_ '0 '0 '1)))
            _%$r117575%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint117532%_ _%seed117533%_)
        (make-raw-table__1
         _%size-hint117532%_
         symbolic-hash
         eq?
         _%seed117533%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint117539%_ '#f) (_%seed117541%_ '0))
          (make-symbolic-table__% _%size-hint117539%_ _%seed117541%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint117543%_)
        (let ((_%seed117545%_ '0))
          (make-symbolic-table__% _%size-hint117543%_ _%seed117545%_))))
    (define make-symbolic-table
      (lambda _g118869_
        (let ((_g118870_ (##length _g118869_)))
          (cond ((##fx= _g118870_ 0) (apply make-symbolic-table__0 _g118869_))
                ((##fx= _g118870_ 1) (apply make-symbolic-table__1 _g118869_))
                ((##fx= _g118870_ 2) (apply make-symbolic-table__% _g118869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g118869_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint117512%_ _%seed117514%_)
        (make-raw-table/lock__%
         _%size-hint117512%_
         symbolic-hash
         eq?
         _%seed117514%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint117520%_ '#f) (_%seed117522%_ '0))
          (make-symbolic-table/lock__% _%size-hint117520%_ _%seed117522%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint117524%_)
        (let ((_%seed117526%_ '0))
          (make-symbolic-table/lock__% _%size-hint117524%_ _%seed117526%_))))
    (define make-symbolic-table/lock
      (lambda _g118871_
        (let ((_g118872_ (##length _g118871_)))
          (cond ((##fx= _g118872_ 0)
                 (apply make-symbolic-table/lock__0 _g118871_))
                ((##fx= _g118872_ 1)
                 (apply make-symbolic-table/lock__1 _g118871_))
                ((##fx= _g118872_ 2)
                 (apply make-symbolic-table/lock__% _g118871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g118871_))))))
    (define symbolic-table-ref
      (lambda (_%tab117465%_ _%key117466%_ _%default117467%_)
        (let ((_%table117469%_ (&raw-table-table _%tab117465%_))
              (_%seed117470%_ (&raw-table-seed _%tab117465%_)))
          (let* ((_%h117472%_
                  (fxxor (##symbol-hash _%key117466%_) _%seed117470%_))
                 (_%size117475%_ (vector-length _%table117469%_))
                 (_%entries117478%_ (##fxquotient _%size117475%_ '2))
                 (_%start117481%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117472%_ _%entries117478%_)
                   '1)))
            (let _%loop117485%_ ((_%probe117488%_ _%start117481%_)
                                 (_%i117490%_ '1)
                                 (_%deleted117492%_ '#f))
              (let ((_%k117495%_ (vector-ref _%table117469%_ _%probe117488%_)))
                (if (eq? _%k117495%_ (macro-unused-obj))
                    _%default117467%_
                    (if (eq? _%k117495%_ (macro-deleted-obj))
                        (_%loop117485%_
                         (let ((_%next-probe117500%_
                                (fx+ _%start117481%_
                                     _%i117490%_
                                     (fx* _%i117490%_ _%i117490%_))))
                           (##fxmodulo _%next-probe117500%_ _%size117475%_))
                         (##fx+ _%i117490%_ '1)
                         (let ((_%$e117503%_ _%deleted117492%_))
                           (if _%$e117503%_ _%$e117503%_ _%probe117488%_)))
                        (if (eq? _%key117466%_ _%k117495%_)
                            (vector-ref
                             _%table117469%_
                             (##fx+ _%probe117488%_ '1))
                            (_%loop117485%_
                             (let ((_%next-probe117508%_
                                    (fx+ _%start117481%_
                                         _%i117490%_
                                         (fx* _%i117490%_ _%i117490%_))))
                               (##fxmodulo
                                _%next-probe117508%_
                                _%size117475%_))
                             (##fx+ _%i117490%_ '1)
                             _%deleted117492%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab117436%_ _%key117437%_ _%default117438%_)
        (let ((_%lock117440%_ (&raw-table-lock _%tab117436%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117445%_ ((_%spin117448%_ '0))
              (if (##fx= (##vector-cas! _%lock117440%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117440%_ '1 (current-thread))
                  (if (##fx< _%spin117448%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117445%_ (##fx+ _%spin117448%_ '1)))
                      (let ((_%owner117454%_ (##vector-ref _%lock117440%_ '1)))
                        (if (eq? _%owner117454%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117454%_)
                                (let () (##thread-yield!) (_%again117445%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117460%_
                 (symbolic-table-ref
                  _%tab117436%_
                  _%key117437%_
                  _%default117438%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117440%_ '1 '#f)
                (##vector-cas! _%lock117440%_ '0 '0 '1)))
            _%$r117460%_))))
    (define __symbolic-table-set!
      (lambda (_%tab117388%_ _%key117389%_ _%value117390%_)
        (let ((_%table117392%_ (&raw-table-table _%tab117388%_))
              (_%seed117393%_ (&raw-table-seed _%tab117388%_)))
          (let* ((_%h117395%_
                  (fxxor (##symbol-hash _%key117389%_) _%seed117393%_))
                 (_%size117398%_ (vector-length _%table117392%_))
                 (_%entries117401%_ (##fxquotient _%size117398%_ '2))
                 (_%start117404%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117395%_ _%entries117401%_)
                   '1)))
            (let _%loop117408%_ ((_%probe117411%_ _%start117404%_)
                                 (_%i117413%_ '1)
                                 (_%deleted117415%_ '#f))
              (let ((_%k117418%_ (vector-ref _%table117392%_ _%probe117411%_)))
                (if (eq? _%k117418%_ (macro-unused-obj))
                    (if _%deleted117415%_
                        (begin
                          (vector-set!
                           _%table117392%_
                           _%deleted117415%_
                           _%key117389%_)
                          (vector-set!
                           _%table117392%_
                           (##fx+ _%deleted117415%_ '1)
                           _%value117390%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117388%_
                              (##fx+ (&raw-table-count _%tab117388%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117392%_
                           _%probe117411%_
                           _%key117389%_)
                          (vector-set!
                           _%table117392%_
                           (##fx+ _%probe117411%_ '1)
                           _%value117390%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117388%_
                              (##fx- (&raw-table-free _%tab117388%_) '1))
                             (&raw-table-count-set!
                              _%tab117388%_
                              (##fx+ (&raw-table-count _%tab117388%_) '1))))))
                    (if (eq? _%k117418%_ (macro-deleted-obj))
                        (_%loop117408%_
                         (let ((_%next-probe117425%_
                                (fx+ _%start117404%_
                                     _%i117413%_
                                     (fx* _%i117413%_ _%i117413%_))))
                           (##fxmodulo _%next-probe117425%_ _%size117398%_))
                         (##fx+ _%i117413%_ '1)
                         (let ((_%$e117428%_ _%deleted117415%_))
                           (if _%$e117428%_ _%$e117428%_ _%probe117411%_)))
                        (if (eq? _%key117389%_ _%k117418%_)
                            (let ()
                              (vector-set!
                               _%table117392%_
                               _%probe117411%_
                               _%key117389%_)
                              (vector-set!
                               _%table117392%_
                               (##fx+ _%probe117411%_ '1)
                               _%value117390%_))
                            (_%loop117408%_
                             (let ((_%next-probe117433%_
                                    (fx+ _%start117404%_
                                         _%i117413%_
                                         (fx* _%i117413%_ _%i117413%_))))
                               (##fxmodulo
                                _%next-probe117433%_
                                _%size117398%_))
                             (##fx+ _%i117413%_ '1)
                             _%deleted117415%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab117384%_ _%key117385%_ _%value117386%_)
        (if (##fx< (&raw-table-free _%tab117384%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117384%_))
                    '4))
            (__raw-table-rehash! _%tab117384%_)
            '#!void)
        (__symbolic-table-set! _%tab117384%_ _%key117385%_ _%value117386%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab117354%_ _%key117355%_ _%value117356%_)
        (let ((_%lock117359%_ (&raw-table-lock _%tab117354%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117364%_ ((_%spin117367%_ '0))
              (if (##fx= (##vector-cas! _%lock117359%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117359%_ '1 (current-thread))
                  (if (##fx< _%spin117367%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117364%_ (##fx+ _%spin117367%_ '1)))
                      (let ((_%owner117373%_ (##vector-ref _%lock117359%_ '1)))
                        (if (eq? _%owner117373%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117373%_)
                                (let () (##thread-yield!) (_%again117364%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117379%_
                 (symbolic-table-set!
                  _%tab117354%_
                  _%key117355%_
                  _%value117356%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117359%_ '1 '#f)
                (##vector-cas! _%lock117359%_ '0 '0 '1)))
            _%$r117379%_))))
    (define __symbolic-table-update!
      (lambda (_%tab117305%_
               _%key117306%_
               _%symbolic-table-update!117307%_
               _%default117308%_)
        (let ((_%table117310%_ (&raw-table-table _%tab117305%_))
              (_%seed117311%_ (&raw-table-seed _%tab117305%_)))
          (let* ((_%h117313%_
                  (fxxor (##symbol-hash _%key117306%_) _%seed117311%_))
                 (_%size117316%_ (vector-length _%table117310%_))
                 (_%entries117319%_ (##fxquotient _%size117316%_ '2))
                 (_%start117322%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117313%_ _%entries117319%_)
                   '1)))
            (let _%loop117326%_ ((_%probe117329%_ _%start117322%_)
                                 (_%i117331%_ '1)
                                 (_%deleted117333%_ '#f))
              (let ((_%k117336%_ (vector-ref _%table117310%_ _%probe117329%_)))
                (if (eq? _%k117336%_ (macro-unused-obj))
                    (if _%deleted117333%_
                        (begin
                          (vector-set!
                           _%table117310%_
                           _%deleted117333%_
                           _%key117306%_)
                          (vector-set!
                           _%table117310%_
                           (##fx+ _%deleted117333%_ '1)
                           (_%symbolic-table-update!117307%_
                            _%default117308%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117305%_
                              (##fx+ (&raw-table-count _%tab117305%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117310%_
                           _%probe117329%_
                           _%key117306%_)
                          (vector-set!
                           _%table117310%_
                           (##fx+ _%probe117329%_ '1)
                           (_%symbolic-table-update!117307%_
                            _%default117308%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117305%_
                              (##fx- (&raw-table-free _%tab117305%_) '1))
                             (&raw-table-count-set!
                              _%tab117305%_
                              (##fx+ (&raw-table-count _%tab117305%_) '1))))))
                    (if (eq? _%k117336%_ (macro-deleted-obj))
                        (_%loop117326%_
                         (let ((_%next-probe117343%_
                                (fx+ _%start117322%_
                                     _%i117331%_
                                     (fx* _%i117331%_ _%i117331%_))))
                           (##fxmodulo _%next-probe117343%_ _%size117316%_))
                         (##fx+ _%i117331%_ '1)
                         (let ((_%$e117346%_ _%deleted117333%_))
                           (if _%$e117346%_ _%$e117346%_ _%probe117329%_)))
                        (if (eq? _%key117306%_ _%k117336%_)
                            (let ()
                              (vector-set!
                               _%table117310%_
                               _%probe117329%_
                               _%key117306%_)
                              (vector-set!
                               _%table117310%_
                               (##fx+ _%probe117329%_ '1)
                               (_%symbolic-table-update!117307%_
                                (vector-ref
                                 _%table117310%_
                                 (##fx+ _%probe117329%_ '1)))))
                            (_%loop117326%_
                             (let ((_%next-probe117351%_
                                    (fx+ _%start117322%_
                                         _%i117331%_
                                         (fx* _%i117331%_ _%i117331%_))))
                               (##fxmodulo
                                _%next-probe117351%_
                                _%size117316%_))
                             (##fx+ _%i117331%_ '1)
                             _%deleted117333%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab117300%_
               _%key117301%_
               _%symbolic-table-update!117302%_
               _%default117303%_)
        (if (##fx< (&raw-table-free _%tab117300%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117300%_))
                    '4))
            (__raw-table-rehash! _%tab117300%_)
            '#!void)
        (__symbolic-table-update!
         _%tab117300%_
         _%key117301%_
         _%symbolic-table-update!117302%_
         _%default117303%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab117269%_
               _%key117270%_
               _%symbolic-table-update!117271%_
               _%default117272%_)
        (let ((_%lock117275%_ (&raw-table-lock _%tab117269%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117280%_ ((_%spin117283%_ '0))
              (if (##fx= (##vector-cas! _%lock117275%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117275%_ '1 (current-thread))
                  (if (##fx< _%spin117283%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117280%_ (##fx+ _%spin117283%_ '1)))
                      (let ((_%owner117289%_ (##vector-ref _%lock117275%_ '1)))
                        (if (eq? _%owner117289%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117289%_)
                                (let () (##thread-yield!) (_%again117280%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117295%_
                 (_%symbolic-table-update!117271%_
                  _%tab117269%_
                  _%key117270%_
                  _%symbolic-table-update!117271%_
                  _%default117272%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117275%_ '1 '#f)
                (##vector-cas! _%lock117275%_ '0 '0 '1)))
            _%$r117295%_))))
    (define symbolic-table-delete!
      (lambda (_%tab117226%_ _%key117227%_)
        (let ((_%table117229%_ (&raw-table-table _%tab117226%_))
              (_%seed117231%_ (&raw-table-seed _%tab117226%_)))
          (let* ((_%h117234%_
                  (fxxor (##symbol-hash _%key117227%_) _%seed117231%_))
                 (_%size117237%_ (vector-length _%table117229%_))
                 (_%entries117240%_ (##fxquotient _%size117237%_ '2))
                 (_%start117243%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117234%_ _%entries117240%_)
                   '1)))
            (let _%loop117247%_ ((_%probe117250%_ _%start117243%_)
                                 (_%i117252%_ '1))
              (let ((_%k117255%_ (vector-ref _%table117229%_ _%probe117250%_)))
                (if (eq? _%k117255%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117255%_ (macro-deleted-obj))
                        (_%loop117247%_
                         (let ((_%next-probe117260%_
                                (fx+ _%start117243%_
                                     _%i117252%_
                                     (fx* _%i117252%_ _%i117252%_))))
                           (##fxmodulo _%next-probe117260%_ _%size117237%_))
                         (##fx+ _%i117252%_ '1))
                        (if (eq? _%key117227%_ _%k117255%_)
                            (let ()
                              (vector-set!
                               _%table117229%_
                               _%probe117250%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117229%_
                               (##fx+ _%probe117250%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117226%_
                                  (##fx- (&raw-table-count _%tab117226%_)
                                         '1)))))
                            (_%loop117247%_
                             (let ((_%next-probe117266%_
                                    (fx+ _%start117243%_
                                         _%i117252%_
                                         (fx* _%i117252%_ _%i117252%_))))
                               (##fxmodulo
                                _%next-probe117266%_
                                _%size117237%_))
                             (##fx+ _%i117252%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab117196%_ _%key117198%_)
        (let ((_%lock117201%_ (&raw-table-lock _%tab117196%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117206%_ ((_%spin117209%_ '0))
              (if (##fx= (##vector-cas! _%lock117201%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117201%_ '1 (current-thread))
                  (if (##fx< _%spin117209%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117206%_ (##fx+ _%spin117209%_ '1)))
                      (let ((_%owner117215%_ (##vector-ref _%lock117201%_ '1)))
                        (if (eq? _%owner117215%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117215%_)
                                (let () (##thread-yield!) (_%again117206%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117221%_
                 (symbolic-table-delete! _%tab117196%_ _%key117198%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117201%_ '1 '#f)
                (##vector-cas! _%lock117201%_ '0 '0 '1)))
            _%$r117221%_))))
    (define make-string-table__%
      (lambda (_%size-hint117178%_ _%seed117179%_)
        (make-raw-table__1
         _%size-hint117178%_
         string-hash
         ##string=?
         _%seed117179%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint117185%_ '#f) (_%seed117187%_ '0))
          (make-string-table__% _%size-hint117185%_ _%seed117187%_))))
    (define make-string-table__1
      (lambda (_%size-hint117189%_)
        (let ((_%seed117191%_ '0))
          (make-string-table__% _%size-hint117189%_ _%seed117191%_))))
    (define make-string-table
      (lambda _g118873_
        (let ((_g118874_ (##length _g118873_)))
          (cond ((##fx= _g118874_ 0) (apply make-string-table__0 _g118873_))
                ((##fx= _g118874_ 1) (apply make-string-table__1 _g118873_))
                ((##fx= _g118874_ 2) (apply make-string-table__% _g118873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g118873_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint117158%_ _%seed117160%_)
        (make-raw-table/lock__%
         _%size-hint117158%_
         string-hash
         ##string=?
         _%seed117160%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint117166%_ '#f) (_%seed117168%_ '0))
          (make-string-table/lock__% _%size-hint117166%_ _%seed117168%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint117170%_)
        (let ((_%seed117172%_ '0))
          (make-string-table/lock__% _%size-hint117170%_ _%seed117172%_))))
    (define make-string-table/lock
      (lambda _g118875_
        (let ((_g118876_ (##length _g118875_)))
          (cond ((##fx= _g118876_ 0)
                 (apply make-string-table/lock__0 _g118875_))
                ((##fx= _g118876_ 1)
                 (apply make-string-table/lock__1 _g118875_))
                ((##fx= _g118876_ 2)
                 (apply make-string-table/lock__% _g118875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g118875_))))))
    (define string-table-ref
      (lambda (_%tab117111%_ _%key117112%_ _%default117113%_)
        (let ((_%table117115%_ (&raw-table-table _%tab117111%_))
              (_%seed117116%_ (&raw-table-seed _%tab117111%_)))
          (let* ((_%h117118%_
                  (fxxor (##string=?-hash _%key117112%_) _%seed117116%_))
                 (_%size117121%_ (vector-length _%table117115%_))
                 (_%entries117124%_ (##fxquotient _%size117121%_ '2))
                 (_%start117127%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117118%_ _%entries117124%_)
                   '1)))
            (let _%loop117131%_ ((_%probe117134%_ _%start117127%_)
                                 (_%i117136%_ '1)
                                 (_%deleted117138%_ '#f))
              (let ((_%k117141%_ (vector-ref _%table117115%_ _%probe117134%_)))
                (if (eq? _%k117141%_ (macro-unused-obj))
                    _%default117113%_
                    (if (eq? _%k117141%_ (macro-deleted-obj))
                        (_%loop117131%_
                         (let ((_%next-probe117146%_
                                (fx+ _%start117127%_
                                     _%i117136%_
                                     (fx* _%i117136%_ _%i117136%_))))
                           (##fxmodulo _%next-probe117146%_ _%size117121%_))
                         (##fx+ _%i117136%_ '1)
                         (let ((_%$e117149%_ _%deleted117138%_))
                           (if _%$e117149%_ _%$e117149%_ _%probe117134%_)))
                        (if (##string=? _%key117112%_ _%k117141%_)
                            (vector-ref
                             _%table117115%_
                             (##fx+ _%probe117134%_ '1))
                            (_%loop117131%_
                             (let ((_%next-probe117154%_
                                    (fx+ _%start117127%_
                                         _%i117136%_
                                         (fx* _%i117136%_ _%i117136%_))))
                               (##fxmodulo
                                _%next-probe117154%_
                                _%size117121%_))
                             (##fx+ _%i117136%_ '1)
                             _%deleted117138%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab117082%_ _%key117083%_ _%default117084%_)
        (let ((_%lock117086%_ (&raw-table-lock _%tab117082%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117091%_ ((_%spin117094%_ '0))
              (if (##fx= (##vector-cas! _%lock117086%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117086%_ '1 (current-thread))
                  (if (##fx< _%spin117094%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117091%_ (##fx+ _%spin117094%_ '1)))
                      (let ((_%owner117100%_ (##vector-ref _%lock117086%_ '1)))
                        (if (eq? _%owner117100%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117100%_)
                                (let () (##thread-yield!) (_%again117091%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117106%_
                 (string-table-ref
                  _%tab117082%_
                  _%key117083%_
                  _%default117084%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117086%_ '1 '#f)
                (##vector-cas! _%lock117086%_ '0 '0 '1)))
            _%$r117106%_))))
    (define __string-table-set!
      (lambda (_%tab117034%_ _%key117035%_ _%value117036%_)
        (let ((_%table117038%_ (&raw-table-table _%tab117034%_))
              (_%seed117039%_ (&raw-table-seed _%tab117034%_)))
          (let* ((_%h117041%_
                  (fxxor (##string=?-hash _%key117035%_) _%seed117039%_))
                 (_%size117044%_ (vector-length _%table117038%_))
                 (_%entries117047%_ (##fxquotient _%size117044%_ '2))
                 (_%start117050%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117041%_ _%entries117047%_)
                   '1)))
            (let _%loop117054%_ ((_%probe117057%_ _%start117050%_)
                                 (_%i117059%_ '1)
                                 (_%deleted117061%_ '#f))
              (let ((_%k117064%_ (vector-ref _%table117038%_ _%probe117057%_)))
                (if (eq? _%k117064%_ (macro-unused-obj))
                    (if _%deleted117061%_
                        (begin
                          (vector-set!
                           _%table117038%_
                           _%deleted117061%_
                           _%key117035%_)
                          (vector-set!
                           _%table117038%_
                           (##fx+ _%deleted117061%_ '1)
                           _%value117036%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117034%_
                              (##fx+ (&raw-table-count _%tab117034%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117038%_
                           _%probe117057%_
                           _%key117035%_)
                          (vector-set!
                           _%table117038%_
                           (##fx+ _%probe117057%_ '1)
                           _%value117036%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117034%_
                              (##fx- (&raw-table-free _%tab117034%_) '1))
                             (&raw-table-count-set!
                              _%tab117034%_
                              (##fx+ (&raw-table-count _%tab117034%_) '1))))))
                    (if (eq? _%k117064%_ (macro-deleted-obj))
                        (_%loop117054%_
                         (let ((_%next-probe117071%_
                                (fx+ _%start117050%_
                                     _%i117059%_
                                     (fx* _%i117059%_ _%i117059%_))))
                           (##fxmodulo _%next-probe117071%_ _%size117044%_))
                         (##fx+ _%i117059%_ '1)
                         (let ((_%$e117074%_ _%deleted117061%_))
                           (if _%$e117074%_ _%$e117074%_ _%probe117057%_)))
                        (if (##string=? _%key117035%_ _%k117064%_)
                            (let ()
                              (vector-set!
                               _%table117038%_
                               _%probe117057%_
                               _%key117035%_)
                              (vector-set!
                               _%table117038%_
                               (##fx+ _%probe117057%_ '1)
                               _%value117036%_))
                            (_%loop117054%_
                             (let ((_%next-probe117079%_
                                    (fx+ _%start117050%_
                                         _%i117059%_
                                         (fx* _%i117059%_ _%i117059%_))))
                               (##fxmodulo
                                _%next-probe117079%_
                                _%size117044%_))
                             (##fx+ _%i117059%_ '1)
                             _%deleted117061%_))))))))))
    (define string-table-set!
      (lambda (_%tab117030%_ _%key117031%_ _%value117032%_)
        (if (##fx< (&raw-table-free _%tab117030%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117030%_))
                    '4))
            (__raw-table-rehash! _%tab117030%_)
            '#!void)
        (__string-table-set! _%tab117030%_ _%key117031%_ _%value117032%_)))
    (define string-table-set!/lock
      (lambda (_%tab117000%_ _%key117001%_ _%value117002%_)
        (let ((_%lock117005%_ (&raw-table-lock _%tab117000%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117010%_ ((_%spin117013%_ '0))
              (if (##fx= (##vector-cas! _%lock117005%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117005%_ '1 (current-thread))
                  (if (##fx< _%spin117013%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117010%_ (##fx+ _%spin117013%_ '1)))
                      (let ((_%owner117019%_ (##vector-ref _%lock117005%_ '1)))
                        (if (eq? _%owner117019%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117019%_)
                                (let () (##thread-yield!) (_%again117010%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117025%_
                 (string-table-set!
                  _%tab117000%_
                  _%key117001%_
                  _%value117002%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117005%_ '1 '#f)
                (##vector-cas! _%lock117005%_ '0 '0 '1)))
            _%$r117025%_))))
    (define __string-table-update!
      (lambda (_%tab116951%_
               _%key116952%_
               _%string-table-update!116953%_
               _%default116954%_)
        (let ((_%table116956%_ (&raw-table-table _%tab116951%_))
              (_%seed116957%_ (&raw-table-seed _%tab116951%_)))
          (let* ((_%h116959%_
                  (fxxor (##string=?-hash _%key116952%_) _%seed116957%_))
                 (_%size116962%_ (vector-length _%table116956%_))
                 (_%entries116965%_ (##fxquotient _%size116962%_ '2))
                 (_%start116968%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116959%_ _%entries116965%_)
                   '1)))
            (let _%loop116972%_ ((_%probe116975%_ _%start116968%_)
                                 (_%i116977%_ '1)
                                 (_%deleted116979%_ '#f))
              (let ((_%k116982%_ (vector-ref _%table116956%_ _%probe116975%_)))
                (if (eq? _%k116982%_ (macro-unused-obj))
                    (if _%deleted116979%_
                        (begin
                          (vector-set!
                           _%table116956%_
                           _%deleted116979%_
                           _%key116952%_)
                          (vector-set!
                           _%table116956%_
                           (##fx+ _%deleted116979%_ '1)
                           (_%string-table-update!116953%_ _%default116954%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116951%_
                              (##fx+ (&raw-table-count _%tab116951%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116956%_
                           _%probe116975%_
                           _%key116952%_)
                          (vector-set!
                           _%table116956%_
                           (##fx+ _%probe116975%_ '1)
                           (_%string-table-update!116953%_ _%default116954%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116951%_
                              (##fx- (&raw-table-free _%tab116951%_) '1))
                             (&raw-table-count-set!
                              _%tab116951%_
                              (##fx+ (&raw-table-count _%tab116951%_) '1))))))
                    (if (eq? _%k116982%_ (macro-deleted-obj))
                        (_%loop116972%_
                         (let ((_%next-probe116989%_
                                (fx+ _%start116968%_
                                     _%i116977%_
                                     (fx* _%i116977%_ _%i116977%_))))
                           (##fxmodulo _%next-probe116989%_ _%size116962%_))
                         (##fx+ _%i116977%_ '1)
                         (let ((_%$e116992%_ _%deleted116979%_))
                           (if _%$e116992%_ _%$e116992%_ _%probe116975%_)))
                        (if (##string=? _%key116952%_ _%k116982%_)
                            (let ()
                              (vector-set!
                               _%table116956%_
                               _%probe116975%_
                               _%key116952%_)
                              (vector-set!
                               _%table116956%_
                               (##fx+ _%probe116975%_ '1)
                               (_%string-table-update!116953%_
                                (vector-ref
                                 _%table116956%_
                                 (##fx+ _%probe116975%_ '1)))))
                            (_%loop116972%_
                             (let ((_%next-probe116997%_
                                    (fx+ _%start116968%_
                                         _%i116977%_
                                         (fx* _%i116977%_ _%i116977%_))))
                               (##fxmodulo
                                _%next-probe116997%_
                                _%size116962%_))
                             (##fx+ _%i116977%_ '1)
                             _%deleted116979%_))))))))))
    (define string-table-update!
      (lambda (_%tab116946%_
               _%key116947%_
               _%string-table-update!116948%_
               _%default116949%_)
        (if (##fx< (&raw-table-free _%tab116946%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116946%_))
                    '4))
            (__raw-table-rehash! _%tab116946%_)
            '#!void)
        (__string-table-update!
         _%tab116946%_
         _%key116947%_
         _%string-table-update!116948%_
         _%default116949%_)))
    (define string-table-update!/lock
      (lambda (_%tab116915%_
               _%key116916%_
               _%string-table-update!116917%_
               _%default116918%_)
        (let ((_%lock116921%_ (&raw-table-lock _%tab116915%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116926%_ ((_%spin116929%_ '0))
              (if (##fx= (##vector-cas! _%lock116921%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116921%_ '1 (current-thread))
                  (if (##fx< _%spin116929%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116926%_ (##fx+ _%spin116929%_ '1)))
                      (let ((_%owner116935%_ (##vector-ref _%lock116921%_ '1)))
                        (if (eq? _%owner116935%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116935%_)
                                (let () (##thread-yield!) (_%again116926%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116941%_
                 (_%string-table-update!116917%_
                  _%tab116915%_
                  _%key116916%_
                  _%string-table-update!116917%_
                  _%default116918%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116921%_ '1 '#f)
                (##vector-cas! _%lock116921%_ '0 '0 '1)))
            _%$r116941%_))))
    (define string-table-delete!
      (lambda (_%tab116872%_ _%key116873%_)
        (let ((_%table116875%_ (&raw-table-table _%tab116872%_))
              (_%seed116877%_ (&raw-table-seed _%tab116872%_)))
          (let* ((_%h116880%_
                  (fxxor (##string=?-hash _%key116873%_) _%seed116877%_))
                 (_%size116883%_ (vector-length _%table116875%_))
                 (_%entries116886%_ (##fxquotient _%size116883%_ '2))
                 (_%start116889%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116880%_ _%entries116886%_)
                   '1)))
            (let _%loop116893%_ ((_%probe116896%_ _%start116889%_)
                                 (_%i116898%_ '1))
              (let ((_%k116901%_ (vector-ref _%table116875%_ _%probe116896%_)))
                (if (eq? _%k116901%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116901%_ (macro-deleted-obj))
                        (_%loop116893%_
                         (let ((_%next-probe116906%_
                                (fx+ _%start116889%_
                                     _%i116898%_
                                     (fx* _%i116898%_ _%i116898%_))))
                           (##fxmodulo _%next-probe116906%_ _%size116883%_))
                         (##fx+ _%i116898%_ '1))
                        (if (##string=? _%key116873%_ _%k116901%_)
                            (let ()
                              (vector-set!
                               _%table116875%_
                               _%probe116896%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116875%_
                               (##fx+ _%probe116896%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116872%_
                                  (##fx- (&raw-table-count _%tab116872%_)
                                         '1)))))
                            (_%loop116893%_
                             (let ((_%next-probe116912%_
                                    (fx+ _%start116889%_
                                         _%i116898%_
                                         (fx* _%i116898%_ _%i116898%_))))
                               (##fxmodulo
                                _%next-probe116912%_
                                _%size116883%_))
                             (##fx+ _%i116898%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab116842%_ _%key116844%_)
        (let ((_%lock116847%_ (&raw-table-lock _%tab116842%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116852%_ ((_%spin116855%_ '0))
              (if (##fx= (##vector-cas! _%lock116847%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116847%_ '1 (current-thread))
                  (if (##fx< _%spin116855%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116852%_ (##fx+ _%spin116855%_ '1)))
                      (let ((_%owner116861%_ (##vector-ref _%lock116847%_ '1)))
                        (if (eq? _%owner116861%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116861%_)
                                (let () (##thread-yield!) (_%again116852%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116867%_
                 (string-table-delete! _%tab116842%_ _%key116844%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116847%_ '1 '#f)
                (##vector-cas! _%lock116847%_ '0 '0 '1)))
            _%$r116867%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint116824%_ _%seed116825%_)
        (make-raw-table__1
         _%size-hint116824%_
         immediate-hash
         eq?
         _%seed116825%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint116831%_ '#f) (_%seed116833%_ '0))
          (make-immediate-table__% _%size-hint116831%_ _%seed116833%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint116835%_)
        (let ((_%seed116837%_ '0))
          (make-immediate-table__% _%size-hint116835%_ _%seed116837%_))))
    (define make-immediate-table
      (lambda _g118877_
        (let ((_g118878_ (##length _g118877_)))
          (cond ((##fx= _g118878_ 0) (apply make-immediate-table__0 _g118877_))
                ((##fx= _g118878_ 1) (apply make-immediate-table__1 _g118877_))
                ((##fx= _g118878_ 2) (apply make-immediate-table__% _g118877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g118877_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint116804%_ _%seed116806%_)
        (make-raw-table/lock__%
         _%size-hint116804%_
         immediate-hash
         eq?
         _%seed116806%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint116812%_ '#f) (_%seed116814%_ '0))
          (make-immediate-table/lock__% _%size-hint116812%_ _%seed116814%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint116816%_)
        (let ((_%seed116818%_ '0))
          (make-immediate-table/lock__% _%size-hint116816%_ _%seed116818%_))))
    (define make-immediate-table/lock
      (lambda _g118879_
        (let ((_g118880_ (##length _g118879_)))
          (cond ((##fx= _g118880_ 0)
                 (apply make-immediate-table/lock__0 _g118879_))
                ((##fx= _g118880_ 1)
                 (apply make-immediate-table/lock__1 _g118879_))
                ((##fx= _g118880_ 2)
                 (apply make-immediate-table/lock__% _g118879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g118879_))))))
    (define immediate-table-ref
      (lambda (_%tab116757%_ _%key116758%_ _%default116759%_)
        (let ((_%table116761%_ (&raw-table-table _%tab116757%_))
              (_%seed116762%_ (&raw-table-seed _%tab116757%_)))
          (let* ((_%h116764%_
                  (fxxor (immediate-hash _%key116758%_) _%seed116762%_))
                 (_%size116767%_ (vector-length _%table116761%_))
                 (_%entries116770%_ (##fxquotient _%size116767%_ '2))
                 (_%start116773%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116764%_ _%entries116770%_)
                   '1)))
            (let _%loop116777%_ ((_%probe116780%_ _%start116773%_)
                                 (_%i116782%_ '1)
                                 (_%deleted116784%_ '#f))
              (let ((_%k116787%_ (vector-ref _%table116761%_ _%probe116780%_)))
                (if (eq? _%k116787%_ (macro-unused-obj))
                    _%default116759%_
                    (if (eq? _%k116787%_ (macro-deleted-obj))
                        (_%loop116777%_
                         (let ((_%next-probe116792%_
                                (fx+ _%start116773%_
                                     _%i116782%_
                                     (fx* _%i116782%_ _%i116782%_))))
                           (##fxmodulo _%next-probe116792%_ _%size116767%_))
                         (##fx+ _%i116782%_ '1)
                         (let ((_%$e116795%_ _%deleted116784%_))
                           (if _%$e116795%_ _%$e116795%_ _%probe116780%_)))
                        (if (eq? _%key116758%_ _%k116787%_)
                            (vector-ref
                             _%table116761%_
                             (##fx+ _%probe116780%_ '1))
                            (_%loop116777%_
                             (let ((_%next-probe116800%_
                                    (fx+ _%start116773%_
                                         _%i116782%_
                                         (fx* _%i116782%_ _%i116782%_))))
                               (##fxmodulo
                                _%next-probe116800%_
                                _%size116767%_))
                             (##fx+ _%i116782%_ '1)
                             _%deleted116784%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab116728%_ _%key116729%_ _%default116730%_)
        (let ((_%lock116732%_ (&raw-table-lock _%tab116728%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116737%_ ((_%spin116740%_ '0))
              (if (##fx= (##vector-cas! _%lock116732%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116732%_ '1 (current-thread))
                  (if (##fx< _%spin116740%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116737%_ (##fx+ _%spin116740%_ '1)))
                      (let ((_%owner116746%_ (##vector-ref _%lock116732%_ '1)))
                        (if (eq? _%owner116746%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116746%_)
                                (let () (##thread-yield!) (_%again116737%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116752%_
                 (immediate-table-ref
                  _%tab116728%_
                  _%key116729%_
                  _%default116730%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116732%_ '1 '#f)
                (##vector-cas! _%lock116732%_ '0 '0 '1)))
            _%$r116752%_))))
    (define __immediate-table-set!
      (lambda (_%tab116680%_ _%key116681%_ _%value116682%_)
        (let ((_%table116684%_ (&raw-table-table _%tab116680%_))
              (_%seed116685%_ (&raw-table-seed _%tab116680%_)))
          (let* ((_%h116687%_
                  (fxxor (immediate-hash _%key116681%_) _%seed116685%_))
                 (_%size116690%_ (vector-length _%table116684%_))
                 (_%entries116693%_ (##fxquotient _%size116690%_ '2))
                 (_%start116696%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116687%_ _%entries116693%_)
                   '1)))
            (let _%loop116700%_ ((_%probe116703%_ _%start116696%_)
                                 (_%i116705%_ '1)
                                 (_%deleted116707%_ '#f))
              (let ((_%k116710%_ (vector-ref _%table116684%_ _%probe116703%_)))
                (if (eq? _%k116710%_ (macro-unused-obj))
                    (if _%deleted116707%_
                        (begin
                          (vector-set!
                           _%table116684%_
                           _%deleted116707%_
                           _%key116681%_)
                          (vector-set!
                           _%table116684%_
                           (##fx+ _%deleted116707%_ '1)
                           _%value116682%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116680%_
                              (##fx+ (&raw-table-count _%tab116680%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116684%_
                           _%probe116703%_
                           _%key116681%_)
                          (vector-set!
                           _%table116684%_
                           (##fx+ _%probe116703%_ '1)
                           _%value116682%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116680%_
                              (##fx- (&raw-table-free _%tab116680%_) '1))
                             (&raw-table-count-set!
                              _%tab116680%_
                              (##fx+ (&raw-table-count _%tab116680%_) '1))))))
                    (if (eq? _%k116710%_ (macro-deleted-obj))
                        (_%loop116700%_
                         (let ((_%next-probe116717%_
                                (fx+ _%start116696%_
                                     _%i116705%_
                                     (fx* _%i116705%_ _%i116705%_))))
                           (##fxmodulo _%next-probe116717%_ _%size116690%_))
                         (##fx+ _%i116705%_ '1)
                         (let ((_%$e116720%_ _%deleted116707%_))
                           (if _%$e116720%_ _%$e116720%_ _%probe116703%_)))
                        (if (eq? _%key116681%_ _%k116710%_)
                            (let ()
                              (vector-set!
                               _%table116684%_
                               _%probe116703%_
                               _%key116681%_)
                              (vector-set!
                               _%table116684%_
                               (##fx+ _%probe116703%_ '1)
                               _%value116682%_))
                            (_%loop116700%_
                             (let ((_%next-probe116725%_
                                    (fx+ _%start116696%_
                                         _%i116705%_
                                         (fx* _%i116705%_ _%i116705%_))))
                               (##fxmodulo
                                _%next-probe116725%_
                                _%size116690%_))
                             (##fx+ _%i116705%_ '1)
                             _%deleted116707%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab116676%_ _%key116677%_ _%value116678%_)
        (if (##fx< (&raw-table-free _%tab116676%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116676%_))
                    '4))
            (__raw-table-rehash! _%tab116676%_)
            '#!void)
        (__immediate-table-set! _%tab116676%_ _%key116677%_ _%value116678%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab116646%_ _%key116647%_ _%value116648%_)
        (let ((_%lock116651%_ (&raw-table-lock _%tab116646%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116656%_ ((_%spin116659%_ '0))
              (if (##fx= (##vector-cas! _%lock116651%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116651%_ '1 (current-thread))
                  (if (##fx< _%spin116659%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116656%_ (##fx+ _%spin116659%_ '1)))
                      (let ((_%owner116665%_ (##vector-ref _%lock116651%_ '1)))
                        (if (eq? _%owner116665%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116665%_)
                                (let () (##thread-yield!) (_%again116656%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116671%_
                 (immediate-table-set!
                  _%tab116646%_
                  _%key116647%_
                  _%value116648%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116651%_ '1 '#f)
                (##vector-cas! _%lock116651%_ '0 '0 '1)))
            _%$r116671%_))))
    (define __immediate-table-update!
      (lambda (_%tab116597%_
               _%key116598%_
               _%immediate-table-update!116599%_
               _%default116600%_)
        (let ((_%table116602%_ (&raw-table-table _%tab116597%_))
              (_%seed116603%_ (&raw-table-seed _%tab116597%_)))
          (let* ((_%h116605%_
                  (fxxor (immediate-hash _%key116598%_) _%seed116603%_))
                 (_%size116608%_ (vector-length _%table116602%_))
                 (_%entries116611%_ (##fxquotient _%size116608%_ '2))
                 (_%start116614%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116605%_ _%entries116611%_)
                   '1)))
            (let _%loop116618%_ ((_%probe116621%_ _%start116614%_)
                                 (_%i116623%_ '1)
                                 (_%deleted116625%_ '#f))
              (let ((_%k116628%_ (vector-ref _%table116602%_ _%probe116621%_)))
                (if (eq? _%k116628%_ (macro-unused-obj))
                    (if _%deleted116625%_
                        (begin
                          (vector-set!
                           _%table116602%_
                           _%deleted116625%_
                           _%key116598%_)
                          (vector-set!
                           _%table116602%_
                           (##fx+ _%deleted116625%_ '1)
                           (_%immediate-table-update!116599%_
                            _%default116600%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116597%_
                              (##fx+ (&raw-table-count _%tab116597%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116602%_
                           _%probe116621%_
                           _%key116598%_)
                          (vector-set!
                           _%table116602%_
                           (##fx+ _%probe116621%_ '1)
                           (_%immediate-table-update!116599%_
                            _%default116600%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116597%_
                              (##fx- (&raw-table-free _%tab116597%_) '1))
                             (&raw-table-count-set!
                              _%tab116597%_
                              (##fx+ (&raw-table-count _%tab116597%_) '1))))))
                    (if (eq? _%k116628%_ (macro-deleted-obj))
                        (_%loop116618%_
                         (let ((_%next-probe116635%_
                                (fx+ _%start116614%_
                                     _%i116623%_
                                     (fx* _%i116623%_ _%i116623%_))))
                           (##fxmodulo _%next-probe116635%_ _%size116608%_))
                         (##fx+ _%i116623%_ '1)
                         (let ((_%$e116638%_ _%deleted116625%_))
                           (if _%$e116638%_ _%$e116638%_ _%probe116621%_)))
                        (if (eq? _%key116598%_ _%k116628%_)
                            (let ()
                              (vector-set!
                               _%table116602%_
                               _%probe116621%_
                               _%key116598%_)
                              (vector-set!
                               _%table116602%_
                               (##fx+ _%probe116621%_ '1)
                               (_%immediate-table-update!116599%_
                                (vector-ref
                                 _%table116602%_
                                 (##fx+ _%probe116621%_ '1)))))
                            (_%loop116618%_
                             (let ((_%next-probe116643%_
                                    (fx+ _%start116614%_
                                         _%i116623%_
                                         (fx* _%i116623%_ _%i116623%_))))
                               (##fxmodulo
                                _%next-probe116643%_
                                _%size116608%_))
                             (##fx+ _%i116623%_ '1)
                             _%deleted116625%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab116592%_
               _%key116593%_
               _%immediate-table-update!116594%_
               _%default116595%_)
        (if (##fx< (&raw-table-free _%tab116592%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116592%_))
                    '4))
            (__raw-table-rehash! _%tab116592%_)
            '#!void)
        (__immediate-table-update!
         _%tab116592%_
         _%key116593%_
         _%immediate-table-update!116594%_
         _%default116595%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab116561%_
               _%key116562%_
               _%immediate-table-update!116563%_
               _%default116564%_)
        (let ((_%lock116567%_ (&raw-table-lock _%tab116561%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116572%_ ((_%spin116575%_ '0))
              (if (##fx= (##vector-cas! _%lock116567%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116567%_ '1 (current-thread))
                  (if (##fx< _%spin116575%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116572%_ (##fx+ _%spin116575%_ '1)))
                      (let ((_%owner116581%_ (##vector-ref _%lock116567%_ '1)))
                        (if (eq? _%owner116581%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116581%_)
                                (let () (##thread-yield!) (_%again116572%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116587%_
                 (_%immediate-table-update!116563%_
                  _%tab116561%_
                  _%key116562%_
                  _%immediate-table-update!116563%_
                  _%default116564%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116567%_ '1 '#f)
                (##vector-cas! _%lock116567%_ '0 '0 '1)))
            _%$r116587%_))))
    (define immediate-table-delete!
      (lambda (_%tab116518%_ _%key116519%_)
        (let ((_%table116521%_ (&raw-table-table _%tab116518%_))
              (_%seed116523%_ (&raw-table-seed _%tab116518%_)))
          (let* ((_%h116526%_
                  (fxxor (immediate-hash _%key116519%_) _%seed116523%_))
                 (_%size116529%_ (vector-length _%table116521%_))
                 (_%entries116532%_ (##fxquotient _%size116529%_ '2))
                 (_%start116535%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116526%_ _%entries116532%_)
                   '1)))
            (let _%loop116539%_ ((_%probe116542%_ _%start116535%_)
                                 (_%i116544%_ '1))
              (let ((_%k116547%_ (vector-ref _%table116521%_ _%probe116542%_)))
                (if (eq? _%k116547%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116547%_ (macro-deleted-obj))
                        (_%loop116539%_
                         (let ((_%next-probe116552%_
                                (fx+ _%start116535%_
                                     _%i116544%_
                                     (fx* _%i116544%_ _%i116544%_))))
                           (##fxmodulo _%next-probe116552%_ _%size116529%_))
                         (##fx+ _%i116544%_ '1))
                        (if (eq? _%key116519%_ _%k116547%_)
                            (let ()
                              (vector-set!
                               _%table116521%_
                               _%probe116542%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116521%_
                               (##fx+ _%probe116542%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116518%_
                                  (##fx- (&raw-table-count _%tab116518%_)
                                         '1)))))
                            (_%loop116539%_
                             (let ((_%next-probe116558%_
                                    (fx+ _%start116535%_
                                         _%i116544%_
                                         (fx* _%i116544%_ _%i116544%_))))
                               (##fxmodulo
                                _%next-probe116558%_
                                _%size116529%_))
                             (##fx+ _%i116544%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab116488%_ _%key116490%_)
        (let ((_%lock116493%_ (&raw-table-lock _%tab116488%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116498%_ ((_%spin116501%_ '0))
              (if (##fx= (##vector-cas! _%lock116493%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116493%_ '1 (current-thread))
                  (if (##fx< _%spin116501%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116498%_ (##fx+ _%spin116501%_ '1)))
                      (let ((_%owner116507%_ (##vector-ref _%lock116493%_ '1)))
                        (if (eq? _%owner116507%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116507%_)
                                (let () (##thread-yield!) (_%again116498%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116513%_
                 (immediate-table-delete! _%tab116488%_ _%key116490%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116493%_ '1 '#f)
                (##vector-cas! _%lock116493%_ '0 '0 '1)))
            _%$r116513%_))))
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
      (lambda (_%tab116486%_)
        (##unchecked-structure-ref
         _%tab116486%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab116484%_)
        (##unchecked-structure-ref
         _%tab116484%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab116482%_)
        (##unchecked-structure-ref
         _%tab116482%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab116479%_ _%val116480%_)
        (##unchecked-structure-set!
         _%tab116479%_
         _%val116480%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab116476%_ _%val116477%_)
        (##unchecked-structure-set!
         _%tab116476%_
         _%val116477%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab116473%_ _%val116474%_)
        (##unchecked-structure-set!
         _%tab116473%_
         _%val116474%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint116437%_
               _%klass116438%_
               _%flags116439%_
               _%lock116440%_)
        (let ((_%gcht116442%_
               (__gc-table-new
                (if (fixnum? _%size-hint116437%_) _%size-hint116437%_ '16)
                _%flags116439%_)))
          (##structure _%klass116438%_ _%gcht116442%_ '#f _%lock116440%_))))
    (define make-gc-table__0
      (lambda (_%size-hint116447%_)
        (let* ((_%klass116449%_ __gc-table::t)
               (_%flags116451%_ '0)
               (_%lock116453%_ '#f))
          (make-gc-table__%
           _%size-hint116447%_
           _%klass116449%_
           _%flags116451%_
           _%lock116453%_))))
    (define make-gc-table__1
      (lambda (_%size-hint116455%_ _%klass116456%_)
        (let* ((_%flags116458%_ '0) (_%lock116460%_ '#f))
          (make-gc-table__%
           _%size-hint116455%_
           _%klass116456%_
           _%flags116458%_
           _%lock116460%_))))
    (define make-gc-table__2
      (lambda (_%size-hint116462%_ _%klass116463%_ _%flags116464%_)
        (let ((_%lock116466%_ '#f))
          (make-gc-table__%
           _%size-hint116462%_
           _%klass116463%_
           _%flags116464%_
           _%lock116466%_))))
    (define make-gc-table
      (lambda _g118881_
        (let ((_g118882_ (##length _g118881_)))
          (cond ((##fx= _g118882_ 1) (apply make-gc-table__0 _g118881_))
                ((##fx= _g118882_ 2) (apply make-gc-table__1 _g118881_))
                ((##fx= _g118882_ 3) (apply make-gc-table__2 _g118881_))
                ((##fx= _g118882_ 4) (apply make-gc-table__% _g118881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g118881_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint116414%_ _%klass116415%_ _%flags116416%_)
        (make-gc-table__%
         _%size-hint116414%_
         _%klass116415%_
         _%flags116416%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint116421%_)
        (let* ((_%klass116423%_ __gc-table::t) (_%flags116425%_ '0))
          (make-gc-table/lock__%
           _%size-hint116421%_
           _%klass116423%_
           _%flags116425%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint116427%_ _%klass116428%_)
        (let ((_%flags116430%_ '0))
          (make-gc-table/lock__%
           _%size-hint116427%_
           _%klass116428%_
           _%flags116430%_))))
    (define make-gc-table/lock
      (lambda _g118883_
        (let ((_g118884_ (##length _g118883_)))
          (cond ((##fx= _g118884_ 1) (apply make-gc-table/lock__0 _g118883_))
                ((##fx= _g118884_ 2) (apply make-gc-table/lock__1 _g118883_))
                ((##fx= _g118884_ 3) (apply make-gc-table/lock__% _g118883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g118883_))))))
    (define __gc-table-immediate
      (lambda (_%tab116405%_)
        (let ((_%$e116407%_ (&gc-table-immediate _%tab116405%_)))
          (if _%$e116407%_
              _%$e116407%_
              (let ((_%immediate116411%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab116405%_ _%immediate116411%_)
                _%immediate116411%_)))))
    (define __gc-table-new
      (lambda (_%size116395%_ _%flags116396%_)
        (let* ((_%flags116398%_
                (##fxand _%flags116396%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags116400%_
                (fxior _%flags116398%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht116402%_
                (##gc-hash-table-allocate
                 _%size116395%_
                 _%flags116400%_
                 __gc-table-loads)))
          _%gcht116402%_)))
    (define __gc-table-e
      (lambda (_%tab116390%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht116393%_ (&gc-table-gcht _%tab116390%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht116393%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht116393%_
              (begin
                (__gc-table-rehash! _%tab116390%_)
                (&gc-table-gcht _%tab116390%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab116381%_)
        (let* ((_%old-table116383%_ (&gc-table-gcht _%tab116381%_))
               (_%new-table116385%_
                (##gc-hash-table-resize! _%old-table116383%_ __gc-table-loads))
               (_%gcht116387%_
                (##gc-hash-table-rehash!
                 _%old-table116383%_
                 _%new-table116385%_)))
          (&gc-table-gcht-set! _%tab116381%_ _%gcht116387%_))))
    (define gc-table-ref
      (lambda (_%tab116365%_ _%key116366%_ _%default116367%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116366%_)
            (let* ((_%gcht116371%_ (__gc-table-e _%tab116365%_))
                   (_%value116373%_
                    (##gc-hash-table-ref _%gcht116371%_ _%key116366%_)))
              (if (eq? _%value116373%_ (macro-unused-obj))
                  _%default116367%_
                  _%value116373%_))
            (let ((_%$e116375%_ (&gc-table-immediate _%tab116365%_)))
              (if _%$e116375%_
                  ((lambda (_%immediate116378%_)
                     (immediate-table-ref
                      _%immediate116378%_
                      _%key116366%_
                      _%default116367%_))
                   _%$e116375%_)
                  _%default116367%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab116339%_ _%key116340%_ _%default116341%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116345%_ ((_%spin116348%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116339%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116339%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116348%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116345%_ (##fx+ _%spin116348%_ '1)))
                    (let ((_%owner116354%_
                           (##vector-ref (&gc-table-lock _%tab116339%_) '1)))
                      (if (eq? _%owner116354%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116354%_)
                              (let () (##thread-yield!) (_%again116345%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116360%_
               (gc-table-ref _%tab116339%_ _%key116340%_ _%default116341%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116339%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116339%_) '0 '0 '1)))
          _%$r116360%_)))
    (define gc-table-set!
      (lambda (_%tab116332%_ _%key116333%_ _%value116334%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116333%_)
            (let ((_%gcht116337%_ (__gc-table-e _%tab116332%_)))
              (if (##gc-hash-table-set!
                   _%gcht116337%_
                   _%key116333%_
                   _%value116334%_)
                  (begin
                    (__gc-table-rehash! _%tab116332%_)
                    (gc-table-set!
                     _%tab116332%_
                     _%key116333%_
                     _%value116334%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab116332%_)
             _%key116333%_
             _%value116334%_))))
    (define gc-table-set/lock!
      (lambda (_%tab116306%_ _%key116307%_ _%value116308%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116312%_ ((_%spin116315%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116306%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116306%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116315%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116312%_ (##fx+ _%spin116315%_ '1)))
                    (let ((_%owner116321%_
                           (##vector-ref (&gc-table-lock _%tab116306%_) '1)))
                      (if (eq? _%owner116321%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116321%_)
                              (let () (##thread-yield!) (_%again116312%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116327%_
               (gc-table-set! _%tab116306%_ _%key116307%_ _%value116308%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116306%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116306%_) '0 '0 '1)))
          _%$r116327%_)))
    (define gc-table-update!
      (lambda (_%tab116299%_ _%key116300%_ _%update116301%_ _%default116302%_)
        (if (##mem-allocated? _%key116300%_)
            (let ((_%value116304%_
                   (gc-table-ref
                    _%tab116299%_
                    _%key116300%_
                    _%default116302%_)))
              (gc-table-set!
               _%tab116299%_
               _%key116300%_
               (_%update116301%_ _%value116304%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab116299%_)
             _%key116300%_
             _%update116301%_
             _%default116302%_))))
    (define gc-table-update!/lock
      (lambda (_%tab116272%_ _%key116273%_ _%update116274%_ _%default116275%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116279%_ ((_%spin116282%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116272%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116272%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116282%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116279%_ (##fx+ _%spin116282%_ '1)))
                    (let ((_%owner116288%_
                           (##vector-ref (&gc-table-lock _%tab116272%_) '1)))
                      (if (eq? _%owner116288%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116288%_)
                              (let () (##thread-yield!) (_%again116279%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116294%_
               (gc-table-update!
                _%tab116272%_
                _%key116273%_
                _%update116274%_
                _%default116275%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116272%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116272%_) '0 '0 '1)))
          _%$r116294%_)))
    (define gc-table-delete!
      (lambda (_%tab116260%_ _%key116261%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116261%_)
            (let ((_%gcht116265%_ (__gc-table-e _%tab116260%_)))
              (if (##gc-hash-table-set!
                   _%gcht116265%_
                   _%key116261%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab116260%_)
                    (gc-table-delete! _%tab116260%_ _%key116261%_))
                  '#!void))
            (let ((_%$e116267%_ (&gc-table-immediate _%tab116260%_)))
              (if _%$e116267%_
                  ((lambda (_%immediate116270%_)
                     (immediate-table-delete!
                      _%immediate116270%_
                      _%key116261%_))
                   _%$e116267%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab116235%_ _%key116236%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116240%_ ((_%spin116243%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116235%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116235%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116243%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116240%_ (##fx+ _%spin116243%_ '1)))
                    (let ((_%owner116249%_
                           (##vector-ref (&gc-table-lock _%tab116235%_) '1)))
                      (if (eq? _%owner116249%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116249%_)
                              (let () (##thread-yield!) (_%again116240%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116255%_ (gc-table-delete! _%tab116235%_ _%key116236%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116235%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116235%_) '0 '0 '1)))
          _%$r116255%_)))
    (define gc-table-for-each
      (lambda (_%tab116224%_ _%proc116225%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht116228%_ (__gc-table-e _%tab116224%_)))
            (##gc-hash-table-for-each _%proc116225%_ _%gcht116228%_))
          (let ((_%$e116230%_ (&gc-table-immediate _%tab116224%_)))
            (if _%$e116230%_
                ((lambda (_%immediate116233%_)
                   (raw-table-for-each _%immediate116233%_ _%proc116225%_))
                 _%$e116230%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab116199%_ _%proc116200%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116204%_ ((_%spin116207%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116199%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116199%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116207%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116204%_ (##fx+ _%spin116207%_ '1)))
                    (let ((_%owner116213%_
                           (##vector-ref (&gc-table-lock _%tab116199%_) '1)))
                      (if (eq? _%owner116213%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116213%_)
                              (let () (##thread-yield!) (_%again116204%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116219%_ (gc-table-for-each _%tab116199%_ _%proc116200%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116199%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116199%_) '0 '0 '1)))
          _%$r116219%_)))
    (define gc-table-copy
      (lambda (_%tab116187%_)
        (let* ((_%gcht116189%_ (__gc-table-e _%tab116187%_))
               (_%new-table116191%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht116189%_)
                 (macro-gc-hash-table-flags _%gcht116189%_)))
               (_%result116193%_
                (##structure
                 (##structure-type _%tab116187%_)
                 _%new-table116191%_
                 '#f)))
          (gc-table-for-each
           _%tab116187%_
           (lambda (_%k116196%_ _%v116197%_)
             (gc-table-set! _%result116193%_ _%k116196%_ _%v116197%_)))
          _%result116193%_)))
    (define gc-table-copy/lock
      (lambda (_%tab116163%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116167%_ ((_%spin116170%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116163%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116163%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116170%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116167%_ (##fx+ _%spin116170%_ '1)))
                    (let ((_%owner116176%_
                           (##vector-ref (&gc-table-lock _%tab116163%_) '1)))
                      (if (eq? _%owner116176%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116176%_)
                              (let () (##thread-yield!) (_%again116167%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116182%_ (gc-table-copy _%tab116163%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116163%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116163%_) '0 '0 '1)))
          _%$r116182%_)))
    (define gc-table-clear!
      (lambda (_%tab116156%_)
        (let* ((_%gcht116158%_ (__gc-table-e _%tab116156%_))
               (_%new-table116160%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht116158%_))))
          (&gc-table-gcht-set! _%tab116156%_ _%new-table116160%_)
          (&gc-table-immediate-set! _%tab116156%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab116132%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116136%_ ((_%spin116139%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116132%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116132%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116139%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116136%_ (##fx+ _%spin116139%_ '1)))
                    (let ((_%owner116145%_
                           (##vector-ref (&gc-table-lock _%tab116132%_) '1)))
                      (if (eq? _%owner116145%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116145%_)
                              (let () (##thread-yield!) (_%again116136%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116151%_ (gc-table-clear! _%tab116132%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116132%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116132%_) '0 '0 '1)))
          _%$r116151%_)))
    (define gc-table-length
      (lambda (_%tab116124%_)
        (let ((_%gcht116126%_ (__gc-table-e _%tab116124%_)))
          (fx+ (macro-gc-hash-table-count _%gcht116126%_)
               (let ((_%$e116128%_ (&gc-table-immediate _%tab116124%_)))
                 (if _%$e116128%_ (&raw-table-count _%$e116128%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab116100%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116104%_ ((_%spin116107%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116100%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116100%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116107%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116104%_ (##fx+ _%spin116107%_ '1)))
                    (let ((_%owner116113%_
                           (##vector-ref (&gc-table-lock _%tab116100%_) '1)))
                      (if (eq? _%owner116113%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116113%_)
                              (let () (##thread-yield!) (_%again116104%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116119%_ (gc-table-length _%tab116100%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116100%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116100%_) '0 '0 '1)))
          _%$r116119%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj116068%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116073%_ ((_%spin116076%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin116076%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116073%_ (##fx+ _%spin116076%_ '1)))
                      (let ((_%owner116082%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner116082%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116082%_)
                                (let () (##thread-yield!) (_%again116073%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116095%_
                 (let ((_%val116088%_
                        (gc-table-ref __object-eq-hash _%obj116068%_ '#f)))
                   (if _%val116088%_
                       _%val116088%_
                       (let ((_%h116090%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e116092%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e116092%_ _%$e116092%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj116068%_
                          _%h116090%_)
                         _%h116090%_)))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! __object-eq-hash-lock '1 '#f)
                (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
            _%$r116095%_))))))
