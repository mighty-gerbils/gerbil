(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g209224_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209231_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209233_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209235_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209237_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209239_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209251_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209253_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209255_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209257_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209259_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx202642%_)
        (let* ((_%g202646202664%_
                (lambda (_%g202647202660%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202647202660%_))))
               (_%g202645202719%_
                (lambda (_%g202647202668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202647202668%_))
                      (let ((_%e202650202671%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202647202668%_))))
                        (let ((_%hd202651202675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202650202671%_)))
                              (_%tl202652202678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202650202671%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202652202678%_))
                              (let ((_%e202653202681%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202652202678%_))))
                                (let ((_%hd202654202685%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202653202681%_)))
                                      (_%tl202655202688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202653202681%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202655202688%_))
                                      (let ((_%e202656202691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202655202688%_))))
                                        (let ((_%hd202657202695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202656202691%_)))
                                              (_%tl202658202698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202656202691%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202658202698%_))
                                              ((lambda (_%L202701%_
                                                        _%L202703%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202703%_))
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
                               (cons _%L202703%_ '()))
                         (cons _%L202701%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202646202664%_
                                                      _%g202647202668%_)))
                                               _%hd202657202695%_
                                               _%hd202654202685%_)
                                              (_%g202646202664%_
                                               _%g202647202668%_))))
                                      (_%g202646202664%_ _%g202647202668%_))))
                              (_%g202646202664%_ _%g202647202668%_))))
                      (_%g202646202664%_ _%g202647202668%_)))))
          (_%g202645202719%_ _%$stx202642%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx202723%_)
        (let* ((_%g202727202745%_
                (lambda (_%g202728202741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202728202741%_))))
               (_%g202726202800%_
                (lambda (_%g202728202749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202728202749%_))
                      (let ((_%e202731202752%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202728202749%_))))
                        (let ((_%hd202732202756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202731202752%_)))
                              (_%tl202733202759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202731202752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202733202759%_))
                              (let ((_%e202734202762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202733202759%_))))
                                (let ((_%hd202735202766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202734202762%_)))
                                      (_%tl202736202769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202734202762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202736202769%_))
                                      (let ((_%e202737202772%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202736202769%_))))
                                        (let ((_%hd202738202776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202737202772%_)))
                                              (_%tl202739202779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202737202772%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202739202779%_))
                                              ((lambda (_%L202782%_
                                                        _%L202784%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202784%_))
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
                               (cons _%L202784%_ '()))
                         (cons _%L202782%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202727202745%_
                                                      _%g202728202749%_)))
                                               _%hd202738202776%_
                                               _%hd202735202766%_)
                                              (_%g202727202745%_
                                               _%g202728202749%_))))
                                      (_%g202727202745%_ _%g202728202749%_))))
                              (_%g202727202745%_ _%g202728202749%_))))
                      (_%g202727202745%_ _%g202728202749%_)))))
          (_%g202726202800%_ _%$stx202723%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx202804%_)
        (let* ((_%g202808202837%_
                (lambda (_%g202809202833%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202809202833%_))))
               (_%g202807202937%_
                (lambda (_%g202809202841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202809202841%_))
                      (let ((_%e202812202844%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202809202841%_))))
                        (let ((_%hd202813202848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202812202844%_)))
                              (_%tl202814202851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202812202844%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202814202851%_))
                              (let ((_g209202_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202814202851%_
                                        '0))))
                                (begin
                                  (let ((_g209203_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209202_)
                                               (##vector-length _g209202_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209203_ 2)))
                                        (error "Context expects 2 values"
                                               _g209203_)))
                                  (let ((_%target202815202854%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209202_ 0)))
                                        (_%tl202817202857%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209202_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202817202857%_))
                                        (letrec ((_%loop202818202860%_
                                                  (lambda (_%hd202816202864%_
                                                           _%type202822202867%_
                                                           _%symbol202823202869%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202816202864%_))
                                                        (let ((_%e202819202872%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202816202864%_))))
                  (let ((_%lp-hd202820202876%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202819202872%_)))
                        (_%lp-tl202821202879%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202819202872%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202820202876%_))
                        (let ((_%e202826202882%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202820202876%_))))
                          (let ((_%hd202827202886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202826202882%_)))
                                (_%tl202828202889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202826202882%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202828202889%_))
                                (let ((_%e202829202892%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202828202889%_))))
                                  (let ((_%hd202830202896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202829202892%_)))
                                        (_%tl202831202899%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202829202892%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202831202899%_))
                                        (_%loop202818202860%_
                                         _%lp-tl202821202879%_
                                         (cons _%hd202830202896%_
                                               _%type202822202867%_)
                                         (cons _%hd202827202886%_
                                               _%symbol202823202869%_))
                                        (_%g202808202837%_
                                         _%g202809202841%_))))
                                (_%g202808202837%_ _%g202809202841%_))))
                        (_%g202808202837%_ _%g202809202841%_))))
                (let ((_%type202824202902%_ (reverse _%type202822202867%_))
                      (_%symbol202825202905%_
                       (reverse _%symbol202823202869%_)))
                  ((lambda (_%L202908%_ _%L202910%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L202908%_
                                _%L202910%_))
                             (let ((__tmp209204
                                    (lambda (_%g202925202929%_
                                             _%g202926202932%_
                                             _%g202927202934%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g202926202932%_
                                                        (cons _%g202925202929%_
                                                              '())))
                                            _%g202927202934%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209204
                                '()
                                _%L202908%_
                                _%L202910%_)))))
                   _%type202824202902%_
                   _%symbol202825202905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202818202860%_
                                           _%target202815202854%_
                                           '()
                                           '()))
                                        (_%g202808202837%_
                                         _%g202809202841%_)))))
                              (_%g202808202837%_ _%g202809202841%_))))
                      (_%g202808202837%_ _%g202809202841%_)))))
          (_%g202807202937%_ _%$stx202804%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx202942%_)
        (let* ((_%__stx208513208514%_ _%$stx202942%_)
               (_%g202947202989%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208513208514%_)))))
          (let ((_%__kont208516208517%_
                 (lambda (_%L203117%_ _%L203119%_ _%L203120%_ _%L203121%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203121%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203120%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203119%_ '()))
                                           (cons _%L203117%_ '())))))))
                (_%__kont208518208519%_
                 (lambda (_%L203036%_ _%L203038%_ _%L203039%_ _%L203040%_)
                   (cons _%L203040%_
                         (cons _%L203039%_
                               (cons _%L203038%_
                                     (cons _%L203036%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match208552208553%_
                   (lambda (_%e202953203067%_
                            _%hd202954203071%_
                            _%tl202955203074%_
                            _%e202956203077%_
                            _%hd202957203081%_
                            _%tl202958203084%_
                            _%e202959203087%_
                            _%hd202960203091%_
                            _%tl202961203094%_
                            _%e202962203097%_
                            _%hd202963203101%_
                            _%tl202964203104%_
                            _%e202965203107%_
                            _%hd202966203111%_
                            _%tl202967203114%_)
                     (let ((_%L203117%_ _%hd202966203111%_)
                           (_%L203119%_ _%hd202963203101%_)
                           (_%L203120%_ _%hd202960203091%_)
                           (_%L203121%_ _%hd202957203081%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203121%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203120%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203119%_)))
                           (_%__kont208516208517%_
                            _%L203117%_
                            _%L203119%_
                            _%L203120%_
                            _%L203121%_)
                           (let ()
                             (declare (not safe))
                             (_%g202947202989%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208513208514%_))
                  (let ((_%e202953203067%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208513208514%_))))
                    (let ((_%tl202955203074%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202953203067%_)))
                          (_%hd202954203071%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202953203067%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202955203074%_))
                          (let ((_%e202956203077%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202955203074%_))))
                            (let ((_%tl202958203084%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202956203077%_)))
                                  (_%hd202957203081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202956203077%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202958203084%_))
                                  (let ((_%e202959203087%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl202958203084%_))))
                                    (let ((_%tl202961203094%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202959203087%_)))
                                          (_%hd202960203091%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202959203087%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202961203094%_))
                                          (let ((_%e202962203097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl202961203094%_))))
                                            (let ((_%tl202964203104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202962203097%_)))
                                                  (_%hd202963203101%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202962203097%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202964203104%_))
                                                  (let ((_%e202965203107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202964203104%_))))
                                                    (let ((_%tl202967203114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202965203107%_)))
                                                          (_%hd202966203111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202965203107%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202967203114%_))
                                                          (_%__match208552208553%_
                                                           _%e202953203067%_
                                                           _%hd202954203071%_
                                                           _%tl202955203074%_
                                                           _%e202956203077%_
                                                           _%hd202957203081%_
                                                           _%tl202958203084%_
                                                           _%e202959203087%_
                                                           _%hd202960203091%_
                                                           _%tl202961203094%_
                                                           _%e202962203097%_
                                                           _%hd202963203101%_
                                                           _%tl202964203104%_
                                                           _%e202965203107%_
                                                           _%hd202966203111%_
                                                           _%tl202967203114%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g202947202989%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202964203104%_))
                                                      (_%__kont208518208519%_
                                                       _%hd202963203101%_
                                                       _%hd202960203091%_
                                                       _%hd202957203081%_
                                                       _%hd202954203071%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202947202989%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202947202989%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202947202989%_)))))
                          (let () (declare (not safe)) (_%g202947202989%_)))))
                  (let () (declare (not safe)) (_%g202947202989%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx203146%_)
        (let* ((_%g203150203185%_
                (lambda (_%g203151203181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203151203181%_))))
               (_%g203149203304%_
                (lambda (_%g203151203189%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203151203189%_))
                      (let ((_%e203155203192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203151203189%_))))
                        (let ((_%hd203156203196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203155203192%_)))
                              (_%tl203157203199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203155203192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203157203199%_))
                              (let ((_g209205_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203157203199%_
                                        '0))))
                                (begin
                                  (let ((_g209206_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209205_)
                                               (##vector-length _g209205_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209206_ 2)))
                                        (error "Context expects 2 values"
                                               _g209206_)))
                                  (let ((_%target203158203202%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209205_ 0)))
                                        (_%tl203160203205%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209205_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203160203205%_))
                                        (letrec ((_%loop203161203208%_
                                                  (lambda (_%hd203159203212%_
                                                           _%symbol203165203215%_
                                                           _%method203166203217%_
                                                           _%type-t203167203219%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203159203212%_))
                                                        (let ((_%e203162203222%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203159203212%_))))
                  (let ((_%lp-hd203163203226%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203162203222%_)))
                        (_%lp-tl203164203229%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203162203222%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203163203226%_))
                        (let ((_%e203171203232%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203163203226%_))))
                          (let ((_%hd203172203236%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203171203232%_)))
                                (_%tl203173203239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203171203232%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203173203239%_))
                                (let ((_%e203174203242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203173203239%_))))
                                  (let ((_%hd203175203246%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203174203242%_)))
                                        (_%tl203176203249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203174203242%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203176203249%_))
                                        (let ((_%e203177203252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203176203249%_))))
                                          (let ((_%hd203178203256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203177203252%_)))
                                                (_%tl203179203259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203177203252%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203179203259%_))
                                                (_%loop203161203208%_
                                                 _%lp-tl203164203229%_
                                                 (cons _%hd203178203256%_
                                                       _%symbol203165203215%_)
                                                 (cons _%hd203175203246%_
                                                       _%method203166203217%_)
                                                 (cons _%hd203172203236%_
                                                       _%type-t203167203219%_))
                                                (_%g203150203185%_
                                                 _%g203151203189%_))))
                                        (_%g203150203185%_
                                         _%g203151203189%_))))
                                (_%g203150203185%_ _%g203151203189%_))))
                        (_%g203150203185%_ _%g203151203189%_))))
                (let ((_%symbol203168203262%_ (reverse _%symbol203165203215%_))
                      (_%method203169203265%_ (reverse _%method203166203217%_))
                      (_%type-t203170203267%_
                       (reverse _%type-t203167203219%_)))
                  ((lambda (_%L203270%_ _%L203272%_ _%L203273%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203270%_
                                _%L203272%_
                                _%L203273%_))
                             (let ((__tmp209207
                                    (lambda (_%g203289203294%_
                                             _%g203290203297%_
                                             _%g203291203299%_
                                             _%g203292203301%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g203291203299%_
                                                        (cons _%g203290203297%_
                                                              (cons _%g203289203294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g203292203301%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp209207
                                '()
                                _%L203270%_
                                _%L203272%_
                                _%L203273%_)))))
                   _%symbol203168203262%_
                   _%method203169203265%_
                   _%type-t203170203267%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203161203208%_
                                           _%target203158203202%_
                                           '()
                                           '()
                                           '()))
                                        (_%g203150203185%_
                                         _%g203151203189%_)))))
                              (_%g203150203185%_ _%g203151203189%_))))
                      (_%g203150203185%_ _%g203151203189%_)))))
          (_%g203149203304%_ _%$stx203146%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx203309%_)
        (let* ((_%g203313203346%_
                (lambda (_%g203314203342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203314203342%_))))
               (_%g203312203460%_
                (lambda (_%g203314203350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203314203350%_))
                      (let ((_%e203318203353%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203314203350%_))))
                        (let ((_%hd203319203357%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203318203353%_)))
                              (_%tl203320203360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203318203353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203320203360%_))
                              (let ((_%e203321203363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203320203360%_))))
                                (let ((_%hd203322203367%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203321203363%_)))
                                      (_%tl203323203370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203321203363%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203323203370%_))
                                      (let ((_g209208_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203323203370%_
                                                '0))))
                                        (begin
                                          (let ((_g209209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209208_)
                                                       (##vector-length
                                                        _g209208_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209209_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209209_)))
                                          (let ((_%target203324203373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209208_ 0)))
                                                (_%tl203326203376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209208_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203326203376%_))
                                                (letrec ((_%loop203327203379%_
                                                          (lambda (_%hd203325203383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol203331203386%_
                           _%method203332203388%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203325203383%_))
                        (let ((_%e203328203391%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd203325203383%_))))
                          (let ((_%lp-hd203329203395%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203328203391%_)))
                                (_%lp-tl203330203398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203328203391%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd203329203395%_))
                                (let ((_%e203335203401%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd203329203395%_))))
                                  (let ((_%hd203336203405%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203335203401%_)))
                                        (_%tl203337203408%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203335203401%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203337203408%_))
                                        (let ((_%e203338203411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203337203408%_))))
                                          (let ((_%hd203339203415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203338203411%_)))
                                                (_%tl203340203418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203338203411%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203340203418%_))
                                                (_%loop203327203379%_
                                                 _%lp-tl203330203398%_
                                                 (cons _%hd203339203415%_
                                                       _%symbol203331203386%_)
                                                 (cons _%hd203336203405%_
                                                       _%method203332203388%_))
                                                (_%g203313203346%_
                                                 _%g203314203350%_))))
                                        (_%g203313203346%_
                                         _%g203314203350%_))))
                                (_%g203313203346%_ _%g203314203350%_))))
                        (let ((_%symbol203333203421%_
                               (reverse _%symbol203331203386%_))
                              (_%method203334203424%_
                               (reverse _%method203332203388%_)))
                          ((lambda (_%L203427%_ _%L203429%_ _%L203430%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L203427%_
                                        _%L203429%_))
                                     (let ((__tmp209210
                                            (lambda (_%g203448203452%_
                                                     _%g203449203455%_
                                                     _%g203450203457%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L203430%_
                                                                (cons _%g203449203455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g203448203452%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g203450203457%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp209210
                                        '()
                                        _%L203427%_
                                        _%L203429%_)))))
                           _%symbol203333203421%_
                           _%method203334203424%_
                           _%hd203322203367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop203327203379%_
                                                   _%target203324203373%_
                                                   '()
                                                   '()))
                                                (_%g203313203346%_
                                                 _%g203314203350%_)))))
                                      (_%g203313203346%_ _%g203314203350%_))))
                              (_%g203313203346%_ _%g203314203350%_))))
                      (_%g203313203346%_ _%g203314203350%_)))))
          (_%g203312203460%_ _%$stx203309%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx203465%_)
        (let* ((_%g203469203483%_
                (lambda (_%g203470203479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203470203479%_))))
               (_%g203468203524%_
                (lambda (_%g203470203487%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203470203487%_))
                      (let ((_%e203472203490%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203470203487%_))))
                        (let ((_%hd203473203494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203472203490%_)))
                              (_%tl203474203497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203472203490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203474203497%_))
                              (let ((_%e203475203500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203474203497%_))))
                                (let ((_%hd203476203504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203475203500%_)))
                                      (_%tl203477203507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203475203500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203477203507%_))
                                      ((lambda (_%L203510%_)
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
                                                           (cons _%L203510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203476203504%_)
                                      (_%g203469203483%_ _%g203470203487%_))))
                              (_%g203469203483%_ _%g203470203487%_))))
                      (_%g203469203483%_ _%g203470203487%_)))))
          (_%g203468203524%_ _%$stx203465%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx203528%_)
        (let* ((_%g203532203586%_
                (lambda (_%g203533203582%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203533203582%_))))
               (_%g203531203767%_
                (lambda (_%g203533203590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203533203590%_))
                      (let ((_%e203545203593%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203533203590%_))))
                        (let ((_%hd203546203597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203545203593%_)))
                              (_%tl203547203600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203545203593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203547203600%_))
                              (let ((_%e203548203603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203547203600%_))))
                                (let ((_%hd203549203607%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203548203603%_)))
                                      (_%tl203550203610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203548203603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203550203610%_))
                                      (let ((_%e203551203613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203550203610%_))))
                                        (let ((_%hd203552203617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203551203613%_)))
                                              (_%tl203553203620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203551203613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203553203620%_))
                                              (let ((_%e203554203623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203553203620%_))))
                                                (let ((_%hd203555203627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203554203623%_)))
                                                      (_%tl203556203630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203554203623%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203556203630%_))
                                                      (let ((_%e203557203633%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203556203630%_))))
                (let ((_%hd203558203637%_
                       (let () (declare (not safe)) (##car _%e203557203633%_)))
                      (_%tl203559203640%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203557203633%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203559203640%_))
                      (let ((_%e203560203643%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203559203640%_))))
                        (let ((_%hd203561203647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203560203643%_)))
                              (_%tl203562203650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203560203643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203562203650%_))
                              (let ((_%e203563203653%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203562203650%_))))
                                (let ((_%hd203564203657%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203563203653%_)))
                                      (_%tl203565203660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203563203653%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203565203660%_))
                                      (let ((_%e203566203663%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203565203660%_))))
                                        (let ((_%hd203567203667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203566203663%_)))
                                              (_%tl203568203670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203566203663%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203568203670%_))
                                              (let ((_%e203569203673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203568203670%_))))
                                                (let ((_%hd203570203677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203569203673%_)))
                                                      (_%tl203571203680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203569203673%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203571203680%_))
                                                      (let ((_%e203572203683%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203571203680%_))))
                (let ((_%hd203573203687%_
                       (let () (declare (not safe)) (##car _%e203572203683%_)))
                      (_%tl203574203690%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203572203683%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203574203690%_))
                      (let ((_%e203575203693%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203574203690%_))))
                        (let ((_%hd203576203697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203575203693%_)))
                              (_%tl203577203700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203575203693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203577203700%_))
                              (let ((_%e203578203703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203577203700%_))))
                                (let ((_%hd203579203707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203578203703%_)))
                                      (_%tl203580203710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203578203703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203580203710%_))
                                      ((lambda (_%L203713%_
                                                _%L203715%_
                                                _%L203716%_
                                                _%L203717%_
                                                _%L203718%_
                                                _%L203719%_
                                                _%L203720%_
                                                _%L203721%_
                                                _%L203722%_
                                                _%L203723%_
                                                _%L203724%_)
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
                                                           (cons _%L203724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L203723%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L203722%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203721%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203720%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203719%_ '()))
                                           (cons _%L203718%_
                                                 (cons _%L203717%_
                                                       (cons _%L203716%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203715%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L203713%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd203579203707%_
                                       _%hd203576203697%_
                                       _%hd203573203687%_
                                       _%hd203570203677%_
                                       _%hd203567203667%_
                                       _%hd203564203657%_
                                       _%hd203561203647%_
                                       _%hd203558203637%_
                                       _%hd203555203627%_
                                       _%hd203552203617%_
                                       _%hd203549203607%_)
                                      (_%g203532203586%_ _%g203533203590%_))))
                              (_%g203532203586%_ _%g203533203590%_))))
                      (_%g203532203586%_ _%g203533203590%_))))
              (_%g203532203586%_ _%g203533203590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203532203586%_
                                               _%g203533203590%_))))
                                      (_%g203532203586%_ _%g203533203590%_))))
                              (_%g203532203586%_ _%g203533203590%_))))
                      (_%g203532203586%_ _%g203533203590%_))))
              (_%g203532203586%_ _%g203533203590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203532203586%_
                                               _%g203533203590%_))))
                                      (_%g203532203586%_ _%g203533203590%_))))
                              (_%g203532203586%_ _%g203533203590%_))))
                      (_%g203532203586%_ _%g203533203590%_)))))
          (_%g203531203767%_ _%$stx203528%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx203771%_)
        (let* ((_%g203775203789%_
                (lambda (_%g203776203785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203776203785%_))))
               (_%g203774203830%_
                (lambda (_%g203776203793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203776203793%_))
                      (let ((_%e203778203796%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203776203793%_))))
                        (let ((_%hd203779203800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203778203796%_)))
                              (_%tl203780203803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203778203796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203780203803%_))
                              (let ((_%e203781203806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203780203803%_))))
                                (let ((_%hd203782203810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203781203806%_)))
                                      (_%tl203783203813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203781203806%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203783203813%_))
                                      ((lambda (_%L203816%_)
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
                                                           (cons _%L203816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203782203810%_)
                                      (_%g203775203789%_ _%g203776203793%_))))
                              (_%g203775203789%_ _%g203776203793%_))))
                      (_%g203775203789%_ _%g203776203793%_)))))
          (_%g203774203830%_ _%$stx203771%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx203834%_)
        (let* ((_%g203838203852%_
                (lambda (_%g203839203848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203839203848%_))))
               (_%g203837203893%_
                (lambda (_%g203839203856%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203839203856%_))
                      (let ((_%e203841203859%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203839203856%_))))
                        (let ((_%hd203842203863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203841203859%_)))
                              (_%tl203843203866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203841203859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203843203866%_))
                              (let ((_%e203844203869%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203843203866%_))))
                                (let ((_%hd203845203873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203844203869%_)))
                                      (_%tl203846203876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203844203869%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203846203876%_))
                                      ((lambda (_%L203879%_)
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
                                                           (cons _%L203879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203845203873%_)
                                      (_%g203838203852%_ _%g203839203856%_))))
                              (_%g203838203852%_ _%g203839203856%_))))
                      (_%g203838203852%_ _%g203839203856%_)))))
          (_%g203837203893%_ _%$stx203834%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx203897%_)
        (let* ((_%g203901203923%_
                (lambda (_%g203902203919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203902203919%_))))
               (_%g203900203992%_
                (lambda (_%g203902203927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203902203927%_))
                      (let ((_%e203906203930%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203902203927%_))))
                        (let ((_%hd203907203934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203906203930%_)))
                              (_%tl203908203937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203906203930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203908203937%_))
                              (let ((_%e203909203940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203908203937%_))))
                                (let ((_%hd203910203944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203909203940%_)))
                                      (_%tl203911203947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203909203940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203911203947%_))
                                      (let ((_%e203912203950%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203911203947%_))))
                                        (let ((_%hd203913203954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203912203950%_)))
                                              (_%tl203914203957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203912203950%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203914203957%_))
                                              (let ((_%e203915203960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203914203957%_))))
                                                (let ((_%hd203916203964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203915203960%_)))
                                                      (_%tl203917203967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203915203960%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203917203967%_))
                                                      ((lambda (_%L203970%_
                                                                _%L203972%_
                                                                _%L203973%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203973%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L203972%_ '()))
                                   (cons _%L203970%_ '())))))
               _%hd203916203964%_
               _%hd203913203954%_
               _%hd203910203944%_)
              (_%g203901203923%_ _%g203902203927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203901203923%_
                                               _%g203902203927%_))))
                                      (_%g203901203923%_ _%g203902203927%_))))
                              (_%g203901203923%_ _%g203902203927%_))))
                      (_%g203901203923%_ _%g203902203927%_)))))
          (_%g203900203992%_ _%$stx203897%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx203996%_)
        (let* ((_%g204000204022%_
                (lambda (_%g204001204018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204001204018%_))))
               (_%g203999204091%_
                (lambda (_%g204001204026%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204001204026%_))
                      (let ((_%e204005204029%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204001204026%_))))
                        (let ((_%hd204006204033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204005204029%_)))
                              (_%tl204007204036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204005204029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204007204036%_))
                              (let ((_%e204008204039%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204007204036%_))))
                                (let ((_%hd204009204043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204008204039%_)))
                                      (_%tl204010204046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204008204039%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204010204046%_))
                                      (let ((_%e204011204049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204010204046%_))))
                                        (let ((_%hd204012204053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204011204049%_)))
                                              (_%tl204013204056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204011204049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204013204056%_))
                                              (let ((_%e204014204059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204013204056%_))))
                                                (let ((_%hd204015204063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204014204059%_)))
                                                      (_%tl204016204066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204014204059%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204016204066%_))
                                                      ((lambda (_%L204069%_
                                                                _%L204071%_
                                                                _%L204072%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204072%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L204071%_ '()))
                                   (cons _%L204069%_ '())))))
               _%hd204015204063%_
               _%hd204012204053%_
               _%hd204009204043%_)
              (_%g204000204022%_ _%g204001204026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204000204022%_
                                               _%g204001204026%_))))
                                      (_%g204000204022%_ _%g204001204026%_))))
                              (_%g204000204022%_ _%g204001204026%_))))
                      (_%g204000204022%_ _%g204001204026%_)))))
          (_%g203999204091%_ _%$stx203996%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx204095%_)
        (let* ((_%g204099204113%_
                (lambda (_%g204100204109%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204100204109%_))))
               (_%g204098204154%_
                (lambda (_%g204100204117%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204100204117%_))
                      (let ((_%e204102204120%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204100204117%_))))
                        (let ((_%hd204103204124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204102204120%_)))
                              (_%tl204104204127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204102204120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204104204127%_))
                              (let ((_%e204105204130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204104204127%_))))
                                (let ((_%hd204106204134%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204105204130%_)))
                                      (_%tl204107204137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204105204130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204107204137%_))
                                      ((lambda (_%L204140%_)
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
                                                           (cons _%L204140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204106204134%_)
                                      (_%g204099204113%_ _%g204100204117%_))))
                              (_%g204099204113%_ _%g204100204117%_))))
                      (_%g204099204113%_ _%g204100204117%_)))))
          (_%g204098204154%_ _%$stx204095%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx204158%_)
        (let* ((_%g204162204180%_
                (lambda (_%g204163204176%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204163204176%_))))
               (_%g204161204235%_
                (lambda (_%g204163204184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204163204184%_))
                      (let ((_%e204166204187%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204163204184%_))))
                        (let ((_%hd204167204191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204166204187%_)))
                              (_%tl204168204194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204166204187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204168204194%_))
                              (let ((_%e204169204197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204168204194%_))))
                                (let ((_%hd204170204201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204169204197%_)))
                                      (_%tl204171204204%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204169204197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204171204204%_))
                                      (let ((_%e204172204207%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204171204204%_))))
                                        (let ((_%hd204173204211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204172204207%_)))
                                              (_%tl204174204214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204172204207%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204174204214%_))
                                              ((lambda (_%L204217%_
                                                        _%L204219%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204219%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204217%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204173204211%_
                                               _%hd204170204201%_)
                                              (_%g204162204180%_
                                               _%g204163204184%_))))
                                      (_%g204162204180%_ _%g204163204184%_))))
                              (_%g204162204180%_ _%g204163204184%_))))
                      (_%g204162204180%_ _%g204163204184%_)))))
          (_%g204161204235%_ _%$stx204158%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx204239%_)
        (let* ((_%__stx208581208582%_ _%$stx204239%_)
               (_%g204246204307%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208581208582%_)))))
          (let ((_%__kont208584208585%_
                 (lambda (_%L204545%_ _%L204547%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204547%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204545%_ '()))
                                     '())))))
                (_%__kont208586208587%_
                 (lambda (_%L204484%_ _%L204486%_ _%L204487%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204487%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204486%_ '()))
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
                                 (cons _%L204484%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont208588208589%_
                 (lambda (_%L204408%_ _%L204410%_)
                   (cons _%L204410%_ (cons _%L204408%_ (cons '#f '())))))
                (_%__kont208590208591%_
                 (lambda (_%L204358%_ _%L204360%_ _%L204361%_)
                   (cons _%L204361%_
                         (cons _%L204360%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L204358%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208581208582%_))
                (let ((_%e204250204515%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208581208582%_))))
                  (let ((_%tl204252204522%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204250204515%_)))
                        (_%hd204251204519%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204250204515%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204252204522%_))
                        (let ((_%e204253204525%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204252204522%_))))
                          (let ((_%tl204255204532%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204253204525%_)))
                                (_%hd204254204529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204253204525%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204255204532%_))
                                (let ((_%e204256204535%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204255204532%_))))
                                  (let ((_%tl204258204542%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204256204535%_)))
                                        (_%hd204257204539%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204256204535%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204258204542%_))
                                        (_%__kont208584208585%_
                                         _%hd204257204539%_
                                         _%hd204254204529%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204258204542%_))
                                            (let ((_%e204271204460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204258204542%_))))
                                              (let ((_%tl204273204467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204271204460%_)))
                                                    (_%hd204272204464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204271204460%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204272204464%_))
                                                    (let ((_%e204274204470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204272204464%_))))
                                                      (if (equal? _%e204274204470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204273204467%_))
                      (let ((_%e204275204474%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204273204467%_))))
                        (let ((_%tl204277204481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204275204474%_)))
                              (_%hd204276204478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204275204474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204277204481%_))
                              (_%__kont208586208587%_
                               _%hd204276204478%_
                               _%hd204257204539%_
                               _%hd204254204529%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd204257204539%_))
                                  (let ((_%e204298204344%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204257204539%_))))
                                    (declare (not safe))
                                    (_%g204246204307%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204246204307%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204257204539%_))
                          (let ((_%e204298204344%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204257204539%_))))
                            (if (equal? _%e204298204344%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204273204467%_))
                                    (_%__kont208590208591%_
                                     _%hd204272204464%_
                                     _%hd204254204529%_
                                     _%hd204251204519%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204246204307%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g204246204307%_))))
                          (let () (declare (not safe)) (_%g204246204307%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd204257204539%_))
                      (let ((_%e204298204344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204257204539%_))))
                        (if (equal? _%e204298204344%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204273204467%_))
                                (_%__kont208590208591%_
                                 _%hd204272204464%_
                                 _%hd204254204529%_
                                 _%hd204251204519%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204246204307%_)))
                            (let () (declare (not safe)) (_%g204246204307%_))))
                      (let () (declare (not safe)) (_%g204246204307%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd204257204539%_))
                                                        (let ((_%e204298204344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd204257204539%_))))
                  (if (equal? _%e204298204344%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204273204467%_))
                          (_%__kont208590208591%_
                           _%hd204272204464%_
                           _%hd204254204529%_
                           _%hd204251204519%_)
                          (let () (declare (not safe)) (_%g204246204307%_)))
                      (let () (declare (not safe)) (_%g204246204307%_))))
                (let () (declare (not safe)) (_%g204246204307%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd204257204539%_))
                                                (let ((_%e204298204344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204257204539%_))))
                                                  (declare (not safe))
                                                  (_%g204246204307%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g204246204307%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204255204532%_))
                                    (_%__kont208588208589%_
                                     _%hd204254204529%_
                                     _%hd204251204519%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204246204307%_))))))
                        (let () (declare (not safe)) (_%g204246204307%_)))))
                (let () (declare (not safe)) (_%g204246204307%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx204566%_)
        (let* ((_%g204570204599%_
                (lambda (_%g204571204595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204571204595%_))))
               (_%g204569204708%_
                (lambda (_%g204571204603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204571204603%_))
                      (let ((_%e204573204606%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204571204603%_))))
                        (let ((_%hd204574204610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204573204606%_)))
                              (_%tl204575204613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204573204606%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204575204613%_))
                              (let ((_g209211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204575204613%_
                                        '0))))
                                (begin
                                  (let ((_g209212_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209211_)
                                               (##vector-length _g209211_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209212_ 2)))
                                        (error "Context expects 2 values"
                                               _g209212_)))
                                  (let ((_%target204576204616%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209211_ 0)))
                                        (_%tl204578204619%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209211_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204578204619%_))
                                        (letrec ((_%loop204579204622%_
                                                  (lambda (_%hd204577204626%_
                                                           _%clause204583204629%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204577204626%_))
                                                        (let ((_%e204580204632%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204577204626%_))))
                  (let ((_%lp-hd204581204636%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204580204632%_)))
                        (_%lp-tl204582204639%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204580204632%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd204581204636%_))
                        (let ((_g209213_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd204581204636%_
                                  '0))))
                          (begin
                            (let ((_g209214_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g209213_)
                                         (##vector-length _g209213_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g209214_ 2)))
                                  (error "Context expects 2 values"
                                         _g209214_)))
                            (let ((_%target204585204642%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g209213_ 0)))
                                  (_%tl204587204645%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g209213_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204587204645%_))
                                  (letrec ((_%loop204588204648%_
                                            (lambda (_%hd204586204652%_
                                                     _%clause204592204655%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204586204652%_))
                                                  (let ((_%e204589204658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd204586204652%_))))
                                                    (let ((_%lp-hd204590204662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204589204658%_)))
                                                          (_%lp-tl204591204665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204589204658%_))))
                                                      (_%loop204588204648%_
                                                       _%lp-tl204591204665%_
                                                       (cons _%lp-hd204590204662%_
                                                             _%clause204592204655%_))))
                                                  (let ((_%clause204593204668%_
                                                         (reverse _%clause204592204655%_)))
                                                    (_%loop204579204622%_
                                                     _%lp-tl204582204639%_
                                                     (cons _%clause204593204668%_
                                                           _%clause204583204629%_)))))))
                                    (_%loop204588204648%_
                                     _%target204585204642%_
                                     '()))
                                  (_%g204570204599%_ _%g204571204603%_)))))
                        (_%g204570204599%_ _%g204571204603%_))))
                (let ((_%clause204584204672%_
                       (reverse _%clause204583204629%_)))
                  ((lambda (_%L204676%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp209215
                                              (lambda (_%g204691204696%_
                                                       _%g204692204699%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp209216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g204693204702%_ _%g204694204705%_)
                             (cons _%g204693204702%_ _%g204694204705%_))))
                      (declare (not safe))
                      (__foldr1 __tmp209216 '() _%g204691204696%_)))
              _%g204692204699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp209215
                                          '()
                                          _%L204676%_)))
                                 '())))
                   _%clause204584204672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204579204622%_
                                           _%target204576204616%_
                                           '()))
                                        (_%g204570204599%_
                                         _%g204571204603%_)))))
                              (_%g204570204599%_ _%g204571204603%_))))
                      (_%g204570204599%_ _%g204571204603%_)))))
          (_%g204569204708%_ _%$stx204566%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx204714%_)
        (let* ((_%g204718204736%_
                (lambda (_%g204719204732%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204719204732%_))))
               (_%g204717204791%_
                (lambda (_%g204719204740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204719204740%_))
                      (let ((_%e204722204743%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204719204740%_))))
                        (let ((_%hd204723204747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204722204743%_)))
                              (_%tl204724204750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204722204743%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204724204750%_))
                              (let ((_%e204725204753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204724204750%_))))
                                (let ((_%hd204726204757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204725204753%_)))
                                      (_%tl204727204760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204725204753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204727204760%_))
                                      (let ((_%e204728204763%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204727204760%_))))
                                        (let ((_%hd204729204767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204728204763%_)))
                                              (_%tl204730204770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204728204763%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204730204770%_))
                                              ((lambda (_%L204773%_
                                                        _%L204775%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204775%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204773%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204729204767%_
                                               _%hd204726204757%_)
                                              (_%g204718204736%_
                                               _%g204719204740%_))))
                                      (_%g204718204736%_ _%g204719204740%_))))
                              (_%g204718204736%_ _%g204719204740%_))))
                      (_%g204718204736%_ _%g204719204740%_)))))
          (_%g204717204791%_ _%$stx204714%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx204795%_)
        (let* ((_%g204799204817%_
                (lambda (_%g204800204813%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204800204813%_))))
               (_%g204798204872%_
                (lambda (_%g204800204821%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204800204821%_))
                      (let ((_%e204803204824%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204800204821%_))))
                        (let ((_%hd204804204828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204803204824%_)))
                              (_%tl204805204831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204803204824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204805204831%_))
                              (let ((_%e204806204834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204805204831%_))))
                                (let ((_%hd204807204838%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204806204834%_)))
                                      (_%tl204808204841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204806204834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204808204841%_))
                                      (let ((_%e204809204844%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204808204841%_))))
                                        (let ((_%hd204810204848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204809204844%_)))
                                              (_%tl204811204851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204809204844%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204811204851%_))
                                              ((lambda (_%L204854%_
                                                        _%L204856%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204856%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204854%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204810204848%_
                                               _%hd204807204838%_)
                                              (_%g204799204817%_
                                               _%g204800204821%_))))
                                      (_%g204799204817%_ _%g204800204821%_))))
                              (_%g204799204817%_ _%g204800204821%_))))
                      (_%g204799204817%_ _%g204800204821%_)))))
          (_%g204798204872%_ _%$stx204795%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx204876%_)
        (let* ((_%g204880204909%_
                (lambda (_%g204881204905%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204881204905%_))))
               (_%g204879205009%_
                (lambda (_%g204881204913%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204881204913%_))
                      (let ((_%e204884204916%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204881204913%_))))
                        (let ((_%hd204885204920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204884204916%_)))
                              (_%tl204886204923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204884204916%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204886204923%_))
                              (let ((_g209217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204886204923%_
                                        '0))))
                                (begin
                                  (let ((_g209218_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209217_)
                                               (##vector-length _g209217_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209218_ 2)))
                                        (error "Context expects 2 values"
                                               _g209218_)))
                                  (let ((_%target204887204926%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209217_ 0)))
                                        (_%tl204889204929%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209217_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204889204929%_))
                                        (letrec ((_%loop204890204932%_
                                                  (lambda (_%hd204888204936%_
                                                           _%rule204894204939%_
                                                           _%proc204895204941%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204888204936%_))
                                                        (let ((_%e204891204944%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204888204936%_))))
                  (let ((_%lp-hd204892204948%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204891204944%_)))
                        (_%lp-tl204893204951%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204891204944%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204892204948%_))
                        (let ((_%e204898204954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204892204948%_))))
                          (let ((_%hd204899204958%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204898204954%_)))
                                (_%tl204900204961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204898204954%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204900204961%_))
                                (let ((_%e204901204964%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204900204961%_))))
                                  (let ((_%hd204902204968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204901204964%_)))
                                        (_%tl204903204971%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204901204964%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204903204971%_))
                                        (_%loop204890204932%_
                                         _%lp-tl204893204951%_
                                         (cons _%hd204902204968%_
                                               _%rule204894204939%_)
                                         (cons _%hd204899204958%_
                                               _%proc204895204941%_))
                                        (_%g204880204909%_
                                         _%g204881204913%_))))
                                (_%g204880204909%_ _%g204881204913%_))))
                        (_%g204880204909%_ _%g204881204913%_))))
                (let ((_%rule204896204974%_ (reverse _%rule204894204939%_))
                      (_%proc204897204977%_ (reverse _%proc204895204941%_)))
                  ((lambda (_%L204980%_ _%L204982%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204980%_
                                _%L204982%_))
                             (let ((__tmp209219
                                    (lambda (_%g204997205001%_
                                             _%g204998205004%_
                                             _%g204999205006%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g204998205004%_
                                                        (cons _%g204997205001%_
                                                              '())))
                                            _%g204999205006%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209219
                                '()
                                _%L204980%_
                                _%L204982%_)))))
                   _%rule204896204974%_
                   _%proc204897204977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204890204932%_
                                           _%target204887204926%_
                                           '()
                                           '()))
                                        (_%g204880204909%_
                                         _%g204881204913%_)))))
                              (_%g204880204909%_ _%g204881204913%_))))
                      (_%g204880204909%_ _%g204881204913%_)))))
          (_%g204879205009%_ _%$stx204876%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx205014%_)
        (let* ((_%g205018205036%_
                (lambda (_%g205019205032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205019205032%_))))
               (_%g205017205091%_
                (lambda (_%g205019205040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205019205040%_))
                      (let ((_%e205022205043%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205019205040%_))))
                        (let ((_%hd205023205047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205022205043%_)))
                              (_%tl205024205050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205022205043%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205024205050%_))
                              (let ((_%e205025205053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205024205050%_))))
                                (let ((_%hd205026205057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205025205053%_)))
                                      (_%tl205027205060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205025205053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205027205060%_))
                                      (let ((_%e205028205063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205027205060%_))))
                                        (let ((_%hd205029205067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205028205063%_)))
                                              (_%tl205030205070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205028205063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205030205070%_))
                                              ((lambda (_%L205073%_
                                                        _%L205075%_)
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
                                                   (cons _%L205075%_ '()))
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
                 (cons _%L205073%_ '())))
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
                                   (cons _%L205075%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205029205067%_
                                               _%hd205026205057%_)
                                              (_%g205018205036%_
                                               _%g205019205040%_))))
                                      (_%g205018205036%_ _%g205019205040%_))))
                              (_%g205018205036%_ _%g205019205040%_))))
                      (_%g205018205036%_ _%g205019205040%_)))))
          (_%g205017205091%_ _%$stx205014%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx205095%_)
        (let* ((_%__stx208699208700%_ _%$stx205095%_)
               (_%g205100205125%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208699208700%_)))))
          (let ((_%__kont208702208703%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208704208705%_
                 (lambda (_%L205172%_ _%L205174%_ _%L205175%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L205175%_ (cons _%L205174%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L205172%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208699208700%_))
                (let ((_%e205102205201%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208699208700%_))))
                  (let ((_%tl205104205208%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205102205201%_)))
                        (_%hd205103205205%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205102205201%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl205104205208%_))
                        (_%__kont208702208703%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205104205208%_))
                            (let ((_%e205111205142%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205104205208%_))))
                              (let ((_%tl205113205149%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205111205142%_)))
                                    (_%hd205112205146%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205111205142%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd205112205146%_))
                                    (let ((_%e205114205152%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd205112205146%_))))
                                      (let ((_%tl205116205159%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205114205152%_)))
                                            (_%hd205115205156%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205114205152%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205116205159%_))
                                            (let ((_%e205117205162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205116205159%_))))
                                              (let ((_%tl205119205169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205117205162%_)))
                                                    (_%hd205118205166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205117205162%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl205119205169%_))
                                                    (_%__kont208704208705%_
                                                     _%tl205113205149%_
                                                     _%hd205118205166%_
                                                     _%hd205115205156%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g205100205125%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g205100205125%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g205100205125%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g205100205125%_))))))
                (let () (declare (not safe)) (_%g205100205125%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx205219%_)
        (let* ((_%__stx208743208744%_ _%$stx205219%_)
               (_%g205224205255%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208743208744%_)))))
          (let ((_%__kont208746208747%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208748208749%_
                 (lambda (_%L205322%_ _%L205324%_ _%L205325%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L205325%_
                                           (let ((__tmp209220
                                                  (lambda (_%g205345205348%_
                                                           _%g205346205351%_)
                                                    (cons _%g205345205348%_
                                                          _%g205346205351%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp209220
                                              '()
                                              _%L205324%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L205322%_)
                                     '()))))))
            (let ((_%__match208786208787%_
                   (lambda (_%e205232205262%_
                            _%hd205233205266%_
                            _%tl205234205269%_
                            _%e205235205272%_
                            _%hd205236205276%_
                            _%tl205237205279%_
                            _%e205238205282%_
                            _%hd205239205286%_
                            _%tl205240205289%_
                            _%__splice208750208751%_
                            _%target205241205292%_
                            _%tl205243205295%_)
                     (letrec ((_%loop205244205298%_
                               (lambda (_%hd205242205302%_ _%sig205248205305%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205242205302%_))
                                     (let ((_%e205245205308%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd205242205302%_))))
                                       (let ((_%lp-tl205247205315%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205245205308%_)))
                                             (_%lp-hd205246205312%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205245205308%_))))
                                         (_%loop205244205298%_
                                          _%lp-tl205247205315%_
                                          (cons _%lp-hd205246205312%_
                                                _%sig205248205305%_))))
                                     (let ((_%sig205249205318%_
                                            (reverse _%sig205248205305%_)))
                                       (_%__kont208748208749%_
                                        _%tl205237205279%_
                                        _%sig205249205318%_
                                        _%hd205239205286%_))))))
                       (_%loop205244205298%_ _%target205241205292%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208743208744%_))
                  (let ((_%e205226205361%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208743208744%_))))
                    (let ((_%tl205228205368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205226205361%_)))
                          (_%hd205227205365%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205226205361%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205228205368%_))
                          (_%__kont208746208747%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205228205368%_))
                              (let ((_%e205235205272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205228205368%_))))
                                (let ((_%tl205237205279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205235205272%_)))
                                      (_%hd205236205276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205235205272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205236205276%_))
                                      (let ((_%e205238205282%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205236205276%_))))
                                        (let ((_%tl205240205289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205238205282%_)))
                                              (_%hd205239205286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205238205282%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205240205289%_))
                                              (let ((_%__splice208750208751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205240205289%_
                                                        '0))))
                                                (let ((_%tl205243205295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208750208751%_
                                                          '1)))
                                                      (_%target205241205292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208750208751%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205243205295%_))
                                                      (_%__match208786208787%_
                                                       _%e205226205361%_
                                                       _%hd205227205365%_
                                                       _%tl205228205368%_
                                                       _%e205235205272%_
                                                       _%hd205236205276%_
                                                       _%tl205237205279%_
                                                       _%e205238205282%_
                                                       _%hd205239205286%_
                                                       _%tl205240205289%_
                                                       _%__splice208750208751%_
                                                       _%target205241205292%_
                                                       _%tl205243205295%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205224205255%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205224205255%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205224205255%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205224205255%_))))))
                  (let () (declare (not safe)) (_%g205224205255%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx205380%_)
        (let* ((_%__stx208789208790%_ _%$stx205380%_)
               (_%g205385205432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208789208790%_)))))
          (let ((_%__kont208792208793%_
                 (lambda (_%L205594%_ _%L205596%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L205596%_
                               (let ((__tmp209221
                                      (lambda (_%g205616205619%_
                                               _%g205617205622%_)
                                        (cons _%g205616205619%_
                                              _%g205617205622%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209221 '() _%L205594%_))))))
                (_%__kont208796208797%_
                 (lambda (_%L205489%_ _%L205491%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L205491%_
                               (let ((__tmp209222
                                      (lambda (_%g205508205511%_
                                               _%g205509205514%_)
                                        (cons _%g205508205511%_
                                              _%g205509205514%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209222 '() _%L205489%_)))))))
            (let* ((_%__match208856208857%_
                    (lambda (_%e205412205439%_
                             _%hd205413205443%_
                             _%tl205414205446%_
                             _%e205415205449%_
                             _%hd205416205453%_
                             _%tl205417205456%_
                             _%__splice208798208799%_
                             _%target205418205459%_
                             _%tl205420205462%_)
                      (letrec ((_%loop205421205465%_
                                (lambda (_%hd205419205469%_
                                         _%sig205425205472%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205419205469%_))
                                      (let ((_%e205422205475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205419205469%_))))
                                        (let ((_%lp-tl205424205482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205422205475%_)))
                                              (_%lp-hd205423205479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205422205475%_))))
                                          (_%loop205421205465%_
                                           _%lp-tl205424205482%_
                                           (cons _%lp-hd205423205479%_
                                                 _%sig205425205472%_))))
                                      (let ((_%sig205426205485%_
                                             (reverse _%sig205425205472%_)))
                                        (_%__kont208796208797%_
                                         _%sig205426205485%_
                                         _%hd205416205453%_))))))
                        (_%loop205421205465%_ _%target205418205459%_ '()))))
                   (_%__match208848208849%_
                    (lambda (_%e205412205439%_
                             _%hd205413205443%_
                             _%tl205414205446%_
                             _%e205415205449%_
                             _%hd205416205453%_
                             _%tl205417205456%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl205417205456%_))
                          (let ((_%__splice208798208799%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl205417205456%_
                                    '0))))
                            (let ((_%tl205420205462%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208798208799%_
                                      '1)))
                                  (_%target205418205459%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208798208799%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205420205462%_))
                                  (_%__match208856208857%_
                                   _%e205412205439%_
                                   _%hd205413205443%_
                                   _%tl205414205446%_
                                   _%e205415205449%_
                                   _%hd205416205453%_
                                   _%tl205417205456%_
                                   _%__splice208798208799%_
                                   _%target205418205459%_
                                   _%tl205420205462%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g205385205432%_)))))
                          (let () (declare (not safe)) (_%g205385205432%_)))))
                   (_%__match208836208837%_
                    (lambda (_%e205389205524%_
                             _%hd205390205528%_
                             _%tl205391205531%_
                             _%e205392205534%_
                             _%hd205393205538%_
                             _%tl205394205541%_
                             _%e205395205544%_
                             _%hd205396205548%_
                             _%tl205397205551%_
                             _%e205398205554%_
                             _%hd205399205558%_
                             _%tl205400205561%_
                             _%__splice208794208795%_
                             _%target205401205564%_
                             _%tl205403205567%_)
                      (letrec ((_%loop205404205570%_
                                (lambda (_%hd205402205574%_
                                         _%sig205408205577%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205402205574%_))
                                      (let ((_%e205405205580%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205402205574%_))))
                                        (let ((_%lp-tl205407205587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205405205580%_)))
                                              (_%lp-hd205406205584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205405205580%_))))
                                          (_%loop205404205570%_
                                           _%lp-tl205407205587%_
                                           (cons _%lp-hd205406205584%_
                                                 _%sig205408205577%_))))
                                      (let ((_%sig205409205590%_
                                             (reverse _%sig205408205577%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl205397205551%_))
                                            (_%__kont208792208793%_
                                             _%sig205409205590%_
                                             _%hd205393205538%_)
                                            (_%__match208848208849%_
                                             _%e205389205524%_
                                             _%hd205390205528%_
                                             _%tl205391205531%_
                                             _%e205392205534%_
                                             _%hd205393205538%_
                                             _%tl205394205541%_)))))))
                        (_%loop205404205570%_ _%target205401205564%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208789208790%_))
                  (let ((_%e205389205524%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208789208790%_))))
                    (let ((_%tl205391205531%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205389205524%_)))
                          (_%hd205390205528%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205389205524%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205391205531%_))
                          (let ((_%e205392205534%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205391205531%_))))
                            (let ((_%tl205394205541%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205392205534%_)))
                                  (_%hd205393205538%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205392205534%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205394205541%_))
                                  (let ((_%e205395205544%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205394205541%_))))
                                    (let ((_%tl205397205551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205395205544%_)))
                                          (_%hd205396205548%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205395205544%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd205396205548%_))
                                          (let ((_%e205398205554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd205396205548%_))))
                                            (let ((_%tl205400205561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e205398205554%_)))
                                                  (_%hd205399205558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e205398205554%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd205399205558%_))
                                                  (if (let ((__tmp209223
                                                             |gxc[1]#_g209224_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp209223
                                                         _%hd205399205558%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl205400205561%_))
                                                          (let ((_%__splice208794208795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205400205561%_ '0))))
                    (let ((_%tl205403205567%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208794208795%_ '1)))
                          (_%target205401205564%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208794208795%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205403205567%_))
                          (_%__match208836208837%_
                           _%e205389205524%_
                           _%hd205390205528%_
                           _%tl205391205531%_
                           _%e205392205534%_
                           _%hd205393205538%_
                           _%tl205394205541%_
                           _%e205395205544%_
                           _%hd205396205548%_
                           _%tl205397205551%_
                           _%e205398205554%_
                           _%hd205399205558%_
                           _%tl205400205561%_
                           _%__splice208794208795%_
                           _%target205401205564%_
                           _%tl205403205567%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205394205541%_))
                              (let ((_%__splice208798208799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205394205541%_
                                        '0))))
                                (let ((_%tl205420205462%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208798208799%_
                                          '1)))
                                      (_%target205418205459%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208798208799%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205420205462%_))
                                      (_%__match208856208857%_
                                       _%e205389205524%_
                                       _%hd205390205528%_
                                       _%tl205391205531%_
                                       _%e205392205534%_
                                       _%hd205393205538%_
                                       _%tl205394205541%_
                                       _%__splice208798208799%_
                                       _%target205418205459%_
                                       _%tl205420205462%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g205385205432%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205385205432%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl205394205541%_))
                      (let ((_%__splice208798208799%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl205394205541%_
                                '0))))
                        (let ((_%tl205420205462%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208798208799%_ '1)))
                              (_%target205418205459%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208798208799%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205420205462%_))
                              (_%__match208856208857%_
                               _%e205389205524%_
                               _%hd205390205528%_
                               _%tl205391205531%_
                               _%e205392205534%_
                               _%hd205393205538%_
                               _%tl205394205541%_
                               _%__splice208798208799%_
                               _%target205418205459%_
                               _%tl205420205462%_)
                              (let ()
                                (declare (not safe))
                                (_%g205385205432%_)))))
                      (let () (declare (not safe)) (_%g205385205432%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl205394205541%_))
                  (let ((_%__splice208798208799%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205394205541%_ '0))))
                    (let ((_%tl205420205462%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208798208799%_ '1)))
                          (_%target205418205459%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208798208799%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205420205462%_))
                          (_%__match208856208857%_
                           _%e205389205524%_
                           _%hd205390205528%_
                           _%tl205391205531%_
                           _%e205392205534%_
                           _%hd205393205538%_
                           _%tl205394205541%_
                           _%__splice208798208799%_
                           _%target205418205459%_
                           _%tl205420205462%_)
                          (let () (declare (not safe)) (_%g205385205432%_)))))
                  (let () (declare (not safe)) (_%g205385205432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl205394205541%_))
                                                      (let ((_%__splice208798208799%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl205394205541%_ '0))))
                (let ((_%tl205420205462%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208798208799%_ '1)))
                      (_%target205418205459%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208798208799%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205420205462%_))
                      (_%__match208856208857%_
                       _%e205389205524%_
                       _%hd205390205528%_
                       _%tl205391205531%_
                       _%e205392205534%_
                       _%hd205393205538%_
                       _%tl205394205541%_
                       _%__splice208798208799%_
                       _%target205418205459%_
                       _%tl205420205462%_)
                      (let () (declare (not safe)) (_%g205385205432%_)))))
              (let () (declare (not safe)) (_%g205385205432%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205394205541%_))
                                              (let ((_%__splice208798208799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205394205541%_
                                                        '0))))
                                                (let ((_%tl205420205462%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208798208799%_
                                                          '1)))
                                                      (_%target205418205459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208798208799%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205420205462%_))
                                                      (_%__match208856208857%_
                                                       _%e205389205524%_
                                                       _%hd205390205528%_
                                                       _%tl205391205531%_
                                                       _%e205392205534%_
                                                       _%hd205393205538%_
                                                       _%tl205394205541%_
                                                       _%__splice208798208799%_
                                                       _%target205418205459%_
                                                       _%tl205420205462%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205385205432%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205385205432%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205394205541%_))
                                      (let ((_%__splice208798208799%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205394205541%_
                                                '0))))
                                        (let ((_%tl205420205462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208798208799%_
                                                  '1)))
                                              (_%target205418205459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208798208799%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205420205462%_))
                                              (_%__match208856208857%_
                                               _%e205389205524%_
                                               _%hd205390205528%_
                                               _%tl205391205531%_
                                               _%e205392205534%_
                                               _%hd205393205538%_
                                               _%tl205394205541%_
                                               _%__splice208798208799%_
                                               _%target205418205459%_
                                               _%tl205420205462%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205385205432%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205385205432%_))))))
                          (let () (declare (not safe)) (_%g205385205432%_)))))
                  (let () (declare (not safe)) (_%g205385205432%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx206779%_ _%id206781%_)
        (let ((_%proc206785%_
               (let ((__tmp209225
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206781%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209225))))
          (if (procedure? _%proc206785%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx206779%_
                 _%id206781%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx206770%_ _%id206772%_)
        (let ((_%klass206776%_
               (let ((__tmp209226
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206772%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209226))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass206776%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx206770%_
                 _%id206772%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx206020%_ _%proc206022%_ _%sig206023%_)
        (letrec ((_%signature-arity206025%_
                  (lambda (_%args206702%_)
                    (let _%loop206705%_ ((_%rest206708%_ _%args206702%_)
                                         (_%count206710%_ '0))
                      (let* ((_%rest206711206722%_ _%rest206708%_)
                             (_%E206715206728%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest206711206722%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K206718206759%_
                               (lambda (_%rest206756%_)
                                 (_%loop206705%_
                                  _%rest206756%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count206710%_ '1)))))
                              (_%K206717206748%_ (lambda () _%count206710%_))
                              (_%K206716206736%_
                               (lambda () (cons _%count206710%_ '()))))
                          (let ((_%try-match206713206752%_
                                 (lambda ()
                                   (if (null? _%rest206711206722%_)
                                       (_%K206717206748%_)
                                       (_%K206716206736%_)))))
                            (if (pair? _%rest206711206722%_)
                                (let* ((_%tl206720206763%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest206711206722%_)))
                                       (_%rest206767%_ _%tl206720206763%_))
                                  (_%K206718206759%_ _%rest206767%_))
                                (_%try-match206713206752%_))))))))
                 (_%make-signature206027%_
                  (lambda (_%args206584%_
                           _%return206586%_
                           _%effect206587%_
                           _%unchecked206588%_)
                    (let ((__tmp209227
                           (lambda (_%g206589206591%_)
                             (|gxc[1]#verify-class!|
                              _%ctx206020%_
                              _%g206589206591%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp209227 _%args206584%_))
                    (|gxc[1]#verify-class!| _%ctx206020%_ _%return206586%_)
                    (if _%unchecked206588%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx206020%_
                         _%unchecked206588%_)
                        '#!void)
                    (let ((_%arity206595%_
                           (_%signature-arity206025%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args206584%_)))))
                      (if _%effect206587%_
                          (let ((_%effect206598%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect206587%_))))
                            (if (and (list? _%effect206598%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect206598%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx206020%_
                                   _%proc206022%_
                                   _%effect206598%_))))
                          '#!void)
                      (cons _%arity206595%_
                            (cons (let* ((_%g206601206624%_
                                          (lambda (_%g206602206620%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g206602206620%_))))
                                         (_%g206600206698%_
                                          (lambda (_%g206602206628%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g206602206628%_))
                                                (let ((_%e206607206631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g206602206628%_))))
                                                  (let ((_%hd206608206635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206607206631%_)))
                                                        (_%tl206609206638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206607206631%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206609206638%_))
                                                        (let ((_%e206610206641%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206609206638%_))))
                  (let ((_%hd206611206645%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206610206641%_)))
                        (_%tl206612206648%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206610206641%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206612206648%_))
                        (let ((_%e206613206651%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206612206648%_))))
                          (let ((_%hd206614206655%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206613206651%_)))
                                (_%tl206615206658%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206613206651%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206615206658%_))
                                (let ((_%e206616206661%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206615206658%_))))
                                  (let ((_%hd206617206665%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206616206661%_)))
                                        (_%tl206618206668%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206616206661%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206618206668%_))
                                        ((lambda (_%L206671%_
                                                  _%L206673%_
                                                  _%L206674%_
                                                  _%L206675%_)
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
                           (cons _%L206675%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L206674%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206673%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L206671%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd206617206665%_
                                         _%hd206614206655%_
                                         _%hd206611206645%_
                                         _%hd206608206635%_)
                                        (_%g206601206624%_
                                         _%g206602206628%_))))
                                (_%g206601206624%_ _%g206602206628%_))))
                        (_%g206601206624%_ _%g206602206628%_))))
                (_%g206601206624%_ _%g206602206628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206601206624%_
                                                 _%g206602206628%_)))))
                                    (_%g206600206698%_
                                     (list _%args206584%_
                                           _%return206586%_
                                           _%effect206587%_
                                           _%unchecked206588%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx206020%_ _%proc206022%_)
          (let* ((_%__stx208867208868%_ _%sig206023%_)
                 (_%g206034206137%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208867208868%_)))))
            (let ((_%__kont208870208871%_
                   (lambda (_%L206565%_ _%L206567%_)
                     (_%make-signature206027%_
                      _%L206567%_
                      _%L206565%_
                      '#f
                      '#f)))
                  (_%__kont208872208873%_
                   (lambda (_%L206516%_ _%L206518%_ _%L206519%_)
                     (_%make-signature206027%_
                      _%L206519%_
                      _%L206518%_
                      _%L206516%_
                      '#f)))
                  (_%__kont208874208875%_
                   (lambda (_%L206440%_ _%L206442%_ _%L206443%_)
                     (_%make-signature206027%_
                      _%L206443%_
                      _%L206442%_
                      _%L206440%_
                      (let ((__tmp209228
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc206022%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209228)))))
                  (_%__kont208876208877%_
                   (lambda (_%L206346%_ _%L206348%_ _%L206349%_ _%L206350%_)
                     (_%make-signature206027%_
                      _%L206350%_
                      _%L206349%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206346%_)))))
                  (_%__kont208878208879%_
                   (lambda (_%L206253%_ _%L206255%_)
                     (_%make-signature206027%_
                      _%L206255%_
                      _%L206253%_
                      '#f
                      (let ((__tmp209229
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc206022%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209229)))))
                  (_%__kont208880208881%_
                   (lambda (_%L206188%_ _%L206190%_ _%L206191%_)
                     (_%make-signature206027%_
                      _%L206191%_
                      _%L206190%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206188%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208867208868%_))
                  (let ((_%e206038206545%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208867208868%_))))
                    (let ((_%tl206040206552%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206038206545%_)))
                          (_%hd206039206549%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206038206545%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206040206552%_))
                          (let ((_%e206041206555%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206040206552%_))))
                            (let ((_%tl206043206562%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206041206555%_)))
                                  (_%hd206042206559%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206041206555%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206043206562%_))
                                  (_%__kont208870208871%_
                                   _%hd206042206559%_
                                   _%hd206039206549%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206043206562%_))
                                      (let ((_%e206053206492%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206043206562%_))))
                                        (let ((_%tl206055206499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206053206492%_)))
                                              (_%hd206054206496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206053206492%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd206054206496%_))
                                              (let ((_%e206056206502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd206054206496%_))))
                                                (if (equal? _%e206056206502%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206055206499%_))
                                                        (let ((_%e206057206506%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206055206499%_))))
                  (let ((_%tl206059206513%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206057206506%_)))
                        (_%hd206058206510%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206057206506%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206059206513%_))
                        (_%__kont208872208873%_
                         _%hd206058206510%_
                         _%hd206042206559%_
                         _%hd206039206549%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206059206513%_))
                            (let ((_%e206076206426%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206059206513%_))))
                              (let ((_%tl206078206433%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206076206426%_)))
                                    (_%hd206077206430%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206076206426%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd206077206430%_))
                                    (let ((_%e206079206436%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd206077206430%_))))
                                      (if (equal? _%e206079206436%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206078206433%_))
                                              (_%__kont208874208875%_
                                               _%hd206058206510%_
                                               _%hd206042206559%_
                                               _%hd206039206549%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206078206433%_))
                                                  (let ((_%e206101206336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206078206433%_))))
                                                    (let ((_%tl206103206343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206101206336%_)))
                                                          (_%hd206102206340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206101206336%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206103206343%_))
                                                          (_%__kont208876208877%_
                                                           _%hd206102206340%_
                                                           _%hd206058206510%_
                                                           _%hd206042206559%_
                                                           _%hd206039206549%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206034206137%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206034206137%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206034206137%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206034206137%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206034206137%_))))))
                (let () (declare (not safe)) (_%g206034206137%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e206056206502%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206055206499%_))
                                                            (_%__kont208878208879%_
                                                             _%hd206042206559%_
                                                             _%hd206039206549%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl206055206499%_))
                        (let ((_%e206129206178%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206055206499%_))))
                          (let ((_%tl206131206185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206129206178%_)))
                                (_%hd206130206182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206129206178%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl206131206185%_))
                                (_%__kont208880208881%_
                                 _%hd206130206182%_
                                 _%hd206042206559%_
                                 _%hd206039206549%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g206034206137%_)))))
                        (let () (declare (not safe)) (_%g206034206137%_))))
                (let () (declare (not safe)) (_%g206034206137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206034206137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206034206137%_))))))
                          (let () (declare (not safe)) (_%g206034206137%_)))))
                  (let () (declare (not safe)) (_%g206034206137%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig205631%_)
        (let* ((_%g205634205714%_
                (lambda (_%g205635205710%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205635205710%_))))
               (_%g205633206016%_
                (lambda (_%g205635205718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205635205718%_))
                      (let ((_%e205641205721%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205635205718%_))))
                        (let ((_%hd205642205725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205641205721%_)))
                              (_%tl205643205728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205641205721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205643205728%_))
                              (let ((_%e205644205731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205643205728%_))))
                                (let ((_%hd205645205735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205644205731%_)))
                                      (_%tl205646205738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205644205731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd205645205735%_))
                                      (let ((_%e205647205741%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205645205735%_))))
                                        (if (equal? _%e205647205741%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205646205738%_))
                                                (let ((_%e205648205745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205646205738%_))))
                                                  (let ((_%hd205649205749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205648205745%_)))
                                                        (_%tl205650205752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205648205745%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205649205749%_))
                                                        (let ((_%e205651205755%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205649205749%_))))
                  (let ((_%hd205652205759%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205651205755%_)))
                        (_%tl205653205762%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205651205755%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd205652205759%_))
                        (if (let ((__tmp209230 |gxc[1]#_g209231_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp209230
                               _%hd205652205759%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205653205762%_))
                                (let ((_%e205654205765%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205653205762%_))))
                                  (let ((_%hd205655205769%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205654205765%_)))
                                        (_%tl205656205772%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205654205765%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205656205772%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205650205752%_))
                                            (let ((_%e205657205775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205650205752%_))))
                                              (let ((_%hd205658205779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205657205775%_)))
                                                    (_%tl205659205782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205657205775%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205658205779%_))
                                                    (let ((_%e205660205785%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205658205779%_))))
                                                      (if (equal? _%e205660205785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205659205782%_))
                      (let ((_%e205661205789%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205659205782%_))))
                        (let ((_%hd205662205793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205661205789%_)))
                              (_%tl205663205796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205661205789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd205662205793%_))
                              (let ((_%e205664205799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd205662205793%_))))
                                (let ((_%hd205665205803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205664205799%_)))
                                      (_%tl205666205806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205664205799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd205665205803%_))
                                      (if (let ((__tmp209232
                                                 |gxc[1]#_g209233_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp209232
                                             _%hd205665205803%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205666205806%_))
                                              (let ((_%e205667205809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205666205806%_))))
                                                (let ((_%hd205668205813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205667205809%_)))
                                                      (_%tl205669205816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205667205809%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205669205816%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205663205796%_))
                                                          (let ((_%e205670205819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205663205796%_))))
                    (let ((_%hd205671205823%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205670205819%_)))
                          (_%tl205672205826%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205670205819%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205671205823%_))
                          (let ((_%e205673205829%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205671205823%_))))
                            (if (equal? _%e205673205829%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl205672205826%_))
                                    (let ((_%e205674205833%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl205672205826%_))))
                                      (let ((_%hd205675205837%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205674205833%_)))
                                            (_%tl205676205840%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205674205833%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd205675205837%_))
                                            (let ((_%e205677205843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd205675205837%_))))
                                              (let ((_%hd205678205847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205677205843%_)))
                                                    (_%tl205679205850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205677205843%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd205678205847%_))
                                                    (if (let ((__tmp209234
                                                               |gxc[1]#_g209235_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp209234
                                                           _%hd205678205847%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205679205850%_))
                                                            (let ((_%e205680205853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl205679205850%_))))
                      (let ((_%hd205681205857%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205680205853%_)))
                            (_%tl205682205860%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205680205853%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl205682205860%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205676205840%_))
                                (let ((_%e205683205863%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205676205840%_))))
                                  (let ((_%hd205684205867%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205683205863%_)))
                                        (_%tl205685205870%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205683205863%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd205684205867%_))
                                        (let ((_%e205686205873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd205684205867%_))))
                                          (if (equal? _%e205686205873%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205685205870%_))
                                                  (let ((_%e205687205877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205685205870%_))))
                                                    (let ((_%hd205688205881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205687205877%_)))
                                                          (_%tl205689205884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205687205877%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd205688205881%_))
                                                          (let ((_%e205690205887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd205688205881%_))))
                    (let ((_%hd205691205891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205690205887%_)))
                          (_%tl205692205894%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205690205887%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd205691205891%_))
                          (if (let ((__tmp209236 |gxc[1]#_g209237_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp209236
                                 _%hd205691205891%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205692205894%_))
                                  (let ((_%e205693205897%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205692205894%_))))
                                    (let ((_%hd205694205901%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205693205897%_)))
                                          (_%tl205695205904%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205693205897%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205695205904%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205689205884%_))
                                              (let ((_%e205696205907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205689205884%_))))
                                                (let ((_%hd205697205911%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205696205907%_)))
                                                      (_%tl205698205914%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205696205907%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd205697205911%_))
                                                      (let ((_%e205699205917%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd205697205911%_))))
                (if (equal? _%e205699205917%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205698205914%_))
                        (let ((_%e205700205921%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205698205914%_))))
                          (let ((_%hd205701205925%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205700205921%_)))
                                (_%tl205702205928%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205700205921%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd205701205925%_))
                                (let ((_%e205703205931%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd205701205925%_))))
                                  (let ((_%hd205704205935%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205703205931%_)))
                                        (_%tl205705205938%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205703205931%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd205704205935%_))
                                        (if (let ((__tmp209238
                                                   |gxc[1]#_g209239_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp209238
                                               _%hd205704205935%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205705205938%_))
                                                (let ((_%e205706205941%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205705205938%_))))
                                                  (let ((_%hd205707205945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205706205941%_)))
                                                        (_%tl205708205948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205706205941%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205708205948%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl205702205928%_))
                                                            ((lambda (_%L205951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L205953%_
                              _%L205954%_
                              _%L205955%_
                              _%L205956%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L205953%_))
                           (cons _%L205953%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L205955%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205951%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd205707205945%_
                     _%hd205694205901%_
                     _%hd205681205857%_
                     _%hd205668205813%_
                     _%hd205655205769%_)
                    (_%g205634205714%_ _%g205635205718%_))
                (_%g205634205714%_ _%g205635205718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205634205714%_
                                                 _%g205635205718%_))
                                            (_%g205634205714%_
                                             _%g205635205718%_))
                                        (_%g205634205714%_
                                         _%g205635205718%_))))
                                (_%g205634205714%_ _%g205635205718%_))))
                        (_%g205634205714%_ _%g205635205718%_))
                    (_%g205634205714%_ _%g205635205718%_)))
              (_%g205634205714%_ _%g205635205718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205634205714%_
                                               _%g205635205718%_))
                                          (_%g205634205714%_
                                           _%g205635205718%_))))
                                  (_%g205634205714%_ _%g205635205718%_))
                              (_%g205634205714%_ _%g205635205718%_))
                          (_%g205634205714%_ _%g205635205718%_))))
                  (_%g205634205714%_ _%g205635205718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g205634205714%_
                                                   _%g205635205718%_))
                                              (_%g205634205714%_
                                               _%g205635205718%_)))
                                        (_%g205634205714%_
                                         _%g205635205718%_))))
                                (_%g205634205714%_ _%g205635205718%_))
                            (_%g205634205714%_ _%g205635205718%_))))
                    (_%g205634205714%_ _%g205635205718%_))
                (_%g205634205714%_ _%g205635205718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205634205714%_
                                                     _%g205635205718%_))))
                                            (_%g205634205714%_
                                             _%g205635205718%_))))
                                    (_%g205634205714%_ _%g205635205718%_))
                                (_%g205634205714%_ _%g205635205718%_)))
                          (_%g205634205714%_ _%g205635205718%_))))
                  (_%g205634205714%_ _%g205635205718%_))
              (_%g205634205714%_ _%g205635205718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205634205714%_
                                               _%g205635205718%_))
                                          (_%g205634205714%_
                                           _%g205635205718%_))
                                      (_%g205634205714%_ _%g205635205718%_))))
                              (_%g205634205714%_ _%g205635205718%_))))
                      (_%g205634205714%_ _%g205635205718%_))
                  (_%g205634205714%_ _%g205635205718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205634205714%_
                                                     _%g205635205718%_))))
                                            (_%g205634205714%_
                                             _%g205635205718%_))
                                        (_%g205634205714%_
                                         _%g205635205718%_))))
                                (_%g205634205714%_ _%g205635205718%_))
                            (_%g205634205714%_ _%g205635205718%_))
                        (_%g205634205714%_ _%g205635205718%_))))
                (_%g205634205714%_ _%g205635205718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205634205714%_
                                                 _%g205635205718%_))
                                            (_%g205634205714%_
                                             _%g205635205718%_)))
                                      (_%g205634205714%_ _%g205635205718%_))))
                              (_%g205634205714%_ _%g205635205718%_))))
                      (_%g205634205714%_ _%g205635205718%_)))))
          (_%g205633206016%_ _%sig205631%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx206788%_)
        (let* ((_%g206791206809%_
                (lambda (_%g206792206805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206792206805%_))))
               (_%g206790206864%_
                (lambda (_%g206792206813%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206792206813%_))
                      (let ((_%e206795206816%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206792206813%_))))
                        (let ((_%hd206796206820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206795206816%_)))
                              (_%tl206797206823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206795206816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206797206823%_))
                              (let ((_%e206798206826%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206797206823%_))))
                                (let ((_%hd206799206830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206798206826%_)))
                                      (_%tl206800206833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206798206826%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206800206833%_))
                                      (let ((_%e206801206836%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206800206833%_))))
                                        (let ((_%hd206802206840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206801206836%_)))
                                              (_%tl206803206843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206801206836%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206803206843%_))
                                              ((lambda (_%L206846%_
                                                        _%L206848%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L206848%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L206846%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx206788%_
                                                        _%L206848%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx206788%_
                                                        _%L206846%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L206848%_
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
                                                   (cons _%L206846%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206791206809%_
                                                      _%g206792206813%_)))
                                               _%hd206802206840%_
                                               _%hd206799206830%_)
                                              (_%g206791206809%_
                                               _%g206792206813%_))))
                                      (_%g206791206809%_ _%g206792206813%_))))
                              (_%g206791206809%_ _%g206792206813%_))))
                      (_%g206791206809%_ _%g206792206813%_)))))
          (_%g206790206864%_ _%stx206788%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx206868%_)
        (let* ((_%g206871206895%_
                (lambda (_%g206872206891%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206872206891%_))))
               (_%g206870207178%_
                (lambda (_%g206872206899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206872206899%_))
                      (let ((_%e206875206902%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206872206899%_))))
                        (let ((_%hd206876206906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206875206902%_)))
                              (_%tl206877206909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206875206902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206877206909%_))
                              (let ((_%e206878206912%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206877206909%_))))
                                (let ((_%hd206879206916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206878206912%_)))
                                      (_%tl206880206919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206878206912%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206880206919%_))
                                      (let ((_g209240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206880206919%_
                                                '0))))
                                        (begin
                                          (let ((_g209241_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209240_)
                                                       (##vector-length
                                                        _g209240_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209241_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209241_)))
                                          (let ((_%target206881206922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209240_ 0)))
                                                (_%tl206883206925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209240_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl206883206925%_))
                                                (letrec ((_%loop206884206928%_
                                                          (lambda (_%hd206882206932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature206888206935%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd206882206932%_))
                        (let ((_%e206885206938%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd206882206932%_))))
                          (let ((_%lp-hd206886206942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206885206938%_)))
                                (_%lp-tl206887206945%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206885206938%_))))
                            (_%loop206884206928%_
                             _%lp-tl206887206945%_
                             (cons _%lp-hd206886206942%_
                                   _%signature206888206935%_))))
                        (let ((_%signature206889206948%_
                               (reverse _%signature206888206935%_)))
                          ((lambda (_%L206952%_ _%L206954%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L206954%_))
                                 (let* ((_%g206972206987%_
                                         (lambda (_%g206973206983%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g206973206983%_))))
                                        (_%g206971207166%_
                                         (lambda (_%g206973206991%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g206973206991%_))
                                               (let ((_%e206976206994%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g206973206991%_))))
                                                 (let ((_%hd206977206998%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206976206994%_)))
                                                       (_%tl206978207001%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206976206994%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl206978207001%_))
                                                       (let ((_%e206979207004%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl206978207001%_))))
                 (let ((_%hd206980207008%_
                        (let ()
                          (declare (not safe))
                          (##car _%e206979207004%_)))
                       (_%tl206981207011%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e206979207004%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl206981207011%_))
                       ((lambda (_%L207014%_ _%L207016%_)
                          (let* ((_%g207032207040%_
                                  (lambda (_%g207033207036%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g207033207036%_))))
                                 (_%g207031207162%_
                                  (lambda (_%g207033207044%_)
                                    ((lambda (_%L207047%_)
                                       (let* ((_%unchecked207060%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L207014%_))
                                              (_%g207063207071%_
                                               (lambda (_%g207064207067%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g207064207067%_))))
                                              (_%g207062207094%_
                                               (lambda (_%g207064207075%_)
                                                 ((lambda (_%L207078%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L207047%_
                                                                (cons _%L207078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g207064207075%_))))
                                         (_%g207062207094%_
                                          (if _%unchecked207060%_
                                              (let* ((_%g207098207113%_
                                                      (lambda (_%g207099207109%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g207099207109%_))))
                                                     (_%g207097207158%_
                                                      (lambda (_%g207099207117%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g207099207117%_))
                                                            (let ((_%e207102207120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g207099207117%_))))
                      (let ((_%hd207103207124%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207102207120%_)))
                            (_%tl207104207127%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207102207120%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207104207127%_))
                            (let ((_%e207105207130%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207104207127%_))))
                              (let ((_%hd207106207134%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207105207130%_)))
                                    (_%tl207107207137%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207105207130%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl207107207137%_))
                                    ((lambda (_%L207140%_ _%L207142%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L207142%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207016%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L207140%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd207106207134%_
                                     _%hd207103207124%_)
                                    (_%g207098207113%_ _%g207099207117%_))))
                            (_%g207098207113%_ _%g207099207117%_))))
                    (_%g207098207113%_ _%g207099207117%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207097207158%_
                                                 _%unchecked207060%_))
                                              '(begin)))))
                                     _%g207033207044%_))))
                            (_%g207031207162%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L206954%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L207016%_ '()))
                   (cons '#f (cons 'signature: (cons _%L207014%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd206980207008%_
                        _%hd206977206998%_)
                       (_%g206972206987%_ _%g206973206991%_))))
               (_%g206972206987%_ _%g206973206991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206972206987%_
                                                _%g206973206991%_)))))
                                   (_%g206971207166%_
                                    (|gxc[1]#parse-signature|
                                     _%stx206868%_
                                     _%L206954%_
                                     (let ((__tmp209242
                                            (lambda (_%g207169207172%_
                                                     _%g207170207175%_)
                                              (cons _%g207169207172%_
                                                    _%g207170207175%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp209242
                                        '()
                                        _%L206952%_)))))
                                 (_%g206871206895%_ _%g206872206899%_)))
                           _%signature206889206948%_
                           _%hd206879206916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop206884206928%_
                                                   _%target206881206922%_
                                                   '()))
                                                (_%g206871206895%_
                                                 _%g206872206899%_)))))
                                      (_%g206871206895%_ _%g206872206899%_))))
                              (_%g206871206895%_ _%g206872206899%_))))
                      (_%g206871206895%_ _%g206872206899%_)))))
          (_%g206870207178%_ _%stx206868%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx207183%_)
        (let* ((_%g207186207210%_
                (lambda (_%g207187207206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207187207206%_))))
               (_%g207185208093%_
                (lambda (_%g207187207214%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207187207214%_))
                      (let ((_%e207190207217%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207187207214%_))))
                        (let ((_%hd207191207221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207190207217%_)))
                              (_%tl207192207224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207190207217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207192207224%_))
                              (let ((_%e207193207227%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207192207224%_))))
                                (let ((_%hd207194207231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207193207227%_)))
                                      (_%tl207195207234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207193207227%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207195207234%_))
                                      (let ((_g209243_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207195207234%_
                                                '0))))
                                        (begin
                                          (let ((_g209244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209243_)
                                                       (##vector-length
                                                        _g209243_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209244_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209244_)))
                                          (let ((_%target207196207237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209243_ 0)))
                                                (_%tl207198207240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209243_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207198207240%_))
                                                (letrec ((_%loop207199207243%_
                                                          (lambda (_%hd207197207247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature207203207250%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207197207247%_))
                        (let ((_%e207200207253%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207197207247%_))))
                          (let ((_%lp-hd207201207257%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207200207253%_)))
                                (_%lp-tl207202207260%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207200207253%_))))
                            (_%loop207199207243%_
                             _%lp-tl207202207260%_
                             (cons _%lp-hd207201207257%_
                                   _%case-signature207203207250%_))))
                        (let ((_%case-signature207204207263%_
                               (reverse _%case-signature207203207250%_)))
                          ((lambda (_%L207267%_ _%L207269%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L207269%_))
                                 (let* ((_%signatures207300%_
                                         (map (lambda (_%g207286207288%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx207183%_
                                                 _%L207269%_
                                                 _%g207286207288%_))
                                              (let ((__tmp209245
                                                     (lambda (_%g207291207294%_
                                                              _%g207292207297%_)
                                                       (cons _%g207291207294%_
                                                             _%g207292207297%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp209245
                                                 '()
                                                 _%L207267%_))))
                                        (_%g207303207329%_
                                         (lambda (_%g207304207325%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207304207325%_))))
                                        (_%g207302208089%_
                                         (lambda (_%g207304207333%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g207304207333%_))
                                               (let ((_g209246_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g207304207333%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g209247_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g209246_)
                        (##vector-length _g209246_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g209247_ 2)))
                 (error "Context expects 2 values" _g209247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target207307207336%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g209246_
                                                             0)))
                                                         (_%tl207309207339%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g209246_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207309207339%_))
                                                         (letrec ((_%loop207310207342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd207308207346%_
                                    _%sig207314207349%_
                                    _%arity207315207351%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207308207346%_))
                                 (let ((_%e207311207354%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207308207346%_))))
                                   (let ((_%lp-hd207312207358%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207311207354%_)))
                                         (_%lp-tl207313207361%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207311207354%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd207312207358%_))
                                         (let ((_%e207318207364%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd207312207358%_))))
                                           (let ((_%hd207319207368%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e207318207364%_)))
                                                 (_%tl207320207371%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e207318207364%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207320207371%_))
                                                 (let ((_%e207321207374%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207320207371%_))))
                                                   (let ((_%hd207322207378%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207321207374%_)))
                                                         (_%tl207323207381%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207321207374%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207323207381%_))
                                                         (_%loop207310207342%_
                                                          _%lp-tl207313207361%_
                                                          (cons _%hd207322207378%_
                                                                _%sig207314207349%_)
                                                          (cons _%hd207319207368%_
                                                                _%arity207315207351%_))
                                                         (_%g207303207329%_
                                                          _%g207304207333%_))))
                                                 (_%g207303207329%_
                                                  _%g207304207333%_))))
                                         (_%g207303207329%_
                                          _%g207304207333%_))))
                                 (let ((_%sig207316207384%_
                                        (reverse _%sig207314207349%_))
                                       (_%arity207317207387%_
                                        (reverse _%arity207315207351%_)))
                                   ((lambda (_%L207390%_ _%L207392%_)
                                      (let* ((_%g207409207417%_
                                              (lambda (_%g207410207413%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g207410207413%_))))
                                             (_%g207408208074%_
                                              (lambda (_%g207410207421%_)
                                                ((lambda (_%L207424%_)
                                                   (let* ((_%g207437207445%_
                                                           (lambda (_%g207438207441%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g207438207441%_))))
                  (_%g207436207467%_
                   (lambda (_%g207438207449%_)
                     ((lambda (_%L207452%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L207424%_ (cons _%L207452%_ '()))))
                      _%g207438207449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207436207467%_
                                                      (let ((_g209248_
                                                             (let _%loop207471%_ ((_%rest207474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures207300%_)
                                          (_%unchecked-proc207476%_ '#f)
                                          (_%unchecked-clauses207477%_ '()))
                       (let* ((_%rest207478207486%_ _%rest207474%_)
                              (_%else207480207498%_
                               (lambda ()
                                 (values _%unchecked-proc207476%_
                                         (reverse!
                                          _%unchecked-clauses207477%_))))
                              (_%K207482207939%_
                               (lambda (_%rest207502%_ _%hd207504%_)
                                 (let* ((_%g207506207593%_
                                         (lambda (_%g207507207589%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207507207589%_))))
                                        (_%g207505207935%_
                                         (lambda (_%g207507207597%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g207507207597%_))
                                               (let ((_%e207514207600%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g207507207597%_))))
                                                 (let ((_%hd207515207604%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207514207600%_)))
                                                       (_%tl207516207607%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207514207600%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl207516207607%_))
                                                       (let ((_%e207517207610%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl207516207607%_))))
                 (let ((_%hd207518207614%_
                        (let ()
                          (declare (not safe))
                          (##car _%e207517207610%_)))
                       (_%tl207519207617%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e207517207610%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd207518207614%_))
                       (let ((_%e207520207620%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd207518207614%_))))
                         (let ((_%hd207521207624%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207520207620%_)))
                               (_%tl207522207627%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207520207620%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl207522207627%_))
                               (let ((_%e207523207630%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl207522207627%_))))
                                 (let ((_%hd207524207634%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207523207630%_)))
                                       (_%tl207525207637%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207523207630%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd207524207634%_))
                                       (let ((_%e207526207640%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd207524207634%_))))
                                         (if (equal? _%e207526207640%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207525207637%_))
                                                 (let ((_%e207527207644%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207525207637%_))))
                                                   (let ((_%hd207528207648%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207527207644%_)))
                                                         (_%tl207529207651%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207527207644%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd207528207648%_))
                                                         (let ((_%e207530207654%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd207528207648%_))))
                   (let ((_%hd207531207658%_
                          (let ()
                            (declare (not safe))
                            (##car _%e207530207654%_)))
                         (_%tl207532207661%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e207530207654%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd207531207658%_))
                         (if (let ((__tmp209250 |gxc[1]#_g209251_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp209250
                                _%hd207531207658%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207532207661%_))
                                 (let ((_%e207533207664%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207532207661%_))))
                                   (let ((_%hd207534207668%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207533207664%_)))
                                         (_%tl207535207671%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207533207664%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl207535207671%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl207529207651%_))
                                             (let ((_%e207536207674%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl207529207651%_))))
                                               (let ((_%hd207537207678%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207536207674%_)))
                                                     (_%tl207538207681%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207536207674%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd207537207678%_))
                                                     (let ((_%e207539207684%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd207537207678%_))))
                                                       (if (equal? _%e207539207684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl207538207681%_))
                       (let ((_%e207540207688%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl207538207681%_))))
                         (let ((_%hd207541207692%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207540207688%_)))
                               (_%tl207542207695%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207540207688%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd207541207692%_))
                               (let ((_%e207543207698%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd207541207692%_))))
                                 (let ((_%hd207544207702%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207543207698%_)))
                                       (_%tl207545207705%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207543207698%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd207544207702%_))
                                       (if (let ((__tmp209252
                                                  |gxc[1]#_g209253_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp209252
                                              _%hd207544207702%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207545207705%_))
                                               (let ((_%e207546207708%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207545207705%_))))
                                                 (let ((_%hd207547207712%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207546207708%_)))
                                                       (_%tl207548207715%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207546207708%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl207548207715%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl207542207695%_))
                                                           (let ((_%e207549207718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl207542207695%_))))
                     (let ((_%hd207550207722%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207549207718%_)))
                           (_%tl207551207725%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207549207718%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd207550207722%_))
                           (let ((_%e207552207728%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd207550207722%_))))
                             (if (equal? _%e207552207728%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl207551207725%_))
                                     (let ((_%e207553207732%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl207551207725%_))))
                                       (let ((_%hd207554207736%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207553207732%_)))
                                             (_%tl207555207739%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207553207732%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd207554207736%_))
                                             (let ((_%e207556207742%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd207554207736%_))))
                                               (let ((_%hd207557207746%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207556207742%_)))
                                                     (_%tl207558207749%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207556207742%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd207557207746%_))
                                                     (if (let ((__tmp209254
                                                                |gxc[1]#_g209255_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp209254
                                                            _%hd207557207746%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl207558207749%_))
                     (let ((_%e207559207752%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl207558207749%_))))
                       (let ((_%hd207560207756%_
                              (let ()
                                (declare (not safe))
                                (##car _%e207559207752%_)))
                             (_%tl207561207759%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e207559207752%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl207561207759%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207555207739%_))
                                 (let ((_%e207562207762%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207555207739%_))))
                                   (let ((_%hd207563207766%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207562207762%_)))
                                         (_%tl207564207769%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207562207762%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd207563207766%_))
                                         (let ((_%e207565207772%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd207563207766%_))))
                                           (if (equal? _%e207565207772%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl207564207769%_))
                                                   (let ((_%e207566207776%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl207564207769%_))))
                                                     (let ((_%hd207567207780%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e207566207776%_)))
                                                           (_%tl207568207783%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e207566207776%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd207567207780%_))
                                                           (let ((_%e207569207786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd207567207780%_))))
                     (let ((_%hd207570207790%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207569207786%_)))
                           (_%tl207571207793%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207569207786%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd207570207790%_))
                           (if (let ((__tmp209256 |gxc[1]#_g209257_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp209256
                                  _%hd207570207790%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl207571207793%_))
                                   (let ((_%e207572207796%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl207571207793%_))))
                                     (let ((_%hd207573207800%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e207572207796%_)))
                                           (_%tl207574207803%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e207572207796%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl207574207803%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207568207783%_))
                                               (let ((_%e207575207806%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207568207783%_))))
                                                 (let ((_%hd207576207810%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207575207806%_)))
                                                       (_%tl207577207813%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207575207806%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd207576207810%_))
                                                       (let ((_%e207578207816%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd207576207810%_))))
                 (if (equal? _%e207578207816%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl207577207813%_))
                         (let ((_%e207579207820%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl207577207813%_))))
                           (let ((_%hd207580207824%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e207579207820%_)))
                                 (_%tl207581207827%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e207579207820%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207580207824%_))
                                 (let ((_%e207582207830%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207580207824%_))))
                                   (let ((_%hd207583207834%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207582207830%_)))
                                         (_%tl207584207837%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207582207830%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd207583207834%_))
                                         (if (let ((__tmp209258
                                                    |gxc[1]#_g209259_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp209258
                                                _%hd207583207834%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207584207837%_))
                                                 (let ((_%e207585207840%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207584207837%_))))
                                                   (let ((_%hd207586207844%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207585207840%_)))
                                                         (_%tl207587207847%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207585207840%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207587207847%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl207581207827%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl207519207617%_))
                         ((lambda (_%L207850%_
                                   _%L207852%_
                                   _%L207853%_
                                   _%L207854%_
                                   _%L207855%_
                                   _%L207856%_)
                            (let ((_%clause207927%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L207856%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
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
                                                 (cons _%L207854%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207850%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked207929%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L207852%_))))
                              (_%loop207471%_
                               _%rest207502%_
                               (let ((_%$e207931%_ _%unchecked207929%_))
                                 (if _%$e207931%_
                                     _%$e207931%_
                                     _%unchecked-proc207476%_))
                               (cons _%clause207927%_
                                     _%unchecked-clauses207477%_))))
                          _%hd207586207844%_
                          _%hd207573207800%_
                          _%hd207560207756%_
                          _%hd207547207712%_
                          _%hd207534207668%_
                          _%hd207515207604%_)
                         (_%g207506207593%_ _%g207507207597%_))
                     (_%g207506207593%_ _%g207507207597%_))
                 (_%g207506207593%_ _%g207507207597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207506207593%_
                                                  _%g207507207597%_))
                                             (_%g207506207593%_
                                              _%g207507207597%_))
                                         (_%g207506207593%_
                                          _%g207507207597%_))))
                                 (_%g207506207593%_ _%g207507207597%_))))
                         (_%g207506207593%_ _%g207507207597%_))
                     (_%g207506207593%_ _%g207507207597%_)))
               (_%g207506207593%_ _%g207507207597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207506207593%_
                                                _%g207507207597%_))
                                           (_%g207506207593%_
                                            _%g207507207597%_))))
                                   (_%g207506207593%_ _%g207507207597%_))
                               (_%g207506207593%_ _%g207507207597%_))
                           (_%g207506207593%_ _%g207507207597%_))))
                   (_%g207506207593%_ _%g207507207597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g207506207593%_
                                                    _%g207507207597%_))
                                               (_%g207506207593%_
                                                _%g207507207597%_)))
                                         (_%g207506207593%_
                                          _%g207507207597%_))))
                                 (_%g207506207593%_ _%g207507207597%_))
                             (_%g207506207593%_ _%g207507207597%_))))
                     (_%g207506207593%_ _%g207507207597%_))
                 (_%g207506207593%_ _%g207507207597%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207506207593%_
                                                      _%g207507207597%_))))
                                             (_%g207506207593%_
                                              _%g207507207597%_))))
                                     (_%g207506207593%_ _%g207507207597%_))
                                 (_%g207506207593%_ _%g207507207597%_)))
                           (_%g207506207593%_ _%g207507207597%_))))
                   (_%g207506207593%_ _%g207507207597%_))
               (_%g207506207593%_ _%g207507207597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207506207593%_
                                                _%g207507207597%_))
                                           (_%g207506207593%_
                                            _%g207507207597%_))
                                       (_%g207506207593%_ _%g207507207597%_))))
                               (_%g207506207593%_ _%g207507207597%_))))
                       (_%g207506207593%_ _%g207507207597%_))
                   (_%g207506207593%_ _%g207507207597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207506207593%_
                                                      _%g207507207597%_))))
                                             (_%g207506207593%_
                                              _%g207507207597%_))
                                         (_%g207506207593%_
                                          _%g207507207597%_))))
                                 (_%g207506207593%_ _%g207507207597%_))
                             (_%g207506207593%_ _%g207507207597%_))
                         (_%g207506207593%_ _%g207507207597%_))))
                 (_%g207506207593%_ _%g207507207597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207506207593%_
                                                  _%g207507207597%_))
                                             (_%g207506207593%_
                                              _%g207507207597%_)))
                                       (_%g207506207593%_ _%g207507207597%_))))
                               (_%g207506207593%_ _%g207507207597%_))))
                       (_%g207506207593%_ _%g207507207597%_))))
               (_%g207506207593%_ _%g207507207597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207506207593%_
                                                _%g207507207597%_)))))
                                   (_%g207505207935%_ _%hd207504%_)))))
                         (if (pair? _%rest207478207486%_)
                             (let ((_%hd207483207943%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest207478207486%_)))
                                   (_%tl207484207946%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest207478207486%_))))
                               (let* ((_%hd207949%_ _%hd207483207943%_)
                                      (_%rest207952%_ _%tl207484207946%_))
                                 (_%K207482207939%_
                                  _%rest207952%_
                                  _%hd207949%_)))
                             (_%else207480207498%_))))))
                (begin
                  (let ((_g209249_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209248_)
                               (##vector-length _g209248_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209249_ 2)))
                        (error "Context expects 2 values" _g209249_)))
                  (let ((_%unchecked-proc207955%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209248_ 0)))
                        (_%unchecked-clauses207957%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209248_ 1))))
                    (if _%unchecked-proc207955%_
                        (let* ((_%g207959207983%_
                                (lambda (_%g207960207979%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g207960207979%_))))
                               (_%g207958208070%_
                                (lambda (_%g207960207987%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g207960207987%_))
                                      (let ((_%e207963207990%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g207960207987%_))))
                                        (let ((_%hd207964207994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207963207990%_)))
                                              (_%tl207965207997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207963207990%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207965207997%_))
                                              (let ((_%e207966208000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl207965207997%_))))
                                                (let ((_%hd207967208004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207966208000%_)))
                                                      (_%tl207968208007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207966208000%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd207967208004%_))
                                                      (let ((_g209260_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd207967208004%_ '0))))
                (begin
                  (let ((_g209261_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209260_)
                               (##vector-length _g209260_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209261_ 2)))
                        (error "Context expects 2 values" _g209261_)))
                  (let ((_%target207969208010%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209260_ 0)))
                        (_%tl207971208013%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209260_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207971208013%_))
                        (letrec ((_%loop207972208016%_
                                  (lambda (_%hd207970208020%_
                                           _%clause207976208023%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd207970208020%_))
                                        (let ((_%e207973208026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd207970208020%_))))
                                          (let ((_%lp-hd207974208030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e207973208026%_)))
                                                (_%lp-tl207975208033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e207973208026%_))))
                                            (_%loop207972208016%_
                                             _%lp-tl207975208033%_
                                             (cons _%lp-hd207974208030%_
                                                   _%clause207976208023%_))))
                                        (let ((_%clause207977208036%_
                                               (reverse _%clause207976208023%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207968208007%_))
                                              ((lambda (_%L208040%_
                                                        _%L208042%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L208042%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp209262
                                                    (lambda (_%g208061208064%_
                                                             _%g208062208067%_)
                                                      (cons _%g208061208064%_
                                                            _%g208062208067%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp209262
                                                '()
                                                _%L208040%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause207977208036%_
                                               _%hd207964207994%_)
                                              (_%g207959207983%_
                                               _%g207960207987%_)))))))
                          (_%loop207972208016%_ _%target207969208010%_ '()))
                        (_%g207959207983%_ _%g207960207987%_)))))
              (_%g207959207983%_ _%g207960207987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g207959207983%_
                                               _%g207960207987%_))))
                                      (_%g207959207983%_ _%g207960207987%_)))))
                          (_%g207958208070%_
                           (list _%unchecked-proc207955%_
                                 _%unchecked-clauses207957%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g207410207421%_))))
                                        (_%g207408208074%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L207269%_
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
                                          _%L207390%_
                                          _%L207392%_))
                                       (let ((__tmp209263
                                              (lambda (_%g208077208081%_
                                                       _%g208078208084%_
                                                       _%g208079208086%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g208078208084%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g208077208081%_ '())))))
              _%g208079208086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp209263
                                          '()
                                          _%L207390%_
                                          _%L207392%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig207316207384%_
                                    _%arity207317207387%_))))))
                   (_%loop207310207342%_ _%target207307207336%_ '() '()))
                 (_%g207303207329%_ _%g207304207333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207303207329%_
                                                _%g207304207333%_)))))
                                   (_%g207302208089%_ _%signatures207300%_))
                                 (_%g207186207210%_ _%g207187207214%_)))
                           _%case-signature207204207263%_
                           _%hd207194207231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207199207243%_
                                                   _%target207196207237%_
                                                   '()))
                                                (_%g207186207210%_
                                                 _%g207187207214%_)))))
                                      (_%g207186207210%_ _%g207187207214%_))))
                              (_%g207186207210%_ _%g207187207214%_))))
                      (_%g207186207210%_ _%g207187207214%_)))))
          (_%g207185208093%_ _%stx207183%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx208101%_)
        (let* ((_%__stx209083209084%_ _%$stx208101%_)
               (_%g208107208167%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209083209084%_)))))
          (let ((_%__kont209086209087%_
                 (lambda (_%L208389%_ _%L208391%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208391%_ '()))
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
                                                       (cons _%L208391%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208389%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont209088209089%_
                 (lambda (_%L208314%_ _%L208316%_ _%L208317%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208317%_ '()))
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
                                                       (cons _%L208317%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208316%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208314%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont209090209091%_
                 (lambda (_%L208228%_ _%L208230%_ _%L208231%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208231%_ '()))
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
                                                       (cons _%L208231%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208230%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208228%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209083209084%_))
                (let ((_%e208111208345%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209083209084%_))))
                  (let ((_%tl208113208352%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208111208345%_)))
                        (_%hd208112208349%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208111208345%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl208113208352%_))
                        (let ((_%e208114208355%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl208113208352%_))))
                          (let ((_%tl208116208362%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208114208355%_)))
                                (_%hd208115208359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208114208355%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd208115208359%_))
                                (let ((_%e208117208365%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd208115208359%_))))
                                  (if (equal? _%e208117208365%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl208116208362%_))
                                          (let ((_%e208118208369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl208116208362%_))))
                                            (let ((_%tl208120208376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e208118208369%_)))
                                                  (_%hd208119208373%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e208118208369%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208120208376%_))
                                                  (let ((_%e208121208379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl208120208376%_))))
                                                    (let ((_%tl208123208386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208121208379%_)))
                                                          (_%hd208122208383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208121208379%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208123208386%_))
                                                          (_%__kont209086209087%_
                                                           _%hd208122208383%_
                                                           _%hd208119208373%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208107208167%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208107208167%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g208107208167%_)))
                                      (if (equal? _%e208117208365%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208116208362%_))
                                              (let ((_%e208134208284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208116208362%_))))
                                                (let ((_%tl208136208291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208134208284%_)))
                                                      (_%hd208135208288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208134208284%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl208136208291%_))
                                                      (let ((_%e208137208294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl208136208291%_))))
                (let ((_%tl208139208301%_
                       (let () (declare (not safe)) (##cdr _%e208137208294%_)))
                      (_%hd208138208298%_
                       (let ()
                         (declare (not safe))
                         (##car _%e208137208294%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl208139208301%_))
                      (let ((_%e208140208304%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl208139208301%_))))
                        (let ((_%tl208142208311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208140208304%_)))
                              (_%hd208141208308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208140208304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208142208311%_))
                              (_%__kont209088209089%_
                               _%hd208141208308%_
                               _%hd208138208298%_
                               _%hd208135208288%_)
                              (let ()
                                (declare (not safe))
                                (_%g208107208167%_)))))
                      (let () (declare (not safe)) (_%g208107208167%_)))))
              (let () (declare (not safe)) (_%g208107208167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g208107208167%_)))
                                          (if (equal? _%e208117208365%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208116208362%_))
                                                  (let ((_%e208153208198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl208116208362%_))))
                                                    (let ((_%tl208155208205%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208153208198%_)))
                                                          (_%hd208154208202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208153208198%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl208155208205%_))
                                                          (let ((_%e208156208208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl208155208205%_))))
                    (let ((_%tl208158208215%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208156208208%_)))
                          (_%hd208157208212%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208156208208%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208158208215%_))
                          (let ((_%e208159208218%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl208158208215%_))))
                            (let ((_%tl208161208225%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208159208218%_)))
                                  (_%hd208160208222%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208159208218%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl208161208225%_))
                                  (_%__kont209090209091%_
                                   _%hd208160208222%_
                                   _%hd208157208212%_
                                   _%hd208154208202%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g208107208167%_)))))
                          (let () (declare (not safe)) (_%g208107208167%_)))))
                  (let () (declare (not safe)) (_%g208107208167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208107208167%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208107208167%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g208107208167%_)))))
                        (let () (declare (not safe)) (_%g208107208167%_)))))
                (let () (declare (not safe)) (_%g208107208167%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx208413%_)
        (let* ((_%g208417208437%_
                (lambda (_%g208418208433%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208418208433%_))))
               (_%g208416208508%_
                (lambda (_%g208418208441%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208418208441%_))
                      (let ((_%e208420208444%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208418208441%_))))
                        (let ((_%hd208421208448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208420208444%_)))
                              (_%tl208422208451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208420208444%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl208422208451%_))
                              (let ((_g209264_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl208422208451%_
                                        '0))))
                                (begin
                                  (let ((_g209265_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209264_)
                                               (##vector-length _g209264_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209265_ 2)))
                                        (error "Context expects 2 values"
                                               _g209265_)))
                                  (let ((_%target208423208454%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209264_ 0)))
                                        (_%tl208425208457%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209264_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208425208457%_))
                                        (letrec ((_%loop208426208460%_
                                                  (lambda (_%hd208424208464%_
                                                           _%decl208430208467%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd208424208464%_))
                                                        (let ((_%e208427208470%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd208424208464%_))))
                  (let ((_%lp-hd208428208474%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208427208470%_)))
                        (_%lp-tl208429208477%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208427208470%_))))
                    (_%loop208426208460%_
                     _%lp-tl208429208477%_
                     (cons _%lp-hd208428208474%_ _%decl208430208467%_))))
                (let ((_%decl208431208480%_ (reverse _%decl208430208467%_)))
                  ((lambda (_%L208484%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp209266
                                  (lambda (_%g208499208502%_ _%g208500208505%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g208499208502%_)
                                          _%g208500208505%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209266 '() _%L208484%_))))
                   _%decl208431208480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop208426208460%_
                                           _%target208423208454%_
                                           '()))
                                        (_%g208417208437%_
                                         _%g208418208441%_)))))
                              (_%g208417208437%_ _%g208418208441%_))))
                      (_%g208417208437%_ _%g208418208441%_)))))
          (_%g208416208508%_ _%$stx208413%_))))))
