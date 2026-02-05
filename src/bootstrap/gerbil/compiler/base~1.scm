(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g157934_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157936_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157938_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157940_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157941_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157943_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157944_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157946_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157947_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157949_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157950_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx156946%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx156946%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx156949%_)
        (let* ((_%g156952156976%_
                (lambda (_%g156953156972%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156953156972%_))))
               (_%g156951157275%_
                (lambda (_%g156953156980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156953156980%_))
                      (let ((_%e156956156983%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g156953156980%_))))
                        (let ((_%hd156957156987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156956156983%_)))
                              (_%tl156958156990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156956156983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156958156990%_))
                              (let ((_%e156959156993%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl156958156990%_))))
                                (let ((_%hd156960156997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156959156993%_)))
                                      (_%tl156961157000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156959156993%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl156961157000%_))
                                      (let ((_g157925_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl156961157000%_
                                                '0))))
                                        (begin
                                          (let ((_g157926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g157925_)
                                                       (##values-length
                                                        _g157925_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g157926_ 2)))
                                                (error "Context expects 2 values"
                                                       _g157926_)))
                                          (let ((_%target156962157003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g157925_ 0)))
                                                (_%tl156964157006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g157925_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156964157006%_))
                                                (letrec ((_%loop156965157009%_
                                                          (lambda (_%hd156963157013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause156969157016%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd156963157013%_))
                        (let ((_%e156966157018%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd156963157013%_))))
                          (let ((_%lp-hd156967157022%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156966157018%_)))
                                (_%lp-tl156968157025%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156966157018%_))))
                            (_%loop156965157009%_
                             _%lp-tl156968157025%_
                             (cons _%lp-hd156967157022%_
                                   _%clause156969157016%_))))
                        (let ((_%clause156970157028%_
                               (reverse _%clause156969157016%_)))
                          ((lambda (_%g156954157031%_ _%g156955157033%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g156955157033%_))
                                 (let* ((_%g157052157069%_
                                         (lambda (_%g157053157065%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g157053157065%_))))
                                        (_%g157051157128%_
                                         (lambda (_%g157053157073%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g157053157073%_))
                                               (let ((_g157927_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g157053157073%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g157928_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g157927_)
                        (##values-length _g157927_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g157928_ 2)))
                 (error "Context expects 2 values" _g157928_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target157055157076%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157927_
                                                             0)))
                                                         (_%tl157057157079%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157927_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl157057157079%_))
                                                         (letrec ((_%loop157058157082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd157056157086%_ _%clause157062157089%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd157056157086%_))
                                 (let ((_%e157059157091%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd157056157086%_))))
                                   (let ((_%lp-hd157060157095%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157059157091%_)))
                                         (_%lp-tl157061157098%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157059157091%_))))
                                     (_%loop157058157082%_
                                      _%lp-tl157061157098%_
                                      (cons _%lp-hd157060157095%_
                                            _%clause157062157089%_))))
                                 (let ((_%clause157063157101%_
                                        (reverse _%clause157062157089%_)))
                                   ((lambda (_%g157054157104%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%g156955157033%_
                                  (let ((__tmp157929
                                         (lambda (_%g157119157122%_
                                                  _%g157120157125%_)
                                           (cons _%g157119157122%_
                                                 _%g157120157125%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp157929
                                     '()
                                     _%g157054157104%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause157063157101%_))))))
                   (_%loop157058157082%_ _%target157055157076%_ '()))
                 (_%g157052157069%_ _%g157053157073%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g157052157069%_
                                                _%g157053157073%_)))))
                                   (_%g157051157128%_
                                    (let ((__tmp157932
                                           (lambda (_%clause157132%_)
                                             (let* ((_%__stx157844157845%_
                                                     _%clause157132%_)
                                                    (_%g157136157163%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx157844157845%_)))))
                                               (let ((_%__kont157847157848%_
                                                      (lambda (_%g157138157248%_
                                                               _%g157139157250%_)
                                                        (cons _%g157139157250%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g157138157248%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157849157850%_
                                                      (lambda (_%g157146157200%_
                                                               _%g157147157202%_
                                                               _%g157148157203%_)
                                                        (cons _%g157148157203%_
                                                              (cons _%g157147157202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g157146157200%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx157844157845%_))
                                                     (let ((_%e157140157228%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx157844157845%_))))
                                                       (let ((_%tl157142157235%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e157140157228%_)))
                     (_%hd157141157232%_
                      (let () (declare (not safe)) (##car _%e157140157228%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl157142157235%_))
                     (let ((_%e157143157238%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl157142157235%_))))
                       (let ((_%tl157145157245%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e157143157238%_)))
                             (_%hd157144157242%_
                              (let ()
                                (declare (not safe))
                                (##car _%e157143157238%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl157145157245%_))
                             (_%__kont157847157848%_
                              _%hd157144157242%_
                              _%hd157141157232%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl157145157245%_))
                                 (let ((_%e157155157190%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl157145157245%_))))
                                   (let ((_%tl157157157197%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157155157190%_)))
                                         (_%hd157156157194%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157155157190%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl157157157197%_))
                                         (_%__kont157849157850%_
                                          _%hd157156157194%_
                                          _%hd157144157242%_
                                          _%hd157141157232%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g157136157163%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g157136157163%_))))))
                     (let () (declare (not safe)) (_%g157136157163%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g157136157163%_)))))))
                                          (__tmp157930
                                           (let ((__tmp157931
                                                  (lambda (_%g157266157269%_
                                                           _%g157267157272%_)
                                                    (cons _%g157266157269%_
                                                          _%g157267157272%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp157931
                                              '()
                                              _%g156954157031%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp157932 __tmp157930))))
                                 (_%g156952156976%_ _%g156953156980%_)))
                           _%clause156970157028%_
                           _%hd156960156997%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop156965157009%_
                                                   _%target156962157003%_
                                                   '()))
                                                (_%g156952156976%_
                                                 _%g156953156980%_)))))
                                      (_%g156952156976%_ _%g156953156980%_))))
                              (_%g156952156976%_ _%g156953156980%_))))
                      (_%g156952156976%_ _%g156953156980%_)))))
          (_%g156951157275%_ _%stx156949%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj157894
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157894
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157894
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157894
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 ':init! '12 '#f '#f))
        (let ((__tmp157933 |gxc[1]#_g157934_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 __tmp157933 '3 '#f '#f))
        (let ((__tmp157935 |gxc[1]#_g157936_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 __tmp157935 '13 '#f '#f))
        (let ((__tmp157937 |gxc[1]#_g157938_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 __tmp157937 '14 '#f '#f))
        (let ((__tmp157939
               (cons (cons 'gensyms |gxc[1]#_g157940_|)
                     (cons (cons 'bindings |gxc[1]#_g157941_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 __tmp157939 '15 '#f '#f))
        (let ((__tmp157942
               (cons (cons 'gensyms |gxc[1]#_g157943_|)
                     (cons (cons 'bindings |gxc[1]#_g157944_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 __tmp157942 '16 '#f '#f))
        (let ((__tmp157945
               (cons (cons 'gensyms |gxc[1]#_g157946_|)
                     (cons (cons 'bindings |gxc[1]#_g157947_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 __tmp157945 '17 '#f '#f))
        (let ((__tmp157948
               (cons (cons 'gensyms |gxc[1]#_g157949_|)
                     (cons (cons 'bindings |gxc[1]#_g157950_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 __tmp157948 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157894 '() '20 '#f '#f))
        __obj157894))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx157281%_)
        (let* ((_%g157285157299%_
                (lambda (_%g157286157295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157286157295%_))))
               (_%g157284157340%_
                (lambda (_%g157286157303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157286157303%_))
                      (let ((_%e157288157306%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157286157303%_))))
                        (let ((_%hd157289157310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157288157306%_)))
                              (_%tl157290157313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157288157306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157290157313%_))
                              (let ((_%e157291157316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157290157313%_))))
                                (let ((_%hd157292157320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157291157316%_)))
                                      (_%tl157293157323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157291157316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157293157323%_))
                                      ((lambda (_%g157287157326%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%g157287157326%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd157292157320%_)
                                      (_%g157285157299%_ _%g157286157303%_))))
                              (_%g157285157299%_ _%g157286157303%_))))
                      (_%g157285157299%_ _%g157286157303%_)))))
          (_%g157284157340%_ _%$stx157281%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx157344%_)
        (let* ((_%g157348157362%_
                (lambda (_%g157349157358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157349157358%_))))
               (_%g157347157403%_
                (lambda (_%g157349157366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157349157366%_))
                      (let ((_%e157351157369%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157349157366%_))))
                        (let ((_%hd157352157373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157351157369%_)))
                              (_%tl157353157376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157351157369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157353157376%_))
                              (let ((_%e157354157379%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157353157376%_))))
                                (let ((_%hd157355157383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157354157379%_)))
                                      (_%tl157356157386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157354157379%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157356157386%_))
                                      ((lambda (_%g157350157389%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g157350157389%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd157355157383%_)
                                      (_%g157348157362%_ _%g157349157366%_))))
                              (_%g157348157362%_ _%g157349157366%_))))
                      (_%g157348157362%_ _%g157349157366%_)))))
          (_%g157347157403%_ _%$stx157344%_))))))
