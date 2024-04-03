(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201900_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201914_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201916_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201918_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201920_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201933_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201935_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201937_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201939_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx195456%_)
        (let* ((_%g195460195478%_
                (lambda (_%g195461195474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195461195474%_))))
               (_%g195459195533%_
                (lambda (_%g195461195482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195461195482%_))
                      (let ((_%e195466195485%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195461195482%_))))
                        (let ((_%hd195465195489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195466195485%_)))
                              (_%tl195464195492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195466195485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195464195492%_))
                              (let ((_%e195469195495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195464195492%_))))
                                (let ((_%hd195468195499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195469195495%_)))
                                      (_%tl195467195502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195469195495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195467195502%_))
                                      (let ((_%e195472195505%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195467195502%_))))
                                        (let ((_%hd195471195509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195472195505%_)))
                                              (_%tl195470195512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195472195505%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195470195512%_))
                                              ((lambda (_%L195515%_
                                                        _%L195517%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195517%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195517%_ '()))
                         (cons _%L195515%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195460195478%_
                                                      _%g195461195482%_)))
                                               _%hd195471195509%_
                                               _%hd195468195499%_)
                                              (_%g195460195478%_
                                               _%g195461195482%_))))
                                      (_%g195460195478%_ _%g195461195482%_))))
                              (_%g195460195478%_ _%g195461195482%_))))
                      (_%g195460195478%_ _%g195461195482%_)))))
          (_%g195459195533%_ _%$stx195456%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx195537%_)
        (let* ((_%g195541195559%_
                (lambda (_%g195542195555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195542195555%_))))
               (_%g195540195614%_
                (lambda (_%g195542195563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195542195563%_))
                      (let ((_%e195547195566%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195542195563%_))))
                        (let ((_%hd195546195570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195547195566%_)))
                              (_%tl195545195573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195547195566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195545195573%_))
                              (let ((_%e195550195576%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195545195573%_))))
                                (let ((_%hd195549195580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195550195576%_)))
                                      (_%tl195548195583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195550195576%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195548195583%_))
                                      (let ((_%e195553195586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195548195583%_))))
                                        (let ((_%hd195552195590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195553195586%_)))
                                              (_%tl195551195593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195553195586%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195551195593%_))
                                              ((lambda (_%L195596%_
                                                        _%L195598%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195598%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195598%_ '()))
                         (cons _%L195596%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195541195559%_
                                                      _%g195542195563%_)))
                                               _%hd195552195590%_
                                               _%hd195549195580%_)
                                              (_%g195541195559%_
                                               _%g195542195563%_))))
                                      (_%g195541195559%_ _%g195542195563%_))))
                              (_%g195541195559%_ _%g195542195563%_))))
                      (_%g195541195559%_ _%g195542195563%_)))))
          (_%g195540195614%_ _%$stx195537%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx195618%_)
        (let* ((_%g195622195651%_
                (lambda (_%g195623195647%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195623195647%_))))
               (_%g195621195751%_
                (lambda (_%g195623195655%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195623195655%_))
                      (let ((_%e195628195658%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195623195655%_))))
                        (let ((_%hd195627195662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195628195658%_)))
                              (_%tl195626195665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195628195658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195626195665%_))
                              (let ((_g201878_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195626195665%_
                                        '0))))
                                (begin
                                  (let ((_g201879_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201878_)
                                               (##vector-length _g201878_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201879_ 2)))
                                        (error "Context expects 2 values"
                                               _g201879_)))
                                  (let ((_%target195629195668%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201878_ 0)))
                                        (_%tl195631195671%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201878_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195631195671%_))
                                        (letrec ((_%loop195632195674%_
                                                  (lambda (_%hd195630195678%_
                                                           _%type195636195681%_
                                                           _%symbol195637195683%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195630195678%_))
                                                        (let ((_%e195633195686%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195630195678%_))))
                  (let ((_%lp-hd195634195690%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195633195686%_)))
                        (_%lp-tl195635195693%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195633195686%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195634195690%_))
                        (let ((_%e195642195696%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195634195690%_))))
                          (let ((_%hd195641195700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195642195696%_)))
                                (_%tl195640195703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195642195696%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195640195703%_))
                                (let ((_%e195645195706%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195640195703%_))))
                                  (let ((_%hd195644195710%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195645195706%_)))
                                        (_%tl195643195713%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195645195706%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195643195713%_))
                                        (_%loop195632195674%_
                                         _%lp-tl195635195693%_
                                         (cons _%hd195644195710%_
                                               _%type195636195681%_)
                                         (cons _%hd195641195700%_
                                               _%symbol195637195683%_))
                                        (_%g195622195651%_
                                         _%g195623195655%_))))
                                (_%g195622195651%_ _%g195623195655%_))))
                        (_%g195622195651%_ _%g195623195655%_))))
                (let ((_%type195638195716%_ (reverse _%type195636195681%_))
                      (_%symbol195639195719%_
                       (reverse _%symbol195637195683%_)))
                  ((lambda (_%L195722%_ _%L195724%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195722%_
                                _%L195724%_))
                             (let ((__tmp201880
                                    (lambda (_%g195739195743%_
                                             _%g195740195746%_
                                             _%g195741195748%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195740195746%_
                                                        (cons _%g195739195743%_
                                                              '())))
                                            _%g195741195748%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201880
                                '()
                                _%L195722%_
                                _%L195724%_)))))
                   _%type195638195716%_
                   _%symbol195639195719%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195632195674%_
                                           _%target195629195668%_
                                           '()
                                           '()))
                                        (_%g195622195651%_
                                         _%g195623195655%_)))))
                              (_%g195622195651%_ _%g195623195655%_))))
                      (_%g195622195651%_ _%g195623195655%_)))))
          (_%g195621195751%_ _%$stx195618%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195756%_)
        (let* ((_%__stx201189201190%_ _%$stx195756%_)
               (_%g195761195803%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201189201190%_)))))
          (let ((_%__kont201192201193%_
                 (lambda (_%L195931%_ _%L195933%_ _%L195934%_ _%L195935%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195935%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195934%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195933%_ '()))
                                           (cons _%L195931%_ '())))))))
                (_%__kont201194201195%_
                 (lambda (_%L195850%_ _%L195852%_ _%L195853%_ _%L195854%_)
                   (cons _%L195854%_
                         (cons _%L195853%_
                               (cons _%L195852%_
                                     (cons _%L195850%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201228201229%_
                   (lambda (_%e195769195881%_
                            _%hd195768195885%_
                            _%tl195767195888%_
                            _%e195772195891%_
                            _%hd195771195895%_
                            _%tl195770195898%_
                            _%e195775195901%_
                            _%hd195774195905%_
                            _%tl195773195908%_
                            _%e195778195911%_
                            _%hd195777195915%_
                            _%tl195776195918%_
                            _%e195781195921%_
                            _%hd195780195925%_
                            _%tl195779195928%_)
                     (let ((_%L195931%_ _%hd195780195925%_)
                           (_%L195933%_ _%hd195777195915%_)
                           (_%L195934%_ _%hd195774195905%_)
                           (_%L195935%_ _%hd195771195895%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195935%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195934%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195933%_)))
                           (_%__kont201192201193%_
                            _%L195931%_
                            _%L195933%_
                            _%L195934%_
                            _%L195935%_)
                           (let ()
                             (declare (not safe))
                             (_%g195761195803%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201189201190%_))
                  (let ((_%e195769195881%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201189201190%_))))
                    (let ((_%tl195767195888%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195769195881%_)))
                          (_%hd195768195885%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195769195881%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195767195888%_))
                          (let ((_%e195772195891%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195767195888%_))))
                            (let ((_%tl195770195898%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195772195891%_)))
                                  (_%hd195771195895%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195772195891%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195770195898%_))
                                  (let ((_%e195775195901%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195770195898%_))))
                                    (let ((_%tl195773195908%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195775195901%_)))
                                          (_%hd195774195905%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195775195901%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195773195908%_))
                                          (let ((_%e195778195911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195773195908%_))))
                                            (let ((_%tl195776195918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195778195911%_)))
                                                  (_%hd195777195915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195778195911%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195776195918%_))
                                                  (let ((_%e195781195921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195776195918%_))))
                                                    (let ((_%tl195779195928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195781195921%_)))
                                                          (_%hd195780195925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195781195921%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195779195928%_))
                                                          (_%__match201228201229%_
                                                           _%e195769195881%_
                                                           _%hd195768195885%_
                                                           _%tl195767195888%_
                                                           _%e195772195891%_
                                                           _%hd195771195895%_
                                                           _%tl195770195898%_
                                                           _%e195775195901%_
                                                           _%hd195774195905%_
                                                           _%tl195773195908%_
                                                           _%e195778195911%_
                                                           _%hd195777195915%_
                                                           _%tl195776195918%_
                                                           _%e195781195921%_
                                                           _%hd195780195925%_
                                                           _%tl195779195928%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195761195803%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195776195918%_))
                                                      (_%__kont201194201195%_
                                                       _%hd195777195915%_
                                                       _%hd195774195905%_
                                                       _%hd195771195895%_
                                                       _%hd195768195885%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195761195803%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195761195803%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195761195803%_)))))
                          (let () (declare (not safe)) (_%g195761195803%_)))))
                  (let () (declare (not safe)) (_%g195761195803%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195960%_)
        (let* ((_%g195964195999%_
                (lambda (_%g195965195995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195965195995%_))))
               (_%g195963196118%_
                (lambda (_%g195965196003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195965196003%_))
                      (let ((_%e195971196006%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195965196003%_))))
                        (let ((_%hd195970196010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195971196006%_)))
                              (_%tl195969196013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195971196006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195969196013%_))
                              (let ((_g201881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195969196013%_
                                        '0))))
                                (begin
                                  (let ((_g201882_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201881_)
                                               (##vector-length _g201881_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201882_ 2)))
                                        (error "Context expects 2 values"
                                               _g201882_)))
                                  (let ((_%target195972196016%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201881_ 0)))
                                        (_%tl195974196019%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201881_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195974196019%_))
                                        (letrec ((_%loop195975196022%_
                                                  (lambda (_%hd195973196026%_
                                                           _%symbol195979196029%_
                                                           _%method195980196031%_
                                                           _%type-t195981196033%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195973196026%_))
                                                        (let ((_%e195976196036%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195973196026%_))))
                  (let ((_%lp-hd195977196040%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195976196036%_)))
                        (_%lp-tl195978196043%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195976196036%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195977196040%_))
                        (let ((_%e195987196046%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195977196040%_))))
                          (let ((_%hd195986196050%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195987196046%_)))
                                (_%tl195985196053%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195987196046%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195985196053%_))
                                (let ((_%e195990196056%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195985196053%_))))
                                  (let ((_%hd195989196060%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195990196056%_)))
                                        (_%tl195988196063%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195990196056%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195988196063%_))
                                        (let ((_%e195993196066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195988196063%_))))
                                          (let ((_%hd195992196070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195993196066%_)))
                                                (_%tl195991196073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195993196066%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195991196073%_))
                                                (_%loop195975196022%_
                                                 _%lp-tl195978196043%_
                                                 (cons _%hd195992196070%_
                                                       _%symbol195979196029%_)
                                                 (cons _%hd195989196060%_
                                                       _%method195980196031%_)
                                                 (cons _%hd195986196050%_
                                                       _%type-t195981196033%_))
                                                (_%g195964195999%_
                                                 _%g195965196003%_))))
                                        (_%g195964195999%_
                                         _%g195965196003%_))))
                                (_%g195964195999%_ _%g195965196003%_))))
                        (_%g195964195999%_ _%g195965196003%_))))
                (let ((_%symbol195982196076%_ (reverse _%symbol195979196029%_))
                      (_%method195983196079%_ (reverse _%method195980196031%_))
                      (_%type-t195984196081%_
                       (reverse _%type-t195981196033%_)))
                  ((lambda (_%L196084%_ _%L196086%_ _%L196087%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196084%_
                                _%L196086%_
                                _%L196087%_))
                             (let ((__tmp201883
                                    (lambda (_%g196103196108%_
                                             _%g196104196111%_
                                             _%g196105196113%_
                                             _%g196106196115%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196105196113%_
                                                        (cons _%g196104196111%_
                                                              (cons _%g196103196108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196106196115%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201883
                                '()
                                _%L196084%_
                                _%L196086%_
                                _%L196087%_)))))
                   _%symbol195982196076%_
                   _%method195983196079%_
                   _%type-t195984196081%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195975196022%_
                                           _%target195972196016%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195964195999%_
                                         _%g195965196003%_)))))
                              (_%g195964195999%_ _%g195965196003%_))))
                      (_%g195964195999%_ _%g195965196003%_)))))
          (_%g195963196118%_ _%$stx195960%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196123%_)
        (let* ((_%g196127196160%_
                (lambda (_%g196128196156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196128196156%_))))
               (_%g196126196274%_
                (lambda (_%g196128196164%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196128196164%_))
                      (let ((_%e196134196167%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196128196164%_))))
                        (let ((_%hd196133196171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196134196167%_)))
                              (_%tl196132196174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196134196167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196132196174%_))
                              (let ((_%e196137196177%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196132196174%_))))
                                (let ((_%hd196136196181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196137196177%_)))
                                      (_%tl196135196184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196137196177%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196135196184%_))
                                      (let ((_g201884_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196135196184%_
                                                '0))))
                                        (begin
                                          (let ((_g201885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201884_)
                                                       (##vector-length
                                                        _g201884_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201885_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201885_)))
                                          (let ((_%target196138196187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201884_ 0)))
                                                (_%tl196140196190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201884_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196140196190%_))
                                                (letrec ((_%loop196141196193%_
                                                          (lambda (_%hd196139196197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196145196200%_
                           _%method196146196202%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196139196197%_))
                        (let ((_%e196142196205%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196139196197%_))))
                          (let ((_%lp-hd196143196209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196142196205%_)))
                                (_%lp-tl196144196212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196142196205%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196143196209%_))
                                (let ((_%e196151196215%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196143196209%_))))
                                  (let ((_%hd196150196219%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196151196215%_)))
                                        (_%tl196149196222%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196151196215%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196149196222%_))
                                        (let ((_%e196154196225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196149196222%_))))
                                          (let ((_%hd196153196229%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196154196225%_)))
                                                (_%tl196152196232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196154196225%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196152196232%_))
                                                (_%loop196141196193%_
                                                 _%lp-tl196144196212%_
                                                 (cons _%hd196153196229%_
                                                       _%symbol196145196200%_)
                                                 (cons _%hd196150196219%_
                                                       _%method196146196202%_))
                                                (_%g196127196160%_
                                                 _%g196128196164%_))))
                                        (_%g196127196160%_
                                         _%g196128196164%_))))
                                (_%g196127196160%_ _%g196128196164%_))))
                        (let ((_%symbol196147196235%_
                               (reverse _%symbol196145196200%_))
                              (_%method196148196238%_
                               (reverse _%method196146196202%_)))
                          ((lambda (_%L196241%_ _%L196243%_ _%L196244%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L196241%_
                                        _%L196243%_))
                                     (let ((__tmp201886
                                            (lambda (_%g196262196266%_
                                                     _%g196263196269%_
                                                     _%g196264196271%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L196244%_
                                                                (cons _%g196263196269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g196262196266%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g196264196271%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201886
                                        '()
                                        _%L196241%_
                                        _%L196243%_)))))
                           _%symbol196147196235%_
                           _%method196148196238%_
                           _%hd196136196181%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196141196193%_
                                                   _%target196138196187%_
                                                   '()
                                                   '()))
                                                (_%g196127196160%_
                                                 _%g196128196164%_)))))
                                      (_%g196127196160%_ _%g196128196164%_))))
                              (_%g196127196160%_ _%g196128196164%_))))
                      (_%g196127196160%_ _%g196128196164%_)))))
          (_%g196126196274%_ _%$stx196123%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx196279%_)
        (let* ((_%g196283196297%_
                (lambda (_%g196284196293%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196284196293%_))))
               (_%g196282196338%_
                (lambda (_%g196284196301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196284196301%_))
                      (let ((_%e196288196304%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196284196301%_))))
                        (let ((_%hd196287196308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196288196304%_)))
                              (_%tl196286196311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196288196304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196286196311%_))
                              (let ((_%e196291196314%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196286196311%_))))
                                (let ((_%hd196290196318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196291196314%_)))
                                      (_%tl196289196321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196291196314%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196289196321%_))
                                      ((lambda (_%L196324%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196290196318%_)
                                      (_%g196283196297%_ _%g196284196301%_))))
                              (_%g196283196297%_ _%g196284196301%_))))
                      (_%g196283196297%_ _%g196284196301%_)))))
          (_%g196282196338%_ _%$stx196279%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx196342%_)
        (let* ((_%g196346196400%_
                (lambda (_%g196347196396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196347196396%_))))
               (_%g196345196581%_
                (lambda (_%g196347196404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196347196404%_))
                      (let ((_%e196361196407%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196347196404%_))))
                        (let ((_%hd196360196411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196361196407%_)))
                              (_%tl196359196414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196361196407%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196359196414%_))
                              (let ((_%e196364196417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196359196414%_))))
                                (let ((_%hd196363196421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196364196417%_)))
                                      (_%tl196362196424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196364196417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196362196424%_))
                                      (let ((_%e196367196427%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196362196424%_))))
                                        (let ((_%hd196366196431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196367196427%_)))
                                              (_%tl196365196434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196367196427%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196365196434%_))
                                              (let ((_%e196370196437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196365196434%_))))
                                                (let ((_%hd196369196441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196370196437%_)))
                                                      (_%tl196368196444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196370196437%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196368196444%_))
                                                      (let ((_%e196373196447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196368196444%_))))
                (let ((_%hd196372196451%_
                       (let () (declare (not safe)) (##car _%e196373196447%_)))
                      (_%tl196371196454%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196373196447%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196371196454%_))
                      (let ((_%e196376196457%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196371196454%_))))
                        (let ((_%hd196375196461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196376196457%_)))
                              (_%tl196374196464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196376196457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196374196464%_))
                              (let ((_%e196379196467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196374196464%_))))
                                (let ((_%hd196378196471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196379196467%_)))
                                      (_%tl196377196474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196379196467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196377196474%_))
                                      (let ((_%e196382196477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196377196474%_))))
                                        (let ((_%hd196381196481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196382196477%_)))
                                              (_%tl196380196484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196382196477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196380196484%_))
                                              (let ((_%e196385196487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196380196484%_))))
                                                (let ((_%hd196384196491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196385196487%_)))
                                                      (_%tl196383196494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196385196487%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196383196494%_))
                                                      (let ((_%e196388196497%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196383196494%_))))
                (let ((_%hd196387196501%_
                       (let () (declare (not safe)) (##car _%e196388196497%_)))
                      (_%tl196386196504%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196388196497%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196386196504%_))
                      (let ((_%e196391196507%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196386196504%_))))
                        (let ((_%hd196390196511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196391196507%_)))
                              (_%tl196389196514%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196391196507%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196389196514%_))
                              (let ((_%e196394196517%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196389196514%_))))
                                (let ((_%hd196393196521%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196394196517%_)))
                                      (_%tl196392196524%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196394196517%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196392196524%_))
                                      ((lambda (_%L196527%_
                                                _%L196529%_
                                                _%L196530%_
                                                _%L196531%_
                                                _%L196532%_
                                                _%L196533%_
                                                _%L196534%_
                                                _%L196535%_
                                                _%L196536%_
                                                _%L196537%_
                                                _%L196538%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L196537%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196536%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196535%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196534%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196533%_ '()))
                                           (cons _%L196532%_
                                                 (cons _%L196531%_
                                                       (cons _%L196530%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196529%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L196527%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd196393196521%_
                                       _%hd196390196511%_
                                       _%hd196387196501%_
                                       _%hd196384196491%_
                                       _%hd196381196481%_
                                       _%hd196378196471%_
                                       _%hd196375196461%_
                                       _%hd196372196451%_
                                       _%hd196369196441%_
                                       _%hd196366196431%_
                                       _%hd196363196421%_)
                                      (_%g196346196400%_ _%g196347196404%_))))
                              (_%g196346196400%_ _%g196347196404%_))))
                      (_%g196346196400%_ _%g196347196404%_))))
              (_%g196346196400%_ _%g196347196404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196346196400%_
                                               _%g196347196404%_))))
                                      (_%g196346196400%_ _%g196347196404%_))))
                              (_%g196346196400%_ _%g196347196404%_))))
                      (_%g196346196400%_ _%g196347196404%_))))
              (_%g196346196400%_ _%g196347196404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196346196400%_
                                               _%g196347196404%_))))
                                      (_%g196346196400%_ _%g196347196404%_))))
                              (_%g196346196400%_ _%g196347196404%_))))
                      (_%g196346196400%_ _%g196347196404%_)))))
          (_%g196345196581%_ _%$stx196342%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx196585%_)
        (let* ((_%g196589196603%_
                (lambda (_%g196590196599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196590196599%_))))
               (_%g196588196644%_
                (lambda (_%g196590196607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196590196607%_))
                      (let ((_%e196594196610%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196590196607%_))))
                        (let ((_%hd196593196614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196594196610%_)))
                              (_%tl196592196617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196594196610%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196592196617%_))
                              (let ((_%e196597196620%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196592196617%_))))
                                (let ((_%hd196596196624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196597196620%_)))
                                      (_%tl196595196627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196597196620%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196595196627%_))
                                      ((lambda (_%L196630%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196596196624%_)
                                      (_%g196589196603%_ _%g196590196607%_))))
                              (_%g196589196603%_ _%g196590196607%_))))
                      (_%g196589196603%_ _%g196590196607%_)))))
          (_%g196588196644%_ _%$stx196585%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx196648%_)
        (let* ((_%g196652196666%_
                (lambda (_%g196653196662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196653196662%_))))
               (_%g196651196707%_
                (lambda (_%g196653196670%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196653196670%_))
                      (let ((_%e196657196673%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196653196670%_))))
                        (let ((_%hd196656196677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196657196673%_)))
                              (_%tl196655196680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196657196673%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196655196680%_))
                              (let ((_%e196660196683%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196655196680%_))))
                                (let ((_%hd196659196687%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196660196683%_)))
                                      (_%tl196658196690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196660196683%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196658196690%_))
                                      ((lambda (_%L196693%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196659196687%_)
                                      (_%g196652196666%_ _%g196653196670%_))))
                              (_%g196652196666%_ _%g196653196670%_))))
                      (_%g196652196666%_ _%g196653196670%_)))))
          (_%g196651196707%_ _%$stx196648%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196711%_)
        (let* ((_%g196715196737%_
                (lambda (_%g196716196733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196716196733%_))))
               (_%g196714196806%_
                (lambda (_%g196716196741%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196716196741%_))
                      (let ((_%e196722196744%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196716196741%_))))
                        (let ((_%hd196721196748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196722196744%_)))
                              (_%tl196720196751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196722196744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196720196751%_))
                              (let ((_%e196725196754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196720196751%_))))
                                (let ((_%hd196724196758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196725196754%_)))
                                      (_%tl196723196761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196725196754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196723196761%_))
                                      (let ((_%e196728196764%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196723196761%_))))
                                        (let ((_%hd196727196768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196728196764%_)))
                                              (_%tl196726196771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196728196764%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196726196771%_))
                                              (let ((_%e196731196774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196726196771%_))))
                                                (let ((_%hd196730196778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196731196774%_)))
                                                      (_%tl196729196781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196731196774%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196729196781%_))
                                                      ((lambda (_%L196784%_
                                                                _%L196786%_
                                                                _%L196787%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196787%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196786%_ '()))
                                   (cons _%L196784%_ '())))))
               _%hd196730196778%_
               _%hd196727196768%_
               _%hd196724196758%_)
              (_%g196715196737%_ _%g196716196741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196715196737%_
                                               _%g196716196741%_))))
                                      (_%g196715196737%_ _%g196716196741%_))))
                              (_%g196715196737%_ _%g196716196741%_))))
                      (_%g196715196737%_ _%g196716196741%_)))))
          (_%g196714196806%_ _%$stx196711%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196810%_)
        (let* ((_%g196814196836%_
                (lambda (_%g196815196832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196815196832%_))))
               (_%g196813196905%_
                (lambda (_%g196815196840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196815196840%_))
                      (let ((_%e196821196843%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196815196840%_))))
                        (let ((_%hd196820196847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196821196843%_)))
                              (_%tl196819196850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196821196843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196819196850%_))
                              (let ((_%e196824196853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196819196850%_))))
                                (let ((_%hd196823196857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196824196853%_)))
                                      (_%tl196822196860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196824196853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196822196860%_))
                                      (let ((_%e196827196863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196822196860%_))))
                                        (let ((_%hd196826196867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196827196863%_)))
                                              (_%tl196825196870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196827196863%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196825196870%_))
                                              (let ((_%e196830196873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196825196870%_))))
                                                (let ((_%hd196829196877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196830196873%_)))
                                                      (_%tl196828196880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196830196873%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196828196880%_))
                                                      ((lambda (_%L196883%_
                                                                _%L196885%_
                                                                _%L196886%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196886%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196885%_ '()))
                                   (cons _%L196883%_ '())))))
               _%hd196829196877%_
               _%hd196826196867%_
               _%hd196823196857%_)
              (_%g196814196836%_ _%g196815196840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196814196836%_
                                               _%g196815196840%_))))
                                      (_%g196814196836%_ _%g196815196840%_))))
                              (_%g196814196836%_ _%g196815196840%_))))
                      (_%g196814196836%_ _%g196815196840%_)))))
          (_%g196813196905%_ _%$stx196810%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196909%_)
        (let* ((_%g196913196927%_
                (lambda (_%g196914196923%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196914196923%_))))
               (_%g196912196968%_
                (lambda (_%g196914196931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196914196931%_))
                      (let ((_%e196918196934%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196914196931%_))))
                        (let ((_%hd196917196938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196918196934%_)))
                              (_%tl196916196941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196918196934%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196916196941%_))
                              (let ((_%e196921196944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196916196941%_))))
                                (let ((_%hd196920196948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196921196944%_)))
                                      (_%tl196919196951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196921196944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196919196951%_))
                                      ((lambda (_%L196954%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196920196948%_)
                                      (_%g196913196927%_ _%g196914196931%_))))
                              (_%g196913196927%_ _%g196914196931%_))))
                      (_%g196913196927%_ _%g196914196931%_)))))
          (_%g196912196968%_ _%$stx196909%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196972%_)
        (let* ((_%g196976196994%_
                (lambda (_%g196977196990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196977196990%_))))
               (_%g196975197049%_
                (lambda (_%g196977196998%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196977196998%_))
                      (let ((_%e196982197001%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196977196998%_))))
                        (let ((_%hd196981197005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196982197001%_)))
                              (_%tl196980197008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196982197001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196980197008%_))
                              (let ((_%e196985197011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196980197008%_))))
                                (let ((_%hd196984197015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196985197011%_)))
                                      (_%tl196983197018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196985197011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196983197018%_))
                                      (let ((_%e196988197021%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196983197018%_))))
                                        (let ((_%hd196987197025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196988197021%_)))
                                              (_%tl196986197028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196988197021%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196986197028%_))
                                              ((lambda (_%L197031%_
                                                        _%L197033%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197033%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197031%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196987197025%_
                                               _%hd196984197015%_)
                                              (_%g196976196994%_
                                               _%g196977196998%_))))
                                      (_%g196976196994%_ _%g196977196998%_))))
                              (_%g196976196994%_ _%g196977196998%_))))
                      (_%g196976196994%_ _%g196977196998%_)))))
          (_%g196975197049%_ _%$stx196972%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197053%_)
        (let* ((_%__stx201257201258%_ _%$stx197053%_)
               (_%g197060197121%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201257201258%_)))))
          (let ((_%__kont201260201261%_
                 (lambda (_%L197359%_ _%L197361%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197361%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197359%_ '()))
                                     '())))))
                (_%__kont201262201263%_
                 (lambda (_%L197298%_ _%L197300%_ _%L197301%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197301%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197300%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197298%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont201264201265%_
                 (lambda (_%L197222%_ _%L197224%_)
                   (cons _%L197224%_ (cons _%L197222%_ (cons '#f '())))))
                (_%__kont201266201267%_
                 (lambda (_%L197172%_ _%L197174%_ _%L197175%_)
                   (cons _%L197175%_
                         (cons _%L197174%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197172%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201257201258%_))
                (let ((_%e197066197329%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201257201258%_))))
                  (let ((_%tl197064197336%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197066197329%_)))
                        (_%hd197065197333%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197066197329%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197064197336%_))
                        (let ((_%e197069197339%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197064197336%_))))
                          (let ((_%tl197067197346%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197069197339%_)))
                                (_%hd197068197343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197069197339%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197067197346%_))
                                (let ((_%e197072197349%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197067197346%_))))
                                  (let ((_%tl197070197356%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197072197349%_)))
                                        (_%hd197071197353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197072197349%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197070197356%_))
                                        (_%__kont201260201261%_
                                         _%hd197071197353%_
                                         _%hd197068197343%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197070197356%_))
                                            (let ((_%e197087197274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197070197356%_))))
                                              (let ((_%tl197085197281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197087197274%_)))
                                                    (_%hd197086197278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197087197274%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197086197278%_))
                                                    (let ((_%e197088197284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197086197278%_))))
                                                      (if (equal? _%e197088197284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197085197281%_))
                      (let ((_%e197091197288%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197085197281%_))))
                        (let ((_%tl197089197295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197091197288%_)))
                              (_%hd197090197292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197091197288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197089197295%_))
                              (_%__kont201262201263%_
                               _%hd197090197292%_
                               _%hd197071197353%_
                               _%hd197068197343%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197071197353%_))
                                  (let ((_%e197112197158%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197071197353%_))))
                                    (declare (not safe))
                                    (_%g197060197121%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197060197121%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197071197353%_))
                          (let ((_%e197112197158%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197071197353%_))))
                            (if (equal? _%e197112197158%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197085197281%_))
                                    (_%__kont201266201267%_
                                     _%hd197086197278%_
                                     _%hd197068197343%_
                                     _%hd197065197333%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197060197121%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197060197121%_))))
                          (let () (declare (not safe)) (_%g197060197121%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197071197353%_))
                      (let ((_%e197112197158%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197071197353%_))))
                        (if (equal? _%e197112197158%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197085197281%_))
                                (_%__kont201266201267%_
                                 _%hd197086197278%_
                                 _%hd197068197343%_
                                 _%hd197065197333%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197060197121%_)))
                            (let () (declare (not safe)) (_%g197060197121%_))))
                      (let () (declare (not safe)) (_%g197060197121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197071197353%_))
                                                        (let ((_%e197112197158%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197071197353%_))))
                  (if (equal? _%e197112197158%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197085197281%_))
                          (_%__kont201266201267%_
                           _%hd197086197278%_
                           _%hd197068197343%_
                           _%hd197065197333%_)
                          (let () (declare (not safe)) (_%g197060197121%_)))
                      (let () (declare (not safe)) (_%g197060197121%_))))
                (let () (declare (not safe)) (_%g197060197121%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197071197353%_))
                                                (let ((_%e197112197158%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197071197353%_))))
                                                  (declare (not safe))
                                                  (_%g197060197121%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197060197121%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197067197346%_))
                                    (_%__kont201264201265%_
                                     _%hd197068197343%_
                                     _%hd197065197333%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197060197121%_))))))
                        (let () (declare (not safe)) (_%g197060197121%_)))))
                (let () (declare (not safe)) (_%g197060197121%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx197380%_)
        (let* ((_%g197384197413%_
                (lambda (_%g197385197409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197385197409%_))))
               (_%g197383197522%_
                (lambda (_%g197385197417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197385197417%_))
                      (let ((_%e197389197420%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197385197417%_))))
                        (let ((_%hd197388197424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197389197420%_)))
                              (_%tl197387197427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197389197420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197387197427%_))
                              (let ((_g201887_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197387197427%_
                                        '0))))
                                (begin
                                  (let ((_g201888_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201887_)
                                               (##vector-length _g201887_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201888_ 2)))
                                        (error "Context expects 2 values"
                                               _g201888_)))
                                  (let ((_%target197390197430%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201887_ 0)))
                                        (_%tl197392197433%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201887_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197392197433%_))
                                        (letrec ((_%loop197393197436%_
                                                  (lambda (_%hd197391197440%_
                                                           _%clause197397197443%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197391197440%_))
                                                        (let ((_%e197394197446%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197391197440%_))))
                  (let ((_%lp-hd197395197450%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197394197446%_)))
                        (_%lp-tl197396197453%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197394197446%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd197395197450%_))
                        (let ((_g201889_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd197395197450%_
                                  '0))))
                          (begin
                            (let ((_g201890_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201889_)
                                         (##vector-length _g201889_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201890_ 2)))
                                  (error "Context expects 2 values"
                                         _g201890_)))
                            (let ((_%target197399197456%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201889_ 0)))
                                  (_%tl197401197459%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201889_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197401197459%_))
                                  (letrec ((_%loop197402197462%_
                                            (lambda (_%hd197400197466%_
                                                     _%clause197406197469%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197400197466%_))
                                                  (let ((_%e197403197472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd197400197466%_))))
                                                    (let ((_%lp-hd197404197476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197403197472%_)))
                                                          (_%lp-tl197405197479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197403197472%_))))
                                                      (_%loop197402197462%_
                                                       _%lp-tl197405197479%_
                                                       (cons _%lp-hd197404197476%_
                                                             _%clause197406197469%_))))
                                                  (let ((_%clause197407197482%_
                                                         (reverse _%clause197406197469%_)))
                                                    (_%loop197393197436%_
                                                     _%lp-tl197396197453%_
                                                     (cons _%clause197407197482%_
                                                           _%clause197397197443%_)))))))
                                    (_%loop197402197462%_
                                     _%target197399197456%_
                                     '()))
                                  (_%g197384197413%_ _%g197385197417%_)))))
                        (_%g197384197413%_ _%g197385197417%_))))
                (let ((_%clause197398197486%_
                       (reverse _%clause197397197443%_)))
                  ((lambda (_%L197490%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201891
                                              (lambda (_%g197505197510%_
                                                       _%g197506197513%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g197507197516%_ _%g197508197519%_)
                             (cons _%g197507197516%_ _%g197508197519%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201892 '() _%g197505197510%_)))
              _%g197506197513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201891
                                          '()
                                          _%L197490%_)))
                                 '())))
                   _%clause197398197486%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197393197436%_
                                           _%target197390197430%_
                                           '()))
                                        (_%g197384197413%_
                                         _%g197385197417%_)))))
                              (_%g197384197413%_ _%g197385197417%_))))
                      (_%g197384197413%_ _%g197385197417%_)))))
          (_%g197383197522%_ _%$stx197380%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx197528%_)
        (let* ((_%g197532197550%_
                (lambda (_%g197533197546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197533197546%_))))
               (_%g197531197605%_
                (lambda (_%g197533197554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197533197554%_))
                      (let ((_%e197538197557%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197533197554%_))))
                        (let ((_%hd197537197561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197538197557%_)))
                              (_%tl197536197564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197538197557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197536197564%_))
                              (let ((_%e197541197567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197536197564%_))))
                                (let ((_%hd197540197571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197541197567%_)))
                                      (_%tl197539197574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197541197567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197539197574%_))
                                      (let ((_%e197544197577%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197539197574%_))))
                                        (let ((_%hd197543197581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197544197577%_)))
                                              (_%tl197542197584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197544197577%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197542197584%_))
                                              ((lambda (_%L197587%_
                                                        _%L197589%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197589%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197587%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197543197581%_
                                               _%hd197540197571%_)
                                              (_%g197532197550%_
                                               _%g197533197554%_))))
                                      (_%g197532197550%_ _%g197533197554%_))))
                              (_%g197532197550%_ _%g197533197554%_))))
                      (_%g197532197550%_ _%g197533197554%_)))))
          (_%g197531197605%_ _%$stx197528%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx197609%_)
        (let* ((_%g197613197631%_
                (lambda (_%g197614197627%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197614197627%_))))
               (_%g197612197686%_
                (lambda (_%g197614197635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197614197635%_))
                      (let ((_%e197619197638%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197614197635%_))))
                        (let ((_%hd197618197642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197619197638%_)))
                              (_%tl197617197645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197619197638%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197617197645%_))
                              (let ((_%e197622197648%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197617197645%_))))
                                (let ((_%hd197621197652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197622197648%_)))
                                      (_%tl197620197655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197622197648%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197620197655%_))
                                      (let ((_%e197625197658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197620197655%_))))
                                        (let ((_%hd197624197662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197625197658%_)))
                                              (_%tl197623197665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197625197658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197623197665%_))
                                              ((lambda (_%L197668%_
                                                        _%L197670%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197670%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197668%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197624197662%_
                                               _%hd197621197652%_)
                                              (_%g197613197631%_
                                               _%g197614197635%_))))
                                      (_%g197613197631%_ _%g197614197635%_))))
                              (_%g197613197631%_ _%g197614197635%_))))
                      (_%g197613197631%_ _%g197614197635%_)))))
          (_%g197612197686%_ _%$stx197609%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197690%_)
        (let* ((_%g197694197723%_
                (lambda (_%g197695197719%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197695197719%_))))
               (_%g197693197823%_
                (lambda (_%g197695197727%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197695197727%_))
                      (let ((_%e197700197730%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197695197727%_))))
                        (let ((_%hd197699197734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197700197730%_)))
                              (_%tl197698197737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197700197730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197698197737%_))
                              (let ((_g201893_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197698197737%_
                                        '0))))
                                (begin
                                  (let ((_g201894_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201893_)
                                               (##vector-length _g201893_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201894_ 2)))
                                        (error "Context expects 2 values"
                                               _g201894_)))
                                  (let ((_%target197701197740%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201893_ 0)))
                                        (_%tl197703197743%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201893_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197703197743%_))
                                        (letrec ((_%loop197704197746%_
                                                  (lambda (_%hd197702197750%_
                                                           _%rule197708197753%_
                                                           _%proc197709197755%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197702197750%_))
                                                        (let ((_%e197705197758%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197702197750%_))))
                  (let ((_%lp-hd197706197762%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197705197758%_)))
                        (_%lp-tl197707197765%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197705197758%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197706197762%_))
                        (let ((_%e197714197768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197706197762%_))))
                          (let ((_%hd197713197772%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197714197768%_)))
                                (_%tl197712197775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197714197768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197712197775%_))
                                (let ((_%e197717197778%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197712197775%_))))
                                  (let ((_%hd197716197782%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197717197778%_)))
                                        (_%tl197715197785%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197717197778%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197715197785%_))
                                        (_%loop197704197746%_
                                         _%lp-tl197707197765%_
                                         (cons _%hd197716197782%_
                                               _%rule197708197753%_)
                                         (cons _%hd197713197772%_
                                               _%proc197709197755%_))
                                        (_%g197694197723%_
                                         _%g197695197727%_))))
                                (_%g197694197723%_ _%g197695197727%_))))
                        (_%g197694197723%_ _%g197695197727%_))))
                (let ((_%rule197710197788%_ (reverse _%rule197708197753%_))
                      (_%proc197711197791%_ (reverse _%proc197709197755%_)))
                  ((lambda (_%L197794%_ _%L197796%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197794%_
                                _%L197796%_))
                             (let ((__tmp201895
                                    (lambda (_%g197811197815%_
                                             _%g197812197818%_
                                             _%g197813197820%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197812197818%_
                                                        (cons _%g197811197815%_
                                                              '())))
                                            _%g197813197820%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201895
                                '()
                                _%L197794%_
                                _%L197796%_)))))
                   _%rule197710197788%_
                   _%proc197711197791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197704197746%_
                                           _%target197701197740%_
                                           '()
                                           '()))
                                        (_%g197694197723%_
                                         _%g197695197727%_)))))
                              (_%g197694197723%_ _%g197695197727%_))))
                      (_%g197694197723%_ _%g197695197727%_)))))
          (_%g197693197823%_ _%$stx197690%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197828%_)
        (let* ((_%g197832197850%_
                (lambda (_%g197833197846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197833197846%_))))
               (_%g197831197905%_
                (lambda (_%g197833197854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197833197854%_))
                      (let ((_%e197838197857%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197833197854%_))))
                        (let ((_%hd197837197861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197838197857%_)))
                              (_%tl197836197864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197838197857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197836197864%_))
                              (let ((_%e197841197867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197836197864%_))))
                                (let ((_%hd197840197871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197841197867%_)))
                                      (_%tl197839197874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197841197867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197839197874%_))
                                      (let ((_%e197844197877%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197839197874%_))))
                                        (let ((_%hd197843197881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197844197877%_)))
                                              (_%tl197842197884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197844197877%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197842197884%_))
                                              ((lambda (_%L197887%_
                                                        _%L197889%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L197889%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L197887%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197889%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197843197881%_
                                               _%hd197840197871%_)
                                              (_%g197832197850%_
                                               _%g197833197854%_))))
                                      (_%g197832197850%_ _%g197833197854%_))))
                              (_%g197832197850%_ _%g197833197854%_))))
                      (_%g197832197850%_ _%g197833197854%_)))))
          (_%g197831197905%_ _%$stx197828%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197909%_)
        (let* ((_%__stx201375201376%_ _%$stx197909%_)
               (_%g197914197939%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201375201376%_)))))
          (let ((_%__kont201378201379%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201380201381%_
                 (lambda (_%L197986%_ _%L197988%_ _%L197989%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197989%_ (cons _%L197988%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197986%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201375201376%_))
                (let ((_%e197918198015%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201375201376%_))))
                  (let ((_%tl197916198022%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197918198015%_)))
                        (_%hd197917198019%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197918198015%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197916198022%_))
                        (_%__kont201378201379%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197916198022%_))
                            (let ((_%e197927197956%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197916198022%_))))
                              (let ((_%tl197925197963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197927197956%_)))
                                    (_%hd197926197960%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197927197956%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197926197960%_))
                                    (let ((_%e197930197966%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197926197960%_))))
                                      (let ((_%tl197928197973%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197930197966%_)))
                                            (_%hd197929197970%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197930197966%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197928197973%_))
                                            (let ((_%e197933197976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197928197973%_))))
                                              (let ((_%tl197931197983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197933197976%_)))
                                                    (_%hd197932197980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197933197976%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197931197983%_))
                                                    (_%__kont201380201381%_
                                                     _%tl197925197963%_
                                                     _%hd197932197980%_
                                                     _%hd197929197970%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197914197939%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197914197939%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197914197939%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197914197939%_))))))
                (let () (declare (not safe)) (_%g197914197939%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198033%_)
        (let* ((_%__stx201419201420%_ _%$stx198033%_)
               (_%g198038198069%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201419201420%_)))))
          (let ((_%__kont201422201423%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201424201425%_
                 (lambda (_%L198136%_ _%L198138%_ _%L198139%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198139%_
                                           (let ((__tmp201896
                                                  (lambda (_%g198159198162%_
                                                           _%g198160198165%_)
                                                    (cons _%g198159198162%_
                                                          _%g198160198165%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201896
                                              '()
                                              _%L198138%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198136%_)
                                     '()))))))
            (let ((_%__match201462201463%_
                   (lambda (_%e198048198076%_
                            _%hd198047198080%_
                            _%tl198046198083%_
                            _%e198051198086%_
                            _%hd198050198090%_
                            _%tl198049198093%_
                            _%e198054198096%_
                            _%hd198053198100%_
                            _%tl198052198103%_
                            _%__splice201426201427%_
                            _%target198055198106%_
                            _%tl198057198109%_)
                     (letrec ((_%loop198058198112%_
                               (lambda (_%hd198056198116%_ _%sig198062198119%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198056198116%_))
                                     (let ((_%e198059198122%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198056198116%_))))
                                       (let ((_%lp-tl198061198129%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198059198122%_)))
                                             (_%lp-hd198060198126%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198059198122%_))))
                                         (_%loop198058198112%_
                                          _%lp-tl198061198129%_
                                          (cons _%lp-hd198060198126%_
                                                _%sig198062198119%_))))
                                     (let ((_%sig198063198132%_
                                            (reverse _%sig198062198119%_)))
                                       (_%__kont201424201425%_
                                        _%tl198049198093%_
                                        _%sig198063198132%_
                                        _%hd198053198100%_))))))
                       (_%loop198058198112%_ _%target198055198106%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201419201420%_))
                  (let ((_%e198042198175%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201419201420%_))))
                    (let ((_%tl198040198182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198042198175%_)))
                          (_%hd198041198179%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198042198175%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198040198182%_))
                          (_%__kont201422201423%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198040198182%_))
                              (let ((_%e198051198086%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198040198182%_))))
                                (let ((_%tl198049198093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198051198086%_)))
                                      (_%hd198050198090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198051198086%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198050198090%_))
                                      (let ((_%e198054198096%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198050198090%_))))
                                        (let ((_%tl198052198103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198054198096%_)))
                                              (_%hd198053198100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198054198096%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198052198103%_))
                                              (let ((_%__splice201426201427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198052198103%_
                                                        '0))))
                                                (let ((_%tl198057198109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201426201427%_
                                                          '1)))
                                                      (_%target198055198106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201426201427%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198057198109%_))
                                                      (_%__match201462201463%_
                                                       _%e198042198175%_
                                                       _%hd198041198179%_
                                                       _%tl198040198182%_
                                                       _%e198051198086%_
                                                       _%hd198050198090%_
                                                       _%tl198049198093%_
                                                       _%e198054198096%_
                                                       _%hd198053198100%_
                                                       _%tl198052198103%_
                                                       _%__splice201426201427%_
                                                       _%target198055198106%_
                                                       _%tl198057198109%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198038198069%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198038198069%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198038198069%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198038198069%_))))))
                  (let () (declare (not safe)) (_%g198038198069%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx198194%_)
        (let* ((_%__stx201465201466%_ _%$stx198194%_)
               (_%g198199198246%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201465201466%_)))))
          (let ((_%__kont201468201469%_
                 (lambda (_%L198408%_ _%L198410%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L198410%_
                               (let ((__tmp201897
                                      (lambda (_%g198430198433%_
                                               _%g198431198436%_)
                                        (cons _%g198430198433%_
                                              _%g198431198436%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201897 '() _%L198408%_))))))
                (_%__kont201472201473%_
                 (lambda (_%L198303%_ _%L198305%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L198305%_
                               (let ((__tmp201898
                                      (lambda (_%g198322198325%_
                                               _%g198323198328%_)
                                        (cons _%g198322198325%_
                                              _%g198323198328%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201898 '() _%L198303%_)))))))
            (let* ((_%__match201532201533%_
                    (lambda (_%e198228198253%_
                             _%hd198227198257%_
                             _%tl198226198260%_
                             _%e198231198263%_
                             _%hd198230198267%_
                             _%tl198229198270%_
                             _%__splice201474201475%_
                             _%target198232198273%_
                             _%tl198234198276%_)
                      (letrec ((_%loop198235198279%_
                                (lambda (_%hd198233198283%_
                                         _%sig198239198286%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198233198283%_))
                                      (let ((_%e198236198289%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198233198283%_))))
                                        (let ((_%lp-tl198238198296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198236198289%_)))
                                              (_%lp-hd198237198293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198236198289%_))))
                                          (_%loop198235198279%_
                                           _%lp-tl198238198296%_
                                           (cons _%lp-hd198237198293%_
                                                 _%sig198239198286%_))))
                                      (let ((_%sig198240198299%_
                                             (reverse _%sig198239198286%_)))
                                        (_%__kont201472201473%_
                                         _%sig198240198299%_
                                         _%hd198230198267%_))))))
                        (_%loop198235198279%_ _%target198232198273%_ '()))))
                   (_%__match201524201525%_
                    (lambda (_%e198228198253%_
                             _%hd198227198257%_
                             _%tl198226198260%_
                             _%e198231198263%_
                             _%hd198230198267%_
                             _%tl198229198270%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl198229198270%_))
                          (let ((_%__splice201474201475%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl198229198270%_
                                    '0))))
                            (let ((_%tl198234198276%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201474201475%_
                                      '1)))
                                  (_%target198232198273%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201474201475%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198234198276%_))
                                  (_%__match201532201533%_
                                   _%e198228198253%_
                                   _%hd198227198257%_
                                   _%tl198226198260%_
                                   _%e198231198263%_
                                   _%hd198230198267%_
                                   _%tl198229198270%_
                                   _%__splice201474201475%_
                                   _%target198232198273%_
                                   _%tl198234198276%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g198199198246%_)))))
                          (let () (declare (not safe)) (_%g198199198246%_)))))
                   (_%__match201512201513%_
                    (lambda (_%e198205198338%_
                             _%hd198204198342%_
                             _%tl198203198345%_
                             _%e198208198348%_
                             _%hd198207198352%_
                             _%tl198206198355%_
                             _%e198211198358%_
                             _%hd198210198362%_
                             _%tl198209198365%_
                             _%e198214198368%_
                             _%hd198213198372%_
                             _%tl198212198375%_
                             _%__splice201470201471%_
                             _%target198215198378%_
                             _%tl198217198381%_)
                      (letrec ((_%loop198218198384%_
                                (lambda (_%hd198216198388%_
                                         _%sig198222198391%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198216198388%_))
                                      (let ((_%e198219198394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198216198388%_))))
                                        (let ((_%lp-tl198221198401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198219198394%_)))
                                              (_%lp-hd198220198398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198219198394%_))))
                                          (_%loop198218198384%_
                                           _%lp-tl198221198401%_
                                           (cons _%lp-hd198220198398%_
                                                 _%sig198222198391%_))))
                                      (let ((_%sig198223198404%_
                                             (reverse _%sig198222198391%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198209198365%_))
                                            (_%__kont201468201469%_
                                             _%sig198223198404%_
                                             _%hd198207198352%_)
                                            (_%__match201524201525%_
                                             _%e198205198338%_
                                             _%hd198204198342%_
                                             _%tl198203198345%_
                                             _%e198208198348%_
                                             _%hd198207198352%_
                                             _%tl198206198355%_)))))))
                        (_%loop198218198384%_ _%target198215198378%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201465201466%_))
                  (let ((_%e198205198338%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201465201466%_))))
                    (let ((_%tl198203198345%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198205198338%_)))
                          (_%hd198204198342%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198205198338%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198203198345%_))
                          (let ((_%e198208198348%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198203198345%_))))
                            (let ((_%tl198206198355%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198208198348%_)))
                                  (_%hd198207198352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198208198348%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198206198355%_))
                                  (let ((_%e198211198358%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198206198355%_))))
                                    (let ((_%tl198209198365%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198211198358%_)))
                                          (_%hd198210198362%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198211198358%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd198210198362%_))
                                          (let ((_%e198214198368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd198210198362%_))))
                                            (let ((_%tl198212198375%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198214198368%_)))
                                                  (_%hd198213198372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198214198368%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd198213198372%_))
                                                  (if (let ((__tmp201899
                                                             |gxc[1]#_g201900_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201899
                                                         _%hd198213198372%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl198212198375%_))
                                                          (let ((_%__splice201470201471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198212198375%_ '0))))
                    (let ((_%tl198217198381%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201470201471%_ '1)))
                          (_%target198215198378%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201470201471%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198217198381%_))
                          (_%__match201512201513%_
                           _%e198205198338%_
                           _%hd198204198342%_
                           _%tl198203198345%_
                           _%e198208198348%_
                           _%hd198207198352%_
                           _%tl198206198355%_
                           _%e198211198358%_
                           _%hd198210198362%_
                           _%tl198209198365%_
                           _%e198214198368%_
                           _%hd198213198372%_
                           _%tl198212198375%_
                           _%__splice201470201471%_
                           _%target198215198378%_
                           _%tl198217198381%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198206198355%_))
                              (let ((_%__splice201474201475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198206198355%_
                                        '0))))
                                (let ((_%tl198234198276%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201474201475%_
                                          '1)))
                                      (_%target198232198273%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201474201475%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198234198276%_))
                                      (_%__match201532201533%_
                                       _%e198205198338%_
                                       _%hd198204198342%_
                                       _%tl198203198345%_
                                       _%e198208198348%_
                                       _%hd198207198352%_
                                       _%tl198206198355%_
                                       _%__splice201474201475%_
                                       _%target198232198273%_
                                       _%tl198234198276%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g198199198246%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198199198246%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl198206198355%_))
                      (let ((_%__splice201474201475%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl198206198355%_
                                '0))))
                        (let ((_%tl198234198276%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201474201475%_ '1)))
                              (_%target198232198273%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201474201475%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198234198276%_))
                              (_%__match201532201533%_
                               _%e198205198338%_
                               _%hd198204198342%_
                               _%tl198203198345%_
                               _%e198208198348%_
                               _%hd198207198352%_
                               _%tl198206198355%_
                               _%__splice201474201475%_
                               _%target198232198273%_
                               _%tl198234198276%_)
                              (let ()
                                (declare (not safe))
                                (_%g198199198246%_)))))
                      (let () (declare (not safe)) (_%g198199198246%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl198206198355%_))
                  (let ((_%__splice201474201475%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198206198355%_ '0))))
                    (let ((_%tl198234198276%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201474201475%_ '1)))
                          (_%target198232198273%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201474201475%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198234198276%_))
                          (_%__match201532201533%_
                           _%e198205198338%_
                           _%hd198204198342%_
                           _%tl198203198345%_
                           _%e198208198348%_
                           _%hd198207198352%_
                           _%tl198206198355%_
                           _%__splice201474201475%_
                           _%target198232198273%_
                           _%tl198234198276%_)
                          (let () (declare (not safe)) (_%g198199198246%_)))))
                  (let () (declare (not safe)) (_%g198199198246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl198206198355%_))
                                                      (let ((_%__splice201474201475%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl198206198355%_ '0))))
                (let ((_%tl198234198276%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201474201475%_ '1)))
                      (_%target198232198273%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201474201475%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198234198276%_))
                      (_%__match201532201533%_
                       _%e198205198338%_
                       _%hd198204198342%_
                       _%tl198203198345%_
                       _%e198208198348%_
                       _%hd198207198352%_
                       _%tl198206198355%_
                       _%__splice201474201475%_
                       _%target198232198273%_
                       _%tl198234198276%_)
                      (let () (declare (not safe)) (_%g198199198246%_)))))
              (let () (declare (not safe)) (_%g198199198246%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198206198355%_))
                                              (let ((_%__splice201474201475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198206198355%_
                                                        '0))))
                                                (let ((_%tl198234198276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201474201475%_
                                                          '1)))
                                                      (_%target198232198273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201474201475%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198234198276%_))
                                                      (_%__match201532201533%_
                                                       _%e198205198338%_
                                                       _%hd198204198342%_
                                                       _%tl198203198345%_
                                                       _%e198208198348%_
                                                       _%hd198207198352%_
                                                       _%tl198206198355%_
                                                       _%__splice201474201475%_
                                                       _%target198232198273%_
                                                       _%tl198234198276%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198199198246%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198199198246%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198206198355%_))
                                      (let ((_%__splice201474201475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198206198355%_
                                                '0))))
                                        (let ((_%tl198234198276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201474201475%_
                                                  '1)))
                                              (_%target198232198273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201474201475%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198234198276%_))
                                              (_%__match201532201533%_
                                               _%e198205198338%_
                                               _%hd198204198342%_
                                               _%tl198203198345%_
                                               _%e198208198348%_
                                               _%hd198207198352%_
                                               _%tl198206198355%_
                                               _%__splice201474201475%_
                                               _%target198232198273%_
                                               _%tl198234198276%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198199198246%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198199198246%_))))))
                          (let () (declare (not safe)) (_%g198199198246%_)))))
                  (let () (declare (not safe)) (_%g198199198246%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx199524%_ _%id199526%_)
        (let ((_%proc199530%_
               (let ((__tmp201901
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199526%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201901))))
          (if (let () (declare (not safe)) (procedure? _%proc199530%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx199524%_
                 _%id199526%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx199515%_ _%id199517%_)
        (let ((_%klass199521%_
               (let ((__tmp201902
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199517%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201902))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass199521%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx199515%_
                 _%id199517%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198765%_ _%proc198767%_ _%sig198768%_)
        (letrec ((_%signature-arity198770%_
                  (lambda (_%args199447%_)
                    (let _%loop199450%_ ((_%rest199453%_ _%args199447%_)
                                         (_%count199455%_ '0))
                      (let* ((_%rest199456199467%_ _%rest199453%_)
                             (_%E199460199473%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest199456199467%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K199463199504%_
                               (lambda (_%rest199501%_)
                                 (let ((__tmp201903
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count199455%_ '1))))
                                   (declare (not safe))
                                   (_%loop199450%_
                                    _%rest199501%_
                                    __tmp201903))))
                              (_%K199462199493%_ (lambda () _%count199455%_))
                              (_%K199461199481%_
                               (lambda () (cons _%count199455%_ '()))))
                          (let ((_%try-match199458199497%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest199456199467%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K199462199493%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K199461199481%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest199456199467%_))
                                (let* ((_%tl199465199508%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199456199467%_)))
                                       (_%rest199512%_ _%tl199465199508%_))
                                  (declare (not safe))
                                  (_%K199463199504%_ _%rest199512%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match199458199497%_)))))))))
                 (_%make-signature198772%_
                  (lambda (_%args199329%_
                           _%return199331%_
                           _%effect199332%_
                           _%unchecked199333%_)
                    (let ((__tmp201904
                           (lambda (_%g199334199336%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx198765%_
                                _%g199334199336%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201904 _%args199329%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx198765%_ _%return199331%_))
                    (if _%unchecked199333%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx198765%_
                           _%unchecked199333%_))
                        '#!void)
                    (let ((_%arity199340%_
                           (let ((__tmp201905
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args199329%_))))
                             (declare (not safe))
                             (_%signature-arity198770%_ __tmp201905))))
                      (if _%effect199332%_
                          (let ((_%effect199343%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect199332%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect199343%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect199343%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198765%_
                                   _%proc198767%_
                                   _%effect199343%_))))
                          '#!void)
                      (cons _%arity199340%_
                            (cons (let* ((_%g199346199369%_
                                          (lambda (_%g199347199365%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g199347199365%_))))
                                         (_%g199345199443%_
                                          (lambda (_%g199347199373%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g199347199373%_))
                                                (let ((_%e199354199376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g199347199373%_))))
                                                  (let ((_%hd199353199380%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199354199376%_)))
                                                        (_%tl199352199383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199354199376%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199352199383%_))
                                                        (let ((_%e199357199386%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199352199383%_))))
                  (let ((_%hd199356199390%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199357199386%_)))
                        (_%tl199355199393%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199357199386%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199355199393%_))
                        (let ((_%e199360199396%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199355199393%_))))
                          (let ((_%hd199359199400%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199360199396%_)))
                                (_%tl199358199403%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199360199396%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199358199403%_))
                                (let ((_%e199363199406%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199358199403%_))))
                                  (let ((_%hd199362199410%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199363199406%_)))
                                        (_%tl199361199413%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199363199406%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199361199413%_))
                                        ((lambda (_%L199416%_
                                                  _%L199418%_
                                                  _%L199419%_
                                                  _%L199420%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!signature))
                                                   (cons 'arguments:
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'quote))
                             (cons _%L199420%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199419%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L199418%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L199416%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199362199410%_
                                         _%hd199359199400%_
                                         _%hd199356199390%_
                                         _%hd199353199380%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g199346199369%_
                                           _%g199347199373%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199346199369%_ _%g199347199373%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g199346199369%_ _%g199347199373%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199346199369%_ _%g199347199373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199346199369%_
                                                   _%g199347199373%_)))))
                                         (__tmp201906
                                          (list _%args199329%_
                                                _%return199331%_
                                                _%effect199332%_
                                                _%unchecked199333%_)))
                                    (declare (not safe))
                                    (_%g199345199443%_ __tmp201906))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx198765%_ _%proc198767%_))
          (let* ((_%__stx201543201544%_ _%sig198768%_)
                 (_%g198779198882%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201543201544%_)))))
            (let ((_%__kont201546201547%_
                   (lambda (_%L199310%_ _%L199312%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198772%_
                        _%L199312%_
                        _%L199310%_
                        '#f
                        '#f))))
                  (_%__kont201548201549%_
                   (lambda (_%L199261%_ _%L199263%_ _%L199264%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198772%_
                        _%L199264%_
                        _%L199263%_
                        _%L199261%_
                        '#f))))
                  (_%__kont201550201551%_
                   (lambda (_%L199185%_ _%L199187%_ _%L199188%_)
                     (let ((__tmp201907
                            (let ((__tmp201908
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198767%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201908))))
                       (declare (not safe))
                       (_%make-signature198772%_
                        _%L199188%_
                        _%L199187%_
                        _%L199185%_
                        __tmp201907))))
                  (_%__kont201552201553%_
                   (lambda (_%L199091%_ _%L199093%_ _%L199094%_ _%L199095%_)
                     (let ((__tmp201909
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199091%_))))
                       (declare (not safe))
                       (_%make-signature198772%_
                        _%L199095%_
                        _%L199094%_
                        '#f
                        __tmp201909))))
                  (_%__kont201554201555%_
                   (lambda (_%L198998%_ _%L199000%_)
                     (let ((__tmp201910
                            (let ((__tmp201911
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198767%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201911))))
                       (declare (not safe))
                       (_%make-signature198772%_
                        _%L199000%_
                        _%L198998%_
                        '#f
                        __tmp201910))))
                  (_%__kont201556201557%_
                   (lambda (_%L198933%_ _%L198935%_ _%L198936%_)
                     (let ((__tmp201912
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198933%_))))
                       (declare (not safe))
                       (_%make-signature198772%_
                        _%L198936%_
                        _%L198935%_
                        '#f
                        __tmp201912)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201543201544%_))
                  (let ((_%e198785199290%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201543201544%_))))
                    (let ((_%tl198783199297%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198785199290%_)))
                          (_%hd198784199294%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198785199290%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198783199297%_))
                          (let ((_%e198788199300%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198783199297%_))))
                            (let ((_%tl198786199307%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198788199300%_)))
                                  (_%hd198787199304%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198788199300%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198786199307%_))
                                  (_%__kont201546201547%_
                                   _%hd198787199304%_
                                   _%hd198784199294%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198786199307%_))
                                      (let ((_%e198800199237%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198786199307%_))))
                                        (let ((_%tl198798199244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198800199237%_)))
                                              (_%hd198799199241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198800199237%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198799199241%_))
                                              (let ((_%e198801199247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198799199241%_))))
                                                (if (equal? _%e198801199247%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198798199244%_))
                                                        (let ((_%e198804199251%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198798199244%_))))
                  (let ((_%tl198802199258%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198804199251%_)))
                        (_%hd198803199255%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198804199251%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198802199258%_))
                        (_%__kont201548201549%_
                         _%hd198803199255%_
                         _%hd198787199304%_
                         _%hd198784199294%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198802199258%_))
                            (let ((_%e198823199171%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198802199258%_))))
                              (let ((_%tl198821199178%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198823199171%_)))
                                    (_%hd198822199175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198823199171%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198822199175%_))
                                    (let ((_%e198824199181%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198822199175%_))))
                                      (if (equal? _%e198824199181%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198821199178%_))
                                              (_%__kont201550201551%_
                                               _%hd198803199255%_
                                               _%hd198787199304%_
                                               _%hd198784199294%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198821199178%_))
                                                  (let ((_%e198848199081%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198821199178%_))))
                                                    (let ((_%tl198846199088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198848199081%_)))
                                                          (_%hd198847199085%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198848199081%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198846199088%_))
                                                          (_%__kont201552201553%_
                                                           _%hd198847199085%_
                                                           _%hd198803199255%_
                                                           _%hd198787199304%_
                                                           _%hd198784199294%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198779198882%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198779198882%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198779198882%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198779198882%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198779198882%_))))))
                (let () (declare (not safe)) (_%g198779198882%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198801199247%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198798199244%_))
                                                            (_%__kont201554201555%_
                                                             _%hd198787199304%_
                                                             _%hd198784199294%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198798199244%_))
                        (let ((_%e198876198923%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198798199244%_))))
                          (let ((_%tl198874198930%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198876198923%_)))
                                (_%hd198875198927%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198876198923%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198874198930%_))
                                (_%__kont201556201557%_
                                 _%hd198875198927%_
                                 _%hd198787199304%_
                                 _%hd198784199294%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198779198882%_)))))
                        (let () (declare (not safe)) (_%g198779198882%_))))
                (let () (declare (not safe)) (_%g198779198882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198779198882%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198779198882%_))))))
                          (let () (declare (not safe)) (_%g198779198882%_)))))
                  (let () (declare (not safe)) (_%g198779198882%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig198445%_)
        (let* ((_%g198448198514%_
                (lambda (_%g198449198510%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198449198510%_))))
               (_%g198447198761%_
                (lambda (_%g198449198518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198449198518%_))
                      (let ((_%e198456198521%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198449198518%_))))
                        (let ((_%hd198455198525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198456198521%_)))
                              (_%tl198454198528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198456198521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198454198528%_))
                              (let ((_%e198459198531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198454198528%_))))
                                (let ((_%hd198458198535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198459198531%_)))
                                      (_%tl198457198538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198459198531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd198458198535%_))
                                      (let ((_%e198460198541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd198458198535%_))))
                                        (if (equal? _%e198460198541%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198457198538%_))
                                                (let ((_%e198463198545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198457198538%_))))
                                                  (let ((_%hd198462198549%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198463198545%_)))
                                                        (_%tl198461198552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198463198545%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198462198549%_))
                                                        (let ((_%e198466198555%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198462198549%_))))
                  (let ((_%hd198465198559%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198466198555%_)))
                        (_%tl198464198562%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198466198555%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd198465198559%_))
                        (if (let ((__tmp201913 |gxc[1]#_g201914_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201913
                               _%hd198465198559%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198464198562%_))
                                (let ((_%e198469198565%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198464198562%_))))
                                  (let ((_%hd198468198569%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198469198565%_)))
                                        (_%tl198467198572%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198469198565%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198467198572%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198461198552%_))
                                            (let ((_%e198472198575%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198461198552%_))))
                                              (let ((_%hd198471198579%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198472198575%_)))
                                                    (_%tl198470198582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198472198575%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198471198579%_))
                                                    (let ((_%e198473198585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198471198579%_))))
                                                      (if (equal? _%e198473198585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198470198582%_))
                      (let ((_%e198476198589%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198470198582%_))))
                        (let ((_%hd198475198593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198476198589%_)))
                              (_%tl198474198596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198476198589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198475198593%_))
                              (let ((_%e198479198599%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd198475198593%_))))
                                (let ((_%hd198478198603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198479198599%_)))
                                      (_%tl198477198606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198479198599%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198478198603%_))
                                      (if (let ((__tmp201915
                                                 |gxc[1]#_g201916_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201915
                                             _%hd198478198603%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198477198606%_))
                                              (let ((_%e198482198609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198477198606%_))))
                                                (let ((_%hd198481198613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198482198609%_)))
                                                      (_%tl198480198616%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198482198609%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198480198616%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198474198596%_))
                                                          (let ((_%e198485198619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl198474198596%_))))
                    (let ((_%hd198484198623%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198485198619%_)))
                          (_%tl198483198626%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198485198619%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198484198623%_))
                          (let ((_%e198486198629%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198484198623%_))))
                            (if (equal? _%e198486198629%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198483198626%_))
                                    (let ((_%e198489198633%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl198483198626%_))))
                                      (let ((_%hd198488198637%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198489198633%_)))
                                            (_%tl198487198640%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198489198633%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198488198637%_))
                                            (let ((_%e198492198643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd198488198637%_))))
                                              (let ((_%hd198491198647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198492198643%_)))
                                                    (_%tl198490198650%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198492198643%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198491198647%_))
                                                    (if (let ((__tmp201917
                                                               |gxc[1]#_g201918_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201917
                                                           _%hd198491198647%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198490198650%_))
                                                            (let ((_%e198495198653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl198490198650%_))))
                      (let ((_%hd198494198657%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198495198653%_)))
                            (_%tl198493198660%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198495198653%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198493198660%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198487198640%_))
                                (let ((_%e198498198663%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198487198640%_))))
                                  (let ((_%hd198497198667%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198498198663%_)))
                                        (_%tl198496198670%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198498198663%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd198497198667%_))
                                        (let ((_%e198499198673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198497198667%_))))
                                          (if (equal? _%e198499198673%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198496198670%_))
                                                  (let ((_%e198502198677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198496198670%_))))
                                                    (let ((_%hd198501198681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198502198677%_)))
                                                          (_%tl198500198684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198502198677%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198501198681%_))
                                                          (let ((_%e198505198687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd198501198681%_))))
                    (let ((_%hd198504198691%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198505198687%_)))
                          (_%tl198503198694%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198505198687%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198504198691%_))
                          (if (let ((__tmp201919 |gxc[1]#_g201920_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201919
                                 _%hd198504198691%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198503198694%_))
                                  (let ((_%e198508198697%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198503198694%_))))
                                    (let ((_%hd198507198701%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198508198697%_)))
                                          (_%tl198506198704%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198508198697%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198506198704%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198500198684%_))
                                              ((lambda (_%L198707%_
                                                        _%L198709%_
                                                        _%L198710%_
                                                        _%L198711%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L198707%_))
                                                     (cons _%L198707%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L198710%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd198507198701%_
                                               _%hd198494198657%_
                                               _%hd198481198613%_
                                               _%hd198468198569%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198448198514%_
                                                 _%g198449198518%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198448198514%_
                                             _%g198449198518%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g198448198514%_ _%g198449198518%_)))
                              (let ()
                                (declare (not safe))
                                (_%g198448198514%_ _%g198449198518%_)))
                          (let ()
                            (declare (not safe))
                            (_%g198448198514%_ _%g198449198518%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g198448198514%_ _%g198449198518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198448198514%_
                                                     _%g198449198518%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198448198514%_
                                                 _%g198449198518%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198448198514%_
                                           _%g198449198518%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198448198514%_ _%g198449198518%_)))
                            (let ()
                              (declare (not safe))
                              (_%g198448198514%_ _%g198449198518%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g198448198514%_ _%g198449198518%_)))
                (let ()
                  (declare (not safe))
                  (_%g198448198514%_ _%g198449198518%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198448198514%_
                                                       _%g198449198518%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198448198514%_
                                               _%g198449198518%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198448198514%_ _%g198449198518%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198448198514%_ _%g198449198518%_))))
                          (let ()
                            (declare (not safe))
                            (_%g198448198514%_ _%g198449198518%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g198448198514%_ _%g198449198518%_)))
              (let ()
                (declare (not safe))
                (_%g198448198514%_ _%g198449198518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198448198514%_
                                                 _%g198449198518%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198448198514%_
                                             _%g198449198518%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198448198514%_
                                         _%g198449198518%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198448198514%_ _%g198449198518%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g198448198514%_ _%g198449198518%_)))
                  (let ()
                    (declare (not safe))
                    (_%g198448198514%_ _%g198449198518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198448198514%_
                                                       _%g198449198518%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198448198514%_
                                               _%g198449198518%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198448198514%_
                                           _%g198449198518%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198448198514%_ _%g198449198518%_)))
                            (let ()
                              (declare (not safe))
                              (_%g198448198514%_ _%g198449198518%_)))
                        (let ()
                          (declare (not safe))
                          (_%g198448198514%_ _%g198449198518%_)))))
                (let ()
                  (declare (not safe))
                  (_%g198448198514%_ _%g198449198518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198448198514%_
                                                   _%g198449198518%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198448198514%_
                                               _%g198449198518%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198448198514%_
                                         _%g198449198518%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198448198514%_ _%g198449198518%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g198448198514%_ _%g198449198518%_))))))
          (declare (not safe))
          (_%g198447198761%_ _%sig198445%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx199533%_)
        (let* ((_%g199536199554%_
                (lambda (_%g199537199550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199537199550%_))))
               (_%g199535199609%_
                (lambda (_%g199537199558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199537199558%_))
                      (let ((_%e199542199561%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199537199558%_))))
                        (let ((_%hd199541199565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199542199561%_)))
                              (_%tl199540199568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199542199561%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199540199568%_))
                              (let ((_%e199545199571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199540199568%_))))
                                (let ((_%hd199544199575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199545199571%_)))
                                      (_%tl199543199578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199545199571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199543199578%_))
                                      (let ((_%e199548199581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199543199578%_))))
                                        (let ((_%hd199547199585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199548199581%_)))
                                              (_%tl199546199588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199548199581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199546199588%_))
                                              ((lambda (_%L199591%_
                                                        _%L199593%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199593%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199591%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx199533%_
                                                          _%L199593%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx199533%_
                                                          _%L199591%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199593%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199591%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199536199554%_
                                                      _%g199537199558%_)))
                                               _%hd199547199585%_
                                               _%hd199544199575%_)
                                              (_%g199536199554%_
                                               _%g199537199558%_))))
                                      (_%g199536199554%_ _%g199537199558%_))))
                              (_%g199536199554%_ _%g199537199558%_))))
                      (_%g199536199554%_ _%g199537199558%_)))))
          (_%g199535199609%_ _%stx199533%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx199613%_)
        (let* ((_%g199616199640%_
                (lambda (_%g199617199636%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199617199636%_))))
               (_%g199615199923%_
                (lambda (_%g199617199644%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199617199644%_))
                      (let ((_%e199622199647%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199617199644%_))))
                        (let ((_%hd199621199651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199622199647%_)))
                              (_%tl199620199654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199622199647%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199620199654%_))
                              (let ((_%e199625199657%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199620199654%_))))
                                (let ((_%hd199624199661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199625199657%_)))
                                      (_%tl199623199664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199625199657%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199623199664%_))
                                      (let ((_g201921_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199623199664%_
                                                '0))))
                                        (begin
                                          (let ((_g201922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201921_)
                                                       (##vector-length
                                                        _g201921_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201922_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201922_)))
                                          (let ((_%target199626199667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201921_ 0)))
                                                (_%tl199628199670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201921_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199628199670%_))
                                                (letrec ((_%loop199629199673%_
                                                          (lambda (_%hd199627199677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature199633199680%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199627199677%_))
                        (let ((_%e199630199683%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199627199677%_))))
                          (let ((_%lp-hd199631199687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199630199683%_)))
                                (_%lp-tl199632199690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199630199683%_))))
                            (_%loop199629199673%_
                             _%lp-tl199632199690%_
                             (cons _%lp-hd199631199687%_
                                   _%signature199633199680%_))))
                        (let ((_%signature199634199693%_
                               (reverse _%signature199633199680%_)))
                          ((lambda (_%L199697%_ _%L199699%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199699%_))
                                 (let* ((_%g199717199732%_
                                         (lambda (_%g199718199728%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199718199728%_))))
                                        (_%g199716199911%_
                                         (lambda (_%g199718199736%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199718199736%_))
                                               (let ((_%e199723199739%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199718199736%_))))
                                                 (let ((_%hd199722199743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199723199739%_)))
                                                       (_%tl199721199746%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199723199739%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199721199746%_))
                                                       (let ((_%e199726199749%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199721199746%_))))
                 (let ((_%hd199725199753%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199726199749%_)))
                       (_%tl199724199756%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199726199749%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199724199756%_))
                       ((lambda (_%L199759%_ _%L199761%_)
                          (let ()
                            (let* ((_%g199777199785%_
                                    (lambda (_%g199778199781%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199778199781%_))))
                                   (_%g199776199907%_
                                    (lambda (_%g199778199789%_)
                                      ((lambda (_%L199792%_)
                                         (let ()
                                           (let* ((_%unchecked199805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L199759%_)))
                                                  (_%g199808199816%_
                                                   (lambda (_%g199809199812%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g199809199812%_))))
                                                  (_%g199807199839%_
                                                   (lambda (_%g199809199820%_)
                                                     ((lambda (_%L199823%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L199792%_ (cons _%L199823%_ '())))))
              _%g199809199820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g199807199839%_
                                              (if _%unchecked199805%_
                                                  (let* ((_%g199843199858%_
                                                          (lambda (_%g199844199854%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g199844199854%_))))
                                                         (_%g199842199903%_
                                                          (lambda (_%g199844199862%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g199844199862%_))
                        (let ((_%e199849199865%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g199844199862%_))))
                          (let ((_%hd199848199869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199849199865%_)))
                                (_%tl199847199872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199849199865%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199847199872%_))
                                (let ((_%e199852199875%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199847199872%_))))
                                  (let ((_%hd199851199879%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199852199875%_)))
                                        (_%tl199850199882%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199852199875%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199850199882%_))
                                        ((lambda (_%L199885%_ _%L199887%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L199887%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199761%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L199885%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199851199879%_
                                         _%hd199848199869%_)
                                        (_%g199843199858%_
                                         _%g199844199862%_))))
                                (_%g199843199858%_ _%g199844199862%_))))
                        (_%g199843199858%_ _%g199844199862%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199842199903%_
                                                     _%unchecked199805%_))
                                                  '(begin))))))
                                       _%g199778199789%_))))
                              (_%g199776199907%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L199699%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199761%_ '()))
                     (cons '#f (cons 'signature: (cons _%L199759%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd199725199753%_
                        _%hd199722199743%_)
                       (_%g199717199732%_ _%g199718199736%_))))
               (_%g199717199732%_ _%g199718199736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199717199732%_
                                                _%g199718199736%_)))))
                                   (_%g199716199911%_
                                    (let ((__tmp201923
                                           (let ((__tmp201924
                                                  (lambda (_%g199914199917%_
                                                           _%g199915199920%_)
                                                    (cons _%g199914199917%_
                                                          _%g199915199920%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201924
                                              '()
                                              _%L199697%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx199613%_
                                       _%L199699%_
                                       __tmp201923))))
                                 (_%g199616199640%_ _%g199617199644%_)))
                           _%signature199634199693%_
                           _%hd199624199661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199629199673%_
                                                   _%target199626199667%_
                                                   '()))
                                                (_%g199616199640%_
                                                 _%g199617199644%_)))))
                                      (_%g199616199640%_ _%g199617199644%_))))
                              (_%g199616199640%_ _%g199617199644%_))))
                      (_%g199616199640%_ _%g199617199644%_)))))
          (_%g199615199923%_ _%stx199613%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199928%_)
        (let* ((_%g199931199955%_
                (lambda (_%g199932199951%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199932199951%_))))
               (_%g199930200769%_
                (lambda (_%g199932199959%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199932199959%_))
                      (let ((_%e199937199962%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199932199959%_))))
                        (let ((_%hd199936199966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199937199962%_)))
                              (_%tl199935199969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199937199962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199935199969%_))
                              (let ((_%e199940199972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199935199969%_))))
                                (let ((_%hd199939199976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199940199972%_)))
                                      (_%tl199938199979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199940199972%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199938199979%_))
                                      (let ((_g201925_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199938199979%_
                                                '0))))
                                        (begin
                                          (let ((_g201926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201925_)
                                                       (##vector-length
                                                        _g201925_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201926_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201926_)))
                                          (let ((_%target199941199982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201925_ 0)))
                                                (_%tl199943199985%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201925_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199943199985%_))
                                                (letrec ((_%loop199944199988%_
                                                          (lambda (_%hd199942199992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199948199995%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199942199992%_))
                        (let ((_%e199945199998%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199942199992%_))))
                          (let ((_%lp-hd199946200002%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199945199998%_)))
                                (_%lp-tl199947200005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199945199998%_))))
                            (_%loop199944199988%_
                             _%lp-tl199947200005%_
                             (cons _%lp-hd199946200002%_
                                   _%case-signature199948199995%_))))
                        (let ((_%case-signature199949200008%_
                               (reverse _%case-signature199948199995%_)))
                          ((lambda (_%L200012%_ _%L200014%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200014%_))
                                 (let* ((_%signatures200045%_
                                         (map (lambda (_%g200031200033%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx199928%_
                                                   _%L200014%_
                                                   _%g200031200033%_)))
                                              (let ((__tmp201927
                                                     (lambda (_%g200036200039%_
                                                              _%g200037200042%_)
                                                       (cons _%g200036200039%_
                                                             _%g200037200042%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201927
                                                 '()
                                                 _%L200012%_))))
                                        (_%g200048200074%_
                                         (lambda (_%g200049200070%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200049200070%_))))
                                        (_%g200047200765%_
                                         (lambda (_%g200049200078%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200049200078%_))
                                               (let ((_g201928_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200049200078%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201929_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201928_)
                        (##vector-length _g201928_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201929_ 2)))
                 (error "Context expects 2 values" _g201929_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200052200081%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201928_
                                                             0)))
                                                         (_%tl200054200084%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201928_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200054200084%_))
                                                         (letrec ((_%loop200055200087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200053200091%_
                                    _%sig200059200094%_
                                    _%arity200060200096%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200053200091%_))
                                 (let ((_%e200056200099%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200053200091%_))))
                                   (let ((_%lp-hd200057200103%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200056200099%_)))
                                         (_%lp-tl200058200106%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200056200099%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200057200103%_))
                                         (let ((_%e200065200109%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200057200103%_))))
                                           (let ((_%hd200064200113%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200065200109%_)))
                                                 (_%tl200063200116%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200065200109%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200063200116%_))
                                                 (let ((_%e200068200119%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200063200116%_))))
                                                   (let ((_%hd200067200123%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200068200119%_)))
                                                         (_%tl200066200126%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200068200119%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200066200126%_))
                                                         (_%loop200055200087%_
                                                          _%lp-tl200058200106%_
                                                          (cons _%hd200067200123%_
                                                                _%sig200059200094%_)
                                                          (cons _%hd200064200113%_
                                                                _%arity200060200096%_))
                                                         (_%g200048200074%_
                                                          _%g200049200078%_))))
                                                 (_%g200048200074%_
                                                  _%g200049200078%_))))
                                         (_%g200048200074%_
                                          _%g200049200078%_))))
                                 (let ((_%sig200061200129%_
                                        (reverse _%sig200059200094%_))
                                       (_%arity200062200132%_
                                        (reverse _%arity200060200096%_)))
                                   ((lambda (_%L200135%_ _%L200137%_)
                                      (let ()
                                        (let* ((_%g200154200162%_
                                                (lambda (_%g200155200158%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g200155200158%_))))
                                               (_%g200153200750%_
                                                (lambda (_%g200155200166%_)
                                                  ((lambda (_%L200169%_)
                                                     (let ()
                                                       (let* ((_%g200182200190%_
                                                               (lambda (_%g200183200186%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g200183200186%_))))
                      (_%g200181200212%_
                       (lambda (_%g200183200194%_)
                         ((lambda (_%L200197%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L200169%_
                                          (cons _%L200197%_ '())))))
                          _%g200183200194%_))))
                 (_%g200181200212%_
                  (let ((_g201930_
                         (let _%loop200216%_ ((_%rest200219%_
                                               _%signatures200045%_)
                                              (_%unchecked-proc200221%_ '#f)
                                              (_%unchecked-clauses200222%_
                                               '()))
                           (let* ((_%rest200223200231%_ _%rest200219%_)
                                  (_%else200225200243%_
                                   (lambda ()
                                     (values _%unchecked-proc200221%_
                                             (reverse!
                                              _%unchecked-clauses200222%_))))
                                  (_%K200227200615%_
                                   (lambda (_%rest200247%_ _%hd200249%_)
                                     (let* ((_%g200251200324%_
                                             (lambda (_%g200252200320%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g200252200320%_))))
                                            (_%g200250200611%_
                                             (lambda (_%g200252200328%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g200252200328%_))
                                                   (let ((_%e200260200331%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g200252200328%_))))
                                                     (let ((_%hd200259200335%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200260200331%_)))
                                                           (_%tl200258200338%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200260200331%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200258200338%_))
                                                           (let ((_%e200263200341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl200258200338%_))))
                     (let ((_%hd200262200345%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200263200341%_)))
                           (_%tl200261200348%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200263200341%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd200262200345%_))
                           (let ((_%e200266200351%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd200262200345%_))))
                             (let ((_%hd200265200355%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e200266200351%_)))
                                   (_%tl200264200358%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e200266200351%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl200264200358%_))
                                   (let ((_%e200269200361%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl200264200358%_))))
                                     (let ((_%hd200268200365%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200269200361%_)))
                                           (_%tl200267200368%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200269200361%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd200268200365%_))
                                           (let ((_%e200270200371%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd200268200365%_))))
                                             (if (equal? _%e200270200371%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl200267200368%_))
                                                     (let ((_%e200273200375%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl200267200368%_))))
                                                       (let ((_%hd200272200379%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e200273200375%_)))
                     (_%tl200271200382%_
                      (let () (declare (not safe)) (##cdr _%e200273200375%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd200272200379%_))
                     (let ((_%e200276200385%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd200272200379%_))))
                       (let ((_%hd200275200389%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200276200385%_)))
                             (_%tl200274200392%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200276200385%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd200275200389%_))
                             (if (let ((__tmp201932 |gxc[1]#_g201933_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp201932
                                    _%hd200275200389%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200274200392%_))
                                     (let ((_%e200279200395%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200274200392%_))))
                                       (let ((_%hd200278200399%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200279200395%_)))
                                             (_%tl200277200402%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200279200395%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl200277200402%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200271200382%_))
                                                 (let ((_%e200282200405%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200271200382%_))))
                                                   (let ((_%hd200281200409%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200282200405%_)))
                                                         (_%tl200280200412%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200282200405%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd200281200409%_))
                                                         (let ((_%e200283200415%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd200281200409%_))))
                   (if (equal? _%e200283200415%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl200280200412%_))
                           (let ((_%e200286200419%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl200280200412%_))))
                             (let ((_%hd200285200423%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e200286200419%_)))
                                   (_%tl200284200426%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e200286200419%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd200285200423%_))
                                   (let ((_%e200289200429%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd200285200423%_))))
                                     (let ((_%hd200288200433%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200289200429%_)))
                                           (_%tl200287200436%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200289200429%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd200288200433%_))
                                           (if (let ((__tmp201934
                                                      |gxc[1]#_g201935_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp201934
                                                  _%hd200288200433%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl200287200436%_))
                                                   (let ((_%e200292200439%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl200287200436%_))))
                                                     (let ((_%hd200291200443%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200292200439%_)))
                                                           (_%tl200290200446%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200292200439%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl200290200446%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl200284200426%_))
                       (let ((_%e200295200449%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl200284200426%_))))
                         (let ((_%hd200294200453%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200295200449%_)))
                               (_%tl200293200456%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200295200449%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd200294200453%_))
                               (let ((_%e200296200459%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd200294200453%_))))
                                 (if (equal? _%e200296200459%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl200293200456%_))
                                         (let ((_%e200299200463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl200293200456%_))))
                                           (let ((_%hd200298200467%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200299200463%_)))
                                                 (_%tl200297200470%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200299200463%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd200298200467%_))
                                                 (let ((_%e200302200473%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd200298200467%_))))
                                                   (let ((_%hd200301200477%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200302200473%_)))
                                                         (_%tl200300200480%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200302200473%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd200301200477%_))
                                                         (if (let ((__tmp201936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g201937_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp201936 _%hd200301200477%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200300200480%_))
                         (let ((_%e200305200483%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl200300200480%_))))
                           (let ((_%hd200304200487%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200305200483%_)))
                                 (_%tl200303200490%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200305200483%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl200303200490%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200297200470%_))
                                     (let ((_%e200308200493%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200297200470%_))))
                                       (let ((_%hd200307200497%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200308200493%_)))
                                             (_%tl200306200500%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200308200493%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd200307200497%_))
                                             (let ((_%e200309200503%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd200307200497%_))))
                                               (if (equal? _%e200309200503%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200306200500%_))
                                                       (let ((_%e200312200507%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200306200500%_))))
                 (let ((_%hd200311200511%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200312200507%_)))
                       (_%tl200310200514%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200312200507%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd200311200511%_))
                       (let ((_%e200315200517%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd200311200511%_))))
                         (let ((_%hd200314200521%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200315200517%_)))
                               (_%tl200313200524%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200315200517%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd200314200521%_))
                               (if (let ((__tmp201938 |gxc[1]#_g201939_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp201938
                                      _%hd200314200521%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl200313200524%_))
                                       (let ((_%e200318200527%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl200313200524%_))))
                                         (let ((_%hd200317200531%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e200318200527%_)))
                                               (_%tl200316200534%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e200318200527%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl200316200534%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl200310200514%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl200261200348%_))
                                                       ((lambda (_%L200537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L200539%_
                         _%L200540%_
                         _%L200541%_
                         _%L200542%_)
                  (let ((_%clause200603%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L200542%_ '()))
                                     (cons '#f
                                           (cons 'signature:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L200540%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked200605%_
                         (let () (declare (not safe)) (gx#stx-e _%L200537%_))))
                    (_%loop200216%_
                     _%rest200247%_
                     (let ((_%$e200607%_ _%unchecked200605%_))
                       (if _%$e200607%_ _%$e200607%_ _%unchecked-proc200221%_))
                     (cons _%clause200603%_ _%unchecked-clauses200222%_))))
                _%hd200317200531%_
                _%hd200304200487%_
                _%hd200291200443%_
                _%hd200278200399%_
                _%hd200259200335%_)
               (_%g200251200324%_ _%g200252200328%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200251200324%_
                                                    _%g200252200328%_))
                                               (_%g200251200324%_
                                                _%g200252200328%_))))
                                       (_%g200251200324%_ _%g200252200328%_))
                                   (_%g200251200324%_ _%g200252200328%_))
                               (_%g200251200324%_ _%g200252200328%_))))
                       (_%g200251200324%_ _%g200252200328%_))))
               (_%g200251200324%_ _%g200252200328%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200251200324%_
                                                    _%g200252200328%_)))
                                             (_%g200251200324%_
                                              _%g200252200328%_))))
                                     (_%g200251200324%_ _%g200252200328%_))
                                 (_%g200251200324%_ _%g200252200328%_))))
                         (_%g200251200324%_ _%g200252200328%_))
                     (_%g200251200324%_ _%g200252200328%_))
                 (_%g200251200324%_ _%g200252200328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200251200324%_
                                                  _%g200252200328%_))))
                                         (_%g200251200324%_ _%g200252200328%_))
                                     (_%g200251200324%_ _%g200252200328%_)))
                               (_%g200251200324%_ _%g200252200328%_))))
                       (_%g200251200324%_ _%g200252200328%_))
                   (_%g200251200324%_ _%g200252200328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200251200324%_
                                                    _%g200252200328%_))
                                               (_%g200251200324%_
                                                _%g200252200328%_))
                                           (_%g200251200324%_
                                            _%g200252200328%_))))
                                   (_%g200251200324%_ _%g200252200328%_))))
                           (_%g200251200324%_ _%g200252200328%_))
                       (_%g200251200324%_ _%g200252200328%_)))
                 (_%g200251200324%_ _%g200252200328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200251200324%_
                                                  _%g200252200328%_))
                                             (_%g200251200324%_
                                              _%g200252200328%_))))
                                     (_%g200251200324%_ _%g200252200328%_))
                                 (_%g200251200324%_ _%g200252200328%_))
                             (_%g200251200324%_ _%g200252200328%_))))
                     (_%g200251200324%_ _%g200252200328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200251200324%_
                                                      _%g200252200328%_))
                                                 (_%g200251200324%_
                                                  _%g200252200328%_)))
                                           (_%g200251200324%_
                                            _%g200252200328%_))))
                                   (_%g200251200324%_ _%g200252200328%_))))
                           (_%g200251200324%_ _%g200252200328%_))))
                   (_%g200251200324%_ _%g200252200328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200251200324%_
                                                    _%g200252200328%_)))))
                                       (_%g200250200611%_ _%hd200249%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest200223200231%_))
                                 (let ((_%hd200228200619%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest200223200231%_)))
                                       (_%tl200229200622%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200223200231%_))))
                                   (let* ((_%hd200625%_ _%hd200228200619%_)
                                          (_%rest200628%_ _%tl200229200622%_))
                                     (_%K200227200615%_
                                      _%rest200628%_
                                      _%hd200625%_)))
                                 (_%else200225200243%_))))))
                    (begin
                      (let ((_g201931_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201930_)
                                   (##vector-length _g201930_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201931_ 2)))
                            (error "Context expects 2 values" _g201931_)))
                      (let ((_%unchecked-proc200631%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201930_ 0)))
                            (_%unchecked-clauses200633%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201930_ 1))))
                        (if _%unchecked-proc200631%_
                            (let* ((_%g200635200659%_
                                    (lambda (_%g200636200655%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200636200655%_))))
                                   (_%g200634200746%_
                                    (lambda (_%g200636200663%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g200636200663%_))
                                          (let ((_%e200641200666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g200636200663%_))))
                                            (let ((_%hd200640200670%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200641200666%_)))
                                                  (_%tl200639200673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200641200666%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200639200673%_))
                                                  (let ((_%e200644200676%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200639200673%_))))
                                                    (let ((_%hd200643200680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200644200676%_)))
                                                          (_%tl200642200683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200644200676%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd200643200680%_))
                                                          (let ((_g201940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd200643200680%_ '0))))
                    (begin
                      (let ((_g201941_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201940_)
                                   (##vector-length _g201940_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201941_ 2)))
                            (error "Context expects 2 values" _g201941_)))
                      (let ((_%target200645200686%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201940_ 0)))
                            (_%tl200647200689%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201940_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200647200689%_))
                            (letrec ((_%loop200648200692%_
                                      (lambda (_%hd200646200696%_
                                               _%clause200652200699%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd200646200696%_))
                                            (let ((_%e200649200702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd200646200696%_))))
                                              (let ((_%lp-hd200650200706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200649200702%_)))
                                                    (_%lp-tl200651200709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200649200702%_))))
                                                (_%loop200648200692%_
                                                 _%lp-tl200651200709%_
                                                 (cons _%lp-hd200650200706%_
                                                       _%clause200652200699%_))))
                                            (let ((_%clause200653200712%_
                                                   (reverse _%clause200652200699%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200642200683%_))
                                                  ((lambda (_%L200716%_
                                                            _%L200718%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200718%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-case-lambda))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '@list))
                                                   (let ((__tmp201942
                                                          (lambda (_%g200737200740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g200738200743%_)
                    (cons _%g200737200740%_ _%g200738200743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp201942
                                                      '()
                                                      _%L200716%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause200653200712%_
                                                   _%hd200640200670%_)
                                                  (_%g200635200659%_
                                                   _%g200636200663%_)))))))
                              (_%loop200648200692%_
                               _%target200645200686%_
                               '()))
                            (_%g200635200659%_ _%g200636200663%_)))))
                  (_%g200635200659%_ _%g200636200663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g200635200659%_
                                                   _%g200636200663%_))))
                                          (_%g200635200659%_
                                           _%g200636200663%_)))))
                              (_%g200634200746%_
                               (list _%unchecked-proc200631%_
                                     _%unchecked-clauses200633%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g200155200166%_))))
                                          (_%g200153200750%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200014%_
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0
                              '#f
                              'make-!primitive-case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L200135%_
                                            _%L200137%_))
                                         (let ((__tmp201943
                                                (lambda (_%g200753200757%_
                                                         _%g200754200760%_
                                                         _%g200755200762%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g200754200760%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g200753200757%_ '())))))
                _%g200755200762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp201943
                                            '()
                                            _%L200135%_
                                            _%L200137%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200061200129%_
                                    _%arity200062200132%_))))))
                   (_%loop200055200087%_ _%target200052200081%_ '() '()))
                 (_%g200048200074%_ _%g200049200078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200048200074%_
                                                _%g200049200078%_)))))
                                   (_%g200047200765%_ _%signatures200045%_))
                                 (_%g199931199955%_ _%g199932199959%_)))
                           _%case-signature199949200008%_
                           _%hd199939199976%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199944199988%_
                                                   _%target199941199982%_
                                                   '()))
                                                (_%g199931199955%_
                                                 _%g199932199959%_)))))
                                      (_%g199931199955%_ _%g199932199959%_))))
                              (_%g199931199955%_ _%g199932199959%_))))
                      (_%g199931199955%_ _%g199932199959%_)))))
          (_%g199930200769%_ _%stx199928%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200777%_)
        (let* ((_%__stx201759201760%_ _%$stx200777%_)
               (_%g200783200843%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201759201760%_)))))
          (let ((_%__kont201762201763%_
                 (lambda (_%L201065%_ _%L201067%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201067%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L201067%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201065%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201764201765%_
                 (lambda (_%L200990%_ _%L200992%_ _%L200993%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200993%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L200993%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200992%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200990%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201766201767%_
                 (lambda (_%L200904%_ _%L200906%_ _%L200907%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200907%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L200907%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200906%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200904%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201759201760%_))
                (let ((_%e200789201021%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201759201760%_))))
                  (let ((_%tl200787201028%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200789201021%_)))
                        (_%hd200788201025%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200789201021%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200787201028%_))
                        (let ((_%e200792201031%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200787201028%_))))
                          (let ((_%tl200790201038%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200792201031%_)))
                                (_%hd200791201035%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200792201031%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200791201035%_))
                                (let ((_%e200793201041%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200791201035%_))))
                                  (if (equal? _%e200793201041%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200790201038%_))
                                          (let ((_%e200796201045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200790201038%_))))
                                            (let ((_%tl200794201052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200796201045%_)))
                                                  (_%hd200795201049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200796201045%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200794201052%_))
                                                  (let ((_%e200799201055%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200794201052%_))))
                                                    (let ((_%tl200797201062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200799201055%_)))
                                                          (_%hd200798201059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200799201055%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200797201062%_))
                                                          (_%__kont201762201763%_
                                                           _%hd200798201059%_
                                                           _%hd200795201049%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200783200843%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200783200843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200783200843%_)))
                                      (if (equal? _%e200793201041%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200790201038%_))
                                              (let ((_%e200812200960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200790201038%_))))
                                                (let ((_%tl200810200967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200812200960%_)))
                                                      (_%hd200811200964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200812200960%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200810200967%_))
                                                      (let ((_%e200815200970%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200810200967%_))))
                (let ((_%tl200813200977%_
                       (let () (declare (not safe)) (##cdr _%e200815200970%_)))
                      (_%hd200814200974%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200815200970%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200813200977%_))
                      (let ((_%e200818200980%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200813200977%_))))
                        (let ((_%tl200816200987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200818200980%_)))
                              (_%hd200817200984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200818200980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200816200987%_))
                              (_%__kont201764201765%_
                               _%hd200817200984%_
                               _%hd200814200974%_
                               _%hd200811200964%_)
                              (let ()
                                (declare (not safe))
                                (_%g200783200843%_)))))
                      (let () (declare (not safe)) (_%g200783200843%_)))))
              (let () (declare (not safe)) (_%g200783200843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200783200843%_)))
                                          (if (equal? _%e200793201041%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200790201038%_))
                                                  (let ((_%e200831200874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200790201038%_))))
                                                    (let ((_%tl200829200881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200831200874%_)))
                                                          (_%hd200830200878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200831200874%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200829200881%_))
                                                          (let ((_%e200834200884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200829200881%_))))
                    (let ((_%tl200832200891%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200834200884%_)))
                          (_%hd200833200888%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200834200884%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200832200891%_))
                          (let ((_%e200837200894%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200832200891%_))))
                            (let ((_%tl200835200901%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200837200894%_)))
                                  (_%hd200836200898%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200837200894%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200835200901%_))
                                  (_%__kont201766201767%_
                                   _%hd200836200898%_
                                   _%hd200833200888%_
                                   _%hd200830200878%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200783200843%_)))))
                          (let () (declare (not safe)) (_%g200783200843%_)))))
                  (let () (declare (not safe)) (_%g200783200843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200783200843%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200783200843%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200783200843%_)))))
                        (let () (declare (not safe)) (_%g200783200843%_)))))
                (let () (declare (not safe)) (_%g200783200843%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201089%_)
        (let* ((_%g201093201113%_
                (lambda (_%g201094201109%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201094201109%_))))
               (_%g201092201184%_
                (lambda (_%g201094201117%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201094201117%_))
                      (let ((_%e201098201120%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201094201117%_))))
                        (let ((_%hd201097201124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201098201120%_)))
                              (_%tl201096201127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201098201120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201096201127%_))
                              (let ((_g201944_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201096201127%_
                                        '0))))
                                (begin
                                  (let ((_g201945_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201944_)
                                               (##vector-length _g201944_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201945_ 2)))
                                        (error "Context expects 2 values"
                                               _g201945_)))
                                  (let ((_%target201099201130%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201944_ 0)))
                                        (_%tl201101201133%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201944_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201101201133%_))
                                        (letrec ((_%loop201102201136%_
                                                  (lambda (_%hd201100201140%_
                                                           _%decl201106201143%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201100201140%_))
                                                        (let ((_%e201103201146%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201100201140%_))))
                  (let ((_%lp-hd201104201150%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201103201146%_)))
                        (_%lp-tl201105201153%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201103201146%_))))
                    (_%loop201102201136%_
                     _%lp-tl201105201153%_
                     (cons _%lp-hd201104201150%_ _%decl201106201143%_))))
                (let ((_%decl201107201156%_ (reverse _%decl201106201143%_)))
                  ((lambda (_%L201160%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201946
                                  (lambda (_%g201175201178%_ _%g201176201181%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201175201178%_)
                                          _%g201176201181%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201946 '() _%L201160%_))))
                   _%decl201107201156%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201102201136%_
                                           _%target201099201130%_
                                           '()))
                                        (_%g201093201113%_
                                         _%g201094201117%_)))))
                              (_%g201093201113%_ _%g201094201117%_))))
                      (_%g201093201113%_ _%g201094201117%_)))))
          (_%g201092201184%_ _%$stx201089%_))))))
