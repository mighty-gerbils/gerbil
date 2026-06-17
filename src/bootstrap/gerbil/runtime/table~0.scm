(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1781697555)
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
      (lambda (_%obj121098%_)
        (if (##structure? _%obj121098%_)
            (##structure-instance-of? _%obj121098%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab121096%_)
        (##unchecked-structure-ref
         _%tab121096%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab121094%_)
        (##unchecked-structure-ref
         _%tab121094%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab121092%_)
        (##unchecked-structure-ref
         _%tab121092%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab121090%_)
        (##unchecked-structure-ref
         _%tab121090%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab121088%_)
        (##unchecked-structure-ref
         _%tab121088%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab121086%_)
        (##unchecked-structure-ref
         _%tab121086%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab121084%_)
        (##unchecked-structure-ref
         _%tab121084%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab121081%_ _%val121082%_)
        (##unchecked-structure-set!
         _%tab121081%_
         _%val121082%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab121078%_ _%val121079%_)
        (##unchecked-structure-set!
         _%tab121078%_
         _%val121079%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab121075%_ _%val121076%_)
        (##unchecked-structure-set!
         _%tab121075%_
         _%val121076%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab121072%_ _%val121073%_)
        (##unchecked-structure-set!
         _%tab121072%_
         _%val121073%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab121069%_ _%val121070%_)
        (##unchecked-structure-set!
         _%tab121069%_
         _%val121070%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab121066%_ _%val121067%_)
        (##unchecked-structure-set!
         _%tab121066%_
         _%val121067%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab121063%_ _%val121064%_)
        (##unchecked-structure-set!
         _%tab121063%_
         _%val121064%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint121061%_)
        (if (and (fixnum? _%size-hint121061%_) (##fx> _%size-hint121061%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint121061%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint121026%_
               _%hash121027%_
               _%test121028%_
               _%seed121029%_
               _%lock121030%_)
        (let* ((_%size121032%_ (raw-table-size-hint->size _%size-hint121026%_))
               (_%table121034%_
                (##make-vector _%size121032%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table121034%_
           '0
           (##fxquotient _%size121032%_ '2)
           _%hash121027%_
           _%test121028%_
           _%seed121029%_
           _%lock121030%_))))
    (define make-raw-table__0
      (lambda (_%size-hint121040%_ _%hash121041%_ _%test121042%_)
        (let* ((_%seed121044%_ '0) (_%lock121046%_ '#f))
          (make-raw-table__%
           _%size-hint121040%_
           _%hash121041%_
           _%test121042%_
           _%seed121044%_
           _%lock121046%_))))
    (define make-raw-table__1
      (lambda (_%size-hint121048%_
               _%hash121049%_
               _%test121050%_
               _%seed121051%_)
        (let ((_%lock121053%_ '#f))
          (make-raw-table__%
           _%size-hint121048%_
           _%hash121049%_
           _%test121050%_
           _%seed121051%_
           _%lock121053%_))))
    (define make-raw-table
      (lambda _g121099_
        (let ((_g121100_ (##length _g121099_)))
          (cond ((##fx= _g121100_ 3) (apply make-raw-table__0 _g121099_))
                ((##fx= _g121100_ 4) (apply make-raw-table__1 _g121099_))
                ((##fx= _g121100_ 5) (apply make-raw-table__% _g121099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g121099_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint121006%_
               _%hash121007%_
               _%test121008%_
               _%seed121009%_)
        (make-raw-table__%
         _%size-hint121006%_
         _%hash121007%_
         _%test121008%_
         _%seed121009%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint121014%_ _%hash121015%_ _%test121016%_)
        (let ((_%seed121018%_ '0))
          (make-raw-table/lock__%
           _%size-hint121014%_
           _%hash121015%_
           _%test121016%_
           _%seed121018%_))))
    (define make-raw-table/lock
      (lambda _g121101_
        (let ((_g121102_ (##length _g121101_)))
          (cond ((##fx= _g121102_ 3) (apply make-raw-table/lock__0 _g121101_))
                ((##fx= _g121102_ 4) (apply make-raw-table/lock__% _g121101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g121101_))))))
    (define raw-table-length
      (lambda (_%tab121003%_) (&raw-table-count _%tab121003%_)))
    (define raw-table-length/lock
      (lambda (_%tab120976%_)
        (let ((_%lock120978%_ (&raw-table-lock _%tab120976%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120983%_ ((_%spin120986%_ '0))
              (if (##fx= (##vector-cas! _%lock120978%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120978%_ '1 (current-thread))
                  (if (##fx< _%spin120986%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120983%_ (##fx+ _%spin120986%_ '1)))
                      (let ((_%owner120992%_ (##vector-ref _%lock120978%_ '1)))
                        (if (eq? _%owner120992%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120992%_)
                                (let () (##thread-yield!) (_%again120983%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120998%_ (&raw-table-count _%tab120976%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120978%_ '1 '#f)
                (##vector-cas! _%lock120978%_ '0 '0 '1)))
            _%$r120998%_))))
    (define raw-table-ref
      (lambda (_%tab120928%_ _%key120929%_ _%default120930%_)
        (let ((_%table120932%_ (&raw-table-table _%tab120928%_))
              (_%seed120933%_ (&raw-table-seed _%tab120928%_))
              (_%hash120934%_ (&raw-table-hash _%tab120928%_))
              (_%test120935%_ (&raw-table-test _%tab120928%_)))
          (let* ((_%h120937%_
                  (fxxor (_%hash120934%_ _%key120929%_) _%seed120933%_))
                 (_%size120940%_ (vector-length _%table120932%_))
                 (_%entries120943%_ (##fxquotient _%size120940%_ '2))
                 (_%start120946%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120937%_ _%entries120943%_)
                   '1)))
            (let _%loop120950%_ ((_%probe120953%_ _%start120946%_)
                                 (_%i120955%_ '1)
                                 (_%deleted120957%_ '#f))
              (let ((_%k120960%_ (vector-ref _%table120932%_ _%probe120953%_)))
                (if (eq? _%k120960%_ (macro-unused-obj))
                    _%default120930%_
                    (if (eq? _%k120960%_ (macro-deleted-obj))
                        (_%loop120950%_
                         (let ((_%next-probe120965%_
                                (fx+ _%start120946%_
                                     _%i120955%_
                                     (fx* _%i120955%_ _%i120955%_))))
                           (##fxmodulo _%next-probe120965%_ _%size120940%_))
                         (##fx+ _%i120955%_ '1)
                         (let ((_%$e120968%_ _%deleted120957%_))
                           (if _%$e120968%_ _%$e120968%_ _%probe120953%_)))
                        (if (_%test120935%_ _%key120929%_ _%k120960%_)
                            (vector-ref
                             _%table120932%_
                             (##fx+ _%probe120953%_ '1))
                            (_%loop120950%_
                             (let ((_%next-probe120973%_
                                    (fx+ _%start120946%_
                                         _%i120955%_
                                         (fx* _%i120955%_ _%i120955%_))))
                               (##fxmodulo
                                _%next-probe120973%_
                                _%size120940%_))
                             (##fx+ _%i120955%_ '1)
                             _%deleted120957%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab120899%_ _%key120900%_ _%default120901%_)
        (let ((_%lock120903%_ (&raw-table-lock _%tab120899%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120908%_ ((_%spin120911%_ '0))
              (if (##fx= (##vector-cas! _%lock120903%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120903%_ '1 (current-thread))
                  (if (##fx< _%spin120911%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120908%_ (##fx+ _%spin120911%_ '1)))
                      (let ((_%owner120917%_ (##vector-ref _%lock120903%_ '1)))
                        (if (eq? _%owner120917%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120917%_)
                                (let () (##thread-yield!) (_%again120908%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120923%_
                 (raw-table-ref
                  _%tab120899%_
                  _%key120900%_
                  _%default120901%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120903%_ '1 '#f)
                (##vector-cas! _%lock120903%_ '0 '0 '1)))
            _%$r120923%_))))
    (define raw-table-set!
      (lambda (_%tab120895%_ _%key120896%_ _%value120897%_)
        (if (##fx< (&raw-table-free _%tab120895%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120895%_))
                    '4))
            (__raw-table-rehash! _%tab120895%_)
            '#!void)
        (__raw-table-set! _%tab120895%_ _%key120896%_ _%value120897%_)))
    (define raw-table-set!/lock
      (lambda (_%tab120866%_ _%key120867%_ _%value120868%_)
        (let ((_%lock120870%_ (&raw-table-lock _%tab120866%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120875%_ ((_%spin120878%_ '0))
              (if (##fx= (##vector-cas! _%lock120870%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120870%_ '1 (current-thread))
                  (if (##fx< _%spin120878%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120875%_ (##fx+ _%spin120878%_ '1)))
                      (let ((_%owner120884%_ (##vector-ref _%lock120870%_ '1)))
                        (if (eq? _%owner120884%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120884%_)
                                (let () (##thread-yield!) (_%again120875%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120890%_
                 (raw-table-set! _%tab120866%_ _%key120867%_ _%value120868%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120870%_ '1 '#f)
                (##vector-cas! _%lock120870%_ '0 '0 '1)))
            _%$r120890%_))))
    (define raw-table-update!
      (lambda (_%tab120861%_ _%key120862%_ _%update120863%_ _%default120864%_)
        (if (##fx< (&raw-table-free _%tab120861%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120861%_))
                    '4))
            (__raw-table-rehash! _%tab120861%_)
            '#!void)
        (__raw-table-update!
         _%tab120861%_
         _%key120862%_
         _%update120863%_
         _%default120864%_)))
    (define raw-table-update!/lock
      (lambda (_%tab120831%_ _%key120832%_ _%update120833%_ _%default120834%_)
        (let ((_%lock120836%_ (&raw-table-lock _%tab120831%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120841%_ ((_%spin120844%_ '0))
              (if (##fx= (##vector-cas! _%lock120836%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120836%_ '1 (current-thread))
                  (if (##fx< _%spin120844%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120841%_ (##fx+ _%spin120844%_ '1)))
                      (let ((_%owner120850%_ (##vector-ref _%lock120836%_ '1)))
                        (if (eq? _%owner120850%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120850%_)
                                (let () (##thread-yield!) (_%again120841%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120856%_
                 (raw-table-update!
                  _%tab120831%_
                  _%key120832%_
                  _%update120833%_
                  _%default120834%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120836%_ '1 '#f)
                (##vector-cas! _%lock120836%_ '0 '0 '1)))
            _%$r120856%_))))
    (define raw-table-delete!
      (lambda (_%tab120788%_ _%key120789%_)
        (let ((_%table120791%_ (&raw-table-table _%tab120788%_))
              (_%seed120792%_ (&raw-table-seed _%tab120788%_))
              (_%hash120793%_ (&raw-table-hash _%tab120788%_))
              (_%test120794%_ (&raw-table-test _%tab120788%_)))
          (let* ((_%h120796%_
                  (fxxor (_%hash120793%_ _%key120789%_) _%seed120792%_))
                 (_%size120799%_ (vector-length _%table120791%_))
                 (_%entries120802%_ (##fxquotient _%size120799%_ '2))
                 (_%start120805%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120796%_ _%entries120802%_)
                   '1)))
            (let _%loop120809%_ ((_%probe120812%_ _%start120805%_)
                                 (_%i120814%_ '1))
              (let ((_%k120817%_ (vector-ref _%table120791%_ _%probe120812%_)))
                (if (eq? _%k120817%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k120817%_ (macro-deleted-obj))
                        (_%loop120809%_
                         (let ((_%next-probe120822%_
                                (fx+ _%start120805%_
                                     _%i120814%_
                                     (fx* _%i120814%_ _%i120814%_))))
                           (##fxmodulo _%next-probe120822%_ _%size120799%_))
                         (##fx+ _%i120814%_ '1))
                        (if (_%test120794%_ _%key120789%_ _%k120817%_)
                            (let ()
                              (vector-set!
                               _%table120791%_
                               _%probe120812%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table120791%_
                               (##fx+ _%probe120812%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab120788%_
                               (##fx- (&raw-table-count _%tab120788%_) '1)))
                            (_%loop120809%_
                             (let ((_%next-probe120828%_
                                    (fx+ _%start120805%_
                                         _%i120814%_
                                         (fx* _%i120814%_ _%i120814%_))))
                               (##fxmodulo
                                _%next-probe120828%_
                                _%size120799%_))
                             (##fx+ _%i120814%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab120760%_ _%key120761%_)
        (let ((_%lock120763%_ (&raw-table-lock _%tab120760%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120768%_ ((_%spin120771%_ '0))
              (if (##fx= (##vector-cas! _%lock120763%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120763%_ '1 (current-thread))
                  (if (##fx< _%spin120771%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120768%_ (##fx+ _%spin120771%_ '1)))
                      (let ((_%owner120777%_ (##vector-ref _%lock120763%_ '1)))
                        (if (eq? _%owner120777%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120777%_)
                                (let () (##thread-yield!) (_%again120768%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120783%_ (raw-table-delete! _%tab120760%_ _%key120761%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120763%_ '1 '#f)
                (##vector-cas! _%lock120763%_ '0 '0 '1)))
            _%$r120783%_))))
    (define raw-table-for-each
      (lambda (_%tab120744%_ _%proc120745%_)
        (let* ((_%table120747%_ (&raw-table-table _%tab120744%_))
               (_%size120749%_ (vector-length _%table120747%_)))
          (let _%loop120752%_ ((_%i120754%_ '0))
            (if (##fx< _%i120754%_ _%size120749%_)
                (begin
                  (let ((_%key120756%_
                         (vector-ref _%table120747%_ _%i120754%_)))
                    (if (if (eq? _%key120756%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key120756%_ (macro-deleted-obj))))
                        (let ((_%value120758%_
                               (vector-ref
                                _%table120747%_
                                (##fx+ _%i120754%_ '1))))
                          (_%proc120745%_ _%key120756%_ _%value120758%_))
                        '#!void))
                  (_%loop120752%_ (##fx+ _%i120754%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab120716%_ _%proc120717%_)
        (let ((_%lock120719%_ (&raw-table-lock _%tab120716%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120724%_ ((_%spin120727%_ '0))
              (if (##fx= (##vector-cas! _%lock120719%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120719%_ '1 (current-thread))
                  (if (##fx< _%spin120727%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120724%_ (##fx+ _%spin120727%_ '1)))
                      (let ((_%owner120733%_ (##vector-ref _%lock120719%_ '1)))
                        (if (eq? _%owner120733%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120733%_)
                                (let () (##thread-yield!) (_%again120724%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120739%_
                 (raw-table-for-each _%tab120716%_ _%proc120717%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120719%_ '1 '#f)
                (##vector-cas! _%lock120719%_ '0 '0 '1)))
            _%$r120739%_))))
    (define raw-table-copy
      (lambda (_%tab120712%_)
        (let ((_%new-tab120714%_ (##structure-copy _%tab120712%_)))
          (&raw-table-table-set!
           _%new-tab120714%_
           (vector-copy (&raw-table-table _%tab120712%_)))
          (&raw-table-lock-set!
           _%new-tab120714%_
           (if (&raw-table-lock _%tab120712%_) (vector '0 '#f) '#f))
          _%new-tab120714%_)))
    (define raw-table-copy/lock
      (lambda (_%tab120685%_)
        (let ((_%lock120687%_ (&raw-table-lock _%tab120685%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120692%_ ((_%spin120695%_ '0))
              (if (##fx= (##vector-cas! _%lock120687%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120687%_ '1 (current-thread))
                  (if (##fx< _%spin120695%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120692%_ (##fx+ _%spin120695%_ '1)))
                      (let ((_%owner120701%_ (##vector-ref _%lock120687%_ '1)))
                        (if (eq? _%owner120701%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120701%_)
                                (let () (##thread-yield!) (_%again120692%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120707%_ (raw-table-copy _%tab120685%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120687%_ '1 '#f)
                (##vector-cas! _%lock120687%_ '0 '0 '1)))
            _%$r120707%_))))
    (define raw-table-new__%
      (lambda (_%tab120672%_ _%size-hint120673%_)
        (make-raw-table__%
         _%size-hint120673%_
         (&raw-table-hash _%tab120672%_)
         (&raw-table-test _%tab120672%_)
         (&raw-table-seed _%tab120672%_)
         (if (&raw-table-lock _%tab120672%_) (vector '0 '#f) '#f))))
    (define raw-table-new__0
      (lambda (_%tab120678%_)
        (let ((_%size-hint120680%_ '#f))
          (raw-table-new__% _%tab120678%_ _%size-hint120680%_))))
    (define raw-table-new
      (lambda _g121103_
        (let ((_g121104_ (##length _g121103_)))
          (cond ((##fx= _g121104_ 1) (apply raw-table-new__0 _g121103_))
                ((##fx= _g121104_ 2) (apply raw-table-new__% _g121103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  raw-table-new
                  _g121103_))))))
    (define raw-table-clear!
      (lambda (_%tab120669%_)
        (vector-fill! (&raw-table-table _%tab120669%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab120669%_ '0)
        (&raw-table-free-set!
         _%tab120669%_
         (##fxquotient (vector-length (&raw-table-table _%tab120669%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab120642%_)
        (let ((_%lock120644%_ (&raw-table-lock _%tab120642%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120649%_ ((_%spin120652%_ '0))
              (if (##fx= (##vector-cas! _%lock120644%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120644%_ '1 (current-thread))
                  (if (##fx< _%spin120652%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120649%_ (##fx+ _%spin120652%_ '1)))
                      (let ((_%owner120658%_ (##vector-ref _%lock120644%_ '1)))
                        (if (eq? _%owner120658%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120658%_)
                                (let () (##thread-yield!) (_%again120649%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120664%_ (raw-table-clear! _%tab120642%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120644%_ '1 '#f)
                (##vector-cas! _%lock120644%_ '0 '0 '1)))
            _%$r120664%_))))
    (define __raw-table-set!
      (lambda (_%tab120592%_ _%key120593%_ _%value120594%_)
        (let ((_%table120596%_ (&raw-table-table _%tab120592%_))
              (_%seed120597%_ (&raw-table-seed _%tab120592%_))
              (_%hash120598%_ (&raw-table-hash _%tab120592%_))
              (_%test120599%_ (&raw-table-test _%tab120592%_)))
          (let* ((_%h120601%_
                  (fxxor (_%hash120598%_ _%key120593%_) _%seed120597%_))
                 (_%size120604%_ (vector-length _%table120596%_))
                 (_%entries120607%_ (##fxquotient _%size120604%_ '2))
                 (_%start120610%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120601%_ _%entries120607%_)
                   '1)))
            (let _%loop120614%_ ((_%probe120617%_ _%start120610%_)
                                 (_%i120619%_ '1)
                                 (_%deleted120621%_ '#f))
              (let ((_%k120624%_ (vector-ref _%table120596%_ _%probe120617%_)))
                (if (eq? _%k120624%_ (macro-unused-obj))
                    (if _%deleted120621%_
                        (begin
                          (vector-set!
                           _%table120596%_
                           _%deleted120621%_
                           _%key120593%_)
                          (vector-set!
                           _%table120596%_
                           (##fx+ _%deleted120621%_ '1)
                           _%value120594%_)
                          (&raw-table-count-set!
                           _%tab120592%_
                           (##fx+ (&raw-table-count _%tab120592%_) '1)))
                        (begin
                          (vector-set!
                           _%table120596%_
                           _%probe120617%_
                           _%key120593%_)
                          (vector-set!
                           _%table120596%_
                           (##fx+ _%probe120617%_ '1)
                           _%value120594%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab120592%_
                             (##fx- (&raw-table-free _%tab120592%_) '1))
                            (&raw-table-count-set!
                             _%tab120592%_
                             (##fx+ (&raw-table-count _%tab120592%_) '1)))))
                    (if (eq? _%k120624%_ (macro-deleted-obj))
                        (_%loop120614%_
                         (let ((_%next-probe120631%_
                                (fx+ _%start120610%_
                                     _%i120619%_
                                     (fx* _%i120619%_ _%i120619%_))))
                           (##fxmodulo _%next-probe120631%_ _%size120604%_))
                         (##fx+ _%i120619%_ '1)
                         (let ((_%$e120634%_ _%deleted120621%_))
                           (if _%$e120634%_ _%$e120634%_ _%probe120617%_)))
                        (if (_%test120599%_ _%key120593%_ _%k120624%_)
                            (let ()
                              (vector-set!
                               _%table120596%_
                               _%probe120617%_
                               _%key120593%_)
                              (vector-set!
                               _%table120596%_
                               (##fx+ _%probe120617%_ '1)
                               _%value120594%_))
                            (_%loop120614%_
                             (let ((_%next-probe120639%_
                                    (fx+ _%start120610%_
                                         _%i120619%_
                                         (fx* _%i120619%_ _%i120619%_))))
                               (##fxmodulo
                                _%next-probe120639%_
                                _%size120604%_))
                             (##fx+ _%i120619%_ '1)
                             _%deleted120621%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab120541%_ _%key120542%_ _%update120543%_ _%default120544%_)
        (let ((_%table120546%_ (&raw-table-table _%tab120541%_))
              (_%seed120547%_ (&raw-table-seed _%tab120541%_))
              (_%hash120548%_ (&raw-table-hash _%tab120541%_))
              (_%test120549%_ (&raw-table-test _%tab120541%_)))
          (let* ((_%h120551%_
                  (fxxor (_%hash120548%_ _%key120542%_) _%seed120547%_))
                 (_%size120554%_ (vector-length _%table120546%_))
                 (_%entries120557%_ (##fxquotient _%size120554%_ '2))
                 (_%start120560%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120551%_ _%entries120557%_)
                   '1)))
            (let _%loop120564%_ ((_%probe120567%_ _%start120560%_)
                                 (_%i120569%_ '1)
                                 (_%deleted120571%_ '#f))
              (let ((_%k120574%_ (vector-ref _%table120546%_ _%probe120567%_)))
                (if (eq? _%k120574%_ (macro-unused-obj))
                    (if _%deleted120571%_
                        (begin
                          (vector-set!
                           _%table120546%_
                           _%deleted120571%_
                           _%key120542%_)
                          (vector-set!
                           _%table120546%_
                           (##fx+ _%deleted120571%_ '1)
                           (_%update120543%_ _%default120544%_))
                          (&raw-table-count-set!
                           _%tab120541%_
                           (##fx+ (&raw-table-count _%tab120541%_) '1)))
                        (begin
                          (vector-set!
                           _%table120546%_
                           _%probe120567%_
                           _%key120542%_)
                          (vector-set!
                           _%table120546%_
                           (##fx+ _%probe120567%_ '1)
                           (_%update120543%_ _%default120544%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab120541%_
                             (##fx- (&raw-table-free _%tab120541%_) '1))
                            (&raw-table-count-set!
                             _%tab120541%_
                             (##fx+ (&raw-table-count _%tab120541%_) '1)))))
                    (if (eq? _%k120574%_ (macro-deleted-obj))
                        (_%loop120564%_
                         (let ((_%next-probe120581%_
                                (fx+ _%start120560%_
                                     _%i120569%_
                                     (fx* _%i120569%_ _%i120569%_))))
                           (##fxmodulo _%next-probe120581%_ _%size120554%_))
                         (##fx+ _%i120569%_ '1)
                         (let ((_%$e120584%_ _%deleted120571%_))
                           (if _%$e120584%_ _%$e120584%_ _%probe120567%_)))
                        (if (_%test120549%_ _%key120542%_ _%k120574%_)
                            (let ()
                              (vector-set!
                               _%table120546%_
                               _%probe120567%_
                               _%key120542%_)
                              (vector-set!
                               _%table120546%_
                               (##fx+ _%probe120567%_ '1)
                               (_%update120543%_
                                (vector-ref
                                 _%table120546%_
                                 (##fx+ _%probe120567%_ '1)))))
                            (_%loop120564%_
                             (let ((_%next-probe120589%_
                                    (fx+ _%start120560%_
                                         _%i120569%_
                                         (fx* _%i120569%_ _%i120569%_))))
                               (##fxmodulo
                                _%next-probe120589%_
                                _%size120554%_))
                             (##fx+ _%i120569%_ '1)
                             _%deleted120571%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab120522%_)
        (let* ((_%old-table120524%_ (&raw-table-table _%tab120522%_))
               (_%old-size120526%_ (vector-length _%old-table120524%_))
               (_%new-size120528%_
                (if (##fx< (&raw-table-count _%tab120522%_)
                           (##fxquotient _%old-size120526%_ '4))
                    (vector-length _%old-table120524%_)
                    (##fx* '2 (vector-length _%old-table120524%_))))
               (_%new-table120530%_
                (##make-vector _%new-size120528%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab120522%_ _%new-table120530%_)
          (&raw-table-count-set! _%tab120522%_ '0)
          (&raw-table-free-set!
           _%tab120522%_
           (##fxquotient _%new-size120528%_ '2))
          (let _%lp120533%_ ((_%i120535%_ '0))
            (if (##fx< _%i120535%_ _%old-size120526%_)
                (begin
                  (let ((_%key120537%_
                         (vector-ref _%old-table120524%_ _%i120535%_)))
                    (if (if (eq? _%key120537%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key120537%_ (macro-deleted-obj))))
                        (let ((_%value120539%_
                               (vector-ref
                                _%old-table120524%_
                                (##fx+ _%i120535%_ '1))))
                          (__raw-table-set!
                           _%tab120522%_
                           _%key120537%_
                           _%value120539%_))
                        '#!void))
                  (_%lp120533%_ (##fx+ _%i120535%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj120514%_)
        (let ((_%t120516%_ (##type _%obj120514%_)))
          (if (##fx= (##fxand _%t120516%_ '1) '0)
              (fxand (##type-cast _%obj120514%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj120514%_)
                  (##symbol-hash _%obj120514%_)
                  (if (procedure? _%obj120514%_)
                      (procedure-hash _%obj120514%_)
                      (fxand (__object->eq-hash _%obj120514%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj120510%_)
        (let ((_%h120512%_
               (if (##closure? _%obj120510%_)
                   (__object->eq-hash _%obj120510%_)
                   (##type-cast _%obj120510%_ '0))))
          (fxand _%h120512%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj120508%_) (__object->eq-hash _%obj120508%_)))
    (define eqv-hash
      (lambda (_%obj120498%_)
        (letrec ((_%combine120500%_
                  (lambda (_%a120505%_ _%b120506%_)
                    (fxand (##fx* (##fx+ _%a120505%_
                                         (fxarithmetic-shift-left
                                          _%b120506%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash120501%_
                  (lambda (_%obj120503%_)
                    (macro-number-dispatch
                     _%obj120503%_
                     (eq-hash _%obj120503%_)
                     (fxand _%obj120503%_ (macro-max-fixnum32))
                     (modulo _%obj120503%_ '331804481)
                     (_%combine120500%_
                      (_%hash120501%_ (macro-ratnum-numerator _%obj120503%_))
                      (_%hash120501%_
                       (macro-ratnum-denominator _%obj120503%_)))
                     (_%combine120500%_
                      (##u16vector-ref _%obj120503%_ '0)
                      (_%combine120500%_
                       (##u16vector-ref _%obj120503%_ '1)
                       (_%combine120500%_
                        (##u16vector-ref _%obj120503%_ '2)
                        (##u16vector-ref _%obj120503%_ '3))))
                     (_%combine120500%_
                      (_%hash120501%_ (macro-cpxnum-real _%obj120503%_))
                      (_%hash120501%_ (macro-cpxnum-imag _%obj120503%_)))))))
          (_%hash120501%_ _%obj120498%_))))
    (define symbolic?
      (lambda (_%obj120493%_)
        (let ((_%$e120495%_ (symbol? _%obj120493%_)))
          (if _%$e120495%_ _%$e120495%_ (keyword? _%obj120493%_)))))
    (define symbolic-hash
      (lambda (_%obj120491%_) (##symbol-hash _%obj120491%_)))
    (define string-hash
      (lambda (_%obj120489%_) (##string=?-hash _%obj120489%_)))
    (define immediate-hash
      (lambda (_%obj120487%_) (##type-cast _%obj120487%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint120469%_ _%seed120470%_)
        (make-raw-table__1 _%size-hint120469%_ eq-hash eq? _%seed120470%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint120476%_ '#f) (_%seed120478%_ '0))
          (make-eq-table__% _%size-hint120476%_ _%seed120478%_))))
    (define make-eq-table__1
      (lambda (_%size-hint120480%_)
        (let ((_%seed120482%_ '0))
          (make-eq-table__% _%size-hint120480%_ _%seed120482%_))))
    (define make-eq-table
      (lambda _g121105_
        (let ((_g121106_ (##length _g121105_)))
          (cond ((##fx= _g121106_ 0) (apply make-eq-table__0 _g121105_))
                ((##fx= _g121106_ 1) (apply make-eq-table__1 _g121105_))
                ((##fx= _g121106_ 2) (apply make-eq-table__% _g121105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g121105_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint120449%_ _%seed120451%_)
        (make-raw-table/lock__%
         _%size-hint120449%_
         eq-hash
         eq?
         _%seed120451%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint120457%_ '#f) (_%seed120459%_ '0))
          (make-eq-table/lock__% _%size-hint120457%_ _%seed120459%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint120461%_)
        (let ((_%seed120463%_ '0))
          (make-eq-table/lock__% _%size-hint120461%_ _%seed120463%_))))
    (define make-eq-table/lock
      (lambda _g121107_
        (let ((_g121108_ (##length _g121107_)))
          (cond ((##fx= _g121108_ 0) (apply make-eq-table/lock__0 _g121107_))
                ((##fx= _g121108_ 1) (apply make-eq-table/lock__1 _g121107_))
                ((##fx= _g121108_ 2) (apply make-eq-table/lock__% _g121107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g121107_))))))
    (define eq-table-ref
      (lambda (_%tab120402%_ _%key120403%_ _%default120404%_)
        (let ((_%table120406%_ (&raw-table-table _%tab120402%_))
              (_%seed120407%_ (&raw-table-seed _%tab120402%_)))
          (let* ((_%h120409%_ (fxxor (eq-hash _%key120403%_) _%seed120407%_))
                 (_%size120412%_ (vector-length _%table120406%_))
                 (_%entries120415%_ (##fxquotient _%size120412%_ '2))
                 (_%start120418%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120409%_ _%entries120415%_)
                   '1)))
            (let _%loop120422%_ ((_%probe120425%_ _%start120418%_)
                                 (_%i120427%_ '1)
                                 (_%deleted120429%_ '#f))
              (let ((_%k120432%_ (vector-ref _%table120406%_ _%probe120425%_)))
                (if (eq? _%k120432%_ (macro-unused-obj))
                    _%default120404%_
                    (if (eq? _%k120432%_ (macro-deleted-obj))
                        (_%loop120422%_
                         (let ((_%next-probe120437%_
                                (fx+ _%start120418%_
                                     _%i120427%_
                                     (fx* _%i120427%_ _%i120427%_))))
                           (##fxmodulo _%next-probe120437%_ _%size120412%_))
                         (##fx+ _%i120427%_ '1)
                         (let ((_%$e120440%_ _%deleted120429%_))
                           (if _%$e120440%_ _%$e120440%_ _%probe120425%_)))
                        (if (eq? _%key120403%_ _%k120432%_)
                            (vector-ref
                             _%table120406%_
                             (##fx+ _%probe120425%_ '1))
                            (_%loop120422%_
                             (let ((_%next-probe120445%_
                                    (fx+ _%start120418%_
                                         _%i120427%_
                                         (fx* _%i120427%_ _%i120427%_))))
                               (##fxmodulo
                                _%next-probe120445%_
                                _%size120412%_))
                             (##fx+ _%i120427%_ '1)
                             _%deleted120429%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab120373%_ _%key120374%_ _%default120375%_)
        (let ((_%lock120377%_ (&raw-table-lock _%tab120373%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120382%_ ((_%spin120385%_ '0))
              (if (##fx= (##vector-cas! _%lock120377%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120377%_ '1 (current-thread))
                  (if (##fx< _%spin120385%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120382%_ (##fx+ _%spin120385%_ '1)))
                      (let ((_%owner120391%_ (##vector-ref _%lock120377%_ '1)))
                        (if (eq? _%owner120391%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120391%_)
                                (let () (##thread-yield!) (_%again120382%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120397%_
                 (eq-table-ref _%tab120373%_ _%key120374%_ _%default120375%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120377%_ '1 '#f)
                (##vector-cas! _%lock120377%_ '0 '0 '1)))
            _%$r120397%_))))
    (define __eq-table-set!
      (lambda (_%tab120325%_ _%key120326%_ _%value120327%_)
        (let ((_%table120329%_ (&raw-table-table _%tab120325%_))
              (_%seed120330%_ (&raw-table-seed _%tab120325%_)))
          (let* ((_%h120332%_ (fxxor (eq-hash _%key120326%_) _%seed120330%_))
                 (_%size120335%_ (vector-length _%table120329%_))
                 (_%entries120338%_ (##fxquotient _%size120335%_ '2))
                 (_%start120341%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120332%_ _%entries120338%_)
                   '1)))
            (let _%loop120345%_ ((_%probe120348%_ _%start120341%_)
                                 (_%i120350%_ '1)
                                 (_%deleted120352%_ '#f))
              (let ((_%k120355%_ (vector-ref _%table120329%_ _%probe120348%_)))
                (if (eq? _%k120355%_ (macro-unused-obj))
                    (if _%deleted120352%_
                        (begin
                          (vector-set!
                           _%table120329%_
                           _%deleted120352%_
                           _%key120326%_)
                          (vector-set!
                           _%table120329%_
                           (##fx+ _%deleted120352%_ '1)
                           _%value120327%_)
                          (&raw-table-count-set!
                           _%tab120325%_
                           (##fx+ (&raw-table-count _%tab120325%_) '1)))
                        (begin
                          (vector-set!
                           _%table120329%_
                           _%probe120348%_
                           _%key120326%_)
                          (vector-set!
                           _%table120329%_
                           (##fx+ _%probe120348%_ '1)
                           _%value120327%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab120325%_
                             (##fx- (&raw-table-free _%tab120325%_) '1))
                            (&raw-table-count-set!
                             _%tab120325%_
                             (##fx+ (&raw-table-count _%tab120325%_) '1)))))
                    (if (eq? _%k120355%_ (macro-deleted-obj))
                        (_%loop120345%_
                         (let ((_%next-probe120362%_
                                (fx+ _%start120341%_
                                     _%i120350%_
                                     (fx* _%i120350%_ _%i120350%_))))
                           (##fxmodulo _%next-probe120362%_ _%size120335%_))
                         (##fx+ _%i120350%_ '1)
                         (let ((_%$e120365%_ _%deleted120352%_))
                           (if _%$e120365%_ _%$e120365%_ _%probe120348%_)))
                        (if (eq? _%key120326%_ _%k120355%_)
                            (let ()
                              (vector-set!
                               _%table120329%_
                               _%probe120348%_
                               _%key120326%_)
                              (vector-set!
                               _%table120329%_
                               (##fx+ _%probe120348%_ '1)
                               _%value120327%_))
                            (_%loop120345%_
                             (let ((_%next-probe120370%_
                                    (fx+ _%start120341%_
                                         _%i120350%_
                                         (fx* _%i120350%_ _%i120350%_))))
                               (##fxmodulo
                                _%next-probe120370%_
                                _%size120335%_))
                             (##fx+ _%i120350%_ '1)
                             _%deleted120352%_))))))))))
    (define eq-table-set!
      (lambda (_%tab120321%_ _%key120322%_ _%value120323%_)
        (if (##fx< (&raw-table-free _%tab120321%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120321%_))
                    '4))
            (__raw-table-rehash! _%tab120321%_)
            '#!void)
        (__eq-table-set! _%tab120321%_ _%key120322%_ _%value120323%_)))
    (define eq-table-set!/lock
      (lambda (_%tab120291%_ _%key120292%_ _%value120293%_)
        (let ((_%lock120296%_ (&raw-table-lock _%tab120291%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120301%_ ((_%spin120304%_ '0))
              (if (##fx= (##vector-cas! _%lock120296%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120296%_ '1 (current-thread))
                  (if (##fx< _%spin120304%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120301%_ (##fx+ _%spin120304%_ '1)))
                      (let ((_%owner120310%_ (##vector-ref _%lock120296%_ '1)))
                        (if (eq? _%owner120310%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120310%_)
                                (let () (##thread-yield!) (_%again120301%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120316%_
                 (eq-table-set! _%tab120291%_ _%key120292%_ _%value120293%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120296%_ '1 '#f)
                (##vector-cas! _%lock120296%_ '0 '0 '1)))
            _%$r120316%_))))
    (define __eq-table-update!
      (lambda (_%tab120242%_
               _%key120243%_
               _%eq-table-update!120244%_
               _%default120245%_)
        (let ((_%table120247%_ (&raw-table-table _%tab120242%_))
              (_%seed120248%_ (&raw-table-seed _%tab120242%_)))
          (let* ((_%h120250%_ (fxxor (eq-hash _%key120243%_) _%seed120248%_))
                 (_%size120253%_ (vector-length _%table120247%_))
                 (_%entries120256%_ (##fxquotient _%size120253%_ '2))
                 (_%start120259%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120250%_ _%entries120256%_)
                   '1)))
            (let _%loop120263%_ ((_%probe120266%_ _%start120259%_)
                                 (_%i120268%_ '1)
                                 (_%deleted120270%_ '#f))
              (let ((_%k120273%_ (vector-ref _%table120247%_ _%probe120266%_)))
                (if (eq? _%k120273%_ (macro-unused-obj))
                    (if _%deleted120270%_
                        (begin
                          (vector-set!
                           _%table120247%_
                           _%deleted120270%_
                           _%key120243%_)
                          (vector-set!
                           _%table120247%_
                           (##fx+ _%deleted120270%_ '1)
                           (_%eq-table-update!120244%_ _%default120245%_))
                          (&raw-table-count-set!
                           _%tab120242%_
                           (##fx+ (&raw-table-count _%tab120242%_) '1)))
                        (begin
                          (vector-set!
                           _%table120247%_
                           _%probe120266%_
                           _%key120243%_)
                          (vector-set!
                           _%table120247%_
                           (##fx+ _%probe120266%_ '1)
                           (_%eq-table-update!120244%_ _%default120245%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab120242%_
                             (##fx- (&raw-table-free _%tab120242%_) '1))
                            (&raw-table-count-set!
                             _%tab120242%_
                             (##fx+ (&raw-table-count _%tab120242%_) '1)))))
                    (if (eq? _%k120273%_ (macro-deleted-obj))
                        (_%loop120263%_
                         (let ((_%next-probe120280%_
                                (fx+ _%start120259%_
                                     _%i120268%_
                                     (fx* _%i120268%_ _%i120268%_))))
                           (##fxmodulo _%next-probe120280%_ _%size120253%_))
                         (##fx+ _%i120268%_ '1)
                         (let ((_%$e120283%_ _%deleted120270%_))
                           (if _%$e120283%_ _%$e120283%_ _%probe120266%_)))
                        (if (eq? _%key120243%_ _%k120273%_)
                            (let ()
                              (vector-set!
                               _%table120247%_
                               _%probe120266%_
                               _%key120243%_)
                              (vector-set!
                               _%table120247%_
                               (##fx+ _%probe120266%_ '1)
                               (_%eq-table-update!120244%_
                                (vector-ref
                                 _%table120247%_
                                 (##fx+ _%probe120266%_ '1)))))
                            (_%loop120263%_
                             (let ((_%next-probe120288%_
                                    (fx+ _%start120259%_
                                         _%i120268%_
                                         (fx* _%i120268%_ _%i120268%_))))
                               (##fxmodulo
                                _%next-probe120288%_
                                _%size120253%_))
                             (##fx+ _%i120268%_ '1)
                             _%deleted120270%_))))))))))
    (define eq-table-update!
      (lambda (_%tab120237%_
               _%key120238%_
               _%eq-table-update!120239%_
               _%default120240%_)
        (if (##fx< (&raw-table-free _%tab120237%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120237%_))
                    '4))
            (__raw-table-rehash! _%tab120237%_)
            '#!void)
        (__eq-table-update!
         _%tab120237%_
         _%key120238%_
         _%eq-table-update!120239%_
         _%default120240%_)))
    (define eq-table-update!/lock
      (lambda (_%tab120206%_
               _%key120207%_
               _%eq-table-update!120208%_
               _%default120209%_)
        (let ((_%lock120212%_ (&raw-table-lock _%tab120206%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120217%_ ((_%spin120220%_ '0))
              (if (##fx= (##vector-cas! _%lock120212%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120212%_ '1 (current-thread))
                  (if (##fx< _%spin120220%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120217%_ (##fx+ _%spin120220%_ '1)))
                      (let ((_%owner120226%_ (##vector-ref _%lock120212%_ '1)))
                        (if (eq? _%owner120226%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120226%_)
                                (let () (##thread-yield!) (_%again120217%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120232%_
                 (_%eq-table-update!120208%_
                  _%tab120206%_
                  _%key120207%_
                  _%eq-table-update!120208%_
                  _%default120209%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120212%_ '1 '#f)
                (##vector-cas! _%lock120212%_ '0 '0 '1)))
            _%$r120232%_))))
    (define eq-table-delete!
      (lambda (_%tab120163%_ _%key120164%_)
        (let ((_%table120166%_ (&raw-table-table _%tab120163%_))
              (_%seed120168%_ (&raw-table-seed _%tab120163%_)))
          (let* ((_%h120171%_ (fxxor (eq-hash _%key120164%_) _%seed120168%_))
                 (_%size120174%_ (vector-length _%table120166%_))
                 (_%entries120177%_ (##fxquotient _%size120174%_ '2))
                 (_%start120180%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120171%_ _%entries120177%_)
                   '1)))
            (let _%loop120184%_ ((_%probe120187%_ _%start120180%_)
                                 (_%i120189%_ '1))
              (let ((_%k120192%_ (vector-ref _%table120166%_ _%probe120187%_)))
                (if (eq? _%k120192%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k120192%_ (macro-deleted-obj))
                        (_%loop120184%_
                         (let ((_%next-probe120197%_
                                (fx+ _%start120180%_
                                     _%i120189%_
                                     (fx* _%i120189%_ _%i120189%_))))
                           (##fxmodulo _%next-probe120197%_ _%size120174%_))
                         (##fx+ _%i120189%_ '1))
                        (if (eq? _%key120164%_ _%k120192%_)
                            (let ()
                              (vector-set!
                               _%table120166%_
                               _%probe120187%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table120166%_
                               (##fx+ _%probe120187%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab120163%_
                               (##fx- (&raw-table-count _%tab120163%_) '1)))
                            (_%loop120184%_
                             (let ((_%next-probe120203%_
                                    (fx+ _%start120180%_
                                         _%i120189%_
                                         (fx* _%i120189%_ _%i120189%_))))
                               (##fxmodulo
                                _%next-probe120203%_
                                _%size120174%_))
                             (##fx+ _%i120189%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab120133%_ _%key120135%_)
        (let ((_%lock120138%_ (&raw-table-lock _%tab120133%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120143%_ ((_%spin120146%_ '0))
              (if (##fx= (##vector-cas! _%lock120138%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120138%_ '1 (current-thread))
                  (if (##fx< _%spin120146%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120143%_ (##fx+ _%spin120146%_ '1)))
                      (let ((_%owner120152%_ (##vector-ref _%lock120138%_ '1)))
                        (if (eq? _%owner120152%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120152%_)
                                (let () (##thread-yield!) (_%again120143%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120158%_ (eq-table-delete! _%tab120133%_ _%key120135%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120138%_ '1 '#f)
                (##vector-cas! _%lock120138%_ '0 '0 '1)))
            _%$r120158%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint120115%_ _%seed120116%_)
        (make-raw-table__1 _%size-hint120115%_ eqv-hash eqv? _%seed120116%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint120122%_ '#f) (_%seed120124%_ '0))
          (make-eqv-table__% _%size-hint120122%_ _%seed120124%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint120126%_)
        (let ((_%seed120128%_ '0))
          (make-eqv-table__% _%size-hint120126%_ _%seed120128%_))))
    (define make-eqv-table
      (lambda _g121109_
        (let ((_g121110_ (##length _g121109_)))
          (cond ((##fx= _g121110_ 0) (apply make-eqv-table__0 _g121109_))
                ((##fx= _g121110_ 1) (apply make-eqv-table__1 _g121109_))
                ((##fx= _g121110_ 2) (apply make-eqv-table__% _g121109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g121109_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint120095%_ _%seed120097%_)
        (make-raw-table/lock__%
         _%size-hint120095%_
         eqv-hash
         eqv?
         _%seed120097%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint120103%_ '#f) (_%seed120105%_ '0))
          (make-eqv-table/lock__% _%size-hint120103%_ _%seed120105%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint120107%_)
        (let ((_%seed120109%_ '0))
          (make-eqv-table/lock__% _%size-hint120107%_ _%seed120109%_))))
    (define make-eqv-table/lock
      (lambda _g121111_
        (let ((_g121112_ (##length _g121111_)))
          (cond ((##fx= _g121112_ 0) (apply make-eqv-table/lock__0 _g121111_))
                ((##fx= _g121112_ 1) (apply make-eqv-table/lock__1 _g121111_))
                ((##fx= _g121112_ 2) (apply make-eqv-table/lock__% _g121111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g121111_))))))
    (define eqv-table-ref
      (lambda (_%tab120048%_ _%key120049%_ _%default120050%_)
        (let ((_%table120052%_ (&raw-table-table _%tab120048%_))
              (_%seed120053%_ (&raw-table-seed _%tab120048%_)))
          (let* ((_%h120055%_ (fxxor (eqv-hash _%key120049%_) _%seed120053%_))
                 (_%size120058%_ (vector-length _%table120052%_))
                 (_%entries120061%_ (##fxquotient _%size120058%_ '2))
                 (_%start120064%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120055%_ _%entries120061%_)
                   '1)))
            (let _%loop120068%_ ((_%probe120071%_ _%start120064%_)
                                 (_%i120073%_ '1)
                                 (_%deleted120075%_ '#f))
              (let ((_%k120078%_ (vector-ref _%table120052%_ _%probe120071%_)))
                (if (eq? _%k120078%_ (macro-unused-obj))
                    _%default120050%_
                    (if (eq? _%k120078%_ (macro-deleted-obj))
                        (_%loop120068%_
                         (let ((_%next-probe120083%_
                                (fx+ _%start120064%_
                                     _%i120073%_
                                     (fx* _%i120073%_ _%i120073%_))))
                           (##fxmodulo _%next-probe120083%_ _%size120058%_))
                         (##fx+ _%i120073%_ '1)
                         (let ((_%$e120086%_ _%deleted120075%_))
                           (if _%$e120086%_ _%$e120086%_ _%probe120071%_)))
                        (if (eqv? _%key120049%_ _%k120078%_)
                            (vector-ref
                             _%table120052%_
                             (##fx+ _%probe120071%_ '1))
                            (_%loop120068%_
                             (let ((_%next-probe120091%_
                                    (fx+ _%start120064%_
                                         _%i120073%_
                                         (fx* _%i120073%_ _%i120073%_))))
                               (##fxmodulo
                                _%next-probe120091%_
                                _%size120058%_))
                             (##fx+ _%i120073%_ '1)
                             _%deleted120075%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab120019%_ _%key120020%_ _%default120021%_)
        (let ((_%lock120023%_ (&raw-table-lock _%tab120019%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120028%_ ((_%spin120031%_ '0))
              (if (##fx= (##vector-cas! _%lock120023%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120023%_ '1 (current-thread))
                  (if (##fx< _%spin120031%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120028%_ (##fx+ _%spin120031%_ '1)))
                      (let ((_%owner120037%_ (##vector-ref _%lock120023%_ '1)))
                        (if (eq? _%owner120037%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120037%_)
                                (let () (##thread-yield!) (_%again120028%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120043%_
                 (eqv-table-ref
                  _%tab120019%_
                  _%key120020%_
                  _%default120021%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120023%_ '1 '#f)
                (##vector-cas! _%lock120023%_ '0 '0 '1)))
            _%$r120043%_))))
    (define __eqv-table-set!
      (lambda (_%tab119971%_ _%key119972%_ _%value119973%_)
        (let ((_%table119975%_ (&raw-table-table _%tab119971%_))
              (_%seed119976%_ (&raw-table-seed _%tab119971%_)))
          (let* ((_%h119978%_ (fxxor (eqv-hash _%key119972%_) _%seed119976%_))
                 (_%size119981%_ (vector-length _%table119975%_))
                 (_%entries119984%_ (##fxquotient _%size119981%_ '2))
                 (_%start119987%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119978%_ _%entries119984%_)
                   '1)))
            (let _%loop119991%_ ((_%probe119994%_ _%start119987%_)
                                 (_%i119996%_ '1)
                                 (_%deleted119998%_ '#f))
              (let ((_%k120001%_ (vector-ref _%table119975%_ _%probe119994%_)))
                (if (eq? _%k120001%_ (macro-unused-obj))
                    (if _%deleted119998%_
                        (begin
                          (vector-set!
                           _%table119975%_
                           _%deleted119998%_
                           _%key119972%_)
                          (vector-set!
                           _%table119975%_
                           (##fx+ _%deleted119998%_ '1)
                           _%value119973%_)
                          (&raw-table-count-set!
                           _%tab119971%_
                           (##fx+ (&raw-table-count _%tab119971%_) '1)))
                        (begin
                          (vector-set!
                           _%table119975%_
                           _%probe119994%_
                           _%key119972%_)
                          (vector-set!
                           _%table119975%_
                           (##fx+ _%probe119994%_ '1)
                           _%value119973%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119971%_
                             (##fx- (&raw-table-free _%tab119971%_) '1))
                            (&raw-table-count-set!
                             _%tab119971%_
                             (##fx+ (&raw-table-count _%tab119971%_) '1)))))
                    (if (eq? _%k120001%_ (macro-deleted-obj))
                        (_%loop119991%_
                         (let ((_%next-probe120008%_
                                (fx+ _%start119987%_
                                     _%i119996%_
                                     (fx* _%i119996%_ _%i119996%_))))
                           (##fxmodulo _%next-probe120008%_ _%size119981%_))
                         (##fx+ _%i119996%_ '1)
                         (let ((_%$e120011%_ _%deleted119998%_))
                           (if _%$e120011%_ _%$e120011%_ _%probe119994%_)))
                        (if (eqv? _%key119972%_ _%k120001%_)
                            (let ()
                              (vector-set!
                               _%table119975%_
                               _%probe119994%_
                               _%key119972%_)
                              (vector-set!
                               _%table119975%_
                               (##fx+ _%probe119994%_ '1)
                               _%value119973%_))
                            (_%loop119991%_
                             (let ((_%next-probe120016%_
                                    (fx+ _%start119987%_
                                         _%i119996%_
                                         (fx* _%i119996%_ _%i119996%_))))
                               (##fxmodulo
                                _%next-probe120016%_
                                _%size119981%_))
                             (##fx+ _%i119996%_ '1)
                             _%deleted119998%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab119967%_ _%key119968%_ _%value119969%_)
        (if (##fx< (&raw-table-free _%tab119967%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119967%_))
                    '4))
            (__raw-table-rehash! _%tab119967%_)
            '#!void)
        (__eqv-table-set! _%tab119967%_ _%key119968%_ _%value119969%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab119937%_ _%key119938%_ _%value119939%_)
        (let ((_%lock119942%_ (&raw-table-lock _%tab119937%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119947%_ ((_%spin119950%_ '0))
              (if (##fx= (##vector-cas! _%lock119942%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119942%_ '1 (current-thread))
                  (if (##fx< _%spin119950%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119947%_ (##fx+ _%spin119950%_ '1)))
                      (let ((_%owner119956%_ (##vector-ref _%lock119942%_ '1)))
                        (if (eq? _%owner119956%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119956%_)
                                (let () (##thread-yield!) (_%again119947%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119962%_
                 (eqv-table-set! _%tab119937%_ _%key119938%_ _%value119939%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119942%_ '1 '#f)
                (##vector-cas! _%lock119942%_ '0 '0 '1)))
            _%$r119962%_))))
    (define __eqv-table-update!
      (lambda (_%tab119888%_
               _%key119889%_
               _%eqv-table-update!119890%_
               _%default119891%_)
        (let ((_%table119893%_ (&raw-table-table _%tab119888%_))
              (_%seed119894%_ (&raw-table-seed _%tab119888%_)))
          (let* ((_%h119896%_ (fxxor (eqv-hash _%key119889%_) _%seed119894%_))
                 (_%size119899%_ (vector-length _%table119893%_))
                 (_%entries119902%_ (##fxquotient _%size119899%_ '2))
                 (_%start119905%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119896%_ _%entries119902%_)
                   '1)))
            (let _%loop119909%_ ((_%probe119912%_ _%start119905%_)
                                 (_%i119914%_ '1)
                                 (_%deleted119916%_ '#f))
              (let ((_%k119919%_ (vector-ref _%table119893%_ _%probe119912%_)))
                (if (eq? _%k119919%_ (macro-unused-obj))
                    (if _%deleted119916%_
                        (begin
                          (vector-set!
                           _%table119893%_
                           _%deleted119916%_
                           _%key119889%_)
                          (vector-set!
                           _%table119893%_
                           (##fx+ _%deleted119916%_ '1)
                           (_%eqv-table-update!119890%_ _%default119891%_))
                          (&raw-table-count-set!
                           _%tab119888%_
                           (##fx+ (&raw-table-count _%tab119888%_) '1)))
                        (begin
                          (vector-set!
                           _%table119893%_
                           _%probe119912%_
                           _%key119889%_)
                          (vector-set!
                           _%table119893%_
                           (##fx+ _%probe119912%_ '1)
                           (_%eqv-table-update!119890%_ _%default119891%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119888%_
                             (##fx- (&raw-table-free _%tab119888%_) '1))
                            (&raw-table-count-set!
                             _%tab119888%_
                             (##fx+ (&raw-table-count _%tab119888%_) '1)))))
                    (if (eq? _%k119919%_ (macro-deleted-obj))
                        (_%loop119909%_
                         (let ((_%next-probe119926%_
                                (fx+ _%start119905%_
                                     _%i119914%_
                                     (fx* _%i119914%_ _%i119914%_))))
                           (##fxmodulo _%next-probe119926%_ _%size119899%_))
                         (##fx+ _%i119914%_ '1)
                         (let ((_%$e119929%_ _%deleted119916%_))
                           (if _%$e119929%_ _%$e119929%_ _%probe119912%_)))
                        (if (eqv? _%key119889%_ _%k119919%_)
                            (let ()
                              (vector-set!
                               _%table119893%_
                               _%probe119912%_
                               _%key119889%_)
                              (vector-set!
                               _%table119893%_
                               (##fx+ _%probe119912%_ '1)
                               (_%eqv-table-update!119890%_
                                (vector-ref
                                 _%table119893%_
                                 (##fx+ _%probe119912%_ '1)))))
                            (_%loop119909%_
                             (let ((_%next-probe119934%_
                                    (fx+ _%start119905%_
                                         _%i119914%_
                                         (fx* _%i119914%_ _%i119914%_))))
                               (##fxmodulo
                                _%next-probe119934%_
                                _%size119899%_))
                             (##fx+ _%i119914%_ '1)
                             _%deleted119916%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab119883%_
               _%key119884%_
               _%eqv-table-update!119885%_
               _%default119886%_)
        (if (##fx< (&raw-table-free _%tab119883%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119883%_))
                    '4))
            (__raw-table-rehash! _%tab119883%_)
            '#!void)
        (__eqv-table-update!
         _%tab119883%_
         _%key119884%_
         _%eqv-table-update!119885%_
         _%default119886%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab119852%_
               _%key119853%_
               _%eqv-table-update!119854%_
               _%default119855%_)
        (let ((_%lock119858%_ (&raw-table-lock _%tab119852%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119863%_ ((_%spin119866%_ '0))
              (if (##fx= (##vector-cas! _%lock119858%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119858%_ '1 (current-thread))
                  (if (##fx< _%spin119866%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119863%_ (##fx+ _%spin119866%_ '1)))
                      (let ((_%owner119872%_ (##vector-ref _%lock119858%_ '1)))
                        (if (eq? _%owner119872%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119872%_)
                                (let () (##thread-yield!) (_%again119863%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119878%_
                 (_%eqv-table-update!119854%_
                  _%tab119852%_
                  _%key119853%_
                  _%eqv-table-update!119854%_
                  _%default119855%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119858%_ '1 '#f)
                (##vector-cas! _%lock119858%_ '0 '0 '1)))
            _%$r119878%_))))
    (define eqv-table-delete!
      (lambda (_%tab119809%_ _%key119810%_)
        (let ((_%table119812%_ (&raw-table-table _%tab119809%_))
              (_%seed119814%_ (&raw-table-seed _%tab119809%_)))
          (let* ((_%h119817%_ (fxxor (eqv-hash _%key119810%_) _%seed119814%_))
                 (_%size119820%_ (vector-length _%table119812%_))
                 (_%entries119823%_ (##fxquotient _%size119820%_ '2))
                 (_%start119826%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119817%_ _%entries119823%_)
                   '1)))
            (let _%loop119830%_ ((_%probe119833%_ _%start119826%_)
                                 (_%i119835%_ '1))
              (let ((_%k119838%_ (vector-ref _%table119812%_ _%probe119833%_)))
                (if (eq? _%k119838%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119838%_ (macro-deleted-obj))
                        (_%loop119830%_
                         (let ((_%next-probe119843%_
                                (fx+ _%start119826%_
                                     _%i119835%_
                                     (fx* _%i119835%_ _%i119835%_))))
                           (##fxmodulo _%next-probe119843%_ _%size119820%_))
                         (##fx+ _%i119835%_ '1))
                        (if (eqv? _%key119810%_ _%k119838%_)
                            (let ()
                              (vector-set!
                               _%table119812%_
                               _%probe119833%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119812%_
                               (##fx+ _%probe119833%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119809%_
                               (##fx- (&raw-table-count _%tab119809%_) '1)))
                            (_%loop119830%_
                             (let ((_%next-probe119849%_
                                    (fx+ _%start119826%_
                                         _%i119835%_
                                         (fx* _%i119835%_ _%i119835%_))))
                               (##fxmodulo
                                _%next-probe119849%_
                                _%size119820%_))
                             (##fx+ _%i119835%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab119779%_ _%key119781%_)
        (let ((_%lock119784%_ (&raw-table-lock _%tab119779%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119789%_ ((_%spin119792%_ '0))
              (if (##fx= (##vector-cas! _%lock119784%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119784%_ '1 (current-thread))
                  (if (##fx< _%spin119792%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119789%_ (##fx+ _%spin119792%_ '1)))
                      (let ((_%owner119798%_ (##vector-ref _%lock119784%_ '1)))
                        (if (eq? _%owner119798%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119798%_)
                                (let () (##thread-yield!) (_%again119789%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119804%_ (eqv-table-delete! _%tab119779%_ _%key119781%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119784%_ '1 '#f)
                (##vector-cas! _%lock119784%_ '0 '0 '1)))
            _%$r119804%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint119761%_ _%seed119762%_)
        (make-raw-table__1
         _%size-hint119761%_
         symbolic-hash
         eq?
         _%seed119762%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint119768%_ '#f) (_%seed119770%_ '0))
          (make-symbolic-table__% _%size-hint119768%_ _%seed119770%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint119772%_)
        (let ((_%seed119774%_ '0))
          (make-symbolic-table__% _%size-hint119772%_ _%seed119774%_))))
    (define make-symbolic-table
      (lambda _g121113_
        (let ((_g121114_ (##length _g121113_)))
          (cond ((##fx= _g121114_ 0) (apply make-symbolic-table__0 _g121113_))
                ((##fx= _g121114_ 1) (apply make-symbolic-table__1 _g121113_))
                ((##fx= _g121114_ 2) (apply make-symbolic-table__% _g121113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g121113_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint119741%_ _%seed119743%_)
        (make-raw-table/lock__%
         _%size-hint119741%_
         symbolic-hash
         eq?
         _%seed119743%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint119749%_ '#f) (_%seed119751%_ '0))
          (make-symbolic-table/lock__% _%size-hint119749%_ _%seed119751%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint119753%_)
        (let ((_%seed119755%_ '0))
          (make-symbolic-table/lock__% _%size-hint119753%_ _%seed119755%_))))
    (define make-symbolic-table/lock
      (lambda _g121115_
        (let ((_g121116_ (##length _g121115_)))
          (cond ((##fx= _g121116_ 0)
                 (apply make-symbolic-table/lock__0 _g121115_))
                ((##fx= _g121116_ 1)
                 (apply make-symbolic-table/lock__1 _g121115_))
                ((##fx= _g121116_ 2)
                 (apply make-symbolic-table/lock__% _g121115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g121115_))))))
    (define symbolic-table-ref
      (lambda (_%tab119694%_ _%key119695%_ _%default119696%_)
        (let ((_%table119698%_ (&raw-table-table _%tab119694%_))
              (_%seed119699%_ (&raw-table-seed _%tab119694%_)))
          (let* ((_%h119701%_
                  (fxxor (##symbol-hash _%key119695%_) _%seed119699%_))
                 (_%size119704%_ (vector-length _%table119698%_))
                 (_%entries119707%_ (##fxquotient _%size119704%_ '2))
                 (_%start119710%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119701%_ _%entries119707%_)
                   '1)))
            (let _%loop119714%_ ((_%probe119717%_ _%start119710%_)
                                 (_%i119719%_ '1)
                                 (_%deleted119721%_ '#f))
              (let ((_%k119724%_ (vector-ref _%table119698%_ _%probe119717%_)))
                (if (eq? _%k119724%_ (macro-unused-obj))
                    _%default119696%_
                    (if (eq? _%k119724%_ (macro-deleted-obj))
                        (_%loop119714%_
                         (let ((_%next-probe119729%_
                                (fx+ _%start119710%_
                                     _%i119719%_
                                     (fx* _%i119719%_ _%i119719%_))))
                           (##fxmodulo _%next-probe119729%_ _%size119704%_))
                         (##fx+ _%i119719%_ '1)
                         (let ((_%$e119732%_ _%deleted119721%_))
                           (if _%$e119732%_ _%$e119732%_ _%probe119717%_)))
                        (if (eq? _%key119695%_ _%k119724%_)
                            (vector-ref
                             _%table119698%_
                             (##fx+ _%probe119717%_ '1))
                            (_%loop119714%_
                             (let ((_%next-probe119737%_
                                    (fx+ _%start119710%_
                                         _%i119719%_
                                         (fx* _%i119719%_ _%i119719%_))))
                               (##fxmodulo
                                _%next-probe119737%_
                                _%size119704%_))
                             (##fx+ _%i119719%_ '1)
                             _%deleted119721%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab119665%_ _%key119666%_ _%default119667%_)
        (let ((_%lock119669%_ (&raw-table-lock _%tab119665%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119674%_ ((_%spin119677%_ '0))
              (if (##fx= (##vector-cas! _%lock119669%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119669%_ '1 (current-thread))
                  (if (##fx< _%spin119677%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119674%_ (##fx+ _%spin119677%_ '1)))
                      (let ((_%owner119683%_ (##vector-ref _%lock119669%_ '1)))
                        (if (eq? _%owner119683%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119683%_)
                                (let () (##thread-yield!) (_%again119674%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119689%_
                 (symbolic-table-ref
                  _%tab119665%_
                  _%key119666%_
                  _%default119667%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119669%_ '1 '#f)
                (##vector-cas! _%lock119669%_ '0 '0 '1)))
            _%$r119689%_))))
    (define __symbolic-table-set!
      (lambda (_%tab119617%_ _%key119618%_ _%value119619%_)
        (let ((_%table119621%_ (&raw-table-table _%tab119617%_))
              (_%seed119622%_ (&raw-table-seed _%tab119617%_)))
          (let* ((_%h119624%_
                  (fxxor (##symbol-hash _%key119618%_) _%seed119622%_))
                 (_%size119627%_ (vector-length _%table119621%_))
                 (_%entries119630%_ (##fxquotient _%size119627%_ '2))
                 (_%start119633%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119624%_ _%entries119630%_)
                   '1)))
            (let _%loop119637%_ ((_%probe119640%_ _%start119633%_)
                                 (_%i119642%_ '1)
                                 (_%deleted119644%_ '#f))
              (let ((_%k119647%_ (vector-ref _%table119621%_ _%probe119640%_)))
                (if (eq? _%k119647%_ (macro-unused-obj))
                    (if _%deleted119644%_
                        (begin
                          (vector-set!
                           _%table119621%_
                           _%deleted119644%_
                           _%key119618%_)
                          (vector-set!
                           _%table119621%_
                           (##fx+ _%deleted119644%_ '1)
                           _%value119619%_)
                          (&raw-table-count-set!
                           _%tab119617%_
                           (##fx+ (&raw-table-count _%tab119617%_) '1)))
                        (begin
                          (vector-set!
                           _%table119621%_
                           _%probe119640%_
                           _%key119618%_)
                          (vector-set!
                           _%table119621%_
                           (##fx+ _%probe119640%_ '1)
                           _%value119619%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119617%_
                             (##fx- (&raw-table-free _%tab119617%_) '1))
                            (&raw-table-count-set!
                             _%tab119617%_
                             (##fx+ (&raw-table-count _%tab119617%_) '1)))))
                    (if (eq? _%k119647%_ (macro-deleted-obj))
                        (_%loop119637%_
                         (let ((_%next-probe119654%_
                                (fx+ _%start119633%_
                                     _%i119642%_
                                     (fx* _%i119642%_ _%i119642%_))))
                           (##fxmodulo _%next-probe119654%_ _%size119627%_))
                         (##fx+ _%i119642%_ '1)
                         (let ((_%$e119657%_ _%deleted119644%_))
                           (if _%$e119657%_ _%$e119657%_ _%probe119640%_)))
                        (if (eq? _%key119618%_ _%k119647%_)
                            (let ()
                              (vector-set!
                               _%table119621%_
                               _%probe119640%_
                               _%key119618%_)
                              (vector-set!
                               _%table119621%_
                               (##fx+ _%probe119640%_ '1)
                               _%value119619%_))
                            (_%loop119637%_
                             (let ((_%next-probe119662%_
                                    (fx+ _%start119633%_
                                         _%i119642%_
                                         (fx* _%i119642%_ _%i119642%_))))
                               (##fxmodulo
                                _%next-probe119662%_
                                _%size119627%_))
                             (##fx+ _%i119642%_ '1)
                             _%deleted119644%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab119613%_ _%key119614%_ _%value119615%_)
        (if (##fx< (&raw-table-free _%tab119613%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119613%_))
                    '4))
            (__raw-table-rehash! _%tab119613%_)
            '#!void)
        (__symbolic-table-set! _%tab119613%_ _%key119614%_ _%value119615%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab119583%_ _%key119584%_ _%value119585%_)
        (let ((_%lock119588%_ (&raw-table-lock _%tab119583%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119593%_ ((_%spin119596%_ '0))
              (if (##fx= (##vector-cas! _%lock119588%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119588%_ '1 (current-thread))
                  (if (##fx< _%spin119596%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119593%_ (##fx+ _%spin119596%_ '1)))
                      (let ((_%owner119602%_ (##vector-ref _%lock119588%_ '1)))
                        (if (eq? _%owner119602%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119602%_)
                                (let () (##thread-yield!) (_%again119593%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119608%_
                 (symbolic-table-set!
                  _%tab119583%_
                  _%key119584%_
                  _%value119585%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119588%_ '1 '#f)
                (##vector-cas! _%lock119588%_ '0 '0 '1)))
            _%$r119608%_))))
    (define __symbolic-table-update!
      (lambda (_%tab119534%_
               _%key119535%_
               _%symbolic-table-update!119536%_
               _%default119537%_)
        (let ((_%table119539%_ (&raw-table-table _%tab119534%_))
              (_%seed119540%_ (&raw-table-seed _%tab119534%_)))
          (let* ((_%h119542%_
                  (fxxor (##symbol-hash _%key119535%_) _%seed119540%_))
                 (_%size119545%_ (vector-length _%table119539%_))
                 (_%entries119548%_ (##fxquotient _%size119545%_ '2))
                 (_%start119551%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119542%_ _%entries119548%_)
                   '1)))
            (let _%loop119555%_ ((_%probe119558%_ _%start119551%_)
                                 (_%i119560%_ '1)
                                 (_%deleted119562%_ '#f))
              (let ((_%k119565%_ (vector-ref _%table119539%_ _%probe119558%_)))
                (if (eq? _%k119565%_ (macro-unused-obj))
                    (if _%deleted119562%_
                        (begin
                          (vector-set!
                           _%table119539%_
                           _%deleted119562%_
                           _%key119535%_)
                          (vector-set!
                           _%table119539%_
                           (##fx+ _%deleted119562%_ '1)
                           (_%symbolic-table-update!119536%_
                            _%default119537%_))
                          (&raw-table-count-set!
                           _%tab119534%_
                           (##fx+ (&raw-table-count _%tab119534%_) '1)))
                        (begin
                          (vector-set!
                           _%table119539%_
                           _%probe119558%_
                           _%key119535%_)
                          (vector-set!
                           _%table119539%_
                           (##fx+ _%probe119558%_ '1)
                           (_%symbolic-table-update!119536%_
                            _%default119537%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119534%_
                             (##fx- (&raw-table-free _%tab119534%_) '1))
                            (&raw-table-count-set!
                             _%tab119534%_
                             (##fx+ (&raw-table-count _%tab119534%_) '1)))))
                    (if (eq? _%k119565%_ (macro-deleted-obj))
                        (_%loop119555%_
                         (let ((_%next-probe119572%_
                                (fx+ _%start119551%_
                                     _%i119560%_
                                     (fx* _%i119560%_ _%i119560%_))))
                           (##fxmodulo _%next-probe119572%_ _%size119545%_))
                         (##fx+ _%i119560%_ '1)
                         (let ((_%$e119575%_ _%deleted119562%_))
                           (if _%$e119575%_ _%$e119575%_ _%probe119558%_)))
                        (if (eq? _%key119535%_ _%k119565%_)
                            (let ()
                              (vector-set!
                               _%table119539%_
                               _%probe119558%_
                               _%key119535%_)
                              (vector-set!
                               _%table119539%_
                               (##fx+ _%probe119558%_ '1)
                               (_%symbolic-table-update!119536%_
                                (vector-ref
                                 _%table119539%_
                                 (##fx+ _%probe119558%_ '1)))))
                            (_%loop119555%_
                             (let ((_%next-probe119580%_
                                    (fx+ _%start119551%_
                                         _%i119560%_
                                         (fx* _%i119560%_ _%i119560%_))))
                               (##fxmodulo
                                _%next-probe119580%_
                                _%size119545%_))
                             (##fx+ _%i119560%_ '1)
                             _%deleted119562%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab119529%_
               _%key119530%_
               _%symbolic-table-update!119531%_
               _%default119532%_)
        (if (##fx< (&raw-table-free _%tab119529%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119529%_))
                    '4))
            (__raw-table-rehash! _%tab119529%_)
            '#!void)
        (__symbolic-table-update!
         _%tab119529%_
         _%key119530%_
         _%symbolic-table-update!119531%_
         _%default119532%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab119498%_
               _%key119499%_
               _%symbolic-table-update!119500%_
               _%default119501%_)
        (let ((_%lock119504%_ (&raw-table-lock _%tab119498%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119509%_ ((_%spin119512%_ '0))
              (if (##fx= (##vector-cas! _%lock119504%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119504%_ '1 (current-thread))
                  (if (##fx< _%spin119512%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119509%_ (##fx+ _%spin119512%_ '1)))
                      (let ((_%owner119518%_ (##vector-ref _%lock119504%_ '1)))
                        (if (eq? _%owner119518%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119518%_)
                                (let () (##thread-yield!) (_%again119509%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119524%_
                 (_%symbolic-table-update!119500%_
                  _%tab119498%_
                  _%key119499%_
                  _%symbolic-table-update!119500%_
                  _%default119501%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119504%_ '1 '#f)
                (##vector-cas! _%lock119504%_ '0 '0 '1)))
            _%$r119524%_))))
    (define symbolic-table-delete!
      (lambda (_%tab119455%_ _%key119456%_)
        (let ((_%table119458%_ (&raw-table-table _%tab119455%_))
              (_%seed119460%_ (&raw-table-seed _%tab119455%_)))
          (let* ((_%h119463%_
                  (fxxor (##symbol-hash _%key119456%_) _%seed119460%_))
                 (_%size119466%_ (vector-length _%table119458%_))
                 (_%entries119469%_ (##fxquotient _%size119466%_ '2))
                 (_%start119472%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119463%_ _%entries119469%_)
                   '1)))
            (let _%loop119476%_ ((_%probe119479%_ _%start119472%_)
                                 (_%i119481%_ '1))
              (let ((_%k119484%_ (vector-ref _%table119458%_ _%probe119479%_)))
                (if (eq? _%k119484%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119484%_ (macro-deleted-obj))
                        (_%loop119476%_
                         (let ((_%next-probe119489%_
                                (fx+ _%start119472%_
                                     _%i119481%_
                                     (fx* _%i119481%_ _%i119481%_))))
                           (##fxmodulo _%next-probe119489%_ _%size119466%_))
                         (##fx+ _%i119481%_ '1))
                        (if (eq? _%key119456%_ _%k119484%_)
                            (let ()
                              (vector-set!
                               _%table119458%_
                               _%probe119479%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119458%_
                               (##fx+ _%probe119479%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119455%_
                               (##fx- (&raw-table-count _%tab119455%_) '1)))
                            (_%loop119476%_
                             (let ((_%next-probe119495%_
                                    (fx+ _%start119472%_
                                         _%i119481%_
                                         (fx* _%i119481%_ _%i119481%_))))
                               (##fxmodulo
                                _%next-probe119495%_
                                _%size119466%_))
                             (##fx+ _%i119481%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab119425%_ _%key119427%_)
        (let ((_%lock119430%_ (&raw-table-lock _%tab119425%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119435%_ ((_%spin119438%_ '0))
              (if (##fx= (##vector-cas! _%lock119430%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119430%_ '1 (current-thread))
                  (if (##fx< _%spin119438%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119435%_ (##fx+ _%spin119438%_ '1)))
                      (let ((_%owner119444%_ (##vector-ref _%lock119430%_ '1)))
                        (if (eq? _%owner119444%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119444%_)
                                (let () (##thread-yield!) (_%again119435%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119450%_
                 (symbolic-table-delete! _%tab119425%_ _%key119427%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119430%_ '1 '#f)
                (##vector-cas! _%lock119430%_ '0 '0 '1)))
            _%$r119450%_))))
    (define make-string-table__%
      (lambda (_%size-hint119407%_ _%seed119408%_)
        (make-raw-table__1
         _%size-hint119407%_
         string-hash
         ##string=?
         _%seed119408%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint119414%_ '#f) (_%seed119416%_ '0))
          (make-string-table__% _%size-hint119414%_ _%seed119416%_))))
    (define make-string-table__1
      (lambda (_%size-hint119418%_)
        (let ((_%seed119420%_ '0))
          (make-string-table__% _%size-hint119418%_ _%seed119420%_))))
    (define make-string-table
      (lambda _g121117_
        (let ((_g121118_ (##length _g121117_)))
          (cond ((##fx= _g121118_ 0) (apply make-string-table__0 _g121117_))
                ((##fx= _g121118_ 1) (apply make-string-table__1 _g121117_))
                ((##fx= _g121118_ 2) (apply make-string-table__% _g121117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g121117_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint119387%_ _%seed119389%_)
        (make-raw-table/lock__%
         _%size-hint119387%_
         string-hash
         ##string=?
         _%seed119389%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint119395%_ '#f) (_%seed119397%_ '0))
          (make-string-table/lock__% _%size-hint119395%_ _%seed119397%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint119399%_)
        (let ((_%seed119401%_ '0))
          (make-string-table/lock__% _%size-hint119399%_ _%seed119401%_))))
    (define make-string-table/lock
      (lambda _g121119_
        (let ((_g121120_ (##length _g121119_)))
          (cond ((##fx= _g121120_ 0)
                 (apply make-string-table/lock__0 _g121119_))
                ((##fx= _g121120_ 1)
                 (apply make-string-table/lock__1 _g121119_))
                ((##fx= _g121120_ 2)
                 (apply make-string-table/lock__% _g121119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g121119_))))))
    (define string-table-ref
      (lambda (_%tab119340%_ _%key119341%_ _%default119342%_)
        (let ((_%table119344%_ (&raw-table-table _%tab119340%_))
              (_%seed119345%_ (&raw-table-seed _%tab119340%_)))
          (let* ((_%h119347%_
                  (fxxor (##string=?-hash _%key119341%_) _%seed119345%_))
                 (_%size119350%_ (vector-length _%table119344%_))
                 (_%entries119353%_ (##fxquotient _%size119350%_ '2))
                 (_%start119356%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119347%_ _%entries119353%_)
                   '1)))
            (let _%loop119360%_ ((_%probe119363%_ _%start119356%_)
                                 (_%i119365%_ '1)
                                 (_%deleted119367%_ '#f))
              (let ((_%k119370%_ (vector-ref _%table119344%_ _%probe119363%_)))
                (if (eq? _%k119370%_ (macro-unused-obj))
                    _%default119342%_
                    (if (eq? _%k119370%_ (macro-deleted-obj))
                        (_%loop119360%_
                         (let ((_%next-probe119375%_
                                (fx+ _%start119356%_
                                     _%i119365%_
                                     (fx* _%i119365%_ _%i119365%_))))
                           (##fxmodulo _%next-probe119375%_ _%size119350%_))
                         (##fx+ _%i119365%_ '1)
                         (let ((_%$e119378%_ _%deleted119367%_))
                           (if _%$e119378%_ _%$e119378%_ _%probe119363%_)))
                        (if (##string=? _%key119341%_ _%k119370%_)
                            (vector-ref
                             _%table119344%_
                             (##fx+ _%probe119363%_ '1))
                            (_%loop119360%_
                             (let ((_%next-probe119383%_
                                    (fx+ _%start119356%_
                                         _%i119365%_
                                         (fx* _%i119365%_ _%i119365%_))))
                               (##fxmodulo
                                _%next-probe119383%_
                                _%size119350%_))
                             (##fx+ _%i119365%_ '1)
                             _%deleted119367%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab119311%_ _%key119312%_ _%default119313%_)
        (let ((_%lock119315%_ (&raw-table-lock _%tab119311%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119320%_ ((_%spin119323%_ '0))
              (if (##fx= (##vector-cas! _%lock119315%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119315%_ '1 (current-thread))
                  (if (##fx< _%spin119323%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119320%_ (##fx+ _%spin119323%_ '1)))
                      (let ((_%owner119329%_ (##vector-ref _%lock119315%_ '1)))
                        (if (eq? _%owner119329%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119329%_)
                                (let () (##thread-yield!) (_%again119320%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119335%_
                 (string-table-ref
                  _%tab119311%_
                  _%key119312%_
                  _%default119313%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119315%_ '1 '#f)
                (##vector-cas! _%lock119315%_ '0 '0 '1)))
            _%$r119335%_))))
    (define __string-table-set!
      (lambda (_%tab119263%_ _%key119264%_ _%value119265%_)
        (let ((_%table119267%_ (&raw-table-table _%tab119263%_))
              (_%seed119268%_ (&raw-table-seed _%tab119263%_)))
          (let* ((_%h119270%_
                  (fxxor (##string=?-hash _%key119264%_) _%seed119268%_))
                 (_%size119273%_ (vector-length _%table119267%_))
                 (_%entries119276%_ (##fxquotient _%size119273%_ '2))
                 (_%start119279%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119270%_ _%entries119276%_)
                   '1)))
            (let _%loop119283%_ ((_%probe119286%_ _%start119279%_)
                                 (_%i119288%_ '1)
                                 (_%deleted119290%_ '#f))
              (let ((_%k119293%_ (vector-ref _%table119267%_ _%probe119286%_)))
                (if (eq? _%k119293%_ (macro-unused-obj))
                    (if _%deleted119290%_
                        (begin
                          (vector-set!
                           _%table119267%_
                           _%deleted119290%_
                           _%key119264%_)
                          (vector-set!
                           _%table119267%_
                           (##fx+ _%deleted119290%_ '1)
                           _%value119265%_)
                          (&raw-table-count-set!
                           _%tab119263%_
                           (##fx+ (&raw-table-count _%tab119263%_) '1)))
                        (begin
                          (vector-set!
                           _%table119267%_
                           _%probe119286%_
                           _%key119264%_)
                          (vector-set!
                           _%table119267%_
                           (##fx+ _%probe119286%_ '1)
                           _%value119265%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119263%_
                             (##fx- (&raw-table-free _%tab119263%_) '1))
                            (&raw-table-count-set!
                             _%tab119263%_
                             (##fx+ (&raw-table-count _%tab119263%_) '1)))))
                    (if (eq? _%k119293%_ (macro-deleted-obj))
                        (_%loop119283%_
                         (let ((_%next-probe119300%_
                                (fx+ _%start119279%_
                                     _%i119288%_
                                     (fx* _%i119288%_ _%i119288%_))))
                           (##fxmodulo _%next-probe119300%_ _%size119273%_))
                         (##fx+ _%i119288%_ '1)
                         (let ((_%$e119303%_ _%deleted119290%_))
                           (if _%$e119303%_ _%$e119303%_ _%probe119286%_)))
                        (if (##string=? _%key119264%_ _%k119293%_)
                            (let ()
                              (vector-set!
                               _%table119267%_
                               _%probe119286%_
                               _%key119264%_)
                              (vector-set!
                               _%table119267%_
                               (##fx+ _%probe119286%_ '1)
                               _%value119265%_))
                            (_%loop119283%_
                             (let ((_%next-probe119308%_
                                    (fx+ _%start119279%_
                                         _%i119288%_
                                         (fx* _%i119288%_ _%i119288%_))))
                               (##fxmodulo
                                _%next-probe119308%_
                                _%size119273%_))
                             (##fx+ _%i119288%_ '1)
                             _%deleted119290%_))))))))))
    (define string-table-set!
      (lambda (_%tab119259%_ _%key119260%_ _%value119261%_)
        (if (##fx< (&raw-table-free _%tab119259%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119259%_))
                    '4))
            (__raw-table-rehash! _%tab119259%_)
            '#!void)
        (__string-table-set! _%tab119259%_ _%key119260%_ _%value119261%_)))
    (define string-table-set!/lock
      (lambda (_%tab119229%_ _%key119230%_ _%value119231%_)
        (let ((_%lock119234%_ (&raw-table-lock _%tab119229%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119239%_ ((_%spin119242%_ '0))
              (if (##fx= (##vector-cas! _%lock119234%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119234%_ '1 (current-thread))
                  (if (##fx< _%spin119242%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119239%_ (##fx+ _%spin119242%_ '1)))
                      (let ((_%owner119248%_ (##vector-ref _%lock119234%_ '1)))
                        (if (eq? _%owner119248%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119248%_)
                                (let () (##thread-yield!) (_%again119239%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119254%_
                 (string-table-set!
                  _%tab119229%_
                  _%key119230%_
                  _%value119231%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119234%_ '1 '#f)
                (##vector-cas! _%lock119234%_ '0 '0 '1)))
            _%$r119254%_))))
    (define __string-table-update!
      (lambda (_%tab119180%_
               _%key119181%_
               _%string-table-update!119182%_
               _%default119183%_)
        (let ((_%table119185%_ (&raw-table-table _%tab119180%_))
              (_%seed119186%_ (&raw-table-seed _%tab119180%_)))
          (let* ((_%h119188%_
                  (fxxor (##string=?-hash _%key119181%_) _%seed119186%_))
                 (_%size119191%_ (vector-length _%table119185%_))
                 (_%entries119194%_ (##fxquotient _%size119191%_ '2))
                 (_%start119197%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119188%_ _%entries119194%_)
                   '1)))
            (let _%loop119201%_ ((_%probe119204%_ _%start119197%_)
                                 (_%i119206%_ '1)
                                 (_%deleted119208%_ '#f))
              (let ((_%k119211%_ (vector-ref _%table119185%_ _%probe119204%_)))
                (if (eq? _%k119211%_ (macro-unused-obj))
                    (if _%deleted119208%_
                        (begin
                          (vector-set!
                           _%table119185%_
                           _%deleted119208%_
                           _%key119181%_)
                          (vector-set!
                           _%table119185%_
                           (##fx+ _%deleted119208%_ '1)
                           (_%string-table-update!119182%_ _%default119183%_))
                          (&raw-table-count-set!
                           _%tab119180%_
                           (##fx+ (&raw-table-count _%tab119180%_) '1)))
                        (begin
                          (vector-set!
                           _%table119185%_
                           _%probe119204%_
                           _%key119181%_)
                          (vector-set!
                           _%table119185%_
                           (##fx+ _%probe119204%_ '1)
                           (_%string-table-update!119182%_ _%default119183%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119180%_
                             (##fx- (&raw-table-free _%tab119180%_) '1))
                            (&raw-table-count-set!
                             _%tab119180%_
                             (##fx+ (&raw-table-count _%tab119180%_) '1)))))
                    (if (eq? _%k119211%_ (macro-deleted-obj))
                        (_%loop119201%_
                         (let ((_%next-probe119218%_
                                (fx+ _%start119197%_
                                     _%i119206%_
                                     (fx* _%i119206%_ _%i119206%_))))
                           (##fxmodulo _%next-probe119218%_ _%size119191%_))
                         (##fx+ _%i119206%_ '1)
                         (let ((_%$e119221%_ _%deleted119208%_))
                           (if _%$e119221%_ _%$e119221%_ _%probe119204%_)))
                        (if (##string=? _%key119181%_ _%k119211%_)
                            (let ()
                              (vector-set!
                               _%table119185%_
                               _%probe119204%_
                               _%key119181%_)
                              (vector-set!
                               _%table119185%_
                               (##fx+ _%probe119204%_ '1)
                               (_%string-table-update!119182%_
                                (vector-ref
                                 _%table119185%_
                                 (##fx+ _%probe119204%_ '1)))))
                            (_%loop119201%_
                             (let ((_%next-probe119226%_
                                    (fx+ _%start119197%_
                                         _%i119206%_
                                         (fx* _%i119206%_ _%i119206%_))))
                               (##fxmodulo
                                _%next-probe119226%_
                                _%size119191%_))
                             (##fx+ _%i119206%_ '1)
                             _%deleted119208%_))))))))))
    (define string-table-update!
      (lambda (_%tab119175%_
               _%key119176%_
               _%string-table-update!119177%_
               _%default119178%_)
        (if (##fx< (&raw-table-free _%tab119175%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119175%_))
                    '4))
            (__raw-table-rehash! _%tab119175%_)
            '#!void)
        (__string-table-update!
         _%tab119175%_
         _%key119176%_
         _%string-table-update!119177%_
         _%default119178%_)))
    (define string-table-update!/lock
      (lambda (_%tab119144%_
               _%key119145%_
               _%string-table-update!119146%_
               _%default119147%_)
        (let ((_%lock119150%_ (&raw-table-lock _%tab119144%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119155%_ ((_%spin119158%_ '0))
              (if (##fx= (##vector-cas! _%lock119150%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119150%_ '1 (current-thread))
                  (if (##fx< _%spin119158%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119155%_ (##fx+ _%spin119158%_ '1)))
                      (let ((_%owner119164%_ (##vector-ref _%lock119150%_ '1)))
                        (if (eq? _%owner119164%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119164%_)
                                (let () (##thread-yield!) (_%again119155%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119170%_
                 (_%string-table-update!119146%_
                  _%tab119144%_
                  _%key119145%_
                  _%string-table-update!119146%_
                  _%default119147%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119150%_ '1 '#f)
                (##vector-cas! _%lock119150%_ '0 '0 '1)))
            _%$r119170%_))))
    (define string-table-delete!
      (lambda (_%tab119101%_ _%key119102%_)
        (let ((_%table119104%_ (&raw-table-table _%tab119101%_))
              (_%seed119106%_ (&raw-table-seed _%tab119101%_)))
          (let* ((_%h119109%_
                  (fxxor (##string=?-hash _%key119102%_) _%seed119106%_))
                 (_%size119112%_ (vector-length _%table119104%_))
                 (_%entries119115%_ (##fxquotient _%size119112%_ '2))
                 (_%start119118%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119109%_ _%entries119115%_)
                   '1)))
            (let _%loop119122%_ ((_%probe119125%_ _%start119118%_)
                                 (_%i119127%_ '1))
              (let ((_%k119130%_ (vector-ref _%table119104%_ _%probe119125%_)))
                (if (eq? _%k119130%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119130%_ (macro-deleted-obj))
                        (_%loop119122%_
                         (let ((_%next-probe119135%_
                                (fx+ _%start119118%_
                                     _%i119127%_
                                     (fx* _%i119127%_ _%i119127%_))))
                           (##fxmodulo _%next-probe119135%_ _%size119112%_))
                         (##fx+ _%i119127%_ '1))
                        (if (##string=? _%key119102%_ _%k119130%_)
                            (let ()
                              (vector-set!
                               _%table119104%_
                               _%probe119125%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119104%_
                               (##fx+ _%probe119125%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119101%_
                               (##fx- (&raw-table-count _%tab119101%_) '1)))
                            (_%loop119122%_
                             (let ((_%next-probe119141%_
                                    (fx+ _%start119118%_
                                         _%i119127%_
                                         (fx* _%i119127%_ _%i119127%_))))
                               (##fxmodulo
                                _%next-probe119141%_
                                _%size119112%_))
                             (##fx+ _%i119127%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab119071%_ _%key119073%_)
        (let ((_%lock119076%_ (&raw-table-lock _%tab119071%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119081%_ ((_%spin119084%_ '0))
              (if (##fx= (##vector-cas! _%lock119076%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119076%_ '1 (current-thread))
                  (if (##fx< _%spin119084%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119081%_ (##fx+ _%spin119084%_ '1)))
                      (let ((_%owner119090%_ (##vector-ref _%lock119076%_ '1)))
                        (if (eq? _%owner119090%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119090%_)
                                (let () (##thread-yield!) (_%again119081%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119096%_
                 (string-table-delete! _%tab119071%_ _%key119073%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119076%_ '1 '#f)
                (##vector-cas! _%lock119076%_ '0 '0 '1)))
            _%$r119096%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint119053%_ _%seed119054%_)
        (make-raw-table__1
         _%size-hint119053%_
         immediate-hash
         eq?
         _%seed119054%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint119060%_ '#f) (_%seed119062%_ '0))
          (make-immediate-table__% _%size-hint119060%_ _%seed119062%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint119064%_)
        (let ((_%seed119066%_ '0))
          (make-immediate-table__% _%size-hint119064%_ _%seed119066%_))))
    (define make-immediate-table
      (lambda _g121121_
        (let ((_g121122_ (##length _g121121_)))
          (cond ((##fx= _g121122_ 0) (apply make-immediate-table__0 _g121121_))
                ((##fx= _g121122_ 1) (apply make-immediate-table__1 _g121121_))
                ((##fx= _g121122_ 2) (apply make-immediate-table__% _g121121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g121121_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint119033%_ _%seed119035%_)
        (make-raw-table/lock__%
         _%size-hint119033%_
         immediate-hash
         eq?
         _%seed119035%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint119041%_ '#f) (_%seed119043%_ '0))
          (make-immediate-table/lock__% _%size-hint119041%_ _%seed119043%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint119045%_)
        (let ((_%seed119047%_ '0))
          (make-immediate-table/lock__% _%size-hint119045%_ _%seed119047%_))))
    (define make-immediate-table/lock
      (lambda _g121123_
        (let ((_g121124_ (##length _g121123_)))
          (cond ((##fx= _g121124_ 0)
                 (apply make-immediate-table/lock__0 _g121123_))
                ((##fx= _g121124_ 1)
                 (apply make-immediate-table/lock__1 _g121123_))
                ((##fx= _g121124_ 2)
                 (apply make-immediate-table/lock__% _g121123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g121123_))))))
    (define immediate-table-ref
      (lambda (_%tab118986%_ _%key118987%_ _%default118988%_)
        (let ((_%table118990%_ (&raw-table-table _%tab118986%_))
              (_%seed118991%_ (&raw-table-seed _%tab118986%_)))
          (let* ((_%h118993%_
                  (fxxor (immediate-hash _%key118987%_) _%seed118991%_))
                 (_%size118996%_ (vector-length _%table118990%_))
                 (_%entries118999%_ (##fxquotient _%size118996%_ '2))
                 (_%start119002%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118993%_ _%entries118999%_)
                   '1)))
            (let _%loop119006%_ ((_%probe119009%_ _%start119002%_)
                                 (_%i119011%_ '1)
                                 (_%deleted119013%_ '#f))
              (let ((_%k119016%_ (vector-ref _%table118990%_ _%probe119009%_)))
                (if (eq? _%k119016%_ (macro-unused-obj))
                    _%default118988%_
                    (if (eq? _%k119016%_ (macro-deleted-obj))
                        (_%loop119006%_
                         (let ((_%next-probe119021%_
                                (fx+ _%start119002%_
                                     _%i119011%_
                                     (fx* _%i119011%_ _%i119011%_))))
                           (##fxmodulo _%next-probe119021%_ _%size118996%_))
                         (##fx+ _%i119011%_ '1)
                         (let ((_%$e119024%_ _%deleted119013%_))
                           (if _%$e119024%_ _%$e119024%_ _%probe119009%_)))
                        (if (eq? _%key118987%_ _%k119016%_)
                            (vector-ref
                             _%table118990%_
                             (##fx+ _%probe119009%_ '1))
                            (_%loop119006%_
                             (let ((_%next-probe119029%_
                                    (fx+ _%start119002%_
                                         _%i119011%_
                                         (fx* _%i119011%_ _%i119011%_))))
                               (##fxmodulo
                                _%next-probe119029%_
                                _%size118996%_))
                             (##fx+ _%i119011%_ '1)
                             _%deleted119013%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab118957%_ _%key118958%_ _%default118959%_)
        (let ((_%lock118961%_ (&raw-table-lock _%tab118957%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118966%_ ((_%spin118969%_ '0))
              (if (##fx= (##vector-cas! _%lock118961%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118961%_ '1 (current-thread))
                  (if (##fx< _%spin118969%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118966%_ (##fx+ _%spin118969%_ '1)))
                      (let ((_%owner118975%_ (##vector-ref _%lock118961%_ '1)))
                        (if (eq? _%owner118975%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118975%_)
                                (let () (##thread-yield!) (_%again118966%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118981%_
                 (immediate-table-ref
                  _%tab118957%_
                  _%key118958%_
                  _%default118959%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118961%_ '1 '#f)
                (##vector-cas! _%lock118961%_ '0 '0 '1)))
            _%$r118981%_))))
    (define __immediate-table-set!
      (lambda (_%tab118909%_ _%key118910%_ _%value118911%_)
        (let ((_%table118913%_ (&raw-table-table _%tab118909%_))
              (_%seed118914%_ (&raw-table-seed _%tab118909%_)))
          (let* ((_%h118916%_
                  (fxxor (immediate-hash _%key118910%_) _%seed118914%_))
                 (_%size118919%_ (vector-length _%table118913%_))
                 (_%entries118922%_ (##fxquotient _%size118919%_ '2))
                 (_%start118925%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118916%_ _%entries118922%_)
                   '1)))
            (let _%loop118929%_ ((_%probe118932%_ _%start118925%_)
                                 (_%i118934%_ '1)
                                 (_%deleted118936%_ '#f))
              (let ((_%k118939%_ (vector-ref _%table118913%_ _%probe118932%_)))
                (if (eq? _%k118939%_ (macro-unused-obj))
                    (if _%deleted118936%_
                        (begin
                          (vector-set!
                           _%table118913%_
                           _%deleted118936%_
                           _%key118910%_)
                          (vector-set!
                           _%table118913%_
                           (##fx+ _%deleted118936%_ '1)
                           _%value118911%_)
                          (&raw-table-count-set!
                           _%tab118909%_
                           (##fx+ (&raw-table-count _%tab118909%_) '1)))
                        (begin
                          (vector-set!
                           _%table118913%_
                           _%probe118932%_
                           _%key118910%_)
                          (vector-set!
                           _%table118913%_
                           (##fx+ _%probe118932%_ '1)
                           _%value118911%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118909%_
                             (##fx- (&raw-table-free _%tab118909%_) '1))
                            (&raw-table-count-set!
                             _%tab118909%_
                             (##fx+ (&raw-table-count _%tab118909%_) '1)))))
                    (if (eq? _%k118939%_ (macro-deleted-obj))
                        (_%loop118929%_
                         (let ((_%next-probe118946%_
                                (fx+ _%start118925%_
                                     _%i118934%_
                                     (fx* _%i118934%_ _%i118934%_))))
                           (##fxmodulo _%next-probe118946%_ _%size118919%_))
                         (##fx+ _%i118934%_ '1)
                         (let ((_%$e118949%_ _%deleted118936%_))
                           (if _%$e118949%_ _%$e118949%_ _%probe118932%_)))
                        (if (eq? _%key118910%_ _%k118939%_)
                            (let ()
                              (vector-set!
                               _%table118913%_
                               _%probe118932%_
                               _%key118910%_)
                              (vector-set!
                               _%table118913%_
                               (##fx+ _%probe118932%_ '1)
                               _%value118911%_))
                            (_%loop118929%_
                             (let ((_%next-probe118954%_
                                    (fx+ _%start118925%_
                                         _%i118934%_
                                         (fx* _%i118934%_ _%i118934%_))))
                               (##fxmodulo
                                _%next-probe118954%_
                                _%size118919%_))
                             (##fx+ _%i118934%_ '1)
                             _%deleted118936%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab118905%_ _%key118906%_ _%value118907%_)
        (if (##fx< (&raw-table-free _%tab118905%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118905%_))
                    '4))
            (__raw-table-rehash! _%tab118905%_)
            '#!void)
        (__immediate-table-set! _%tab118905%_ _%key118906%_ _%value118907%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab118875%_ _%key118876%_ _%value118877%_)
        (let ((_%lock118880%_ (&raw-table-lock _%tab118875%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118885%_ ((_%spin118888%_ '0))
              (if (##fx= (##vector-cas! _%lock118880%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118880%_ '1 (current-thread))
                  (if (##fx< _%spin118888%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118885%_ (##fx+ _%spin118888%_ '1)))
                      (let ((_%owner118894%_ (##vector-ref _%lock118880%_ '1)))
                        (if (eq? _%owner118894%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118894%_)
                                (let () (##thread-yield!) (_%again118885%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118900%_
                 (immediate-table-set!
                  _%tab118875%_
                  _%key118876%_
                  _%value118877%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118880%_ '1 '#f)
                (##vector-cas! _%lock118880%_ '0 '0 '1)))
            _%$r118900%_))))
    (define __immediate-table-update!
      (lambda (_%tab118826%_
               _%key118827%_
               _%immediate-table-update!118828%_
               _%default118829%_)
        (let ((_%table118831%_ (&raw-table-table _%tab118826%_))
              (_%seed118832%_ (&raw-table-seed _%tab118826%_)))
          (let* ((_%h118834%_
                  (fxxor (immediate-hash _%key118827%_) _%seed118832%_))
                 (_%size118837%_ (vector-length _%table118831%_))
                 (_%entries118840%_ (##fxquotient _%size118837%_ '2))
                 (_%start118843%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118834%_ _%entries118840%_)
                   '1)))
            (let _%loop118847%_ ((_%probe118850%_ _%start118843%_)
                                 (_%i118852%_ '1)
                                 (_%deleted118854%_ '#f))
              (let ((_%k118857%_ (vector-ref _%table118831%_ _%probe118850%_)))
                (if (eq? _%k118857%_ (macro-unused-obj))
                    (if _%deleted118854%_
                        (begin
                          (vector-set!
                           _%table118831%_
                           _%deleted118854%_
                           _%key118827%_)
                          (vector-set!
                           _%table118831%_
                           (##fx+ _%deleted118854%_ '1)
                           (_%immediate-table-update!118828%_
                            _%default118829%_))
                          (&raw-table-count-set!
                           _%tab118826%_
                           (##fx+ (&raw-table-count _%tab118826%_) '1)))
                        (begin
                          (vector-set!
                           _%table118831%_
                           _%probe118850%_
                           _%key118827%_)
                          (vector-set!
                           _%table118831%_
                           (##fx+ _%probe118850%_ '1)
                           (_%immediate-table-update!118828%_
                            _%default118829%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118826%_
                             (##fx- (&raw-table-free _%tab118826%_) '1))
                            (&raw-table-count-set!
                             _%tab118826%_
                             (##fx+ (&raw-table-count _%tab118826%_) '1)))))
                    (if (eq? _%k118857%_ (macro-deleted-obj))
                        (_%loop118847%_
                         (let ((_%next-probe118864%_
                                (fx+ _%start118843%_
                                     _%i118852%_
                                     (fx* _%i118852%_ _%i118852%_))))
                           (##fxmodulo _%next-probe118864%_ _%size118837%_))
                         (##fx+ _%i118852%_ '1)
                         (let ((_%$e118867%_ _%deleted118854%_))
                           (if _%$e118867%_ _%$e118867%_ _%probe118850%_)))
                        (if (eq? _%key118827%_ _%k118857%_)
                            (let ()
                              (vector-set!
                               _%table118831%_
                               _%probe118850%_
                               _%key118827%_)
                              (vector-set!
                               _%table118831%_
                               (##fx+ _%probe118850%_ '1)
                               (_%immediate-table-update!118828%_
                                (vector-ref
                                 _%table118831%_
                                 (##fx+ _%probe118850%_ '1)))))
                            (_%loop118847%_
                             (let ((_%next-probe118872%_
                                    (fx+ _%start118843%_
                                         _%i118852%_
                                         (fx* _%i118852%_ _%i118852%_))))
                               (##fxmodulo
                                _%next-probe118872%_
                                _%size118837%_))
                             (##fx+ _%i118852%_ '1)
                             _%deleted118854%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab118821%_
               _%key118822%_
               _%immediate-table-update!118823%_
               _%default118824%_)
        (if (##fx< (&raw-table-free _%tab118821%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118821%_))
                    '4))
            (__raw-table-rehash! _%tab118821%_)
            '#!void)
        (__immediate-table-update!
         _%tab118821%_
         _%key118822%_
         _%immediate-table-update!118823%_
         _%default118824%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab118790%_
               _%key118791%_
               _%immediate-table-update!118792%_
               _%default118793%_)
        (let ((_%lock118796%_ (&raw-table-lock _%tab118790%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118801%_ ((_%spin118804%_ '0))
              (if (##fx= (##vector-cas! _%lock118796%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118796%_ '1 (current-thread))
                  (if (##fx< _%spin118804%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118801%_ (##fx+ _%spin118804%_ '1)))
                      (let ((_%owner118810%_ (##vector-ref _%lock118796%_ '1)))
                        (if (eq? _%owner118810%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118810%_)
                                (let () (##thread-yield!) (_%again118801%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118816%_
                 (_%immediate-table-update!118792%_
                  _%tab118790%_
                  _%key118791%_
                  _%immediate-table-update!118792%_
                  _%default118793%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118796%_ '1 '#f)
                (##vector-cas! _%lock118796%_ '0 '0 '1)))
            _%$r118816%_))))
    (define immediate-table-delete!
      (lambda (_%tab118747%_ _%key118748%_)
        (let ((_%table118750%_ (&raw-table-table _%tab118747%_))
              (_%seed118752%_ (&raw-table-seed _%tab118747%_)))
          (let* ((_%h118755%_
                  (fxxor (immediate-hash _%key118748%_) _%seed118752%_))
                 (_%size118758%_ (vector-length _%table118750%_))
                 (_%entries118761%_ (##fxquotient _%size118758%_ '2))
                 (_%start118764%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118755%_ _%entries118761%_)
                   '1)))
            (let _%loop118768%_ ((_%probe118771%_ _%start118764%_)
                                 (_%i118773%_ '1))
              (let ((_%k118776%_ (vector-ref _%table118750%_ _%probe118771%_)))
                (if (eq? _%k118776%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118776%_ (macro-deleted-obj))
                        (_%loop118768%_
                         (let ((_%next-probe118781%_
                                (fx+ _%start118764%_
                                     _%i118773%_
                                     (fx* _%i118773%_ _%i118773%_))))
                           (##fxmodulo _%next-probe118781%_ _%size118758%_))
                         (##fx+ _%i118773%_ '1))
                        (if (eq? _%key118748%_ _%k118776%_)
                            (let ()
                              (vector-set!
                               _%table118750%_
                               _%probe118771%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118750%_
                               (##fx+ _%probe118771%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118747%_
                               (##fx- (&raw-table-count _%tab118747%_) '1)))
                            (_%loop118768%_
                             (let ((_%next-probe118787%_
                                    (fx+ _%start118764%_
                                         _%i118773%_
                                         (fx* _%i118773%_ _%i118773%_))))
                               (##fxmodulo
                                _%next-probe118787%_
                                _%size118758%_))
                             (##fx+ _%i118773%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab118717%_ _%key118719%_)
        (let ((_%lock118722%_ (&raw-table-lock _%tab118717%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118727%_ ((_%spin118730%_ '0))
              (if (##fx= (##vector-cas! _%lock118722%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118722%_ '1 (current-thread))
                  (if (##fx< _%spin118730%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118727%_ (##fx+ _%spin118730%_ '1)))
                      (let ((_%owner118736%_ (##vector-ref _%lock118722%_ '1)))
                        (if (eq? _%owner118736%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118736%_)
                                (let () (##thread-yield!) (_%again118727%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118742%_
                 (immediate-table-delete! _%tab118717%_ _%key118719%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118722%_ '1 '#f)
                (##vector-cas! _%lock118722%_ '0 '0 '1)))
            _%$r118742%_))))
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
      (lambda (_%tab118715%_)
        (##unchecked-structure-ref
         _%tab118715%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab118713%_)
        (##unchecked-structure-ref
         _%tab118713%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab118711%_)
        (##unchecked-structure-ref
         _%tab118711%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab118708%_ _%val118709%_)
        (##unchecked-structure-set!
         _%tab118708%_
         _%val118709%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab118705%_ _%val118706%_)
        (##unchecked-structure-set!
         _%tab118705%_
         _%val118706%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab118702%_ _%val118703%_)
        (##unchecked-structure-set!
         _%tab118702%_
         _%val118703%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint118666%_
               _%klass118667%_
               _%flags118668%_
               _%lock118669%_)
        (let ((_%gcht118671%_
               (__gc-table-new
                (if (fixnum? _%size-hint118666%_) _%size-hint118666%_ '16)
                _%flags118668%_)))
          (##structure _%klass118667%_ _%gcht118671%_ '#f _%lock118669%_))))
    (define make-gc-table__0
      (lambda (_%size-hint118676%_)
        (let* ((_%klass118678%_ __gc-table::t)
               (_%flags118680%_ '0)
               (_%lock118682%_ '#f))
          (make-gc-table__%
           _%size-hint118676%_
           _%klass118678%_
           _%flags118680%_
           _%lock118682%_))))
    (define make-gc-table__1
      (lambda (_%size-hint118684%_ _%klass118685%_)
        (let* ((_%flags118687%_ '0) (_%lock118689%_ '#f))
          (make-gc-table__%
           _%size-hint118684%_
           _%klass118685%_
           _%flags118687%_
           _%lock118689%_))))
    (define make-gc-table__2
      (lambda (_%size-hint118691%_ _%klass118692%_ _%flags118693%_)
        (let ((_%lock118695%_ '#f))
          (make-gc-table__%
           _%size-hint118691%_
           _%klass118692%_
           _%flags118693%_
           _%lock118695%_))))
    (define make-gc-table
      (lambda _g121125_
        (let ((_g121126_ (##length _g121125_)))
          (cond ((##fx= _g121126_ 1) (apply make-gc-table__0 _g121125_))
                ((##fx= _g121126_ 2) (apply make-gc-table__1 _g121125_))
                ((##fx= _g121126_ 3) (apply make-gc-table__2 _g121125_))
                ((##fx= _g121126_ 4) (apply make-gc-table__% _g121125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g121125_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint118643%_ _%klass118644%_ _%flags118645%_)
        (make-gc-table__%
         _%size-hint118643%_
         _%klass118644%_
         _%flags118645%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint118650%_)
        (let* ((_%klass118652%_ __gc-table::t) (_%flags118654%_ '0))
          (make-gc-table/lock__%
           _%size-hint118650%_
           _%klass118652%_
           _%flags118654%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint118656%_ _%klass118657%_)
        (let ((_%flags118659%_ '0))
          (make-gc-table/lock__%
           _%size-hint118656%_
           _%klass118657%_
           _%flags118659%_))))
    (define make-gc-table/lock
      (lambda _g121127_
        (let ((_g121128_ (##length _g121127_)))
          (cond ((##fx= _g121128_ 1) (apply make-gc-table/lock__0 _g121127_))
                ((##fx= _g121128_ 2) (apply make-gc-table/lock__1 _g121127_))
                ((##fx= _g121128_ 3) (apply make-gc-table/lock__% _g121127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g121127_))))))
    (define __gc-table-immediate
      (lambda (_%tab118634%_)
        (let ((_%$e118636%_ (&gc-table-immediate _%tab118634%_)))
          (if _%$e118636%_
              _%$e118636%_
              (let ((_%immediate118640%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab118634%_ _%immediate118640%_)
                _%immediate118640%_)))))
    (define __gc-table-new
      (lambda (_%size118624%_ _%flags118625%_)
        (let* ((_%flags118627%_
                (##fxand _%flags118625%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags118629%_
                (fxior _%flags118627%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht118631%_
                (##gc-hash-table-allocate
                 _%size118624%_
                 _%flags118629%_
                 __gc-table-loads)))
          _%gcht118631%_)))
    (define __gc-table-e
      (lambda (_%tab118619%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht118622%_ (&gc-table-gcht _%tab118619%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht118622%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht118622%_
              (begin
                (__gc-table-rehash! _%tab118619%_)
                (&gc-table-gcht _%tab118619%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab118610%_)
        (let* ((_%old-table118612%_ (&gc-table-gcht _%tab118610%_))
               (_%new-table118614%_
                (##gc-hash-table-resize! _%old-table118612%_ __gc-table-loads))
               (_%gcht118616%_
                (##gc-hash-table-rehash!
                 _%old-table118612%_
                 _%new-table118614%_)))
          (&gc-table-gcht-set! _%tab118610%_ _%gcht118616%_))))
    (define gc-table-ref
      (lambda (_%tab118594%_ _%key118595%_ _%default118596%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key118595%_)
            (let* ((_%gcht118600%_ (__gc-table-e _%tab118594%_))
                   (_%value118602%_
                    (##gc-hash-table-ref _%gcht118600%_ _%key118595%_)))
              (if (eq? _%value118602%_ (macro-unused-obj))
                  _%default118596%_
                  _%value118602%_))
            (let ((_%$e118604%_ (&gc-table-immediate _%tab118594%_)))
              (if _%$e118604%_
                  (immediate-table-ref
                   _%$e118604%_
                   _%key118595%_
                   _%default118596%_)
                  _%default118596%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab118568%_ _%key118569%_ _%default118570%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again118574%_ ((_%spin118577%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab118568%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab118568%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin118577%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again118574%_ (##fx+ _%spin118577%_ '1)))
                    (let ((_%owner118583%_
                           (##vector-ref (&gc-table-lock _%tab118568%_) '1)))
                      (if (eq? _%owner118583%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner118583%_)
                              (let () (##thread-yield!) (_%again118574%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r118589%_
               (gc-table-ref _%tab118568%_ _%key118569%_ _%default118570%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab118568%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab118568%_) '0 '0 '1)))
          _%$r118589%_)))
    (define gc-table-set!
      (lambda (_%tab118561%_ _%key118562%_ _%value118563%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key118562%_)
            (let ((_%gcht118566%_ (__gc-table-e _%tab118561%_)))
              (if (##gc-hash-table-set!
                   _%gcht118566%_
                   _%key118562%_
                   _%value118563%_)
                  (begin
                    (__gc-table-rehash! _%tab118561%_)
                    (gc-table-set!
                     _%tab118561%_
                     _%key118562%_
                     _%value118563%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab118561%_)
             _%key118562%_
             _%value118563%_))))
    (define gc-table-set/lock!
      (lambda (_%tab118535%_ _%key118536%_ _%value118537%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again118541%_ ((_%spin118544%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab118535%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab118535%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin118544%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again118541%_ (##fx+ _%spin118544%_ '1)))
                    (let ((_%owner118550%_
                           (##vector-ref (&gc-table-lock _%tab118535%_) '1)))
                      (if (eq? _%owner118550%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner118550%_)
                              (let () (##thread-yield!) (_%again118541%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r118556%_
               (gc-table-set! _%tab118535%_ _%key118536%_ _%value118537%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab118535%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab118535%_) '0 '0 '1)))
          _%$r118556%_)))
    (define gc-table-update!
      (lambda (_%tab118528%_ _%key118529%_ _%update118530%_ _%default118531%_)
        (if (##mem-allocated? _%key118529%_)
            (let ((_%value118533%_
                   (gc-table-ref
                    _%tab118528%_
                    _%key118529%_
                    _%default118531%_)))
              (gc-table-set!
               _%tab118528%_
               _%key118529%_
               (_%update118530%_ _%value118533%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab118528%_)
             _%key118529%_
             _%update118530%_
             _%default118531%_))))
    (define gc-table-update!/lock
      (lambda (_%tab118501%_ _%key118502%_ _%update118503%_ _%default118504%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again118508%_ ((_%spin118511%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab118501%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab118501%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin118511%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again118508%_ (##fx+ _%spin118511%_ '1)))
                    (let ((_%owner118517%_
                           (##vector-ref (&gc-table-lock _%tab118501%_) '1)))
                      (if (eq? _%owner118517%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner118517%_)
                              (let () (##thread-yield!) (_%again118508%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r118523%_
               (gc-table-update!
                _%tab118501%_
                _%key118502%_
                _%update118503%_
                _%default118504%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab118501%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab118501%_) '0 '0 '1)))
          _%$r118523%_)))
    (define gc-table-delete!
      (lambda (_%tab118489%_ _%key118490%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key118490%_)
            (let ((_%gcht118494%_ (__gc-table-e _%tab118489%_)))
              (if (##gc-hash-table-set!
                   _%gcht118494%_
                   _%key118490%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab118489%_)
                    (gc-table-delete! _%tab118489%_ _%key118490%_))
                  '#!void))
            (let ((_%$e118496%_ (&gc-table-immediate _%tab118489%_)))
              (if _%$e118496%_
                  (immediate-table-delete! _%$e118496%_ _%key118490%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab118464%_ _%key118465%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again118469%_ ((_%spin118472%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab118464%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab118464%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin118472%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again118469%_ (##fx+ _%spin118472%_ '1)))
                    (let ((_%owner118478%_
                           (##vector-ref (&gc-table-lock _%tab118464%_) '1)))
                      (if (eq? _%owner118478%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner118478%_)
                              (let () (##thread-yield!) (_%again118469%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r118484%_ (gc-table-delete! _%tab118464%_ _%key118465%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab118464%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab118464%_) '0 '0 '1)))
          _%$r118484%_)))
    (define gc-table-for-each
      (lambda (_%tab118453%_ _%proc118454%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht118457%_ (__gc-table-e _%tab118453%_)))
            (##gc-hash-table-for-each _%proc118454%_ _%gcht118457%_))
          (let ((_%$e118459%_ (&gc-table-immediate _%tab118453%_)))
            (if _%$e118459%_
                (raw-table-for-each _%$e118459%_ _%proc118454%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab118428%_ _%proc118429%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again118433%_ ((_%spin118436%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab118428%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab118428%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin118436%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again118433%_ (##fx+ _%spin118436%_ '1)))
                    (let ((_%owner118442%_
                           (##vector-ref (&gc-table-lock _%tab118428%_) '1)))
                      (if (eq? _%owner118442%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner118442%_)
                              (let () (##thread-yield!) (_%again118433%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r118448%_ (gc-table-for-each _%tab118428%_ _%proc118429%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab118428%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab118428%_) '0 '0 '1)))
          _%$r118448%_)))
    (define table-new__%
      (lambda (_%tab118410%_ _%size-hint118411%_)
        (if (table? _%tab118410%_)
            '#!void
            (error '"table-new: expected table" _%tab118410%_))
        (letrec* ((_%loads118413%_ (macro-table-loads _%tab118410%_)))
          (make-table
           'size:
           (let ((_%$e118415%_ _%size-hint118411%_))
             (if _%$e118415%_ _%$e118415%_ '16))
           'init:
           (macro-table-init _%tab118410%_)
           'weak-keys:
           (##fx< '0
                  (fxand (macro-table-flags _%tab118410%_)
                         (macro-gc-hash-table-flag-weak-keys)))
           'weak-values:
           (##fx< '0
                  (fxand (macro-table-flags _%tab118410%_)
                         (macro-gc-hash-table-flag-weak-vals)))
           'test:
           (macro-table-test _%tab118410%_)
           'hash:
           (macro-table-hash _%tab118410%_)
           'min-load:
           (##f64vector-ref _%loads118413%_ '0)
           'max-load:
           (##f64vector-ref _%loads118413%_ '2)))))
    (define table-new__0
      (lambda (_%tab118421%_)
        (let ((_%size-hint118423%_ '#f))
          (table-new__% _%tab118421%_ _%size-hint118423%_))))
    (define table-new
      (lambda _g121129_
        (let ((_g121130_ (##length _g121129_)))
          (cond ((##fx= _g121130_ 1) (apply table-new__0 _g121129_))
                ((##fx= _g121130_ 2) (apply table-new__% _g121129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  table-new
                  _g121129_))))))
    (define gc-table-new__%
      (lambda (_%tab118396%_ _%size-hint118397%_)
        (##structure
         (##structure-type _%tab118396%_)
         (table-new__% (&gc-table-gcht _%tab118396%_) _%size-hint118397%_)
         '#f)))
    (define gc-table-new__0
      (lambda (_%tab118402%_)
        (let ((_%size-hint118404%_ '#f))
          (gc-table-new__% _%tab118402%_ _%size-hint118404%_))))
    (define gc-table-new
      (lambda _g121131_
        (let ((_g121132_ (##length _g121131_)))
          (cond ((##fx= _g121132_ 1) (apply gc-table-new__0 _g121131_))
                ((##fx= _g121132_ 2) (apply gc-table-new__% _g121131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gc-table-new
                  _g121131_))))))
    (define gc-table-copy
      (lambda (_%tab118388%_)
        (let ((_%result118390%_
               (gc-table-new__%
                _%tab118388%_
                (macro-gc-hash-table-count (__gc-table-e _%tab118388%_)))))
          (gc-table-for-each
           _%tab118388%_
           (lambda (_%k118392%_ _%v118393%_)
             (gc-table-set! _%result118390%_ _%k118392%_ _%v118393%_)))
          _%result118390%_)))
    (define gc-table-copy/lock
      (lambda (_%tab118364%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again118368%_ ((_%spin118371%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab118364%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab118364%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin118371%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again118368%_ (##fx+ _%spin118371%_ '1)))
                    (let ((_%owner118377%_
                           (##vector-ref (&gc-table-lock _%tab118364%_) '1)))
                      (if (eq? _%owner118377%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner118377%_)
                              (let () (##thread-yield!) (_%again118368%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r118383%_ (gc-table-copy _%tab118364%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab118364%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab118364%_) '0 '0 '1)))
          _%$r118383%_)))
    (define gc-table-clear!
      (lambda (_%tab118357%_)
        (let* ((_%gcht118359%_ (__gc-table-e _%tab118357%_))
               (_%new-table118361%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht118359%_))))
          (&gc-table-gcht-set! _%tab118357%_ _%new-table118361%_)
          (&gc-table-immediate-set! _%tab118357%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab118333%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again118337%_ ((_%spin118340%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab118333%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab118333%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin118340%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again118337%_ (##fx+ _%spin118340%_ '1)))
                    (let ((_%owner118346%_
                           (##vector-ref (&gc-table-lock _%tab118333%_) '1)))
                      (if (eq? _%owner118346%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner118346%_)
                              (let () (##thread-yield!) (_%again118337%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r118352%_ (gc-table-clear! _%tab118333%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab118333%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab118333%_) '0 '0 '1)))
          _%$r118352%_)))
    (define gc-table-length
      (lambda (_%tab118325%_)
        (let ((_%gcht118327%_ (__gc-table-e _%tab118325%_)))
          (fx+ (macro-gc-hash-table-count _%gcht118327%_)
               (let ((_%$e118329%_ (&gc-table-immediate _%tab118325%_)))
                 (if _%$e118329%_ (&raw-table-count _%$e118329%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab118301%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again118305%_ ((_%spin118308%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab118301%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab118301%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin118308%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again118305%_ (##fx+ _%spin118308%_ '1)))
                    (let ((_%owner118314%_
                           (##vector-ref (&gc-table-lock _%tab118301%_) '1)))
                      (if (eq? _%owner118314%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner118314%_)
                              (let () (##thread-yield!) (_%again118305%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r118320%_ (gc-table-length _%tab118301%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab118301%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab118301%_) '0 '0 '1)))
          _%$r118320%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj118267%_)
        (declare (not interrupts-enabled))
        (let ((_%val118270%_
               (gc-table-ref __object-eq-hash _%obj118267%_ '#f)))
          (if _%val118270%_
              _%val118270%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again118274%_ ((_%spin118277%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin118277%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again118274%_ (##fx+ _%spin118277%_ '1)))
                            (let ((_%owner118283%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner118283%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner118283%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again118274%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r118296%_
                       (let ((_%val118289%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj118267%_
                               '#f)))
                         (if _%val118289%_
                             _%val118289%_
                             (let ((_%h118291%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e118293%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e118293%_ _%$e118293%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj118267%_
                                _%h118291%_)
                               _%h118291%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r118296%_))))))))
