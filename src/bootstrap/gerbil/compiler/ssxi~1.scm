(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g217583_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217590_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217592_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217594_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217596_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217598_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217610_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217612_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217614_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217616_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217618_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx211001%_)
        (let* ((_%g211005211023%_
                (lambda (_%g211006211019%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211006211019%_))))
               (_%g211004211078%_
                (lambda (_%g211006211027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211006211027%_))
                      (let ((_%e211009211030%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211006211027%_))))
                        (let ((_%hd211010211034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211009211030%_)))
                              (_%tl211011211037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211009211030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211011211037%_))
                              (let ((_%e211012211040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211011211037%_))))
                                (let ((_%hd211013211044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211012211040%_)))
                                      (_%tl211014211047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211012211040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211014211047%_))
                                      (let ((_%e211015211050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211014211047%_))))
                                        (let ((_%hd211016211054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211015211050%_)))
                                              (_%tl211017211057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211015211050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211017211057%_))
                                              ((lambda (_%L211060%_
                                                        _%L211062%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L211062%_))
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
                               (cons _%L211062%_ '()))
                         (cons _%L211060%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211005211023%_
                                                      _%g211006211027%_)))
                                               _%hd211016211054%_
                                               _%hd211013211044%_)
                                              (_%g211005211023%_
                                               _%g211006211027%_))))
                                      (_%g211005211023%_ _%g211006211027%_))))
                              (_%g211005211023%_ _%g211006211027%_))))
                      (_%g211005211023%_ _%g211006211027%_)))))
          (_%g211004211078%_ _%$stx211001%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx211082%_)
        (let* ((_%g211086211104%_
                (lambda (_%g211087211100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211087211100%_))))
               (_%g211085211159%_
                (lambda (_%g211087211108%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211087211108%_))
                      (let ((_%e211090211111%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211087211108%_))))
                        (let ((_%hd211091211115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211090211111%_)))
                              (_%tl211092211118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211090211111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211092211118%_))
                              (let ((_%e211093211121%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211092211118%_))))
                                (let ((_%hd211094211125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211093211121%_)))
                                      (_%tl211095211128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211093211121%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211095211128%_))
                                      (let ((_%e211096211131%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211095211128%_))))
                                        (let ((_%hd211097211135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211096211131%_)))
                                              (_%tl211098211138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211096211131%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211098211138%_))
                                              ((lambda (_%L211141%_
                                                        _%L211143%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L211143%_))
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
                               (cons _%L211143%_ '()))
                         (cons _%L211141%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211086211104%_
                                                      _%g211087211108%_)))
                                               _%hd211097211135%_
                                               _%hd211094211125%_)
                                              (_%g211086211104%_
                                               _%g211087211108%_))))
                                      (_%g211086211104%_ _%g211087211108%_))))
                              (_%g211086211104%_ _%g211087211108%_))))
                      (_%g211086211104%_ _%g211087211108%_)))))
          (_%g211085211159%_ _%$stx211082%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx211163%_)
        (let* ((_%g211167211196%_
                (lambda (_%g211168211192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211168211192%_))))
               (_%g211166211296%_
                (lambda (_%g211168211200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211168211200%_))
                      (let ((_%e211171211203%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211168211200%_))))
                        (let ((_%hd211172211207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211171211203%_)))
                              (_%tl211173211210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211171211203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211173211210%_))
                              (let ((_g217561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211173211210%_
                                        '0))))
                                (begin
                                  (let ((_g217562_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217561_)
                                               (##values-length _g217561_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217562_ 2)))
                                        (error "Context expects 2 values"
                                               _g217562_)))
                                  (let ((_%target211174211213%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217561_ 0)))
                                        (_%tl211176211216%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217561_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211176211216%_))
                                        (letrec ((_%loop211177211219%_
                                                  (lambda (_%hd211175211223%_
                                                           _%type211181211226%_
                                                           _%symbol211182211228%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211175211223%_))
                                                        (let ((_%e211178211231%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211175211223%_))))
                  (let ((_%lp-hd211179211235%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211178211231%_)))
                        (_%lp-tl211180211238%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211178211231%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211179211235%_))
                        (let ((_%e211185211241%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd211179211235%_))))
                          (let ((_%hd211186211245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211185211241%_)))
                                (_%tl211187211248%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211185211241%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211187211248%_))
                                (let ((_%e211188211251%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211187211248%_))))
                                  (let ((_%hd211189211255%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211188211251%_)))
                                        (_%tl211190211258%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211188211251%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211190211258%_))
                                        (_%loop211177211219%_
                                         _%lp-tl211180211238%_
                                         (cons _%hd211189211255%_
                                               _%type211181211226%_)
                                         (cons _%hd211186211245%_
                                               _%symbol211182211228%_))
                                        (_%g211167211196%_
                                         _%g211168211200%_))))
                                (_%g211167211196%_ _%g211168211200%_))))
                        (_%g211167211196%_ _%g211168211200%_))))
                (let ((_%type211183211261%_ (reverse _%type211181211226%_))
                      (_%symbol211184211264%_
                       (reverse _%symbol211182211228%_)))
                  ((lambda (_%L211267%_ _%L211269%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L211267%_
                                _%L211269%_))
                             (let ((__tmp217563
                                    (lambda (_%g211284211288%_
                                             _%g211285211291%_
                                             _%g211286211293%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g211285211291%_
                                                        (cons _%g211284211288%_
                                                              '())))
                                            _%g211286211293%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp217563
                                '()
                                _%L211267%_
                                _%L211269%_)))))
                   _%type211183211261%_
                   _%symbol211184211264%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211177211219%_
                                           _%target211174211213%_
                                           '()
                                           '()))
                                        (_%g211167211196%_
                                         _%g211168211200%_)))))
                              (_%g211167211196%_ _%g211168211200%_))))
                      (_%g211167211196%_ _%g211168211200%_)))))
          (_%g211166211296%_ _%$stx211163%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx211301%_)
        (let* ((_%__stx216872216873%_ _%$stx211301%_)
               (_%g211306211348%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx216872216873%_)))))
          (let ((_%__kont216875216876%_
                 (lambda (_%L211476%_ _%L211478%_ _%L211479%_ _%L211480%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L211480%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L211479%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L211478%_ '()))
                                           (cons _%L211476%_ '())))))))
                (_%__kont216877216878%_
                 (lambda (_%L211395%_ _%L211397%_ _%L211398%_ _%L211399%_)
                   (cons _%L211399%_
                         (cons _%L211398%_
                               (cons _%L211397%_
                                     (cons _%L211395%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match216911216912%_
                   (lambda (_%e211312211426%_
                            _%hd211313211430%_
                            _%tl211314211433%_
                            _%e211315211436%_
                            _%hd211316211440%_
                            _%tl211317211443%_
                            _%e211318211446%_
                            _%hd211319211450%_
                            _%tl211320211453%_
                            _%e211321211456%_
                            _%hd211322211460%_
                            _%tl211323211463%_
                            _%e211324211466%_
                            _%hd211325211470%_
                            _%tl211326211473%_)
                     (let ((_%L211476%_ _%hd211325211470%_)
                           (_%L211478%_ _%hd211322211460%_)
                           (_%L211479%_ _%hd211319211450%_)
                           (_%L211480%_ _%hd211316211440%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211480%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211479%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211478%_)))
                           (_%__kont216875216876%_
                            _%L211476%_
                            _%L211478%_
                            _%L211479%_
                            _%L211480%_)
                           (let ()
                             (declare (not safe))
                             (_%g211306211348%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx216872216873%_))
                  (let ((_%e211312211426%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx216872216873%_))))
                    (let ((_%tl211314211433%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211312211426%_)))
                          (_%hd211313211430%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211312211426%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211314211433%_))
                          (let ((_%e211315211436%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl211314211433%_))))
                            (let ((_%tl211317211443%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211315211436%_)))
                                  (_%hd211316211440%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211315211436%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211317211443%_))
                                  (let ((_%e211318211446%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl211317211443%_))))
                                    (let ((_%tl211320211453%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211318211446%_)))
                                          (_%hd211319211450%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211318211446%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211320211453%_))
                                          (let ((_%e211321211456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl211320211453%_))))
                                            (let ((_%tl211323211463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211321211456%_)))
                                                  (_%hd211322211460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211321211456%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211323211463%_))
                                                  (let ((_%e211324211466%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl211323211463%_))))
                                                    (let ((_%tl211326211473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211324211466%_)))
                                                          (_%hd211325211470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211324211466%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211326211473%_))
                                                          (_%__match216911216912%_
                                                           _%e211312211426%_
                                                           _%hd211313211430%_
                                                           _%tl211314211433%_
                                                           _%e211315211436%_
                                                           _%hd211316211440%_
                                                           _%tl211317211443%_
                                                           _%e211318211446%_
                                                           _%hd211319211450%_
                                                           _%tl211320211453%_
                                                           _%e211321211456%_
                                                           _%hd211322211460%_
                                                           _%tl211323211463%_
                                                           _%e211324211466%_
                                                           _%hd211325211470%_
                                                           _%tl211326211473%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g211306211348%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211323211463%_))
                                                      (_%__kont216877216878%_
                                                       _%hd211322211460%_
                                                       _%hd211319211450%_
                                                       _%hd211316211440%_
                                                       _%hd211313211430%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g211306211348%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g211306211348%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g211306211348%_)))))
                          (let () (declare (not safe)) (_%g211306211348%_)))))
                  (let () (declare (not safe)) (_%g211306211348%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx211505%_)
        (let* ((_%g211509211544%_
                (lambda (_%g211510211540%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211510211540%_))))
               (_%g211508211663%_
                (lambda (_%g211510211548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211510211548%_))
                      (let ((_%e211514211551%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211510211548%_))))
                        (let ((_%hd211515211555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211514211551%_)))
                              (_%tl211516211558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211514211551%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211516211558%_))
                              (let ((_g217564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211516211558%_
                                        '0))))
                                (begin
                                  (let ((_g217565_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217564_)
                                               (##values-length _g217564_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217565_ 2)))
                                        (error "Context expects 2 values"
                                               _g217565_)))
                                  (let ((_%target211517211561%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217564_ 0)))
                                        (_%tl211519211564%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217564_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211519211564%_))
                                        (letrec ((_%loop211520211567%_
                                                  (lambda (_%hd211518211571%_
                                                           _%symbol211524211574%_
                                                           _%method211525211576%_
                                                           _%type-t211526211578%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211518211571%_))
                                                        (let ((_%e211521211581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211518211571%_))))
                  (let ((_%lp-hd211522211585%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211521211581%_)))
                        (_%lp-tl211523211588%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211521211581%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211522211585%_))
                        (let ((_%e211530211591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd211522211585%_))))
                          (let ((_%hd211531211595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211530211591%_)))
                                (_%tl211532211598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211530211591%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211532211598%_))
                                (let ((_%e211533211601%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211532211598%_))))
                                  (let ((_%hd211534211605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211533211601%_)))
                                        (_%tl211535211608%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211533211601%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211535211608%_))
                                        (let ((_%e211536211611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl211535211608%_))))
                                          (let ((_%hd211537211615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211536211611%_)))
                                                (_%tl211538211618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211536211611%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211538211618%_))
                                                (_%loop211520211567%_
                                                 _%lp-tl211523211588%_
                                                 (cons _%hd211537211615%_
                                                       _%symbol211524211574%_)
                                                 (cons _%hd211534211605%_
                                                       _%method211525211576%_)
                                                 (cons _%hd211531211595%_
                                                       _%type-t211526211578%_))
                                                (_%g211509211544%_
                                                 _%g211510211548%_))))
                                        (_%g211509211544%_
                                         _%g211510211548%_))))
                                (_%g211509211544%_ _%g211510211548%_))))
                        (_%g211509211544%_ _%g211510211548%_))))
                (let ((_%symbol211527211621%_ (reverse _%symbol211524211574%_))
                      (_%method211528211624%_ (reverse _%method211525211576%_))
                      (_%type-t211529211626%_
                       (reverse _%type-t211526211578%_)))
                  ((lambda (_%L211629%_ _%L211631%_ _%L211632%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L211629%_
                                _%L211631%_
                                _%L211632%_))
                             (let ((__tmp217566
                                    (lambda (_%g211648211653%_
                                             _%g211649211656%_
                                             _%g211650211658%_
                                             _%g211651211660%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g211650211658%_
                                                        (cons _%g211649211656%_
                                                              (cons _%g211648211653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g211651211660%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp217566
                                '()
                                _%L211629%_
                                _%L211631%_
                                _%L211632%_)))))
                   _%symbol211527211621%_
                   _%method211528211624%_
                   _%type-t211529211626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211520211567%_
                                           _%target211517211561%_
                                           '()
                                           '()
                                           '()))
                                        (_%g211509211544%_
                                         _%g211510211548%_)))))
                              (_%g211509211544%_ _%g211510211548%_))))
                      (_%g211509211544%_ _%g211510211548%_)))))
          (_%g211508211663%_ _%$stx211505%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx211668%_)
        (let* ((_%g211672211705%_
                (lambda (_%g211673211701%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211673211701%_))))
               (_%g211671211819%_
                (lambda (_%g211673211709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211673211709%_))
                      (let ((_%e211677211712%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211673211709%_))))
                        (let ((_%hd211678211716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211677211712%_)))
                              (_%tl211679211719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211677211712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211679211719%_))
                              (let ((_%e211680211722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211679211719%_))))
                                (let ((_%hd211681211726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211680211722%_)))
                                      (_%tl211682211729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211680211722%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl211682211729%_))
                                      (let ((_g217567_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl211682211729%_
                                                '0))))
                                        (begin
                                          (let ((_g217568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g217567_)
                                                       (##values-length
                                                        _g217567_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g217568_ 2)))
                                                (error "Context expects 2 values"
                                                       _g217568_)))
                                          (let ((_%target211683211732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g217567_ 0)))
                                                (_%tl211685211735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g217567_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211685211735%_))
                                                (letrec ((_%loop211686211738%_
                                                          (lambda (_%hd211684211742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol211690211745%_
                           _%method211691211747%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211684211742%_))
                        (let ((_%e211687211750%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd211684211742%_))))
                          (let ((_%lp-hd211688211754%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211687211750%_)))
                                (_%lp-tl211689211757%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211687211750%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd211688211754%_))
                                (let ((_%e211694211760%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd211688211754%_))))
                                  (let ((_%hd211695211764%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211694211760%_)))
                                        (_%tl211696211767%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211694211760%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211696211767%_))
                                        (let ((_%e211697211770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl211696211767%_))))
                                          (let ((_%hd211698211774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211697211770%_)))
                                                (_%tl211699211777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211697211770%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211699211777%_))
                                                (_%loop211686211738%_
                                                 _%lp-tl211689211757%_
                                                 (cons _%hd211698211774%_
                                                       _%symbol211690211745%_)
                                                 (cons _%hd211695211764%_
                                                       _%method211691211747%_))
                                                (_%g211672211705%_
                                                 _%g211673211709%_))))
                                        (_%g211672211705%_
                                         _%g211673211709%_))))
                                (_%g211672211705%_ _%g211673211709%_))))
                        (let ((_%symbol211692211780%_
                               (reverse _%symbol211690211745%_))
                              (_%method211693211783%_
                               (reverse _%method211691211747%_)))
                          ((lambda (_%L211786%_ _%L211788%_ _%L211789%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L211786%_
                                        _%L211788%_))
                                     (let ((__tmp217569
                                            (lambda (_%g211807211811%_
                                                     _%g211808211814%_
                                                     _%g211809211816%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L211789%_
                                                                (cons _%g211808211814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g211807211811%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g211809211816%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp217569
                                        '()
                                        _%L211786%_
                                        _%L211788%_)))))
                           _%symbol211692211780%_
                           _%method211693211783%_
                           _%hd211681211726%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop211686211738%_
                                                   _%target211683211732%_
                                                   '()
                                                   '()))
                                                (_%g211672211705%_
                                                 _%g211673211709%_)))))
                                      (_%g211672211705%_ _%g211673211709%_))))
                              (_%g211672211705%_ _%g211673211709%_))))
                      (_%g211672211705%_ _%g211673211709%_)))))
          (_%g211671211819%_ _%$stx211668%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx211824%_)
        (let* ((_%g211828211842%_
                (lambda (_%g211829211838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211829211838%_))))
               (_%g211827211883%_
                (lambda (_%g211829211846%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211829211846%_))
                      (let ((_%e211831211849%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211829211846%_))))
                        (let ((_%hd211832211853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211831211849%_)))
                              (_%tl211833211856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211831211849%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211833211856%_))
                              (let ((_%e211834211859%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211833211856%_))))
                                (let ((_%hd211835211863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211834211859%_)))
                                      (_%tl211836211866%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211834211859%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211836211866%_))
                                      ((lambda (_%L211869%_)
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
                                                           (cons _%L211869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd211835211863%_)
                                      (_%g211828211842%_ _%g211829211846%_))))
                              (_%g211828211842%_ _%g211829211846%_))))
                      (_%g211828211842%_ _%g211829211846%_)))))
          (_%g211827211883%_ _%$stx211824%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx211887%_)
        (let* ((_%g211891211945%_
                (lambda (_%g211892211941%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211892211941%_))))
               (_%g211890212126%_
                (lambda (_%g211892211949%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211892211949%_))
                      (let ((_%e211904211952%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211892211949%_))))
                        (let ((_%hd211905211956%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211904211952%_)))
                              (_%tl211906211959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211904211952%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211906211959%_))
                              (let ((_%e211907211962%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211906211959%_))))
                                (let ((_%hd211908211966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211907211962%_)))
                                      (_%tl211909211969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211907211962%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211909211969%_))
                                      (let ((_%e211910211972%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211909211969%_))))
                                        (let ((_%hd211911211976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211910211972%_)))
                                              (_%tl211912211979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211910211972%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211912211979%_))
                                              (let ((_%e211913211982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl211912211979%_))))
                                                (let ((_%hd211914211986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211913211982%_)))
                                                      (_%tl211915211989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211913211982%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211915211989%_))
                                                      (let ((_%e211916211992%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl211915211989%_))))
                (let ((_%hd211917211996%_
                       (let () (declare (not safe)) (##car _%e211916211992%_)))
                      (_%tl211918211999%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e211916211992%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl211918211999%_))
                      (let ((_%e211919212002%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl211918211999%_))))
                        (let ((_%hd211920212006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211919212002%_)))
                              (_%tl211921212009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211919212002%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211921212009%_))
                              (let ((_%e211922212012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211921212009%_))))
                                (let ((_%hd211923212016%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211922212012%_)))
                                      (_%tl211924212019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211922212012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211924212019%_))
                                      (let ((_%e211925212022%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211924212019%_))))
                                        (let ((_%hd211926212026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211925212022%_)))
                                              (_%tl211927212029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211925212022%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211927212029%_))
                                              (let ((_%e211928212032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl211927212029%_))))
                                                (let ((_%hd211929212036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211928212032%_)))
                                                      (_%tl211930212039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211928212032%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211930212039%_))
                                                      (let ((_%e211931212042%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl211930212039%_))))
                (let ((_%hd211932212046%_
                       (let () (declare (not safe)) (##car _%e211931212042%_)))
                      (_%tl211933212049%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e211931212042%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl211933212049%_))
                      (let ((_%e211934212052%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl211933212049%_))))
                        (let ((_%hd211935212056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211934212052%_)))
                              (_%tl211936212059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211934212052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211936212059%_))
                              (let ((_%e211937212062%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211936212059%_))))
                                (let ((_%hd211938212066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211937212062%_)))
                                      (_%tl211939212069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211937212062%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211939212069%_))
                                      ((lambda (_%L212072%_
                                                _%L212074%_
                                                _%L212075%_
                                                _%L212076%_
                                                _%L212077%_
                                                _%L212078%_
                                                _%L212079%_
                                                _%L212080%_
                                                _%L212081%_
                                                _%L212082%_
                                                _%L212083%_)
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
                                                           (cons _%L212083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L212082%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L212081%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212080%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L212079%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L212078%_ '()))
                                           (cons _%L212077%_
                                                 (cons _%L212076%_
                                                       (cons _%L212075%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212074%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L212072%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd211938212066%_
                                       _%hd211935212056%_
                                       _%hd211932212046%_
                                       _%hd211929212036%_
                                       _%hd211926212026%_
                                       _%hd211923212016%_
                                       _%hd211920212006%_
                                       _%hd211917211996%_
                                       _%hd211914211986%_
                                       _%hd211911211976%_
                                       _%hd211908211966%_)
                                      (_%g211891211945%_ _%g211892211949%_))))
                              (_%g211891211945%_ _%g211892211949%_))))
                      (_%g211891211945%_ _%g211892211949%_))))
              (_%g211891211945%_ _%g211892211949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g211891211945%_
                                               _%g211892211949%_))))
                                      (_%g211891211945%_ _%g211892211949%_))))
                              (_%g211891211945%_ _%g211892211949%_))))
                      (_%g211891211945%_ _%g211892211949%_))))
              (_%g211891211945%_ _%g211892211949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g211891211945%_
                                               _%g211892211949%_))))
                                      (_%g211891211945%_ _%g211892211949%_))))
                              (_%g211891211945%_ _%g211892211949%_))))
                      (_%g211891211945%_ _%g211892211949%_)))))
          (_%g211890212126%_ _%$stx211887%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx212130%_)
        (let* ((_%g212134212148%_
                (lambda (_%g212135212144%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212135212144%_))))
               (_%g212133212189%_
                (lambda (_%g212135212152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212135212152%_))
                      (let ((_%e212137212155%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212135212152%_))))
                        (let ((_%hd212138212159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212137212155%_)))
                              (_%tl212139212162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212137212155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212139212162%_))
                              (let ((_%e212140212165%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212139212162%_))))
                                (let ((_%hd212141212169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212140212165%_)))
                                      (_%tl212142212172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212140212165%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212142212172%_))
                                      ((lambda (_%L212175%_)
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
                                                           (cons _%L212175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212141212169%_)
                                      (_%g212134212148%_ _%g212135212152%_))))
                              (_%g212134212148%_ _%g212135212152%_))))
                      (_%g212134212148%_ _%g212135212152%_)))))
          (_%g212133212189%_ _%$stx212130%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx212193%_)
        (let* ((_%g212197212211%_
                (lambda (_%g212198212207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212198212207%_))))
               (_%g212196212252%_
                (lambda (_%g212198212215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212198212215%_))
                      (let ((_%e212200212218%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212198212215%_))))
                        (let ((_%hd212201212222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212200212218%_)))
                              (_%tl212202212225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212200212218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212202212225%_))
                              (let ((_%e212203212228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212202212225%_))))
                                (let ((_%hd212204212232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212203212228%_)))
                                      (_%tl212205212235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212203212228%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212205212235%_))
                                      ((lambda (_%L212238%_)
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
                                                           (cons _%L212238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212204212232%_)
                                      (_%g212197212211%_ _%g212198212215%_))))
                              (_%g212197212211%_ _%g212198212215%_))))
                      (_%g212197212211%_ _%g212198212215%_)))))
          (_%g212196212252%_ _%$stx212193%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx212256%_)
        (let* ((_%g212260212282%_
                (lambda (_%g212261212278%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212261212278%_))))
               (_%g212259212351%_
                (lambda (_%g212261212286%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212261212286%_))
                      (let ((_%e212265212289%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212261212286%_))))
                        (let ((_%hd212266212293%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212265212289%_)))
                              (_%tl212267212296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212265212289%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212267212296%_))
                              (let ((_%e212268212299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212267212296%_))))
                                (let ((_%hd212269212303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212268212299%_)))
                                      (_%tl212270212306%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212268212299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212270212306%_))
                                      (let ((_%e212271212309%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212270212306%_))))
                                        (let ((_%hd212272212313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212271212309%_)))
                                              (_%tl212273212316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212271212309%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212273212316%_))
                                              (let ((_%e212274212319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212273212316%_))))
                                                (let ((_%hd212275212323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212274212319%_)))
                                                      (_%tl212276212326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212274212319%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212276212326%_))
                                                      ((lambda (_%L212329%_
                                                                _%L212331%_
                                                                _%L212332%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L212332%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L212331%_ '()))
                                   (cons _%L212329%_ '())))))
               _%hd212275212323%_
               _%hd212272212313%_
               _%hd212269212303%_)
              (_%g212260212282%_ _%g212261212286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212260212282%_
                                               _%g212261212286%_))))
                                      (_%g212260212282%_ _%g212261212286%_))))
                              (_%g212260212282%_ _%g212261212286%_))))
                      (_%g212260212282%_ _%g212261212286%_)))))
          (_%g212259212351%_ _%$stx212256%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx212355%_)
        (let* ((_%g212359212381%_
                (lambda (_%g212360212377%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212360212377%_))))
               (_%g212358212450%_
                (lambda (_%g212360212385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212360212385%_))
                      (let ((_%e212364212388%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212360212385%_))))
                        (let ((_%hd212365212392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212364212388%_)))
                              (_%tl212366212395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212364212388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212366212395%_))
                              (let ((_%e212367212398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212366212395%_))))
                                (let ((_%hd212368212402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212367212398%_)))
                                      (_%tl212369212405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212367212398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212369212405%_))
                                      (let ((_%e212370212408%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212369212405%_))))
                                        (let ((_%hd212371212412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212370212408%_)))
                                              (_%tl212372212415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212370212408%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212372212415%_))
                                              (let ((_%e212373212418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212372212415%_))))
                                                (let ((_%hd212374212422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212373212418%_)))
                                                      (_%tl212375212425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212373212418%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212375212425%_))
                                                      ((lambda (_%L212428%_
                                                                _%L212430%_
                                                                _%L212431%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L212431%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L212430%_ '()))
                                   (cons _%L212428%_ '())))))
               _%hd212374212422%_
               _%hd212371212412%_
               _%hd212368212402%_)
              (_%g212359212381%_ _%g212360212385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212359212381%_
                                               _%g212360212385%_))))
                                      (_%g212359212381%_ _%g212360212385%_))))
                              (_%g212359212381%_ _%g212360212385%_))))
                      (_%g212359212381%_ _%g212360212385%_)))))
          (_%g212358212450%_ _%$stx212355%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx212454%_)
        (let* ((_%g212458212472%_
                (lambda (_%g212459212468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212459212468%_))))
               (_%g212457212513%_
                (lambda (_%g212459212476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212459212476%_))
                      (let ((_%e212461212479%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212459212476%_))))
                        (let ((_%hd212462212483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212461212479%_)))
                              (_%tl212463212486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212461212479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212463212486%_))
                              (let ((_%e212464212489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212463212486%_))))
                                (let ((_%hd212465212493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212464212489%_)))
                                      (_%tl212466212496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212464212489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212466212496%_))
                                      ((lambda (_%L212499%_)
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
                                                           (cons _%L212499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212465212493%_)
                                      (_%g212458212472%_ _%g212459212476%_))))
                              (_%g212458212472%_ _%g212459212476%_))))
                      (_%g212458212472%_ _%g212459212476%_)))))
          (_%g212457212513%_ _%$stx212454%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx212517%_)
        (let* ((_%g212521212539%_
                (lambda (_%g212522212535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212522212535%_))))
               (_%g212520212594%_
                (lambda (_%g212522212543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212522212543%_))
                      (let ((_%e212525212546%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212522212543%_))))
                        (let ((_%hd212526212550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212525212546%_)))
                              (_%tl212527212553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212525212546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212527212553%_))
                              (let ((_%e212528212556%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212527212553%_))))
                                (let ((_%hd212529212560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212528212556%_)))
                                      (_%tl212530212563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212528212556%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212530212563%_))
                                      (let ((_%e212531212566%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212530212563%_))))
                                        (let ((_%hd212532212570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212531212566%_)))
                                              (_%tl212533212573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212531212566%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212533212573%_))
                                              ((lambda (_%L212576%_
                                                        _%L212578%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L212578%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212576%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd212532212570%_
                                               _%hd212529212560%_)
                                              (_%g212521212539%_
                                               _%g212522212543%_))))
                                      (_%g212521212539%_ _%g212522212543%_))))
                              (_%g212521212539%_ _%g212522212543%_))))
                      (_%g212521212539%_ _%g212522212543%_)))))
          (_%g212520212594%_ _%$stx212517%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx212598%_)
        (let* ((_%__stx216940216941%_ _%$stx212598%_)
               (_%g212605212666%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx216940216941%_)))))
          (let ((_%__kont216943216944%_
                 (lambda (_%L212904%_ _%L212906%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212906%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L212904%_ '()))
                                     '())))))
                (_%__kont216945216946%_
                 (lambda (_%L212843%_ _%L212845%_ _%L212846%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212846%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L212845%_ '()))
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
                                 (cons _%L212843%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont216947216948%_
                 (lambda (_%L212767%_ _%L212769%_)
                   (cons _%L212769%_ (cons _%L212767%_ (cons '#f '())))))
                (_%__kont216949216950%_
                 (lambda (_%L212717%_ _%L212719%_ _%L212720%_)
                   (cons _%L212720%_
                         (cons _%L212719%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L212717%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx216940216941%_))
                (let ((_%e212609212874%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx216940216941%_))))
                  (let ((_%tl212611212881%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212609212874%_)))
                        (_%hd212610212878%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212609212874%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl212611212881%_))
                        (let ((_%e212612212884%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl212611212881%_))))
                          (let ((_%tl212614212891%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212612212884%_)))
                                (_%hd212613212888%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212612212884%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl212614212891%_))
                                (let ((_%e212615212894%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl212614212891%_))))
                                  (let ((_%tl212617212901%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212615212894%_)))
                                        (_%hd212616212898%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212615212894%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212617212901%_))
                                        (_%__kont216943216944%_
                                         _%hd212616212898%_
                                         _%hd212613212888%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl212617212901%_))
                                            (let ((_%e212630212819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl212617212901%_))))
                                              (let ((_%tl212632212826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e212630212819%_)))
                                                    (_%hd212631212823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e212630212819%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd212631212823%_))
                                                    (let ((_%e212633212829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd212631212823%_))))
                                                      (if (equal? _%e212633212829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl212632212826%_))
                      (let ((_%e212634212833%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl212632212826%_))))
                        (let ((_%tl212636212840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212634212833%_)))
                              (_%hd212635212837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212634212833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl212636212840%_))
                              (_%__kont216945216946%_
                               _%hd212635212837%_
                               _%hd212616212898%_
                               _%hd212613212888%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd212616212898%_))
                                  (let ((_%e212657212703%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd212616212898%_))))
                                    (declare (not safe))
                                    (_%g212605212666%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g212605212666%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd212616212898%_))
                          (let ((_%e212657212703%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd212616212898%_))))
                            (if (equal? _%e212657212703%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl212632212826%_))
                                    (_%__kont216949216950%_
                                     _%hd212631212823%_
                                     _%hd212613212888%_
                                     _%hd212610212878%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g212605212666%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g212605212666%_))))
                          (let () (declare (not safe)) (_%g212605212666%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd212616212898%_))
                      (let ((_%e212657212703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd212616212898%_))))
                        (if (equal? _%e212657212703%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl212632212826%_))
                                (_%__kont216949216950%_
                                 _%hd212631212823%_
                                 _%hd212613212888%_
                                 _%hd212610212878%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g212605212666%_)))
                            (let () (declare (not safe)) (_%g212605212666%_))))
                      (let () (declare (not safe)) (_%g212605212666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd212616212898%_))
                                                        (let ((_%e212657212703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd212616212898%_))))
                  (if (equal? _%e212657212703%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl212632212826%_))
                          (_%__kont216949216950%_
                           _%hd212631212823%_
                           _%hd212613212888%_
                           _%hd212610212878%_)
                          (let () (declare (not safe)) (_%g212605212666%_)))
                      (let () (declare (not safe)) (_%g212605212666%_))))
                (let () (declare (not safe)) (_%g212605212666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd212616212898%_))
                                                (let ((_%e212657212703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd212616212898%_))))
                                                  (declare (not safe))
                                                  (_%g212605212666%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g212605212666%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl212614212891%_))
                                    (_%__kont216947216948%_
                                     _%hd212613212888%_
                                     _%hd212610212878%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g212605212666%_))))))
                        (let () (declare (not safe)) (_%g212605212666%_)))))
                (let () (declare (not safe)) (_%g212605212666%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx212925%_)
        (let* ((_%g212929212958%_
                (lambda (_%g212930212954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212930212954%_))))
               (_%g212928213067%_
                (lambda (_%g212930212962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212930212962%_))
                      (let ((_%e212932212965%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212930212962%_))))
                        (let ((_%hd212933212969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212932212965%_)))
                              (_%tl212934212972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212932212965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl212934212972%_))
                              (let ((_g217570_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl212934212972%_
                                        '0))))
                                (begin
                                  (let ((_g217571_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217570_)
                                               (##values-length _g217570_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217571_ 2)))
                                        (error "Context expects 2 values"
                                               _g217571_)))
                                  (let ((_%target212935212975%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217570_ 0)))
                                        (_%tl212937212978%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217570_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212937212978%_))
                                        (letrec ((_%loop212938212981%_
                                                  (lambda (_%hd212936212985%_
                                                           _%clause212942212988%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd212936212985%_))
                                                        (let ((_%e212939212991%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd212936212985%_))))
                  (let ((_%lp-hd212940212995%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212939212991%_)))
                        (_%lp-tl212941212998%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212939212991%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd212940212995%_))
                        (let ((_g217572_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd212940212995%_
                                  '0))))
                          (begin
                            (let ((_g217573_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g217572_)
                                         (##values-length _g217572_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g217573_ 2)))
                                  (error "Context expects 2 values"
                                         _g217573_)))
                            (let ((_%target212944213001%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g217572_ 0)))
                                  (_%tl212946213004%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g217572_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212946213004%_))
                                  (letrec ((_%loop212947213007%_
                                            (lambda (_%hd212945213011%_
                                                     _%clause212951213014%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd212945213011%_))
                                                  (let ((_%e212948213017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd212945213011%_))))
                                                    (let ((_%lp-hd212949213021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e212948213017%_)))
                                                          (_%lp-tl212950213024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e212948213017%_))))
                                                      (_%loop212947213007%_
                                                       _%lp-tl212950213024%_
                                                       (cons _%lp-hd212949213021%_
                                                             _%clause212951213014%_))))
                                                  (let ((_%clause212952213027%_
                                                         (reverse _%clause212951213014%_)))
                                                    (_%loop212938212981%_
                                                     _%lp-tl212941212998%_
                                                     (cons _%clause212952213027%_
                                                           _%clause212942212988%_)))))))
                                    (_%loop212947213007%_
                                     _%target212944213001%_
                                     '()))
                                  (_%g212929212958%_ _%g212930212962%_)))))
                        (_%g212929212958%_ _%g212930212962%_))))
                (let ((_%clause212943213031%_
                       (reverse _%clause212942212988%_)))
                  ((lambda (_%L213035%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp217574
                                              (lambda (_%g213050213055%_
                                                       _%g213051213058%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp217575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g213052213061%_ _%g213053213064%_)
                             (cons _%g213052213061%_ _%g213053213064%_))))
                      (declare (not safe))
                      (__foldr1 __tmp217575 '() _%g213050213055%_)))
              _%g213051213058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp217574
                                          '()
                                          _%L213035%_)))
                                 '())))
                   _%clause212943213031%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop212938212981%_
                                           _%target212935212975%_
                                           '()))
                                        (_%g212929212958%_
                                         _%g212930212962%_)))))
                              (_%g212929212958%_ _%g212930212962%_))))
                      (_%g212929212958%_ _%g212930212962%_)))))
          (_%g212928213067%_ _%$stx212925%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx213073%_)
        (let* ((_%g213077213095%_
                (lambda (_%g213078213091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213078213091%_))))
               (_%g213076213150%_
                (lambda (_%g213078213099%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213078213099%_))
                      (let ((_%e213081213102%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213078213099%_))))
                        (let ((_%hd213082213106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213081213102%_)))
                              (_%tl213083213109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213081213102%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213083213109%_))
                              (let ((_%e213084213112%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213083213109%_))))
                                (let ((_%hd213085213116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213084213112%_)))
                                      (_%tl213086213119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213084213112%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213086213119%_))
                                      (let ((_%e213087213122%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213086213119%_))))
                                        (let ((_%hd213088213126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213087213122%_)))
                                              (_%tl213089213129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213087213122%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213089213129%_))
                                              ((lambda (_%L213132%_
                                                        _%L213134%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213134%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L213132%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213088213126%_
                                               _%hd213085213116%_)
                                              (_%g213077213095%_
                                               _%g213078213099%_))))
                                      (_%g213077213095%_ _%g213078213099%_))))
                              (_%g213077213095%_ _%g213078213099%_))))
                      (_%g213077213095%_ _%g213078213099%_)))))
          (_%g213076213150%_ _%$stx213073%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx213154%_)
        (let* ((_%g213158213176%_
                (lambda (_%g213159213172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213159213172%_))))
               (_%g213157213231%_
                (lambda (_%g213159213180%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213159213180%_))
                      (let ((_%e213162213183%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213159213180%_))))
                        (let ((_%hd213163213187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213162213183%_)))
                              (_%tl213164213190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213162213183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213164213190%_))
                              (let ((_%e213165213193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213164213190%_))))
                                (let ((_%hd213166213197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213165213193%_)))
                                      (_%tl213167213200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213165213193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213167213200%_))
                                      (let ((_%e213168213203%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213167213200%_))))
                                        (let ((_%hd213169213207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213168213203%_)))
                                              (_%tl213170213210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213168213203%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213170213210%_))
                                              ((lambda (_%L213213%_
                                                        _%L213215%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213215%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L213213%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213169213207%_
                                               _%hd213166213197%_)
                                              (_%g213158213176%_
                                               _%g213159213180%_))))
                                      (_%g213158213176%_ _%g213159213180%_))))
                              (_%g213158213176%_ _%g213159213180%_))))
                      (_%g213158213176%_ _%g213159213180%_)))))
          (_%g213157213231%_ _%$stx213154%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx213235%_)
        (let* ((_%g213239213268%_
                (lambda (_%g213240213264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213240213264%_))))
               (_%g213238213368%_
                (lambda (_%g213240213272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213240213272%_))
                      (let ((_%e213243213275%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213240213272%_))))
                        (let ((_%hd213244213279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213243213275%_)))
                              (_%tl213245213282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213243213275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213245213282%_))
                              (let ((_g217576_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl213245213282%_
                                        '0))))
                                (begin
                                  (let ((_g217577_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217576_)
                                               (##values-length _g217576_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217577_ 2)))
                                        (error "Context expects 2 values"
                                               _g217577_)))
                                  (let ((_%target213246213285%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217576_ 0)))
                                        (_%tl213248213288%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217576_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213248213288%_))
                                        (letrec ((_%loop213249213291%_
                                                  (lambda (_%hd213247213295%_
                                                           _%rule213253213298%_
                                                           _%proc213254213300%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd213247213295%_))
                                                        (let ((_%e213250213303%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd213247213295%_))))
                  (let ((_%lp-hd213251213307%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213250213303%_)))
                        (_%lp-tl213252213310%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213250213303%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd213251213307%_))
                        (let ((_%e213257213313%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd213251213307%_))))
                          (let ((_%hd213258213317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e213257213313%_)))
                                (_%tl213259213320%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e213257213313%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl213259213320%_))
                                (let ((_%e213260213323%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl213259213320%_))))
                                  (let ((_%hd213261213327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e213260213323%_)))
                                        (_%tl213262213330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e213260213323%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213262213330%_))
                                        (_%loop213249213291%_
                                         _%lp-tl213252213310%_
                                         (cons _%hd213261213327%_
                                               _%rule213253213298%_)
                                         (cons _%hd213258213317%_
                                               _%proc213254213300%_))
                                        (_%g213239213268%_
                                         _%g213240213272%_))))
                                (_%g213239213268%_ _%g213240213272%_))))
                        (_%g213239213268%_ _%g213240213272%_))))
                (let ((_%rule213255213333%_ (reverse _%rule213253213298%_))
                      (_%proc213256213336%_ (reverse _%proc213254213300%_)))
                  ((lambda (_%L213339%_ _%L213341%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L213339%_
                                _%L213341%_))
                             (let ((__tmp217578
                                    (lambda (_%g213356213360%_
                                             _%g213357213363%_
                                             _%g213358213365%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g213357213363%_
                                                        (cons _%g213356213360%_
                                                              '())))
                                            _%g213358213365%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp217578
                                '()
                                _%L213339%_
                                _%L213341%_)))))
                   _%rule213255213333%_
                   _%proc213256213336%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop213249213291%_
                                           _%target213246213285%_
                                           '()
                                           '()))
                                        (_%g213239213268%_
                                         _%g213240213272%_)))))
                              (_%g213239213268%_ _%g213240213272%_))))
                      (_%g213239213268%_ _%g213240213272%_)))))
          (_%g213238213368%_ _%$stx213235%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx213373%_)
        (let* ((_%g213377213395%_
                (lambda (_%g213378213391%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213378213391%_))))
               (_%g213376213450%_
                (lambda (_%g213378213399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213378213399%_))
                      (let ((_%e213381213402%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213378213399%_))))
                        (let ((_%hd213382213406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213381213402%_)))
                              (_%tl213383213409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213381213402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213383213409%_))
                              (let ((_%e213384213412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213383213409%_))))
                                (let ((_%hd213385213416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213384213412%_)))
                                      (_%tl213386213419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213384213412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213386213419%_))
                                      (let ((_%e213387213422%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213386213419%_))))
                                        (let ((_%hd213388213426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213387213422%_)))
                                              (_%tl213389213429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213387213422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213389213429%_))
                                              ((lambda (_%L213432%_
                                                        _%L213434%_)
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
                                                   (cons _%L213434%_ '()))
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
                 (cons _%L213432%_ '())))
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
                                   (cons _%L213434%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213388213426%_
                                               _%hd213385213416%_)
                                              (_%g213377213395%_
                                               _%g213378213399%_))))
                                      (_%g213377213395%_ _%g213378213399%_))))
                              (_%g213377213395%_ _%g213378213399%_))))
                      (_%g213377213395%_ _%g213378213399%_)))))
          (_%g213376213450%_ _%$stx213373%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx213454%_)
        (let* ((_%__stx217058217059%_ _%$stx213454%_)
               (_%g213459213484%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217058217059%_)))))
          (let ((_%__kont217061217062%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont217063217064%_
                 (lambda (_%L213531%_ _%L213533%_ _%L213534%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L213534%_ (cons _%L213533%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L213531%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217058217059%_))
                (let ((_%e213461213560%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217058217059%_))))
                  (let ((_%tl213463213567%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213461213560%_)))
                        (_%hd213462213564%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213461213560%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl213463213567%_))
                        (_%__kont217061217062%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl213463213567%_))
                            (let ((_%e213470213501%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl213463213567%_))))
                              (let ((_%tl213472213508%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e213470213501%_)))
                                    (_%hd213471213505%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e213470213501%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd213471213505%_))
                                    (let ((_%e213473213511%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd213471213505%_))))
                                      (let ((_%tl213475213518%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e213473213511%_)))
                                            (_%hd213474213515%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e213473213511%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl213475213518%_))
                                            (let ((_%e213476213521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl213475213518%_))))
                                              (let ((_%tl213478213528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e213476213521%_)))
                                                    (_%hd213477213525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e213476213521%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl213478213528%_))
                                                    (_%__kont217063217064%_
                                                     _%tl213472213508%_
                                                     _%hd213477213525%_
                                                     _%hd213474213515%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g213459213484%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g213459213484%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g213459213484%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g213459213484%_))))))
                (let () (declare (not safe)) (_%g213459213484%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx213578%_)
        (let* ((_%__stx217102217103%_ _%$stx213578%_)
               (_%g213583213614%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217102217103%_)))))
          (let ((_%__kont217105217106%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont217107217108%_
                 (lambda (_%L213681%_ _%L213683%_ _%L213684%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L213684%_
                                           (let ((__tmp217579
                                                  (lambda (_%g213704213707%_
                                                           _%g213705213710%_)
                                                    (cons _%g213704213707%_
                                                          _%g213705213710%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp217579
                                              '()
                                              _%L213683%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L213681%_)
                                     '()))))))
            (let ((_%__match217145217146%_
                   (lambda (_%e213591213621%_
                            _%hd213592213625%_
                            _%tl213593213628%_
                            _%e213594213631%_
                            _%hd213595213635%_
                            _%tl213596213638%_
                            _%e213597213641%_
                            _%hd213598213645%_
                            _%tl213599213648%_
                            _%__splice217109217110%_
                            _%target213600213651%_
                            _%tl213602213654%_)
                     (letrec ((_%loop213603213657%_
                               (lambda (_%hd213601213661%_ _%sig213607213664%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd213601213661%_))
                                     (let ((_%e213604213667%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd213601213661%_))))
                                       (let ((_%lp-tl213606213674%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e213604213667%_)))
                                             (_%lp-hd213605213671%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e213604213667%_))))
                                         (_%loop213603213657%_
                                          _%lp-tl213606213674%_
                                          (cons _%lp-hd213605213671%_
                                                _%sig213607213664%_))))
                                     (let ((_%sig213608213677%_
                                            (reverse _%sig213607213664%_)))
                                       (_%__kont217107217108%_
                                        _%tl213596213638%_
                                        _%sig213608213677%_
                                        _%hd213598213645%_))))))
                       (_%loop213603213657%_ _%target213600213651%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217102217103%_))
                  (let ((_%e213585213720%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217102217103%_))))
                    (let ((_%tl213587213727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e213585213720%_)))
                          (_%hd213586213724%_
                           (let ()
                             (declare (not safe))
                             (##car _%e213585213720%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl213587213727%_))
                          (_%__kont217105217106%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213587213727%_))
                              (let ((_%e213594213631%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213587213727%_))))
                                (let ((_%tl213596213638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213594213631%_)))
                                      (_%hd213595213635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213594213631%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd213595213635%_))
                                      (let ((_%e213597213641%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd213595213635%_))))
                                        (let ((_%tl213599213648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213597213641%_)))
                                              (_%hd213598213645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213597213641%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl213599213648%_))
                                              (let ((_%__splice217109217110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl213599213648%_
                                                        '0))))
                                                (let ((_%tl213602213654%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217109217110%_
                                                          '1)))
                                                      (_%target213600213651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217109217110%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl213602213654%_))
                                                      (_%__match217145217146%_
                                                       _%e213585213720%_
                                                       _%hd213586213724%_
                                                       _%tl213587213727%_
                                                       _%e213594213631%_
                                                       _%hd213595213635%_
                                                       _%tl213596213638%_
                                                       _%e213597213641%_
                                                       _%hd213598213645%_
                                                       _%tl213599213648%_
                                                       _%__splice217109217110%_
                                                       _%target213600213651%_
                                                       _%tl213602213654%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g213583213614%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g213583213614%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g213583213614%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g213583213614%_))))))
                  (let () (declare (not safe)) (_%g213583213614%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx213739%_)
        (let* ((_%__stx217148217149%_ _%$stx213739%_)
               (_%g213744213791%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217148217149%_)))))
          (let ((_%__kont217151217152%_
                 (lambda (_%L213953%_ _%L213955%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L213955%_
                               (let ((__tmp217580
                                      (lambda (_%g213975213978%_
                                               _%g213976213981%_)
                                        (cons _%g213975213978%_
                                              _%g213976213981%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp217580 '() _%L213953%_))))))
                (_%__kont217155217156%_
                 (lambda (_%L213848%_ _%L213850%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L213850%_
                               (let ((__tmp217581
                                      (lambda (_%g213867213870%_
                                               _%g213868213873%_)
                                        (cons _%g213867213870%_
                                              _%g213868213873%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp217581 '() _%L213848%_)))))))
            (let* ((_%__match217215217216%_
                    (lambda (_%e213771213798%_
                             _%hd213772213802%_
                             _%tl213773213805%_
                             _%e213774213808%_
                             _%hd213775213812%_
                             _%tl213776213815%_
                             _%__splice217157217158%_
                             _%target213777213818%_
                             _%tl213779213821%_)
                      (letrec ((_%loop213780213824%_
                                (lambda (_%hd213778213828%_
                                         _%sig213784213831%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd213778213828%_))
                                      (let ((_%e213781213834%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd213778213828%_))))
                                        (let ((_%lp-tl213783213841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213781213834%_)))
                                              (_%lp-hd213782213838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213781213834%_))))
                                          (_%loop213780213824%_
                                           _%lp-tl213783213841%_
                                           (cons _%lp-hd213782213838%_
                                                 _%sig213784213831%_))))
                                      (let ((_%sig213785213844%_
                                             (reverse _%sig213784213831%_)))
                                        (_%__kont217155217156%_
                                         _%sig213785213844%_
                                         _%hd213775213812%_))))))
                        (_%loop213780213824%_ _%target213777213818%_ '()))))
                   (_%__match217207217208%_
                    (lambda (_%e213771213798%_
                             _%hd213772213802%_
                             _%tl213773213805%_
                             _%e213774213808%_
                             _%hd213775213812%_
                             _%tl213776213815%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl213776213815%_))
                          (let ((_%__splice217157217158%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl213776213815%_
                                    '0))))
                            (let ((_%tl213779213821%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice217157217158%_
                                      '1)))
                                  (_%target213777213818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice217157217158%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl213779213821%_))
                                  (_%__match217215217216%_
                                   _%e213771213798%_
                                   _%hd213772213802%_
                                   _%tl213773213805%_
                                   _%e213774213808%_
                                   _%hd213775213812%_
                                   _%tl213776213815%_
                                   _%__splice217157217158%_
                                   _%target213777213818%_
                                   _%tl213779213821%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g213744213791%_)))))
                          (let () (declare (not safe)) (_%g213744213791%_)))))
                   (_%__match217195217196%_
                    (lambda (_%e213748213883%_
                             _%hd213749213887%_
                             _%tl213750213890%_
                             _%e213751213893%_
                             _%hd213752213897%_
                             _%tl213753213900%_
                             _%e213754213903%_
                             _%hd213755213907%_
                             _%tl213756213910%_
                             _%e213757213913%_
                             _%hd213758213917%_
                             _%tl213759213920%_
                             _%__splice217153217154%_
                             _%target213760213923%_
                             _%tl213762213926%_)
                      (letrec ((_%loop213763213929%_
                                (lambda (_%hd213761213933%_
                                         _%sig213767213936%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd213761213933%_))
                                      (let ((_%e213764213939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd213761213933%_))))
                                        (let ((_%lp-tl213766213946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213764213939%_)))
                                              (_%lp-hd213765213943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213764213939%_))))
                                          (_%loop213763213929%_
                                           _%lp-tl213766213946%_
                                           (cons _%lp-hd213765213943%_
                                                 _%sig213767213936%_))))
                                      (let ((_%sig213768213949%_
                                             (reverse _%sig213767213936%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl213756213910%_))
                                            (_%__kont217151217152%_
                                             _%sig213768213949%_
                                             _%hd213752213897%_)
                                            (_%__match217207217208%_
                                             _%e213748213883%_
                                             _%hd213749213887%_
                                             _%tl213750213890%_
                                             _%e213751213893%_
                                             _%hd213752213897%_
                                             _%tl213753213900%_)))))))
                        (_%loop213763213929%_ _%target213760213923%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217148217149%_))
                  (let ((_%e213748213883%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217148217149%_))))
                    (let ((_%tl213750213890%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e213748213883%_)))
                          (_%hd213749213887%_
                           (let ()
                             (declare (not safe))
                             (##car _%e213748213883%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl213750213890%_))
                          (let ((_%e213751213893%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl213750213890%_))))
                            (let ((_%tl213753213900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e213751213893%_)))
                                  (_%hd213752213897%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e213751213893%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl213753213900%_))
                                  (let ((_%e213754213903%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl213753213900%_))))
                                    (let ((_%tl213756213910%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e213754213903%_)))
                                          (_%hd213755213907%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e213754213903%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd213755213907%_))
                                          (let ((_%e213757213913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd213755213907%_))))
                                            (let ((_%tl213759213920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e213757213913%_)))
                                                  (_%hd213758213917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e213757213913%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd213758213917%_))
                                                  (if (let ((__tmp217582
                                                             |gxc[1]#_g217583_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp217582
                                                         _%hd213758213917%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl213759213920%_))
                                                          (let ((_%__splice217153217154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl213759213920%_
                            '0))))
                    (let ((_%tl213762213926%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217153217154%_ '1)))
                          (_%target213760213923%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217153217154%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl213762213926%_))
                          (_%__match217195217196%_
                           _%e213748213883%_
                           _%hd213749213887%_
                           _%tl213750213890%_
                           _%e213751213893%_
                           _%hd213752213897%_
                           _%tl213753213900%_
                           _%e213754213903%_
                           _%hd213755213907%_
                           _%tl213756213910%_
                           _%e213757213913%_
                           _%hd213758213917%_
                           _%tl213759213920%_
                           _%__splice217153217154%_
                           _%target213760213923%_
                           _%tl213762213926%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213753213900%_))
                              (let ((_%__splice217157217158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl213753213900%_
                                        '0))))
                                (let ((_%tl213779213821%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice217157217158%_
                                          '1)))
                                      (_%target213777213818%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice217157217158%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl213779213821%_))
                                      (_%__match217215217216%_
                                       _%e213748213883%_
                                       _%hd213749213887%_
                                       _%tl213750213890%_
                                       _%e213751213893%_
                                       _%hd213752213897%_
                                       _%tl213753213900%_
                                       _%__splice217157217158%_
                                       _%target213777213818%_
                                       _%tl213779213821%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g213744213791%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g213744213791%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl213753213900%_))
                      (let ((_%__splice217157217158%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl213753213900%_
                                '0))))
                        (let ((_%tl213779213821%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217157217158%_ '1)))
                              (_%target213777213818%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217157217158%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl213779213821%_))
                              (_%__match217215217216%_
                               _%e213748213883%_
                               _%hd213749213887%_
                               _%tl213750213890%_
                               _%e213751213893%_
                               _%hd213752213897%_
                               _%tl213753213900%_
                               _%__splice217157217158%_
                               _%target213777213818%_
                               _%tl213779213821%_)
                              (let ()
                                (declare (not safe))
                                (_%g213744213791%_)))))
                      (let () (declare (not safe)) (_%g213744213791%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl213753213900%_))
                  (let ((_%__splice217157217158%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl213753213900%_
                            '0))))
                    (let ((_%tl213779213821%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217157217158%_ '1)))
                          (_%target213777213818%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217157217158%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl213779213821%_))
                          (_%__match217215217216%_
                           _%e213748213883%_
                           _%hd213749213887%_
                           _%tl213750213890%_
                           _%e213751213893%_
                           _%hd213752213897%_
                           _%tl213753213900%_
                           _%__splice217157217158%_
                           _%target213777213818%_
                           _%tl213779213821%_)
                          (let () (declare (not safe)) (_%g213744213791%_)))))
                  (let () (declare (not safe)) (_%g213744213791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl213753213900%_))
                                                      (let ((_%__splice217157217158%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl213753213900%_
                        '0))))
                (let ((_%tl213779213821%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice217157217158%_ '1)))
                      (_%target213777213818%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice217157217158%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl213779213821%_))
                      (_%__match217215217216%_
                       _%e213748213883%_
                       _%hd213749213887%_
                       _%tl213750213890%_
                       _%e213751213893%_
                       _%hd213752213897%_
                       _%tl213753213900%_
                       _%__splice217157217158%_
                       _%target213777213818%_
                       _%tl213779213821%_)
                      (let () (declare (not safe)) (_%g213744213791%_)))))
              (let () (declare (not safe)) (_%g213744213791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl213753213900%_))
                                              (let ((_%__splice217157217158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl213753213900%_
                                                        '0))))
                                                (let ((_%tl213779213821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217157217158%_
                                                          '1)))
                                                      (_%target213777213818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217157217158%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl213779213821%_))
                                                      (_%__match217215217216%_
                                                       _%e213748213883%_
                                                       _%hd213749213887%_
                                                       _%tl213750213890%_
                                                       _%e213751213893%_
                                                       _%hd213752213897%_
                                                       _%tl213753213900%_
                                                       _%__splice217157217158%_
                                                       _%target213777213818%_
                                                       _%tl213779213821%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g213744213791%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g213744213791%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl213753213900%_))
                                      (let ((_%__splice217157217158%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl213753213900%_
                                                '0))))
                                        (let ((_%tl213779213821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217157217158%_
                                                  '1)))
                                              (_%target213777213818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217157217158%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213779213821%_))
                                              (_%__match217215217216%_
                                               _%e213748213883%_
                                               _%hd213749213887%_
                                               _%tl213750213890%_
                                               _%e213751213893%_
                                               _%hd213752213897%_
                                               _%tl213753213900%_
                                               _%__splice217157217158%_
                                               _%target213777213818%_
                                               _%tl213779213821%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g213744213791%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g213744213791%_))))))
                          (let () (declare (not safe)) (_%g213744213791%_)))))
                  (let () (declare (not safe)) (_%g213744213791%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx215138%_ _%id215140%_)
        (let ((_%proc215144%_
               (let ((__tmp217584
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id215140%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp217584))))
          (if (procedure? _%proc215144%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx215138%_
                 _%id215140%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx215129%_ _%id215131%_)
        (let ((_%klass215135%_
               (let ((__tmp217585
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id215131%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp217585))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass215135%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx215129%_
                 _%id215131%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx214379%_ _%proc214381%_ _%sig214382%_)
        (letrec ((_%signature-arity214384%_
                  (lambda (_%args215061%_)
                    (let _%loop215064%_ ((_%rest215067%_ _%args215061%_)
                                         (_%count215069%_ '0))
                      (let* ((_%rest215070215081%_ _%rest215067%_)
                             (_%E215074215087%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest215070215081%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K215077215118%_
                               (lambda (_%rest215115%_)
                                 (_%loop215064%_
                                  _%rest215115%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count215069%_ '1)))))
                              (_%K215076215107%_ (lambda () _%count215069%_))
                              (_%K215075215095%_
                               (lambda () (cons _%count215069%_ '()))))
                          (let ((_%try-match215072215111%_
                                 (lambda ()
                                   (if (null? _%rest215070215081%_)
                                       (_%K215076215107%_)
                                       (_%K215075215095%_)))))
                            (if (pair? _%rest215070215081%_)
                                (let* ((_%tl215079215122%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest215070215081%_)))
                                       (_%rest215126%_ _%tl215079215122%_))
                                  (_%K215077215118%_ _%rest215126%_))
                                (_%try-match215072215111%_))))))))
                 (_%make-signature214386%_
                  (lambda (_%args214943%_
                           _%return214945%_
                           _%effect214946%_
                           _%unchecked214947%_)
                    (let ((__tmp217586
                           (lambda (_%g214948214950%_)
                             (|gxc[1]#verify-class!|
                              _%ctx214379%_
                              _%g214948214950%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp217586 _%args214943%_))
                    (|gxc[1]#verify-class!| _%ctx214379%_ _%return214945%_)
                    (if _%unchecked214947%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx214379%_
                         _%unchecked214947%_)
                        '#!void)
                    (let ((_%arity214954%_
                           (_%signature-arity214384%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args214943%_)))))
                      (if _%effect214946%_
                          (let ((_%effect214957%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect214946%_))))
                            (if (and (list? _%effect214957%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect214957%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx214379%_
                                   _%proc214381%_
                                   _%effect214957%_))))
                          '#!void)
                      (cons _%arity214954%_
                            (cons (let* ((_%g214960214983%_
                                          (lambda (_%g214961214979%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g214961214979%_))))
                                         (_%g214959215057%_
                                          (lambda (_%g214961214987%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g214961214987%_))
                                                (let ((_%e214966214990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g214961214987%_))))
                                                  (let ((_%hd214967214994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214966214990%_)))
                                                        (_%tl214968214997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214966214990%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl214968214997%_))
                                                        (let ((_%e214969215000%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl214968214997%_))))
                  (let ((_%hd214970215004%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214969215000%_)))
                        (_%tl214971215007%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214969215000%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl214971215007%_))
                        (let ((_%e214972215010%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214971215007%_))))
                          (let ((_%hd214973215014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214972215010%_)))
                                (_%tl214974215017%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214972215010%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214974215017%_))
                                (let ((_%e214975215020%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214974215017%_))))
                                  (let ((_%hd214976215024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214975215020%_)))
                                        (_%tl214977215027%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214975215020%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214977215027%_))
                                        ((lambda (_%L215030%_
                                                  _%L215032%_
                                                  _%L215033%_
                                                  _%L215034%_)
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
                           (cons _%L215034%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L215033%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L215032%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L215030%_ '()))
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
                                         _%hd214976215024%_
                                         _%hd214973215014%_
                                         _%hd214970215004%_
                                         _%hd214967214994%_)
                                        (_%g214960214983%_
                                         _%g214961214987%_))))
                                (_%g214960214983%_ _%g214961214987%_))))
                        (_%g214960214983%_ _%g214961214987%_))))
                (_%g214960214983%_ _%g214961214987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g214960214983%_
                                                 _%g214961214987%_)))))
                                    (_%g214959215057%_
                                     (list _%args214943%_
                                           _%return214945%_
                                           _%effect214946%_
                                           _%unchecked214947%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx214379%_ _%proc214381%_)
          (let* ((_%__stx217226217227%_ _%sig214382%_)
                 (_%g214393214496%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx217226217227%_)))))
            (let ((_%__kont217229217230%_
                   (lambda (_%L214924%_ _%L214926%_)
                     (_%make-signature214386%_
                      _%L214926%_
                      _%L214924%_
                      '#f
                      '#f)))
                  (_%__kont217231217232%_
                   (lambda (_%L214875%_ _%L214877%_ _%L214878%_)
                     (_%make-signature214386%_
                      _%L214878%_
                      _%L214877%_
                      _%L214875%_
                      '#f)))
                  (_%__kont217233217234%_
                   (lambda (_%L214799%_ _%L214801%_ _%L214802%_)
                     (_%make-signature214386%_
                      _%L214802%_
                      _%L214801%_
                      _%L214799%_
                      (let ((__tmp217587
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc214381%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp217587)))))
                  (_%__kont217235217236%_
                   (lambda (_%L214705%_ _%L214707%_ _%L214708%_ _%L214709%_)
                     (_%make-signature214386%_
                      _%L214709%_
                      _%L214708%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L214705%_)))))
                  (_%__kont217237217238%_
                   (lambda (_%L214612%_ _%L214614%_)
                     (_%make-signature214386%_
                      _%L214614%_
                      _%L214612%_
                      '#f
                      (let ((__tmp217588
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc214381%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp217588)))))
                  (_%__kont217239217240%_
                   (lambda (_%L214547%_ _%L214549%_ _%L214550%_)
                     (_%make-signature214386%_
                      _%L214550%_
                      _%L214549%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L214547%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217226217227%_))
                  (let ((_%e214397214904%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217226217227%_))))
                    (let ((_%tl214399214911%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214397214904%_)))
                          (_%hd214398214908%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214397214904%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214399214911%_))
                          (let ((_%e214400214914%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl214399214911%_))))
                            (let ((_%tl214402214921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214400214914%_)))
                                  (_%hd214401214918%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214400214914%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl214402214921%_))
                                  (_%__kont217229217230%_
                                   _%hd214401214918%_
                                   _%hd214398214908%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214402214921%_))
                                      (let ((_%e214412214851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214402214921%_))))
                                        (let ((_%tl214414214858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214412214851%_)))
                                              (_%hd214413214855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214412214851%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd214413214855%_))
                                              (let ((_%e214415214861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd214413214855%_))))
                                                (if (equal? _%e214415214861%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl214414214858%_))
                                                        (let ((_%e214416214865%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl214414214858%_))))
                  (let ((_%tl214418214872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214416214865%_)))
                        (_%hd214417214869%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214416214865%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl214418214872%_))
                        (_%__kont217231217232%_
                         _%hd214417214869%_
                         _%hd214401214918%_
                         _%hd214398214908%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl214418214872%_))
                            (let ((_%e214435214785%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl214418214872%_))))
                              (let ((_%tl214437214792%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e214435214785%_)))
                                    (_%hd214436214789%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e214435214785%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd214436214789%_))
                                    (let ((_%e214438214795%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd214436214789%_))))
                                      (if (equal? _%e214438214795%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214437214792%_))
                                              (_%__kont217233217234%_
                                               _%hd214417214869%_
                                               _%hd214401214918%_
                                               _%hd214398214908%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214437214792%_))
                                                  (let ((_%e214460214695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl214437214792%_))))
                                                    (let ((_%tl214462214702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214460214695%_)))
                                                          (_%hd214461214699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214460214695%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl214462214702%_))
                                                          (_%__kont217235217236%_
                                                           _%hd214461214699%_
                                                           _%hd214417214869%_
                                                           _%hd214401214918%_
                                                           _%hd214398214908%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g214393214496%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214393214496%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214393214496%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g214393214496%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g214393214496%_))))))
                (let () (declare (not safe)) (_%g214393214496%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e214415214861%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl214414214858%_))
                                                            (_%__kont217237217238%_
                                                             _%hd214401214918%_
                                                             _%hd214398214908%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl214414214858%_))
                        (let ((_%e214488214537%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214414214858%_))))
                          (let ((_%tl214490214544%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214488214537%_)))
                                (_%hd214489214541%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214488214537%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl214490214544%_))
                                (_%__kont217239217240%_
                                 _%hd214489214541%_
                                 _%hd214401214918%_
                                 _%hd214398214908%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g214393214496%_)))))
                        (let () (declare (not safe)) (_%g214393214496%_))))
                (let () (declare (not safe)) (_%g214393214496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g214393214496%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214393214496%_))))))
                          (let () (declare (not safe)) (_%g214393214496%_)))))
                  (let () (declare (not safe)) (_%g214393214496%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig213990%_)
        (let* ((_%g213993214073%_
                (lambda (_%g213994214069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213994214069%_))))
               (_%g213992214375%_
                (lambda (_%g213994214077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213994214077%_))
                      (let ((_%e214000214080%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213994214077%_))))
                        (let ((_%hd214001214084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214000214080%_)))
                              (_%tl214002214087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214000214080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214002214087%_))
                              (let ((_%e214003214090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214002214087%_))))
                                (let ((_%hd214004214094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214003214090%_)))
                                      (_%tl214005214097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214003214090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd214004214094%_))
                                      (let ((_%e214006214100%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd214004214094%_))))
                                        (if (equal? _%e214006214100%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl214005214097%_))
                                                (let ((_%e214007214104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl214005214097%_))))
                                                  (let ((_%hd214008214108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214007214104%_)))
                                                        (_%tl214009214111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214007214104%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd214008214108%_))
                                                        (let ((_%e214010214114%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd214008214108%_))))
                  (let ((_%hd214011214118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214010214114%_)))
                        (_%tl214012214121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214010214114%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd214011214118%_))
                        (if (let ((__tmp217589 |gxc[1]#_g217590_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp217589
                               _%hd214011214118%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214012214121%_))
                                (let ((_%e214013214124%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214012214121%_))))
                                  (let ((_%hd214014214128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214013214124%_)))
                                        (_%tl214015214131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214013214124%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214015214131%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl214009214111%_))
                                            (let ((_%e214016214134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl214009214111%_))))
                                              (let ((_%hd214017214138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e214016214134%_)))
                                                    (_%tl214018214141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e214016214134%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd214017214138%_))
                                                    (let ((_%e214019214144%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd214017214138%_))))
                                                      (if (equal? _%e214019214144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl214018214141%_))
                      (let ((_%e214020214148%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl214018214141%_))))
                        (let ((_%hd214021214152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214020214148%_)))
                              (_%tl214022214155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214020214148%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd214021214152%_))
                              (let ((_%e214023214158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd214021214152%_))))
                                (let ((_%hd214024214162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214023214158%_)))
                                      (_%tl214025214165%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214023214158%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd214024214162%_))
                                      (if (let ((__tmp217591
                                                 |gxc[1]#_g217592_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp217591
                                             _%hd214024214162%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214025214165%_))
                                              (let ((_%e214026214168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl214025214165%_))))
                                                (let ((_%hd214027214172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214026214168%_)))
                                                      (_%tl214028214175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214026214168%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214028214175%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214022214155%_))
                                                          (let ((_%e214029214178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl214022214155%_))))
                    (let ((_%hd214030214182%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214029214178%_)))
                          (_%tl214031214185%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214029214178%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd214030214182%_))
                          (let ((_%e214032214188%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd214030214182%_))))
                            (if (equal? _%e214032214188%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl214031214185%_))
                                    (let ((_%e214033214192%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl214031214185%_))))
                                      (let ((_%hd214034214196%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e214033214192%_)))
                                            (_%tl214035214199%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e214033214192%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd214034214196%_))
                                            (let ((_%e214036214202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd214034214196%_))))
                                              (let ((_%hd214037214206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e214036214202%_)))
                                                    (_%tl214038214209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e214036214202%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd214037214206%_))
                                                    (if (let ((__tmp217593
                                                               |gxc[1]#_g217594_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp217593
                                                           _%hd214037214206%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl214038214209%_))
                                                            (let ((_%e214039214212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl214038214209%_))))
                      (let ((_%hd214040214216%_
                             (let ()
                               (declare (not safe))
                               (##car _%e214039214212%_)))
                            (_%tl214041214219%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e214039214212%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl214041214219%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214035214199%_))
                                (let ((_%e214042214222%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214035214199%_))))
                                  (let ((_%hd214043214226%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214042214222%_)))
                                        (_%tl214044214229%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214042214222%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd214043214226%_))
                                        (let ((_%e214045214232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd214043214226%_))))
                                          (if (equal? _%e214045214232%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214044214229%_))
                                                  (let ((_%e214046214236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl214044214229%_))))
                                                    (let ((_%hd214047214240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214046214236%_)))
                                                          (_%tl214048214243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214046214236%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd214047214240%_))
                                                          (let ((_%e214049214246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd214047214240%_))))
                    (let ((_%hd214050214250%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214049214246%_)))
                          (_%tl214051214253%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214049214246%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd214050214250%_))
                          (if (let ((__tmp217595 |gxc[1]#_g217596_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp217595
                                 _%hd214050214250%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214051214253%_))
                                  (let ((_%e214052214256%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl214051214253%_))))
                                    (let ((_%hd214053214260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214052214256%_)))
                                          (_%tl214054214263%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214052214256%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl214054214263%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214048214243%_))
                                              (let ((_%e214055214266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl214048214243%_))))
                                                (let ((_%hd214056214270%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214055214266%_)))
                                                      (_%tl214057214273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214055214266%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd214056214270%_))
                                                      (let ((_%e214058214276%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd214056214270%_))))
                (if (equal? _%e214058214276%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl214057214273%_))
                        (let ((_%e214059214280%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214057214273%_))))
                          (let ((_%hd214060214284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214059214280%_)))
                                (_%tl214061214287%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214059214280%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd214060214284%_))
                                (let ((_%e214062214290%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd214060214284%_))))
                                  (let ((_%hd214063214294%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214062214290%_)))
                                        (_%tl214064214297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214062214290%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd214063214294%_))
                                        (if (let ((__tmp217597
                                                   |gxc[1]#_g217598_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp217597
                                               _%hd214063214294%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl214064214297%_))
                                                (let ((_%e214065214300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl214064214297%_))))
                                                  (let ((_%hd214066214304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214065214300%_)))
                                                        (_%tl214067214307%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214065214300%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl214067214307%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl214061214287%_))
                                                            ((lambda (_%L214310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L214312%_
                              _%L214313%_
                              _%L214314%_
                              _%L214315%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L214312%_))
                           (cons _%L214312%_
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
                       (cons _%L214314%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L214310%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd214066214304%_
                     _%hd214053214260%_
                     _%hd214040214216%_
                     _%hd214027214172%_
                     _%hd214014214128%_)
                    (_%g213993214073%_ _%g213994214077%_))
                (_%g213993214073%_ _%g213994214077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g213993214073%_
                                                 _%g213994214077%_))
                                            (_%g213993214073%_
                                             _%g213994214077%_))
                                        (_%g213993214073%_
                                         _%g213994214077%_))))
                                (_%g213993214073%_ _%g213994214077%_))))
                        (_%g213993214073%_ _%g213994214077%_))
                    (_%g213993214073%_ _%g213994214077%_)))
              (_%g213993214073%_ _%g213994214077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g213993214073%_
                                               _%g213994214077%_))
                                          (_%g213993214073%_
                                           _%g213994214077%_))))
                                  (_%g213993214073%_ _%g213994214077%_))
                              (_%g213993214073%_ _%g213994214077%_))
                          (_%g213993214073%_ _%g213994214077%_))))
                  (_%g213993214073%_ _%g213994214077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g213993214073%_
                                                   _%g213994214077%_))
                                              (_%g213993214073%_
                                               _%g213994214077%_)))
                                        (_%g213993214073%_
                                         _%g213994214077%_))))
                                (_%g213993214073%_ _%g213994214077%_))
                            (_%g213993214073%_ _%g213994214077%_))))
                    (_%g213993214073%_ _%g213994214077%_))
                (_%g213993214073%_ _%g213994214077%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g213993214073%_
                                                     _%g213994214077%_))))
                                            (_%g213993214073%_
                                             _%g213994214077%_))))
                                    (_%g213993214073%_ _%g213994214077%_))
                                (_%g213993214073%_ _%g213994214077%_)))
                          (_%g213993214073%_ _%g213994214077%_))))
                  (_%g213993214073%_ _%g213994214077%_))
              (_%g213993214073%_ _%g213994214077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g213993214073%_
                                               _%g213994214077%_))
                                          (_%g213993214073%_
                                           _%g213994214077%_))
                                      (_%g213993214073%_ _%g213994214077%_))))
                              (_%g213993214073%_ _%g213994214077%_))))
                      (_%g213993214073%_ _%g213994214077%_))
                  (_%g213993214073%_ _%g213994214077%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g213993214073%_
                                                     _%g213994214077%_))))
                                            (_%g213993214073%_
                                             _%g213994214077%_))
                                        (_%g213993214073%_
                                         _%g213994214077%_))))
                                (_%g213993214073%_ _%g213994214077%_))
                            (_%g213993214073%_ _%g213994214077%_))
                        (_%g213993214073%_ _%g213994214077%_))))
                (_%g213993214073%_ _%g213994214077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g213993214073%_
                                                 _%g213994214077%_))
                                            (_%g213993214073%_
                                             _%g213994214077%_)))
                                      (_%g213993214073%_ _%g213994214077%_))))
                              (_%g213993214073%_ _%g213994214077%_))))
                      (_%g213993214073%_ _%g213994214077%_)))))
          (_%g213992214375%_ _%sig213990%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx215147%_)
        (let* ((_%g215150215168%_
                (lambda (_%g215151215164%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215151215164%_))))
               (_%g215149215223%_
                (lambda (_%g215151215172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215151215172%_))
                      (let ((_%e215154215175%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215151215172%_))))
                        (let ((_%hd215155215179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215154215175%_)))
                              (_%tl215156215182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215154215175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215156215182%_))
                              (let ((_%e215157215185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215156215182%_))))
                                (let ((_%hd215158215189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215157215185%_)))
                                      (_%tl215159215192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215157215185%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215159215192%_))
                                      (let ((_%e215160215195%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215159215192%_))))
                                        (let ((_%hd215161215199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215160215195%_)))
                                              (_%tl215162215202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215160215195%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl215162215202%_))
                                              ((lambda (_%L215205%_
                                                        _%L215207%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L215207%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L215205%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx215147%_
                                                        _%L215207%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx215147%_
                                                        _%L215205%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L215207%_
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
                                                   (cons _%L215205%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215150215168%_
                                                      _%g215151215172%_)))
                                               _%hd215161215199%_
                                               _%hd215158215189%_)
                                              (_%g215150215168%_
                                               _%g215151215172%_))))
                                      (_%g215150215168%_ _%g215151215172%_))))
                              (_%g215150215168%_ _%g215151215172%_))))
                      (_%g215150215168%_ _%g215151215172%_)))))
          (_%g215149215223%_ _%stx215147%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx215227%_)
        (let* ((_%g215230215254%_
                (lambda (_%g215231215250%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215231215250%_))))
               (_%g215229215537%_
                (lambda (_%g215231215258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215231215258%_))
                      (let ((_%e215234215261%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215231215258%_))))
                        (let ((_%hd215235215265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215234215261%_)))
                              (_%tl215236215268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215234215261%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215236215268%_))
                              (let ((_%e215237215271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215236215268%_))))
                                (let ((_%hd215238215275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215237215271%_)))
                                      (_%tl215239215278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215237215271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215239215278%_))
                                      (let ((_g217599_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215239215278%_
                                                '0))))
                                        (begin
                                          (let ((_g217600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g217599_)
                                                       (##values-length
                                                        _g217599_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g217600_ 2)))
                                                (error "Context expects 2 values"
                                                       _g217600_)))
                                          (let ((_%target215240215281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g217599_ 0)))
                                                (_%tl215242215284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g217599_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215242215284%_))
                                                (letrec ((_%loop215243215287%_
                                                          (lambda (_%hd215241215291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature215247215294%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215241215291%_))
                        (let ((_%e215244215297%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215241215291%_))))
                          (let ((_%lp-hd215245215301%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215244215297%_)))
                                (_%lp-tl215246215304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215244215297%_))))
                            (_%loop215243215287%_
                             _%lp-tl215246215304%_
                             (cons _%lp-hd215245215301%_
                                   _%signature215247215294%_))))
                        (let ((_%signature215248215307%_
                               (reverse _%signature215247215294%_)))
                          ((lambda (_%L215311%_ _%L215313%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L215313%_))
                                 (let* ((_%g215331215346%_
                                         (lambda (_%g215332215342%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g215332215342%_))))
                                        (_%g215330215525%_
                                         (lambda (_%g215332215350%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g215332215350%_))
                                               (let ((_%e215335215353%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g215332215350%_))))
                                                 (let ((_%hd215336215357%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215335215353%_)))
                                                       (_%tl215337215360%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215335215353%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl215337215360%_))
                                                       (let ((_%e215338215363%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl215337215360%_))))
                 (let ((_%hd215339215367%_
                        (let ()
                          (declare (not safe))
                          (##car _%e215338215363%_)))
                       (_%tl215340215370%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e215338215363%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl215340215370%_))
                       ((lambda (_%L215373%_ _%L215375%_)
                          (let* ((_%g215391215399%_
                                  (lambda (_%g215392215395%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g215392215395%_))))
                                 (_%g215390215521%_
                                  (lambda (_%g215392215403%_)
                                    ((lambda (_%L215406%_)
                                       (let* ((_%unchecked215419%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L215373%_))
                                              (_%g215422215430%_
                                               (lambda (_%g215423215426%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g215423215426%_))))
                                              (_%g215421215453%_
                                               (lambda (_%g215423215434%_)
                                                 ((lambda (_%L215437%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L215406%_
                                                                (cons _%L215437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g215423215434%_))))
                                         (_%g215421215453%_
                                          (if _%unchecked215419%_
                                              (let* ((_%g215457215472%_
                                                      (lambda (_%g215458215468%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g215458215468%_))))
                                                     (_%g215456215517%_
                                                      (lambda (_%g215458215476%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g215458215476%_))
                                                            (let ((_%e215461215479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g215458215476%_))))
                      (let ((_%hd215462215483%_
                             (let ()
                               (declare (not safe))
                               (##car _%e215461215479%_)))
                            (_%tl215463215486%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e215461215479%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl215463215486%_))
                            (let ((_%e215464215489%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl215463215486%_))))
                              (let ((_%hd215465215493%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e215464215489%_)))
                                    (_%tl215466215496%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e215464215489%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl215466215496%_))
                                    ((lambda (_%L215499%_ _%L215501%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L215501%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L215375%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L215499%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd215465215493%_
                                     _%hd215462215483%_)
                                    (_%g215457215472%_ _%g215458215476%_))))
                            (_%g215457215472%_ _%g215458215476%_))))
                    (_%g215457215472%_ _%g215458215476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g215456215517%_
                                                 _%unchecked215419%_))
                                              '(begin)))))
                                     _%g215392215403%_))))
                            (_%g215390215521%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L215313%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L215375%_ '()))
                   (cons '#f (cons 'signature: (cons _%L215373%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd215339215367%_
                        _%hd215336215357%_)
                       (_%g215331215346%_ _%g215332215350%_))))
               (_%g215331215346%_ _%g215332215350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215331215346%_
                                                _%g215332215350%_)))))
                                   (_%g215330215525%_
                                    (|gxc[1]#parse-signature|
                                     _%stx215227%_
                                     _%L215313%_
                                     (let ((__tmp217601
                                            (lambda (_%g215528215531%_
                                                     _%g215529215534%_)
                                              (cons _%g215528215531%_
                                                    _%g215529215534%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp217601
                                        '()
                                        _%L215311%_)))))
                                 (_%g215230215254%_ _%g215231215258%_)))
                           _%signature215248215307%_
                           _%hd215238215275%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215243215287%_
                                                   _%target215240215281%_
                                                   '()))
                                                (_%g215230215254%_
                                                 _%g215231215258%_)))))
                                      (_%g215230215254%_ _%g215231215258%_))))
                              (_%g215230215254%_ _%g215231215258%_))))
                      (_%g215230215254%_ _%g215231215258%_)))))
          (_%g215229215537%_ _%stx215227%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx215542%_)
        (let* ((_%g215545215569%_
                (lambda (_%g215546215565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215546215565%_))))
               (_%g215544216452%_
                (lambda (_%g215546215573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215546215573%_))
                      (let ((_%e215549215576%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215546215573%_))))
                        (let ((_%hd215550215580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215549215576%_)))
                              (_%tl215551215583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215549215576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215551215583%_))
                              (let ((_%e215552215586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215551215583%_))))
                                (let ((_%hd215553215590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215552215586%_)))
                                      (_%tl215554215593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215552215586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215554215593%_))
                                      (let ((_g217602_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215554215593%_
                                                '0))))
                                        (begin
                                          (let ((_g217603_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g217602_)
                                                       (##values-length
                                                        _g217602_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g217603_ 2)))
                                                (error "Context expects 2 values"
                                                       _g217603_)))
                                          (let ((_%target215555215596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g217602_ 0)))
                                                (_%tl215557215599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g217602_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215557215599%_))
                                                (letrec ((_%loop215558215602%_
                                                          (lambda (_%hd215556215606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature215562215609%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215556215606%_))
                        (let ((_%e215559215612%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215556215606%_))))
                          (let ((_%lp-hd215560215616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215559215612%_)))
                                (_%lp-tl215561215619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215559215612%_))))
                            (_%loop215558215602%_
                             _%lp-tl215561215619%_
                             (cons _%lp-hd215560215616%_
                                   _%case-signature215562215609%_))))
                        (let ((_%case-signature215563215622%_
                               (reverse _%case-signature215562215609%_)))
                          ((lambda (_%L215626%_ _%L215628%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L215628%_))
                                 (let* ((_%signatures215659%_
                                         (map (lambda (_%g215645215647%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx215542%_
                                                 _%L215628%_
                                                 _%g215645215647%_))
                                              (let ((__tmp217604
                                                     (lambda (_%g215650215653%_
                                                              _%g215651215656%_)
                                                       (cons _%g215650215653%_
                                                             _%g215651215656%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp217604
                                                 '()
                                                 _%L215626%_))))
                                        (_%g215662215688%_
                                         (lambda (_%g215663215684%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g215663215684%_))))
                                        (_%g215661216448%_
                                         (lambda (_%g215663215692%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g215663215692%_))
                                               (let ((_g217605_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g215663215692%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g217606_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g217605_)
                        (##values-length _g217605_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g217606_ 2)))
                 (error "Context expects 2 values" _g217606_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target215666215695%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g217605_
                                                             0)))
                                                         (_%tl215668215698%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g217605_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl215668215698%_))
                                                         (letrec ((_%loop215669215701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd215667215705%_
                                    _%sig215673215708%_
                                    _%arity215674215710%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd215667215705%_))
                                 (let ((_%e215670215713%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd215667215705%_))))
                                   (let ((_%lp-hd215671215717%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215670215713%_)))
                                         (_%lp-tl215672215720%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215670215713%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd215671215717%_))
                                         (let ((_%e215677215723%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd215671215717%_))))
                                           (let ((_%hd215678215727%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e215677215723%_)))
                                                 (_%tl215679215730%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e215677215723%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl215679215730%_))
                                                 (let ((_%e215680215733%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl215679215730%_))))
                                                   (let ((_%hd215681215737%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e215680215733%_)))
                                                         (_%tl215682215740%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e215680215733%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl215682215740%_))
                                                         (_%loop215669215701%_
                                                          _%lp-tl215672215720%_
                                                          (cons _%hd215681215737%_
                                                                _%sig215673215708%_)
                                                          (cons _%hd215678215727%_
                                                                _%arity215674215710%_))
                                                         (_%g215662215688%_
                                                          _%g215663215692%_))))
                                                 (_%g215662215688%_
                                                  _%g215663215692%_))))
                                         (_%g215662215688%_
                                          _%g215663215692%_))))
                                 (let ((_%sig215675215743%_
                                        (reverse _%sig215673215708%_))
                                       (_%arity215676215746%_
                                        (reverse _%arity215674215710%_)))
                                   ((lambda (_%L215749%_ _%L215751%_)
                                      (let* ((_%g215768215776%_
                                              (lambda (_%g215769215772%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g215769215772%_))))
                                             (_%g215767216433%_
                                              (lambda (_%g215769215780%_)
                                                ((lambda (_%L215783%_)
                                                   (let* ((_%g215796215804%_
                                                           (lambda (_%g215797215800%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g215797215800%_))))
                  (_%g215795215826%_
                   (lambda (_%g215797215808%_)
                     ((lambda (_%L215811%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L215783%_ (cons _%L215811%_ '()))))
                      _%g215797215808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215795215826%_
                                                      (let ((_g217607_
                                                             (let _%loop215830%_ ((_%rest215833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures215659%_)
                                          (_%unchecked-proc215835%_ '#f)
                                          (_%unchecked-clauses215836%_ '()))
                       (let* ((_%rest215837215845%_ _%rest215833%_)
                              (_%else215839215857%_
                               (lambda ()
                                 (values _%unchecked-proc215835%_
                                         (reverse!
                                          _%unchecked-clauses215836%_))))
                              (_%K215841216298%_
                               (lambda (_%rest215861%_ _%hd215863%_)
                                 (let* ((_%g215865215952%_
                                         (lambda (_%g215866215948%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g215866215948%_))))
                                        (_%g215864216294%_
                                         (lambda (_%g215866215956%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g215866215956%_))
                                               (let ((_%e215873215959%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g215866215956%_))))
                                                 (let ((_%hd215874215963%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215873215959%_)))
                                                       (_%tl215875215966%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215873215959%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl215875215966%_))
                                                       (let ((_%e215876215969%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl215875215966%_))))
                 (let ((_%hd215877215973%_
                        (let ()
                          (declare (not safe))
                          (##car _%e215876215969%_)))
                       (_%tl215878215976%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e215876215969%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd215877215973%_))
                       (let ((_%e215879215979%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd215877215973%_))))
                         (let ((_%hd215880215983%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e215879215979%_)))
                               (_%tl215881215986%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e215879215979%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl215881215986%_))
                               (let ((_%e215882215989%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl215881215986%_))))
                                 (let ((_%hd215883215993%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e215882215989%_)))
                                       (_%tl215884215996%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e215882215989%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd215883215993%_))
                                       (let ((_%e215885215999%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd215883215993%_))))
                                         (if (equal? _%e215885215999%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl215884215996%_))
                                                 (let ((_%e215886216003%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl215884215996%_))))
                                                   (let ((_%hd215887216007%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e215886216003%_)))
                                                         (_%tl215888216010%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e215886216003%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd215887216007%_))
                                                         (let ((_%e215889216013%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd215887216007%_))))
                   (let ((_%hd215890216017%_
                          (let ()
                            (declare (not safe))
                            (##car _%e215889216013%_)))
                         (_%tl215891216020%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e215889216013%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd215890216017%_))
                         (if (let ((__tmp217609 |gxc[1]#_g217610_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp217609
                                _%hd215890216017%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl215891216020%_))
                                 (let ((_%e215892216023%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl215891216020%_))))
                                   (let ((_%hd215893216027%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215892216023%_)))
                                         (_%tl215894216030%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215892216023%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl215894216030%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl215888216010%_))
                                             (let ((_%e215895216033%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl215888216010%_))))
                                               (let ((_%hd215896216037%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e215895216033%_)))
                                                     (_%tl215897216040%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e215895216033%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd215896216037%_))
                                                     (let ((_%e215898216043%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd215896216037%_))))
                                                       (if (equal? _%e215898216043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl215897216040%_))
                       (let ((_%e215899216047%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl215897216040%_))))
                         (let ((_%hd215900216051%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e215899216047%_)))
                               (_%tl215901216054%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e215899216047%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd215900216051%_))
                               (let ((_%e215902216057%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd215900216051%_))))
                                 (let ((_%hd215903216061%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e215902216057%_)))
                                       (_%tl215904216064%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e215902216057%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd215903216061%_))
                                       (if (let ((__tmp217611
                                                  |gxc[1]#_g217612_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp217611
                                              _%hd215903216061%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl215904216064%_))
                                               (let ((_%e215905216067%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl215904216064%_))))
                                                 (let ((_%hd215906216071%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215905216067%_)))
                                                       (_%tl215907216074%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215905216067%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl215907216074%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl215901216054%_))
                                                           (let ((_%e215908216077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl215901216054%_))))
                     (let ((_%hd215909216081%_
                            (let ()
                              (declare (not safe))
                              (##car _%e215908216077%_)))
                           (_%tl215910216084%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e215908216077%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd215909216081%_))
                           (let ((_%e215911216087%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd215909216081%_))))
                             (if (equal? _%e215911216087%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl215910216084%_))
                                     (let ((_%e215912216091%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl215910216084%_))))
                                       (let ((_%hd215913216095%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e215912216091%_)))
                                             (_%tl215914216098%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e215912216091%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd215913216095%_))
                                             (let ((_%e215915216101%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd215913216095%_))))
                                               (let ((_%hd215916216105%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e215915216101%_)))
                                                     (_%tl215917216108%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e215915216101%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd215916216105%_))
                                                     (if (let ((__tmp217613
                                                                |gxc[1]#_g217614_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp217613
                                                            _%hd215916216105%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl215917216108%_))
                     (let ((_%e215918216111%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl215917216108%_))))
                       (let ((_%hd215919216115%_
                              (let ()
                                (declare (not safe))
                                (##car _%e215918216111%_)))
                             (_%tl215920216118%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e215918216111%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl215920216118%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl215914216098%_))
                                 (let ((_%e215921216121%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl215914216098%_))))
                                   (let ((_%hd215922216125%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215921216121%_)))
                                         (_%tl215923216128%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215921216121%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd215922216125%_))
                                         (let ((_%e215924216131%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd215922216125%_))))
                                           (if (equal? _%e215924216131%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl215923216128%_))
                                                   (let ((_%e215925216135%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl215923216128%_))))
                                                     (let ((_%hd215926216139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e215925216135%_)))
                                                           (_%tl215927216142%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e215925216135%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd215926216139%_))
                                                           (let ((_%e215928216145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd215926216139%_))))
                     (let ((_%hd215929216149%_
                            (let ()
                              (declare (not safe))
                              (##car _%e215928216145%_)))
                           (_%tl215930216152%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e215928216145%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd215929216149%_))
                           (if (let ((__tmp217615 |gxc[1]#_g217616_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp217615
                                  _%hd215929216149%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl215930216152%_))
                                   (let ((_%e215931216155%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl215930216152%_))))
                                     (let ((_%hd215932216159%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e215931216155%_)))
                                           (_%tl215933216162%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e215931216155%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl215933216162%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl215927216142%_))
                                               (let ((_%e215934216165%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl215927216142%_))))
                                                 (let ((_%hd215935216169%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215934216165%_)))
                                                       (_%tl215936216172%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215934216165%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd215935216169%_))
                                                       (let ((_%e215937216175%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd215935216169%_))))
                 (if (equal? _%e215937216175%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl215936216172%_))
                         (let ((_%e215938216179%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl215936216172%_))))
                           (let ((_%hd215939216183%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e215938216179%_)))
                                 (_%tl215940216186%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e215938216179%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd215939216183%_))
                                 (let ((_%e215941216189%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd215939216183%_))))
                                   (let ((_%hd215942216193%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215941216189%_)))
                                         (_%tl215943216196%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215941216189%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd215942216193%_))
                                         (if (let ((__tmp217617
                                                    |gxc[1]#_g217618_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp217617
                                                _%hd215942216193%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl215943216196%_))
                                                 (let ((_%e215944216199%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl215943216196%_))))
                                                   (let ((_%hd215945216203%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e215944216199%_)))
                                                         (_%tl215946216206%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e215944216199%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl215946216206%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl215940216186%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl215878215976%_))
                         ((lambda (_%L216209%_
                                   _%L216211%_
                                   _%L216212%_
                                   _%L216213%_
                                   _%L216214%_
                                   _%L216215%_)
                            (let ((_%clause216286%_
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
                                                     (cons _%L216215%_ '()))
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
                                                 (cons _%L216213%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216209%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked216288%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L216211%_))))
                              (_%loop215830%_
                               _%rest215861%_
                               (let ((_%$e216290%_ _%unchecked216288%_))
                                 (if _%$e216290%_
                                     _%$e216290%_
                                     _%unchecked-proc215835%_))
                               (cons _%clause216286%_
                                     _%unchecked-clauses215836%_))))
                          _%hd215945216203%_
                          _%hd215932216159%_
                          _%hd215919216115%_
                          _%hd215906216071%_
                          _%hd215893216027%_
                          _%hd215874215963%_)
                         (_%g215865215952%_ _%g215866215956%_))
                     (_%g215865215952%_ _%g215866215956%_))
                 (_%g215865215952%_ _%g215866215956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g215865215952%_
                                                  _%g215866215956%_))
                                             (_%g215865215952%_
                                              _%g215866215956%_))
                                         (_%g215865215952%_
                                          _%g215866215956%_))))
                                 (_%g215865215952%_ _%g215866215956%_))))
                         (_%g215865215952%_ _%g215866215956%_))
                     (_%g215865215952%_ _%g215866215956%_)))
               (_%g215865215952%_ _%g215866215956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215865215952%_
                                                _%g215866215956%_))
                                           (_%g215865215952%_
                                            _%g215866215956%_))))
                                   (_%g215865215952%_ _%g215866215956%_))
                               (_%g215865215952%_ _%g215866215956%_))
                           (_%g215865215952%_ _%g215866215956%_))))
                   (_%g215865215952%_ _%g215866215956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g215865215952%_
                                                    _%g215866215956%_))
                                               (_%g215865215952%_
                                                _%g215866215956%_)))
                                         (_%g215865215952%_
                                          _%g215866215956%_))))
                                 (_%g215865215952%_ _%g215866215956%_))
                             (_%g215865215952%_ _%g215866215956%_))))
                     (_%g215865215952%_ _%g215866215956%_))
                 (_%g215865215952%_ _%g215866215956%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215865215952%_
                                                      _%g215866215956%_))))
                                             (_%g215865215952%_
                                              _%g215866215956%_))))
                                     (_%g215865215952%_ _%g215866215956%_))
                                 (_%g215865215952%_ _%g215866215956%_)))
                           (_%g215865215952%_ _%g215866215956%_))))
                   (_%g215865215952%_ _%g215866215956%_))
               (_%g215865215952%_ _%g215866215956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215865215952%_
                                                _%g215866215956%_))
                                           (_%g215865215952%_
                                            _%g215866215956%_))
                                       (_%g215865215952%_ _%g215866215956%_))))
                               (_%g215865215952%_ _%g215866215956%_))))
                       (_%g215865215952%_ _%g215866215956%_))
                   (_%g215865215952%_ _%g215866215956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215865215952%_
                                                      _%g215866215956%_))))
                                             (_%g215865215952%_
                                              _%g215866215956%_))
                                         (_%g215865215952%_
                                          _%g215866215956%_))))
                                 (_%g215865215952%_ _%g215866215956%_))
                             (_%g215865215952%_ _%g215866215956%_))
                         (_%g215865215952%_ _%g215866215956%_))))
                 (_%g215865215952%_ _%g215866215956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g215865215952%_
                                                  _%g215866215956%_))
                                             (_%g215865215952%_
                                              _%g215866215956%_)))
                                       (_%g215865215952%_ _%g215866215956%_))))
                               (_%g215865215952%_ _%g215866215956%_))))
                       (_%g215865215952%_ _%g215866215956%_))))
               (_%g215865215952%_ _%g215866215956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215865215952%_
                                                _%g215866215956%_)))))
                                   (_%g215864216294%_ _%hd215863%_)))))
                         (if (pair? _%rest215837215845%_)
                             (let ((_%hd215842216302%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest215837215845%_)))
                                   (_%tl215843216305%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest215837215845%_))))
                               (let* ((_%hd216308%_ _%hd215842216302%_)
                                      (_%rest216311%_ _%tl215843216305%_))
                                 (_%K215841216298%_
                                  _%rest216311%_
                                  _%hd216308%_)))
                             (_%else215839215857%_))))))
                (begin
                  (let ((_g217608_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g217607_)
                               (##values-length _g217607_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g217608_ 2)))
                        (error "Context expects 2 values" _g217608_)))
                  (let ((_%unchecked-proc216314%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g217607_ 0)))
                        (_%unchecked-clauses216316%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g217607_ 1))))
                    (if _%unchecked-proc216314%_
                        (let* ((_%g216318216342%_
                                (lambda (_%g216319216338%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g216319216338%_))))
                               (_%g216317216429%_
                                (lambda (_%g216319216346%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g216319216346%_))
                                      (let ((_%e216322216349%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g216319216346%_))))
                                        (let ((_%hd216323216353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216322216349%_)))
                                              (_%tl216324216356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216322216349%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216324216356%_))
                                              (let ((_%e216325216359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216324216356%_))))
                                                (let ((_%hd216326216363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216325216359%_)))
                                                      (_%tl216327216366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216325216359%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd216326216363%_))
                                                      (let ((_g217619_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd216326216363%_ '0))))
                (begin
                  (let ((_g217620_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g217619_)
                               (##values-length _g217619_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g217620_ 2)))
                        (error "Context expects 2 values" _g217620_)))
                  (let ((_%target216328216369%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g217619_ 0)))
                        (_%tl216330216372%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g217619_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl216330216372%_))
                        (letrec ((_%loop216331216375%_
                                  (lambda (_%hd216329216379%_
                                           _%clause216335216382%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd216329216379%_))
                                        (let ((_%e216332216385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd216329216379%_))))
                                          (let ((_%lp-hd216333216389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216332216385%_)))
                                                (_%lp-tl216334216392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216332216385%_))))
                                            (_%loop216331216375%_
                                             _%lp-tl216334216392%_
                                             (cons _%lp-hd216333216389%_
                                                   _%clause216335216382%_))))
                                        (let ((_%clause216336216395%_
                                               (reverse _%clause216335216382%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216327216366%_))
                                              ((lambda (_%L216399%_
                                                        _%L216401%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L216401%_
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
                                             (let ((__tmp217621
                                                    (lambda (_%g216420216423%_
                                                             _%g216421216426%_)
                                                      (cons _%g216420216423%_
                                                            _%g216421216426%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp217621
                                                '()
                                                _%L216399%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause216336216395%_
                                               _%hd216323216353%_)
                                              (_%g216318216342%_
                                               _%g216319216346%_)))))))
                          (_%loop216331216375%_ _%target216328216369%_ '()))
                        (_%g216318216342%_ _%g216319216346%_)))))
              (_%g216318216342%_ _%g216319216346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216318216342%_
                                               _%g216319216346%_))))
                                      (_%g216318216342%_ _%g216319216346%_)))))
                          (_%g216317216429%_
                           (list _%unchecked-proc216314%_
                                 _%unchecked-clauses216316%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g215769215780%_))))
                                        (_%g215767216433%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L215628%_
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
                                          _%L215749%_
                                          _%L215751%_))
                                       (let ((__tmp217622
                                              (lambda (_%g216436216440%_
                                                       _%g216437216443%_
                                                       _%g216438216445%_)
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
                                (cons _%g216437216443%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g216436216440%_ '())))))
              _%g216438216445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp217622
                                          '()
                                          _%L215749%_
                                          _%L215751%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig215675215743%_
                                    _%arity215676215746%_))))))
                   (_%loop215669215701%_ _%target215666215695%_ '() '()))
                 (_%g215662215688%_ _%g215663215692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215662215688%_
                                                _%g215663215692%_)))))
                                   (_%g215661216448%_ _%signatures215659%_))
                                 (_%g215545215569%_ _%g215546215573%_)))
                           _%case-signature215563215622%_
                           _%hd215553215590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215558215602%_
                                                   _%target215555215596%_
                                                   '()))
                                                (_%g215545215569%_
                                                 _%g215546215573%_)))))
                                      (_%g215545215569%_ _%g215546215573%_))))
                              (_%g215545215569%_ _%g215546215573%_))))
                      (_%g215545215569%_ _%g215546215573%_)))))
          (_%g215544216452%_ _%stx215542%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx216460%_)
        (let* ((_%__stx217442217443%_ _%$stx216460%_)
               (_%g216466216526%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217442217443%_)))))
          (let ((_%__kont217445217446%_
                 (lambda (_%L216748%_ _%L216750%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216750%_ '()))
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
                                                       (cons _%L216750%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216748%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont217447217448%_
                 (lambda (_%L216673%_ _%L216675%_ _%L216676%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216676%_ '()))
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
                                                       (cons _%L216676%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216675%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216673%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont217449217450%_
                 (lambda (_%L216587%_ _%L216589%_ _%L216590%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216590%_ '()))
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
                                                       (cons _%L216590%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216589%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216587%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217442217443%_))
                (let ((_%e216470216704%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217442217443%_))))
                  (let ((_%tl216472216711%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216470216704%_)))
                        (_%hd216471216708%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216470216704%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216472216711%_))
                        (let ((_%e216473216714%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216472216711%_))))
                          (let ((_%tl216475216721%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216473216714%_)))
                                (_%hd216474216718%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216473216714%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd216474216718%_))
                                (let ((_%e216476216724%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd216474216718%_))))
                                  (if (equal? _%e216476216724%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216475216721%_))
                                          (let ((_%e216477216728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl216475216721%_))))
                                            (let ((_%tl216479216735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216477216728%_)))
                                                  (_%hd216478216732%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216477216728%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216479216735%_))
                                                  (let ((_%e216480216738%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl216479216735%_))))
                                                    (let ((_%tl216482216745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216480216738%_)))
                                                          (_%hd216481216742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216480216738%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216482216745%_))
                                                          (_%__kont217445217446%_
                                                           _%hd216481216742%_
                                                           _%hd216478216732%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216466216526%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216466216526%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216466216526%_)))
                                      (if (equal? _%e216476216724%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216475216721%_))
                                              (let ((_%e216493216643%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216475216721%_))))
                                                (let ((_%tl216495216650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216493216643%_)))
                                                      (_%hd216494216647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216493216643%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216495216650%_))
                                                      (let ((_%e216496216653%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl216495216650%_))))
                (let ((_%tl216498216660%_
                       (let () (declare (not safe)) (##cdr _%e216496216653%_)))
                      (_%hd216497216657%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216496216653%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216498216660%_))
                      (let ((_%e216499216663%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216498216660%_))))
                        (let ((_%tl216501216670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216499216663%_)))
                              (_%hd216500216667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216499216663%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216501216670%_))
                              (_%__kont217447217448%_
                               _%hd216500216667%_
                               _%hd216497216657%_
                               _%hd216494216647%_)
                              (let ()
                                (declare (not safe))
                                (_%g216466216526%_)))))
                      (let () (declare (not safe)) (_%g216466216526%_)))))
              (let () (declare (not safe)) (_%g216466216526%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216466216526%_)))
                                          (if (equal? _%e216476216724%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216475216721%_))
                                                  (let ((_%e216512216557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl216475216721%_))))
                                                    (let ((_%tl216514216564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216512216557%_)))
                                                          (_%hd216513216561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216512216557%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216514216564%_))
                                                          (let ((_%e216515216567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl216514216564%_))))
                    (let ((_%tl216517216574%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216515216567%_)))
                          (_%hd216516216571%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216515216567%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216517216574%_))
                          (let ((_%e216518216577%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl216517216574%_))))
                            (let ((_%tl216520216584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216518216577%_)))
                                  (_%hd216519216581%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216518216577%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216520216584%_))
                                  (_%__kont217449217450%_
                                   _%hd216519216581%_
                                   _%hd216516216571%_
                                   _%hd216513216561%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216466216526%_)))))
                          (let () (declare (not safe)) (_%g216466216526%_)))))
                  (let () (declare (not safe)) (_%g216466216526%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216466216526%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216466216526%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g216466216526%_)))))
                        (let () (declare (not safe)) (_%g216466216526%_)))))
                (let () (declare (not safe)) (_%g216466216526%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx216772%_)
        (let* ((_%g216776216796%_
                (lambda (_%g216777216792%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216777216792%_))))
               (_%g216775216867%_
                (lambda (_%g216777216800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216777216800%_))
                      (let ((_%e216779216803%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216777216800%_))))
                        (let ((_%hd216780216807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216779216803%_)))
                              (_%tl216781216810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216779216803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216781216810%_))
                              (let ((_g217623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216781216810%_
                                        '0))))
                                (begin
                                  (let ((_g217624_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217623_)
                                               (##values-length _g217623_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217624_ 2)))
                                        (error "Context expects 2 values"
                                               _g217624_)))
                                  (let ((_%target216782216813%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217623_ 0)))
                                        (_%tl216784216816%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217623_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216784216816%_))
                                        (letrec ((_%loop216785216819%_
                                                  (lambda (_%hd216783216823%_
                                                           _%decl216789216826%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216783216823%_))
                                                        (let ((_%e216786216829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216783216823%_))))
                  (let ((_%lp-hd216787216833%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216786216829%_)))
                        (_%lp-tl216788216836%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216786216829%_))))
                    (_%loop216785216819%_
                     _%lp-tl216788216836%_
                     (cons _%lp-hd216787216833%_ _%decl216789216826%_))))
                (let ((_%decl216790216839%_ (reverse _%decl216789216826%_)))
                  ((lambda (_%L216843%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp217625
                                  (lambda (_%g216858216861%_ _%g216859216864%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g216858216861%_)
                                          _%g216859216864%_))))
                             (declare (not safe))
                             (__foldr1 __tmp217625 '() _%L216843%_))))
                   _%decl216790216839%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216785216819%_
                                           _%target216782216813%_
                                           '()))
                                        (_%g216776216796%_
                                         _%g216777216800%_)))))
                              (_%g216776216796%_ _%g216777216800%_))))
                      (_%g216776216796%_ _%g216777216800%_)))))
          (_%g216775216867%_ _%$stx216772%_))))))
