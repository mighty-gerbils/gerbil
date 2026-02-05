(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g157772_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157774_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157776_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157778_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157779_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157781_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157782_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157784_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157785_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157787_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157788_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx156784%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx156784%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx156787%_)
        (let* ((_%g156790156814%_
                (lambda (_%g156791156810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156791156810%_))))
               (_%g156789157113%_
                (lambda (_%g156791156818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156791156818%_))
                      (let ((_%e156794156821%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g156791156818%_))))
                        (let ((_%hd156795156825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156794156821%_)))
                              (_%tl156796156828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156794156821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156796156828%_))
                              (let ((_%e156797156831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl156796156828%_))))
                                (let ((_%hd156798156835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156797156831%_)))
                                      (_%tl156799156838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156797156831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl156799156838%_))
                                      (let ((_g157763_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl156799156838%_
                                                '0))))
                                        (begin
                                          (let ((_g157764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g157763_)
                                                       (##values-length
                                                        _g157763_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g157764_ 2)))
                                                (error "Context expects 2 values"
                                                       _g157764_)))
                                          (let ((_%target156800156841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g157763_ 0)))
                                                (_%tl156802156844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g157763_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156802156844%_))
                                                (letrec ((_%loop156803156847%_
                                                          (lambda (_%hd156801156851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause156807156854%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd156801156851%_))
                        (let ((_%e156804156856%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd156801156851%_))))
                          (let ((_%lp-hd156805156860%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156804156856%_)))
                                (_%lp-tl156806156863%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156804156856%_))))
                            (_%loop156803156847%_
                             _%lp-tl156806156863%_
                             (cons _%lp-hd156805156860%_
                                   _%clause156807156854%_))))
                        (let ((_%clause156808156866%_
                               (reverse _%clause156807156854%_)))
                          ((lambda (_%g156792156869%_ _%g156793156871%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g156793156871%_))
                                 (let* ((_%g156890156907%_
                                         (lambda (_%g156891156903%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g156891156903%_))))
                                        (_%g156889156966%_
                                         (lambda (_%g156891156911%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g156891156911%_))
                                               (let ((_g157765_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g156891156911%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g157766_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g157765_)
                        (##values-length _g157765_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g157766_ 2)))
                 (error "Context expects 2 values" _g157766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target156893156914%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157765_
                                                             0)))
                                                         (_%tl156895156917%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157765_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156895156917%_))
                                                         (letrec ((_%loop156896156920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd156894156924%_ _%clause156900156927%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd156894156924%_))
                                 (let ((_%e156897156929%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd156894156924%_))))
                                   (let ((_%lp-hd156898156933%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e156897156929%_)))
                                         (_%lp-tl156899156936%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e156897156929%_))))
                                     (_%loop156896156920%_
                                      _%lp-tl156899156936%_
                                      (cons _%lp-hd156898156933%_
                                            _%clause156900156927%_))))
                                 (let ((_%clause156901156939%_
                                        (reverse _%clause156900156927%_)))
                                   ((lambda (_%g156892156942%_)
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
                            (cons _%g156793156871%_
                                  (let ((__tmp157767
                                         (lambda (_%g156957156960%_
                                                  _%g156958156963%_)
                                           (cons _%g156957156960%_
                                                 _%g156958156963%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp157767
                                     '()
                                     _%g156892156942%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause156901156939%_))))))
                   (_%loop156896156920%_ _%target156893156914%_ '()))
                 (_%g156890156907%_ _%g156891156911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g156890156907%_
                                                _%g156891156911%_)))))
                                   (_%g156889156966%_
                                    (let ((__tmp157770
                                           (lambda (_%clause156970%_)
                                             (let* ((_%__stx157682157683%_
                                                     _%clause156970%_)
                                                    (_%g156974157001%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx157682157683%_)))))
                                               (let ((_%__kont157685157686%_
                                                      (lambda (_%g156976157086%_
                                                               _%g156977157088%_)
                                                        (cons _%g156977157088%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g156976157086%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157687157688%_
                                                      (lambda (_%g156984157038%_
                                                               _%g156985157040%_
                                                               _%g156986157041%_)
                                                        (cons _%g156986157041%_
                                                              (cons _%g156985157040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g156984157038%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx157682157683%_))
                                                     (let ((_%e156978157066%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx157682157683%_))))
                                                       (let ((_%tl156980157073%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e156978157066%_)))
                     (_%hd156979157070%_
                      (let () (declare (not safe)) (##car _%e156978157066%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl156980157073%_))
                     (let ((_%e156981157076%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl156980157073%_))))
                       (let ((_%tl156983157083%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156981157076%_)))
                             (_%hd156982157080%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156981157076%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156983157083%_))
                             (_%__kont157685157686%_
                              _%hd156982157080%_
                              _%hd156979157070%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl156983157083%_))
                                 (let ((_%e156993157028%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl156983157083%_))))
                                   (let ((_%tl156995157035%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e156993157028%_)))
                                         (_%hd156994157032%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e156993157028%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl156995157035%_))
                                         (_%__kont157687157688%_
                                          _%hd156994157032%_
                                          _%hd156982157080%_
                                          _%hd156979157070%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g156974157001%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g156974157001%_))))))
                     (let () (declare (not safe)) (_%g156974157001%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g156974157001%_)))))))
                                          (__tmp157768
                                           (let ((__tmp157769
                                                  (lambda (_%g157104157107%_
                                                           _%g157105157110%_)
                                                    (cons _%g157104157107%_
                                                          _%g157105157110%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp157769
                                              '()
                                              _%g156792156869%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp157770 __tmp157768))))
                                 (_%g156790156814%_ _%g156791156818%_)))
                           _%clause156808156866%_
                           _%hd156798156835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop156803156847%_
                                                   _%target156800156841%_
                                                   '()))
                                                (_%g156790156814%_
                                                 _%g156791156818%_)))))
                                      (_%g156790156814%_ _%g156791156818%_))))
                              (_%g156790156814%_ _%g156791156818%_))))
                      (_%g156790156814%_ _%g156791156818%_)))))
          (_%g156789157113%_ _%stx156787%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj157732
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
           __obj157732
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157732
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157732
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 ':init! '12 '#f '#f))
        (let ((__tmp157771 |gxc[1]#_g157772_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 __tmp157771 '3 '#f '#f))
        (let ((__tmp157773 |gxc[1]#_g157774_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 __tmp157773 '13 '#f '#f))
        (let ((__tmp157775 |gxc[1]#_g157776_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 __tmp157775 '14 '#f '#f))
        (let ((__tmp157777
               (cons (cons 'gensyms |gxc[1]#_g157778_|)
                     (cons (cons 'bindings |gxc[1]#_g157779_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 __tmp157777 '15 '#f '#f))
        (let ((__tmp157780
               (cons (cons 'gensyms |gxc[1]#_g157781_|)
                     (cons (cons 'bindings |gxc[1]#_g157782_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 __tmp157780 '16 '#f '#f))
        (let ((__tmp157783
               (cons (cons 'gensyms |gxc[1]#_g157784_|)
                     (cons (cons 'bindings |gxc[1]#_g157785_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 __tmp157783 '17 '#f '#f))
        (let ((__tmp157786
               (cons (cons 'gensyms |gxc[1]#_g157787_|)
                     (cons (cons 'bindings |gxc[1]#_g157788_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 __tmp157786 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157732 '() '20 '#f '#f))
        __obj157732))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx157119%_)
        (let* ((_%g157123157137%_
                (lambda (_%g157124157133%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157124157133%_))))
               (_%g157122157178%_
                (lambda (_%g157124157141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157124157141%_))
                      (let ((_%e157126157144%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157124157141%_))))
                        (let ((_%hd157127157148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157126157144%_)))
                              (_%tl157128157151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157126157144%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157128157151%_))
                              (let ((_%e157129157154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157128157151%_))))
                                (let ((_%hd157130157158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157129157154%_)))
                                      (_%tl157131157161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157129157154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157131157161%_))
                                      ((lambda (_%g157125157164%_)
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
                         (cons '() (cons _%g157125157164%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd157130157158%_)
                                      (_%g157123157137%_ _%g157124157141%_))))
                              (_%g157123157137%_ _%g157124157141%_))))
                      (_%g157123157137%_ _%g157124157141%_)))))
          (_%g157122157178%_ _%$stx157119%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx157182%_)
        (let* ((_%g157186157200%_
                (lambda (_%g157187157196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157187157196%_))))
               (_%g157185157241%_
                (lambda (_%g157187157204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157187157204%_))
                      (let ((_%e157189157207%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157187157204%_))))
                        (let ((_%hd157190157211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157189157207%_)))
                              (_%tl157191157214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157189157207%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157191157214%_))
                              (let ((_%e157192157217%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157191157214%_))))
                                (let ((_%hd157193157221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157192157217%_)))
                                      (_%tl157194157224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157192157217%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157194157224%_))
                                      ((lambda (_%g157188157227%_)
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
                         (cons _%g157188157227%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd157193157221%_)
                                      (_%g157186157200%_ _%g157187157204%_))))
                              (_%g157186157200%_ _%g157187157204%_))))
                      (_%g157186157200%_ _%g157187157204%_)))))
          (_%g157185157241%_ _%$stx157182%_))))))
