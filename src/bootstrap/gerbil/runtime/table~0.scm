(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1771104500)
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
      (lambda (_%obj118875%_)
        (if (##structure? _%obj118875%_)
            (##structure-instance-of? _%obj118875%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab118873%_)
        (##unchecked-structure-ref
         _%tab118873%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab118871%_)
        (##unchecked-structure-ref
         _%tab118871%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab118869%_)
        (##unchecked-structure-ref
         _%tab118869%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab118867%_)
        (##unchecked-structure-ref
         _%tab118867%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab118865%_)
        (##unchecked-structure-ref
         _%tab118865%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab118863%_)
        (##unchecked-structure-ref
         _%tab118863%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab118861%_)
        (##unchecked-structure-ref
         _%tab118861%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab118858%_ _%val118859%_)
        (##unchecked-structure-set!
         _%tab118858%_
         _%val118859%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab118855%_ _%val118856%_)
        (##unchecked-structure-set!
         _%tab118855%_
         _%val118856%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab118852%_ _%val118853%_)
        (##unchecked-structure-set!
         _%tab118852%_
         _%val118853%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab118849%_ _%val118850%_)
        (##unchecked-structure-set!
         _%tab118849%_
         _%val118850%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab118846%_ _%val118847%_)
        (##unchecked-structure-set!
         _%tab118846%_
         _%val118847%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab118843%_ _%val118844%_)
        (##unchecked-structure-set!
         _%tab118843%_
         _%val118844%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab118840%_ _%val118841%_)
        (##unchecked-structure-set!
         _%tab118840%_
         _%val118841%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint118838%_)
        (if (and (fixnum? _%size-hint118838%_) (##fx> _%size-hint118838%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint118838%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint118803%_
               _%hash118804%_
               _%test118805%_
               _%seed118806%_
               _%lock118807%_)
        (let* ((_%size118809%_ (raw-table-size-hint->size _%size-hint118803%_))
               (_%table118811%_
                (##make-vector _%size118809%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table118811%_
           '0
           (##fxquotient _%size118809%_ '2)
           _%hash118804%_
           _%test118805%_
           _%seed118806%_
           _%lock118807%_))))
    (define make-raw-table__0
      (lambda (_%size-hint118817%_ _%hash118818%_ _%test118819%_)
        (let* ((_%seed118821%_ '0) (_%lock118823%_ '#f))
          (make-raw-table__%
           _%size-hint118817%_
           _%hash118818%_
           _%test118819%_
           _%seed118821%_
           _%lock118823%_))))
    (define make-raw-table__1
      (lambda (_%size-hint118825%_
               _%hash118826%_
               _%test118827%_
               _%seed118828%_)
        (let ((_%lock118830%_ '#f))
          (make-raw-table__%
           _%size-hint118825%_
           _%hash118826%_
           _%test118827%_
           _%seed118828%_
           _%lock118830%_))))
    (define make-raw-table
      (lambda _g118876_
        (let ((_g118877_ (##length _g118876_)))
          (cond ((##fx= _g118877_ 3) (apply make-raw-table__0 _g118876_))
                ((##fx= _g118877_ 4) (apply make-raw-table__1 _g118876_))
                ((##fx= _g118877_ 5) (apply make-raw-table__% _g118876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g118876_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint118783%_
               _%hash118784%_
               _%test118785%_
               _%seed118786%_)
        (make-raw-table__%
         _%size-hint118783%_
         _%hash118784%_
         _%test118785%_
         _%seed118786%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint118791%_ _%hash118792%_ _%test118793%_)
        (let ((_%seed118795%_ '0))
          (make-raw-table/lock__%
           _%size-hint118791%_
           _%hash118792%_
           _%test118793%_
           _%seed118795%_))))
    (define make-raw-table/lock
      (lambda _g118878_
        (let ((_g118879_ (##length _g118878_)))
          (cond ((##fx= _g118879_ 3) (apply make-raw-table/lock__0 _g118878_))
                ((##fx= _g118879_ 4) (apply make-raw-table/lock__% _g118878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g118878_))))))
    (define raw-table-length
      (lambda (_%tab118780%_) (&raw-table-count _%tab118780%_)))
    (define raw-table-length/lock
      (lambda (_%tab118753%_)
        (let ((_%lock118755%_ (&raw-table-lock _%tab118753%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118760%_ ((_%spin118763%_ '0))
              (if (##fx= (##vector-cas! _%lock118755%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118755%_ '1 (current-thread))
                  (if (##fx< _%spin118763%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118760%_ (##fx+ _%spin118763%_ '1)))
                      (let ((_%owner118769%_ (##vector-ref _%lock118755%_ '1)))
                        (if (eq? _%owner118769%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118769%_)
                                (let () (##thread-yield!) (_%again118760%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118775%_ (&raw-table-count _%tab118753%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118755%_ '1 '#f)
                (##vector-cas! _%lock118755%_ '0 '0 '1)))
            _%$r118775%_))))
    (define raw-table-ref
      (lambda (_%tab118705%_ _%key118706%_ _%default118707%_)
        (let ((_%table118709%_ (&raw-table-table _%tab118705%_))
              (_%seed118710%_ (&raw-table-seed _%tab118705%_))
              (_%hash118711%_ (&raw-table-hash _%tab118705%_))
              (_%test118712%_ (&raw-table-test _%tab118705%_)))
          (let* ((_%h118714%_
                  (fxxor (_%hash118711%_ _%key118706%_) _%seed118710%_))
                 (_%size118717%_ (vector-length _%table118709%_))
                 (_%entries118720%_ (##fxquotient _%size118717%_ '2))
                 (_%start118723%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118714%_ _%entries118720%_)
                   '1)))
            (let _%loop118727%_ ((_%probe118730%_ _%start118723%_)
                                 (_%i118732%_ '1)
                                 (_%deleted118734%_ '#f))
              (let ((_%k118737%_ (vector-ref _%table118709%_ _%probe118730%_)))
                (if (eq? _%k118737%_ (macro-unused-obj))
                    _%default118707%_
                    (if (eq? _%k118737%_ (macro-deleted-obj))
                        (_%loop118727%_
                         (let ((_%next-probe118742%_
                                (fx+ _%start118723%_
                                     _%i118732%_
                                     (fx* _%i118732%_ _%i118732%_))))
                           (##fxmodulo _%next-probe118742%_ _%size118717%_))
                         (##fx+ _%i118732%_ '1)
                         (let ((_%$e118745%_ _%deleted118734%_))
                           (if _%$e118745%_ _%$e118745%_ _%probe118730%_)))
                        (if (_%test118712%_ _%key118706%_ _%k118737%_)
                            (vector-ref
                             _%table118709%_
                             (##fx+ _%probe118730%_ '1))
                            (_%loop118727%_
                             (let ((_%next-probe118750%_
                                    (fx+ _%start118723%_
                                         _%i118732%_
                                         (fx* _%i118732%_ _%i118732%_))))
                               (##fxmodulo
                                _%next-probe118750%_
                                _%size118717%_))
                             (##fx+ _%i118732%_ '1)
                             _%deleted118734%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab118676%_ _%key118677%_ _%default118678%_)
        (let ((_%lock118680%_ (&raw-table-lock _%tab118676%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118685%_ ((_%spin118688%_ '0))
              (if (##fx= (##vector-cas! _%lock118680%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118680%_ '1 (current-thread))
                  (if (##fx< _%spin118688%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118685%_ (##fx+ _%spin118688%_ '1)))
                      (let ((_%owner118694%_ (##vector-ref _%lock118680%_ '1)))
                        (if (eq? _%owner118694%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118694%_)
                                (let () (##thread-yield!) (_%again118685%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118700%_
                 (raw-table-ref
                  _%tab118676%_
                  _%key118677%_
                  _%default118678%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118680%_ '1 '#f)
                (##vector-cas! _%lock118680%_ '0 '0 '1)))
            _%$r118700%_))))
    (define raw-table-set!
      (lambda (_%tab118672%_ _%key118673%_ _%value118674%_)
        (if (##fx< (&raw-table-free _%tab118672%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118672%_))
                    '4))
            (__raw-table-rehash! _%tab118672%_)
            '#!void)
        (__raw-table-set! _%tab118672%_ _%key118673%_ _%value118674%_)))
    (define raw-table-set!/lock
      (lambda (_%tab118643%_ _%key118644%_ _%value118645%_)
        (let ((_%lock118647%_ (&raw-table-lock _%tab118643%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118652%_ ((_%spin118655%_ '0))
              (if (##fx= (##vector-cas! _%lock118647%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118647%_ '1 (current-thread))
                  (if (##fx< _%spin118655%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118652%_ (##fx+ _%spin118655%_ '1)))
                      (let ((_%owner118661%_ (##vector-ref _%lock118647%_ '1)))
                        (if (eq? _%owner118661%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118661%_)
                                (let () (##thread-yield!) (_%again118652%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118667%_
                 (raw-table-set! _%tab118643%_ _%key118644%_ _%value118645%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118647%_ '1 '#f)
                (##vector-cas! _%lock118647%_ '0 '0 '1)))
            _%$r118667%_))))
    (define raw-table-update!
      (lambda (_%tab118638%_ _%key118639%_ _%update118640%_ _%default118641%_)
        (if (##fx< (&raw-table-free _%tab118638%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118638%_))
                    '4))
            (__raw-table-rehash! _%tab118638%_)
            '#!void)
        (__raw-table-update!
         _%tab118638%_
         _%key118639%_
         _%update118640%_
         _%default118641%_)))
    (define raw-table-update!/lock
      (lambda (_%tab118608%_ _%key118609%_ _%update118610%_ _%default118611%_)
        (let ((_%lock118613%_ (&raw-table-lock _%tab118608%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118618%_ ((_%spin118621%_ '0))
              (if (##fx= (##vector-cas! _%lock118613%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118613%_ '1 (current-thread))
                  (if (##fx< _%spin118621%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118618%_ (##fx+ _%spin118621%_ '1)))
                      (let ((_%owner118627%_ (##vector-ref _%lock118613%_ '1)))
                        (if (eq? _%owner118627%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118627%_)
                                (let () (##thread-yield!) (_%again118618%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118633%_
                 (raw-table-update!
                  _%tab118608%_
                  _%key118609%_
                  _%update118610%_
                  _%default118611%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118613%_ '1 '#f)
                (##vector-cas! _%lock118613%_ '0 '0 '1)))
            _%$r118633%_))))
    (define raw-table-delete!
      (lambda (_%tab118565%_ _%key118566%_)
        (let ((_%table118568%_ (&raw-table-table _%tab118565%_))
              (_%seed118569%_ (&raw-table-seed _%tab118565%_))
              (_%hash118570%_ (&raw-table-hash _%tab118565%_))
              (_%test118571%_ (&raw-table-test _%tab118565%_)))
          (let* ((_%h118573%_
                  (fxxor (_%hash118570%_ _%key118566%_) _%seed118569%_))
                 (_%size118576%_ (vector-length _%table118568%_))
                 (_%entries118579%_ (##fxquotient _%size118576%_ '2))
                 (_%start118582%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118573%_ _%entries118579%_)
                   '1)))
            (let _%loop118586%_ ((_%probe118589%_ _%start118582%_)
                                 (_%i118591%_ '1))
              (let ((_%k118594%_ (vector-ref _%table118568%_ _%probe118589%_)))
                (if (eq? _%k118594%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118594%_ (macro-deleted-obj))
                        (_%loop118586%_
                         (let ((_%next-probe118599%_
                                (fx+ _%start118582%_
                                     _%i118591%_
                                     (fx* _%i118591%_ _%i118591%_))))
                           (##fxmodulo _%next-probe118599%_ _%size118576%_))
                         (##fx+ _%i118591%_ '1))
                        (if (_%test118571%_ _%key118566%_ _%k118594%_)
                            (let ()
                              (vector-set!
                               _%table118568%_
                               _%probe118589%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118568%_
                               (##fx+ _%probe118589%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab118565%_
                                  (##fx- (&raw-table-count _%tab118565%_)
                                         '1)))))
                            (_%loop118586%_
                             (let ((_%next-probe118605%_
                                    (fx+ _%start118582%_
                                         _%i118591%_
                                         (fx* _%i118591%_ _%i118591%_))))
                               (##fxmodulo
                                _%next-probe118605%_
                                _%size118576%_))
                             (##fx+ _%i118591%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab118537%_ _%key118538%_)
        (let ((_%lock118540%_ (&raw-table-lock _%tab118537%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118545%_ ((_%spin118548%_ '0))
              (if (##fx= (##vector-cas! _%lock118540%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118540%_ '1 (current-thread))
                  (if (##fx< _%spin118548%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118545%_ (##fx+ _%spin118548%_ '1)))
                      (let ((_%owner118554%_ (##vector-ref _%lock118540%_ '1)))
                        (if (eq? _%owner118554%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118554%_)
                                (let () (##thread-yield!) (_%again118545%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118560%_ (raw-table-delete! _%tab118537%_ _%key118538%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118540%_ '1 '#f)
                (##vector-cas! _%lock118540%_ '0 '0 '1)))
            _%$r118560%_))))
    (define raw-table-for-each
      (lambda (_%tab118521%_ _%proc118522%_)
        (let* ((_%table118524%_ (&raw-table-table _%tab118521%_))
               (_%size118526%_ (vector-length _%table118524%_)))
          (let _%loop118529%_ ((_%i118531%_ '0))
            (if (##fx< _%i118531%_ _%size118526%_)
                (begin
                  (let ((_%key118533%_
                         (vector-ref _%table118524%_ _%i118531%_)))
                    (if (if (eq? _%key118533%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key118533%_ (macro-deleted-obj))))
                        (let ((_%value118535%_
                               (vector-ref
                                _%table118524%_
                                (##fx+ _%i118531%_ '1))))
                          (_%proc118522%_ _%key118533%_ _%value118535%_))
                        '#!void))
                  (_%loop118529%_ (##fx+ _%i118531%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab118493%_ _%proc118494%_)
        (let ((_%lock118496%_ (&raw-table-lock _%tab118493%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118501%_ ((_%spin118504%_ '0))
              (if (##fx= (##vector-cas! _%lock118496%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118496%_ '1 (current-thread))
                  (if (##fx< _%spin118504%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118501%_ (##fx+ _%spin118504%_ '1)))
                      (let ((_%owner118510%_ (##vector-ref _%lock118496%_ '1)))
                        (if (eq? _%owner118510%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118510%_)
                                (let () (##thread-yield!) (_%again118501%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118516%_
                 (raw-table-for-each _%tab118493%_ _%proc118494%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118496%_ '1 '#f)
                (##vector-cas! _%lock118496%_ '0 '0 '1)))
            _%$r118516%_))))
    (define raw-table-copy
      (lambda (_%tab118489%_)
        (let ((_%new-tab118491%_ (##structure-copy _%tab118489%_)))
          (&raw-table-table-set!
           _%new-tab118491%_
           (vector-copy (&raw-table-table _%tab118489%_)))
          _%new-tab118491%_)))
    (define raw-table-copy/lock
      (lambda (_%tab118462%_)
        (let ((_%lock118464%_ (&raw-table-lock _%tab118462%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118469%_ ((_%spin118472%_ '0))
              (if (##fx= (##vector-cas! _%lock118464%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118464%_ '1 (current-thread))
                  (if (##fx< _%spin118472%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118469%_ (##fx+ _%spin118472%_ '1)))
                      (let ((_%owner118478%_ (##vector-ref _%lock118464%_ '1)))
                        (if (eq? _%owner118478%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118478%_)
                                (let () (##thread-yield!) (_%again118469%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118484%_ (raw-table-copy _%tab118462%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118464%_ '1 '#f)
                (##vector-cas! _%lock118464%_ '0 '0 '1)))
            _%$r118484%_))))
    (define raw-table-clear!
      (lambda (_%tab118460%_)
        (vector-fill! (&raw-table-table _%tab118460%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab118460%_ '0)
        (&raw-table-free-set!
         _%tab118460%_
         (##fxquotient (vector-length (&raw-table-table _%tab118460%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab118433%_)
        (let ((_%lock118435%_ (&raw-table-lock _%tab118433%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118440%_ ((_%spin118443%_ '0))
              (if (##fx= (##vector-cas! _%lock118435%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118435%_ '1 (current-thread))
                  (if (##fx< _%spin118443%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118440%_ (##fx+ _%spin118443%_ '1)))
                      (let ((_%owner118449%_ (##vector-ref _%lock118435%_ '1)))
                        (if (eq? _%owner118449%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118449%_)
                                (let () (##thread-yield!) (_%again118440%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118455%_ (raw-table-clear! _%tab118433%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118435%_ '1 '#f)
                (##vector-cas! _%lock118435%_ '0 '0 '1)))
            _%$r118455%_))))
    (define __raw-table-set!
      (lambda (_%tab118383%_ _%key118384%_ _%value118385%_)
        (let ((_%table118387%_ (&raw-table-table _%tab118383%_))
              (_%seed118388%_ (&raw-table-seed _%tab118383%_))
              (_%hash118389%_ (&raw-table-hash _%tab118383%_))
              (_%test118390%_ (&raw-table-test _%tab118383%_)))
          (let* ((_%h118392%_
                  (fxxor (_%hash118389%_ _%key118384%_) _%seed118388%_))
                 (_%size118395%_ (vector-length _%table118387%_))
                 (_%entries118398%_ (##fxquotient _%size118395%_ '2))
                 (_%start118401%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118392%_ _%entries118398%_)
                   '1)))
            (let _%loop118405%_ ((_%probe118408%_ _%start118401%_)
                                 (_%i118410%_ '1)
                                 (_%deleted118412%_ '#f))
              (let ((_%k118415%_ (vector-ref _%table118387%_ _%probe118408%_)))
                (if (eq? _%k118415%_ (macro-unused-obj))
                    (if _%deleted118412%_
                        (begin
                          (vector-set!
                           _%table118387%_
                           _%deleted118412%_
                           _%key118384%_)
                          (vector-set!
                           _%table118387%_
                           (##fx+ _%deleted118412%_ '1)
                           _%value118385%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118383%_
                              (##fx+ (&raw-table-count _%tab118383%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118387%_
                           _%probe118408%_
                           _%key118384%_)
                          (vector-set!
                           _%table118387%_
                           (##fx+ _%probe118408%_ '1)
                           _%value118385%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118383%_
                              (##fx- (&raw-table-free _%tab118383%_) '1))
                             (&raw-table-count-set!
                              _%tab118383%_
                              (##fx+ (&raw-table-count _%tab118383%_) '1))))))
                    (if (eq? _%k118415%_ (macro-deleted-obj))
                        (_%loop118405%_
                         (let ((_%next-probe118422%_
                                (fx+ _%start118401%_
                                     _%i118410%_
                                     (fx* _%i118410%_ _%i118410%_))))
                           (##fxmodulo _%next-probe118422%_ _%size118395%_))
                         (##fx+ _%i118410%_ '1)
                         (let ((_%$e118425%_ _%deleted118412%_))
                           (if _%$e118425%_ _%$e118425%_ _%probe118408%_)))
                        (if (_%test118390%_ _%key118384%_ _%k118415%_)
                            (let ()
                              (vector-set!
                               _%table118387%_
                               _%probe118408%_
                               _%key118384%_)
                              (vector-set!
                               _%table118387%_
                               (##fx+ _%probe118408%_ '1)
                               _%value118385%_))
                            (_%loop118405%_
                             (let ((_%next-probe118430%_
                                    (fx+ _%start118401%_
                                         _%i118410%_
                                         (fx* _%i118410%_ _%i118410%_))))
                               (##fxmodulo
                                _%next-probe118430%_
                                _%size118395%_))
                             (##fx+ _%i118410%_ '1)
                             _%deleted118412%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab118332%_ _%key118333%_ _%update118334%_ _%default118335%_)
        (let ((_%table118337%_ (&raw-table-table _%tab118332%_))
              (_%seed118338%_ (&raw-table-seed _%tab118332%_))
              (_%hash118339%_ (&raw-table-hash _%tab118332%_))
              (_%test118340%_ (&raw-table-test _%tab118332%_)))
          (let* ((_%h118342%_
                  (fxxor (_%hash118339%_ _%key118333%_) _%seed118338%_))
                 (_%size118345%_ (vector-length _%table118337%_))
                 (_%entries118348%_ (##fxquotient _%size118345%_ '2))
                 (_%start118351%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118342%_ _%entries118348%_)
                   '1)))
            (let _%loop118355%_ ((_%probe118358%_ _%start118351%_)
                                 (_%i118360%_ '1)
                                 (_%deleted118362%_ '#f))
              (let ((_%k118365%_ (vector-ref _%table118337%_ _%probe118358%_)))
                (if (eq? _%k118365%_ (macro-unused-obj))
                    (if _%deleted118362%_
                        (begin
                          (vector-set!
                           _%table118337%_
                           _%deleted118362%_
                           _%key118333%_)
                          (vector-set!
                           _%table118337%_
                           (##fx+ _%deleted118362%_ '1)
                           (_%update118334%_ _%default118335%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118332%_
                              (##fx+ (&raw-table-count _%tab118332%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118337%_
                           _%probe118358%_
                           _%key118333%_)
                          (vector-set!
                           _%table118337%_
                           (##fx+ _%probe118358%_ '1)
                           (_%update118334%_ _%default118335%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118332%_
                              (##fx- (&raw-table-free _%tab118332%_) '1))
                             (&raw-table-count-set!
                              _%tab118332%_
                              (##fx+ (&raw-table-count _%tab118332%_) '1))))))
                    (if (eq? _%k118365%_ (macro-deleted-obj))
                        (_%loop118355%_
                         (let ((_%next-probe118372%_
                                (fx+ _%start118351%_
                                     _%i118360%_
                                     (fx* _%i118360%_ _%i118360%_))))
                           (##fxmodulo _%next-probe118372%_ _%size118345%_))
                         (##fx+ _%i118360%_ '1)
                         (let ((_%$e118375%_ _%deleted118362%_))
                           (if _%$e118375%_ _%$e118375%_ _%probe118358%_)))
                        (if (_%test118340%_ _%key118333%_ _%k118365%_)
                            (let ()
                              (vector-set!
                               _%table118337%_
                               _%probe118358%_
                               _%key118333%_)
                              (vector-set!
                               _%table118337%_
                               (##fx+ _%probe118358%_ '1)
                               (_%update118334%_
                                (vector-ref
                                 _%table118337%_
                                 (##fx+ _%probe118358%_ '1)))))
                            (_%loop118355%_
                             (let ((_%next-probe118380%_
                                    (fx+ _%start118351%_
                                         _%i118360%_
                                         (fx* _%i118360%_ _%i118360%_))))
                               (##fxmodulo
                                _%next-probe118380%_
                                _%size118345%_))
                             (##fx+ _%i118360%_ '1)
                             _%deleted118362%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab118313%_)
        (let* ((_%old-table118315%_ (&raw-table-table _%tab118313%_))
               (_%old-size118317%_ (vector-length _%old-table118315%_))
               (_%new-size118319%_
                (if (##fx< (&raw-table-count _%tab118313%_)
                           (##fxquotient _%old-size118317%_ '4))
                    (vector-length _%old-table118315%_)
                    (##fx* '2 (vector-length _%old-table118315%_))))
               (_%new-table118321%_
                (##make-vector _%new-size118319%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab118313%_ _%new-table118321%_)
          (&raw-table-count-set! _%tab118313%_ '0)
          (&raw-table-free-set!
           _%tab118313%_
           (##fxquotient _%new-size118319%_ '2))
          (let _%lp118324%_ ((_%i118326%_ '0))
            (if (##fx< _%i118326%_ _%old-size118317%_)
                (begin
                  (let ((_%key118328%_
                         (vector-ref _%old-table118315%_ _%i118326%_)))
                    (if (if (eq? _%key118328%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key118328%_ (macro-deleted-obj))))
                        (let ((_%value118330%_
                               (vector-ref
                                _%old-table118315%_
                                (##fx+ _%i118326%_ '1))))
                          (__raw-table-set!
                           _%tab118313%_
                           _%key118328%_
                           _%value118330%_))
                        '#!void))
                  (_%lp118324%_ (##fx+ _%i118326%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj118305%_)
        (let ((_%t118307%_ (##type _%obj118305%_)))
          (if (##fx= (##fxand _%t118307%_ '1) '0)
              (fxand (##type-cast _%obj118305%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj118305%_)
                  (##symbol-hash _%obj118305%_)
                  (if (procedure? _%obj118305%_)
                      (procedure-hash _%obj118305%_)
                      (fxand (__eq-hash _%obj118305%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj118301%_)
        (let ((_%h118303%_
               (if (##closure? _%obj118301%_)
                   (__eq-hash _%obj118301%_)
                   (##type-cast _%obj118301%_ '0))))
          (fxand _%h118303%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj118298%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj118298%_)))
    (define eqv-hash
      (lambda (_%obj118288%_)
        (letrec ((_%combine118290%_
                  (lambda (_%a118295%_ _%b118296%_)
                    (fxand (##fx* (##fx+ _%a118295%_
                                         (fxarithmetic-shift-left
                                          _%b118296%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash118291%_
                  (lambda (_%obj118293%_)
                    (macro-number-dispatch
                     _%obj118293%_
                     (eq-hash _%obj118293%_)
                     (fxand _%obj118293%_ (macro-max-fixnum32))
                     (modulo _%obj118293%_ '331804481)
                     (_%combine118290%_
                      (_%hash118291%_ (macro-ratnum-numerator _%obj118293%_))
                      (_%hash118291%_
                       (macro-ratnum-denominator _%obj118293%_)))
                     (_%combine118290%_
                      (##u16vector-ref _%obj118293%_ '0)
                      (_%combine118290%_
                       (##u16vector-ref _%obj118293%_ '1)
                       (_%combine118290%_
                        (##u16vector-ref _%obj118293%_ '2)
                        (##u16vector-ref _%obj118293%_ '3))))
                     (_%combine118290%_
                      (_%hash118291%_ (macro-cpxnum-real _%obj118293%_))
                      (_%hash118291%_ (macro-cpxnum-imag _%obj118293%_)))))))
          (_%hash118291%_ _%obj118288%_))))
    (define symbolic?
      (lambda (_%obj118283%_)
        (let ((_%$e118285%_ (symbol? _%obj118283%_)))
          (if _%$e118285%_ _%$e118285%_ (keyword? _%obj118283%_)))))
    (define symbolic-hash
      (lambda (_%obj118281%_) (##symbol-hash _%obj118281%_)))
    (define string-hash
      (lambda (_%obj118279%_) (##string=?-hash _%obj118279%_)))
    (define immediate-hash
      (lambda (_%obj118277%_) (##type-cast _%obj118277%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint118259%_ _%seed118260%_)
        (make-raw-table__1 _%size-hint118259%_ eq-hash eq? _%seed118260%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint118266%_ '#f) (_%seed118268%_ '0))
          (make-eq-table__% _%size-hint118266%_ _%seed118268%_))))
    (define make-eq-table__1
      (lambda (_%size-hint118270%_)
        (let ((_%seed118272%_ '0))
          (make-eq-table__% _%size-hint118270%_ _%seed118272%_))))
    (define make-eq-table
      (lambda _g118880_
        (let ((_g118881_ (##length _g118880_)))
          (cond ((##fx= _g118881_ 0) (apply make-eq-table__0 _g118880_))
                ((##fx= _g118881_ 1) (apply make-eq-table__1 _g118880_))
                ((##fx= _g118881_ 2) (apply make-eq-table__% _g118880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g118880_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint118239%_ _%seed118241%_)
        (make-raw-table/lock__%
         _%size-hint118239%_
         eq-hash
         eq?
         _%seed118241%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint118247%_ '#f) (_%seed118249%_ '0))
          (make-eq-table/lock__% _%size-hint118247%_ _%seed118249%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint118251%_)
        (let ((_%seed118253%_ '0))
          (make-eq-table/lock__% _%size-hint118251%_ _%seed118253%_))))
    (define make-eq-table/lock
      (lambda _g118882_
        (let ((_g118883_ (##length _g118882_)))
          (cond ((##fx= _g118883_ 0) (apply make-eq-table/lock__0 _g118882_))
                ((##fx= _g118883_ 1) (apply make-eq-table/lock__1 _g118882_))
                ((##fx= _g118883_ 2) (apply make-eq-table/lock__% _g118882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g118882_))))))
    (define eq-table-ref
      (lambda (_%tab118192%_ _%key118193%_ _%default118194%_)
        (let ((_%table118196%_ (&raw-table-table _%tab118192%_))
              (_%seed118197%_ (&raw-table-seed _%tab118192%_)))
          (let* ((_%h118199%_ (fxxor (eq-hash _%key118193%_) _%seed118197%_))
                 (_%size118202%_ (vector-length _%table118196%_))
                 (_%entries118205%_ (##fxquotient _%size118202%_ '2))
                 (_%start118208%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118199%_ _%entries118205%_)
                   '1)))
            (let _%loop118212%_ ((_%probe118215%_ _%start118208%_)
                                 (_%i118217%_ '1)
                                 (_%deleted118219%_ '#f))
              (let ((_%k118222%_ (vector-ref _%table118196%_ _%probe118215%_)))
                (if (eq? _%k118222%_ (macro-unused-obj))
                    _%default118194%_
                    (if (eq? _%k118222%_ (macro-deleted-obj))
                        (_%loop118212%_
                         (let ((_%next-probe118227%_
                                (fx+ _%start118208%_
                                     _%i118217%_
                                     (fx* _%i118217%_ _%i118217%_))))
                           (##fxmodulo _%next-probe118227%_ _%size118202%_))
                         (##fx+ _%i118217%_ '1)
                         (let ((_%$e118230%_ _%deleted118219%_))
                           (if _%$e118230%_ _%$e118230%_ _%probe118215%_)))
                        (if (eq? _%key118193%_ _%k118222%_)
                            (vector-ref
                             _%table118196%_
                             (##fx+ _%probe118215%_ '1))
                            (_%loop118212%_
                             (let ((_%next-probe118235%_
                                    (fx+ _%start118208%_
                                         _%i118217%_
                                         (fx* _%i118217%_ _%i118217%_))))
                               (##fxmodulo
                                _%next-probe118235%_
                                _%size118202%_))
                             (##fx+ _%i118217%_ '1)
                             _%deleted118219%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab118163%_ _%key118164%_ _%default118165%_)
        (let ((_%lock118167%_ (&raw-table-lock _%tab118163%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118172%_ ((_%spin118175%_ '0))
              (if (##fx= (##vector-cas! _%lock118167%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118167%_ '1 (current-thread))
                  (if (##fx< _%spin118175%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118172%_ (##fx+ _%spin118175%_ '1)))
                      (let ((_%owner118181%_ (##vector-ref _%lock118167%_ '1)))
                        (if (eq? _%owner118181%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118181%_)
                                (let () (##thread-yield!) (_%again118172%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118187%_
                 (eq-table-ref _%tab118163%_ _%key118164%_ _%default118165%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118167%_ '1 '#f)
                (##vector-cas! _%lock118167%_ '0 '0 '1)))
            _%$r118187%_))))
    (define __eq-table-set!
      (lambda (_%tab118115%_ _%key118116%_ _%value118117%_)
        (let ((_%table118119%_ (&raw-table-table _%tab118115%_))
              (_%seed118120%_ (&raw-table-seed _%tab118115%_)))
          (let* ((_%h118122%_ (fxxor (eq-hash _%key118116%_) _%seed118120%_))
                 (_%size118125%_ (vector-length _%table118119%_))
                 (_%entries118128%_ (##fxquotient _%size118125%_ '2))
                 (_%start118131%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118122%_ _%entries118128%_)
                   '1)))
            (let _%loop118135%_ ((_%probe118138%_ _%start118131%_)
                                 (_%i118140%_ '1)
                                 (_%deleted118142%_ '#f))
              (let ((_%k118145%_ (vector-ref _%table118119%_ _%probe118138%_)))
                (if (eq? _%k118145%_ (macro-unused-obj))
                    (if _%deleted118142%_
                        (begin
                          (vector-set!
                           _%table118119%_
                           _%deleted118142%_
                           _%key118116%_)
                          (vector-set!
                           _%table118119%_
                           (##fx+ _%deleted118142%_ '1)
                           _%value118117%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118115%_
                              (##fx+ (&raw-table-count _%tab118115%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118119%_
                           _%probe118138%_
                           _%key118116%_)
                          (vector-set!
                           _%table118119%_
                           (##fx+ _%probe118138%_ '1)
                           _%value118117%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118115%_
                              (##fx- (&raw-table-free _%tab118115%_) '1))
                             (&raw-table-count-set!
                              _%tab118115%_
                              (##fx+ (&raw-table-count _%tab118115%_) '1))))))
                    (if (eq? _%k118145%_ (macro-deleted-obj))
                        (_%loop118135%_
                         (let ((_%next-probe118152%_
                                (fx+ _%start118131%_
                                     _%i118140%_
                                     (fx* _%i118140%_ _%i118140%_))))
                           (##fxmodulo _%next-probe118152%_ _%size118125%_))
                         (##fx+ _%i118140%_ '1)
                         (let ((_%$e118155%_ _%deleted118142%_))
                           (if _%$e118155%_ _%$e118155%_ _%probe118138%_)))
                        (if (eq? _%key118116%_ _%k118145%_)
                            (let ()
                              (vector-set!
                               _%table118119%_
                               _%probe118138%_
                               _%key118116%_)
                              (vector-set!
                               _%table118119%_
                               (##fx+ _%probe118138%_ '1)
                               _%value118117%_))
                            (_%loop118135%_
                             (let ((_%next-probe118160%_
                                    (fx+ _%start118131%_
                                         _%i118140%_
                                         (fx* _%i118140%_ _%i118140%_))))
                               (##fxmodulo
                                _%next-probe118160%_
                                _%size118125%_))
                             (##fx+ _%i118140%_ '1)
                             _%deleted118142%_))))))))))
    (define eq-table-set!
      (lambda (_%tab118111%_ _%key118112%_ _%value118113%_)
        (if (##fx< (&raw-table-free _%tab118111%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118111%_))
                    '4))
            (__raw-table-rehash! _%tab118111%_)
            '#!void)
        (__eq-table-set! _%tab118111%_ _%key118112%_ _%value118113%_)))
    (define eq-table-set!/lock
      (lambda (_%tab118081%_ _%key118082%_ _%value118083%_)
        (let ((_%lock118086%_ (&raw-table-lock _%tab118081%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118091%_ ((_%spin118094%_ '0))
              (if (##fx= (##vector-cas! _%lock118086%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118086%_ '1 (current-thread))
                  (if (##fx< _%spin118094%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118091%_ (##fx+ _%spin118094%_ '1)))
                      (let ((_%owner118100%_ (##vector-ref _%lock118086%_ '1)))
                        (if (eq? _%owner118100%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118100%_)
                                (let () (##thread-yield!) (_%again118091%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118106%_
                 (eq-table-set! _%tab118081%_ _%key118082%_ _%value118083%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118086%_ '1 '#f)
                (##vector-cas! _%lock118086%_ '0 '0 '1)))
            _%$r118106%_))))
    (define __eq-table-update!
      (lambda (_%tab118032%_
               _%key118033%_
               _%eq-table-update!118034%_
               _%default118035%_)
        (let ((_%table118037%_ (&raw-table-table _%tab118032%_))
              (_%seed118038%_ (&raw-table-seed _%tab118032%_)))
          (let* ((_%h118040%_ (fxxor (eq-hash _%key118033%_) _%seed118038%_))
                 (_%size118043%_ (vector-length _%table118037%_))
                 (_%entries118046%_ (##fxquotient _%size118043%_ '2))
                 (_%start118049%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118040%_ _%entries118046%_)
                   '1)))
            (let _%loop118053%_ ((_%probe118056%_ _%start118049%_)
                                 (_%i118058%_ '1)
                                 (_%deleted118060%_ '#f))
              (let ((_%k118063%_ (vector-ref _%table118037%_ _%probe118056%_)))
                (if (eq? _%k118063%_ (macro-unused-obj))
                    (if _%deleted118060%_
                        (begin
                          (vector-set!
                           _%table118037%_
                           _%deleted118060%_
                           _%key118033%_)
                          (vector-set!
                           _%table118037%_
                           (##fx+ _%deleted118060%_ '1)
                           (_%eq-table-update!118034%_ _%default118035%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118032%_
                              (##fx+ (&raw-table-count _%tab118032%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118037%_
                           _%probe118056%_
                           _%key118033%_)
                          (vector-set!
                           _%table118037%_
                           (##fx+ _%probe118056%_ '1)
                           (_%eq-table-update!118034%_ _%default118035%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118032%_
                              (##fx- (&raw-table-free _%tab118032%_) '1))
                             (&raw-table-count-set!
                              _%tab118032%_
                              (##fx+ (&raw-table-count _%tab118032%_) '1))))))
                    (if (eq? _%k118063%_ (macro-deleted-obj))
                        (_%loop118053%_
                         (let ((_%next-probe118070%_
                                (fx+ _%start118049%_
                                     _%i118058%_
                                     (fx* _%i118058%_ _%i118058%_))))
                           (##fxmodulo _%next-probe118070%_ _%size118043%_))
                         (##fx+ _%i118058%_ '1)
                         (let ((_%$e118073%_ _%deleted118060%_))
                           (if _%$e118073%_ _%$e118073%_ _%probe118056%_)))
                        (if (eq? _%key118033%_ _%k118063%_)
                            (let ()
                              (vector-set!
                               _%table118037%_
                               _%probe118056%_
                               _%key118033%_)
                              (vector-set!
                               _%table118037%_
                               (##fx+ _%probe118056%_ '1)
                               (_%eq-table-update!118034%_
                                (vector-ref
                                 _%table118037%_
                                 (##fx+ _%probe118056%_ '1)))))
                            (_%loop118053%_
                             (let ((_%next-probe118078%_
                                    (fx+ _%start118049%_
                                         _%i118058%_
                                         (fx* _%i118058%_ _%i118058%_))))
                               (##fxmodulo
                                _%next-probe118078%_
                                _%size118043%_))
                             (##fx+ _%i118058%_ '1)
                             _%deleted118060%_))))))))))
    (define eq-table-update!
      (lambda (_%tab118027%_
               _%key118028%_
               _%eq-table-update!118029%_
               _%default118030%_)
        (if (##fx< (&raw-table-free _%tab118027%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118027%_))
                    '4))
            (__raw-table-rehash! _%tab118027%_)
            '#!void)
        (__eq-table-update!
         _%tab118027%_
         _%key118028%_
         _%eq-table-update!118029%_
         _%default118030%_)))
    (define eq-table-update!/lock
      (lambda (_%tab117996%_
               _%key117997%_
               _%eq-table-update!117998%_
               _%default117999%_)
        (let ((_%lock118002%_ (&raw-table-lock _%tab117996%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118007%_ ((_%spin118010%_ '0))
              (if (##fx= (##vector-cas! _%lock118002%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118002%_ '1 (current-thread))
                  (if (##fx< _%spin118010%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118007%_ (##fx+ _%spin118010%_ '1)))
                      (let ((_%owner118016%_ (##vector-ref _%lock118002%_ '1)))
                        (if (eq? _%owner118016%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118016%_)
                                (let () (##thread-yield!) (_%again118007%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118022%_
                 (_%eq-table-update!117998%_
                  _%tab117996%_
                  _%key117997%_
                  _%eq-table-update!117998%_
                  _%default117999%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118002%_ '1 '#f)
                (##vector-cas! _%lock118002%_ '0 '0 '1)))
            _%$r118022%_))))
    (define eq-table-delete!
      (lambda (_%tab117953%_ _%key117954%_)
        (let ((_%table117956%_ (&raw-table-table _%tab117953%_))
              (_%seed117958%_ (&raw-table-seed _%tab117953%_)))
          (let* ((_%h117961%_ (fxxor (eq-hash _%key117954%_) _%seed117958%_))
                 (_%size117964%_ (vector-length _%table117956%_))
                 (_%entries117967%_ (##fxquotient _%size117964%_ '2))
                 (_%start117970%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117961%_ _%entries117967%_)
                   '1)))
            (let _%loop117974%_ ((_%probe117977%_ _%start117970%_)
                                 (_%i117979%_ '1))
              (let ((_%k117982%_ (vector-ref _%table117956%_ _%probe117977%_)))
                (if (eq? _%k117982%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117982%_ (macro-deleted-obj))
                        (_%loop117974%_
                         (let ((_%next-probe117987%_
                                (fx+ _%start117970%_
                                     _%i117979%_
                                     (fx* _%i117979%_ _%i117979%_))))
                           (##fxmodulo _%next-probe117987%_ _%size117964%_))
                         (##fx+ _%i117979%_ '1))
                        (if (eq? _%key117954%_ _%k117982%_)
                            (let ()
                              (vector-set!
                               _%table117956%_
                               _%probe117977%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117956%_
                               (##fx+ _%probe117977%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117953%_
                                  (##fx- (&raw-table-count _%tab117953%_)
                                         '1)))))
                            (_%loop117974%_
                             (let ((_%next-probe117993%_
                                    (fx+ _%start117970%_
                                         _%i117979%_
                                         (fx* _%i117979%_ _%i117979%_))))
                               (##fxmodulo
                                _%next-probe117993%_
                                _%size117964%_))
                             (##fx+ _%i117979%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab117923%_ _%key117925%_)
        (let ((_%lock117928%_ (&raw-table-lock _%tab117923%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117933%_ ((_%spin117936%_ '0))
              (if (##fx= (##vector-cas! _%lock117928%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117928%_ '1 (current-thread))
                  (if (##fx< _%spin117936%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117933%_ (##fx+ _%spin117936%_ '1)))
                      (let ((_%owner117942%_ (##vector-ref _%lock117928%_ '1)))
                        (if (eq? _%owner117942%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117942%_)
                                (let () (##thread-yield!) (_%again117933%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117948%_ (eq-table-delete! _%tab117923%_ _%key117925%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117928%_ '1 '#f)
                (##vector-cas! _%lock117928%_ '0 '0 '1)))
            _%$r117948%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint117905%_ _%seed117906%_)
        (make-raw-table__1 _%size-hint117905%_ eqv-hash eqv? _%seed117906%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint117912%_ '#f) (_%seed117914%_ '0))
          (make-eqv-table__% _%size-hint117912%_ _%seed117914%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint117916%_)
        (let ((_%seed117918%_ '0))
          (make-eqv-table__% _%size-hint117916%_ _%seed117918%_))))
    (define make-eqv-table
      (lambda _g118884_
        (let ((_g118885_ (##length _g118884_)))
          (cond ((##fx= _g118885_ 0) (apply make-eqv-table__0 _g118884_))
                ((##fx= _g118885_ 1) (apply make-eqv-table__1 _g118884_))
                ((##fx= _g118885_ 2) (apply make-eqv-table__% _g118884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g118884_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint117885%_ _%seed117887%_)
        (make-raw-table/lock__%
         _%size-hint117885%_
         eqv-hash
         eqv?
         _%seed117887%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint117893%_ '#f) (_%seed117895%_ '0))
          (make-eqv-table/lock__% _%size-hint117893%_ _%seed117895%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint117897%_)
        (let ((_%seed117899%_ '0))
          (make-eqv-table/lock__% _%size-hint117897%_ _%seed117899%_))))
    (define make-eqv-table/lock
      (lambda _g118886_
        (let ((_g118887_ (##length _g118886_)))
          (cond ((##fx= _g118887_ 0) (apply make-eqv-table/lock__0 _g118886_))
                ((##fx= _g118887_ 1) (apply make-eqv-table/lock__1 _g118886_))
                ((##fx= _g118887_ 2) (apply make-eqv-table/lock__% _g118886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g118886_))))))
    (define eqv-table-ref
      (lambda (_%tab117838%_ _%key117839%_ _%default117840%_)
        (let ((_%table117842%_ (&raw-table-table _%tab117838%_))
              (_%seed117843%_ (&raw-table-seed _%tab117838%_)))
          (let* ((_%h117845%_ (fxxor (eqv-hash _%key117839%_) _%seed117843%_))
                 (_%size117848%_ (vector-length _%table117842%_))
                 (_%entries117851%_ (##fxquotient _%size117848%_ '2))
                 (_%start117854%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117845%_ _%entries117851%_)
                   '1)))
            (let _%loop117858%_ ((_%probe117861%_ _%start117854%_)
                                 (_%i117863%_ '1)
                                 (_%deleted117865%_ '#f))
              (let ((_%k117868%_ (vector-ref _%table117842%_ _%probe117861%_)))
                (if (eq? _%k117868%_ (macro-unused-obj))
                    _%default117840%_
                    (if (eq? _%k117868%_ (macro-deleted-obj))
                        (_%loop117858%_
                         (let ((_%next-probe117873%_
                                (fx+ _%start117854%_
                                     _%i117863%_
                                     (fx* _%i117863%_ _%i117863%_))))
                           (##fxmodulo _%next-probe117873%_ _%size117848%_))
                         (##fx+ _%i117863%_ '1)
                         (let ((_%$e117876%_ _%deleted117865%_))
                           (if _%$e117876%_ _%$e117876%_ _%probe117861%_)))
                        (if (eqv? _%key117839%_ _%k117868%_)
                            (vector-ref
                             _%table117842%_
                             (##fx+ _%probe117861%_ '1))
                            (_%loop117858%_
                             (let ((_%next-probe117881%_
                                    (fx+ _%start117854%_
                                         _%i117863%_
                                         (fx* _%i117863%_ _%i117863%_))))
                               (##fxmodulo
                                _%next-probe117881%_
                                _%size117848%_))
                             (##fx+ _%i117863%_ '1)
                             _%deleted117865%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab117809%_ _%key117810%_ _%default117811%_)
        (let ((_%lock117813%_ (&raw-table-lock _%tab117809%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117818%_ ((_%spin117821%_ '0))
              (if (##fx= (##vector-cas! _%lock117813%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117813%_ '1 (current-thread))
                  (if (##fx< _%spin117821%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117818%_ (##fx+ _%spin117821%_ '1)))
                      (let ((_%owner117827%_ (##vector-ref _%lock117813%_ '1)))
                        (if (eq? _%owner117827%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117827%_)
                                (let () (##thread-yield!) (_%again117818%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117833%_
                 (eqv-table-ref
                  _%tab117809%_
                  _%key117810%_
                  _%default117811%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117813%_ '1 '#f)
                (##vector-cas! _%lock117813%_ '0 '0 '1)))
            _%$r117833%_))))
    (define __eqv-table-set!
      (lambda (_%tab117761%_ _%key117762%_ _%value117763%_)
        (let ((_%table117765%_ (&raw-table-table _%tab117761%_))
              (_%seed117766%_ (&raw-table-seed _%tab117761%_)))
          (let* ((_%h117768%_ (fxxor (eqv-hash _%key117762%_) _%seed117766%_))
                 (_%size117771%_ (vector-length _%table117765%_))
                 (_%entries117774%_ (##fxquotient _%size117771%_ '2))
                 (_%start117777%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117768%_ _%entries117774%_)
                   '1)))
            (let _%loop117781%_ ((_%probe117784%_ _%start117777%_)
                                 (_%i117786%_ '1)
                                 (_%deleted117788%_ '#f))
              (let ((_%k117791%_ (vector-ref _%table117765%_ _%probe117784%_)))
                (if (eq? _%k117791%_ (macro-unused-obj))
                    (if _%deleted117788%_
                        (begin
                          (vector-set!
                           _%table117765%_
                           _%deleted117788%_
                           _%key117762%_)
                          (vector-set!
                           _%table117765%_
                           (##fx+ _%deleted117788%_ '1)
                           _%value117763%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117761%_
                              (##fx+ (&raw-table-count _%tab117761%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117765%_
                           _%probe117784%_
                           _%key117762%_)
                          (vector-set!
                           _%table117765%_
                           (##fx+ _%probe117784%_ '1)
                           _%value117763%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117761%_
                              (##fx- (&raw-table-free _%tab117761%_) '1))
                             (&raw-table-count-set!
                              _%tab117761%_
                              (##fx+ (&raw-table-count _%tab117761%_) '1))))))
                    (if (eq? _%k117791%_ (macro-deleted-obj))
                        (_%loop117781%_
                         (let ((_%next-probe117798%_
                                (fx+ _%start117777%_
                                     _%i117786%_
                                     (fx* _%i117786%_ _%i117786%_))))
                           (##fxmodulo _%next-probe117798%_ _%size117771%_))
                         (##fx+ _%i117786%_ '1)
                         (let ((_%$e117801%_ _%deleted117788%_))
                           (if _%$e117801%_ _%$e117801%_ _%probe117784%_)))
                        (if (eqv? _%key117762%_ _%k117791%_)
                            (let ()
                              (vector-set!
                               _%table117765%_
                               _%probe117784%_
                               _%key117762%_)
                              (vector-set!
                               _%table117765%_
                               (##fx+ _%probe117784%_ '1)
                               _%value117763%_))
                            (_%loop117781%_
                             (let ((_%next-probe117806%_
                                    (fx+ _%start117777%_
                                         _%i117786%_
                                         (fx* _%i117786%_ _%i117786%_))))
                               (##fxmodulo
                                _%next-probe117806%_
                                _%size117771%_))
                             (##fx+ _%i117786%_ '1)
                             _%deleted117788%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab117757%_ _%key117758%_ _%value117759%_)
        (if (##fx< (&raw-table-free _%tab117757%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117757%_))
                    '4))
            (__raw-table-rehash! _%tab117757%_)
            '#!void)
        (__eqv-table-set! _%tab117757%_ _%key117758%_ _%value117759%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab117727%_ _%key117728%_ _%value117729%_)
        (let ((_%lock117732%_ (&raw-table-lock _%tab117727%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117737%_ ((_%spin117740%_ '0))
              (if (##fx= (##vector-cas! _%lock117732%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117732%_ '1 (current-thread))
                  (if (##fx< _%spin117740%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117737%_ (##fx+ _%spin117740%_ '1)))
                      (let ((_%owner117746%_ (##vector-ref _%lock117732%_ '1)))
                        (if (eq? _%owner117746%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117746%_)
                                (let () (##thread-yield!) (_%again117737%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117752%_
                 (eqv-table-set! _%tab117727%_ _%key117728%_ _%value117729%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117732%_ '1 '#f)
                (##vector-cas! _%lock117732%_ '0 '0 '1)))
            _%$r117752%_))))
    (define __eqv-table-update!
      (lambda (_%tab117678%_
               _%key117679%_
               _%eqv-table-update!117680%_
               _%default117681%_)
        (let ((_%table117683%_ (&raw-table-table _%tab117678%_))
              (_%seed117684%_ (&raw-table-seed _%tab117678%_)))
          (let* ((_%h117686%_ (fxxor (eqv-hash _%key117679%_) _%seed117684%_))
                 (_%size117689%_ (vector-length _%table117683%_))
                 (_%entries117692%_ (##fxquotient _%size117689%_ '2))
                 (_%start117695%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117686%_ _%entries117692%_)
                   '1)))
            (let _%loop117699%_ ((_%probe117702%_ _%start117695%_)
                                 (_%i117704%_ '1)
                                 (_%deleted117706%_ '#f))
              (let ((_%k117709%_ (vector-ref _%table117683%_ _%probe117702%_)))
                (if (eq? _%k117709%_ (macro-unused-obj))
                    (if _%deleted117706%_
                        (begin
                          (vector-set!
                           _%table117683%_
                           _%deleted117706%_
                           _%key117679%_)
                          (vector-set!
                           _%table117683%_
                           (##fx+ _%deleted117706%_ '1)
                           (_%eqv-table-update!117680%_ _%default117681%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117678%_
                              (##fx+ (&raw-table-count _%tab117678%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117683%_
                           _%probe117702%_
                           _%key117679%_)
                          (vector-set!
                           _%table117683%_
                           (##fx+ _%probe117702%_ '1)
                           (_%eqv-table-update!117680%_ _%default117681%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117678%_
                              (##fx- (&raw-table-free _%tab117678%_) '1))
                             (&raw-table-count-set!
                              _%tab117678%_
                              (##fx+ (&raw-table-count _%tab117678%_) '1))))))
                    (if (eq? _%k117709%_ (macro-deleted-obj))
                        (_%loop117699%_
                         (let ((_%next-probe117716%_
                                (fx+ _%start117695%_
                                     _%i117704%_
                                     (fx* _%i117704%_ _%i117704%_))))
                           (##fxmodulo _%next-probe117716%_ _%size117689%_))
                         (##fx+ _%i117704%_ '1)
                         (let ((_%$e117719%_ _%deleted117706%_))
                           (if _%$e117719%_ _%$e117719%_ _%probe117702%_)))
                        (if (eqv? _%key117679%_ _%k117709%_)
                            (let ()
                              (vector-set!
                               _%table117683%_
                               _%probe117702%_
                               _%key117679%_)
                              (vector-set!
                               _%table117683%_
                               (##fx+ _%probe117702%_ '1)
                               (_%eqv-table-update!117680%_
                                (vector-ref
                                 _%table117683%_
                                 (##fx+ _%probe117702%_ '1)))))
                            (_%loop117699%_
                             (let ((_%next-probe117724%_
                                    (fx+ _%start117695%_
                                         _%i117704%_
                                         (fx* _%i117704%_ _%i117704%_))))
                               (##fxmodulo
                                _%next-probe117724%_
                                _%size117689%_))
                             (##fx+ _%i117704%_ '1)
                             _%deleted117706%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab117673%_
               _%key117674%_
               _%eqv-table-update!117675%_
               _%default117676%_)
        (if (##fx< (&raw-table-free _%tab117673%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117673%_))
                    '4))
            (__raw-table-rehash! _%tab117673%_)
            '#!void)
        (__eqv-table-update!
         _%tab117673%_
         _%key117674%_
         _%eqv-table-update!117675%_
         _%default117676%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab117642%_
               _%key117643%_
               _%eqv-table-update!117644%_
               _%default117645%_)
        (let ((_%lock117648%_ (&raw-table-lock _%tab117642%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117653%_ ((_%spin117656%_ '0))
              (if (##fx= (##vector-cas! _%lock117648%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117648%_ '1 (current-thread))
                  (if (##fx< _%spin117656%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117653%_ (##fx+ _%spin117656%_ '1)))
                      (let ((_%owner117662%_ (##vector-ref _%lock117648%_ '1)))
                        (if (eq? _%owner117662%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117662%_)
                                (let () (##thread-yield!) (_%again117653%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117668%_
                 (_%eqv-table-update!117644%_
                  _%tab117642%_
                  _%key117643%_
                  _%eqv-table-update!117644%_
                  _%default117645%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117648%_ '1 '#f)
                (##vector-cas! _%lock117648%_ '0 '0 '1)))
            _%$r117668%_))))
    (define eqv-table-delete!
      (lambda (_%tab117599%_ _%key117600%_)
        (let ((_%table117602%_ (&raw-table-table _%tab117599%_))
              (_%seed117604%_ (&raw-table-seed _%tab117599%_)))
          (let* ((_%h117607%_ (fxxor (eqv-hash _%key117600%_) _%seed117604%_))
                 (_%size117610%_ (vector-length _%table117602%_))
                 (_%entries117613%_ (##fxquotient _%size117610%_ '2))
                 (_%start117616%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117607%_ _%entries117613%_)
                   '1)))
            (let _%loop117620%_ ((_%probe117623%_ _%start117616%_)
                                 (_%i117625%_ '1))
              (let ((_%k117628%_ (vector-ref _%table117602%_ _%probe117623%_)))
                (if (eq? _%k117628%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117628%_ (macro-deleted-obj))
                        (_%loop117620%_
                         (let ((_%next-probe117633%_
                                (fx+ _%start117616%_
                                     _%i117625%_
                                     (fx* _%i117625%_ _%i117625%_))))
                           (##fxmodulo _%next-probe117633%_ _%size117610%_))
                         (##fx+ _%i117625%_ '1))
                        (if (eqv? _%key117600%_ _%k117628%_)
                            (let ()
                              (vector-set!
                               _%table117602%_
                               _%probe117623%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117602%_
                               (##fx+ _%probe117623%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117599%_
                                  (##fx- (&raw-table-count _%tab117599%_)
                                         '1)))))
                            (_%loop117620%_
                             (let ((_%next-probe117639%_
                                    (fx+ _%start117616%_
                                         _%i117625%_
                                         (fx* _%i117625%_ _%i117625%_))))
                               (##fxmodulo
                                _%next-probe117639%_
                                _%size117610%_))
                             (##fx+ _%i117625%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab117569%_ _%key117571%_)
        (let ((_%lock117574%_ (&raw-table-lock _%tab117569%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117579%_ ((_%spin117582%_ '0))
              (if (##fx= (##vector-cas! _%lock117574%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117574%_ '1 (current-thread))
                  (if (##fx< _%spin117582%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117579%_ (##fx+ _%spin117582%_ '1)))
                      (let ((_%owner117588%_ (##vector-ref _%lock117574%_ '1)))
                        (if (eq? _%owner117588%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117588%_)
                                (let () (##thread-yield!) (_%again117579%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117594%_ (eqv-table-delete! _%tab117569%_ _%key117571%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117574%_ '1 '#f)
                (##vector-cas! _%lock117574%_ '0 '0 '1)))
            _%$r117594%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint117551%_ _%seed117552%_)
        (make-raw-table__1
         _%size-hint117551%_
         symbolic-hash
         eq?
         _%seed117552%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint117558%_ '#f) (_%seed117560%_ '0))
          (make-symbolic-table__% _%size-hint117558%_ _%seed117560%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint117562%_)
        (let ((_%seed117564%_ '0))
          (make-symbolic-table__% _%size-hint117562%_ _%seed117564%_))))
    (define make-symbolic-table
      (lambda _g118888_
        (let ((_g118889_ (##length _g118888_)))
          (cond ((##fx= _g118889_ 0) (apply make-symbolic-table__0 _g118888_))
                ((##fx= _g118889_ 1) (apply make-symbolic-table__1 _g118888_))
                ((##fx= _g118889_ 2) (apply make-symbolic-table__% _g118888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g118888_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint117531%_ _%seed117533%_)
        (make-raw-table/lock__%
         _%size-hint117531%_
         symbolic-hash
         eq?
         _%seed117533%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint117539%_ '#f) (_%seed117541%_ '0))
          (make-symbolic-table/lock__% _%size-hint117539%_ _%seed117541%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint117543%_)
        (let ((_%seed117545%_ '0))
          (make-symbolic-table/lock__% _%size-hint117543%_ _%seed117545%_))))
    (define make-symbolic-table/lock
      (lambda _g118890_
        (let ((_g118891_ (##length _g118890_)))
          (cond ((##fx= _g118891_ 0)
                 (apply make-symbolic-table/lock__0 _g118890_))
                ((##fx= _g118891_ 1)
                 (apply make-symbolic-table/lock__1 _g118890_))
                ((##fx= _g118891_ 2)
                 (apply make-symbolic-table/lock__% _g118890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g118890_))))))
    (define symbolic-table-ref
      (lambda (_%tab117484%_ _%key117485%_ _%default117486%_)
        (let ((_%table117488%_ (&raw-table-table _%tab117484%_))
              (_%seed117489%_ (&raw-table-seed _%tab117484%_)))
          (let* ((_%h117491%_
                  (fxxor (##symbol-hash _%key117485%_) _%seed117489%_))
                 (_%size117494%_ (vector-length _%table117488%_))
                 (_%entries117497%_ (##fxquotient _%size117494%_ '2))
                 (_%start117500%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117491%_ _%entries117497%_)
                   '1)))
            (let _%loop117504%_ ((_%probe117507%_ _%start117500%_)
                                 (_%i117509%_ '1)
                                 (_%deleted117511%_ '#f))
              (let ((_%k117514%_ (vector-ref _%table117488%_ _%probe117507%_)))
                (if (eq? _%k117514%_ (macro-unused-obj))
                    _%default117486%_
                    (if (eq? _%k117514%_ (macro-deleted-obj))
                        (_%loop117504%_
                         (let ((_%next-probe117519%_
                                (fx+ _%start117500%_
                                     _%i117509%_
                                     (fx* _%i117509%_ _%i117509%_))))
                           (##fxmodulo _%next-probe117519%_ _%size117494%_))
                         (##fx+ _%i117509%_ '1)
                         (let ((_%$e117522%_ _%deleted117511%_))
                           (if _%$e117522%_ _%$e117522%_ _%probe117507%_)))
                        (if (eq? _%key117485%_ _%k117514%_)
                            (vector-ref
                             _%table117488%_
                             (##fx+ _%probe117507%_ '1))
                            (_%loop117504%_
                             (let ((_%next-probe117527%_
                                    (fx+ _%start117500%_
                                         _%i117509%_
                                         (fx* _%i117509%_ _%i117509%_))))
                               (##fxmodulo
                                _%next-probe117527%_
                                _%size117494%_))
                             (##fx+ _%i117509%_ '1)
                             _%deleted117511%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab117455%_ _%key117456%_ _%default117457%_)
        (let ((_%lock117459%_ (&raw-table-lock _%tab117455%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117464%_ ((_%spin117467%_ '0))
              (if (##fx= (##vector-cas! _%lock117459%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117459%_ '1 (current-thread))
                  (if (##fx< _%spin117467%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117464%_ (##fx+ _%spin117467%_ '1)))
                      (let ((_%owner117473%_ (##vector-ref _%lock117459%_ '1)))
                        (if (eq? _%owner117473%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117473%_)
                                (let () (##thread-yield!) (_%again117464%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117479%_
                 (symbolic-table-ref
                  _%tab117455%_
                  _%key117456%_
                  _%default117457%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117459%_ '1 '#f)
                (##vector-cas! _%lock117459%_ '0 '0 '1)))
            _%$r117479%_))))
    (define __symbolic-table-set!
      (lambda (_%tab117407%_ _%key117408%_ _%value117409%_)
        (let ((_%table117411%_ (&raw-table-table _%tab117407%_))
              (_%seed117412%_ (&raw-table-seed _%tab117407%_)))
          (let* ((_%h117414%_
                  (fxxor (##symbol-hash _%key117408%_) _%seed117412%_))
                 (_%size117417%_ (vector-length _%table117411%_))
                 (_%entries117420%_ (##fxquotient _%size117417%_ '2))
                 (_%start117423%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117414%_ _%entries117420%_)
                   '1)))
            (let _%loop117427%_ ((_%probe117430%_ _%start117423%_)
                                 (_%i117432%_ '1)
                                 (_%deleted117434%_ '#f))
              (let ((_%k117437%_ (vector-ref _%table117411%_ _%probe117430%_)))
                (if (eq? _%k117437%_ (macro-unused-obj))
                    (if _%deleted117434%_
                        (begin
                          (vector-set!
                           _%table117411%_
                           _%deleted117434%_
                           _%key117408%_)
                          (vector-set!
                           _%table117411%_
                           (##fx+ _%deleted117434%_ '1)
                           _%value117409%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117407%_
                              (##fx+ (&raw-table-count _%tab117407%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117411%_
                           _%probe117430%_
                           _%key117408%_)
                          (vector-set!
                           _%table117411%_
                           (##fx+ _%probe117430%_ '1)
                           _%value117409%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117407%_
                              (##fx- (&raw-table-free _%tab117407%_) '1))
                             (&raw-table-count-set!
                              _%tab117407%_
                              (##fx+ (&raw-table-count _%tab117407%_) '1))))))
                    (if (eq? _%k117437%_ (macro-deleted-obj))
                        (_%loop117427%_
                         (let ((_%next-probe117444%_
                                (fx+ _%start117423%_
                                     _%i117432%_
                                     (fx* _%i117432%_ _%i117432%_))))
                           (##fxmodulo _%next-probe117444%_ _%size117417%_))
                         (##fx+ _%i117432%_ '1)
                         (let ((_%$e117447%_ _%deleted117434%_))
                           (if _%$e117447%_ _%$e117447%_ _%probe117430%_)))
                        (if (eq? _%key117408%_ _%k117437%_)
                            (let ()
                              (vector-set!
                               _%table117411%_
                               _%probe117430%_
                               _%key117408%_)
                              (vector-set!
                               _%table117411%_
                               (##fx+ _%probe117430%_ '1)
                               _%value117409%_))
                            (_%loop117427%_
                             (let ((_%next-probe117452%_
                                    (fx+ _%start117423%_
                                         _%i117432%_
                                         (fx* _%i117432%_ _%i117432%_))))
                               (##fxmodulo
                                _%next-probe117452%_
                                _%size117417%_))
                             (##fx+ _%i117432%_ '1)
                             _%deleted117434%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab117403%_ _%key117404%_ _%value117405%_)
        (if (##fx< (&raw-table-free _%tab117403%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117403%_))
                    '4))
            (__raw-table-rehash! _%tab117403%_)
            '#!void)
        (__symbolic-table-set! _%tab117403%_ _%key117404%_ _%value117405%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab117373%_ _%key117374%_ _%value117375%_)
        (let ((_%lock117378%_ (&raw-table-lock _%tab117373%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117383%_ ((_%spin117386%_ '0))
              (if (##fx= (##vector-cas! _%lock117378%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117378%_ '1 (current-thread))
                  (if (##fx< _%spin117386%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117383%_ (##fx+ _%spin117386%_ '1)))
                      (let ((_%owner117392%_ (##vector-ref _%lock117378%_ '1)))
                        (if (eq? _%owner117392%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117392%_)
                                (let () (##thread-yield!) (_%again117383%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117398%_
                 (symbolic-table-set!
                  _%tab117373%_
                  _%key117374%_
                  _%value117375%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117378%_ '1 '#f)
                (##vector-cas! _%lock117378%_ '0 '0 '1)))
            _%$r117398%_))))
    (define __symbolic-table-update!
      (lambda (_%tab117324%_
               _%key117325%_
               _%symbolic-table-update!117326%_
               _%default117327%_)
        (let ((_%table117329%_ (&raw-table-table _%tab117324%_))
              (_%seed117330%_ (&raw-table-seed _%tab117324%_)))
          (let* ((_%h117332%_
                  (fxxor (##symbol-hash _%key117325%_) _%seed117330%_))
                 (_%size117335%_ (vector-length _%table117329%_))
                 (_%entries117338%_ (##fxquotient _%size117335%_ '2))
                 (_%start117341%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117332%_ _%entries117338%_)
                   '1)))
            (let _%loop117345%_ ((_%probe117348%_ _%start117341%_)
                                 (_%i117350%_ '1)
                                 (_%deleted117352%_ '#f))
              (let ((_%k117355%_ (vector-ref _%table117329%_ _%probe117348%_)))
                (if (eq? _%k117355%_ (macro-unused-obj))
                    (if _%deleted117352%_
                        (begin
                          (vector-set!
                           _%table117329%_
                           _%deleted117352%_
                           _%key117325%_)
                          (vector-set!
                           _%table117329%_
                           (##fx+ _%deleted117352%_ '1)
                           (_%symbolic-table-update!117326%_
                            _%default117327%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117324%_
                              (##fx+ (&raw-table-count _%tab117324%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117329%_
                           _%probe117348%_
                           _%key117325%_)
                          (vector-set!
                           _%table117329%_
                           (##fx+ _%probe117348%_ '1)
                           (_%symbolic-table-update!117326%_
                            _%default117327%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117324%_
                              (##fx- (&raw-table-free _%tab117324%_) '1))
                             (&raw-table-count-set!
                              _%tab117324%_
                              (##fx+ (&raw-table-count _%tab117324%_) '1))))))
                    (if (eq? _%k117355%_ (macro-deleted-obj))
                        (_%loop117345%_
                         (let ((_%next-probe117362%_
                                (fx+ _%start117341%_
                                     _%i117350%_
                                     (fx* _%i117350%_ _%i117350%_))))
                           (##fxmodulo _%next-probe117362%_ _%size117335%_))
                         (##fx+ _%i117350%_ '1)
                         (let ((_%$e117365%_ _%deleted117352%_))
                           (if _%$e117365%_ _%$e117365%_ _%probe117348%_)))
                        (if (eq? _%key117325%_ _%k117355%_)
                            (let ()
                              (vector-set!
                               _%table117329%_
                               _%probe117348%_
                               _%key117325%_)
                              (vector-set!
                               _%table117329%_
                               (##fx+ _%probe117348%_ '1)
                               (_%symbolic-table-update!117326%_
                                (vector-ref
                                 _%table117329%_
                                 (##fx+ _%probe117348%_ '1)))))
                            (_%loop117345%_
                             (let ((_%next-probe117370%_
                                    (fx+ _%start117341%_
                                         _%i117350%_
                                         (fx* _%i117350%_ _%i117350%_))))
                               (##fxmodulo
                                _%next-probe117370%_
                                _%size117335%_))
                             (##fx+ _%i117350%_ '1)
                             _%deleted117352%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab117319%_
               _%key117320%_
               _%symbolic-table-update!117321%_
               _%default117322%_)
        (if (##fx< (&raw-table-free _%tab117319%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117319%_))
                    '4))
            (__raw-table-rehash! _%tab117319%_)
            '#!void)
        (__symbolic-table-update!
         _%tab117319%_
         _%key117320%_
         _%symbolic-table-update!117321%_
         _%default117322%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab117288%_
               _%key117289%_
               _%symbolic-table-update!117290%_
               _%default117291%_)
        (let ((_%lock117294%_ (&raw-table-lock _%tab117288%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117299%_ ((_%spin117302%_ '0))
              (if (##fx= (##vector-cas! _%lock117294%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117294%_ '1 (current-thread))
                  (if (##fx< _%spin117302%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117299%_ (##fx+ _%spin117302%_ '1)))
                      (let ((_%owner117308%_ (##vector-ref _%lock117294%_ '1)))
                        (if (eq? _%owner117308%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117308%_)
                                (let () (##thread-yield!) (_%again117299%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117314%_
                 (_%symbolic-table-update!117290%_
                  _%tab117288%_
                  _%key117289%_
                  _%symbolic-table-update!117290%_
                  _%default117291%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117294%_ '1 '#f)
                (##vector-cas! _%lock117294%_ '0 '0 '1)))
            _%$r117314%_))))
    (define symbolic-table-delete!
      (lambda (_%tab117245%_ _%key117246%_)
        (let ((_%table117248%_ (&raw-table-table _%tab117245%_))
              (_%seed117250%_ (&raw-table-seed _%tab117245%_)))
          (let* ((_%h117253%_
                  (fxxor (##symbol-hash _%key117246%_) _%seed117250%_))
                 (_%size117256%_ (vector-length _%table117248%_))
                 (_%entries117259%_ (##fxquotient _%size117256%_ '2))
                 (_%start117262%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117253%_ _%entries117259%_)
                   '1)))
            (let _%loop117266%_ ((_%probe117269%_ _%start117262%_)
                                 (_%i117271%_ '1))
              (let ((_%k117274%_ (vector-ref _%table117248%_ _%probe117269%_)))
                (if (eq? _%k117274%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117274%_ (macro-deleted-obj))
                        (_%loop117266%_
                         (let ((_%next-probe117279%_
                                (fx+ _%start117262%_
                                     _%i117271%_
                                     (fx* _%i117271%_ _%i117271%_))))
                           (##fxmodulo _%next-probe117279%_ _%size117256%_))
                         (##fx+ _%i117271%_ '1))
                        (if (eq? _%key117246%_ _%k117274%_)
                            (let ()
                              (vector-set!
                               _%table117248%_
                               _%probe117269%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117248%_
                               (##fx+ _%probe117269%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117245%_
                                  (##fx- (&raw-table-count _%tab117245%_)
                                         '1)))))
                            (_%loop117266%_
                             (let ((_%next-probe117285%_
                                    (fx+ _%start117262%_
                                         _%i117271%_
                                         (fx* _%i117271%_ _%i117271%_))))
                               (##fxmodulo
                                _%next-probe117285%_
                                _%size117256%_))
                             (##fx+ _%i117271%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab117215%_ _%key117217%_)
        (let ((_%lock117220%_ (&raw-table-lock _%tab117215%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117225%_ ((_%spin117228%_ '0))
              (if (##fx= (##vector-cas! _%lock117220%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117220%_ '1 (current-thread))
                  (if (##fx< _%spin117228%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117225%_ (##fx+ _%spin117228%_ '1)))
                      (let ((_%owner117234%_ (##vector-ref _%lock117220%_ '1)))
                        (if (eq? _%owner117234%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117234%_)
                                (let () (##thread-yield!) (_%again117225%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117240%_
                 (symbolic-table-delete! _%tab117215%_ _%key117217%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117220%_ '1 '#f)
                (##vector-cas! _%lock117220%_ '0 '0 '1)))
            _%$r117240%_))))
    (define make-string-table__%
      (lambda (_%size-hint117197%_ _%seed117198%_)
        (make-raw-table__1
         _%size-hint117197%_
         string-hash
         ##string=?
         _%seed117198%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint117204%_ '#f) (_%seed117206%_ '0))
          (make-string-table__% _%size-hint117204%_ _%seed117206%_))))
    (define make-string-table__1
      (lambda (_%size-hint117208%_)
        (let ((_%seed117210%_ '0))
          (make-string-table__% _%size-hint117208%_ _%seed117210%_))))
    (define make-string-table
      (lambda _g118892_
        (let ((_g118893_ (##length _g118892_)))
          (cond ((##fx= _g118893_ 0) (apply make-string-table__0 _g118892_))
                ((##fx= _g118893_ 1) (apply make-string-table__1 _g118892_))
                ((##fx= _g118893_ 2) (apply make-string-table__% _g118892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g118892_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint117177%_ _%seed117179%_)
        (make-raw-table/lock__%
         _%size-hint117177%_
         string-hash
         ##string=?
         _%seed117179%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint117185%_ '#f) (_%seed117187%_ '0))
          (make-string-table/lock__% _%size-hint117185%_ _%seed117187%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint117189%_)
        (let ((_%seed117191%_ '0))
          (make-string-table/lock__% _%size-hint117189%_ _%seed117191%_))))
    (define make-string-table/lock
      (lambda _g118894_
        (let ((_g118895_ (##length _g118894_)))
          (cond ((##fx= _g118895_ 0)
                 (apply make-string-table/lock__0 _g118894_))
                ((##fx= _g118895_ 1)
                 (apply make-string-table/lock__1 _g118894_))
                ((##fx= _g118895_ 2)
                 (apply make-string-table/lock__% _g118894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g118894_))))))
    (define string-table-ref
      (lambda (_%tab117130%_ _%key117131%_ _%default117132%_)
        (let ((_%table117134%_ (&raw-table-table _%tab117130%_))
              (_%seed117135%_ (&raw-table-seed _%tab117130%_)))
          (let* ((_%h117137%_
                  (fxxor (##string=?-hash _%key117131%_) _%seed117135%_))
                 (_%size117140%_ (vector-length _%table117134%_))
                 (_%entries117143%_ (##fxquotient _%size117140%_ '2))
                 (_%start117146%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117137%_ _%entries117143%_)
                   '1)))
            (let _%loop117150%_ ((_%probe117153%_ _%start117146%_)
                                 (_%i117155%_ '1)
                                 (_%deleted117157%_ '#f))
              (let ((_%k117160%_ (vector-ref _%table117134%_ _%probe117153%_)))
                (if (eq? _%k117160%_ (macro-unused-obj))
                    _%default117132%_
                    (if (eq? _%k117160%_ (macro-deleted-obj))
                        (_%loop117150%_
                         (let ((_%next-probe117165%_
                                (fx+ _%start117146%_
                                     _%i117155%_
                                     (fx* _%i117155%_ _%i117155%_))))
                           (##fxmodulo _%next-probe117165%_ _%size117140%_))
                         (##fx+ _%i117155%_ '1)
                         (let ((_%$e117168%_ _%deleted117157%_))
                           (if _%$e117168%_ _%$e117168%_ _%probe117153%_)))
                        (if (##string=? _%key117131%_ _%k117160%_)
                            (vector-ref
                             _%table117134%_
                             (##fx+ _%probe117153%_ '1))
                            (_%loop117150%_
                             (let ((_%next-probe117173%_
                                    (fx+ _%start117146%_
                                         _%i117155%_
                                         (fx* _%i117155%_ _%i117155%_))))
                               (##fxmodulo
                                _%next-probe117173%_
                                _%size117140%_))
                             (##fx+ _%i117155%_ '1)
                             _%deleted117157%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab117101%_ _%key117102%_ _%default117103%_)
        (let ((_%lock117105%_ (&raw-table-lock _%tab117101%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117110%_ ((_%spin117113%_ '0))
              (if (##fx= (##vector-cas! _%lock117105%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117105%_ '1 (current-thread))
                  (if (##fx< _%spin117113%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117110%_ (##fx+ _%spin117113%_ '1)))
                      (let ((_%owner117119%_ (##vector-ref _%lock117105%_ '1)))
                        (if (eq? _%owner117119%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117119%_)
                                (let () (##thread-yield!) (_%again117110%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117125%_
                 (string-table-ref
                  _%tab117101%_
                  _%key117102%_
                  _%default117103%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117105%_ '1 '#f)
                (##vector-cas! _%lock117105%_ '0 '0 '1)))
            _%$r117125%_))))
    (define __string-table-set!
      (lambda (_%tab117053%_ _%key117054%_ _%value117055%_)
        (let ((_%table117057%_ (&raw-table-table _%tab117053%_))
              (_%seed117058%_ (&raw-table-seed _%tab117053%_)))
          (let* ((_%h117060%_
                  (fxxor (##string=?-hash _%key117054%_) _%seed117058%_))
                 (_%size117063%_ (vector-length _%table117057%_))
                 (_%entries117066%_ (##fxquotient _%size117063%_ '2))
                 (_%start117069%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117060%_ _%entries117066%_)
                   '1)))
            (let _%loop117073%_ ((_%probe117076%_ _%start117069%_)
                                 (_%i117078%_ '1)
                                 (_%deleted117080%_ '#f))
              (let ((_%k117083%_ (vector-ref _%table117057%_ _%probe117076%_)))
                (if (eq? _%k117083%_ (macro-unused-obj))
                    (if _%deleted117080%_
                        (begin
                          (vector-set!
                           _%table117057%_
                           _%deleted117080%_
                           _%key117054%_)
                          (vector-set!
                           _%table117057%_
                           (##fx+ _%deleted117080%_ '1)
                           _%value117055%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117053%_
                              (##fx+ (&raw-table-count _%tab117053%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117057%_
                           _%probe117076%_
                           _%key117054%_)
                          (vector-set!
                           _%table117057%_
                           (##fx+ _%probe117076%_ '1)
                           _%value117055%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117053%_
                              (##fx- (&raw-table-free _%tab117053%_) '1))
                             (&raw-table-count-set!
                              _%tab117053%_
                              (##fx+ (&raw-table-count _%tab117053%_) '1))))))
                    (if (eq? _%k117083%_ (macro-deleted-obj))
                        (_%loop117073%_
                         (let ((_%next-probe117090%_
                                (fx+ _%start117069%_
                                     _%i117078%_
                                     (fx* _%i117078%_ _%i117078%_))))
                           (##fxmodulo _%next-probe117090%_ _%size117063%_))
                         (##fx+ _%i117078%_ '1)
                         (let ((_%$e117093%_ _%deleted117080%_))
                           (if _%$e117093%_ _%$e117093%_ _%probe117076%_)))
                        (if (##string=? _%key117054%_ _%k117083%_)
                            (let ()
                              (vector-set!
                               _%table117057%_
                               _%probe117076%_
                               _%key117054%_)
                              (vector-set!
                               _%table117057%_
                               (##fx+ _%probe117076%_ '1)
                               _%value117055%_))
                            (_%loop117073%_
                             (let ((_%next-probe117098%_
                                    (fx+ _%start117069%_
                                         _%i117078%_
                                         (fx* _%i117078%_ _%i117078%_))))
                               (##fxmodulo
                                _%next-probe117098%_
                                _%size117063%_))
                             (##fx+ _%i117078%_ '1)
                             _%deleted117080%_))))))))))
    (define string-table-set!
      (lambda (_%tab117049%_ _%key117050%_ _%value117051%_)
        (if (##fx< (&raw-table-free _%tab117049%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117049%_))
                    '4))
            (__raw-table-rehash! _%tab117049%_)
            '#!void)
        (__string-table-set! _%tab117049%_ _%key117050%_ _%value117051%_)))
    (define string-table-set!/lock
      (lambda (_%tab117019%_ _%key117020%_ _%value117021%_)
        (let ((_%lock117024%_ (&raw-table-lock _%tab117019%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117029%_ ((_%spin117032%_ '0))
              (if (##fx= (##vector-cas! _%lock117024%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117024%_ '1 (current-thread))
                  (if (##fx< _%spin117032%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117029%_ (##fx+ _%spin117032%_ '1)))
                      (let ((_%owner117038%_ (##vector-ref _%lock117024%_ '1)))
                        (if (eq? _%owner117038%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117038%_)
                                (let () (##thread-yield!) (_%again117029%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117044%_
                 (string-table-set!
                  _%tab117019%_
                  _%key117020%_
                  _%value117021%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117024%_ '1 '#f)
                (##vector-cas! _%lock117024%_ '0 '0 '1)))
            _%$r117044%_))))
    (define __string-table-update!
      (lambda (_%tab116970%_
               _%key116971%_
               _%string-table-update!116972%_
               _%default116973%_)
        (let ((_%table116975%_ (&raw-table-table _%tab116970%_))
              (_%seed116976%_ (&raw-table-seed _%tab116970%_)))
          (let* ((_%h116978%_
                  (fxxor (##string=?-hash _%key116971%_) _%seed116976%_))
                 (_%size116981%_ (vector-length _%table116975%_))
                 (_%entries116984%_ (##fxquotient _%size116981%_ '2))
                 (_%start116987%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116978%_ _%entries116984%_)
                   '1)))
            (let _%loop116991%_ ((_%probe116994%_ _%start116987%_)
                                 (_%i116996%_ '1)
                                 (_%deleted116998%_ '#f))
              (let ((_%k117001%_ (vector-ref _%table116975%_ _%probe116994%_)))
                (if (eq? _%k117001%_ (macro-unused-obj))
                    (if _%deleted116998%_
                        (begin
                          (vector-set!
                           _%table116975%_
                           _%deleted116998%_
                           _%key116971%_)
                          (vector-set!
                           _%table116975%_
                           (##fx+ _%deleted116998%_ '1)
                           (_%string-table-update!116972%_ _%default116973%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116970%_
                              (##fx+ (&raw-table-count _%tab116970%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116975%_
                           _%probe116994%_
                           _%key116971%_)
                          (vector-set!
                           _%table116975%_
                           (##fx+ _%probe116994%_ '1)
                           (_%string-table-update!116972%_ _%default116973%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116970%_
                              (##fx- (&raw-table-free _%tab116970%_) '1))
                             (&raw-table-count-set!
                              _%tab116970%_
                              (##fx+ (&raw-table-count _%tab116970%_) '1))))))
                    (if (eq? _%k117001%_ (macro-deleted-obj))
                        (_%loop116991%_
                         (let ((_%next-probe117008%_
                                (fx+ _%start116987%_
                                     _%i116996%_
                                     (fx* _%i116996%_ _%i116996%_))))
                           (##fxmodulo _%next-probe117008%_ _%size116981%_))
                         (##fx+ _%i116996%_ '1)
                         (let ((_%$e117011%_ _%deleted116998%_))
                           (if _%$e117011%_ _%$e117011%_ _%probe116994%_)))
                        (if (##string=? _%key116971%_ _%k117001%_)
                            (let ()
                              (vector-set!
                               _%table116975%_
                               _%probe116994%_
                               _%key116971%_)
                              (vector-set!
                               _%table116975%_
                               (##fx+ _%probe116994%_ '1)
                               (_%string-table-update!116972%_
                                (vector-ref
                                 _%table116975%_
                                 (##fx+ _%probe116994%_ '1)))))
                            (_%loop116991%_
                             (let ((_%next-probe117016%_
                                    (fx+ _%start116987%_
                                         _%i116996%_
                                         (fx* _%i116996%_ _%i116996%_))))
                               (##fxmodulo
                                _%next-probe117016%_
                                _%size116981%_))
                             (##fx+ _%i116996%_ '1)
                             _%deleted116998%_))))))))))
    (define string-table-update!
      (lambda (_%tab116965%_
               _%key116966%_
               _%string-table-update!116967%_
               _%default116968%_)
        (if (##fx< (&raw-table-free _%tab116965%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116965%_))
                    '4))
            (__raw-table-rehash! _%tab116965%_)
            '#!void)
        (__string-table-update!
         _%tab116965%_
         _%key116966%_
         _%string-table-update!116967%_
         _%default116968%_)))
    (define string-table-update!/lock
      (lambda (_%tab116934%_
               _%key116935%_
               _%string-table-update!116936%_
               _%default116937%_)
        (let ((_%lock116940%_ (&raw-table-lock _%tab116934%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116945%_ ((_%spin116948%_ '0))
              (if (##fx= (##vector-cas! _%lock116940%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116940%_ '1 (current-thread))
                  (if (##fx< _%spin116948%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116945%_ (##fx+ _%spin116948%_ '1)))
                      (let ((_%owner116954%_ (##vector-ref _%lock116940%_ '1)))
                        (if (eq? _%owner116954%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116954%_)
                                (let () (##thread-yield!) (_%again116945%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116960%_
                 (_%string-table-update!116936%_
                  _%tab116934%_
                  _%key116935%_
                  _%string-table-update!116936%_
                  _%default116937%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116940%_ '1 '#f)
                (##vector-cas! _%lock116940%_ '0 '0 '1)))
            _%$r116960%_))))
    (define string-table-delete!
      (lambda (_%tab116891%_ _%key116892%_)
        (let ((_%table116894%_ (&raw-table-table _%tab116891%_))
              (_%seed116896%_ (&raw-table-seed _%tab116891%_)))
          (let* ((_%h116899%_
                  (fxxor (##string=?-hash _%key116892%_) _%seed116896%_))
                 (_%size116902%_ (vector-length _%table116894%_))
                 (_%entries116905%_ (##fxquotient _%size116902%_ '2))
                 (_%start116908%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116899%_ _%entries116905%_)
                   '1)))
            (let _%loop116912%_ ((_%probe116915%_ _%start116908%_)
                                 (_%i116917%_ '1))
              (let ((_%k116920%_ (vector-ref _%table116894%_ _%probe116915%_)))
                (if (eq? _%k116920%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116920%_ (macro-deleted-obj))
                        (_%loop116912%_
                         (let ((_%next-probe116925%_
                                (fx+ _%start116908%_
                                     _%i116917%_
                                     (fx* _%i116917%_ _%i116917%_))))
                           (##fxmodulo _%next-probe116925%_ _%size116902%_))
                         (##fx+ _%i116917%_ '1))
                        (if (##string=? _%key116892%_ _%k116920%_)
                            (let ()
                              (vector-set!
                               _%table116894%_
                               _%probe116915%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116894%_
                               (##fx+ _%probe116915%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116891%_
                                  (##fx- (&raw-table-count _%tab116891%_)
                                         '1)))))
                            (_%loop116912%_
                             (let ((_%next-probe116931%_
                                    (fx+ _%start116908%_
                                         _%i116917%_
                                         (fx* _%i116917%_ _%i116917%_))))
                               (##fxmodulo
                                _%next-probe116931%_
                                _%size116902%_))
                             (##fx+ _%i116917%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab116861%_ _%key116863%_)
        (let ((_%lock116866%_ (&raw-table-lock _%tab116861%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116871%_ ((_%spin116874%_ '0))
              (if (##fx= (##vector-cas! _%lock116866%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116866%_ '1 (current-thread))
                  (if (##fx< _%spin116874%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116871%_ (##fx+ _%spin116874%_ '1)))
                      (let ((_%owner116880%_ (##vector-ref _%lock116866%_ '1)))
                        (if (eq? _%owner116880%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116880%_)
                                (let () (##thread-yield!) (_%again116871%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116886%_
                 (string-table-delete! _%tab116861%_ _%key116863%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116866%_ '1 '#f)
                (##vector-cas! _%lock116866%_ '0 '0 '1)))
            _%$r116886%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint116843%_ _%seed116844%_)
        (make-raw-table__1
         _%size-hint116843%_
         immediate-hash
         eq?
         _%seed116844%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint116850%_ '#f) (_%seed116852%_ '0))
          (make-immediate-table__% _%size-hint116850%_ _%seed116852%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint116854%_)
        (let ((_%seed116856%_ '0))
          (make-immediate-table__% _%size-hint116854%_ _%seed116856%_))))
    (define make-immediate-table
      (lambda _g118896_
        (let ((_g118897_ (##length _g118896_)))
          (cond ((##fx= _g118897_ 0) (apply make-immediate-table__0 _g118896_))
                ((##fx= _g118897_ 1) (apply make-immediate-table__1 _g118896_))
                ((##fx= _g118897_ 2) (apply make-immediate-table__% _g118896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g118896_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint116823%_ _%seed116825%_)
        (make-raw-table/lock__%
         _%size-hint116823%_
         immediate-hash
         eq?
         _%seed116825%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint116831%_ '#f) (_%seed116833%_ '0))
          (make-immediate-table/lock__% _%size-hint116831%_ _%seed116833%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint116835%_)
        (let ((_%seed116837%_ '0))
          (make-immediate-table/lock__% _%size-hint116835%_ _%seed116837%_))))
    (define make-immediate-table/lock
      (lambda _g118898_
        (let ((_g118899_ (##length _g118898_)))
          (cond ((##fx= _g118899_ 0)
                 (apply make-immediate-table/lock__0 _g118898_))
                ((##fx= _g118899_ 1)
                 (apply make-immediate-table/lock__1 _g118898_))
                ((##fx= _g118899_ 2)
                 (apply make-immediate-table/lock__% _g118898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g118898_))))))
    (define immediate-table-ref
      (lambda (_%tab116776%_ _%key116777%_ _%default116778%_)
        (let ((_%table116780%_ (&raw-table-table _%tab116776%_))
              (_%seed116781%_ (&raw-table-seed _%tab116776%_)))
          (let* ((_%h116783%_
                  (fxxor (immediate-hash _%key116777%_) _%seed116781%_))
                 (_%size116786%_ (vector-length _%table116780%_))
                 (_%entries116789%_ (##fxquotient _%size116786%_ '2))
                 (_%start116792%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116783%_ _%entries116789%_)
                   '1)))
            (let _%loop116796%_ ((_%probe116799%_ _%start116792%_)
                                 (_%i116801%_ '1)
                                 (_%deleted116803%_ '#f))
              (let ((_%k116806%_ (vector-ref _%table116780%_ _%probe116799%_)))
                (if (eq? _%k116806%_ (macro-unused-obj))
                    _%default116778%_
                    (if (eq? _%k116806%_ (macro-deleted-obj))
                        (_%loop116796%_
                         (let ((_%next-probe116811%_
                                (fx+ _%start116792%_
                                     _%i116801%_
                                     (fx* _%i116801%_ _%i116801%_))))
                           (##fxmodulo _%next-probe116811%_ _%size116786%_))
                         (##fx+ _%i116801%_ '1)
                         (let ((_%$e116814%_ _%deleted116803%_))
                           (if _%$e116814%_ _%$e116814%_ _%probe116799%_)))
                        (if (eq? _%key116777%_ _%k116806%_)
                            (vector-ref
                             _%table116780%_
                             (##fx+ _%probe116799%_ '1))
                            (_%loop116796%_
                             (let ((_%next-probe116819%_
                                    (fx+ _%start116792%_
                                         _%i116801%_
                                         (fx* _%i116801%_ _%i116801%_))))
                               (##fxmodulo
                                _%next-probe116819%_
                                _%size116786%_))
                             (##fx+ _%i116801%_ '1)
                             _%deleted116803%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab116747%_ _%key116748%_ _%default116749%_)
        (let ((_%lock116751%_ (&raw-table-lock _%tab116747%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116756%_ ((_%spin116759%_ '0))
              (if (##fx= (##vector-cas! _%lock116751%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116751%_ '1 (current-thread))
                  (if (##fx< _%spin116759%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116756%_ (##fx+ _%spin116759%_ '1)))
                      (let ((_%owner116765%_ (##vector-ref _%lock116751%_ '1)))
                        (if (eq? _%owner116765%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116765%_)
                                (let () (##thread-yield!) (_%again116756%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116771%_
                 (immediate-table-ref
                  _%tab116747%_
                  _%key116748%_
                  _%default116749%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116751%_ '1 '#f)
                (##vector-cas! _%lock116751%_ '0 '0 '1)))
            _%$r116771%_))))
    (define __immediate-table-set!
      (lambda (_%tab116699%_ _%key116700%_ _%value116701%_)
        (let ((_%table116703%_ (&raw-table-table _%tab116699%_))
              (_%seed116704%_ (&raw-table-seed _%tab116699%_)))
          (let* ((_%h116706%_
                  (fxxor (immediate-hash _%key116700%_) _%seed116704%_))
                 (_%size116709%_ (vector-length _%table116703%_))
                 (_%entries116712%_ (##fxquotient _%size116709%_ '2))
                 (_%start116715%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116706%_ _%entries116712%_)
                   '1)))
            (let _%loop116719%_ ((_%probe116722%_ _%start116715%_)
                                 (_%i116724%_ '1)
                                 (_%deleted116726%_ '#f))
              (let ((_%k116729%_ (vector-ref _%table116703%_ _%probe116722%_)))
                (if (eq? _%k116729%_ (macro-unused-obj))
                    (if _%deleted116726%_
                        (begin
                          (vector-set!
                           _%table116703%_
                           _%deleted116726%_
                           _%key116700%_)
                          (vector-set!
                           _%table116703%_
                           (##fx+ _%deleted116726%_ '1)
                           _%value116701%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116699%_
                              (##fx+ (&raw-table-count _%tab116699%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116703%_
                           _%probe116722%_
                           _%key116700%_)
                          (vector-set!
                           _%table116703%_
                           (##fx+ _%probe116722%_ '1)
                           _%value116701%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116699%_
                              (##fx- (&raw-table-free _%tab116699%_) '1))
                             (&raw-table-count-set!
                              _%tab116699%_
                              (##fx+ (&raw-table-count _%tab116699%_) '1))))))
                    (if (eq? _%k116729%_ (macro-deleted-obj))
                        (_%loop116719%_
                         (let ((_%next-probe116736%_
                                (fx+ _%start116715%_
                                     _%i116724%_
                                     (fx* _%i116724%_ _%i116724%_))))
                           (##fxmodulo _%next-probe116736%_ _%size116709%_))
                         (##fx+ _%i116724%_ '1)
                         (let ((_%$e116739%_ _%deleted116726%_))
                           (if _%$e116739%_ _%$e116739%_ _%probe116722%_)))
                        (if (eq? _%key116700%_ _%k116729%_)
                            (let ()
                              (vector-set!
                               _%table116703%_
                               _%probe116722%_
                               _%key116700%_)
                              (vector-set!
                               _%table116703%_
                               (##fx+ _%probe116722%_ '1)
                               _%value116701%_))
                            (_%loop116719%_
                             (let ((_%next-probe116744%_
                                    (fx+ _%start116715%_
                                         _%i116724%_
                                         (fx* _%i116724%_ _%i116724%_))))
                               (##fxmodulo
                                _%next-probe116744%_
                                _%size116709%_))
                             (##fx+ _%i116724%_ '1)
                             _%deleted116726%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab116695%_ _%key116696%_ _%value116697%_)
        (if (##fx< (&raw-table-free _%tab116695%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116695%_))
                    '4))
            (__raw-table-rehash! _%tab116695%_)
            '#!void)
        (__immediate-table-set! _%tab116695%_ _%key116696%_ _%value116697%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab116665%_ _%key116666%_ _%value116667%_)
        (let ((_%lock116670%_ (&raw-table-lock _%tab116665%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116675%_ ((_%spin116678%_ '0))
              (if (##fx= (##vector-cas! _%lock116670%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116670%_ '1 (current-thread))
                  (if (##fx< _%spin116678%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116675%_ (##fx+ _%spin116678%_ '1)))
                      (let ((_%owner116684%_ (##vector-ref _%lock116670%_ '1)))
                        (if (eq? _%owner116684%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116684%_)
                                (let () (##thread-yield!) (_%again116675%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116690%_
                 (immediate-table-set!
                  _%tab116665%_
                  _%key116666%_
                  _%value116667%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116670%_ '1 '#f)
                (##vector-cas! _%lock116670%_ '0 '0 '1)))
            _%$r116690%_))))
    (define __immediate-table-update!
      (lambda (_%tab116616%_
               _%key116617%_
               _%immediate-table-update!116618%_
               _%default116619%_)
        (let ((_%table116621%_ (&raw-table-table _%tab116616%_))
              (_%seed116622%_ (&raw-table-seed _%tab116616%_)))
          (let* ((_%h116624%_
                  (fxxor (immediate-hash _%key116617%_) _%seed116622%_))
                 (_%size116627%_ (vector-length _%table116621%_))
                 (_%entries116630%_ (##fxquotient _%size116627%_ '2))
                 (_%start116633%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116624%_ _%entries116630%_)
                   '1)))
            (let _%loop116637%_ ((_%probe116640%_ _%start116633%_)
                                 (_%i116642%_ '1)
                                 (_%deleted116644%_ '#f))
              (let ((_%k116647%_ (vector-ref _%table116621%_ _%probe116640%_)))
                (if (eq? _%k116647%_ (macro-unused-obj))
                    (if _%deleted116644%_
                        (begin
                          (vector-set!
                           _%table116621%_
                           _%deleted116644%_
                           _%key116617%_)
                          (vector-set!
                           _%table116621%_
                           (##fx+ _%deleted116644%_ '1)
                           (_%immediate-table-update!116618%_
                            _%default116619%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116616%_
                              (##fx+ (&raw-table-count _%tab116616%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116621%_
                           _%probe116640%_
                           _%key116617%_)
                          (vector-set!
                           _%table116621%_
                           (##fx+ _%probe116640%_ '1)
                           (_%immediate-table-update!116618%_
                            _%default116619%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116616%_
                              (##fx- (&raw-table-free _%tab116616%_) '1))
                             (&raw-table-count-set!
                              _%tab116616%_
                              (##fx+ (&raw-table-count _%tab116616%_) '1))))))
                    (if (eq? _%k116647%_ (macro-deleted-obj))
                        (_%loop116637%_
                         (let ((_%next-probe116654%_
                                (fx+ _%start116633%_
                                     _%i116642%_
                                     (fx* _%i116642%_ _%i116642%_))))
                           (##fxmodulo _%next-probe116654%_ _%size116627%_))
                         (##fx+ _%i116642%_ '1)
                         (let ((_%$e116657%_ _%deleted116644%_))
                           (if _%$e116657%_ _%$e116657%_ _%probe116640%_)))
                        (if (eq? _%key116617%_ _%k116647%_)
                            (let ()
                              (vector-set!
                               _%table116621%_
                               _%probe116640%_
                               _%key116617%_)
                              (vector-set!
                               _%table116621%_
                               (##fx+ _%probe116640%_ '1)
                               (_%immediate-table-update!116618%_
                                (vector-ref
                                 _%table116621%_
                                 (##fx+ _%probe116640%_ '1)))))
                            (_%loop116637%_
                             (let ((_%next-probe116662%_
                                    (fx+ _%start116633%_
                                         _%i116642%_
                                         (fx* _%i116642%_ _%i116642%_))))
                               (##fxmodulo
                                _%next-probe116662%_
                                _%size116627%_))
                             (##fx+ _%i116642%_ '1)
                             _%deleted116644%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab116611%_
               _%key116612%_
               _%immediate-table-update!116613%_
               _%default116614%_)
        (if (##fx< (&raw-table-free _%tab116611%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116611%_))
                    '4))
            (__raw-table-rehash! _%tab116611%_)
            '#!void)
        (__immediate-table-update!
         _%tab116611%_
         _%key116612%_
         _%immediate-table-update!116613%_
         _%default116614%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab116580%_
               _%key116581%_
               _%immediate-table-update!116582%_
               _%default116583%_)
        (let ((_%lock116586%_ (&raw-table-lock _%tab116580%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116591%_ ((_%spin116594%_ '0))
              (if (##fx= (##vector-cas! _%lock116586%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116586%_ '1 (current-thread))
                  (if (##fx< _%spin116594%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116591%_ (##fx+ _%spin116594%_ '1)))
                      (let ((_%owner116600%_ (##vector-ref _%lock116586%_ '1)))
                        (if (eq? _%owner116600%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116600%_)
                                (let () (##thread-yield!) (_%again116591%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116606%_
                 (_%immediate-table-update!116582%_
                  _%tab116580%_
                  _%key116581%_
                  _%immediate-table-update!116582%_
                  _%default116583%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116586%_ '1 '#f)
                (##vector-cas! _%lock116586%_ '0 '0 '1)))
            _%$r116606%_))))
    (define immediate-table-delete!
      (lambda (_%tab116537%_ _%key116538%_)
        (let ((_%table116540%_ (&raw-table-table _%tab116537%_))
              (_%seed116542%_ (&raw-table-seed _%tab116537%_)))
          (let* ((_%h116545%_
                  (fxxor (immediate-hash _%key116538%_) _%seed116542%_))
                 (_%size116548%_ (vector-length _%table116540%_))
                 (_%entries116551%_ (##fxquotient _%size116548%_ '2))
                 (_%start116554%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116545%_ _%entries116551%_)
                   '1)))
            (let _%loop116558%_ ((_%probe116561%_ _%start116554%_)
                                 (_%i116563%_ '1))
              (let ((_%k116566%_ (vector-ref _%table116540%_ _%probe116561%_)))
                (if (eq? _%k116566%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116566%_ (macro-deleted-obj))
                        (_%loop116558%_
                         (let ((_%next-probe116571%_
                                (fx+ _%start116554%_
                                     _%i116563%_
                                     (fx* _%i116563%_ _%i116563%_))))
                           (##fxmodulo _%next-probe116571%_ _%size116548%_))
                         (##fx+ _%i116563%_ '1))
                        (if (eq? _%key116538%_ _%k116566%_)
                            (let ()
                              (vector-set!
                               _%table116540%_
                               _%probe116561%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116540%_
                               (##fx+ _%probe116561%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116537%_
                                  (##fx- (&raw-table-count _%tab116537%_)
                                         '1)))))
                            (_%loop116558%_
                             (let ((_%next-probe116577%_
                                    (fx+ _%start116554%_
                                         _%i116563%_
                                         (fx* _%i116563%_ _%i116563%_))))
                               (##fxmodulo
                                _%next-probe116577%_
                                _%size116548%_))
                             (##fx+ _%i116563%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab116507%_ _%key116509%_)
        (let ((_%lock116512%_ (&raw-table-lock _%tab116507%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116517%_ ((_%spin116520%_ '0))
              (if (##fx= (##vector-cas! _%lock116512%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116512%_ '1 (current-thread))
                  (if (##fx< _%spin116520%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116517%_ (##fx+ _%spin116520%_ '1)))
                      (let ((_%owner116526%_ (##vector-ref _%lock116512%_ '1)))
                        (if (eq? _%owner116526%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116526%_)
                                (let () (##thread-yield!) (_%again116517%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116532%_
                 (immediate-table-delete! _%tab116507%_ _%key116509%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock116512%_ '1 '#f)
                (##vector-cas! _%lock116512%_ '0 '0 '1)))
            _%$r116532%_))))
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
      (lambda (_%tab116505%_)
        (##unchecked-structure-ref
         _%tab116505%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab116503%_)
        (##unchecked-structure-ref
         _%tab116503%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab116501%_)
        (##unchecked-structure-ref
         _%tab116501%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab116498%_ _%val116499%_)
        (##unchecked-structure-set!
         _%tab116498%_
         _%val116499%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab116495%_ _%val116496%_)
        (##unchecked-structure-set!
         _%tab116495%_
         _%val116496%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab116492%_ _%val116493%_)
        (##unchecked-structure-set!
         _%tab116492%_
         _%val116493%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint116456%_
               _%klass116457%_
               _%flags116458%_
               _%lock116459%_)
        (let ((_%gcht116461%_
               (__gc-table-new
                (if (fixnum? _%size-hint116456%_) _%size-hint116456%_ '16)
                _%flags116458%_)))
          (##structure _%klass116457%_ _%gcht116461%_ '#f _%lock116459%_))))
    (define make-gc-table__0
      (lambda (_%size-hint116466%_)
        (let* ((_%klass116468%_ __gc-table::t)
               (_%flags116470%_ '0)
               (_%lock116472%_ '#f))
          (make-gc-table__%
           _%size-hint116466%_
           _%klass116468%_
           _%flags116470%_
           _%lock116472%_))))
    (define make-gc-table__1
      (lambda (_%size-hint116474%_ _%klass116475%_)
        (let* ((_%flags116477%_ '0) (_%lock116479%_ '#f))
          (make-gc-table__%
           _%size-hint116474%_
           _%klass116475%_
           _%flags116477%_
           _%lock116479%_))))
    (define make-gc-table__2
      (lambda (_%size-hint116481%_ _%klass116482%_ _%flags116483%_)
        (let ((_%lock116485%_ '#f))
          (make-gc-table__%
           _%size-hint116481%_
           _%klass116482%_
           _%flags116483%_
           _%lock116485%_))))
    (define make-gc-table
      (lambda _g118900_
        (let ((_g118901_ (##length _g118900_)))
          (cond ((##fx= _g118901_ 1) (apply make-gc-table__0 _g118900_))
                ((##fx= _g118901_ 2) (apply make-gc-table__1 _g118900_))
                ((##fx= _g118901_ 3) (apply make-gc-table__2 _g118900_))
                ((##fx= _g118901_ 4) (apply make-gc-table__% _g118900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g118900_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint116433%_ _%klass116434%_ _%flags116435%_)
        (make-gc-table__%
         _%size-hint116433%_
         _%klass116434%_
         _%flags116435%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint116440%_)
        (let* ((_%klass116442%_ __gc-table::t) (_%flags116444%_ '0))
          (make-gc-table/lock__%
           _%size-hint116440%_
           _%klass116442%_
           _%flags116444%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint116446%_ _%klass116447%_)
        (let ((_%flags116449%_ '0))
          (make-gc-table/lock__%
           _%size-hint116446%_
           _%klass116447%_
           _%flags116449%_))))
    (define make-gc-table/lock
      (lambda _g118902_
        (let ((_g118903_ (##length _g118902_)))
          (cond ((##fx= _g118903_ 1) (apply make-gc-table/lock__0 _g118902_))
                ((##fx= _g118903_ 2) (apply make-gc-table/lock__1 _g118902_))
                ((##fx= _g118903_ 3) (apply make-gc-table/lock__% _g118902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g118902_))))))
    (define __gc-table-immediate
      (lambda (_%tab116424%_)
        (let ((_%$e116426%_ (&gc-table-immediate _%tab116424%_)))
          (if _%$e116426%_
              _%$e116426%_
              (let ((_%immediate116430%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab116424%_ _%immediate116430%_)
                _%immediate116430%_)))))
    (define __gc-table-new
      (lambda (_%size116414%_ _%flags116415%_)
        (let* ((_%flags116417%_
                (##fxand _%flags116415%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags116419%_
                (fxior _%flags116417%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht116421%_
                (##gc-hash-table-allocate
                 _%size116414%_
                 _%flags116419%_
                 __gc-table-loads)))
          _%gcht116421%_)))
    (define __gc-table-e
      (lambda (_%tab116409%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht116412%_ (&gc-table-gcht _%tab116409%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht116412%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht116412%_
              (begin
                (__gc-table-rehash! _%tab116409%_)
                (&gc-table-gcht _%tab116409%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab116400%_)
        (let* ((_%old-table116402%_ (&gc-table-gcht _%tab116400%_))
               (_%new-table116404%_
                (##gc-hash-table-resize! _%old-table116402%_ __gc-table-loads))
               (_%gcht116406%_
                (##gc-hash-table-rehash!
                 _%old-table116402%_
                 _%new-table116404%_)))
          (&gc-table-gcht-set! _%tab116400%_ _%gcht116406%_))))
    (define gc-table-ref
      (lambda (_%tab116384%_ _%key116385%_ _%default116386%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116385%_)
            (let* ((_%gcht116390%_ (__gc-table-e _%tab116384%_))
                   (_%value116392%_
                    (##gc-hash-table-ref _%gcht116390%_ _%key116385%_)))
              (if (eq? _%value116392%_ (macro-unused-obj))
                  _%default116386%_
                  _%value116392%_))
            (let ((_%$e116394%_ (&gc-table-immediate _%tab116384%_)))
              (if _%$e116394%_
                  ((lambda (_%immediate116397%_)
                     (immediate-table-ref
                      _%immediate116397%_
                      _%key116385%_
                      _%default116386%_))
                   _%$e116394%_)
                  _%default116386%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab116358%_ _%key116359%_ _%default116360%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116364%_ ((_%spin116367%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116358%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116358%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116367%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116364%_ (##fx+ _%spin116367%_ '1)))
                    (let ((_%owner116373%_
                           (##vector-ref (&gc-table-lock _%tab116358%_) '1)))
                      (if (eq? _%owner116373%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116373%_)
                              (let () (##thread-yield!) (_%again116364%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116379%_
               (gc-table-ref _%tab116358%_ _%key116359%_ _%default116360%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116358%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116358%_) '0 '0 '1)))
          _%$r116379%_)))
    (define gc-table-set!
      (lambda (_%tab116351%_ _%key116352%_ _%value116353%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116352%_)
            (let ((_%gcht116356%_ (__gc-table-e _%tab116351%_)))
              (if (##gc-hash-table-set!
                   _%gcht116356%_
                   _%key116352%_
                   _%value116353%_)
                  (begin
                    (__gc-table-rehash! _%tab116351%_)
                    (gc-table-set!
                     _%tab116351%_
                     _%key116352%_
                     _%value116353%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab116351%_)
             _%key116352%_
             _%value116353%_))))
    (define gc-table-set/lock!
      (lambda (_%tab116325%_ _%key116326%_ _%value116327%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116331%_ ((_%spin116334%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116325%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116325%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116334%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116331%_ (##fx+ _%spin116334%_ '1)))
                    (let ((_%owner116340%_
                           (##vector-ref (&gc-table-lock _%tab116325%_) '1)))
                      (if (eq? _%owner116340%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116340%_)
                              (let () (##thread-yield!) (_%again116331%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116346%_
               (gc-table-set! _%tab116325%_ _%key116326%_ _%value116327%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116325%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116325%_) '0 '0 '1)))
          _%$r116346%_)))
    (define gc-table-update!
      (lambda (_%tab116318%_ _%key116319%_ _%update116320%_ _%default116321%_)
        (if (##mem-allocated? _%key116319%_)
            (let ((_%value116323%_
                   (gc-table-ref
                    _%tab116318%_
                    _%key116319%_
                    _%default116321%_)))
              (gc-table-set!
               _%tab116318%_
               _%key116319%_
               (_%update116320%_ _%value116323%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab116318%_)
             _%key116319%_
             _%update116320%_
             _%default116321%_))))
    (define gc-table-update!/lock
      (lambda (_%tab116291%_ _%key116292%_ _%update116293%_ _%default116294%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116298%_ ((_%spin116301%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116291%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116291%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116301%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116298%_ (##fx+ _%spin116301%_ '1)))
                    (let ((_%owner116307%_
                           (##vector-ref (&gc-table-lock _%tab116291%_) '1)))
                      (if (eq? _%owner116307%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116307%_)
                              (let () (##thread-yield!) (_%again116298%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116313%_
               (gc-table-update!
                _%tab116291%_
                _%key116292%_
                _%update116293%_
                _%default116294%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116291%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116291%_) '0 '0 '1)))
          _%$r116313%_)))
    (define gc-table-delete!
      (lambda (_%tab116279%_ _%key116280%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116280%_)
            (let ((_%gcht116284%_ (__gc-table-e _%tab116279%_)))
              (if (##gc-hash-table-set!
                   _%gcht116284%_
                   _%key116280%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab116279%_)
                    (gc-table-delete! _%tab116279%_ _%key116280%_))
                  '#!void))
            (let ((_%$e116286%_ (&gc-table-immediate _%tab116279%_)))
              (if _%$e116286%_
                  ((lambda (_%immediate116289%_)
                     (immediate-table-delete!
                      _%immediate116289%_
                      _%key116280%_))
                   _%$e116286%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab116254%_ _%key116255%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116259%_ ((_%spin116262%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116254%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116254%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116262%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116259%_ (##fx+ _%spin116262%_ '1)))
                    (let ((_%owner116268%_
                           (##vector-ref (&gc-table-lock _%tab116254%_) '1)))
                      (if (eq? _%owner116268%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116268%_)
                              (let () (##thread-yield!) (_%again116259%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116274%_ (gc-table-delete! _%tab116254%_ _%key116255%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116254%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116254%_) '0 '0 '1)))
          _%$r116274%_)))
    (define gc-table-for-each
      (lambda (_%tab116243%_ _%proc116244%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht116247%_ (__gc-table-e _%tab116243%_)))
            (##gc-hash-table-for-each _%proc116244%_ _%gcht116247%_))
          (let ((_%$e116249%_ (&gc-table-immediate _%tab116243%_)))
            (if _%$e116249%_
                ((lambda (_%immediate116252%_)
                   (raw-table-for-each _%immediate116252%_ _%proc116244%_))
                 _%$e116249%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab116218%_ _%proc116219%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116223%_ ((_%spin116226%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116218%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116218%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116226%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116223%_ (##fx+ _%spin116226%_ '1)))
                    (let ((_%owner116232%_
                           (##vector-ref (&gc-table-lock _%tab116218%_) '1)))
                      (if (eq? _%owner116232%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116232%_)
                              (let () (##thread-yield!) (_%again116223%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116238%_ (gc-table-for-each _%tab116218%_ _%proc116219%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116218%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116218%_) '0 '0 '1)))
          _%$r116238%_)))
    (define gc-table-copy
      (lambda (_%tab116206%_)
        (let* ((_%gcht116208%_ (__gc-table-e _%tab116206%_))
               (_%new-table116210%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht116208%_)
                 (macro-gc-hash-table-flags _%gcht116208%_)))
               (_%result116212%_
                (##structure
                 (##structure-type _%tab116206%_)
                 _%new-table116210%_
                 '#f)))
          (gc-table-for-each
           _%tab116206%_
           (lambda (_%k116215%_ _%v116216%_)
             (gc-table-set! _%result116212%_ _%k116215%_ _%v116216%_)))
          _%result116212%_)))
    (define gc-table-copy/lock
      (lambda (_%tab116182%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116186%_ ((_%spin116189%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116182%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116182%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116189%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116186%_ (##fx+ _%spin116189%_ '1)))
                    (let ((_%owner116195%_
                           (##vector-ref (&gc-table-lock _%tab116182%_) '1)))
                      (if (eq? _%owner116195%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116195%_)
                              (let () (##thread-yield!) (_%again116186%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116201%_ (gc-table-copy _%tab116182%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116182%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116182%_) '0 '0 '1)))
          _%$r116201%_)))
    (define gc-table-clear!
      (lambda (_%tab116175%_)
        (let* ((_%gcht116177%_ (__gc-table-e _%tab116175%_))
               (_%new-table116179%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht116177%_))))
          (&gc-table-gcht-set! _%tab116175%_ _%new-table116179%_)
          (&gc-table-immediate-set! _%tab116175%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab116151%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116155%_ ((_%spin116158%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116151%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116151%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116158%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116155%_ (##fx+ _%spin116158%_ '1)))
                    (let ((_%owner116164%_
                           (##vector-ref (&gc-table-lock _%tab116151%_) '1)))
                      (if (eq? _%owner116164%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116164%_)
                              (let () (##thread-yield!) (_%again116155%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116170%_ (gc-table-clear! _%tab116151%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116151%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116151%_) '0 '0 '1)))
          _%$r116170%_)))
    (define gc-table-length
      (lambda (_%tab116143%_)
        (let ((_%gcht116145%_ (__gc-table-e _%tab116143%_)))
          (fx+ (macro-gc-hash-table-count _%gcht116145%_)
               (let ((_%$e116147%_ (&gc-table-immediate _%tab116143%_)))
                 (if _%$e116147%_ (&raw-table-count _%$e116147%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab116119%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116123%_ ((_%spin116126%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116119%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116119%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116126%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116123%_ (##fx+ _%spin116126%_ '1)))
                    (let ((_%owner116132%_
                           (##vector-ref (&gc-table-lock _%tab116119%_) '1)))
                      (if (eq? _%owner116132%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116132%_)
                              (let () (##thread-yield!) (_%again116123%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116138%_ (gc-table-length _%tab116119%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116119%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116119%_) '0 '0 '1)))
          _%$r116138%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj116087%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116092%_ ((_%spin116095%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin116095%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116092%_ (##fx+ _%spin116095%_ '1)))
                      (let ((_%owner116101%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner116101%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116101%_)
                                (let () (##thread-yield!) (_%again116092%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116114%_
                 (let ((_%val116107%_
                        (gc-table-ref __object-eq-hash _%obj116087%_ '#f)))
                   (if _%val116107%_
                       _%val116107%_
                       (let ((_%h116109%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e116111%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e116111%_ _%$e116111%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj116087%_
                          _%h116109%_)
                         _%h116109%_)))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! __object-eq-hash-lock '1 '#f)
                (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
            _%$r116114%_))))))
