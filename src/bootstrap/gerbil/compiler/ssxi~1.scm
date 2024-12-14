(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g209399_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209406_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209408_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209410_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209412_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209414_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209426_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209428_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209430_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209432_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209434_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx202817%_)
        (let* ((_%g202821202839%_
                (lambda (_%g202822202835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202822202835%_))))
               (_%g202820202894%_
                (lambda (_%g202822202843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202822202843%_))
                      (let ((_%e202825202846%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202822202843%_))))
                        (let ((_%hd202826202850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202825202846%_)))
                              (_%tl202827202853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202825202846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202827202853%_))
                              (let ((_%e202828202856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202827202853%_))))
                                (let ((_%hd202829202860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202828202856%_)))
                                      (_%tl202830202863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202828202856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202830202863%_))
                                      (let ((_%e202831202866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202830202863%_))))
                                        (let ((_%hd202832202870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202831202866%_)))
                                              (_%tl202833202873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202831202866%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202833202873%_))
                                              ((lambda (_%L202876%_
                                                        _%L202878%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202878%_))
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
                               (cons _%L202878%_ '()))
                         (cons _%L202876%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202821202839%_
                                                      _%g202822202843%_)))
                                               _%hd202832202870%_
                                               _%hd202829202860%_)
                                              (_%g202821202839%_
                                               _%g202822202843%_))))
                                      (_%g202821202839%_ _%g202822202843%_))))
                              (_%g202821202839%_ _%g202822202843%_))))
                      (_%g202821202839%_ _%g202822202843%_)))))
          (_%g202820202894%_ _%$stx202817%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx202898%_)
        (let* ((_%g202902202920%_
                (lambda (_%g202903202916%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202903202916%_))))
               (_%g202901202975%_
                (lambda (_%g202903202924%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202903202924%_))
                      (let ((_%e202906202927%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202903202924%_))))
                        (let ((_%hd202907202931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202906202927%_)))
                              (_%tl202908202934%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202906202927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202908202934%_))
                              (let ((_%e202909202937%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202908202934%_))))
                                (let ((_%hd202910202941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202909202937%_)))
                                      (_%tl202911202944%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202909202937%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202911202944%_))
                                      (let ((_%e202912202947%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202911202944%_))))
                                        (let ((_%hd202913202951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202912202947%_)))
                                              (_%tl202914202954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202912202947%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202914202954%_))
                                              ((lambda (_%L202957%_
                                                        _%L202959%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202959%_))
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
                               (cons _%L202959%_ '()))
                         (cons _%L202957%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202902202920%_
                                                      _%g202903202924%_)))
                                               _%hd202913202951%_
                                               _%hd202910202941%_)
                                              (_%g202902202920%_
                                               _%g202903202924%_))))
                                      (_%g202902202920%_ _%g202903202924%_))))
                              (_%g202902202920%_ _%g202903202924%_))))
                      (_%g202902202920%_ _%g202903202924%_)))))
          (_%g202901202975%_ _%$stx202898%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx202979%_)
        (let* ((_%g202983203012%_
                (lambda (_%g202984203008%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202984203008%_))))
               (_%g202982203112%_
                (lambda (_%g202984203016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202984203016%_))
                      (let ((_%e202987203019%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202984203016%_))))
                        (let ((_%hd202988203023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202987203019%_)))
                              (_%tl202989203026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202987203019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202989203026%_))
                              (let ((_g209377_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202989203026%_
                                        '0))))
                                (begin
                                  (let ((_g209378_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209377_)
                                               (##values-length _g209377_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209378_ 2)))
                                        (error "Context expects 2 values"
                                               _g209378_)))
                                  (let ((_%target202990203029%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209377_ 0)))
                                        (_%tl202992203032%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209377_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202992203032%_))
                                        (letrec ((_%loop202993203035%_
                                                  (lambda (_%hd202991203039%_
                                                           _%type202997203042%_
                                                           _%symbol202998203044%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202991203039%_))
                                                        (let ((_%e202994203047%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202991203039%_))))
                  (let ((_%lp-hd202995203051%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202994203047%_)))
                        (_%lp-tl202996203054%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202994203047%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202995203051%_))
                        (let ((_%e203001203057%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202995203051%_))))
                          (let ((_%hd203002203061%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203001203057%_)))
                                (_%tl203003203064%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203001203057%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203003203064%_))
                                (let ((_%e203004203067%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203003203064%_))))
                                  (let ((_%hd203005203071%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203004203067%_)))
                                        (_%tl203006203074%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203004203067%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203006203074%_))
                                        (_%loop202993203035%_
                                         _%lp-tl202996203054%_
                                         (cons _%hd203005203071%_
                                               _%type202997203042%_)
                                         (cons _%hd203002203061%_
                                               _%symbol202998203044%_))
                                        (_%g202983203012%_
                                         _%g202984203016%_))))
                                (_%g202983203012%_ _%g202984203016%_))))
                        (_%g202983203012%_ _%g202984203016%_))))
                (let ((_%type202999203077%_ (reverse _%type202997203042%_))
                      (_%symbol203000203080%_
                       (reverse _%symbol202998203044%_)))
                  ((lambda (_%L203083%_ _%L203085%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203083%_
                                _%L203085%_))
                             (let ((__tmp209379
                                    (lambda (_%g203100203104%_
                                             _%g203101203107%_
                                             _%g203102203109%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g203101203107%_
                                                        (cons _%g203100203104%_
                                                              '())))
                                            _%g203102203109%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209379
                                '()
                                _%L203083%_
                                _%L203085%_)))))
                   _%type202999203077%_
                   _%symbol203000203080%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202993203035%_
                                           _%target202990203029%_
                                           '()
                                           '()))
                                        (_%g202983203012%_
                                         _%g202984203016%_)))))
                              (_%g202983203012%_ _%g202984203016%_))))
                      (_%g202983203012%_ _%g202984203016%_)))))
          (_%g202982203112%_ _%$stx202979%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx203117%_)
        (let* ((_%__stx208688208689%_ _%$stx203117%_)
               (_%g203122203164%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208688208689%_)))))
          (let ((_%__kont208691208692%_
                 (lambda (_%L203292%_ _%L203294%_ _%L203295%_ _%L203296%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203296%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203295%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203294%_ '()))
                                           (cons _%L203292%_ '())))))))
                (_%__kont208693208694%_
                 (lambda (_%L203211%_ _%L203213%_ _%L203214%_ _%L203215%_)
                   (cons _%L203215%_
                         (cons _%L203214%_
                               (cons _%L203213%_
                                     (cons _%L203211%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match208727208728%_
                   (lambda (_%e203128203242%_
                            _%hd203129203246%_
                            _%tl203130203249%_
                            _%e203131203252%_
                            _%hd203132203256%_
                            _%tl203133203259%_
                            _%e203134203262%_
                            _%hd203135203266%_
                            _%tl203136203269%_
                            _%e203137203272%_
                            _%hd203138203276%_
                            _%tl203139203279%_
                            _%e203140203282%_
                            _%hd203141203286%_
                            _%tl203142203289%_)
                     (let ((_%L203292%_ _%hd203141203286%_)
                           (_%L203294%_ _%hd203138203276%_)
                           (_%L203295%_ _%hd203135203266%_)
                           (_%L203296%_ _%hd203132203256%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203296%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203295%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203294%_)))
                           (_%__kont208691208692%_
                            _%L203292%_
                            _%L203294%_
                            _%L203295%_
                            _%L203296%_)
                           (let ()
                             (declare (not safe))
                             (_%g203122203164%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208688208689%_))
                  (let ((_%e203128203242%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208688208689%_))))
                    (let ((_%tl203130203249%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203128203242%_)))
                          (_%hd203129203246%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203128203242%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203130203249%_))
                          (let ((_%e203131203252%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203130203249%_))))
                            (let ((_%tl203133203259%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203131203252%_)))
                                  (_%hd203132203256%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203131203252%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203133203259%_))
                                  (let ((_%e203134203262%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203133203259%_))))
                                    (let ((_%tl203136203269%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203134203262%_)))
                                          (_%hd203135203266%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203134203262%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203136203269%_))
                                          (let ((_%e203137203272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl203136203269%_))))
                                            (let ((_%tl203139203279%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203137203272%_)))
                                                  (_%hd203138203276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203137203272%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203139203279%_))
                                                  (let ((_%e203140203282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203139203279%_))))
                                                    (let ((_%tl203142203289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203140203282%_)))
                                                          (_%hd203141203286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203140203282%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203142203289%_))
                                                          (_%__match208727208728%_
                                                           _%e203128203242%_
                                                           _%hd203129203246%_
                                                           _%tl203130203249%_
                                                           _%e203131203252%_
                                                           _%hd203132203256%_
                                                           _%tl203133203259%_
                                                           _%e203134203262%_
                                                           _%hd203135203266%_
                                                           _%tl203136203269%_
                                                           _%e203137203272%_
                                                           _%hd203138203276%_
                                                           _%tl203139203279%_
                                                           _%e203140203282%_
                                                           _%hd203141203286%_
                                                           _%tl203142203289%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g203122203164%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203139203279%_))
                                                      (_%__kont208693208694%_
                                                       _%hd203138203276%_
                                                       _%hd203135203266%_
                                                       _%hd203132203256%_
                                                       _%hd203129203246%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203122203164%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203122203164%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g203122203164%_)))))
                          (let () (declare (not safe)) (_%g203122203164%_)))))
                  (let () (declare (not safe)) (_%g203122203164%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx203321%_)
        (let* ((_%g203325203360%_
                (lambda (_%g203326203356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203326203356%_))))
               (_%g203324203479%_
                (lambda (_%g203326203364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203326203364%_))
                      (let ((_%e203330203367%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203326203364%_))))
                        (let ((_%hd203331203371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203330203367%_)))
                              (_%tl203332203374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203330203367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203332203374%_))
                              (let ((_g209380_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203332203374%_
                                        '0))))
                                (begin
                                  (let ((_g209381_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209380_)
                                               (##values-length _g209380_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209381_ 2)))
                                        (error "Context expects 2 values"
                                               _g209381_)))
                                  (let ((_%target203333203377%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209380_ 0)))
                                        (_%tl203335203380%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209380_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203335203380%_))
                                        (letrec ((_%loop203336203383%_
                                                  (lambda (_%hd203334203387%_
                                                           _%symbol203340203390%_
                                                           _%method203341203392%_
                                                           _%type-t203342203394%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203334203387%_))
                                                        (let ((_%e203337203397%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203334203387%_))))
                  (let ((_%lp-hd203338203401%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203337203397%_)))
                        (_%lp-tl203339203404%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203337203397%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203338203401%_))
                        (let ((_%e203346203407%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203338203401%_))))
                          (let ((_%hd203347203411%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203346203407%_)))
                                (_%tl203348203414%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203346203407%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203348203414%_))
                                (let ((_%e203349203417%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203348203414%_))))
                                  (let ((_%hd203350203421%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203349203417%_)))
                                        (_%tl203351203424%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203349203417%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203351203424%_))
                                        (let ((_%e203352203427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203351203424%_))))
                                          (let ((_%hd203353203431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203352203427%_)))
                                                (_%tl203354203434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203352203427%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203354203434%_))
                                                (_%loop203336203383%_
                                                 _%lp-tl203339203404%_
                                                 (cons _%hd203353203431%_
                                                       _%symbol203340203390%_)
                                                 (cons _%hd203350203421%_
                                                       _%method203341203392%_)
                                                 (cons _%hd203347203411%_
                                                       _%type-t203342203394%_))
                                                (_%g203325203360%_
                                                 _%g203326203364%_))))
                                        (_%g203325203360%_
                                         _%g203326203364%_))))
                                (_%g203325203360%_ _%g203326203364%_))))
                        (_%g203325203360%_ _%g203326203364%_))))
                (let ((_%symbol203343203437%_ (reverse _%symbol203340203390%_))
                      (_%method203344203440%_ (reverse _%method203341203392%_))
                      (_%type-t203345203442%_
                       (reverse _%type-t203342203394%_)))
                  ((lambda (_%L203445%_ _%L203447%_ _%L203448%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203445%_
                                _%L203447%_
                                _%L203448%_))
                             (let ((__tmp209382
                                    (lambda (_%g203464203469%_
                                             _%g203465203472%_
                                             _%g203466203474%_
                                             _%g203467203476%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g203466203474%_
                                                        (cons _%g203465203472%_
                                                              (cons _%g203464203469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g203467203476%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp209382
                                '()
                                _%L203445%_
                                _%L203447%_
                                _%L203448%_)))))
                   _%symbol203343203437%_
                   _%method203344203440%_
                   _%type-t203345203442%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203336203383%_
                                           _%target203333203377%_
                                           '()
                                           '()
                                           '()))
                                        (_%g203325203360%_
                                         _%g203326203364%_)))))
                              (_%g203325203360%_ _%g203326203364%_))))
                      (_%g203325203360%_ _%g203326203364%_)))))
          (_%g203324203479%_ _%$stx203321%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx203484%_)
        (let* ((_%g203488203521%_
                (lambda (_%g203489203517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203489203517%_))))
               (_%g203487203635%_
                (lambda (_%g203489203525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203489203525%_))
                      (let ((_%e203493203528%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203489203525%_))))
                        (let ((_%hd203494203532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203493203528%_)))
                              (_%tl203495203535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203493203528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203495203535%_))
                              (let ((_%e203496203538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203495203535%_))))
                                (let ((_%hd203497203542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203496203538%_)))
                                      (_%tl203498203545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203496203538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203498203545%_))
                                      (let ((_g209383_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203498203545%_
                                                '0))))
                                        (begin
                                          (let ((_g209384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209383_)
                                                       (##values-length
                                                        _g209383_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209384_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209384_)))
                                          (let ((_%target203499203548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g209383_ 0)))
                                                (_%tl203501203551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g209383_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203501203551%_))
                                                (letrec ((_%loop203502203554%_
                                                          (lambda (_%hd203500203558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol203506203561%_
                           _%method203507203563%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203500203558%_))
                        (let ((_%e203503203566%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd203500203558%_))))
                          (let ((_%lp-hd203504203570%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203503203566%_)))
                                (_%lp-tl203505203573%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203503203566%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd203504203570%_))
                                (let ((_%e203510203576%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd203504203570%_))))
                                  (let ((_%hd203511203580%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203510203576%_)))
                                        (_%tl203512203583%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203510203576%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203512203583%_))
                                        (let ((_%e203513203586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203512203583%_))))
                                          (let ((_%hd203514203590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203513203586%_)))
                                                (_%tl203515203593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203513203586%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203515203593%_))
                                                (_%loop203502203554%_
                                                 _%lp-tl203505203573%_
                                                 (cons _%hd203514203590%_
                                                       _%symbol203506203561%_)
                                                 (cons _%hd203511203580%_
                                                       _%method203507203563%_))
                                                (_%g203488203521%_
                                                 _%g203489203525%_))))
                                        (_%g203488203521%_
                                         _%g203489203525%_))))
                                (_%g203488203521%_ _%g203489203525%_))))
                        (let ((_%symbol203508203596%_
                               (reverse _%symbol203506203561%_))
                              (_%method203509203599%_
                               (reverse _%method203507203563%_)))
                          ((lambda (_%L203602%_ _%L203604%_ _%L203605%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L203602%_
                                        _%L203604%_))
                                     (let ((__tmp209385
                                            (lambda (_%g203623203627%_
                                                     _%g203624203630%_
                                                     _%g203625203632%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L203605%_
                                                                (cons _%g203624203630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g203623203627%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g203625203632%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp209385
                                        '()
                                        _%L203602%_
                                        _%L203604%_)))))
                           _%symbol203508203596%_
                           _%method203509203599%_
                           _%hd203497203542%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop203502203554%_
                                                   _%target203499203548%_
                                                   '()
                                                   '()))
                                                (_%g203488203521%_
                                                 _%g203489203525%_)))))
                                      (_%g203488203521%_ _%g203489203525%_))))
                              (_%g203488203521%_ _%g203489203525%_))))
                      (_%g203488203521%_ _%g203489203525%_)))))
          (_%g203487203635%_ _%$stx203484%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx203640%_)
        (let* ((_%g203644203658%_
                (lambda (_%g203645203654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203645203654%_))))
               (_%g203643203699%_
                (lambda (_%g203645203662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203645203662%_))
                      (let ((_%e203647203665%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203645203662%_))))
                        (let ((_%hd203648203669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203647203665%_)))
                              (_%tl203649203672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203647203665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203649203672%_))
                              (let ((_%e203650203675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203649203672%_))))
                                (let ((_%hd203651203679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203650203675%_)))
                                      (_%tl203652203682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203650203675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203652203682%_))
                                      ((lambda (_%L203685%_)
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
                                                           (cons _%L203685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203651203679%_)
                                      (_%g203644203658%_ _%g203645203662%_))))
                              (_%g203644203658%_ _%g203645203662%_))))
                      (_%g203644203658%_ _%g203645203662%_)))))
          (_%g203643203699%_ _%$stx203640%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx203703%_)
        (let* ((_%g203707203761%_
                (lambda (_%g203708203757%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203708203757%_))))
               (_%g203706203942%_
                (lambda (_%g203708203765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203708203765%_))
                      (let ((_%e203720203768%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203708203765%_))))
                        (let ((_%hd203721203772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203720203768%_)))
                              (_%tl203722203775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203720203768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203722203775%_))
                              (let ((_%e203723203778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203722203775%_))))
                                (let ((_%hd203724203782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203723203778%_)))
                                      (_%tl203725203785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203723203778%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203725203785%_))
                                      (let ((_%e203726203788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203725203785%_))))
                                        (let ((_%hd203727203792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203726203788%_)))
                                              (_%tl203728203795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203726203788%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203728203795%_))
                                              (let ((_%e203729203798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203728203795%_))))
                                                (let ((_%hd203730203802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203729203798%_)))
                                                      (_%tl203731203805%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203729203798%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203731203805%_))
                                                      (let ((_%e203732203808%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203731203805%_))))
                (let ((_%hd203733203812%_
                       (let () (declare (not safe)) (##car _%e203732203808%_)))
                      (_%tl203734203815%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203732203808%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203734203815%_))
                      (let ((_%e203735203818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203734203815%_))))
                        (let ((_%hd203736203822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203735203818%_)))
                              (_%tl203737203825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203735203818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203737203825%_))
                              (let ((_%e203738203828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203737203825%_))))
                                (let ((_%hd203739203832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203738203828%_)))
                                      (_%tl203740203835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203738203828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203740203835%_))
                                      (let ((_%e203741203838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203740203835%_))))
                                        (let ((_%hd203742203842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203741203838%_)))
                                              (_%tl203743203845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203741203838%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203743203845%_))
                                              (let ((_%e203744203848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203743203845%_))))
                                                (let ((_%hd203745203852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203744203848%_)))
                                                      (_%tl203746203855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203744203848%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203746203855%_))
                                                      (let ((_%e203747203858%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203746203855%_))))
                (let ((_%hd203748203862%_
                       (let () (declare (not safe)) (##car _%e203747203858%_)))
                      (_%tl203749203865%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203747203858%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203749203865%_))
                      (let ((_%e203750203868%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203749203865%_))))
                        (let ((_%hd203751203872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203750203868%_)))
                              (_%tl203752203875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203750203868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203752203875%_))
                              (let ((_%e203753203878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203752203875%_))))
                                (let ((_%hd203754203882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203753203878%_)))
                                      (_%tl203755203885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203753203878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203755203885%_))
                                      ((lambda (_%L203888%_
                                                _%L203890%_
                                                _%L203891%_
                                                _%L203892%_
                                                _%L203893%_
                                                _%L203894%_
                                                _%L203895%_
                                                _%L203896%_
                                                _%L203897%_
                                                _%L203898%_
                                                _%L203899%_)
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
                                                           (cons _%L203899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L203898%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L203897%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203896%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203895%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203894%_ '()))
                                           (cons _%L203893%_
                                                 (cons _%L203892%_
                                                       (cons _%L203891%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203890%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L203888%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd203754203882%_
                                       _%hd203751203872%_
                                       _%hd203748203862%_
                                       _%hd203745203852%_
                                       _%hd203742203842%_
                                       _%hd203739203832%_
                                       _%hd203736203822%_
                                       _%hd203733203812%_
                                       _%hd203730203802%_
                                       _%hd203727203792%_
                                       _%hd203724203782%_)
                                      (_%g203707203761%_ _%g203708203765%_))))
                              (_%g203707203761%_ _%g203708203765%_))))
                      (_%g203707203761%_ _%g203708203765%_))))
              (_%g203707203761%_ _%g203708203765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203707203761%_
                                               _%g203708203765%_))))
                                      (_%g203707203761%_ _%g203708203765%_))))
                              (_%g203707203761%_ _%g203708203765%_))))
                      (_%g203707203761%_ _%g203708203765%_))))
              (_%g203707203761%_ _%g203708203765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203707203761%_
                                               _%g203708203765%_))))
                                      (_%g203707203761%_ _%g203708203765%_))))
                              (_%g203707203761%_ _%g203708203765%_))))
                      (_%g203707203761%_ _%g203708203765%_)))))
          (_%g203706203942%_ _%$stx203703%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx203946%_)
        (let* ((_%g203950203964%_
                (lambda (_%g203951203960%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203951203960%_))))
               (_%g203949204005%_
                (lambda (_%g203951203968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203951203968%_))
                      (let ((_%e203953203971%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203951203968%_))))
                        (let ((_%hd203954203975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203953203971%_)))
                              (_%tl203955203978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203953203971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203955203978%_))
                              (let ((_%e203956203981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203955203978%_))))
                                (let ((_%hd203957203985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203956203981%_)))
                                      (_%tl203958203988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203956203981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203958203988%_))
                                      ((lambda (_%L203991%_)
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
                                                           (cons _%L203991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203957203985%_)
                                      (_%g203950203964%_ _%g203951203968%_))))
                              (_%g203950203964%_ _%g203951203968%_))))
                      (_%g203950203964%_ _%g203951203968%_)))))
          (_%g203949204005%_ _%$stx203946%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx204009%_)
        (let* ((_%g204013204027%_
                (lambda (_%g204014204023%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204014204023%_))))
               (_%g204012204068%_
                (lambda (_%g204014204031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204014204031%_))
                      (let ((_%e204016204034%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204014204031%_))))
                        (let ((_%hd204017204038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204016204034%_)))
                              (_%tl204018204041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204016204034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204018204041%_))
                              (let ((_%e204019204044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204018204041%_))))
                                (let ((_%hd204020204048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204019204044%_)))
                                      (_%tl204021204051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204019204044%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204021204051%_))
                                      ((lambda (_%L204054%_)
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
                                                           (cons _%L204054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204020204048%_)
                                      (_%g204013204027%_ _%g204014204031%_))))
                              (_%g204013204027%_ _%g204014204031%_))))
                      (_%g204013204027%_ _%g204014204031%_)))))
          (_%g204012204068%_ _%$stx204009%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx204072%_)
        (let* ((_%g204076204098%_
                (lambda (_%g204077204094%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204077204094%_))))
               (_%g204075204167%_
                (lambda (_%g204077204102%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204077204102%_))
                      (let ((_%e204081204105%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204077204102%_))))
                        (let ((_%hd204082204109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204081204105%_)))
                              (_%tl204083204112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204081204105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204083204112%_))
                              (let ((_%e204084204115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204083204112%_))))
                                (let ((_%hd204085204119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204084204115%_)))
                                      (_%tl204086204122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204084204115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204086204122%_))
                                      (let ((_%e204087204125%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204086204122%_))))
                                        (let ((_%hd204088204129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204087204125%_)))
                                              (_%tl204089204132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204087204125%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204089204132%_))
                                              (let ((_%e204090204135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204089204132%_))))
                                                (let ((_%hd204091204139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204090204135%_)))
                                                      (_%tl204092204142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204090204135%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204092204142%_))
                                                      ((lambda (_%L204145%_
                                                                _%L204147%_
                                                                _%L204148%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204148%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L204147%_ '()))
                                   (cons _%L204145%_ '())))))
               _%hd204091204139%_
               _%hd204088204129%_
               _%hd204085204119%_)
              (_%g204076204098%_ _%g204077204102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204076204098%_
                                               _%g204077204102%_))))
                                      (_%g204076204098%_ _%g204077204102%_))))
                              (_%g204076204098%_ _%g204077204102%_))))
                      (_%g204076204098%_ _%g204077204102%_)))))
          (_%g204075204167%_ _%$stx204072%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx204171%_)
        (let* ((_%g204175204197%_
                (lambda (_%g204176204193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204176204193%_))))
               (_%g204174204266%_
                (lambda (_%g204176204201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204176204201%_))
                      (let ((_%e204180204204%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204176204201%_))))
                        (let ((_%hd204181204208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204180204204%_)))
                              (_%tl204182204211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204180204204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204182204211%_))
                              (let ((_%e204183204214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204182204211%_))))
                                (let ((_%hd204184204218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204183204214%_)))
                                      (_%tl204185204221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204183204214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204185204221%_))
                                      (let ((_%e204186204224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204185204221%_))))
                                        (let ((_%hd204187204228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204186204224%_)))
                                              (_%tl204188204231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204186204224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204188204231%_))
                                              (let ((_%e204189204234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204188204231%_))))
                                                (let ((_%hd204190204238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204189204234%_)))
                                                      (_%tl204191204241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204189204234%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204191204241%_))
                                                      ((lambda (_%L204244%_
                                                                _%L204246%_
                                                                _%L204247%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204247%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L204246%_ '()))
                                   (cons _%L204244%_ '())))))
               _%hd204190204238%_
               _%hd204187204228%_
               _%hd204184204218%_)
              (_%g204175204197%_ _%g204176204201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204175204197%_
                                               _%g204176204201%_))))
                                      (_%g204175204197%_ _%g204176204201%_))))
                              (_%g204175204197%_ _%g204176204201%_))))
                      (_%g204175204197%_ _%g204176204201%_)))))
          (_%g204174204266%_ _%$stx204171%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx204270%_)
        (let* ((_%g204274204288%_
                (lambda (_%g204275204284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204275204284%_))))
               (_%g204273204329%_
                (lambda (_%g204275204292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204275204292%_))
                      (let ((_%e204277204295%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204275204292%_))))
                        (let ((_%hd204278204299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204277204295%_)))
                              (_%tl204279204302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204277204295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204279204302%_))
                              (let ((_%e204280204305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204279204302%_))))
                                (let ((_%hd204281204309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204280204305%_)))
                                      (_%tl204282204312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204280204305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204282204312%_))
                                      ((lambda (_%L204315%_)
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
                                                           (cons _%L204315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204281204309%_)
                                      (_%g204274204288%_ _%g204275204292%_))))
                              (_%g204274204288%_ _%g204275204292%_))))
                      (_%g204274204288%_ _%g204275204292%_)))))
          (_%g204273204329%_ _%$stx204270%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx204333%_)
        (let* ((_%g204337204355%_
                (lambda (_%g204338204351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204338204351%_))))
               (_%g204336204410%_
                (lambda (_%g204338204359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204338204359%_))
                      (let ((_%e204341204362%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204338204359%_))))
                        (let ((_%hd204342204366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204341204362%_)))
                              (_%tl204343204369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204341204362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204343204369%_))
                              (let ((_%e204344204372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204343204369%_))))
                                (let ((_%hd204345204376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204344204372%_)))
                                      (_%tl204346204379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204344204372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204346204379%_))
                                      (let ((_%e204347204382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204346204379%_))))
                                        (let ((_%hd204348204386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204347204382%_)))
                                              (_%tl204349204389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204347204382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204349204389%_))
                                              ((lambda (_%L204392%_
                                                        _%L204394%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204394%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204392%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204348204386%_
                                               _%hd204345204376%_)
                                              (_%g204337204355%_
                                               _%g204338204359%_))))
                                      (_%g204337204355%_ _%g204338204359%_))))
                              (_%g204337204355%_ _%g204338204359%_))))
                      (_%g204337204355%_ _%g204338204359%_)))))
          (_%g204336204410%_ _%$stx204333%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx204414%_)
        (let* ((_%__stx208756208757%_ _%$stx204414%_)
               (_%g204421204482%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208756208757%_)))))
          (let ((_%__kont208759208760%_
                 (lambda (_%L204720%_ _%L204722%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204722%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204720%_ '()))
                                     '())))))
                (_%__kont208761208762%_
                 (lambda (_%L204659%_ _%L204661%_ _%L204662%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204662%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204661%_ '()))
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
                                 (cons _%L204659%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont208763208764%_
                 (lambda (_%L204583%_ _%L204585%_)
                   (cons _%L204585%_ (cons _%L204583%_ (cons '#f '())))))
                (_%__kont208765208766%_
                 (lambda (_%L204533%_ _%L204535%_ _%L204536%_)
                   (cons _%L204536%_
                         (cons _%L204535%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L204533%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208756208757%_))
                (let ((_%e204425204690%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208756208757%_))))
                  (let ((_%tl204427204697%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204425204690%_)))
                        (_%hd204426204694%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204425204690%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204427204697%_))
                        (let ((_%e204428204700%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204427204697%_))))
                          (let ((_%tl204430204707%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204428204700%_)))
                                (_%hd204429204704%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204428204700%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204430204707%_))
                                (let ((_%e204431204710%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204430204707%_))))
                                  (let ((_%tl204433204717%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204431204710%_)))
                                        (_%hd204432204714%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204431204710%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204433204717%_))
                                        (_%__kont208759208760%_
                                         _%hd204432204714%_
                                         _%hd204429204704%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204433204717%_))
                                            (let ((_%e204446204635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204433204717%_))))
                                              (let ((_%tl204448204642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204446204635%_)))
                                                    (_%hd204447204639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204446204635%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204447204639%_))
                                                    (let ((_%e204449204645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204447204639%_))))
                                                      (if (equal? _%e204449204645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204448204642%_))
                      (let ((_%e204450204649%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204448204642%_))))
                        (let ((_%tl204452204656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204450204649%_)))
                              (_%hd204451204653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204450204649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204452204656%_))
                              (_%__kont208761208762%_
                               _%hd204451204653%_
                               _%hd204432204714%_
                               _%hd204429204704%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd204432204714%_))
                                  (let ((_%e204473204519%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204432204714%_))))
                                    (declare (not safe))
                                    (_%g204421204482%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204421204482%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204432204714%_))
                          (let ((_%e204473204519%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204432204714%_))))
                            (if (equal? _%e204473204519%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204448204642%_))
                                    (_%__kont208765208766%_
                                     _%hd204447204639%_
                                     _%hd204429204704%_
                                     _%hd204426204694%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204421204482%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g204421204482%_))))
                          (let () (declare (not safe)) (_%g204421204482%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd204432204714%_))
                      (let ((_%e204473204519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204432204714%_))))
                        (if (equal? _%e204473204519%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204448204642%_))
                                (_%__kont208765208766%_
                                 _%hd204447204639%_
                                 _%hd204429204704%_
                                 _%hd204426204694%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204421204482%_)))
                            (let () (declare (not safe)) (_%g204421204482%_))))
                      (let () (declare (not safe)) (_%g204421204482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd204432204714%_))
                                                        (let ((_%e204473204519%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd204432204714%_))))
                  (if (equal? _%e204473204519%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204448204642%_))
                          (_%__kont208765208766%_
                           _%hd204447204639%_
                           _%hd204429204704%_
                           _%hd204426204694%_)
                          (let () (declare (not safe)) (_%g204421204482%_)))
                      (let () (declare (not safe)) (_%g204421204482%_))))
                (let () (declare (not safe)) (_%g204421204482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd204432204714%_))
                                                (let ((_%e204473204519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204432204714%_))))
                                                  (declare (not safe))
                                                  (_%g204421204482%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g204421204482%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204430204707%_))
                                    (_%__kont208763208764%_
                                     _%hd204429204704%_
                                     _%hd204426204694%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204421204482%_))))))
                        (let () (declare (not safe)) (_%g204421204482%_)))))
                (let () (declare (not safe)) (_%g204421204482%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx204741%_)
        (let* ((_%g204745204774%_
                (lambda (_%g204746204770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204746204770%_))))
               (_%g204744204883%_
                (lambda (_%g204746204778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204746204778%_))
                      (let ((_%e204748204781%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204746204778%_))))
                        (let ((_%hd204749204785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204748204781%_)))
                              (_%tl204750204788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204748204781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204750204788%_))
                              (let ((_g209386_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204750204788%_
                                        '0))))
                                (begin
                                  (let ((_g209387_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209386_)
                                               (##values-length _g209386_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209387_ 2)))
                                        (error "Context expects 2 values"
                                               _g209387_)))
                                  (let ((_%target204751204791%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209386_ 0)))
                                        (_%tl204753204794%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209386_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204753204794%_))
                                        (letrec ((_%loop204754204797%_
                                                  (lambda (_%hd204752204801%_
                                                           _%clause204758204804%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204752204801%_))
                                                        (let ((_%e204755204807%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204752204801%_))))
                  (let ((_%lp-hd204756204811%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204755204807%_)))
                        (_%lp-tl204757204814%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204755204807%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd204756204811%_))
                        (let ((_g209388_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd204756204811%_
                                  '0))))
                          (begin
                            (let ((_g209389_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g209388_)
                                         (##values-length _g209388_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g209389_ 2)))
                                  (error "Context expects 2 values"
                                         _g209389_)))
                            (let ((_%target204760204817%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g209388_ 0)))
                                  (_%tl204762204820%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g209388_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204762204820%_))
                                  (letrec ((_%loop204763204823%_
                                            (lambda (_%hd204761204827%_
                                                     _%clause204767204830%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204761204827%_))
                                                  (let ((_%e204764204833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd204761204827%_))))
                                                    (let ((_%lp-hd204765204837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204764204833%_)))
                                                          (_%lp-tl204766204840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204764204833%_))))
                                                      (_%loop204763204823%_
                                                       _%lp-tl204766204840%_
                                                       (cons _%lp-hd204765204837%_
                                                             _%clause204767204830%_))))
                                                  (let ((_%clause204768204843%_
                                                         (reverse _%clause204767204830%_)))
                                                    (_%loop204754204797%_
                                                     _%lp-tl204757204814%_
                                                     (cons _%clause204768204843%_
                                                           _%clause204758204804%_)))))))
                                    (_%loop204763204823%_
                                     _%target204760204817%_
                                     '()))
                                  (_%g204745204774%_ _%g204746204778%_)))))
                        (_%g204745204774%_ _%g204746204778%_))))
                (let ((_%clause204759204847%_
                       (reverse _%clause204758204804%_)))
                  ((lambda (_%L204851%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp209390
                                              (lambda (_%g204866204871%_
                                                       _%g204867204874%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp209391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g204868204877%_ _%g204869204880%_)
                             (cons _%g204868204877%_ _%g204869204880%_))))
                      (declare (not safe))
                      (__foldr1 __tmp209391 '() _%g204866204871%_)))
              _%g204867204874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp209390
                                          '()
                                          _%L204851%_)))
                                 '())))
                   _%clause204759204847%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204754204797%_
                                           _%target204751204791%_
                                           '()))
                                        (_%g204745204774%_
                                         _%g204746204778%_)))))
                              (_%g204745204774%_ _%g204746204778%_))))
                      (_%g204745204774%_ _%g204746204778%_)))))
          (_%g204744204883%_ _%$stx204741%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx204889%_)
        (let* ((_%g204893204911%_
                (lambda (_%g204894204907%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204894204907%_))))
               (_%g204892204966%_
                (lambda (_%g204894204915%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204894204915%_))
                      (let ((_%e204897204918%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204894204915%_))))
                        (let ((_%hd204898204922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204897204918%_)))
                              (_%tl204899204925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204897204918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204899204925%_))
                              (let ((_%e204900204928%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204899204925%_))))
                                (let ((_%hd204901204932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204900204928%_)))
                                      (_%tl204902204935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204900204928%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204902204935%_))
                                      (let ((_%e204903204938%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204902204935%_))))
                                        (let ((_%hd204904204942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204903204938%_)))
                                              (_%tl204905204945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204903204938%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204905204945%_))
                                              ((lambda (_%L204948%_
                                                        _%L204950%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204950%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204948%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204904204942%_
                                               _%hd204901204932%_)
                                              (_%g204893204911%_
                                               _%g204894204915%_))))
                                      (_%g204893204911%_ _%g204894204915%_))))
                              (_%g204893204911%_ _%g204894204915%_))))
                      (_%g204893204911%_ _%g204894204915%_)))))
          (_%g204892204966%_ _%$stx204889%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx204970%_)
        (let* ((_%g204974204992%_
                (lambda (_%g204975204988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204975204988%_))))
               (_%g204973205047%_
                (lambda (_%g204975204996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204975204996%_))
                      (let ((_%e204978204999%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204975204996%_))))
                        (let ((_%hd204979205003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204978204999%_)))
                              (_%tl204980205006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204978204999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204980205006%_))
                              (let ((_%e204981205009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204980205006%_))))
                                (let ((_%hd204982205013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204981205009%_)))
                                      (_%tl204983205016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204981205009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204983205016%_))
                                      (let ((_%e204984205019%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204983205016%_))))
                                        (let ((_%hd204985205023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204984205019%_)))
                                              (_%tl204986205026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204984205019%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204986205026%_))
                                              ((lambda (_%L205029%_
                                                        _%L205031%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205031%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205029%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204985205023%_
                                               _%hd204982205013%_)
                                              (_%g204974204992%_
                                               _%g204975204996%_))))
                                      (_%g204974204992%_ _%g204975204996%_))))
                              (_%g204974204992%_ _%g204975204996%_))))
                      (_%g204974204992%_ _%g204975204996%_)))))
          (_%g204973205047%_ _%$stx204970%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx205051%_)
        (let* ((_%g205055205084%_
                (lambda (_%g205056205080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205056205080%_))))
               (_%g205054205184%_
                (lambda (_%g205056205088%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205056205088%_))
                      (let ((_%e205059205091%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205056205088%_))))
                        (let ((_%hd205060205095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205059205091%_)))
                              (_%tl205061205098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205059205091%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205061205098%_))
                              (let ((_g209392_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205061205098%_
                                        '0))))
                                (begin
                                  (let ((_g209393_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209392_)
                                               (##values-length _g209392_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209393_ 2)))
                                        (error "Context expects 2 values"
                                               _g209393_)))
                                  (let ((_%target205062205101%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209392_ 0)))
                                        (_%tl205064205104%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209392_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205064205104%_))
                                        (letrec ((_%loop205065205107%_
                                                  (lambda (_%hd205063205111%_
                                                           _%rule205069205114%_
                                                           _%proc205070205116%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205063205111%_))
                                                        (let ((_%e205066205119%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205063205111%_))))
                  (let ((_%lp-hd205067205123%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205066205119%_)))
                        (_%lp-tl205068205126%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205066205119%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd205067205123%_))
                        (let ((_%e205073205129%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd205067205123%_))))
                          (let ((_%hd205074205133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205073205129%_)))
                                (_%tl205075205136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205073205129%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205075205136%_))
                                (let ((_%e205076205139%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205075205136%_))))
                                  (let ((_%hd205077205143%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205076205139%_)))
                                        (_%tl205078205146%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205076205139%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205078205146%_))
                                        (_%loop205065205107%_
                                         _%lp-tl205068205126%_
                                         (cons _%hd205077205143%_
                                               _%rule205069205114%_)
                                         (cons _%hd205074205133%_
                                               _%proc205070205116%_))
                                        (_%g205055205084%_
                                         _%g205056205088%_))))
                                (_%g205055205084%_ _%g205056205088%_))))
                        (_%g205055205084%_ _%g205056205088%_))))
                (let ((_%rule205071205149%_ (reverse _%rule205069205114%_))
                      (_%proc205072205152%_ (reverse _%proc205070205116%_)))
                  ((lambda (_%L205155%_ _%L205157%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L205155%_
                                _%L205157%_))
                             (let ((__tmp209394
                                    (lambda (_%g205172205176%_
                                             _%g205173205179%_
                                             _%g205174205181%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g205173205179%_
                                                        (cons _%g205172205176%_
                                                              '())))
                                            _%g205174205181%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209394
                                '()
                                _%L205155%_
                                _%L205157%_)))))
                   _%rule205071205149%_
                   _%proc205072205152%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205065205107%_
                                           _%target205062205101%_
                                           '()
                                           '()))
                                        (_%g205055205084%_
                                         _%g205056205088%_)))))
                              (_%g205055205084%_ _%g205056205088%_))))
                      (_%g205055205084%_ _%g205056205088%_)))))
          (_%g205054205184%_ _%$stx205051%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx205189%_)
        (let* ((_%g205193205211%_
                (lambda (_%g205194205207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205194205207%_))))
               (_%g205192205266%_
                (lambda (_%g205194205215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205194205215%_))
                      (let ((_%e205197205218%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205194205215%_))))
                        (let ((_%hd205198205222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205197205218%_)))
                              (_%tl205199205225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205197205218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205199205225%_))
                              (let ((_%e205200205228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205199205225%_))))
                                (let ((_%hd205201205232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205200205228%_)))
                                      (_%tl205202205235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205200205228%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205202205235%_))
                                      (let ((_%e205203205238%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205202205235%_))))
                                        (let ((_%hd205204205242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205203205238%_)))
                                              (_%tl205205205245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205203205238%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205205205245%_))
                                              ((lambda (_%L205248%_
                                                        _%L205250%_)
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
                                                   (cons _%L205250%_ '()))
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
                 (cons _%L205248%_ '())))
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
                                   (cons _%L205250%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205204205242%_
                                               _%hd205201205232%_)
                                              (_%g205193205211%_
                                               _%g205194205215%_))))
                                      (_%g205193205211%_ _%g205194205215%_))))
                              (_%g205193205211%_ _%g205194205215%_))))
                      (_%g205193205211%_ _%g205194205215%_)))))
          (_%g205192205266%_ _%$stx205189%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx205270%_)
        (let* ((_%__stx208874208875%_ _%$stx205270%_)
               (_%g205275205300%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208874208875%_)))))
          (let ((_%__kont208877208878%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208879208880%_
                 (lambda (_%L205347%_ _%L205349%_ _%L205350%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L205350%_ (cons _%L205349%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L205347%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208874208875%_))
                (let ((_%e205277205376%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208874208875%_))))
                  (let ((_%tl205279205383%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205277205376%_)))
                        (_%hd205278205380%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205277205376%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl205279205383%_))
                        (_%__kont208877208878%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205279205383%_))
                            (let ((_%e205286205317%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205279205383%_))))
                              (let ((_%tl205288205324%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205286205317%_)))
                                    (_%hd205287205321%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205286205317%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd205287205321%_))
                                    (let ((_%e205289205327%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd205287205321%_))))
                                      (let ((_%tl205291205334%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205289205327%_)))
                                            (_%hd205290205331%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205289205327%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205291205334%_))
                                            (let ((_%e205292205337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205291205334%_))))
                                              (let ((_%tl205294205344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205292205337%_)))
                                                    (_%hd205293205341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205292205337%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl205294205344%_))
                                                    (_%__kont208879208880%_
                                                     _%tl205288205324%_
                                                     _%hd205293205341%_
                                                     _%hd205290205331%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g205275205300%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g205275205300%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g205275205300%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g205275205300%_))))))
                (let () (declare (not safe)) (_%g205275205300%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx205394%_)
        (let* ((_%__stx208918208919%_ _%$stx205394%_)
               (_%g205399205430%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208918208919%_)))))
          (let ((_%__kont208921208922%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208923208924%_
                 (lambda (_%L205497%_ _%L205499%_ _%L205500%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L205500%_
                                           (let ((__tmp209395
                                                  (lambda (_%g205520205523%_
                                                           _%g205521205526%_)
                                                    (cons _%g205520205523%_
                                                          _%g205521205526%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp209395
                                              '()
                                              _%L205499%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L205497%_)
                                     '()))))))
            (let ((_%__match208961208962%_
                   (lambda (_%e205407205437%_
                            _%hd205408205441%_
                            _%tl205409205444%_
                            _%e205410205447%_
                            _%hd205411205451%_
                            _%tl205412205454%_
                            _%e205413205457%_
                            _%hd205414205461%_
                            _%tl205415205464%_
                            _%__splice208925208926%_
                            _%target205416205467%_
                            _%tl205418205470%_)
                     (letrec ((_%loop205419205473%_
                               (lambda (_%hd205417205477%_ _%sig205423205480%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205417205477%_))
                                     (let ((_%e205420205483%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd205417205477%_))))
                                       (let ((_%lp-tl205422205490%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205420205483%_)))
                                             (_%lp-hd205421205487%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205420205483%_))))
                                         (_%loop205419205473%_
                                          _%lp-tl205422205490%_
                                          (cons _%lp-hd205421205487%_
                                                _%sig205423205480%_))))
                                     (let ((_%sig205424205493%_
                                            (reverse _%sig205423205480%_)))
                                       (_%__kont208923208924%_
                                        _%tl205412205454%_
                                        _%sig205424205493%_
                                        _%hd205414205461%_))))))
                       (_%loop205419205473%_ _%target205416205467%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208918208919%_))
                  (let ((_%e205401205536%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208918208919%_))))
                    (let ((_%tl205403205543%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205401205536%_)))
                          (_%hd205402205540%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205401205536%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205403205543%_))
                          (_%__kont208921208922%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205403205543%_))
                              (let ((_%e205410205447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205403205543%_))))
                                (let ((_%tl205412205454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205410205447%_)))
                                      (_%hd205411205451%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205410205447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205411205451%_))
                                      (let ((_%e205413205457%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205411205451%_))))
                                        (let ((_%tl205415205464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205413205457%_)))
                                              (_%hd205414205461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205413205457%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205415205464%_))
                                              (let ((_%__splice208925208926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205415205464%_
                                                        '0))))
                                                (let ((_%tl205418205470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208925208926%_
                                                          '1)))
                                                      (_%target205416205467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208925208926%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205418205470%_))
                                                      (_%__match208961208962%_
                                                       _%e205401205536%_
                                                       _%hd205402205540%_
                                                       _%tl205403205543%_
                                                       _%e205410205447%_
                                                       _%hd205411205451%_
                                                       _%tl205412205454%_
                                                       _%e205413205457%_
                                                       _%hd205414205461%_
                                                       _%tl205415205464%_
                                                       _%__splice208925208926%_
                                                       _%target205416205467%_
                                                       _%tl205418205470%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205399205430%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205399205430%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205399205430%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205399205430%_))))))
                  (let () (declare (not safe)) (_%g205399205430%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx205555%_)
        (let* ((_%__stx208964208965%_ _%$stx205555%_)
               (_%g205560205607%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208964208965%_)))))
          (let ((_%__kont208967208968%_
                 (lambda (_%L205769%_ _%L205771%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L205771%_
                               (let ((__tmp209396
                                      (lambda (_%g205791205794%_
                                               _%g205792205797%_)
                                        (cons _%g205791205794%_
                                              _%g205792205797%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209396 '() _%L205769%_))))))
                (_%__kont208971208972%_
                 (lambda (_%L205664%_ _%L205666%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L205666%_
                               (let ((__tmp209397
                                      (lambda (_%g205683205686%_
                                               _%g205684205689%_)
                                        (cons _%g205683205686%_
                                              _%g205684205689%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209397 '() _%L205664%_)))))))
            (let* ((_%__match209031209032%_
                    (lambda (_%e205587205614%_
                             _%hd205588205618%_
                             _%tl205589205621%_
                             _%e205590205624%_
                             _%hd205591205628%_
                             _%tl205592205631%_
                             _%__splice208973208974%_
                             _%target205593205634%_
                             _%tl205595205637%_)
                      (letrec ((_%loop205596205640%_
                                (lambda (_%hd205594205644%_
                                         _%sig205600205647%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205594205644%_))
                                      (let ((_%e205597205650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205594205644%_))))
                                        (let ((_%lp-tl205599205657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205597205650%_)))
                                              (_%lp-hd205598205654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205597205650%_))))
                                          (_%loop205596205640%_
                                           _%lp-tl205599205657%_
                                           (cons _%lp-hd205598205654%_
                                                 _%sig205600205647%_))))
                                      (let ((_%sig205601205660%_
                                             (reverse _%sig205600205647%_)))
                                        (_%__kont208971208972%_
                                         _%sig205601205660%_
                                         _%hd205591205628%_))))))
                        (_%loop205596205640%_ _%target205593205634%_ '()))))
                   (_%__match209023209024%_
                    (lambda (_%e205587205614%_
                             _%hd205588205618%_
                             _%tl205589205621%_
                             _%e205590205624%_
                             _%hd205591205628%_
                             _%tl205592205631%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl205592205631%_))
                          (let ((_%__splice208973208974%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl205592205631%_
                                    '0))))
                            (let ((_%tl205595205637%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208973208974%_
                                      '1)))
                                  (_%target205593205634%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208973208974%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205595205637%_))
                                  (_%__match209031209032%_
                                   _%e205587205614%_
                                   _%hd205588205618%_
                                   _%tl205589205621%_
                                   _%e205590205624%_
                                   _%hd205591205628%_
                                   _%tl205592205631%_
                                   _%__splice208973208974%_
                                   _%target205593205634%_
                                   _%tl205595205637%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g205560205607%_)))))
                          (let () (declare (not safe)) (_%g205560205607%_)))))
                   (_%__match209011209012%_
                    (lambda (_%e205564205699%_
                             _%hd205565205703%_
                             _%tl205566205706%_
                             _%e205567205709%_
                             _%hd205568205713%_
                             _%tl205569205716%_
                             _%e205570205719%_
                             _%hd205571205723%_
                             _%tl205572205726%_
                             _%e205573205729%_
                             _%hd205574205733%_
                             _%tl205575205736%_
                             _%__splice208969208970%_
                             _%target205576205739%_
                             _%tl205578205742%_)
                      (letrec ((_%loop205579205745%_
                                (lambda (_%hd205577205749%_
                                         _%sig205583205752%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205577205749%_))
                                      (let ((_%e205580205755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205577205749%_))))
                                        (let ((_%lp-tl205582205762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205580205755%_)))
                                              (_%lp-hd205581205759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205580205755%_))))
                                          (_%loop205579205745%_
                                           _%lp-tl205582205762%_
                                           (cons _%lp-hd205581205759%_
                                                 _%sig205583205752%_))))
                                      (let ((_%sig205584205765%_
                                             (reverse _%sig205583205752%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl205572205726%_))
                                            (_%__kont208967208968%_
                                             _%sig205584205765%_
                                             _%hd205568205713%_)
                                            (_%__match209023209024%_
                                             _%e205564205699%_
                                             _%hd205565205703%_
                                             _%tl205566205706%_
                                             _%e205567205709%_
                                             _%hd205568205713%_
                                             _%tl205569205716%_)))))))
                        (_%loop205579205745%_ _%target205576205739%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208964208965%_))
                  (let ((_%e205564205699%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208964208965%_))))
                    (let ((_%tl205566205706%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205564205699%_)))
                          (_%hd205565205703%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205564205699%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205566205706%_))
                          (let ((_%e205567205709%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205566205706%_))))
                            (let ((_%tl205569205716%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205567205709%_)))
                                  (_%hd205568205713%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205567205709%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205569205716%_))
                                  (let ((_%e205570205719%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205569205716%_))))
                                    (let ((_%tl205572205726%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205570205719%_)))
                                          (_%hd205571205723%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205570205719%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd205571205723%_))
                                          (let ((_%e205573205729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd205571205723%_))))
                                            (let ((_%tl205575205736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e205573205729%_)))
                                                  (_%hd205574205733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e205573205729%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd205574205733%_))
                                                  (if (let ((__tmp209398
                                                             |gxc[1]#_g209399_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp209398
                                                         _%hd205574205733%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl205575205736%_))
                                                          (let ((_%__splice208969208970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205575205736%_ '0))))
                    (let ((_%tl205578205742%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208969208970%_ '1)))
                          (_%target205576205739%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208969208970%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205578205742%_))
                          (_%__match209011209012%_
                           _%e205564205699%_
                           _%hd205565205703%_
                           _%tl205566205706%_
                           _%e205567205709%_
                           _%hd205568205713%_
                           _%tl205569205716%_
                           _%e205570205719%_
                           _%hd205571205723%_
                           _%tl205572205726%_
                           _%e205573205729%_
                           _%hd205574205733%_
                           _%tl205575205736%_
                           _%__splice208969208970%_
                           _%target205576205739%_
                           _%tl205578205742%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205569205716%_))
                              (let ((_%__splice208973208974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205569205716%_
                                        '0))))
                                (let ((_%tl205595205637%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208973208974%_
                                          '1)))
                                      (_%target205593205634%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208973208974%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205595205637%_))
                                      (_%__match209031209032%_
                                       _%e205564205699%_
                                       _%hd205565205703%_
                                       _%tl205566205706%_
                                       _%e205567205709%_
                                       _%hd205568205713%_
                                       _%tl205569205716%_
                                       _%__splice208973208974%_
                                       _%target205593205634%_
                                       _%tl205595205637%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g205560205607%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205560205607%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl205569205716%_))
                      (let ((_%__splice208973208974%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl205569205716%_
                                '0))))
                        (let ((_%tl205595205637%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208973208974%_ '1)))
                              (_%target205593205634%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208973208974%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205595205637%_))
                              (_%__match209031209032%_
                               _%e205564205699%_
                               _%hd205565205703%_
                               _%tl205566205706%_
                               _%e205567205709%_
                               _%hd205568205713%_
                               _%tl205569205716%_
                               _%__splice208973208974%_
                               _%target205593205634%_
                               _%tl205595205637%_)
                              (let ()
                                (declare (not safe))
                                (_%g205560205607%_)))))
                      (let () (declare (not safe)) (_%g205560205607%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl205569205716%_))
                  (let ((_%__splice208973208974%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205569205716%_ '0))))
                    (let ((_%tl205595205637%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208973208974%_ '1)))
                          (_%target205593205634%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208973208974%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205595205637%_))
                          (_%__match209031209032%_
                           _%e205564205699%_
                           _%hd205565205703%_
                           _%tl205566205706%_
                           _%e205567205709%_
                           _%hd205568205713%_
                           _%tl205569205716%_
                           _%__splice208973208974%_
                           _%target205593205634%_
                           _%tl205595205637%_)
                          (let () (declare (not safe)) (_%g205560205607%_)))))
                  (let () (declare (not safe)) (_%g205560205607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl205569205716%_))
                                                      (let ((_%__splice208973208974%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl205569205716%_ '0))))
                (let ((_%tl205595205637%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208973208974%_ '1)))
                      (_%target205593205634%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208973208974%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205595205637%_))
                      (_%__match209031209032%_
                       _%e205564205699%_
                       _%hd205565205703%_
                       _%tl205566205706%_
                       _%e205567205709%_
                       _%hd205568205713%_
                       _%tl205569205716%_
                       _%__splice208973208974%_
                       _%target205593205634%_
                       _%tl205595205637%_)
                      (let () (declare (not safe)) (_%g205560205607%_)))))
              (let () (declare (not safe)) (_%g205560205607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205569205716%_))
                                              (let ((_%__splice208973208974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205569205716%_
                                                        '0))))
                                                (let ((_%tl205595205637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208973208974%_
                                                          '1)))
                                                      (_%target205593205634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208973208974%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205595205637%_))
                                                      (_%__match209031209032%_
                                                       _%e205564205699%_
                                                       _%hd205565205703%_
                                                       _%tl205566205706%_
                                                       _%e205567205709%_
                                                       _%hd205568205713%_
                                                       _%tl205569205716%_
                                                       _%__splice208973208974%_
                                                       _%target205593205634%_
                                                       _%tl205595205637%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205560205607%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205560205607%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205569205716%_))
                                      (let ((_%__splice208973208974%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205569205716%_
                                                '0))))
                                        (let ((_%tl205595205637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208973208974%_
                                                  '1)))
                                              (_%target205593205634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208973208974%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205595205637%_))
                                              (_%__match209031209032%_
                                               _%e205564205699%_
                                               _%hd205565205703%_
                                               _%tl205566205706%_
                                               _%e205567205709%_
                                               _%hd205568205713%_
                                               _%tl205569205716%_
                                               _%__splice208973208974%_
                                               _%target205593205634%_
                                               _%tl205595205637%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205560205607%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205560205607%_))))))
                          (let () (declare (not safe)) (_%g205560205607%_)))))
                  (let () (declare (not safe)) (_%g205560205607%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx206954%_ _%id206956%_)
        (let ((_%proc206960%_
               (let ((__tmp209400
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206956%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209400))))
          (if (procedure? _%proc206960%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx206954%_
                 _%id206956%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx206945%_ _%id206947%_)
        (let ((_%klass206951%_
               (let ((__tmp209401
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206947%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209401))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass206951%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx206945%_
                 _%id206947%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx206195%_ _%proc206197%_ _%sig206198%_)
        (letrec ((_%signature-arity206200%_
                  (lambda (_%args206877%_)
                    (let _%loop206880%_ ((_%rest206883%_ _%args206877%_)
                                         (_%count206885%_ '0))
                      (let* ((_%rest206886206897%_ _%rest206883%_)
                             (_%E206890206903%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest206886206897%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K206893206934%_
                               (lambda (_%rest206931%_)
                                 (_%loop206880%_
                                  _%rest206931%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count206885%_ '1)))))
                              (_%K206892206923%_ (lambda () _%count206885%_))
                              (_%K206891206911%_
                               (lambda () (cons _%count206885%_ '()))))
                          (let ((_%try-match206888206927%_
                                 (lambda ()
                                   (if (null? _%rest206886206897%_)
                                       (_%K206892206923%_)
                                       (_%K206891206911%_)))))
                            (if (pair? _%rest206886206897%_)
                                (let* ((_%tl206895206938%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest206886206897%_)))
                                       (_%rest206942%_ _%tl206895206938%_))
                                  (_%K206893206934%_ _%rest206942%_))
                                (_%try-match206888206927%_))))))))
                 (_%make-signature206202%_
                  (lambda (_%args206759%_
                           _%return206761%_
                           _%effect206762%_
                           _%unchecked206763%_)
                    (let ((__tmp209402
                           (lambda (_%g206764206766%_)
                             (|gxc[1]#verify-class!|
                              _%ctx206195%_
                              _%g206764206766%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp209402 _%args206759%_))
                    (|gxc[1]#verify-class!| _%ctx206195%_ _%return206761%_)
                    (if _%unchecked206763%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx206195%_
                         _%unchecked206763%_)
                        '#!void)
                    (let ((_%arity206770%_
                           (_%signature-arity206200%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args206759%_)))))
                      (if _%effect206762%_
                          (let ((_%effect206773%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect206762%_))))
                            (if (and (list? _%effect206773%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect206773%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx206195%_
                                   _%proc206197%_
                                   _%effect206773%_))))
                          '#!void)
                      (cons _%arity206770%_
                            (cons (let* ((_%g206776206799%_
                                          (lambda (_%g206777206795%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g206777206795%_))))
                                         (_%g206775206873%_
                                          (lambda (_%g206777206803%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g206777206803%_))
                                                (let ((_%e206782206806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g206777206803%_))))
                                                  (let ((_%hd206783206810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206782206806%_)))
                                                        (_%tl206784206813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206782206806%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206784206813%_))
                                                        (let ((_%e206785206816%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206784206813%_))))
                  (let ((_%hd206786206820%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206785206816%_)))
                        (_%tl206787206823%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206785206816%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206787206823%_))
                        (let ((_%e206788206826%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206787206823%_))))
                          (let ((_%hd206789206830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206788206826%_)))
                                (_%tl206790206833%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206788206826%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206790206833%_))
                                (let ((_%e206791206836%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206790206833%_))))
                                  (let ((_%hd206792206840%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206791206836%_)))
                                        (_%tl206793206843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206791206836%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206793206843%_))
                                        ((lambda (_%L206846%_
                                                  _%L206848%_
                                                  _%L206849%_
                                                  _%L206850%_)
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
                           (cons _%L206850%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L206849%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206848%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L206846%_ '()))
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
                                         _%hd206792206840%_
                                         _%hd206789206830%_
                                         _%hd206786206820%_
                                         _%hd206783206810%_)
                                        (_%g206776206799%_
                                         _%g206777206803%_))))
                                (_%g206776206799%_ _%g206777206803%_))))
                        (_%g206776206799%_ _%g206777206803%_))))
                (_%g206776206799%_ _%g206777206803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206776206799%_
                                                 _%g206777206803%_)))))
                                    (_%g206775206873%_
                                     (list _%args206759%_
                                           _%return206761%_
                                           _%effect206762%_
                                           _%unchecked206763%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx206195%_ _%proc206197%_)
          (let* ((_%__stx209042209043%_ _%sig206198%_)
                 (_%g206209206312%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx209042209043%_)))))
            (let ((_%__kont209045209046%_
                   (lambda (_%L206740%_ _%L206742%_)
                     (_%make-signature206202%_
                      _%L206742%_
                      _%L206740%_
                      '#f
                      '#f)))
                  (_%__kont209047209048%_
                   (lambda (_%L206691%_ _%L206693%_ _%L206694%_)
                     (_%make-signature206202%_
                      _%L206694%_
                      _%L206693%_
                      _%L206691%_
                      '#f)))
                  (_%__kont209049209050%_
                   (lambda (_%L206615%_ _%L206617%_ _%L206618%_)
                     (_%make-signature206202%_
                      _%L206618%_
                      _%L206617%_
                      _%L206615%_
                      (let ((__tmp209403
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc206197%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209403)))))
                  (_%__kont209051209052%_
                   (lambda (_%L206521%_ _%L206523%_ _%L206524%_ _%L206525%_)
                     (_%make-signature206202%_
                      _%L206525%_
                      _%L206524%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206521%_)))))
                  (_%__kont209053209054%_
                   (lambda (_%L206428%_ _%L206430%_)
                     (_%make-signature206202%_
                      _%L206430%_
                      _%L206428%_
                      '#f
                      (let ((__tmp209404
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc206197%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209404)))))
                  (_%__kont209055209056%_
                   (lambda (_%L206363%_ _%L206365%_ _%L206366%_)
                     (_%make-signature206202%_
                      _%L206366%_
                      _%L206365%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206363%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209042209043%_))
                  (let ((_%e206213206720%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209042209043%_))))
                    (let ((_%tl206215206727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206213206720%_)))
                          (_%hd206214206724%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206213206720%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206215206727%_))
                          (let ((_%e206216206730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206215206727%_))))
                            (let ((_%tl206218206737%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206216206730%_)))
                                  (_%hd206217206734%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206216206730%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206218206737%_))
                                  (_%__kont209045209046%_
                                   _%hd206217206734%_
                                   _%hd206214206724%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206218206737%_))
                                      (let ((_%e206228206667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206218206737%_))))
                                        (let ((_%tl206230206674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206228206667%_)))
                                              (_%hd206229206671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206228206667%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd206229206671%_))
                                              (let ((_%e206231206677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd206229206671%_))))
                                                (if (equal? _%e206231206677%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206230206674%_))
                                                        (let ((_%e206232206681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206230206674%_))))
                  (let ((_%tl206234206688%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206232206681%_)))
                        (_%hd206233206685%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206232206681%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206234206688%_))
                        (_%__kont209047209048%_
                         _%hd206233206685%_
                         _%hd206217206734%_
                         _%hd206214206724%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206234206688%_))
                            (let ((_%e206251206601%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206234206688%_))))
                              (let ((_%tl206253206608%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206251206601%_)))
                                    (_%hd206252206605%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206251206601%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd206252206605%_))
                                    (let ((_%e206254206611%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd206252206605%_))))
                                      (if (equal? _%e206254206611%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206253206608%_))
                                              (_%__kont209049209050%_
                                               _%hd206233206685%_
                                               _%hd206217206734%_
                                               _%hd206214206724%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206253206608%_))
                                                  (let ((_%e206276206511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206253206608%_))))
                                                    (let ((_%tl206278206518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206276206511%_)))
                                                          (_%hd206277206515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206276206511%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206278206518%_))
                                                          (_%__kont209051209052%_
                                                           _%hd206277206515%_
                                                           _%hd206233206685%_
                                                           _%hd206217206734%_
                                                           _%hd206214206724%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206209206312%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206209206312%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206209206312%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206209206312%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206209206312%_))))))
                (let () (declare (not safe)) (_%g206209206312%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e206231206677%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206230206674%_))
                                                            (_%__kont209053209054%_
                                                             _%hd206217206734%_
                                                             _%hd206214206724%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl206230206674%_))
                        (let ((_%e206304206353%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206230206674%_))))
                          (let ((_%tl206306206360%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206304206353%_)))
                                (_%hd206305206357%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206304206353%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl206306206360%_))
                                (_%__kont209055209056%_
                                 _%hd206305206357%_
                                 _%hd206217206734%_
                                 _%hd206214206724%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g206209206312%_)))))
                        (let () (declare (not safe)) (_%g206209206312%_))))
                (let () (declare (not safe)) (_%g206209206312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206209206312%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206209206312%_))))))
                          (let () (declare (not safe)) (_%g206209206312%_)))))
                  (let () (declare (not safe)) (_%g206209206312%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig205806%_)
        (let* ((_%g205809205889%_
                (lambda (_%g205810205885%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205810205885%_))))
               (_%g205808206191%_
                (lambda (_%g205810205893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205810205893%_))
                      (let ((_%e205816205896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205810205893%_))))
                        (let ((_%hd205817205900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205816205896%_)))
                              (_%tl205818205903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205816205896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205818205903%_))
                              (let ((_%e205819205906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205818205903%_))))
                                (let ((_%hd205820205910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205819205906%_)))
                                      (_%tl205821205913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205819205906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd205820205910%_))
                                      (let ((_%e205822205916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205820205910%_))))
                                        (if (equal? _%e205822205916%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205821205913%_))
                                                (let ((_%e205823205920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205821205913%_))))
                                                  (let ((_%hd205824205924%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205823205920%_)))
                                                        (_%tl205825205927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205823205920%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205824205924%_))
                                                        (let ((_%e205826205930%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205824205924%_))))
                  (let ((_%hd205827205934%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205826205930%_)))
                        (_%tl205828205937%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205826205930%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd205827205934%_))
                        (if (let ((__tmp209405 |gxc[1]#_g209406_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp209405
                               _%hd205827205934%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205828205937%_))
                                (let ((_%e205829205940%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205828205937%_))))
                                  (let ((_%hd205830205944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205829205940%_)))
                                        (_%tl205831205947%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205829205940%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205831205947%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205825205927%_))
                                            (let ((_%e205832205950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205825205927%_))))
                                              (let ((_%hd205833205954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205832205950%_)))
                                                    (_%tl205834205957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205832205950%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205833205954%_))
                                                    (let ((_%e205835205960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205833205954%_))))
                                                      (if (equal? _%e205835205960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205834205957%_))
                      (let ((_%e205836205964%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205834205957%_))))
                        (let ((_%hd205837205968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205836205964%_)))
                              (_%tl205838205971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205836205964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd205837205968%_))
                              (let ((_%e205839205974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd205837205968%_))))
                                (let ((_%hd205840205978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205839205974%_)))
                                      (_%tl205841205981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205839205974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd205840205978%_))
                                      (if (let ((__tmp209407
                                                 |gxc[1]#_g209408_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp209407
                                             _%hd205840205978%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205841205981%_))
                                              (let ((_%e205842205984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205841205981%_))))
                                                (let ((_%hd205843205988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205842205984%_)))
                                                      (_%tl205844205991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205842205984%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205844205991%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205838205971%_))
                                                          (let ((_%e205845205994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205838205971%_))))
                    (let ((_%hd205846205998%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205845205994%_)))
                          (_%tl205847206001%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205845205994%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205846205998%_))
                          (let ((_%e205848206004%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205846205998%_))))
                            (if (equal? _%e205848206004%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl205847206001%_))
                                    (let ((_%e205849206008%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl205847206001%_))))
                                      (let ((_%hd205850206012%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205849206008%_)))
                                            (_%tl205851206015%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205849206008%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd205850206012%_))
                                            (let ((_%e205852206018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd205850206012%_))))
                                              (let ((_%hd205853206022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205852206018%_)))
                                                    (_%tl205854206025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205852206018%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd205853206022%_))
                                                    (if (let ((__tmp209409
                                                               |gxc[1]#_g209410_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp209409
                                                           _%hd205853206022%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205854206025%_))
                                                            (let ((_%e205855206028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl205854206025%_))))
                      (let ((_%hd205856206032%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205855206028%_)))
                            (_%tl205857206035%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205855206028%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl205857206035%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205851206015%_))
                                (let ((_%e205858206038%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205851206015%_))))
                                  (let ((_%hd205859206042%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205858206038%_)))
                                        (_%tl205860206045%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205858206038%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd205859206042%_))
                                        (let ((_%e205861206048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd205859206042%_))))
                                          (if (equal? _%e205861206048%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205860206045%_))
                                                  (let ((_%e205862206052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205860206045%_))))
                                                    (let ((_%hd205863206056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205862206052%_)))
                                                          (_%tl205864206059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205862206052%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd205863206056%_))
                                                          (let ((_%e205865206062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd205863206056%_))))
                    (let ((_%hd205866206066%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205865206062%_)))
                          (_%tl205867206069%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205865206062%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd205866206066%_))
                          (if (let ((__tmp209411 |gxc[1]#_g209412_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp209411
                                 _%hd205866206066%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205867206069%_))
                                  (let ((_%e205868206072%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205867206069%_))))
                                    (let ((_%hd205869206076%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205868206072%_)))
                                          (_%tl205870206079%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205868206072%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205870206079%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205864206059%_))
                                              (let ((_%e205871206082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205864206059%_))))
                                                (let ((_%hd205872206086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205871206082%_)))
                                                      (_%tl205873206089%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205871206082%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd205872206086%_))
                                                      (let ((_%e205874206092%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd205872206086%_))))
                (if (equal? _%e205874206092%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205873206089%_))
                        (let ((_%e205875206096%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205873206089%_))))
                          (let ((_%hd205876206100%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205875206096%_)))
                                (_%tl205877206103%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205875206096%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd205876206100%_))
                                (let ((_%e205878206106%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd205876206100%_))))
                                  (let ((_%hd205879206110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205878206106%_)))
                                        (_%tl205880206113%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205878206106%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd205879206110%_))
                                        (if (let ((__tmp209413
                                                   |gxc[1]#_g209414_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp209413
                                               _%hd205879206110%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205880206113%_))
                                                (let ((_%e205881206116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205880206113%_))))
                                                  (let ((_%hd205882206120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205881206116%_)))
                                                        (_%tl205883206123%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205881206116%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205883206123%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl205877206103%_))
                                                            ((lambda (_%L206126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L206128%_
                              _%L206129%_
                              _%L206130%_
                              _%L206131%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L206128%_))
                           (cons _%L206128%_
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
                       (cons _%L206130%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L206126%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd205882206120%_
                     _%hd205869206076%_
                     _%hd205856206032%_
                     _%hd205843205988%_
                     _%hd205830205944%_)
                    (_%g205809205889%_ _%g205810205893%_))
                (_%g205809205889%_ _%g205810205893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205809205889%_
                                                 _%g205810205893%_))
                                            (_%g205809205889%_
                                             _%g205810205893%_))
                                        (_%g205809205889%_
                                         _%g205810205893%_))))
                                (_%g205809205889%_ _%g205810205893%_))))
                        (_%g205809205889%_ _%g205810205893%_))
                    (_%g205809205889%_ _%g205810205893%_)))
              (_%g205809205889%_ _%g205810205893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205809205889%_
                                               _%g205810205893%_))
                                          (_%g205809205889%_
                                           _%g205810205893%_))))
                                  (_%g205809205889%_ _%g205810205893%_))
                              (_%g205809205889%_ _%g205810205893%_))
                          (_%g205809205889%_ _%g205810205893%_))))
                  (_%g205809205889%_ _%g205810205893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g205809205889%_
                                                   _%g205810205893%_))
                                              (_%g205809205889%_
                                               _%g205810205893%_)))
                                        (_%g205809205889%_
                                         _%g205810205893%_))))
                                (_%g205809205889%_ _%g205810205893%_))
                            (_%g205809205889%_ _%g205810205893%_))))
                    (_%g205809205889%_ _%g205810205893%_))
                (_%g205809205889%_ _%g205810205893%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205809205889%_
                                                     _%g205810205893%_))))
                                            (_%g205809205889%_
                                             _%g205810205893%_))))
                                    (_%g205809205889%_ _%g205810205893%_))
                                (_%g205809205889%_ _%g205810205893%_)))
                          (_%g205809205889%_ _%g205810205893%_))))
                  (_%g205809205889%_ _%g205810205893%_))
              (_%g205809205889%_ _%g205810205893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205809205889%_
                                               _%g205810205893%_))
                                          (_%g205809205889%_
                                           _%g205810205893%_))
                                      (_%g205809205889%_ _%g205810205893%_))))
                              (_%g205809205889%_ _%g205810205893%_))))
                      (_%g205809205889%_ _%g205810205893%_))
                  (_%g205809205889%_ _%g205810205893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205809205889%_
                                                     _%g205810205893%_))))
                                            (_%g205809205889%_
                                             _%g205810205893%_))
                                        (_%g205809205889%_
                                         _%g205810205893%_))))
                                (_%g205809205889%_ _%g205810205893%_))
                            (_%g205809205889%_ _%g205810205893%_))
                        (_%g205809205889%_ _%g205810205893%_))))
                (_%g205809205889%_ _%g205810205893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205809205889%_
                                                 _%g205810205893%_))
                                            (_%g205809205889%_
                                             _%g205810205893%_)))
                                      (_%g205809205889%_ _%g205810205893%_))))
                              (_%g205809205889%_ _%g205810205893%_))))
                      (_%g205809205889%_ _%g205810205893%_)))))
          (_%g205808206191%_ _%sig205806%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx206963%_)
        (let* ((_%g206966206984%_
                (lambda (_%g206967206980%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206967206980%_))))
               (_%g206965207039%_
                (lambda (_%g206967206988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206967206988%_))
                      (let ((_%e206970206991%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206967206988%_))))
                        (let ((_%hd206971206995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206970206991%_)))
                              (_%tl206972206998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206970206991%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206972206998%_))
                              (let ((_%e206973207001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206972206998%_))))
                                (let ((_%hd206974207005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206973207001%_)))
                                      (_%tl206975207008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206973207001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206975207008%_))
                                      (let ((_%e206976207011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206975207008%_))))
                                        (let ((_%hd206977207015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206976207011%_)))
                                              (_%tl206978207018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206976207011%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206978207018%_))
                                              ((lambda (_%L207021%_
                                                        _%L207023%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207023%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207021%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx206963%_
                                                        _%L207023%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx206963%_
                                                        _%L207021%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L207023%_
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
                                                   (cons _%L207021%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206966206984%_
                                                      _%g206967206988%_)))
                                               _%hd206977207015%_
                                               _%hd206974207005%_)
                                              (_%g206966206984%_
                                               _%g206967206988%_))))
                                      (_%g206966206984%_ _%g206967206988%_))))
                              (_%g206966206984%_ _%g206967206988%_))))
                      (_%g206966206984%_ _%g206967206988%_)))))
          (_%g206965207039%_ _%stx206963%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx207043%_)
        (let* ((_%g207046207070%_
                (lambda (_%g207047207066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207047207066%_))))
               (_%g207045207353%_
                (lambda (_%g207047207074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207047207074%_))
                      (let ((_%e207050207077%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207047207074%_))))
                        (let ((_%hd207051207081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207050207077%_)))
                              (_%tl207052207084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207050207077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207052207084%_))
                              (let ((_%e207053207087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207052207084%_))))
                                (let ((_%hd207054207091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207053207087%_)))
                                      (_%tl207055207094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207053207087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207055207094%_))
                                      (let ((_g209415_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207055207094%_
                                                '0))))
                                        (begin
                                          (let ((_g209416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209415_)
                                                       (##values-length
                                                        _g209415_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209416_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209416_)))
                                          (let ((_%target207056207097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g209415_ 0)))
                                                (_%tl207058207100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g209415_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207058207100%_))
                                                (letrec ((_%loop207059207103%_
                                                          (lambda (_%hd207057207107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature207063207110%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207057207107%_))
                        (let ((_%e207060207113%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207057207107%_))))
                          (let ((_%lp-hd207061207117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207060207113%_)))
                                (_%lp-tl207062207120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207060207113%_))))
                            (_%loop207059207103%_
                             _%lp-tl207062207120%_
                             (cons _%lp-hd207061207117%_
                                   _%signature207063207110%_))))
                        (let ((_%signature207064207123%_
                               (reverse _%signature207063207110%_)))
                          ((lambda (_%L207127%_ _%L207129%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L207129%_))
                                 (let* ((_%g207147207162%_
                                         (lambda (_%g207148207158%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207148207158%_))))
                                        (_%g207146207341%_
                                         (lambda (_%g207148207166%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g207148207166%_))
                                               (let ((_%e207151207169%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g207148207166%_))))
                                                 (let ((_%hd207152207173%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207151207169%_)))
                                                       (_%tl207153207176%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207151207169%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl207153207176%_))
                                                       (let ((_%e207154207179%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl207153207176%_))))
                 (let ((_%hd207155207183%_
                        (let ()
                          (declare (not safe))
                          (##car _%e207154207179%_)))
                       (_%tl207156207186%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e207154207179%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl207156207186%_))
                       ((lambda (_%L207189%_ _%L207191%_)
                          (let* ((_%g207207207215%_
                                  (lambda (_%g207208207211%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g207208207211%_))))
                                 (_%g207206207337%_
                                  (lambda (_%g207208207219%_)
                                    ((lambda (_%L207222%_)
                                       (let* ((_%unchecked207235%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L207189%_))
                                              (_%g207238207246%_
                                               (lambda (_%g207239207242%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g207239207242%_))))
                                              (_%g207237207269%_
                                               (lambda (_%g207239207250%_)
                                                 ((lambda (_%L207253%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L207222%_
                                                                (cons _%L207253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g207239207250%_))))
                                         (_%g207237207269%_
                                          (if _%unchecked207235%_
                                              (let* ((_%g207273207288%_
                                                      (lambda (_%g207274207284%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g207274207284%_))))
                                                     (_%g207272207333%_
                                                      (lambda (_%g207274207292%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g207274207292%_))
                                                            (let ((_%e207277207295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g207274207292%_))))
                      (let ((_%hd207278207299%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207277207295%_)))
                            (_%tl207279207302%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207277207295%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207279207302%_))
                            (let ((_%e207280207305%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207279207302%_))))
                              (let ((_%hd207281207309%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207280207305%_)))
                                    (_%tl207282207312%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207280207305%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl207282207312%_))
                                    ((lambda (_%L207315%_ _%L207317%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L207317%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207191%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L207315%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd207281207309%_
                                     _%hd207278207299%_)
                                    (_%g207273207288%_ _%g207274207292%_))))
                            (_%g207273207288%_ _%g207274207292%_))))
                    (_%g207273207288%_ _%g207274207292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207272207333%_
                                                 _%unchecked207235%_))
                                              '(begin)))))
                                     _%g207208207219%_))))
                            (_%g207206207337%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L207129%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L207191%_ '()))
                   (cons '#f (cons 'signature: (cons _%L207189%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd207155207183%_
                        _%hd207152207173%_)
                       (_%g207147207162%_ _%g207148207166%_))))
               (_%g207147207162%_ _%g207148207166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207147207162%_
                                                _%g207148207166%_)))))
                                   (_%g207146207341%_
                                    (|gxc[1]#parse-signature|
                                     _%stx207043%_
                                     _%L207129%_
                                     (let ((__tmp209417
                                            (lambda (_%g207344207347%_
                                                     _%g207345207350%_)
                                              (cons _%g207344207347%_
                                                    _%g207345207350%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp209417
                                        '()
                                        _%L207127%_)))))
                                 (_%g207046207070%_ _%g207047207074%_)))
                           _%signature207064207123%_
                           _%hd207054207091%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207059207103%_
                                                   _%target207056207097%_
                                                   '()))
                                                (_%g207046207070%_
                                                 _%g207047207074%_)))))
                                      (_%g207046207070%_ _%g207047207074%_))))
                              (_%g207046207070%_ _%g207047207074%_))))
                      (_%g207046207070%_ _%g207047207074%_)))))
          (_%g207045207353%_ _%stx207043%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx207358%_)
        (let* ((_%g207361207385%_
                (lambda (_%g207362207381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207362207381%_))))
               (_%g207360208268%_
                (lambda (_%g207362207389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207362207389%_))
                      (let ((_%e207365207392%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207362207389%_))))
                        (let ((_%hd207366207396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207365207392%_)))
                              (_%tl207367207399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207365207392%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207367207399%_))
                              (let ((_%e207368207402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207367207399%_))))
                                (let ((_%hd207369207406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207368207402%_)))
                                      (_%tl207370207409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207368207402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207370207409%_))
                                      (let ((_g209418_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207370207409%_
                                                '0))))
                                        (begin
                                          (let ((_g209419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209418_)
                                                       (##values-length
                                                        _g209418_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209419_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209419_)))
                                          (let ((_%target207371207412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g209418_ 0)))
                                                (_%tl207373207415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g209418_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207373207415%_))
                                                (letrec ((_%loop207374207418%_
                                                          (lambda (_%hd207372207422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature207378207425%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207372207422%_))
                        (let ((_%e207375207428%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207372207422%_))))
                          (let ((_%lp-hd207376207432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207375207428%_)))
                                (_%lp-tl207377207435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207375207428%_))))
                            (_%loop207374207418%_
                             _%lp-tl207377207435%_
                             (cons _%lp-hd207376207432%_
                                   _%case-signature207378207425%_))))
                        (let ((_%case-signature207379207438%_
                               (reverse _%case-signature207378207425%_)))
                          ((lambda (_%L207442%_ _%L207444%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L207444%_))
                                 (let* ((_%signatures207475%_
                                         (map (lambda (_%g207461207463%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx207358%_
                                                 _%L207444%_
                                                 _%g207461207463%_))
                                              (let ((__tmp209420
                                                     (lambda (_%g207466207469%_
                                                              _%g207467207472%_)
                                                       (cons _%g207466207469%_
                                                             _%g207467207472%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp209420
                                                 '()
                                                 _%L207442%_))))
                                        (_%g207478207504%_
                                         (lambda (_%g207479207500%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207479207500%_))))
                                        (_%g207477208264%_
                                         (lambda (_%g207479207508%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g207479207508%_))
                                               (let ((_g209421_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g207479207508%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g209422_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g209421_)
                        (##values-length _g209421_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g209422_ 2)))
                 (error "Context expects 2 values" _g209422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target207482207511%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g209421_
                                                             0)))
                                                         (_%tl207484207514%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g209421_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207484207514%_))
                                                         (letrec ((_%loop207485207517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd207483207521%_
                                    _%sig207489207524%_
                                    _%arity207490207526%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207483207521%_))
                                 (let ((_%e207486207529%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207483207521%_))))
                                   (let ((_%lp-hd207487207533%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207486207529%_)))
                                         (_%lp-tl207488207536%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207486207529%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd207487207533%_))
                                         (let ((_%e207493207539%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd207487207533%_))))
                                           (let ((_%hd207494207543%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e207493207539%_)))
                                                 (_%tl207495207546%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e207493207539%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207495207546%_))
                                                 (let ((_%e207496207549%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207495207546%_))))
                                                   (let ((_%hd207497207553%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207496207549%_)))
                                                         (_%tl207498207556%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207496207549%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207498207556%_))
                                                         (_%loop207485207517%_
                                                          _%lp-tl207488207536%_
                                                          (cons _%hd207497207553%_
                                                                _%sig207489207524%_)
                                                          (cons _%hd207494207543%_
                                                                _%arity207490207526%_))
                                                         (_%g207478207504%_
                                                          _%g207479207508%_))))
                                                 (_%g207478207504%_
                                                  _%g207479207508%_))))
                                         (_%g207478207504%_
                                          _%g207479207508%_))))
                                 (let ((_%sig207491207559%_
                                        (reverse _%sig207489207524%_))
                                       (_%arity207492207562%_
                                        (reverse _%arity207490207526%_)))
                                   ((lambda (_%L207565%_ _%L207567%_)
                                      (let* ((_%g207584207592%_
                                              (lambda (_%g207585207588%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g207585207588%_))))
                                             (_%g207583208249%_
                                              (lambda (_%g207585207596%_)
                                                ((lambda (_%L207599%_)
                                                   (let* ((_%g207612207620%_
                                                           (lambda (_%g207613207616%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g207613207616%_))))
                  (_%g207611207642%_
                   (lambda (_%g207613207624%_)
                     ((lambda (_%L207627%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L207599%_ (cons _%L207627%_ '()))))
                      _%g207613207624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207611207642%_
                                                      (let ((_g209423_
                                                             (let _%loop207646%_ ((_%rest207649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures207475%_)
                                          (_%unchecked-proc207651%_ '#f)
                                          (_%unchecked-clauses207652%_ '()))
                       (let* ((_%rest207653207661%_ _%rest207649%_)
                              (_%else207655207673%_
                               (lambda ()
                                 (values _%unchecked-proc207651%_
                                         (reverse!
                                          _%unchecked-clauses207652%_))))
                              (_%K207657208114%_
                               (lambda (_%rest207677%_ _%hd207679%_)
                                 (let* ((_%g207681207768%_
                                         (lambda (_%g207682207764%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207682207764%_))))
                                        (_%g207680208110%_
                                         (lambda (_%g207682207772%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g207682207772%_))
                                               (let ((_%e207689207775%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g207682207772%_))))
                                                 (let ((_%hd207690207779%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207689207775%_)))
                                                       (_%tl207691207782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207689207775%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl207691207782%_))
                                                       (let ((_%e207692207785%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl207691207782%_))))
                 (let ((_%hd207693207789%_
                        (let ()
                          (declare (not safe))
                          (##car _%e207692207785%_)))
                       (_%tl207694207792%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e207692207785%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd207693207789%_))
                       (let ((_%e207695207795%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd207693207789%_))))
                         (let ((_%hd207696207799%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207695207795%_)))
                               (_%tl207697207802%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207695207795%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl207697207802%_))
                               (let ((_%e207698207805%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl207697207802%_))))
                                 (let ((_%hd207699207809%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207698207805%_)))
                                       (_%tl207700207812%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207698207805%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd207699207809%_))
                                       (let ((_%e207701207815%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd207699207809%_))))
                                         (if (equal? _%e207701207815%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207700207812%_))
                                                 (let ((_%e207702207819%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207700207812%_))))
                                                   (let ((_%hd207703207823%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207702207819%_)))
                                                         (_%tl207704207826%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207702207819%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd207703207823%_))
                                                         (let ((_%e207705207829%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd207703207823%_))))
                   (let ((_%hd207706207833%_
                          (let ()
                            (declare (not safe))
                            (##car _%e207705207829%_)))
                         (_%tl207707207836%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e207705207829%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd207706207833%_))
                         (if (let ((__tmp209425 |gxc[1]#_g209426_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp209425
                                _%hd207706207833%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207707207836%_))
                                 (let ((_%e207708207839%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207707207836%_))))
                                   (let ((_%hd207709207843%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207708207839%_)))
                                         (_%tl207710207846%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207708207839%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl207710207846%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl207704207826%_))
                                             (let ((_%e207711207849%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl207704207826%_))))
                                               (let ((_%hd207712207853%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207711207849%_)))
                                                     (_%tl207713207856%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207711207849%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd207712207853%_))
                                                     (let ((_%e207714207859%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd207712207853%_))))
                                                       (if (equal? _%e207714207859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl207713207856%_))
                       (let ((_%e207715207863%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl207713207856%_))))
                         (let ((_%hd207716207867%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207715207863%_)))
                               (_%tl207717207870%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207715207863%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd207716207867%_))
                               (let ((_%e207718207873%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd207716207867%_))))
                                 (let ((_%hd207719207877%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207718207873%_)))
                                       (_%tl207720207880%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207718207873%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd207719207877%_))
                                       (if (let ((__tmp209427
                                                  |gxc[1]#_g209428_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp209427
                                              _%hd207719207877%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207720207880%_))
                                               (let ((_%e207721207883%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207720207880%_))))
                                                 (let ((_%hd207722207887%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207721207883%_)))
                                                       (_%tl207723207890%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207721207883%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl207723207890%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl207717207870%_))
                                                           (let ((_%e207724207893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl207717207870%_))))
                     (let ((_%hd207725207897%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207724207893%_)))
                           (_%tl207726207900%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207724207893%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd207725207897%_))
                           (let ((_%e207727207903%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd207725207897%_))))
                             (if (equal? _%e207727207903%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl207726207900%_))
                                     (let ((_%e207728207907%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl207726207900%_))))
                                       (let ((_%hd207729207911%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207728207907%_)))
                                             (_%tl207730207914%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207728207907%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd207729207911%_))
                                             (let ((_%e207731207917%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd207729207911%_))))
                                               (let ((_%hd207732207921%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207731207917%_)))
                                                     (_%tl207733207924%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207731207917%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd207732207921%_))
                                                     (if (let ((__tmp209429
                                                                |gxc[1]#_g209430_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp209429
                                                            _%hd207732207921%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl207733207924%_))
                     (let ((_%e207734207927%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl207733207924%_))))
                       (let ((_%hd207735207931%_
                              (let ()
                                (declare (not safe))
                                (##car _%e207734207927%_)))
                             (_%tl207736207934%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e207734207927%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl207736207934%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207730207914%_))
                                 (let ((_%e207737207937%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207730207914%_))))
                                   (let ((_%hd207738207941%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207737207937%_)))
                                         (_%tl207739207944%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207737207937%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd207738207941%_))
                                         (let ((_%e207740207947%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd207738207941%_))))
                                           (if (equal? _%e207740207947%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl207739207944%_))
                                                   (let ((_%e207741207951%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl207739207944%_))))
                                                     (let ((_%hd207742207955%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e207741207951%_)))
                                                           (_%tl207743207958%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e207741207951%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd207742207955%_))
                                                           (let ((_%e207744207961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd207742207955%_))))
                     (let ((_%hd207745207965%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207744207961%_)))
                           (_%tl207746207968%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207744207961%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd207745207965%_))
                           (if (let ((__tmp209431 |gxc[1]#_g209432_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp209431
                                  _%hd207745207965%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl207746207968%_))
                                   (let ((_%e207747207971%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl207746207968%_))))
                                     (let ((_%hd207748207975%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e207747207971%_)))
                                           (_%tl207749207978%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e207747207971%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl207749207978%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207743207958%_))
                                               (let ((_%e207750207981%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207743207958%_))))
                                                 (let ((_%hd207751207985%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207750207981%_)))
                                                       (_%tl207752207988%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207750207981%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd207751207985%_))
                                                       (let ((_%e207753207991%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd207751207985%_))))
                 (if (equal? _%e207753207991%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl207752207988%_))
                         (let ((_%e207754207995%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl207752207988%_))))
                           (let ((_%hd207755207999%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e207754207995%_)))
                                 (_%tl207756208002%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e207754207995%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207755207999%_))
                                 (let ((_%e207757208005%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207755207999%_))))
                                   (let ((_%hd207758208009%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207757208005%_)))
                                         (_%tl207759208012%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207757208005%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd207758208009%_))
                                         (if (let ((__tmp209433
                                                    |gxc[1]#_g209434_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp209433
                                                _%hd207758208009%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207759208012%_))
                                                 (let ((_%e207760208015%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207759208012%_))))
                                                   (let ((_%hd207761208019%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207760208015%_)))
                                                         (_%tl207762208022%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207760208015%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207762208022%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl207756208002%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl207694207792%_))
                         ((lambda (_%L208025%_
                                   _%L208027%_
                                   _%L208028%_
                                   _%L208029%_
                                   _%L208030%_
                                   _%L208031%_)
                            (let ((_%clause208102%_
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
                                                     (cons _%L208031%_ '()))
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
                                                 (cons _%L208029%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208025%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked208104%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L208027%_))))
                              (_%loop207646%_
                               _%rest207677%_
                               (let ((_%$e208106%_ _%unchecked208104%_))
                                 (if _%$e208106%_
                                     _%$e208106%_
                                     _%unchecked-proc207651%_))
                               (cons _%clause208102%_
                                     _%unchecked-clauses207652%_))))
                          _%hd207761208019%_
                          _%hd207748207975%_
                          _%hd207735207931%_
                          _%hd207722207887%_
                          _%hd207709207843%_
                          _%hd207690207779%_)
                         (_%g207681207768%_ _%g207682207772%_))
                     (_%g207681207768%_ _%g207682207772%_))
                 (_%g207681207768%_ _%g207682207772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207681207768%_
                                                  _%g207682207772%_))
                                             (_%g207681207768%_
                                              _%g207682207772%_))
                                         (_%g207681207768%_
                                          _%g207682207772%_))))
                                 (_%g207681207768%_ _%g207682207772%_))))
                         (_%g207681207768%_ _%g207682207772%_))
                     (_%g207681207768%_ _%g207682207772%_)))
               (_%g207681207768%_ _%g207682207772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207681207768%_
                                                _%g207682207772%_))
                                           (_%g207681207768%_
                                            _%g207682207772%_))))
                                   (_%g207681207768%_ _%g207682207772%_))
                               (_%g207681207768%_ _%g207682207772%_))
                           (_%g207681207768%_ _%g207682207772%_))))
                   (_%g207681207768%_ _%g207682207772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g207681207768%_
                                                    _%g207682207772%_))
                                               (_%g207681207768%_
                                                _%g207682207772%_)))
                                         (_%g207681207768%_
                                          _%g207682207772%_))))
                                 (_%g207681207768%_ _%g207682207772%_))
                             (_%g207681207768%_ _%g207682207772%_))))
                     (_%g207681207768%_ _%g207682207772%_))
                 (_%g207681207768%_ _%g207682207772%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207681207768%_
                                                      _%g207682207772%_))))
                                             (_%g207681207768%_
                                              _%g207682207772%_))))
                                     (_%g207681207768%_ _%g207682207772%_))
                                 (_%g207681207768%_ _%g207682207772%_)))
                           (_%g207681207768%_ _%g207682207772%_))))
                   (_%g207681207768%_ _%g207682207772%_))
               (_%g207681207768%_ _%g207682207772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207681207768%_
                                                _%g207682207772%_))
                                           (_%g207681207768%_
                                            _%g207682207772%_))
                                       (_%g207681207768%_ _%g207682207772%_))))
                               (_%g207681207768%_ _%g207682207772%_))))
                       (_%g207681207768%_ _%g207682207772%_))
                   (_%g207681207768%_ _%g207682207772%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207681207768%_
                                                      _%g207682207772%_))))
                                             (_%g207681207768%_
                                              _%g207682207772%_))
                                         (_%g207681207768%_
                                          _%g207682207772%_))))
                                 (_%g207681207768%_ _%g207682207772%_))
                             (_%g207681207768%_ _%g207682207772%_))
                         (_%g207681207768%_ _%g207682207772%_))))
                 (_%g207681207768%_ _%g207682207772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207681207768%_
                                                  _%g207682207772%_))
                                             (_%g207681207768%_
                                              _%g207682207772%_)))
                                       (_%g207681207768%_ _%g207682207772%_))))
                               (_%g207681207768%_ _%g207682207772%_))))
                       (_%g207681207768%_ _%g207682207772%_))))
               (_%g207681207768%_ _%g207682207772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207681207768%_
                                                _%g207682207772%_)))))
                                   (_%g207680208110%_ _%hd207679%_)))))
                         (if (pair? _%rest207653207661%_)
                             (let ((_%hd207658208118%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest207653207661%_)))
                                   (_%tl207659208121%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest207653207661%_))))
                               (let* ((_%hd208124%_ _%hd207658208118%_)
                                      (_%rest208127%_ _%tl207659208121%_))
                                 (_%K207657208114%_
                                  _%rest208127%_
                                  _%hd208124%_)))
                             (_%else207655207673%_))))))
                (begin
                  (let ((_g209424_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209423_)
                               (##values-length _g209423_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209424_ 2)))
                        (error "Context expects 2 values" _g209424_)))
                  (let ((_%unchecked-proc208130%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g209423_ 0)))
                        (_%unchecked-clauses208132%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g209423_ 1))))
                    (if _%unchecked-proc208130%_
                        (let* ((_%g208134208158%_
                                (lambda (_%g208135208154%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g208135208154%_))))
                               (_%g208133208245%_
                                (lambda (_%g208135208162%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g208135208162%_))
                                      (let ((_%e208138208165%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g208135208162%_))))
                                        (let ((_%hd208139208169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208138208165%_)))
                                              (_%tl208140208172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208138208165%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208140208172%_))
                                              (let ((_%e208141208175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208140208172%_))))
                                                (let ((_%hd208142208179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208141208175%_)))
                                                      (_%tl208143208182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208141208175%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd208142208179%_))
                                                      (let ((_g209435_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd208142208179%_ '0))))
                (begin
                  (let ((_g209436_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209435_)
                               (##values-length _g209435_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209436_ 2)))
                        (error "Context expects 2 values" _g209436_)))
                  (let ((_%target208144208185%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g209435_ 0)))
                        (_%tl208146208188%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g209435_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl208146208188%_))
                        (letrec ((_%loop208147208191%_
                                  (lambda (_%hd208145208195%_
                                           _%clause208151208198%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd208145208195%_))
                                        (let ((_%e208148208201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd208145208195%_))))
                                          (let ((_%lp-hd208149208205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e208148208201%_)))
                                                (_%lp-tl208150208208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e208148208201%_))))
                                            (_%loop208147208191%_
                                             _%lp-tl208150208208%_
                                             (cons _%lp-hd208149208205%_
                                                   _%clause208151208198%_))))
                                        (let ((_%clause208152208211%_
                                               (reverse _%clause208151208198%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208143208182%_))
                                              ((lambda (_%L208215%_
                                                        _%L208217%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L208217%_
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
                                             (let ((__tmp209437
                                                    (lambda (_%g208236208239%_
                                                             _%g208237208242%_)
                                                      (cons _%g208236208239%_
                                                            _%g208237208242%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp209437
                                                '()
                                                _%L208215%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause208152208211%_
                                               _%hd208139208169%_)
                                              (_%g208134208158%_
                                               _%g208135208162%_)))))))
                          (_%loop208147208191%_ _%target208144208185%_ '()))
                        (_%g208134208158%_ _%g208135208162%_)))))
              (_%g208134208158%_ _%g208135208162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g208134208158%_
                                               _%g208135208162%_))))
                                      (_%g208134208158%_ _%g208135208162%_)))))
                          (_%g208133208245%_
                           (list _%unchecked-proc208130%_
                                 _%unchecked-clauses208132%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g207585207596%_))))
                                        (_%g207583208249%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L207444%_
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
                                          _%L207565%_
                                          _%L207567%_))
                                       (let ((__tmp209438
                                              (lambda (_%g208252208256%_
                                                       _%g208253208259%_
                                                       _%g208254208261%_)
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
                                (cons _%g208253208259%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g208252208256%_ '())))))
              _%g208254208261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp209438
                                          '()
                                          _%L207565%_
                                          _%L207567%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig207491207559%_
                                    _%arity207492207562%_))))))
                   (_%loop207485207517%_ _%target207482207511%_ '() '()))
                 (_%g207478207504%_ _%g207479207508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207478207504%_
                                                _%g207479207508%_)))))
                                   (_%g207477208264%_ _%signatures207475%_))
                                 (_%g207361207385%_ _%g207362207389%_)))
                           _%case-signature207379207438%_
                           _%hd207369207406%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207374207418%_
                                                   _%target207371207412%_
                                                   '()))
                                                (_%g207361207385%_
                                                 _%g207362207389%_)))))
                                      (_%g207361207385%_ _%g207362207389%_))))
                              (_%g207361207385%_ _%g207362207389%_))))
                      (_%g207361207385%_ _%g207362207389%_)))))
          (_%g207360208268%_ _%stx207358%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx208276%_)
        (let* ((_%__stx209258209259%_ _%$stx208276%_)
               (_%g208282208342%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209258209259%_)))))
          (let ((_%__kont209261209262%_
                 (lambda (_%L208564%_ _%L208566%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208566%_ '()))
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
                                                       (cons _%L208566%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208564%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont209263209264%_
                 (lambda (_%L208489%_ _%L208491%_ _%L208492%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208492%_ '()))
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
                                                       (cons _%L208492%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208491%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208489%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont209265209266%_
                 (lambda (_%L208403%_ _%L208405%_ _%L208406%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208406%_ '()))
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
                                                       (cons _%L208406%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208405%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208403%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209258209259%_))
                (let ((_%e208286208520%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209258209259%_))))
                  (let ((_%tl208288208527%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208286208520%_)))
                        (_%hd208287208524%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208286208520%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl208288208527%_))
                        (let ((_%e208289208530%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl208288208527%_))))
                          (let ((_%tl208291208537%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208289208530%_)))
                                (_%hd208290208534%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208289208530%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd208290208534%_))
                                (let ((_%e208292208540%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd208290208534%_))))
                                  (if (equal? _%e208292208540%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl208291208537%_))
                                          (let ((_%e208293208544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl208291208537%_))))
                                            (let ((_%tl208295208551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e208293208544%_)))
                                                  (_%hd208294208548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e208293208544%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208295208551%_))
                                                  (let ((_%e208296208554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl208295208551%_))))
                                                    (let ((_%tl208298208561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208296208554%_)))
                                                          (_%hd208297208558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208296208554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208298208561%_))
                                                          (_%__kont209261209262%_
                                                           _%hd208297208558%_
                                                           _%hd208294208548%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208282208342%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208282208342%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g208282208342%_)))
                                      (if (equal? _%e208292208540%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208291208537%_))
                                              (let ((_%e208309208459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208291208537%_))))
                                                (let ((_%tl208311208466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208309208459%_)))
                                                      (_%hd208310208463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208309208459%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl208311208466%_))
                                                      (let ((_%e208312208469%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl208311208466%_))))
                (let ((_%tl208314208476%_
                       (let () (declare (not safe)) (##cdr _%e208312208469%_)))
                      (_%hd208313208473%_
                       (let ()
                         (declare (not safe))
                         (##car _%e208312208469%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl208314208476%_))
                      (let ((_%e208315208479%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl208314208476%_))))
                        (let ((_%tl208317208486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208315208479%_)))
                              (_%hd208316208483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208315208479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208317208486%_))
                              (_%__kont209263209264%_
                               _%hd208316208483%_
                               _%hd208313208473%_
                               _%hd208310208463%_)
                              (let ()
                                (declare (not safe))
                                (_%g208282208342%_)))))
                      (let () (declare (not safe)) (_%g208282208342%_)))))
              (let () (declare (not safe)) (_%g208282208342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g208282208342%_)))
                                          (if (equal? _%e208292208540%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208291208537%_))
                                                  (let ((_%e208328208373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl208291208537%_))))
                                                    (let ((_%tl208330208380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208328208373%_)))
                                                          (_%hd208329208377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208328208373%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl208330208380%_))
                                                          (let ((_%e208331208383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl208330208380%_))))
                    (let ((_%tl208333208390%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208331208383%_)))
                          (_%hd208332208387%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208331208383%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208333208390%_))
                          (let ((_%e208334208393%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl208333208390%_))))
                            (let ((_%tl208336208400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208334208393%_)))
                                  (_%hd208335208397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208334208393%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl208336208400%_))
                                  (_%__kont209265209266%_
                                   _%hd208335208397%_
                                   _%hd208332208387%_
                                   _%hd208329208377%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g208282208342%_)))))
                          (let () (declare (not safe)) (_%g208282208342%_)))))
                  (let () (declare (not safe)) (_%g208282208342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208282208342%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208282208342%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g208282208342%_)))))
                        (let () (declare (not safe)) (_%g208282208342%_)))))
                (let () (declare (not safe)) (_%g208282208342%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx208588%_)
        (let* ((_%g208592208612%_
                (lambda (_%g208593208608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208593208608%_))))
               (_%g208591208683%_
                (lambda (_%g208593208616%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208593208616%_))
                      (let ((_%e208595208619%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208593208616%_))))
                        (let ((_%hd208596208623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208595208619%_)))
                              (_%tl208597208626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208595208619%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl208597208626%_))
                              (let ((_g209439_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl208597208626%_
                                        '0))))
                                (begin
                                  (let ((_g209440_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209439_)
                                               (##values-length _g209439_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209440_ 2)))
                                        (error "Context expects 2 values"
                                               _g209440_)))
                                  (let ((_%target208598208629%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209439_ 0)))
                                        (_%tl208600208632%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209439_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208600208632%_))
                                        (letrec ((_%loop208601208635%_
                                                  (lambda (_%hd208599208639%_
                                                           _%decl208605208642%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd208599208639%_))
                                                        (let ((_%e208602208645%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd208599208639%_))))
                  (let ((_%lp-hd208603208649%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208602208645%_)))
                        (_%lp-tl208604208652%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208602208645%_))))
                    (_%loop208601208635%_
                     _%lp-tl208604208652%_
                     (cons _%lp-hd208603208649%_ _%decl208605208642%_))))
                (let ((_%decl208606208655%_ (reverse _%decl208605208642%_)))
                  ((lambda (_%L208659%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp209441
                                  (lambda (_%g208674208677%_ _%g208675208680%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g208674208677%_)
                                          _%g208675208680%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209441 '() _%L208659%_))))
                   _%decl208606208655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop208601208635%_
                                           _%target208598208629%_
                                           '()))
                                        (_%g208592208612%_
                                         _%g208593208616%_)))))
                              (_%g208592208612%_ _%g208593208616%_))))
                      (_%g208592208612%_ _%g208593208616%_)))))
          (_%g208591208683%_ _%$stx208588%_))))))
