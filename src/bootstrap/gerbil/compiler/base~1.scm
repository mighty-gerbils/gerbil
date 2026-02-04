(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g157729_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157731_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157733_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157735_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157736_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157738_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157739_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157741_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157742_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157744_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157745_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx156820%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx156820%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx156823%_)
        (let* ((_%g156826156850%_
                (lambda (_%g156827156846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156827156846%_))))
               (_%g156825157149%_
                (lambda (_%g156827156854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156827156854%_))
                      (let ((_%e156830156857%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g156827156854%_))))
                        (let ((_%hd156831156861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156830156857%_)))
                              (_%tl156832156864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156830156857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156832156864%_))
                              (let ((_%e156833156867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl156832156864%_))))
                                (let ((_%hd156834156871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156833156867%_)))
                                      (_%tl156835156874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156833156867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl156835156874%_))
                                      (let ((_g157720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl156835156874%_
                                                '0))))
                                        (begin
                                          (let ((_g157721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g157720_)
                                                       (##values-length
                                                        _g157720_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g157721_ 2)))
                                                (error "Context expects 2 values"
                                                       _g157721_)))
                                          (let ((_%target156836156877%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g157720_ 0)))
                                                (_%tl156838156880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g157720_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156838156880%_))
                                                (letrec ((_%loop156839156883%_
                                                          (lambda (_%hd156837156887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause156843156890%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd156837156887%_))
                        (let ((_%e156840156892%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd156837156887%_))))
                          (let ((_%lp-hd156841156896%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156840156892%_)))
                                (_%lp-tl156842156899%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156840156892%_))))
                            (_%loop156839156883%_
                             _%lp-tl156842156899%_
                             (cons _%lp-hd156841156896%_
                                   _%clause156843156890%_))))
                        (let ((_%clause156844156902%_
                               (reverse _%clause156843156890%_)))
                          ((lambda (_%g156828156905%_ _%g156829156907%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g156829156907%_))
                                 (let* ((_%g156926156943%_
                                         (lambda (_%g156927156939%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g156927156939%_))))
                                        (_%g156925157002%_
                                         (lambda (_%g156927156947%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g156927156947%_))
                                               (let ((_g157722_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g156927156947%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g157723_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g157722_)
                        (##values-length _g157722_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g157723_ 2)))
                 (error "Context expects 2 values" _g157723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target156929156950%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157722_
                                                             0)))
                                                         (_%tl156931156953%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157722_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156931156953%_))
                                                         (letrec ((_%loop156932156956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd156930156960%_ _%clause156936156963%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd156930156960%_))
                                 (let ((_%e156933156965%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd156930156960%_))))
                                   (let ((_%lp-hd156934156969%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e156933156965%_)))
                                         (_%lp-tl156935156972%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e156933156965%_))))
                                     (_%loop156932156956%_
                                      _%lp-tl156935156972%_
                                      (cons _%lp-hd156934156969%_
                                            _%clause156936156963%_))))
                                 (let ((_%clause156937156975%_
                                        (reverse _%clause156936156963%_)))
                                   ((lambda (_%g156928156978%_)
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
                            (cons _%g156829156907%_
                                  (let ((__tmp157724
                                         (lambda (_%g156993156996%_
                                                  _%g156994156999%_)
                                           (cons _%g156993156996%_
                                                 _%g156994156999%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp157724
                                     '()
                                     _%g156928156978%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause156937156975%_))))))
                   (_%loop156932156956%_ _%target156929156950%_ '()))
                 (_%g156926156943%_ _%g156927156947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g156926156943%_
                                                _%g156927156947%_)))))
                                   (_%g156925157002%_
                                    (let ((__tmp157727
                                           (lambda (_%clause157006%_)
                                             (let* ((_%__stx157640157641%_
                                                     _%clause157006%_)
                                                    (_%g157010157037%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx157640157641%_)))))
                                               (let ((_%__kont157643157644%_
                                                      (lambda (_%g157012157122%_
                                                               _%g157013157124%_)
                                                        (cons _%g157013157124%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g157012157122%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157645157646%_
                                                      (lambda (_%g157020157074%_
                                                               _%g157021157076%_
                                                               _%g157022157077%_)
                                                        (cons _%g157022157077%_
                                                              (cons _%g157021157076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g157020157074%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx157640157641%_))
                                                     (let ((_%e157014157102%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx157640157641%_))))
                                                       (let ((_%tl157016157109%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e157014157102%_)))
                     (_%hd157015157106%_
                      (let () (declare (not safe)) (##car _%e157014157102%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl157016157109%_))
                     (let ((_%e157017157112%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl157016157109%_))))
                       (let ((_%tl157019157119%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e157017157112%_)))
                             (_%hd157018157116%_
                              (let ()
                                (declare (not safe))
                                (##car _%e157017157112%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl157019157119%_))
                             (_%__kont157643157644%_
                              _%hd157018157116%_
                              _%hd157015157106%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl157019157119%_))
                                 (let ((_%e157029157064%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl157019157119%_))))
                                   (let ((_%tl157031157071%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157029157064%_)))
                                         (_%hd157030157068%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157029157064%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl157031157071%_))
                                         (_%__kont157645157646%_
                                          _%hd157030157068%_
                                          _%hd157018157116%_
                                          _%hd157015157106%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g157010157037%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g157010157037%_))))))
                     (let () (declare (not safe)) (_%g157010157037%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g157010157037%_)))))))
                                          (__tmp157725
                                           (let ((__tmp157726
                                                  (lambda (_%g157140157143%_
                                                           _%g157141157146%_)
                                                    (cons _%g157140157143%_
                                                          _%g157141157146%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp157726
                                              '()
                                              _%g156828156905%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp157727 __tmp157725))))
                                 (_%g156826156850%_ _%g156827156854%_)))
                           _%clause156844156902%_
                           _%hd156834156871%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop156839156883%_
                                                   _%target156836156877%_
                                                   '()))
                                                (_%g156826156850%_
                                                 _%g156827156854%_)))))
                                      (_%g156826156850%_ _%g156827156854%_))))
                              (_%g156826156850%_ _%g156827156854%_))))
                      (_%g156826156850%_ _%g156827156854%_)))))
          (_%g156825157149%_ _%stx156823%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj157690
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
           __obj157690
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157690
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157690
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 ':init! '12 '#f '#f))
        (let ((__tmp157728 |gxc[1]#_g157729_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 __tmp157728 '3 '#f '#f))
        (let ((__tmp157730 |gxc[1]#_g157731_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 __tmp157730 '13 '#f '#f))
        (let ((__tmp157732 |gxc[1]#_g157733_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 __tmp157732 '14 '#f '#f))
        (let ((__tmp157734
               (cons (cons 'gensyms |gxc[1]#_g157735_|)
                     (cons (cons 'bindings |gxc[1]#_g157736_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 __tmp157734 '15 '#f '#f))
        (let ((__tmp157737
               (cons (cons 'gensyms |gxc[1]#_g157738_|)
                     (cons (cons 'bindings |gxc[1]#_g157739_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 __tmp157737 '16 '#f '#f))
        (let ((__tmp157740
               (cons (cons 'gensyms |gxc[1]#_g157741_|)
                     (cons (cons 'bindings |gxc[1]#_g157742_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 __tmp157740 '17 '#f '#f))
        (let ((__tmp157743
               (cons (cons 'gensyms |gxc[1]#_g157744_|)
                     (cons (cons 'bindings |gxc[1]#_g157745_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 __tmp157743 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157690 '() '20 '#f '#f))
        __obj157690))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx157155%_)
        (let* ((_%g157159157173%_
                (lambda (_%g157160157169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157160157169%_))))
               (_%g157158157214%_
                (lambda (_%g157160157177%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157160157177%_))
                      (let ((_%e157162157180%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157160157177%_))))
                        (let ((_%hd157163157184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157162157180%_)))
                              (_%tl157164157187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157162157180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157164157187%_))
                              (let ((_%e157165157190%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157164157187%_))))
                                (let ((_%hd157166157194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157165157190%_)))
                                      (_%tl157167157197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157165157190%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157167157197%_))
                                      ((lambda (_%g157161157200%_)
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
                         (cons '() (cons _%g157161157200%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd157166157194%_)
                                      (_%g157159157173%_ _%g157160157177%_))))
                              (_%g157159157173%_ _%g157160157177%_))))
                      (_%g157159157173%_ _%g157160157177%_)))))
          (_%g157158157214%_ _%$stx157155%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx157218%_)
        (let* ((_%g157222157236%_
                (lambda (_%g157223157232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157223157232%_))))
               (_%g157221157277%_
                (lambda (_%g157223157240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157223157240%_))
                      (let ((_%e157225157243%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157223157240%_))))
                        (let ((_%hd157226157247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157225157243%_)))
                              (_%tl157227157250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157225157243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157227157250%_))
                              (let ((_%e157228157253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157227157250%_))))
                                (let ((_%hd157229157257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157228157253%_)))
                                      (_%tl157230157260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157228157253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157230157260%_))
                                      ((lambda (_%g157224157263%_)
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
                         (cons _%g157224157263%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd157229157257%_)
                                      (_%g157222157236%_ _%g157223157240%_))))
                              (_%g157222157236%_ _%g157223157240%_))))
                      (_%g157222157236%_ _%g157223157240%_)))))
          (_%g157221157277%_ _%$stx157218%_))))))
