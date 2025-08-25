(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g217580_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217587_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217589_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217591_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217593_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217595_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217607_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217609_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217611_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217613_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g217615_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx210998%_)
        (let* ((_%g211002211020%_
                (lambda (_%g211003211016%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211003211016%_))))
               (_%g211001211075%_
                (lambda (_%g211003211024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211003211024%_))
                      (let ((_%e211006211027%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211003211024%_))))
                        (let ((_%hd211007211031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211006211027%_)))
                              (_%tl211008211034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211006211027%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211008211034%_))
                              (let ((_%e211009211037%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211008211034%_))))
                                (let ((_%hd211010211041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211009211037%_)))
                                      (_%tl211011211044%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211009211037%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211011211044%_))
                                      (let ((_%e211012211047%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211011211044%_))))
                                        (let ((_%hd211013211051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211012211047%_)))
                                              (_%tl211014211054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211012211047%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211014211054%_))
                                              ((lambda (_%L211057%_
                                                        _%L211059%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L211059%_))
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
                               (cons _%L211059%_ '()))
                         (cons _%L211057%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211002211020%_
                                                      _%g211003211024%_)))
                                               _%hd211013211051%_
                                               _%hd211010211041%_)
                                              (_%g211002211020%_
                                               _%g211003211024%_))))
                                      (_%g211002211020%_ _%g211003211024%_))))
                              (_%g211002211020%_ _%g211003211024%_))))
                      (_%g211002211020%_ _%g211003211024%_)))))
          (_%g211001211075%_ _%$stx210998%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx211079%_)
        (let* ((_%g211083211101%_
                (lambda (_%g211084211097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211084211097%_))))
               (_%g211082211156%_
                (lambda (_%g211084211105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211084211105%_))
                      (let ((_%e211087211108%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211084211105%_))))
                        (let ((_%hd211088211112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211087211108%_)))
                              (_%tl211089211115%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211087211108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211089211115%_))
                              (let ((_%e211090211118%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211089211115%_))))
                                (let ((_%hd211091211122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211090211118%_)))
                                      (_%tl211092211125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211090211118%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211092211125%_))
                                      (let ((_%e211093211128%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211092211125%_))))
                                        (let ((_%hd211094211132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211093211128%_)))
                                              (_%tl211095211135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211093211128%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211095211135%_))
                                              ((lambda (_%L211138%_
                                                        _%L211140%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L211140%_))
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
                               (cons _%L211140%_ '()))
                         (cons _%L211138%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211083211101%_
                                                      _%g211084211105%_)))
                                               _%hd211094211132%_
                                               _%hd211091211122%_)
                                              (_%g211083211101%_
                                               _%g211084211105%_))))
                                      (_%g211083211101%_ _%g211084211105%_))))
                              (_%g211083211101%_ _%g211084211105%_))))
                      (_%g211083211101%_ _%g211084211105%_)))))
          (_%g211082211156%_ _%$stx211079%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx211160%_)
        (let* ((_%g211164211193%_
                (lambda (_%g211165211189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211165211189%_))))
               (_%g211163211293%_
                (lambda (_%g211165211197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211165211197%_))
                      (let ((_%e211168211200%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211165211197%_))))
                        (let ((_%hd211169211204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211168211200%_)))
                              (_%tl211170211207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211168211200%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211170211207%_))
                              (let ((_g217558_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211170211207%_
                                        '0))))
                                (begin
                                  (let ((_g217559_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217558_)
                                               (##values-length _g217558_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217559_ 2)))
                                        (error "Context expects 2 values"
                                               _g217559_)))
                                  (let ((_%target211171211210%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217558_ 0)))
                                        (_%tl211173211213%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217558_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211173211213%_))
                                        (letrec ((_%loop211174211216%_
                                                  (lambda (_%hd211172211220%_
                                                           _%type211178211223%_
                                                           _%symbol211179211225%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211172211220%_))
                                                        (let ((_%e211175211228%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211172211220%_))))
                  (let ((_%lp-hd211176211232%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211175211228%_)))
                        (_%lp-tl211177211235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211175211228%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211176211232%_))
                        (let ((_%e211182211238%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd211176211232%_))))
                          (let ((_%hd211183211242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211182211238%_)))
                                (_%tl211184211245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211182211238%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211184211245%_))
                                (let ((_%e211185211248%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211184211245%_))))
                                  (let ((_%hd211186211252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211185211248%_)))
                                        (_%tl211187211255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211185211248%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211187211255%_))
                                        (_%loop211174211216%_
                                         _%lp-tl211177211235%_
                                         (cons _%hd211186211252%_
                                               _%type211178211223%_)
                                         (cons _%hd211183211242%_
                                               _%symbol211179211225%_))
                                        (_%g211164211193%_
                                         _%g211165211197%_))))
                                (_%g211164211193%_ _%g211165211197%_))))
                        (_%g211164211193%_ _%g211165211197%_))))
                (let ((_%type211180211258%_ (reverse _%type211178211223%_))
                      (_%symbol211181211261%_
                       (reverse _%symbol211179211225%_)))
                  ((lambda (_%L211264%_ _%L211266%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L211264%_
                                _%L211266%_))
                             (let ((__tmp217560
                                    (lambda (_%g211281211285%_
                                             _%g211282211288%_
                                             _%g211283211290%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g211282211288%_
                                                        (cons _%g211281211285%_
                                                              '())))
                                            _%g211283211290%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp217560
                                '()
                                _%L211264%_
                                _%L211266%_)))))
                   _%type211180211258%_
                   _%symbol211181211261%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211174211216%_
                                           _%target211171211210%_
                                           '()
                                           '()))
                                        (_%g211164211193%_
                                         _%g211165211197%_)))))
                              (_%g211164211193%_ _%g211165211197%_))))
                      (_%g211164211193%_ _%g211165211197%_)))))
          (_%g211163211293%_ _%$stx211160%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx211298%_)
        (let* ((_%__stx216869216870%_ _%$stx211298%_)
               (_%g211303211345%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx216869216870%_)))))
          (let ((_%__kont216872216873%_
                 (lambda (_%L211473%_ _%L211475%_ _%L211476%_ _%L211477%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L211477%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L211476%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L211475%_ '()))
                                           (cons _%L211473%_ '())))))))
                (_%__kont216874216875%_
                 (lambda (_%L211392%_ _%L211394%_ _%L211395%_ _%L211396%_)
                   (cons _%L211396%_
                         (cons _%L211395%_
                               (cons _%L211394%_
                                     (cons _%L211392%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match216908216909%_
                   (lambda (_%e211309211423%_
                            _%hd211310211427%_
                            _%tl211311211430%_
                            _%e211312211433%_
                            _%hd211313211437%_
                            _%tl211314211440%_
                            _%e211315211443%_
                            _%hd211316211447%_
                            _%tl211317211450%_
                            _%e211318211453%_
                            _%hd211319211457%_
                            _%tl211320211460%_
                            _%e211321211463%_
                            _%hd211322211467%_
                            _%tl211323211470%_)
                     (let ((_%L211473%_ _%hd211322211467%_)
                           (_%L211475%_ _%hd211319211457%_)
                           (_%L211476%_ _%hd211316211447%_)
                           (_%L211477%_ _%hd211313211437%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211477%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211476%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211475%_)))
                           (_%__kont216872216873%_
                            _%L211473%_
                            _%L211475%_
                            _%L211476%_
                            _%L211477%_)
                           (let ()
                             (declare (not safe))
                             (_%g211303211345%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx216869216870%_))
                  (let ((_%e211309211423%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx216869216870%_))))
                    (let ((_%tl211311211430%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211309211423%_)))
                          (_%hd211310211427%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211309211423%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211311211430%_))
                          (let ((_%e211312211433%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl211311211430%_))))
                            (let ((_%tl211314211440%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211312211433%_)))
                                  (_%hd211313211437%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211312211433%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211314211440%_))
                                  (let ((_%e211315211443%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl211314211440%_))))
                                    (let ((_%tl211317211450%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211315211443%_)))
                                          (_%hd211316211447%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211315211443%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211317211450%_))
                                          (let ((_%e211318211453%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl211317211450%_))))
                                            (let ((_%tl211320211460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211318211453%_)))
                                                  (_%hd211319211457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211318211453%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211320211460%_))
                                                  (let ((_%e211321211463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl211320211460%_))))
                                                    (let ((_%tl211323211470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211321211463%_)))
                                                          (_%hd211322211467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211321211463%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211323211470%_))
                                                          (_%__match216908216909%_
                                                           _%e211309211423%_
                                                           _%hd211310211427%_
                                                           _%tl211311211430%_
                                                           _%e211312211433%_
                                                           _%hd211313211437%_
                                                           _%tl211314211440%_
                                                           _%e211315211443%_
                                                           _%hd211316211447%_
                                                           _%tl211317211450%_
                                                           _%e211318211453%_
                                                           _%hd211319211457%_
                                                           _%tl211320211460%_
                                                           _%e211321211463%_
                                                           _%hd211322211467%_
                                                           _%tl211323211470%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g211303211345%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211320211460%_))
                                                      (_%__kont216874216875%_
                                                       _%hd211319211457%_
                                                       _%hd211316211447%_
                                                       _%hd211313211437%_
                                                       _%hd211310211427%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g211303211345%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g211303211345%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g211303211345%_)))))
                          (let () (declare (not safe)) (_%g211303211345%_)))))
                  (let () (declare (not safe)) (_%g211303211345%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx211502%_)
        (let* ((_%g211506211541%_
                (lambda (_%g211507211537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211507211537%_))))
               (_%g211505211660%_
                (lambda (_%g211507211545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211507211545%_))
                      (let ((_%e211511211548%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211507211545%_))))
                        (let ((_%hd211512211552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211511211548%_)))
                              (_%tl211513211555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211511211548%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211513211555%_))
                              (let ((_g217561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211513211555%_
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
                                  (let ((_%target211514211558%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217561_ 0)))
                                        (_%tl211516211561%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217561_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211516211561%_))
                                        (letrec ((_%loop211517211564%_
                                                  (lambda (_%hd211515211568%_
                                                           _%symbol211521211571%_
                                                           _%method211522211573%_
                                                           _%type-t211523211575%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211515211568%_))
                                                        (let ((_%e211518211578%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211515211568%_))))
                  (let ((_%lp-hd211519211582%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211518211578%_)))
                        (_%lp-tl211520211585%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211518211578%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211519211582%_))
                        (let ((_%e211527211588%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd211519211582%_))))
                          (let ((_%hd211528211592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211527211588%_)))
                                (_%tl211529211595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211527211588%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211529211595%_))
                                (let ((_%e211530211598%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211529211595%_))))
                                  (let ((_%hd211531211602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211530211598%_)))
                                        (_%tl211532211605%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211530211598%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211532211605%_))
                                        (let ((_%e211533211608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl211532211605%_))))
                                          (let ((_%hd211534211612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211533211608%_)))
                                                (_%tl211535211615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211533211608%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211535211615%_))
                                                (_%loop211517211564%_
                                                 _%lp-tl211520211585%_
                                                 (cons _%hd211534211612%_
                                                       _%symbol211521211571%_)
                                                 (cons _%hd211531211602%_
                                                       _%method211522211573%_)
                                                 (cons _%hd211528211592%_
                                                       _%type-t211523211575%_))
                                                (_%g211506211541%_
                                                 _%g211507211545%_))))
                                        (_%g211506211541%_
                                         _%g211507211545%_))))
                                (_%g211506211541%_ _%g211507211545%_))))
                        (_%g211506211541%_ _%g211507211545%_))))
                (let ((_%symbol211524211618%_ (reverse _%symbol211521211571%_))
                      (_%method211525211621%_ (reverse _%method211522211573%_))
                      (_%type-t211526211623%_
                       (reverse _%type-t211523211575%_)))
                  ((lambda (_%L211626%_ _%L211628%_ _%L211629%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L211626%_
                                _%L211628%_
                                _%L211629%_))
                             (let ((__tmp217563
                                    (lambda (_%g211645211650%_
                                             _%g211646211653%_
                                             _%g211647211655%_
                                             _%g211648211657%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g211647211655%_
                                                        (cons _%g211646211653%_
                                                              (cons _%g211645211650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g211648211657%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp217563
                                '()
                                _%L211626%_
                                _%L211628%_
                                _%L211629%_)))))
                   _%symbol211524211618%_
                   _%method211525211621%_
                   _%type-t211526211623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211517211564%_
                                           _%target211514211558%_
                                           '()
                                           '()
                                           '()))
                                        (_%g211506211541%_
                                         _%g211507211545%_)))))
                              (_%g211506211541%_ _%g211507211545%_))))
                      (_%g211506211541%_ _%g211507211545%_)))))
          (_%g211505211660%_ _%$stx211502%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx211665%_)
        (let* ((_%g211669211702%_
                (lambda (_%g211670211698%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211670211698%_))))
               (_%g211668211816%_
                (lambda (_%g211670211706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211670211706%_))
                      (let ((_%e211674211709%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211670211706%_))))
                        (let ((_%hd211675211713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211674211709%_)))
                              (_%tl211676211716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211674211709%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211676211716%_))
                              (let ((_%e211677211719%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211676211716%_))))
                                (let ((_%hd211678211723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211677211719%_)))
                                      (_%tl211679211726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211677211719%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl211679211726%_))
                                      (let ((_g217564_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl211679211726%_
                                                '0))))
                                        (begin
                                          (let ((_g217565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g217564_)
                                                       (##values-length
                                                        _g217564_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g217565_ 2)))
                                                (error "Context expects 2 values"
                                                       _g217565_)))
                                          (let ((_%target211680211729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g217564_ 0)))
                                                (_%tl211682211732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g217564_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211682211732%_))
                                                (letrec ((_%loop211683211735%_
                                                          (lambda (_%hd211681211739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol211687211742%_
                           _%method211688211744%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211681211739%_))
                        (let ((_%e211684211747%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd211681211739%_))))
                          (let ((_%lp-hd211685211751%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211684211747%_)))
                                (_%lp-tl211686211754%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211684211747%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd211685211751%_))
                                (let ((_%e211691211757%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd211685211751%_))))
                                  (let ((_%hd211692211761%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211691211757%_)))
                                        (_%tl211693211764%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211691211757%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211693211764%_))
                                        (let ((_%e211694211767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl211693211764%_))))
                                          (let ((_%hd211695211771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211694211767%_)))
                                                (_%tl211696211774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211694211767%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211696211774%_))
                                                (_%loop211683211735%_
                                                 _%lp-tl211686211754%_
                                                 (cons _%hd211695211771%_
                                                       _%symbol211687211742%_)
                                                 (cons _%hd211692211761%_
                                                       _%method211688211744%_))
                                                (_%g211669211702%_
                                                 _%g211670211706%_))))
                                        (_%g211669211702%_
                                         _%g211670211706%_))))
                                (_%g211669211702%_ _%g211670211706%_))))
                        (let ((_%symbol211689211777%_
                               (reverse _%symbol211687211742%_))
                              (_%method211690211780%_
                               (reverse _%method211688211744%_)))
                          ((lambda (_%L211783%_ _%L211785%_ _%L211786%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L211783%_
                                        _%L211785%_))
                                     (let ((__tmp217566
                                            (lambda (_%g211804211808%_
                                                     _%g211805211811%_
                                                     _%g211806211813%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L211786%_
                                                                (cons _%g211805211811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g211804211808%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g211806211813%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp217566
                                        '()
                                        _%L211783%_
                                        _%L211785%_)))))
                           _%symbol211689211777%_
                           _%method211690211780%_
                           _%hd211678211723%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop211683211735%_
                                                   _%target211680211729%_
                                                   '()
                                                   '()))
                                                (_%g211669211702%_
                                                 _%g211670211706%_)))))
                                      (_%g211669211702%_ _%g211670211706%_))))
                              (_%g211669211702%_ _%g211670211706%_))))
                      (_%g211669211702%_ _%g211670211706%_)))))
          (_%g211668211816%_ _%$stx211665%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx211821%_)
        (let* ((_%g211825211839%_
                (lambda (_%g211826211835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211826211835%_))))
               (_%g211824211880%_
                (lambda (_%g211826211843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211826211843%_))
                      (let ((_%e211828211846%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211826211843%_))))
                        (let ((_%hd211829211850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211828211846%_)))
                              (_%tl211830211853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211828211846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211830211853%_))
                              (let ((_%e211831211856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211830211853%_))))
                                (let ((_%hd211832211860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211831211856%_)))
                                      (_%tl211833211863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211831211856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211833211863%_))
                                      ((lambda (_%L211866%_)
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
                                                           (cons _%L211866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd211832211860%_)
                                      (_%g211825211839%_ _%g211826211843%_))))
                              (_%g211825211839%_ _%g211826211843%_))))
                      (_%g211825211839%_ _%g211826211843%_)))))
          (_%g211824211880%_ _%$stx211821%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx211884%_)
        (let* ((_%g211888211942%_
                (lambda (_%g211889211938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211889211938%_))))
               (_%g211887212123%_
                (lambda (_%g211889211946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211889211946%_))
                      (let ((_%e211901211949%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211889211946%_))))
                        (let ((_%hd211902211953%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211901211949%_)))
                              (_%tl211903211956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211901211949%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211903211956%_))
                              (let ((_%e211904211959%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211903211956%_))))
                                (let ((_%hd211905211963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211904211959%_)))
                                      (_%tl211906211966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211904211959%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211906211966%_))
                                      (let ((_%e211907211969%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211906211966%_))))
                                        (let ((_%hd211908211973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211907211969%_)))
                                              (_%tl211909211976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211907211969%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211909211976%_))
                                              (let ((_%e211910211979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl211909211976%_))))
                                                (let ((_%hd211911211983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211910211979%_)))
                                                      (_%tl211912211986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211910211979%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211912211986%_))
                                                      (let ((_%e211913211989%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl211912211986%_))))
                (let ((_%hd211914211993%_
                       (let () (declare (not safe)) (##car _%e211913211989%_)))
                      (_%tl211915211996%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e211913211989%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl211915211996%_))
                      (let ((_%e211916211999%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl211915211996%_))))
                        (let ((_%hd211917212003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211916211999%_)))
                              (_%tl211918212006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211916211999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211918212006%_))
                              (let ((_%e211919212009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211918212006%_))))
                                (let ((_%hd211920212013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211919212009%_)))
                                      (_%tl211921212016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211919212009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211921212016%_))
                                      (let ((_%e211922212019%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211921212016%_))))
                                        (let ((_%hd211923212023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211922212019%_)))
                                              (_%tl211924212026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211922212019%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211924212026%_))
                                              (let ((_%e211925212029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl211924212026%_))))
                                                (let ((_%hd211926212033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211925212029%_)))
                                                      (_%tl211927212036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211925212029%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211927212036%_))
                                                      (let ((_%e211928212039%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl211927212036%_))))
                (let ((_%hd211929212043%_
                       (let () (declare (not safe)) (##car _%e211928212039%_)))
                      (_%tl211930212046%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e211928212039%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl211930212046%_))
                      (let ((_%e211931212049%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl211930212046%_))))
                        (let ((_%hd211932212053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211931212049%_)))
                              (_%tl211933212056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211931212049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211933212056%_))
                              (let ((_%e211934212059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211933212056%_))))
                                (let ((_%hd211935212063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211934212059%_)))
                                      (_%tl211936212066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211934212059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211936212066%_))
                                      ((lambda (_%L212069%_
                                                _%L212071%_
                                                _%L212072%_
                                                _%L212073%_
                                                _%L212074%_
                                                _%L212075%_
                                                _%L212076%_
                                                _%L212077%_
                                                _%L212078%_
                                                _%L212079%_
                                                _%L212080%_)
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
                                                           (cons _%L212080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L212079%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L212078%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212077%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L212076%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L212075%_ '()))
                                           (cons _%L212074%_
                                                 (cons _%L212073%_
                                                       (cons _%L212072%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212071%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L212069%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd211935212063%_
                                       _%hd211932212053%_
                                       _%hd211929212043%_
                                       _%hd211926212033%_
                                       _%hd211923212023%_
                                       _%hd211920212013%_
                                       _%hd211917212003%_
                                       _%hd211914211993%_
                                       _%hd211911211983%_
                                       _%hd211908211973%_
                                       _%hd211905211963%_)
                                      (_%g211888211942%_ _%g211889211946%_))))
                              (_%g211888211942%_ _%g211889211946%_))))
                      (_%g211888211942%_ _%g211889211946%_))))
              (_%g211888211942%_ _%g211889211946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g211888211942%_
                                               _%g211889211946%_))))
                                      (_%g211888211942%_ _%g211889211946%_))))
                              (_%g211888211942%_ _%g211889211946%_))))
                      (_%g211888211942%_ _%g211889211946%_))))
              (_%g211888211942%_ _%g211889211946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g211888211942%_
                                               _%g211889211946%_))))
                                      (_%g211888211942%_ _%g211889211946%_))))
                              (_%g211888211942%_ _%g211889211946%_))))
                      (_%g211888211942%_ _%g211889211946%_)))))
          (_%g211887212123%_ _%$stx211884%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx212127%_)
        (let* ((_%g212131212145%_
                (lambda (_%g212132212141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212132212141%_))))
               (_%g212130212186%_
                (lambda (_%g212132212149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212132212149%_))
                      (let ((_%e212134212152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212132212149%_))))
                        (let ((_%hd212135212156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212134212152%_)))
                              (_%tl212136212159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212134212152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212136212159%_))
                              (let ((_%e212137212162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212136212159%_))))
                                (let ((_%hd212138212166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212137212162%_)))
                                      (_%tl212139212169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212137212162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212139212169%_))
                                      ((lambda (_%L212172%_)
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
                                                           (cons _%L212172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212138212166%_)
                                      (_%g212131212145%_ _%g212132212149%_))))
                              (_%g212131212145%_ _%g212132212149%_))))
                      (_%g212131212145%_ _%g212132212149%_)))))
          (_%g212130212186%_ _%$stx212127%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx212190%_)
        (let* ((_%g212194212208%_
                (lambda (_%g212195212204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212195212204%_))))
               (_%g212193212249%_
                (lambda (_%g212195212212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212195212212%_))
                      (let ((_%e212197212215%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212195212212%_))))
                        (let ((_%hd212198212219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212197212215%_)))
                              (_%tl212199212222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212197212215%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212199212222%_))
                              (let ((_%e212200212225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212199212222%_))))
                                (let ((_%hd212201212229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212200212225%_)))
                                      (_%tl212202212232%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212200212225%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212202212232%_))
                                      ((lambda (_%L212235%_)
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
                                                           (cons _%L212235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212201212229%_)
                                      (_%g212194212208%_ _%g212195212212%_))))
                              (_%g212194212208%_ _%g212195212212%_))))
                      (_%g212194212208%_ _%g212195212212%_)))))
          (_%g212193212249%_ _%$stx212190%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx212253%_)
        (let* ((_%g212257212279%_
                (lambda (_%g212258212275%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212258212275%_))))
               (_%g212256212348%_
                (lambda (_%g212258212283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212258212283%_))
                      (let ((_%e212262212286%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212258212283%_))))
                        (let ((_%hd212263212290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212262212286%_)))
                              (_%tl212264212293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212262212286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212264212293%_))
                              (let ((_%e212265212296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212264212293%_))))
                                (let ((_%hd212266212300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212265212296%_)))
                                      (_%tl212267212303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212265212296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212267212303%_))
                                      (let ((_%e212268212306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212267212303%_))))
                                        (let ((_%hd212269212310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212268212306%_)))
                                              (_%tl212270212313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212268212306%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212270212313%_))
                                              (let ((_%e212271212316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212270212313%_))))
                                                (let ((_%hd212272212320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212271212316%_)))
                                                      (_%tl212273212323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212271212316%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212273212323%_))
                                                      ((lambda (_%L212326%_
                                                                _%L212328%_
                                                                _%L212329%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L212329%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L212328%_ '()))
                                   (cons _%L212326%_ '())))))
               _%hd212272212320%_
               _%hd212269212310%_
               _%hd212266212300%_)
              (_%g212257212279%_ _%g212258212283%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212257212279%_
                                               _%g212258212283%_))))
                                      (_%g212257212279%_ _%g212258212283%_))))
                              (_%g212257212279%_ _%g212258212283%_))))
                      (_%g212257212279%_ _%g212258212283%_)))))
          (_%g212256212348%_ _%$stx212253%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx212352%_)
        (let* ((_%g212356212378%_
                (lambda (_%g212357212374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212357212374%_))))
               (_%g212355212447%_
                (lambda (_%g212357212382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212357212382%_))
                      (let ((_%e212361212385%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212357212382%_))))
                        (let ((_%hd212362212389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212361212385%_)))
                              (_%tl212363212392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212361212385%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212363212392%_))
                              (let ((_%e212364212395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212363212392%_))))
                                (let ((_%hd212365212399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212364212395%_)))
                                      (_%tl212366212402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212364212395%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212366212402%_))
                                      (let ((_%e212367212405%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212366212402%_))))
                                        (let ((_%hd212368212409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212367212405%_)))
                                              (_%tl212369212412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212367212405%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212369212412%_))
                                              (let ((_%e212370212415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212369212412%_))))
                                                (let ((_%hd212371212419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212370212415%_)))
                                                      (_%tl212372212422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212370212415%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212372212422%_))
                                                      ((lambda (_%L212425%_
                                                                _%L212427%_
                                                                _%L212428%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L212428%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L212427%_ '()))
                                   (cons _%L212425%_ '())))))
               _%hd212371212419%_
               _%hd212368212409%_
               _%hd212365212399%_)
              (_%g212356212378%_ _%g212357212382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212356212378%_
                                               _%g212357212382%_))))
                                      (_%g212356212378%_ _%g212357212382%_))))
                              (_%g212356212378%_ _%g212357212382%_))))
                      (_%g212356212378%_ _%g212357212382%_)))))
          (_%g212355212447%_ _%$stx212352%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx212451%_)
        (let* ((_%g212455212469%_
                (lambda (_%g212456212465%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212456212465%_))))
               (_%g212454212510%_
                (lambda (_%g212456212473%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212456212473%_))
                      (let ((_%e212458212476%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212456212473%_))))
                        (let ((_%hd212459212480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212458212476%_)))
                              (_%tl212460212483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212458212476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212460212483%_))
                              (let ((_%e212461212486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212460212483%_))))
                                (let ((_%hd212462212490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212461212486%_)))
                                      (_%tl212463212493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212461212486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212463212493%_))
                                      ((lambda (_%L212496%_)
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
                                                           (cons _%L212496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212462212490%_)
                                      (_%g212455212469%_ _%g212456212473%_))))
                              (_%g212455212469%_ _%g212456212473%_))))
                      (_%g212455212469%_ _%g212456212473%_)))))
          (_%g212454212510%_ _%$stx212451%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx212514%_)
        (let* ((_%g212518212536%_
                (lambda (_%g212519212532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212519212532%_))))
               (_%g212517212591%_
                (lambda (_%g212519212540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212519212540%_))
                      (let ((_%e212522212543%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212519212540%_))))
                        (let ((_%hd212523212547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212522212543%_)))
                              (_%tl212524212550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212522212543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212524212550%_))
                              (let ((_%e212525212553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212524212550%_))))
                                (let ((_%hd212526212557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212525212553%_)))
                                      (_%tl212527212560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212525212553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212527212560%_))
                                      (let ((_%e212528212563%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212527212560%_))))
                                        (let ((_%hd212529212567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212528212563%_)))
                                              (_%tl212530212570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212528212563%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212530212570%_))
                                              ((lambda (_%L212573%_
                                                        _%L212575%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L212575%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212573%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd212529212567%_
                                               _%hd212526212557%_)
                                              (_%g212518212536%_
                                               _%g212519212540%_))))
                                      (_%g212518212536%_ _%g212519212540%_))))
                              (_%g212518212536%_ _%g212519212540%_))))
                      (_%g212518212536%_ _%g212519212540%_)))))
          (_%g212517212591%_ _%$stx212514%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx212595%_)
        (let* ((_%__stx216937216938%_ _%$stx212595%_)
               (_%g212602212663%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx216937216938%_)))))
          (let ((_%__kont216940216941%_
                 (lambda (_%L212901%_ _%L212903%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212903%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L212901%_ '()))
                                     '())))))
                (_%__kont216942216943%_
                 (lambda (_%L212840%_ _%L212842%_ _%L212843%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212843%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L212842%_ '()))
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
                                 (cons _%L212840%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont216944216945%_
                 (lambda (_%L212764%_ _%L212766%_)
                   (cons _%L212766%_ (cons _%L212764%_ (cons '#f '())))))
                (_%__kont216946216947%_
                 (lambda (_%L212714%_ _%L212716%_ _%L212717%_)
                   (cons _%L212717%_
                         (cons _%L212716%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L212714%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx216937216938%_))
                (let ((_%e212606212871%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx216937216938%_))))
                  (let ((_%tl212608212878%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212606212871%_)))
                        (_%hd212607212875%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212606212871%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl212608212878%_))
                        (let ((_%e212609212881%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl212608212878%_))))
                          (let ((_%tl212611212888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212609212881%_)))
                                (_%hd212610212885%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212609212881%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl212611212888%_))
                                (let ((_%e212612212891%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl212611212888%_))))
                                  (let ((_%tl212614212898%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212612212891%_)))
                                        (_%hd212613212895%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212612212891%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212614212898%_))
                                        (_%__kont216940216941%_
                                         _%hd212613212895%_
                                         _%hd212610212885%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl212614212898%_))
                                            (let ((_%e212627212816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl212614212898%_))))
                                              (let ((_%tl212629212823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e212627212816%_)))
                                                    (_%hd212628212820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e212627212816%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd212628212820%_))
                                                    (let ((_%e212630212826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd212628212820%_))))
                                                      (if (equal? _%e212630212826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl212629212823%_))
                      (let ((_%e212631212830%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl212629212823%_))))
                        (let ((_%tl212633212837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212631212830%_)))
                              (_%hd212632212834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212631212830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl212633212837%_))
                              (_%__kont216942216943%_
                               _%hd212632212834%_
                               _%hd212613212895%_
                               _%hd212610212885%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd212613212895%_))
                                  (let ((_%e212654212700%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd212613212895%_))))
                                    (declare (not safe))
                                    (_%g212602212663%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g212602212663%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd212613212895%_))
                          (let ((_%e212654212700%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd212613212895%_))))
                            (if (equal? _%e212654212700%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl212629212823%_))
                                    (_%__kont216946216947%_
                                     _%hd212628212820%_
                                     _%hd212610212885%_
                                     _%hd212607212875%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g212602212663%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g212602212663%_))))
                          (let () (declare (not safe)) (_%g212602212663%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd212613212895%_))
                      (let ((_%e212654212700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd212613212895%_))))
                        (if (equal? _%e212654212700%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl212629212823%_))
                                (_%__kont216946216947%_
                                 _%hd212628212820%_
                                 _%hd212610212885%_
                                 _%hd212607212875%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g212602212663%_)))
                            (let () (declare (not safe)) (_%g212602212663%_))))
                      (let () (declare (not safe)) (_%g212602212663%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd212613212895%_))
                                                        (let ((_%e212654212700%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd212613212895%_))))
                  (if (equal? _%e212654212700%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl212629212823%_))
                          (_%__kont216946216947%_
                           _%hd212628212820%_
                           _%hd212610212885%_
                           _%hd212607212875%_)
                          (let () (declare (not safe)) (_%g212602212663%_)))
                      (let () (declare (not safe)) (_%g212602212663%_))))
                (let () (declare (not safe)) (_%g212602212663%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd212613212895%_))
                                                (let ((_%e212654212700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd212613212895%_))))
                                                  (declare (not safe))
                                                  (_%g212602212663%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g212602212663%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl212611212888%_))
                                    (_%__kont216944216945%_
                                     _%hd212610212885%_
                                     _%hd212607212875%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g212602212663%_))))))
                        (let () (declare (not safe)) (_%g212602212663%_)))))
                (let () (declare (not safe)) (_%g212602212663%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx212922%_)
        (let* ((_%g212926212955%_
                (lambda (_%g212927212951%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212927212951%_))))
               (_%g212925213064%_
                (lambda (_%g212927212959%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212927212959%_))
                      (let ((_%e212929212962%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212927212959%_))))
                        (let ((_%hd212930212966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212929212962%_)))
                              (_%tl212931212969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212929212962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl212931212969%_))
                              (let ((_g217567_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl212931212969%_
                                        '0))))
                                (begin
                                  (let ((_g217568_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217567_)
                                               (##values-length _g217567_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217568_ 2)))
                                        (error "Context expects 2 values"
                                               _g217568_)))
                                  (let ((_%target212932212972%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217567_ 0)))
                                        (_%tl212934212975%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217567_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212934212975%_))
                                        (letrec ((_%loop212935212978%_
                                                  (lambda (_%hd212933212982%_
                                                           _%clause212939212985%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd212933212982%_))
                                                        (let ((_%e212936212988%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd212933212982%_))))
                  (let ((_%lp-hd212937212992%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212936212988%_)))
                        (_%lp-tl212938212995%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212936212988%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd212937212992%_))
                        (let ((_g217569_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd212937212992%_
                                  '0))))
                          (begin
                            (let ((_g217570_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g217569_)
                                         (##values-length _g217569_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g217570_ 2)))
                                  (error "Context expects 2 values"
                                         _g217570_)))
                            (let ((_%target212941212998%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g217569_ 0)))
                                  (_%tl212943213001%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g217569_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212943213001%_))
                                  (letrec ((_%loop212944213004%_
                                            (lambda (_%hd212942213008%_
                                                     _%clause212948213011%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd212942213008%_))
                                                  (let ((_%e212945213014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd212942213008%_))))
                                                    (let ((_%lp-hd212946213018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e212945213014%_)))
                                                          (_%lp-tl212947213021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e212945213014%_))))
                                                      (_%loop212944213004%_
                                                       _%lp-tl212947213021%_
                                                       (cons _%lp-hd212946213018%_
                                                             _%clause212948213011%_))))
                                                  (let ((_%clause212949213024%_
                                                         (reverse _%clause212948213011%_)))
                                                    (_%loop212935212978%_
                                                     _%lp-tl212938212995%_
                                                     (cons _%clause212949213024%_
                                                           _%clause212939212985%_)))))))
                                    (_%loop212944213004%_
                                     _%target212941212998%_
                                     '()))
                                  (_%g212926212955%_ _%g212927212959%_)))))
                        (_%g212926212955%_ _%g212927212959%_))))
                (let ((_%clause212940213028%_
                       (reverse _%clause212939212985%_)))
                  ((lambda (_%L213032%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp217571
                                              (lambda (_%g213047213052%_
                                                       _%g213048213055%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp217572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g213049213058%_ _%g213050213061%_)
                             (cons _%g213049213058%_ _%g213050213061%_))))
                      (declare (not safe))
                      (__foldr1 __tmp217572 '() _%g213047213052%_)))
              _%g213048213055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp217571
                                          '()
                                          _%L213032%_)))
                                 '())))
                   _%clause212940213028%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop212935212978%_
                                           _%target212932212972%_
                                           '()))
                                        (_%g212926212955%_
                                         _%g212927212959%_)))))
                              (_%g212926212955%_ _%g212927212959%_))))
                      (_%g212926212955%_ _%g212927212959%_)))))
          (_%g212925213064%_ _%$stx212922%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx213070%_)
        (let* ((_%g213074213092%_
                (lambda (_%g213075213088%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213075213088%_))))
               (_%g213073213147%_
                (lambda (_%g213075213096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213075213096%_))
                      (let ((_%e213078213099%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213075213096%_))))
                        (let ((_%hd213079213103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213078213099%_)))
                              (_%tl213080213106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213078213099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213080213106%_))
                              (let ((_%e213081213109%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213080213106%_))))
                                (let ((_%hd213082213113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213081213109%_)))
                                      (_%tl213083213116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213081213109%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213083213116%_))
                                      (let ((_%e213084213119%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213083213116%_))))
                                        (let ((_%hd213085213123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213084213119%_)))
                                              (_%tl213086213126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213084213119%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213086213126%_))
                                              ((lambda (_%L213129%_
                                                        _%L213131%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213131%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L213129%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213085213123%_
                                               _%hd213082213113%_)
                                              (_%g213074213092%_
                                               _%g213075213096%_))))
                                      (_%g213074213092%_ _%g213075213096%_))))
                              (_%g213074213092%_ _%g213075213096%_))))
                      (_%g213074213092%_ _%g213075213096%_)))))
          (_%g213073213147%_ _%$stx213070%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx213151%_)
        (let* ((_%g213155213173%_
                (lambda (_%g213156213169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213156213169%_))))
               (_%g213154213228%_
                (lambda (_%g213156213177%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213156213177%_))
                      (let ((_%e213159213180%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213156213177%_))))
                        (let ((_%hd213160213184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213159213180%_)))
                              (_%tl213161213187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213159213180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213161213187%_))
                              (let ((_%e213162213190%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213161213187%_))))
                                (let ((_%hd213163213194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213162213190%_)))
                                      (_%tl213164213197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213162213190%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213164213197%_))
                                      (let ((_%e213165213200%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213164213197%_))))
                                        (let ((_%hd213166213204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213165213200%_)))
                                              (_%tl213167213207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213165213200%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213167213207%_))
                                              ((lambda (_%L213210%_
                                                        _%L213212%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213212%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L213210%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213166213204%_
                                               _%hd213163213194%_)
                                              (_%g213155213173%_
                                               _%g213156213177%_))))
                                      (_%g213155213173%_ _%g213156213177%_))))
                              (_%g213155213173%_ _%g213156213177%_))))
                      (_%g213155213173%_ _%g213156213177%_)))))
          (_%g213154213228%_ _%$stx213151%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx213232%_)
        (let* ((_%g213236213265%_
                (lambda (_%g213237213261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213237213261%_))))
               (_%g213235213365%_
                (lambda (_%g213237213269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213237213269%_))
                      (let ((_%e213240213272%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213237213269%_))))
                        (let ((_%hd213241213276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213240213272%_)))
                              (_%tl213242213279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213240213272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213242213279%_))
                              (let ((_g217573_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl213242213279%_
                                        '0))))
                                (begin
                                  (let ((_g217574_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217573_)
                                               (##values-length _g217573_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217574_ 2)))
                                        (error "Context expects 2 values"
                                               _g217574_)))
                                  (let ((_%target213243213282%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217573_ 0)))
                                        (_%tl213245213285%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217573_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213245213285%_))
                                        (letrec ((_%loop213246213288%_
                                                  (lambda (_%hd213244213292%_
                                                           _%rule213250213295%_
                                                           _%proc213251213297%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd213244213292%_))
                                                        (let ((_%e213247213300%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd213244213292%_))))
                  (let ((_%lp-hd213248213304%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213247213300%_)))
                        (_%lp-tl213249213307%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213247213300%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd213248213304%_))
                        (let ((_%e213254213310%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd213248213304%_))))
                          (let ((_%hd213255213314%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e213254213310%_)))
                                (_%tl213256213317%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e213254213310%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl213256213317%_))
                                (let ((_%e213257213320%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl213256213317%_))))
                                  (let ((_%hd213258213324%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e213257213320%_)))
                                        (_%tl213259213327%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e213257213320%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213259213327%_))
                                        (_%loop213246213288%_
                                         _%lp-tl213249213307%_
                                         (cons _%hd213258213324%_
                                               _%rule213250213295%_)
                                         (cons _%hd213255213314%_
                                               _%proc213251213297%_))
                                        (_%g213236213265%_
                                         _%g213237213269%_))))
                                (_%g213236213265%_ _%g213237213269%_))))
                        (_%g213236213265%_ _%g213237213269%_))))
                (let ((_%rule213252213330%_ (reverse _%rule213250213295%_))
                      (_%proc213253213333%_ (reverse _%proc213251213297%_)))
                  ((lambda (_%L213336%_ _%L213338%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L213336%_
                                _%L213338%_))
                             (let ((__tmp217575
                                    (lambda (_%g213353213357%_
                                             _%g213354213360%_
                                             _%g213355213362%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g213354213360%_
                                                        (cons _%g213353213357%_
                                                              '())))
                                            _%g213355213362%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp217575
                                '()
                                _%L213336%_
                                _%L213338%_)))))
                   _%rule213252213330%_
                   _%proc213253213333%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop213246213288%_
                                           _%target213243213282%_
                                           '()
                                           '()))
                                        (_%g213236213265%_
                                         _%g213237213269%_)))))
                              (_%g213236213265%_ _%g213237213269%_))))
                      (_%g213236213265%_ _%g213237213269%_)))))
          (_%g213235213365%_ _%$stx213232%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx213370%_)
        (let* ((_%g213374213392%_
                (lambda (_%g213375213388%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213375213388%_))))
               (_%g213373213447%_
                (lambda (_%g213375213396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213375213396%_))
                      (let ((_%e213378213399%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213375213396%_))))
                        (let ((_%hd213379213403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213378213399%_)))
                              (_%tl213380213406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213378213399%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213380213406%_))
                              (let ((_%e213381213409%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213380213406%_))))
                                (let ((_%hd213382213413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213381213409%_)))
                                      (_%tl213383213416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213381213409%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213383213416%_))
                                      (let ((_%e213384213419%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213383213416%_))))
                                        (let ((_%hd213385213423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213384213419%_)))
                                              (_%tl213386213426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213384213419%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213386213426%_))
                                              ((lambda (_%L213429%_
                                                        _%L213431%_)
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
                                                   (cons _%L213431%_ '()))
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
                 (cons _%L213429%_ '())))
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
                                   (cons _%L213431%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213385213423%_
                                               _%hd213382213413%_)
                                              (_%g213374213392%_
                                               _%g213375213396%_))))
                                      (_%g213374213392%_ _%g213375213396%_))))
                              (_%g213374213392%_ _%g213375213396%_))))
                      (_%g213374213392%_ _%g213375213396%_)))))
          (_%g213373213447%_ _%$stx213370%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx213451%_)
        (let* ((_%__stx217055217056%_ _%$stx213451%_)
               (_%g213456213481%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217055217056%_)))))
          (let ((_%__kont217058217059%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont217060217061%_
                 (lambda (_%L213528%_ _%L213530%_ _%L213531%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L213531%_ (cons _%L213530%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L213528%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217055217056%_))
                (let ((_%e213458213557%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217055217056%_))))
                  (let ((_%tl213460213564%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213458213557%_)))
                        (_%hd213459213561%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213458213557%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl213460213564%_))
                        (_%__kont217058217059%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl213460213564%_))
                            (let ((_%e213467213498%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl213460213564%_))))
                              (let ((_%tl213469213505%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e213467213498%_)))
                                    (_%hd213468213502%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e213467213498%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd213468213502%_))
                                    (let ((_%e213470213508%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd213468213502%_))))
                                      (let ((_%tl213472213515%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e213470213508%_)))
                                            (_%hd213471213512%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e213470213508%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl213472213515%_))
                                            (let ((_%e213473213518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl213472213515%_))))
                                              (let ((_%tl213475213525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e213473213518%_)))
                                                    (_%hd213474213522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e213473213518%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl213475213525%_))
                                                    (_%__kont217060217061%_
                                                     _%tl213469213505%_
                                                     _%hd213474213522%_
                                                     _%hd213471213512%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g213456213481%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g213456213481%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g213456213481%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g213456213481%_))))))
                (let () (declare (not safe)) (_%g213456213481%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx213575%_)
        (let* ((_%__stx217099217100%_ _%$stx213575%_)
               (_%g213580213611%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217099217100%_)))))
          (let ((_%__kont217102217103%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont217104217105%_
                 (lambda (_%L213678%_ _%L213680%_ _%L213681%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L213681%_
                                           (let ((__tmp217576
                                                  (lambda (_%g213701213704%_
                                                           _%g213702213707%_)
                                                    (cons _%g213701213704%_
                                                          _%g213702213707%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp217576
                                              '()
                                              _%L213680%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L213678%_)
                                     '()))))))
            (let ((_%__match217142217143%_
                   (lambda (_%e213588213618%_
                            _%hd213589213622%_
                            _%tl213590213625%_
                            _%e213591213628%_
                            _%hd213592213632%_
                            _%tl213593213635%_
                            _%e213594213638%_
                            _%hd213595213642%_
                            _%tl213596213645%_
                            _%__splice217106217107%_
                            _%target213597213648%_
                            _%tl213599213651%_)
                     (letrec ((_%loop213600213654%_
                               (lambda (_%hd213598213658%_ _%sig213604213661%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd213598213658%_))
                                     (let ((_%e213601213664%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd213598213658%_))))
                                       (let ((_%lp-tl213603213671%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e213601213664%_)))
                                             (_%lp-hd213602213668%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e213601213664%_))))
                                         (_%loop213600213654%_
                                          _%lp-tl213603213671%_
                                          (cons _%lp-hd213602213668%_
                                                _%sig213604213661%_))))
                                     (let ((_%sig213605213674%_
                                            (reverse _%sig213604213661%_)))
                                       (_%__kont217104217105%_
                                        _%tl213593213635%_
                                        _%sig213605213674%_
                                        _%hd213595213642%_))))))
                       (_%loop213600213654%_ _%target213597213648%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217099217100%_))
                  (let ((_%e213582213717%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217099217100%_))))
                    (let ((_%tl213584213724%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e213582213717%_)))
                          (_%hd213583213721%_
                           (let ()
                             (declare (not safe))
                             (##car _%e213582213717%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl213584213724%_))
                          (_%__kont217102217103%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213584213724%_))
                              (let ((_%e213591213628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213584213724%_))))
                                (let ((_%tl213593213635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213591213628%_)))
                                      (_%hd213592213632%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213591213628%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd213592213632%_))
                                      (let ((_%e213594213638%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd213592213632%_))))
                                        (let ((_%tl213596213645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213594213638%_)))
                                              (_%hd213595213642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213594213638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl213596213645%_))
                                              (let ((_%__splice217106217107%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl213596213645%_
                                                        '0))))
                                                (let ((_%tl213599213651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217106217107%_
                                                          '1)))
                                                      (_%target213597213648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217106217107%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl213599213651%_))
                                                      (_%__match217142217143%_
                                                       _%e213582213717%_
                                                       _%hd213583213721%_
                                                       _%tl213584213724%_
                                                       _%e213591213628%_
                                                       _%hd213592213632%_
                                                       _%tl213593213635%_
                                                       _%e213594213638%_
                                                       _%hd213595213642%_
                                                       _%tl213596213645%_
                                                       _%__splice217106217107%_
                                                       _%target213597213648%_
                                                       _%tl213599213651%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g213580213611%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g213580213611%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g213580213611%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g213580213611%_))))))
                  (let () (declare (not safe)) (_%g213580213611%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx213736%_)
        (let* ((_%__stx217145217146%_ _%$stx213736%_)
               (_%g213741213788%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217145217146%_)))))
          (let ((_%__kont217148217149%_
                 (lambda (_%L213950%_ _%L213952%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L213952%_
                               (let ((__tmp217577
                                      (lambda (_%g213972213975%_
                                               _%g213973213978%_)
                                        (cons _%g213972213975%_
                                              _%g213973213978%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp217577 '() _%L213950%_))))))
                (_%__kont217152217153%_
                 (lambda (_%L213845%_ _%L213847%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L213847%_
                               (let ((__tmp217578
                                      (lambda (_%g213864213867%_
                                               _%g213865213870%_)
                                        (cons _%g213864213867%_
                                              _%g213865213870%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp217578 '() _%L213845%_)))))))
            (let* ((_%__match217212217213%_
                    (lambda (_%e213768213795%_
                             _%hd213769213799%_
                             _%tl213770213802%_
                             _%e213771213805%_
                             _%hd213772213809%_
                             _%tl213773213812%_
                             _%__splice217154217155%_
                             _%target213774213815%_
                             _%tl213776213818%_)
                      (letrec ((_%loop213777213821%_
                                (lambda (_%hd213775213825%_
                                         _%sig213781213828%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd213775213825%_))
                                      (let ((_%e213778213831%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd213775213825%_))))
                                        (let ((_%lp-tl213780213838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213778213831%_)))
                                              (_%lp-hd213779213835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213778213831%_))))
                                          (_%loop213777213821%_
                                           _%lp-tl213780213838%_
                                           (cons _%lp-hd213779213835%_
                                                 _%sig213781213828%_))))
                                      (let ((_%sig213782213841%_
                                             (reverse _%sig213781213828%_)))
                                        (_%__kont217152217153%_
                                         _%sig213782213841%_
                                         _%hd213772213809%_))))))
                        (_%loop213777213821%_ _%target213774213815%_ '()))))
                   (_%__match217204217205%_
                    (lambda (_%e213768213795%_
                             _%hd213769213799%_
                             _%tl213770213802%_
                             _%e213771213805%_
                             _%hd213772213809%_
                             _%tl213773213812%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl213773213812%_))
                          (let ((_%__splice217154217155%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl213773213812%_
                                    '0))))
                            (let ((_%tl213776213818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice217154217155%_
                                      '1)))
                                  (_%target213774213815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice217154217155%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl213776213818%_))
                                  (_%__match217212217213%_
                                   _%e213768213795%_
                                   _%hd213769213799%_
                                   _%tl213770213802%_
                                   _%e213771213805%_
                                   _%hd213772213809%_
                                   _%tl213773213812%_
                                   _%__splice217154217155%_
                                   _%target213774213815%_
                                   _%tl213776213818%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g213741213788%_)))))
                          (let () (declare (not safe)) (_%g213741213788%_)))))
                   (_%__match217192217193%_
                    (lambda (_%e213745213880%_
                             _%hd213746213884%_
                             _%tl213747213887%_
                             _%e213748213890%_
                             _%hd213749213894%_
                             _%tl213750213897%_
                             _%e213751213900%_
                             _%hd213752213904%_
                             _%tl213753213907%_
                             _%e213754213910%_
                             _%hd213755213914%_
                             _%tl213756213917%_
                             _%__splice217150217151%_
                             _%target213757213920%_
                             _%tl213759213923%_)
                      (letrec ((_%loop213760213926%_
                                (lambda (_%hd213758213930%_
                                         _%sig213764213933%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd213758213930%_))
                                      (let ((_%e213761213936%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd213758213930%_))))
                                        (let ((_%lp-tl213763213943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213761213936%_)))
                                              (_%lp-hd213762213940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213761213936%_))))
                                          (_%loop213760213926%_
                                           _%lp-tl213763213943%_
                                           (cons _%lp-hd213762213940%_
                                                 _%sig213764213933%_))))
                                      (let ((_%sig213765213946%_
                                             (reverse _%sig213764213933%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl213753213907%_))
                                            (_%__kont217148217149%_
                                             _%sig213765213946%_
                                             _%hd213749213894%_)
                                            (_%__match217204217205%_
                                             _%e213745213880%_
                                             _%hd213746213884%_
                                             _%tl213747213887%_
                                             _%e213748213890%_
                                             _%hd213749213894%_
                                             _%tl213750213897%_)))))))
                        (_%loop213760213926%_ _%target213757213920%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217145217146%_))
                  (let ((_%e213745213880%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217145217146%_))))
                    (let ((_%tl213747213887%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e213745213880%_)))
                          (_%hd213746213884%_
                           (let ()
                             (declare (not safe))
                             (##car _%e213745213880%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl213747213887%_))
                          (let ((_%e213748213890%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl213747213887%_))))
                            (let ((_%tl213750213897%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e213748213890%_)))
                                  (_%hd213749213894%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e213748213890%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl213750213897%_))
                                  (let ((_%e213751213900%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl213750213897%_))))
                                    (let ((_%tl213753213907%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e213751213900%_)))
                                          (_%hd213752213904%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e213751213900%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd213752213904%_))
                                          (let ((_%e213754213910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd213752213904%_))))
                                            (let ((_%tl213756213917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e213754213910%_)))
                                                  (_%hd213755213914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e213754213910%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd213755213914%_))
                                                  (if (let ((__tmp217579
                                                             |gxc[1]#_g217580_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp217579
                                                         _%hd213755213914%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl213756213917%_))
                                                          (let ((_%__splice217150217151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl213756213917%_
                            '0))))
                    (let ((_%tl213759213923%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217150217151%_ '1)))
                          (_%target213757213920%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217150217151%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl213759213923%_))
                          (_%__match217192217193%_
                           _%e213745213880%_
                           _%hd213746213884%_
                           _%tl213747213887%_
                           _%e213748213890%_
                           _%hd213749213894%_
                           _%tl213750213897%_
                           _%e213751213900%_
                           _%hd213752213904%_
                           _%tl213753213907%_
                           _%e213754213910%_
                           _%hd213755213914%_
                           _%tl213756213917%_
                           _%__splice217150217151%_
                           _%target213757213920%_
                           _%tl213759213923%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213750213897%_))
                              (let ((_%__splice217154217155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl213750213897%_
                                        '0))))
                                (let ((_%tl213776213818%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice217154217155%_
                                          '1)))
                                      (_%target213774213815%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice217154217155%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl213776213818%_))
                                      (_%__match217212217213%_
                                       _%e213745213880%_
                                       _%hd213746213884%_
                                       _%tl213747213887%_
                                       _%e213748213890%_
                                       _%hd213749213894%_
                                       _%tl213750213897%_
                                       _%__splice217154217155%_
                                       _%target213774213815%_
                                       _%tl213776213818%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g213741213788%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g213741213788%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl213750213897%_))
                      (let ((_%__splice217154217155%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl213750213897%_
                                '0))))
                        (let ((_%tl213776213818%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217154217155%_ '1)))
                              (_%target213774213815%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217154217155%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl213776213818%_))
                              (_%__match217212217213%_
                               _%e213745213880%_
                               _%hd213746213884%_
                               _%tl213747213887%_
                               _%e213748213890%_
                               _%hd213749213894%_
                               _%tl213750213897%_
                               _%__splice217154217155%_
                               _%target213774213815%_
                               _%tl213776213818%_)
                              (let ()
                                (declare (not safe))
                                (_%g213741213788%_)))))
                      (let () (declare (not safe)) (_%g213741213788%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl213750213897%_))
                  (let ((_%__splice217154217155%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl213750213897%_
                            '0))))
                    (let ((_%tl213776213818%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217154217155%_ '1)))
                          (_%target213774213815%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217154217155%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl213776213818%_))
                          (_%__match217212217213%_
                           _%e213745213880%_
                           _%hd213746213884%_
                           _%tl213747213887%_
                           _%e213748213890%_
                           _%hd213749213894%_
                           _%tl213750213897%_
                           _%__splice217154217155%_
                           _%target213774213815%_
                           _%tl213776213818%_)
                          (let () (declare (not safe)) (_%g213741213788%_)))))
                  (let () (declare (not safe)) (_%g213741213788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl213750213897%_))
                                                      (let ((_%__splice217154217155%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl213750213897%_
                        '0))))
                (let ((_%tl213776213818%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice217154217155%_ '1)))
                      (_%target213774213815%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice217154217155%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl213776213818%_))
                      (_%__match217212217213%_
                       _%e213745213880%_
                       _%hd213746213884%_
                       _%tl213747213887%_
                       _%e213748213890%_
                       _%hd213749213894%_
                       _%tl213750213897%_
                       _%__splice217154217155%_
                       _%target213774213815%_
                       _%tl213776213818%_)
                      (let () (declare (not safe)) (_%g213741213788%_)))))
              (let () (declare (not safe)) (_%g213741213788%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl213750213897%_))
                                              (let ((_%__splice217154217155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl213750213897%_
                                                        '0))))
                                                (let ((_%tl213776213818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217154217155%_
                                                          '1)))
                                                      (_%target213774213815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217154217155%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl213776213818%_))
                                                      (_%__match217212217213%_
                                                       _%e213745213880%_
                                                       _%hd213746213884%_
                                                       _%tl213747213887%_
                                                       _%e213748213890%_
                                                       _%hd213749213894%_
                                                       _%tl213750213897%_
                                                       _%__splice217154217155%_
                                                       _%target213774213815%_
                                                       _%tl213776213818%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g213741213788%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g213741213788%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl213750213897%_))
                                      (let ((_%__splice217154217155%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl213750213897%_
                                                '0))))
                                        (let ((_%tl213776213818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217154217155%_
                                                  '1)))
                                              (_%target213774213815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217154217155%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213776213818%_))
                                              (_%__match217212217213%_
                                               _%e213745213880%_
                                               _%hd213746213884%_
                                               _%tl213747213887%_
                                               _%e213748213890%_
                                               _%hd213749213894%_
                                               _%tl213750213897%_
                                               _%__splice217154217155%_
                                               _%target213774213815%_
                                               _%tl213776213818%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g213741213788%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g213741213788%_))))))
                          (let () (declare (not safe)) (_%g213741213788%_)))))
                  (let () (declare (not safe)) (_%g213741213788%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx215135%_ _%id215137%_)
        (let ((_%proc215141%_
               (let ((__tmp217581
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id215137%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp217581))))
          (if (procedure? _%proc215141%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx215135%_
                 _%id215137%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx215126%_ _%id215128%_)
        (let ((_%klass215132%_
               (let ((__tmp217582
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id215128%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp217582))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass215132%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx215126%_
                 _%id215128%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx214376%_ _%proc214378%_ _%sig214379%_)
        (letrec ((_%signature-arity214381%_
                  (lambda (_%args215058%_)
                    (let _%loop215061%_ ((_%rest215064%_ _%args215058%_)
                                         (_%count215066%_ '0))
                      (let* ((_%rest215067215078%_ _%rest215064%_)
                             (_%E215071215084%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest215067215078%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K215074215115%_
                               (lambda (_%rest215112%_)
                                 (_%loop215061%_
                                  _%rest215112%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count215066%_ '1)))))
                              (_%K215073215104%_ (lambda () _%count215066%_))
                              (_%K215072215092%_
                               (lambda () (cons _%count215066%_ '()))))
                          (let ((_%try-match215069215108%_
                                 (lambda ()
                                   (if (null? _%rest215067215078%_)
                                       (_%K215073215104%_)
                                       (_%K215072215092%_)))))
                            (if (pair? _%rest215067215078%_)
                                (let* ((_%tl215076215119%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest215067215078%_)))
                                       (_%rest215123%_ _%tl215076215119%_))
                                  (_%K215074215115%_ _%rest215123%_))
                                (_%try-match215069215108%_))))))))
                 (_%make-signature214383%_
                  (lambda (_%args214940%_
                           _%return214942%_
                           _%effect214943%_
                           _%unchecked214944%_)
                    (let ((__tmp217583
                           (lambda (_%g214945214947%_)
                             (|gxc[1]#verify-class!|
                              _%ctx214376%_
                              _%g214945214947%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp217583 _%args214940%_))
                    (|gxc[1]#verify-class!| _%ctx214376%_ _%return214942%_)
                    (if _%unchecked214944%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx214376%_
                         _%unchecked214944%_)
                        '#!void)
                    (let ((_%arity214951%_
                           (_%signature-arity214381%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args214940%_)))))
                      (if _%effect214943%_
                          (let ((_%effect214954%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect214943%_))))
                            (if (and (list? _%effect214954%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect214954%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx214376%_
                                   _%proc214378%_
                                   _%effect214954%_))))
                          '#!void)
                      (cons _%arity214951%_
                            (cons (let* ((_%g214957214980%_
                                          (lambda (_%g214958214976%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g214958214976%_))))
                                         (_%g214956215054%_
                                          (lambda (_%g214958214984%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g214958214984%_))
                                                (let ((_%e214963214987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g214958214984%_))))
                                                  (let ((_%hd214964214991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214963214987%_)))
                                                        (_%tl214965214994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214963214987%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl214965214994%_))
                                                        (let ((_%e214966214997%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl214965214994%_))))
                  (let ((_%hd214967215001%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214966214997%_)))
                        (_%tl214968215004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214966214997%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl214968215004%_))
                        (let ((_%e214969215007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214968215004%_))))
                          (let ((_%hd214970215011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214969215007%_)))
                                (_%tl214971215014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214969215007%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214971215014%_))
                                (let ((_%e214972215017%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214971215014%_))))
                                  (let ((_%hd214973215021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214972215017%_)))
                                        (_%tl214974215024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214972215017%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214974215024%_))
                                        ((lambda (_%L215027%_
                                                  _%L215029%_
                                                  _%L215030%_
                                                  _%L215031%_)
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
                           (cons _%L215031%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L215030%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L215029%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L215027%_ '()))
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
                                         _%hd214973215021%_
                                         _%hd214970215011%_
                                         _%hd214967215001%_
                                         _%hd214964214991%_)
                                        (_%g214957214980%_
                                         _%g214958214984%_))))
                                (_%g214957214980%_ _%g214958214984%_))))
                        (_%g214957214980%_ _%g214958214984%_))))
                (_%g214957214980%_ _%g214958214984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g214957214980%_
                                                 _%g214958214984%_)))))
                                    (_%g214956215054%_
                                     (list _%args214940%_
                                           _%return214942%_
                                           _%effect214943%_
                                           _%unchecked214944%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx214376%_ _%proc214378%_)
          (let* ((_%__stx217223217224%_ _%sig214379%_)
                 (_%g214390214493%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx217223217224%_)))))
            (let ((_%__kont217226217227%_
                   (lambda (_%L214921%_ _%L214923%_)
                     (_%make-signature214383%_
                      _%L214923%_
                      _%L214921%_
                      '#f
                      '#f)))
                  (_%__kont217228217229%_
                   (lambda (_%L214872%_ _%L214874%_ _%L214875%_)
                     (_%make-signature214383%_
                      _%L214875%_
                      _%L214874%_
                      _%L214872%_
                      '#f)))
                  (_%__kont217230217231%_
                   (lambda (_%L214796%_ _%L214798%_ _%L214799%_)
                     (_%make-signature214383%_
                      _%L214799%_
                      _%L214798%_
                      _%L214796%_
                      (let ((__tmp217584
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc214378%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp217584)))))
                  (_%__kont217232217233%_
                   (lambda (_%L214702%_ _%L214704%_ _%L214705%_ _%L214706%_)
                     (_%make-signature214383%_
                      _%L214706%_
                      _%L214705%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L214702%_)))))
                  (_%__kont217234217235%_
                   (lambda (_%L214609%_ _%L214611%_)
                     (_%make-signature214383%_
                      _%L214611%_
                      _%L214609%_
                      '#f
                      (let ((__tmp217585
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc214378%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp217585)))))
                  (_%__kont217236217237%_
                   (lambda (_%L214544%_ _%L214546%_ _%L214547%_)
                     (_%make-signature214383%_
                      _%L214547%_
                      _%L214546%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L214544%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217223217224%_))
                  (let ((_%e214394214901%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217223217224%_))))
                    (let ((_%tl214396214908%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214394214901%_)))
                          (_%hd214395214905%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214394214901%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214396214908%_))
                          (let ((_%e214397214911%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl214396214908%_))))
                            (let ((_%tl214399214918%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214397214911%_)))
                                  (_%hd214398214915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214397214911%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl214399214918%_))
                                  (_%__kont217226217227%_
                                   _%hd214398214915%_
                                   _%hd214395214905%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214399214918%_))
                                      (let ((_%e214409214848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214399214918%_))))
                                        (let ((_%tl214411214855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214409214848%_)))
                                              (_%hd214410214852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214409214848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd214410214852%_))
                                              (let ((_%e214412214858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd214410214852%_))))
                                                (if (equal? _%e214412214858%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl214411214855%_))
                                                        (let ((_%e214413214862%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl214411214855%_))))
                  (let ((_%tl214415214869%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214413214862%_)))
                        (_%hd214414214866%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214413214862%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl214415214869%_))
                        (_%__kont217228217229%_
                         _%hd214414214866%_
                         _%hd214398214915%_
                         _%hd214395214905%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl214415214869%_))
                            (let ((_%e214432214782%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl214415214869%_))))
                              (let ((_%tl214434214789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e214432214782%_)))
                                    (_%hd214433214786%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e214432214782%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd214433214786%_))
                                    (let ((_%e214435214792%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd214433214786%_))))
                                      (if (equal? _%e214435214792%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214434214789%_))
                                              (_%__kont217230217231%_
                                               _%hd214414214866%_
                                               _%hd214398214915%_
                                               _%hd214395214905%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214434214789%_))
                                                  (let ((_%e214457214692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl214434214789%_))))
                                                    (let ((_%tl214459214699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214457214692%_)))
                                                          (_%hd214458214696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214457214692%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl214459214699%_))
                                                          (_%__kont217232217233%_
                                                           _%hd214458214696%_
                                                           _%hd214414214866%_
                                                           _%hd214398214915%_
                                                           _%hd214395214905%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g214390214493%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214390214493%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214390214493%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g214390214493%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g214390214493%_))))))
                (let () (declare (not safe)) (_%g214390214493%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e214412214858%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl214411214855%_))
                                                            (_%__kont217234217235%_
                                                             _%hd214398214915%_
                                                             _%hd214395214905%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl214411214855%_))
                        (let ((_%e214485214534%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214411214855%_))))
                          (let ((_%tl214487214541%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214485214534%_)))
                                (_%hd214486214538%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214485214534%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl214487214541%_))
                                (_%__kont217236217237%_
                                 _%hd214486214538%_
                                 _%hd214398214915%_
                                 _%hd214395214905%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g214390214493%_)))))
                        (let () (declare (not safe)) (_%g214390214493%_))))
                (let () (declare (not safe)) (_%g214390214493%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g214390214493%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214390214493%_))))))
                          (let () (declare (not safe)) (_%g214390214493%_)))))
                  (let () (declare (not safe)) (_%g214390214493%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig213987%_)
        (let* ((_%g213990214070%_
                (lambda (_%g213991214066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213991214066%_))))
               (_%g213989214372%_
                (lambda (_%g213991214074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213991214074%_))
                      (let ((_%e213997214077%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213991214074%_))))
                        (let ((_%hd213998214081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213997214077%_)))
                              (_%tl213999214084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213997214077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213999214084%_))
                              (let ((_%e214000214087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213999214084%_))))
                                (let ((_%hd214001214091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214000214087%_)))
                                      (_%tl214002214094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214000214087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd214001214091%_))
                                      (let ((_%e214003214097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd214001214091%_))))
                                        (if (equal? _%e214003214097%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl214002214094%_))
                                                (let ((_%e214004214101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl214002214094%_))))
                                                  (let ((_%hd214005214105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214004214101%_)))
                                                        (_%tl214006214108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214004214101%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd214005214105%_))
                                                        (let ((_%e214007214111%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd214005214105%_))))
                  (let ((_%hd214008214115%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214007214111%_)))
                        (_%tl214009214118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214007214111%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd214008214115%_))
                        (if (let ((__tmp217586 |gxc[1]#_g217587_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp217586
                               _%hd214008214115%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214009214118%_))
                                (let ((_%e214010214121%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214009214118%_))))
                                  (let ((_%hd214011214125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214010214121%_)))
                                        (_%tl214012214128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214010214121%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214012214128%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl214006214108%_))
                                            (let ((_%e214013214131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl214006214108%_))))
                                              (let ((_%hd214014214135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e214013214131%_)))
                                                    (_%tl214015214138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e214013214131%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd214014214135%_))
                                                    (let ((_%e214016214141%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd214014214135%_))))
                                                      (if (equal? _%e214016214141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl214015214138%_))
                      (let ((_%e214017214145%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl214015214138%_))))
                        (let ((_%hd214018214149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214017214145%_)))
                              (_%tl214019214152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214017214145%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd214018214149%_))
                              (let ((_%e214020214155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd214018214149%_))))
                                (let ((_%hd214021214159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214020214155%_)))
                                      (_%tl214022214162%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214020214155%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd214021214159%_))
                                      (if (let ((__tmp217588
                                                 |gxc[1]#_g217589_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp217588
                                             _%hd214021214159%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214022214162%_))
                                              (let ((_%e214023214165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl214022214162%_))))
                                                (let ((_%hd214024214169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214023214165%_)))
                                                      (_%tl214025214172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214023214165%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214025214172%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214019214152%_))
                                                          (let ((_%e214026214175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl214019214152%_))))
                    (let ((_%hd214027214179%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214026214175%_)))
                          (_%tl214028214182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214026214175%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd214027214179%_))
                          (let ((_%e214029214185%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd214027214179%_))))
                            (if (equal? _%e214029214185%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl214028214182%_))
                                    (let ((_%e214030214189%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl214028214182%_))))
                                      (let ((_%hd214031214193%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e214030214189%_)))
                                            (_%tl214032214196%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e214030214189%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd214031214193%_))
                                            (let ((_%e214033214199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd214031214193%_))))
                                              (let ((_%hd214034214203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e214033214199%_)))
                                                    (_%tl214035214206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e214033214199%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd214034214203%_))
                                                    (if (let ((__tmp217590
                                                               |gxc[1]#_g217591_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp217590
                                                           _%hd214034214203%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl214035214206%_))
                                                            (let ((_%e214036214209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl214035214206%_))))
                      (let ((_%hd214037214213%_
                             (let ()
                               (declare (not safe))
                               (##car _%e214036214209%_)))
                            (_%tl214038214216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e214036214209%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl214038214216%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214032214196%_))
                                (let ((_%e214039214219%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214032214196%_))))
                                  (let ((_%hd214040214223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214039214219%_)))
                                        (_%tl214041214226%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214039214219%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd214040214223%_))
                                        (let ((_%e214042214229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd214040214223%_))))
                                          (if (equal? _%e214042214229%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214041214226%_))
                                                  (let ((_%e214043214233%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl214041214226%_))))
                                                    (let ((_%hd214044214237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214043214233%_)))
                                                          (_%tl214045214240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214043214233%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd214044214237%_))
                                                          (let ((_%e214046214243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd214044214237%_))))
                    (let ((_%hd214047214247%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214046214243%_)))
                          (_%tl214048214250%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214046214243%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd214047214247%_))
                          (if (let ((__tmp217592 |gxc[1]#_g217593_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp217592
                                 _%hd214047214247%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214048214250%_))
                                  (let ((_%e214049214253%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl214048214250%_))))
                                    (let ((_%hd214050214257%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214049214253%_)))
                                          (_%tl214051214260%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214049214253%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl214051214260%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214045214240%_))
                                              (let ((_%e214052214263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl214045214240%_))))
                                                (let ((_%hd214053214267%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214052214263%_)))
                                                      (_%tl214054214270%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214052214263%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd214053214267%_))
                                                      (let ((_%e214055214273%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd214053214267%_))))
                (if (equal? _%e214055214273%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl214054214270%_))
                        (let ((_%e214056214277%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214054214270%_))))
                          (let ((_%hd214057214281%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214056214277%_)))
                                (_%tl214058214284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214056214277%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd214057214281%_))
                                (let ((_%e214059214287%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd214057214281%_))))
                                  (let ((_%hd214060214291%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214059214287%_)))
                                        (_%tl214061214294%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214059214287%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd214060214291%_))
                                        (if (let ((__tmp217594
                                                   |gxc[1]#_g217595_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp217594
                                               _%hd214060214291%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl214061214294%_))
                                                (let ((_%e214062214297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl214061214294%_))))
                                                  (let ((_%hd214063214301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214062214297%_)))
                                                        (_%tl214064214304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214062214297%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl214064214304%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl214058214284%_))
                                                            ((lambda (_%L214307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L214309%_
                              _%L214310%_
                              _%L214311%_
                              _%L214312%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L214309%_))
                           (cons _%L214309%_
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
                       (cons _%L214311%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L214307%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd214063214301%_
                     _%hd214050214257%_
                     _%hd214037214213%_
                     _%hd214024214169%_
                     _%hd214011214125%_)
                    (_%g213990214070%_ _%g213991214074%_))
                (_%g213990214070%_ _%g213991214074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g213990214070%_
                                                 _%g213991214074%_))
                                            (_%g213990214070%_
                                             _%g213991214074%_))
                                        (_%g213990214070%_
                                         _%g213991214074%_))))
                                (_%g213990214070%_ _%g213991214074%_))))
                        (_%g213990214070%_ _%g213991214074%_))
                    (_%g213990214070%_ _%g213991214074%_)))
              (_%g213990214070%_ _%g213991214074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g213990214070%_
                                               _%g213991214074%_))
                                          (_%g213990214070%_
                                           _%g213991214074%_))))
                                  (_%g213990214070%_ _%g213991214074%_))
                              (_%g213990214070%_ _%g213991214074%_))
                          (_%g213990214070%_ _%g213991214074%_))))
                  (_%g213990214070%_ _%g213991214074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g213990214070%_
                                                   _%g213991214074%_))
                                              (_%g213990214070%_
                                               _%g213991214074%_)))
                                        (_%g213990214070%_
                                         _%g213991214074%_))))
                                (_%g213990214070%_ _%g213991214074%_))
                            (_%g213990214070%_ _%g213991214074%_))))
                    (_%g213990214070%_ _%g213991214074%_))
                (_%g213990214070%_ _%g213991214074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g213990214070%_
                                                     _%g213991214074%_))))
                                            (_%g213990214070%_
                                             _%g213991214074%_))))
                                    (_%g213990214070%_ _%g213991214074%_))
                                (_%g213990214070%_ _%g213991214074%_)))
                          (_%g213990214070%_ _%g213991214074%_))))
                  (_%g213990214070%_ _%g213991214074%_))
              (_%g213990214070%_ _%g213991214074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g213990214070%_
                                               _%g213991214074%_))
                                          (_%g213990214070%_
                                           _%g213991214074%_))
                                      (_%g213990214070%_ _%g213991214074%_))))
                              (_%g213990214070%_ _%g213991214074%_))))
                      (_%g213990214070%_ _%g213991214074%_))
                  (_%g213990214070%_ _%g213991214074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g213990214070%_
                                                     _%g213991214074%_))))
                                            (_%g213990214070%_
                                             _%g213991214074%_))
                                        (_%g213990214070%_
                                         _%g213991214074%_))))
                                (_%g213990214070%_ _%g213991214074%_))
                            (_%g213990214070%_ _%g213991214074%_))
                        (_%g213990214070%_ _%g213991214074%_))))
                (_%g213990214070%_ _%g213991214074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g213990214070%_
                                                 _%g213991214074%_))
                                            (_%g213990214070%_
                                             _%g213991214074%_)))
                                      (_%g213990214070%_ _%g213991214074%_))))
                              (_%g213990214070%_ _%g213991214074%_))))
                      (_%g213990214070%_ _%g213991214074%_)))))
          (_%g213989214372%_ _%sig213987%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx215144%_)
        (let* ((_%g215147215165%_
                (lambda (_%g215148215161%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215148215161%_))))
               (_%g215146215220%_
                (lambda (_%g215148215169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215148215169%_))
                      (let ((_%e215151215172%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215148215169%_))))
                        (let ((_%hd215152215176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215151215172%_)))
                              (_%tl215153215179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215151215172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215153215179%_))
                              (let ((_%e215154215182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215153215179%_))))
                                (let ((_%hd215155215186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215154215182%_)))
                                      (_%tl215156215189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215154215182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215156215189%_))
                                      (let ((_%e215157215192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215156215189%_))))
                                        (let ((_%hd215158215196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215157215192%_)))
                                              (_%tl215159215199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215157215192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl215159215199%_))
                                              ((lambda (_%L215202%_
                                                        _%L215204%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L215204%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L215202%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx215144%_
                                                        _%L215204%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx215144%_
                                                        _%L215202%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L215204%_
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
                                                   (cons _%L215202%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215147215165%_
                                                      _%g215148215169%_)))
                                               _%hd215158215196%_
                                               _%hd215155215186%_)
                                              (_%g215147215165%_
                                               _%g215148215169%_))))
                                      (_%g215147215165%_ _%g215148215169%_))))
                              (_%g215147215165%_ _%g215148215169%_))))
                      (_%g215147215165%_ _%g215148215169%_)))))
          (_%g215146215220%_ _%stx215144%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx215224%_)
        (let* ((_%g215227215251%_
                (lambda (_%g215228215247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215228215247%_))))
               (_%g215226215534%_
                (lambda (_%g215228215255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215228215255%_))
                      (let ((_%e215231215258%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215228215255%_))))
                        (let ((_%hd215232215262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215231215258%_)))
                              (_%tl215233215265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215231215258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215233215265%_))
                              (let ((_%e215234215268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215233215265%_))))
                                (let ((_%hd215235215272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215234215268%_)))
                                      (_%tl215236215275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215234215268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215236215275%_))
                                      (let ((_g217596_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215236215275%_
                                                '0))))
                                        (begin
                                          (let ((_g217597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g217596_)
                                                       (##values-length
                                                        _g217596_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g217597_ 2)))
                                                (error "Context expects 2 values"
                                                       _g217597_)))
                                          (let ((_%target215237215278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g217596_ 0)))
                                                (_%tl215239215281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g217596_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215239215281%_))
                                                (letrec ((_%loop215240215284%_
                                                          (lambda (_%hd215238215288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature215244215291%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215238215288%_))
                        (let ((_%e215241215294%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215238215288%_))))
                          (let ((_%lp-hd215242215298%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215241215294%_)))
                                (_%lp-tl215243215301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215241215294%_))))
                            (_%loop215240215284%_
                             _%lp-tl215243215301%_
                             (cons _%lp-hd215242215298%_
                                   _%signature215244215291%_))))
                        (let ((_%signature215245215304%_
                               (reverse _%signature215244215291%_)))
                          ((lambda (_%L215308%_ _%L215310%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L215310%_))
                                 (let* ((_%g215328215343%_
                                         (lambda (_%g215329215339%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g215329215339%_))))
                                        (_%g215327215522%_
                                         (lambda (_%g215329215347%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g215329215347%_))
                                               (let ((_%e215332215350%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g215329215347%_))))
                                                 (let ((_%hd215333215354%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215332215350%_)))
                                                       (_%tl215334215357%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215332215350%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl215334215357%_))
                                                       (let ((_%e215335215360%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl215334215357%_))))
                 (let ((_%hd215336215364%_
                        (let ()
                          (declare (not safe))
                          (##car _%e215335215360%_)))
                       (_%tl215337215367%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e215335215360%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl215337215367%_))
                       ((lambda (_%L215370%_ _%L215372%_)
                          (let* ((_%g215388215396%_
                                  (lambda (_%g215389215392%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g215389215392%_))))
                                 (_%g215387215518%_
                                  (lambda (_%g215389215400%_)
                                    ((lambda (_%L215403%_)
                                       (let* ((_%unchecked215416%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L215370%_))
                                              (_%g215419215427%_
                                               (lambda (_%g215420215423%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g215420215423%_))))
                                              (_%g215418215450%_
                                               (lambda (_%g215420215431%_)
                                                 ((lambda (_%L215434%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L215403%_
                                                                (cons _%L215434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g215420215431%_))))
                                         (_%g215418215450%_
                                          (if _%unchecked215416%_
                                              (let* ((_%g215454215469%_
                                                      (lambda (_%g215455215465%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g215455215465%_))))
                                                     (_%g215453215514%_
                                                      (lambda (_%g215455215473%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g215455215473%_))
                                                            (let ((_%e215458215476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g215455215473%_))))
                      (let ((_%hd215459215480%_
                             (let ()
                               (declare (not safe))
                               (##car _%e215458215476%_)))
                            (_%tl215460215483%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e215458215476%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl215460215483%_))
                            (let ((_%e215461215486%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl215460215483%_))))
                              (let ((_%hd215462215490%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e215461215486%_)))
                                    (_%tl215463215493%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e215461215486%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl215463215493%_))
                                    ((lambda (_%L215496%_ _%L215498%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L215498%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L215372%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L215496%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd215462215490%_
                                     _%hd215459215480%_)
                                    (_%g215454215469%_ _%g215455215473%_))))
                            (_%g215454215469%_ _%g215455215473%_))))
                    (_%g215454215469%_ _%g215455215473%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g215453215514%_
                                                 _%unchecked215416%_))
                                              '(begin)))))
                                     _%g215389215400%_))))
                            (_%g215387215518%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L215310%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L215372%_ '()))
                   (cons '#f (cons 'signature: (cons _%L215370%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd215336215364%_
                        _%hd215333215354%_)
                       (_%g215328215343%_ _%g215329215347%_))))
               (_%g215328215343%_ _%g215329215347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215328215343%_
                                                _%g215329215347%_)))))
                                   (_%g215327215522%_
                                    (|gxc[1]#parse-signature|
                                     _%stx215224%_
                                     _%L215310%_
                                     (let ((__tmp217598
                                            (lambda (_%g215525215528%_
                                                     _%g215526215531%_)
                                              (cons _%g215525215528%_
                                                    _%g215526215531%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp217598
                                        '()
                                        _%L215308%_)))))
                                 (_%g215227215251%_ _%g215228215255%_)))
                           _%signature215245215304%_
                           _%hd215235215272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215240215284%_
                                                   _%target215237215278%_
                                                   '()))
                                                (_%g215227215251%_
                                                 _%g215228215255%_)))))
                                      (_%g215227215251%_ _%g215228215255%_))))
                              (_%g215227215251%_ _%g215228215255%_))))
                      (_%g215227215251%_ _%g215228215255%_)))))
          (_%g215226215534%_ _%stx215224%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx215539%_)
        (let* ((_%g215542215566%_
                (lambda (_%g215543215562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215543215562%_))))
               (_%g215541216449%_
                (lambda (_%g215543215570%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215543215570%_))
                      (let ((_%e215546215573%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215543215570%_))))
                        (let ((_%hd215547215577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215546215573%_)))
                              (_%tl215548215580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215546215573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215548215580%_))
                              (let ((_%e215549215583%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215548215580%_))))
                                (let ((_%hd215550215587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215549215583%_)))
                                      (_%tl215551215590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215549215583%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215551215590%_))
                                      (let ((_g217599_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215551215590%_
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
                                          (let ((_%target215552215593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g217599_ 0)))
                                                (_%tl215554215596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g217599_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215554215596%_))
                                                (letrec ((_%loop215555215599%_
                                                          (lambda (_%hd215553215603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature215559215606%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215553215603%_))
                        (let ((_%e215556215609%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215553215603%_))))
                          (let ((_%lp-hd215557215613%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215556215609%_)))
                                (_%lp-tl215558215616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215556215609%_))))
                            (_%loop215555215599%_
                             _%lp-tl215558215616%_
                             (cons _%lp-hd215557215613%_
                                   _%case-signature215559215606%_))))
                        (let ((_%case-signature215560215619%_
                               (reverse _%case-signature215559215606%_)))
                          ((lambda (_%L215623%_ _%L215625%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L215625%_))
                                 (let* ((_%signatures215656%_
                                         (map (lambda (_%g215642215644%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx215539%_
                                                 _%L215625%_
                                                 _%g215642215644%_))
                                              (let ((__tmp217601
                                                     (lambda (_%g215647215650%_
                                                              _%g215648215653%_)
                                                       (cons _%g215647215650%_
                                                             _%g215648215653%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp217601
                                                 '()
                                                 _%L215623%_))))
                                        (_%g215659215685%_
                                         (lambda (_%g215660215681%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g215660215681%_))))
                                        (_%g215658216445%_
                                         (lambda (_%g215660215689%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g215660215689%_))
                                               (let ((_g217602_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g215660215689%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g217603_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g217602_)
                        (##values-length _g217602_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g217603_ 2)))
                 (error "Context expects 2 values" _g217603_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target215663215692%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g217602_
                                                             0)))
                                                         (_%tl215665215695%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g217602_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl215665215695%_))
                                                         (letrec ((_%loop215666215698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd215664215702%_
                                    _%sig215670215705%_
                                    _%arity215671215707%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd215664215702%_))
                                 (let ((_%e215667215710%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd215664215702%_))))
                                   (let ((_%lp-hd215668215714%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215667215710%_)))
                                         (_%lp-tl215669215717%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215667215710%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd215668215714%_))
                                         (let ((_%e215674215720%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd215668215714%_))))
                                           (let ((_%hd215675215724%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e215674215720%_)))
                                                 (_%tl215676215727%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e215674215720%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl215676215727%_))
                                                 (let ((_%e215677215730%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl215676215727%_))))
                                                   (let ((_%hd215678215734%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e215677215730%_)))
                                                         (_%tl215679215737%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e215677215730%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl215679215737%_))
                                                         (_%loop215666215698%_
                                                          _%lp-tl215669215717%_
                                                          (cons _%hd215678215734%_
                                                                _%sig215670215705%_)
                                                          (cons _%hd215675215724%_
                                                                _%arity215671215707%_))
                                                         (_%g215659215685%_
                                                          _%g215660215689%_))))
                                                 (_%g215659215685%_
                                                  _%g215660215689%_))))
                                         (_%g215659215685%_
                                          _%g215660215689%_))))
                                 (let ((_%sig215672215740%_
                                        (reverse _%sig215670215705%_))
                                       (_%arity215673215743%_
                                        (reverse _%arity215671215707%_)))
                                   ((lambda (_%L215746%_ _%L215748%_)
                                      (let* ((_%g215765215773%_
                                              (lambda (_%g215766215769%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g215766215769%_))))
                                             (_%g215764216430%_
                                              (lambda (_%g215766215777%_)
                                                ((lambda (_%L215780%_)
                                                   (let* ((_%g215793215801%_
                                                           (lambda (_%g215794215797%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g215794215797%_))))
                  (_%g215792215823%_
                   (lambda (_%g215794215805%_)
                     ((lambda (_%L215808%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L215780%_ (cons _%L215808%_ '()))))
                      _%g215794215805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215792215823%_
                                                      (let ((_g217604_
                                                             (let _%loop215827%_ ((_%rest215830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures215656%_)
                                          (_%unchecked-proc215832%_ '#f)
                                          (_%unchecked-clauses215833%_ '()))
                       (let* ((_%rest215834215842%_ _%rest215830%_)
                              (_%else215836215854%_
                               (lambda ()
                                 (values _%unchecked-proc215832%_
                                         (reverse!
                                          _%unchecked-clauses215833%_))))
                              (_%K215838216295%_
                               (lambda (_%rest215858%_ _%hd215860%_)
                                 (let* ((_%g215862215949%_
                                         (lambda (_%g215863215945%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g215863215945%_))))
                                        (_%g215861216291%_
                                         (lambda (_%g215863215953%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g215863215953%_))
                                               (let ((_%e215870215956%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g215863215953%_))))
                                                 (let ((_%hd215871215960%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215870215956%_)))
                                                       (_%tl215872215963%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215870215956%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl215872215963%_))
                                                       (let ((_%e215873215966%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl215872215963%_))))
                 (let ((_%hd215874215970%_
                        (let ()
                          (declare (not safe))
                          (##car _%e215873215966%_)))
                       (_%tl215875215973%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e215873215966%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd215874215970%_))
                       (let ((_%e215876215976%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd215874215970%_))))
                         (let ((_%hd215877215980%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e215876215976%_)))
                               (_%tl215878215983%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e215876215976%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl215878215983%_))
                               (let ((_%e215879215986%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl215878215983%_))))
                                 (let ((_%hd215880215990%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e215879215986%_)))
                                       (_%tl215881215993%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e215879215986%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd215880215990%_))
                                       (let ((_%e215882215996%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd215880215990%_))))
                                         (if (equal? _%e215882215996%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl215881215993%_))
                                                 (let ((_%e215883216000%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl215881215993%_))))
                                                   (let ((_%hd215884216004%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e215883216000%_)))
                                                         (_%tl215885216007%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e215883216000%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd215884216004%_))
                                                         (let ((_%e215886216010%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd215884216004%_))))
                   (let ((_%hd215887216014%_
                          (let ()
                            (declare (not safe))
                            (##car _%e215886216010%_)))
                         (_%tl215888216017%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e215886216010%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd215887216014%_))
                         (if (let ((__tmp217606 |gxc[1]#_g217607_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp217606
                                _%hd215887216014%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl215888216017%_))
                                 (let ((_%e215889216020%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl215888216017%_))))
                                   (let ((_%hd215890216024%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215889216020%_)))
                                         (_%tl215891216027%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215889216020%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl215891216027%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl215885216007%_))
                                             (let ((_%e215892216030%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl215885216007%_))))
                                               (let ((_%hd215893216034%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e215892216030%_)))
                                                     (_%tl215894216037%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e215892216030%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd215893216034%_))
                                                     (let ((_%e215895216040%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd215893216034%_))))
                                                       (if (equal? _%e215895216040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl215894216037%_))
                       (let ((_%e215896216044%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl215894216037%_))))
                         (let ((_%hd215897216048%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e215896216044%_)))
                               (_%tl215898216051%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e215896216044%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd215897216048%_))
                               (let ((_%e215899216054%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd215897216048%_))))
                                 (let ((_%hd215900216058%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e215899216054%_)))
                                       (_%tl215901216061%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e215899216054%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd215900216058%_))
                                       (if (let ((__tmp217608
                                                  |gxc[1]#_g217609_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp217608
                                              _%hd215900216058%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl215901216061%_))
                                               (let ((_%e215902216064%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl215901216061%_))))
                                                 (let ((_%hd215903216068%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215902216064%_)))
                                                       (_%tl215904216071%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215902216064%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl215904216071%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl215898216051%_))
                                                           (let ((_%e215905216074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl215898216051%_))))
                     (let ((_%hd215906216078%_
                            (let ()
                              (declare (not safe))
                              (##car _%e215905216074%_)))
                           (_%tl215907216081%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e215905216074%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd215906216078%_))
                           (let ((_%e215908216084%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd215906216078%_))))
                             (if (equal? _%e215908216084%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl215907216081%_))
                                     (let ((_%e215909216088%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl215907216081%_))))
                                       (let ((_%hd215910216092%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e215909216088%_)))
                                             (_%tl215911216095%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e215909216088%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd215910216092%_))
                                             (let ((_%e215912216098%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd215910216092%_))))
                                               (let ((_%hd215913216102%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e215912216098%_)))
                                                     (_%tl215914216105%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e215912216098%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd215913216102%_))
                                                     (if (let ((__tmp217610
                                                                |gxc[1]#_g217611_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp217610
                                                            _%hd215913216102%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl215914216105%_))
                     (let ((_%e215915216108%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl215914216105%_))))
                       (let ((_%hd215916216112%_
                              (let ()
                                (declare (not safe))
                                (##car _%e215915216108%_)))
                             (_%tl215917216115%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e215915216108%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl215917216115%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl215911216095%_))
                                 (let ((_%e215918216118%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl215911216095%_))))
                                   (let ((_%hd215919216122%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215918216118%_)))
                                         (_%tl215920216125%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215918216118%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd215919216122%_))
                                         (let ((_%e215921216128%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd215919216122%_))))
                                           (if (equal? _%e215921216128%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl215920216125%_))
                                                   (let ((_%e215922216132%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl215920216125%_))))
                                                     (let ((_%hd215923216136%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e215922216132%_)))
                                                           (_%tl215924216139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e215922216132%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd215923216136%_))
                                                           (let ((_%e215925216142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd215923216136%_))))
                     (let ((_%hd215926216146%_
                            (let ()
                              (declare (not safe))
                              (##car _%e215925216142%_)))
                           (_%tl215927216149%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e215925216142%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd215926216146%_))
                           (if (let ((__tmp217612 |gxc[1]#_g217613_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp217612
                                  _%hd215926216146%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl215927216149%_))
                                   (let ((_%e215928216152%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl215927216149%_))))
                                     (let ((_%hd215929216156%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e215928216152%_)))
                                           (_%tl215930216159%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e215928216152%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl215930216159%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl215924216139%_))
                                               (let ((_%e215931216162%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl215924216139%_))))
                                                 (let ((_%hd215932216166%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215931216162%_)))
                                                       (_%tl215933216169%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215931216162%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd215932216166%_))
                                                       (let ((_%e215934216172%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd215932216166%_))))
                 (if (equal? _%e215934216172%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl215933216169%_))
                         (let ((_%e215935216176%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl215933216169%_))))
                           (let ((_%hd215936216180%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e215935216176%_)))
                                 (_%tl215937216183%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e215935216176%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd215936216180%_))
                                 (let ((_%e215938216186%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd215936216180%_))))
                                   (let ((_%hd215939216190%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215938216186%_)))
                                         (_%tl215940216193%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215938216186%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd215939216190%_))
                                         (if (let ((__tmp217614
                                                    |gxc[1]#_g217615_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp217614
                                                _%hd215939216190%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl215940216193%_))
                                                 (let ((_%e215941216196%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl215940216193%_))))
                                                   (let ((_%hd215942216200%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e215941216196%_)))
                                                         (_%tl215943216203%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e215941216196%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl215943216203%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl215937216183%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl215875215973%_))
                         ((lambda (_%L216206%_
                                   _%L216208%_
                                   _%L216209%_
                                   _%L216210%_
                                   _%L216211%_
                                   _%L216212%_)
                            (let ((_%clause216283%_
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
                                                     (cons _%L216212%_ '()))
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
                                                 (cons _%L216210%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216206%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked216285%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L216208%_))))
                              (_%loop215827%_
                               _%rest215858%_
                               (let ((_%$e216287%_ _%unchecked216285%_))
                                 (if _%$e216287%_
                                     _%$e216287%_
                                     _%unchecked-proc215832%_))
                               (cons _%clause216283%_
                                     _%unchecked-clauses215833%_))))
                          _%hd215942216200%_
                          _%hd215929216156%_
                          _%hd215916216112%_
                          _%hd215903216068%_
                          _%hd215890216024%_
                          _%hd215871215960%_)
                         (_%g215862215949%_ _%g215863215953%_))
                     (_%g215862215949%_ _%g215863215953%_))
                 (_%g215862215949%_ _%g215863215953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g215862215949%_
                                                  _%g215863215953%_))
                                             (_%g215862215949%_
                                              _%g215863215953%_))
                                         (_%g215862215949%_
                                          _%g215863215953%_))))
                                 (_%g215862215949%_ _%g215863215953%_))))
                         (_%g215862215949%_ _%g215863215953%_))
                     (_%g215862215949%_ _%g215863215953%_)))
               (_%g215862215949%_ _%g215863215953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215862215949%_
                                                _%g215863215953%_))
                                           (_%g215862215949%_
                                            _%g215863215953%_))))
                                   (_%g215862215949%_ _%g215863215953%_))
                               (_%g215862215949%_ _%g215863215953%_))
                           (_%g215862215949%_ _%g215863215953%_))))
                   (_%g215862215949%_ _%g215863215953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g215862215949%_
                                                    _%g215863215953%_))
                                               (_%g215862215949%_
                                                _%g215863215953%_)))
                                         (_%g215862215949%_
                                          _%g215863215953%_))))
                                 (_%g215862215949%_ _%g215863215953%_))
                             (_%g215862215949%_ _%g215863215953%_))))
                     (_%g215862215949%_ _%g215863215953%_))
                 (_%g215862215949%_ _%g215863215953%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215862215949%_
                                                      _%g215863215953%_))))
                                             (_%g215862215949%_
                                              _%g215863215953%_))))
                                     (_%g215862215949%_ _%g215863215953%_))
                                 (_%g215862215949%_ _%g215863215953%_)))
                           (_%g215862215949%_ _%g215863215953%_))))
                   (_%g215862215949%_ _%g215863215953%_))
               (_%g215862215949%_ _%g215863215953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215862215949%_
                                                _%g215863215953%_))
                                           (_%g215862215949%_
                                            _%g215863215953%_))
                                       (_%g215862215949%_ _%g215863215953%_))))
                               (_%g215862215949%_ _%g215863215953%_))))
                       (_%g215862215949%_ _%g215863215953%_))
                   (_%g215862215949%_ _%g215863215953%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215862215949%_
                                                      _%g215863215953%_))))
                                             (_%g215862215949%_
                                              _%g215863215953%_))
                                         (_%g215862215949%_
                                          _%g215863215953%_))))
                                 (_%g215862215949%_ _%g215863215953%_))
                             (_%g215862215949%_ _%g215863215953%_))
                         (_%g215862215949%_ _%g215863215953%_))))
                 (_%g215862215949%_ _%g215863215953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g215862215949%_
                                                  _%g215863215953%_))
                                             (_%g215862215949%_
                                              _%g215863215953%_)))
                                       (_%g215862215949%_ _%g215863215953%_))))
                               (_%g215862215949%_ _%g215863215953%_))))
                       (_%g215862215949%_ _%g215863215953%_))))
               (_%g215862215949%_ _%g215863215953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215862215949%_
                                                _%g215863215953%_)))))
                                   (_%g215861216291%_ _%hd215860%_)))))
                         (if (pair? _%rest215834215842%_)
                             (let ((_%hd215839216299%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest215834215842%_)))
                                   (_%tl215840216302%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest215834215842%_))))
                               (let* ((_%hd216305%_ _%hd215839216299%_)
                                      (_%rest216308%_ _%tl215840216302%_))
                                 (_%K215838216295%_
                                  _%rest216308%_
                                  _%hd216305%_)))
                             (_%else215836215854%_))))))
                (begin
                  (let ((_g217605_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g217604_)
                               (##values-length _g217604_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g217605_ 2)))
                        (error "Context expects 2 values" _g217605_)))
                  (let ((_%unchecked-proc216311%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g217604_ 0)))
                        (_%unchecked-clauses216313%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g217604_ 1))))
                    (if _%unchecked-proc216311%_
                        (let* ((_%g216315216339%_
                                (lambda (_%g216316216335%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g216316216335%_))))
                               (_%g216314216426%_
                                (lambda (_%g216316216343%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g216316216343%_))
                                      (let ((_%e216319216346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g216316216343%_))))
                                        (let ((_%hd216320216350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216319216346%_)))
                                              (_%tl216321216353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216319216346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216321216353%_))
                                              (let ((_%e216322216356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216321216353%_))))
                                                (let ((_%hd216323216360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216322216356%_)))
                                                      (_%tl216324216363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216322216356%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd216323216360%_))
                                                      (let ((_g217616_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd216323216360%_ '0))))
                (begin
                  (let ((_g217617_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g217616_)
                               (##values-length _g217616_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g217617_ 2)))
                        (error "Context expects 2 values" _g217617_)))
                  (let ((_%target216325216366%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g217616_ 0)))
                        (_%tl216327216369%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g217616_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl216327216369%_))
                        (letrec ((_%loop216328216372%_
                                  (lambda (_%hd216326216376%_
                                           _%clause216332216379%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd216326216376%_))
                                        (let ((_%e216329216382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd216326216376%_))))
                                          (let ((_%lp-hd216330216386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216329216382%_)))
                                                (_%lp-tl216331216389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216329216382%_))))
                                            (_%loop216328216372%_
                                             _%lp-tl216331216389%_
                                             (cons _%lp-hd216330216386%_
                                                   _%clause216332216379%_))))
                                        (let ((_%clause216333216392%_
                                               (reverse _%clause216332216379%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216324216363%_))
                                              ((lambda (_%L216396%_
                                                        _%L216398%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L216398%_
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
                                             (let ((__tmp217618
                                                    (lambda (_%g216417216420%_
                                                             _%g216418216423%_)
                                                      (cons _%g216417216420%_
                                                            _%g216418216423%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp217618
                                                '()
                                                _%L216396%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause216333216392%_
                                               _%hd216320216350%_)
                                              (_%g216315216339%_
                                               _%g216316216343%_)))))))
                          (_%loop216328216372%_ _%target216325216366%_ '()))
                        (_%g216315216339%_ _%g216316216343%_)))))
              (_%g216315216339%_ _%g216316216343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216315216339%_
                                               _%g216316216343%_))))
                                      (_%g216315216339%_ _%g216316216343%_)))))
                          (_%g216314216426%_
                           (list _%unchecked-proc216311%_
                                 _%unchecked-clauses216313%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g215766215777%_))))
                                        (_%g215764216430%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L215625%_
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
                                          _%L215746%_
                                          _%L215748%_))
                                       (let ((__tmp217619
                                              (lambda (_%g216433216437%_
                                                       _%g216434216440%_
                                                       _%g216435216442%_)
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
                                (cons _%g216434216440%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g216433216437%_ '())))))
              _%g216435216442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp217619
                                          '()
                                          _%L215746%_
                                          _%L215748%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig215672215740%_
                                    _%arity215673215743%_))))))
                   (_%loop215666215698%_ _%target215663215692%_ '() '()))
                 (_%g215659215685%_ _%g215660215689%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215659215685%_
                                                _%g215660215689%_)))))
                                   (_%g215658216445%_ _%signatures215656%_))
                                 (_%g215542215566%_ _%g215543215570%_)))
                           _%case-signature215560215619%_
                           _%hd215550215587%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215555215599%_
                                                   _%target215552215593%_
                                                   '()))
                                                (_%g215542215566%_
                                                 _%g215543215570%_)))))
                                      (_%g215542215566%_ _%g215543215570%_))))
                              (_%g215542215566%_ _%g215543215570%_))))
                      (_%g215542215566%_ _%g215543215570%_)))))
          (_%g215541216449%_ _%stx215539%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx216457%_)
        (let* ((_%__stx217439217440%_ _%$stx216457%_)
               (_%g216463216523%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217439217440%_)))))
          (let ((_%__kont217442217443%_
                 (lambda (_%L216745%_ _%L216747%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216747%_ '()))
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
                                                       (cons _%L216747%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216745%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont217444217445%_
                 (lambda (_%L216670%_ _%L216672%_ _%L216673%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216673%_ '()))
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
                                                       (cons _%L216673%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216672%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216670%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont217446217447%_
                 (lambda (_%L216584%_ _%L216586%_ _%L216587%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216587%_ '()))
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
                                                       (cons _%L216587%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216586%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216584%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217439217440%_))
                (let ((_%e216467216701%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217439217440%_))))
                  (let ((_%tl216469216708%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216467216701%_)))
                        (_%hd216468216705%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216467216701%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216469216708%_))
                        (let ((_%e216470216711%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216469216708%_))))
                          (let ((_%tl216472216718%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216470216711%_)))
                                (_%hd216471216715%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216470216711%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd216471216715%_))
                                (let ((_%e216473216721%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd216471216715%_))))
                                  (if (equal? _%e216473216721%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216472216718%_))
                                          (let ((_%e216474216725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl216472216718%_))))
                                            (let ((_%tl216476216732%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216474216725%_)))
                                                  (_%hd216475216729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216474216725%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216476216732%_))
                                                  (let ((_%e216477216735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl216476216732%_))))
                                                    (let ((_%tl216479216742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216477216735%_)))
                                                          (_%hd216478216739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216477216735%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216479216742%_))
                                                          (_%__kont217442217443%_
                                                           _%hd216478216739%_
                                                           _%hd216475216729%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216463216523%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216463216523%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216463216523%_)))
                                      (if (equal? _%e216473216721%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216472216718%_))
                                              (let ((_%e216490216640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216472216718%_))))
                                                (let ((_%tl216492216647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216490216640%_)))
                                                      (_%hd216491216644%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216490216640%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216492216647%_))
                                                      (let ((_%e216493216650%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl216492216647%_))))
                (let ((_%tl216495216657%_
                       (let () (declare (not safe)) (##cdr _%e216493216650%_)))
                      (_%hd216494216654%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216493216650%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216495216657%_))
                      (let ((_%e216496216660%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216495216657%_))))
                        (let ((_%tl216498216667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216496216660%_)))
                              (_%hd216497216664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216496216660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216498216667%_))
                              (_%__kont217444217445%_
                               _%hd216497216664%_
                               _%hd216494216654%_
                               _%hd216491216644%_)
                              (let ()
                                (declare (not safe))
                                (_%g216463216523%_)))))
                      (let () (declare (not safe)) (_%g216463216523%_)))))
              (let () (declare (not safe)) (_%g216463216523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216463216523%_)))
                                          (if (equal? _%e216473216721%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216472216718%_))
                                                  (let ((_%e216509216554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl216472216718%_))))
                                                    (let ((_%tl216511216561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216509216554%_)))
                                                          (_%hd216510216558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216509216554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216511216561%_))
                                                          (let ((_%e216512216564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl216511216561%_))))
                    (let ((_%tl216514216571%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216512216564%_)))
                          (_%hd216513216568%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216512216564%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216514216571%_))
                          (let ((_%e216515216574%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl216514216571%_))))
                            (let ((_%tl216517216581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216515216574%_)))
                                  (_%hd216516216578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216515216574%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216517216581%_))
                                  (_%__kont217446217447%_
                                   _%hd216516216578%_
                                   _%hd216513216568%_
                                   _%hd216510216558%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216463216523%_)))))
                          (let () (declare (not safe)) (_%g216463216523%_)))))
                  (let () (declare (not safe)) (_%g216463216523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216463216523%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216463216523%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g216463216523%_)))))
                        (let () (declare (not safe)) (_%g216463216523%_)))))
                (let () (declare (not safe)) (_%g216463216523%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx216769%_)
        (let* ((_%g216773216793%_
                (lambda (_%g216774216789%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216774216789%_))))
               (_%g216772216864%_
                (lambda (_%g216774216797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216774216797%_))
                      (let ((_%e216776216800%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216774216797%_))))
                        (let ((_%hd216777216804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216776216800%_)))
                              (_%tl216778216807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216776216800%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216778216807%_))
                              (let ((_g217620_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216778216807%_
                                        '0))))
                                (begin
                                  (let ((_g217621_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217620_)
                                               (##values-length _g217620_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217621_ 2)))
                                        (error "Context expects 2 values"
                                               _g217621_)))
                                  (let ((_%target216779216810%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217620_ 0)))
                                        (_%tl216781216813%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217620_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216781216813%_))
                                        (letrec ((_%loop216782216816%_
                                                  (lambda (_%hd216780216820%_
                                                           _%decl216786216823%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216780216820%_))
                                                        (let ((_%e216783216826%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216780216820%_))))
                  (let ((_%lp-hd216784216830%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216783216826%_)))
                        (_%lp-tl216785216833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216783216826%_))))
                    (_%loop216782216816%_
                     _%lp-tl216785216833%_
                     (cons _%lp-hd216784216830%_ _%decl216786216823%_))))
                (let ((_%decl216787216836%_ (reverse _%decl216786216823%_)))
                  ((lambda (_%L216840%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp217622
                                  (lambda (_%g216855216858%_ _%g216856216861%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g216855216858%_)
                                          _%g216856216861%_))))
                             (declare (not safe))
                             (__foldr1 __tmp217622 '() _%L216840%_))))
                   _%decl216787216836%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216782216816%_
                                           _%target216779216810%_
                                           '()))
                                        (_%g216773216793%_
                                         _%g216774216797%_)))))
                              (_%g216773216793%_ _%g216774216797%_))))
                      (_%g216773216793%_ _%g216774216797%_)))))
          (_%g216772216864%_ _%$stx216769%_))))))
