(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g188856_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188858_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188860_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188862_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188863_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188865_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188866_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188868_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188869_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188871_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g188872_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx187816%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx187816%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx187819%_)
        (let* ((_%g187822187846%_
                (lambda (_%g187823187842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187823187842%_))))
               (_%g187821188145%_
                (lambda (_%g187823187850%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187823187850%_))
                      (let ((_%e187826187853%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g187823187850%_))))
                        (let ((_%hd187827187857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187826187853%_)))
                              (_%tl187828187860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187826187853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187828187860%_))
                              (let ((_%e187829187863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl187828187860%_))))
                                (let ((_%hd187830187867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187829187863%_)))
                                      (_%tl187831187870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187829187863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl187831187870%_))
                                      (let ((_g188847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl187831187870%_
                                                '0))))
                                        (begin
                                          (let ((_g188848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g188847_)
                                                       (##values-length
                                                        _g188847_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g188848_ 2)))
                                                (error "Context expects 2 values"
                                                       _g188848_)))
                                          (let ((_%target187832187873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g188847_ 0)))
                                                (_%tl187834187876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g188847_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl187834187876%_))
                                                (letrec ((_%loop187835187879%_
                                                          (lambda (_%hd187833187883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause187839187886%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd187833187883%_))
                        (let ((_%e187836187888%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd187833187883%_))))
                          (let ((_%lp-hd187837187892%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187836187888%_)))
                                (_%lp-tl187838187895%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187836187888%_))))
                            (_%loop187835187879%_
                             _%lp-tl187838187895%_
                             (cons _%lp-hd187837187892%_
                                   _%clause187839187886%_))))
                        (let ((_%clause187840187898%_
                               (reverse _%clause187839187886%_)))
                          ((lambda (_%g187824187901%_ _%g187825187903%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g187825187903%_))
                                 (let* ((_%g187922187939%_
                                         (lambda (_%g187923187935%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g187923187935%_))))
                                        (_%g187921187998%_
                                         (lambda (_%g187923187943%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g187923187943%_))
                                               (let ((_g188849_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g187923187943%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g188850_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g188849_)
                        (##values-length _g188849_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g188850_ 2)))
                 (error "Context expects 2 values" _g188850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target187925187946%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g188849_
                                                             0)))
                                                         (_%tl187927187949%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g188849_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl187927187949%_))
                                                         (letrec ((_%loop187928187952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd187926187956%_ _%clause187932187959%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd187926187956%_))
                                 (let ((_%e187929187961%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd187926187956%_))))
                                   (let ((_%lp-hd187930187965%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e187929187961%_)))
                                         (_%lp-tl187931187968%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e187929187961%_))))
                                     (_%loop187928187952%_
                                      _%lp-tl187931187968%_
                                      (cons _%lp-hd187930187965%_
                                            _%clause187932187959%_))))
                                 (let ((_%clause187933187971%_
                                        (reverse _%clause187932187959%_)))
                                   ((lambda (_%g187924187974%_)
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
                            (cons _%g187825187903%_
                                  (let ((__tmp188851
                                         (lambda (_%g187989187992%_
                                                  _%g187990187995%_)
                                           (cons _%g187989187992%_
                                                 _%g187990187995%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp188851
                                     '()
                                     _%g187924187974%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause187933187971%_))))))
                   (_%loop187928187952%_ _%target187925187946%_ '()))
                 (_%g187922187939%_ _%g187923187943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187922187939%_
                                                _%g187923187943%_)))))
                                   (_%g187921187998%_
                                    (let ((__tmp188854
                                           (lambda (_%clause188002%_)
                                             (let* ((_%__stx188766188767%_
                                                     _%clause188002%_)
                                                    (_%g188006188033%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx188766188767%_)))))
                                               (let ((_%__kont188769188770%_
                                                      (lambda (_%g188008188118%_
                                                               _%g188009188120%_)
                                                        (cons _%g188009188120%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g188008188118%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont188771188772%_
                                                      (lambda (_%g188016188070%_
                                                               _%g188017188072%_
                                                               _%g188018188073%_)
                                                        (cons _%g188018188073%_
                                                              (cons _%g188017188072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g188016188070%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx188766188767%_))
                                                     (let ((_%e188010188098%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx188766188767%_))))
                                                       (let ((_%tl188012188105%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e188010188098%_)))
                     (_%hd188011188102%_
                      (let () (declare (not safe)) (##car _%e188010188098%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl188012188105%_))
                     (let ((_%e188013188108%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl188012188105%_))))
                       (let ((_%tl188015188115%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e188013188108%_)))
                             (_%hd188014188112%_
                              (let ()
                                (declare (not safe))
                                (##car _%e188013188108%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl188015188115%_))
                             (_%__kont188769188770%_
                              _%hd188014188112%_
                              _%hd188011188102%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl188015188115%_))
                                 (let ((_%e188025188060%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl188015188115%_))))
                                   (let ((_%tl188027188067%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e188025188060%_)))
                                         (_%hd188026188064%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e188025188060%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl188027188067%_))
                                         (_%__kont188771188772%_
                                          _%hd188026188064%_
                                          _%hd188014188112%_
                                          _%hd188011188102%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g188006188033%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g188006188033%_))))))
                     (let () (declare (not safe)) (_%g188006188033%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g188006188033%_)))))))
                                          (__tmp188852
                                           (let ((__tmp188853
                                                  (lambda (_%g188136188139%_
                                                           _%g188137188142%_)
                                                    (cons _%g188136188139%_
                                                          _%g188137188142%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp188853
                                              '()
                                              _%g187824187901%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp188854 __tmp188852))))
                                 (_%g187822187846%_ _%g187823187850%_)))
                           _%clause187840187898%_
                           _%hd187830187867%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop187835187879%_
                                                   _%target187832187873%_
                                                   '()))
                                                (_%g187822187846%_
                                                 _%g187823187850%_)))))
                                      (_%g187822187846%_ _%g187823187850%_))))
                              (_%g187822187846%_ _%g187823187850%_))))
                      (_%g187822187846%_ _%g187823187850%_)))))
          (_%g187821188145%_ _%stx187819%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj188816
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
           __obj188816
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj188816
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj188816
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 ':init! '12 '#f '#f))
        (let ((__tmp188855 |gxc[1]#_g188856_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 __tmp188855 '3 '#f '#f))
        (let ((__tmp188857 |gxc[1]#_g188858_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 __tmp188857 '13 '#f '#f))
        (let ((__tmp188859 |gxc[1]#_g188860_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 __tmp188859 '14 '#f '#f))
        (let ((__tmp188861
               (cons (cons 'gensyms |gxc[1]#_g188862_|)
                     (cons (cons 'bindings |gxc[1]#_g188863_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 __tmp188861 '15 '#f '#f))
        (let ((__tmp188864
               (cons (cons 'gensyms |gxc[1]#_g188865_|)
                     (cons (cons 'bindings |gxc[1]#_g188866_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 __tmp188864 '16 '#f '#f))
        (let ((__tmp188867
               (cons (cons 'gensyms |gxc[1]#_g188868_|)
                     (cons (cons 'bindings |gxc[1]#_g188869_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 __tmp188867 '17 '#f '#f))
        (let ((__tmp188870
               (cons (cons 'gensyms |gxc[1]#_g188871_|)
                     (cons (cons 'bindings |gxc[1]#_g188872_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 __tmp188870 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj188816 '() '20 '#f '#f))
        __obj188816))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx188151%_)
        (let* ((_%g188155188169%_
                (lambda (_%g188156188165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188156188165%_))))
               (_%g188154188210%_
                (lambda (_%g188156188173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188156188173%_))
                      (let ((_%e188158188176%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g188156188173%_))))
                        (let ((_%hd188159188180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188158188176%_)))
                              (_%tl188160188183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188158188176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188160188183%_))
                              (let ((_%e188161188186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl188160188183%_))))
                                (let ((_%hd188162188190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188161188186%_)))
                                      (_%tl188163188193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188161188186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188163188193%_))
                                      ((lambda (_%g188157188196%_)
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
                         (cons '() (cons _%g188157188196%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd188162188190%_)
                                      (_%g188155188169%_ _%g188156188173%_))))
                              (_%g188155188169%_ _%g188156188173%_))))
                      (_%g188155188169%_ _%g188156188173%_)))))
          (_%g188154188210%_ _%$stx188151%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx188214%_)
        (let* ((_%g188218188232%_
                (lambda (_%g188219188228%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188219188228%_))))
               (_%g188217188273%_
                (lambda (_%g188219188236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188219188236%_))
                      (let ((_%e188221188239%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g188219188236%_))))
                        (let ((_%hd188222188243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188221188239%_)))
                              (_%tl188223188246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188221188239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188223188246%_))
                              (let ((_%e188224188249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl188223188246%_))))
                                (let ((_%hd188225188253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188224188249%_)))
                                      (_%tl188226188256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188224188249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188226188256%_))
                                      ((lambda (_%g188220188259%_)
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
                         (cons _%g188220188259%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd188225188253%_)
                                      (_%g188218188232%_ _%g188219188236%_))))
                              (_%g188218188232%_ _%g188219188236%_))))
                      (_%g188218188232%_ _%g188219188236%_)))))
          (_%g188217188273%_ _%$stx188214%_))))))
