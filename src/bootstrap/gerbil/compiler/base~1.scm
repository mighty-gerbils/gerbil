(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g188863_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188865_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188867_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188869_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188870_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188872_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188873_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188875_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188876_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188878_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188879_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx187823%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx187823%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx187826%_)
        (let* ((_%g187829187853%_
                (lambda (_%g187830187849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187830187849%_))))
               (_%g187828188152%_
                (lambda (_%g187830187857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187830187857%_))
                      (let ((_%e187833187860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g187830187857%_))))
                        (let ((_%hd187834187864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187833187860%_)))
                              (_%tl187835187867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187833187860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187835187867%_))
                              (let ((_%e187836187870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl187835187867%_))))
                                (let ((_%hd187837187874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187836187870%_)))
                                      (_%tl187838187877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187836187870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl187838187877%_))
                                      (let ((_g188854_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl187838187877%_
                                                '0))))
                                        (begin
                                          (let ((_g188855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g188854_)
                                                       (##values-length
                                                        _g188854_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g188855_ 2)))
                                                (error "Context expects 2 values"
                                                       _g188855_)))
                                          (let ((_%target187839187880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g188854_ 0)))
                                                (_%tl187841187883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g188854_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl187841187883%_))
                                                (letrec ((_%loop187842187886%_
                                                          (lambda (_%hd187840187890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause187846187893%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd187840187890%_))
                        (let ((_%e187843187895%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd187840187890%_))))
                          (let ((_%lp-hd187844187899%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187843187895%_)))
                                (_%lp-tl187845187902%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187843187895%_))))
                            (_%loop187842187886%_
                             _%lp-tl187845187902%_
                             (cons _%lp-hd187844187899%_
                                   _%clause187846187893%_))))
                        (let ((_%clause187847187905%_
                               (reverse _%clause187846187893%_)))
                          ((lambda (_%g187831187908%_ _%g187832187910%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g187832187910%_))
                                 (let* ((_%g187929187946%_
                                         (lambda (_%g187930187942%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g187930187942%_))))
                                        (_%g187928188005%_
                                         (lambda (_%g187930187950%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g187930187950%_))
                                               (let ((_g188856_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g187930187950%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g188857_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g188856_)
                        (##values-length _g188856_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g188857_ 2)))
                 (error "Context expects 2 values" _g188857_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target187932187953%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g188856_
                                                             0)))
                                                         (_%tl187934187956%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g188856_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl187934187956%_))
                                                         (letrec ((_%loop187935187959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd187933187963%_ _%clause187939187966%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd187933187963%_))
                                 (let ((_%e187936187968%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd187933187963%_))))
                                   (let ((_%lp-hd187937187972%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e187936187968%_)))
                                         (_%lp-tl187938187975%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e187936187968%_))))
                                     (_%loop187935187959%_
                                      _%lp-tl187938187975%_
                                      (cons _%lp-hd187937187972%_
                                            _%clause187939187966%_))))
                                 (let ((_%clause187940187978%_
                                        (reverse _%clause187939187966%_)))
                                   ((lambda (_%g187931187981%_)
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
                            (cons _%g187832187910%_
                                  (let ((__tmp188858
                                         (lambda (_%g187996187999%_
                                                  _%g187997188002%_)
                                           (cons _%g187996187999%_
                                                 _%g187997188002%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp188858
                                     '()
                                     _%g187931187981%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause187940187978%_))))))
                   (_%loop187935187959%_ _%target187932187953%_ '()))
                 (_%g187929187946%_ _%g187930187950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187929187946%_
                                                _%g187930187950%_)))))
                                   (_%g187928188005%_
                                    (let ((__tmp188861
                                           (lambda (_%clause188009%_)
                                             (let* ((_%__stx188773188774%_
                                                     _%clause188009%_)
                                                    (_%g188013188040%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx188773188774%_)))))
                                               (let ((_%__kont188776188777%_
                                                      (lambda (_%g188015188125%_
                                                               _%g188016188127%_)
                                                        (cons _%g188016188127%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g188015188125%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont188778188779%_
                                                      (lambda (_%g188023188077%_
                                                               _%g188024188079%_
                                                               _%g188025188080%_)
                                                        (cons _%g188025188080%_
                                                              (cons _%g188024188079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g188023188077%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx188773188774%_))
                                                     (let ((_%e188017188105%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx188773188774%_))))
                                                       (let ((_%tl188019188112%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e188017188105%_)))
                     (_%hd188018188109%_
                      (let () (declare (not safe)) (##car _%e188017188105%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl188019188112%_))
                     (let ((_%e188020188115%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl188019188112%_))))
                       (let ((_%tl188022188122%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e188020188115%_)))
                             (_%hd188021188119%_
                              (let ()
                                (declare (not safe))
                                (##car _%e188020188115%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl188022188122%_))
                             (_%__kont188776188777%_
                              _%hd188021188119%_
                              _%hd188018188109%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl188022188122%_))
                                 (let ((_%e188032188067%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl188022188122%_))))
                                   (let ((_%tl188034188074%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e188032188067%_)))
                                         (_%hd188033188071%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e188032188067%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl188034188074%_))
                                         (_%__kont188778188779%_
                                          _%hd188033188071%_
                                          _%hd188021188119%_
                                          _%hd188018188109%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g188013188040%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g188013188040%_))))))
                     (let () (declare (not safe)) (_%g188013188040%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g188013188040%_)))))))
                                          (__tmp188859
                                           (let ((__tmp188860
                                                  (lambda (_%g188143188146%_
                                                           _%g188144188149%_)
                                                    (cons _%g188143188146%_
                                                          _%g188144188149%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp188860
                                              '()
                                              _%g187831187908%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp188861 __tmp188859))))
                                 (_%g187829187853%_ _%g187830187857%_)))
                           _%clause187847187905%_
                           _%hd187837187874%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop187842187886%_
                                                   _%target187839187880%_
                                                   '()))
                                                (_%g187829187853%_
                                                 _%g187830187857%_)))))
                                      (_%g187829187853%_ _%g187830187857%_))))
                              (_%g187829187853%_ _%g187830187857%_))))
                      (_%g187829187853%_ _%g187830187857%_)))))
          (_%g187828188152%_ _%stx187826%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj188823
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
           __obj188823
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj188823
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj188823
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 ':init! '12 '#f '#f))
        (let ((__tmp188862 |gxc[1]#_g188863_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 __tmp188862 '3 '#f '#f))
        (let ((__tmp188864 |gxc[1]#_g188865_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 __tmp188864 '13 '#f '#f))
        (let ((__tmp188866 |gxc[1]#_g188867_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 __tmp188866 '14 '#f '#f))
        (let ((__tmp188868
               (cons (cons 'gensyms |gxc[1]#_g188869_|)
                     (cons (cons 'bindings |gxc[1]#_g188870_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 __tmp188868 '15 '#f '#f))
        (let ((__tmp188871
               (cons (cons 'gensyms |gxc[1]#_g188872_|)
                     (cons (cons 'bindings |gxc[1]#_g188873_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 __tmp188871 '16 '#f '#f))
        (let ((__tmp188874
               (cons (cons 'gensyms |gxc[1]#_g188875_|)
                     (cons (cons 'bindings |gxc[1]#_g188876_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 __tmp188874 '17 '#f '#f))
        (let ((__tmp188877
               (cons (cons 'gensyms |gxc[1]#_g188878_|)
                     (cons (cons 'bindings |gxc[1]#_g188879_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 __tmp188877 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188823 '() '20 '#f '#f))
        __obj188823))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx188158%_)
        (let* ((_%g188162188176%_
                (lambda (_%g188163188172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188163188172%_))))
               (_%g188161188217%_
                (lambda (_%g188163188180%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188163188180%_))
                      (let ((_%e188165188183%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g188163188180%_))))
                        (let ((_%hd188166188187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188165188183%_)))
                              (_%tl188167188190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188165188183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188167188190%_))
                              (let ((_%e188168188193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl188167188190%_))))
                                (let ((_%hd188169188197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188168188193%_)))
                                      (_%tl188170188200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188168188193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188170188200%_))
                                      ((lambda (_%g188164188203%_)
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
                         (cons '() (cons _%g188164188203%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd188169188197%_)
                                      (_%g188162188176%_ _%g188163188180%_))))
                              (_%g188162188176%_ _%g188163188180%_))))
                      (_%g188162188176%_ _%g188163188180%_)))))
          (_%g188161188217%_ _%$stx188158%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx188221%_)
        (let* ((_%g188225188239%_
                (lambda (_%g188226188235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188226188235%_))))
               (_%g188224188280%_
                (lambda (_%g188226188243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188226188243%_))
                      (let ((_%e188228188246%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g188226188243%_))))
                        (let ((_%hd188229188250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188228188246%_)))
                              (_%tl188230188253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188228188246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188230188253%_))
                              (let ((_%e188231188256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl188230188253%_))))
                                (let ((_%hd188232188260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188231188256%_)))
                                      (_%tl188233188263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188231188256%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188233188263%_))
                                      ((lambda (_%g188227188266%_)
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
                         (cons _%g188227188266%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd188232188260%_)
                                      (_%g188225188239%_ _%g188226188243%_))))
                              (_%g188225188239%_ _%g188226188243%_))))
                      (_%g188225188239%_ _%g188226188243%_)))))
          (_%g188224188280%_ _%$stx188221%_))))))
