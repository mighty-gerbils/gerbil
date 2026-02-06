(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g180277_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180279_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180281_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180283_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180284_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180286_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180287_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180289_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180290_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180292_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g180293_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx179237%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx179237%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx179240%_)
        (let* ((_%g179243179267%_
                (lambda (_%g179244179263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g179244179263%_))))
               (_%g179242179566%_
                (lambda (_%g179244179271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g179244179271%_))
                      (let ((_%e179247179274%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g179244179271%_))))
                        (let ((_%hd179248179278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e179247179274%_)))
                              (_%tl179249179281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e179247179274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl179249179281%_))
                              (let ((_%e179250179284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl179249179281%_))))
                                (let ((_%hd179251179288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e179250179284%_)))
                                      (_%tl179252179291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e179250179284%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl179252179291%_))
                                      (let ((_g180268_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl179252179291%_
                                                '0))))
                                        (begin
                                          (let ((_g180269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g180268_)
                                                       (##values-length
                                                        _g180268_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g180269_ 2)))
                                                (error "Context expects 2 values"
                                                       _g180269_)))
                                          (let ((_%target179253179294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g180268_ 0)))
                                                (_%tl179255179297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g180268_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl179255179297%_))
                                                (letrec ((_%loop179256179300%_
                                                          (lambda (_%hd179254179304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause179260179307%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd179254179304%_))
                        (let ((_%e179257179309%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd179254179304%_))))
                          (let ((_%lp-hd179258179313%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e179257179309%_)))
                                (_%lp-tl179259179316%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e179257179309%_))))
                            (_%loop179256179300%_
                             _%lp-tl179259179316%_
                             (cons _%lp-hd179258179313%_
                                   _%clause179260179307%_))))
                        (let ((_%clause179261179319%_
                               (reverse _%clause179260179307%_)))
                          ((lambda (_%g179245179322%_ _%g179246179324%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g179246179324%_))
                                 (let* ((_%g179343179360%_
                                         (lambda (_%g179344179356%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g179344179356%_))))
                                        (_%g179342179419%_
                                         (lambda (_%g179344179364%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g179344179364%_))
                                               (let ((_g180270_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g179344179364%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g180271_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g180270_)
                        (##values-length _g180270_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g180271_ 2)))
                 (error "Context expects 2 values" _g180271_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target179346179367%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g180270_
                                                             0)))
                                                         (_%tl179348179370%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g180270_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl179348179370%_))
                                                         (letrec ((_%loop179349179373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd179347179377%_ _%clause179353179380%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd179347179377%_))
                                 (let ((_%e179350179382%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd179347179377%_))))
                                   (let ((_%lp-hd179351179386%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e179350179382%_)))
                                         (_%lp-tl179352179389%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e179350179382%_))))
                                     (_%loop179349179373%_
                                      _%lp-tl179352179389%_
                                      (cons _%lp-hd179351179386%_
                                            _%clause179353179380%_))))
                                 (let ((_%clause179354179392%_
                                        (reverse _%clause179353179380%_)))
                                   ((lambda (_%g179345179395%_)
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
                            (cons _%g179246179324%_
                                  (let ((__tmp180272
                                         (lambda (_%g179410179413%_
                                                  _%g179411179416%_)
                                           (cons _%g179410179413%_
                                                 _%g179411179416%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp180272
                                     '()
                                     _%g179345179395%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause179354179392%_))))))
                   (_%loop179349179373%_ _%target179346179367%_ '()))
                 (_%g179343179360%_ _%g179344179364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g179343179360%_
                                                _%g179344179364%_)))))
                                   (_%g179342179419%_
                                    (let ((__tmp180275
                                           (lambda (_%clause179423%_)
                                             (let* ((_%__stx180187180188%_
                                                     _%clause179423%_)
                                                    (_%g179427179454%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx180187180188%_)))))
                                               (let ((_%__kont180190180191%_
                                                      (lambda (_%g179429179539%_
                                                               _%g179430179541%_)
                                                        (cons _%g179430179541%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g179429179539%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont180192180193%_
                                                      (lambda (_%g179437179491%_
                                                               _%g179438179493%_
                                                               _%g179439179494%_)
                                                        (cons _%g179439179494%_
                                                              (cons _%g179438179493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g179437179491%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx180187180188%_))
                                                     (let ((_%e179431179519%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx180187180188%_))))
                                                       (let ((_%tl179433179526%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e179431179519%_)))
                     (_%hd179432179523%_
                      (let () (declare (not safe)) (##car _%e179431179519%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl179433179526%_))
                     (let ((_%e179434179529%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl179433179526%_))))
                       (let ((_%tl179436179536%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e179434179529%_)))
                             (_%hd179435179533%_
                              (let ()
                                (declare (not safe))
                                (##car _%e179434179529%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl179436179536%_))
                             (_%__kont180190180191%_
                              _%hd179435179533%_
                              _%hd179432179523%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl179436179536%_))
                                 (let ((_%e179446179481%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl179436179536%_))))
                                   (let ((_%tl179448179488%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e179446179481%_)))
                                         (_%hd179447179485%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e179446179481%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl179448179488%_))
                                         (_%__kont180192180193%_
                                          _%hd179447179485%_
                                          _%hd179435179533%_
                                          _%hd179432179523%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g179427179454%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g179427179454%_))))))
                     (let () (declare (not safe)) (_%g179427179454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g179427179454%_)))))))
                                          (__tmp180273
                                           (let ((__tmp180274
                                                  (lambda (_%g179557179560%_
                                                           _%g179558179563%_)
                                                    (cons _%g179557179560%_
                                                          _%g179558179563%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp180274
                                              '()
                                              _%g179245179322%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp180275 __tmp180273))))
                                 (_%g179243179267%_ _%g179244179271%_)))
                           _%clause179261179319%_
                           _%hd179251179288%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop179256179300%_
                                                   _%target179253179294%_
                                                   '()))
                                                (_%g179243179267%_
                                                 _%g179244179271%_)))))
                                      (_%g179243179267%_ _%g179244179271%_))))
                              (_%g179243179267%_ _%g179244179271%_))))
                      (_%g179243179267%_ _%g179244179271%_)))))
          (_%g179242179566%_ _%stx179240%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj180237
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
           __obj180237
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj180237
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj180237
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 ':init! '12 '#f '#f))
        (let ((__tmp180276 |gxc[1]#_g180277_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 __tmp180276 '3 '#f '#f))
        (let ((__tmp180278 |gxc[1]#_g180279_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 __tmp180278 '13 '#f '#f))
        (let ((__tmp180280 |gxc[1]#_g180281_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 __tmp180280 '14 '#f '#f))
        (let ((__tmp180282
               (cons (cons 'gensyms |gxc[1]#_g180283_|)
                     (cons (cons 'bindings |gxc[1]#_g180284_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 __tmp180282 '15 '#f '#f))
        (let ((__tmp180285
               (cons (cons 'gensyms |gxc[1]#_g180286_|)
                     (cons (cons 'bindings |gxc[1]#_g180287_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 __tmp180285 '16 '#f '#f))
        (let ((__tmp180288
               (cons (cons 'gensyms |gxc[1]#_g180289_|)
                     (cons (cons 'bindings |gxc[1]#_g180290_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 __tmp180288 '17 '#f '#f))
        (let ((__tmp180291
               (cons (cons 'gensyms |gxc[1]#_g180292_|)
                     (cons (cons 'bindings |gxc[1]#_g180293_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 __tmp180291 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180237 '() '20 '#f '#f))
        __obj180237))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx179572%_)
        (let* ((_%g179576179590%_
                (lambda (_%g179577179586%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g179577179586%_))))
               (_%g179575179631%_
                (lambda (_%g179577179594%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g179577179594%_))
                      (let ((_%e179579179597%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g179577179594%_))))
                        (let ((_%hd179580179601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e179579179597%_)))
                              (_%tl179581179604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e179579179597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl179581179604%_))
                              (let ((_%e179582179607%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl179581179604%_))))
                                (let ((_%hd179583179611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e179582179607%_)))
                                      (_%tl179584179614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e179582179607%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl179584179614%_))
                                      ((lambda (_%g179578179617%_)
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
                         (cons '() (cons _%g179578179617%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd179583179611%_)
                                      (_%g179576179590%_ _%g179577179594%_))))
                              (_%g179576179590%_ _%g179577179594%_))))
                      (_%g179576179590%_ _%g179577179594%_)))))
          (_%g179575179631%_ _%$stx179572%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx179635%_)
        (let* ((_%g179639179653%_
                (lambda (_%g179640179649%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g179640179649%_))))
               (_%g179638179694%_
                (lambda (_%g179640179657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g179640179657%_))
                      (let ((_%e179642179660%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g179640179657%_))))
                        (let ((_%hd179643179664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e179642179660%_)))
                              (_%tl179644179667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e179642179660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl179644179667%_))
                              (let ((_%e179645179670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl179644179667%_))))
                                (let ((_%hd179646179674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e179645179670%_)))
                                      (_%tl179647179677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e179645179670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl179647179677%_))
                                      ((lambda (_%g179641179680%_)
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
                         (cons _%g179641179680%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd179646179674%_)
                                      (_%g179639179653%_ _%g179640179657%_))))
                              (_%g179639179653%_ _%g179640179657%_))))
                      (_%g179639179653%_ _%g179640179657%_)))))
          (_%g179638179694%_ _%$stx179635%_))))))
